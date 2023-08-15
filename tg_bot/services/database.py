import aiomysql
import logging

from tg_bot.config import Config

logging.basicConfig(
    level=logging.INFO,
    format=u'%(filename)s:%(lineno)d #%(levelname)-1s [%(asctime)s]  ----->  %(message)s'
)


class BotDB:
    """
    Class for interaction with the database.
    Allows writing parsed news and retrieving them when required.

    Args:
        config (Config): The configuration object containing database connection settings.

    Attributes:
        pool (aiomysql.Pool):  The connection pool for executing database queries.
        config (Config): The configuration object containing database connection settings.
    """

    def __init__(self, config: Config):
        self.pool: aiomysql.Pool = None
        self.config: Config = config

    async def create_pool(self) -> None:
        """
        Creates a connection pool to the database.
        """

        try:
            self.pool = await aiomysql.create_pool(
                host=self.config.db.HOST,
                port=self.config.db.PORT,
                user=self.config.db.USER,
                password=self.config.db.PASSWORD,
                db=self.config.db.DATABASE,
                cursorclass=aiomysql.cursors.DictCursor,
                minsize=1,
                maxsize=10
            )

        except Exception as _ex:
            logging.error(_ex)

    async def update_news(self, paper_name: str, news: list) -> None:
        """
        Replaces all news of a certain paper with the relevant news.
        Method is called everytime when the news web-page is parsed.

        Args:
            paper_name (str): The name of the table where news will be updated.
            news (list): The list of news to update in the table.

        Returns:
            None
        """

        try:
            async with self.pool.acquire() as connection:
                async with connection.cursor() as cursor:
                    delete_query = f'TRUNCATE TABLE {paper_name}'
                    await cursor.execute(delete_query)
                    await connection.commit()

                    for section in news:
                        insert_query = f'INSERT INTO {paper_name} (article, link) VALUES (%s, %s);'
                        await cursor.execute(insert_query, (section[0], section[1]))
                    await connection.commit()

        except Exception as _ex:
            logging.error(_ex)

    async def get_news(self, paper_name: str) -> list[dict, ...]:
        """
        Retrieves news from the table of a paper which you choose.

        Args:
            paper_name (str): The name of the table containing the news to retrieve.

        Returns:
            rows: List of news retrieved from the specified table.
        """

        try:
            async with self.pool.acquire() as connection:
                async with connection.cursor() as cursor:
                    select_query = f'SELECT * FROM {paper_name}'
                    await cursor.execute(select_query)
                    rows = await cursor.fetchall()
                    return rows

        except Exception as _ex:
            logging.error(_ex)
