import asyncio
import logging

from aiogram import Bot, Dispatcher

from tg_bot.config import load_config, Config
from tg_bot.parser.parser import start_parsing
from tg_bot.handlers.client import register_client_handlers
from tg_bot.handlers.admin import register_admin_handlers
from tg_bot.filters.admin import IsAdmin
from tg_bot.middlewares.ThrottlingMiddleware import ThrottlingMiddleware
from aiogram.contrib.fsm_storage.memory import MemoryStorage

logging.basicConfig(
    level=logging.INFO,
    format=u'%(filename)s:%(lineno)d #%(levelname)-1s [%(asctime)s]  ----->  %(message)s'
)


def register_all_middlewares(dp):
    dp.setup_middleware(ThrottlingMiddleware())


def register_all_filters(dp):
    dp.filters_factory.bind(IsAdmin)


def register_all_handlers(dp):
    register_admin_handlers(dp)
    register_client_handlers(dp)


async def main():
    logging.info('Starting bot')
    config: Config = load_config()

    bot = Bot(token=config.tg_bot.TOKEN, parse_mode='HTML')
    bot['config'] = config

    storage = MemoryStorage()

    dp = Dispatcher(bot, storage=storage)
    await dp.skip_updates()

    register_all_middlewares(dp)
    register_all_filters(dp)
    register_all_handlers(dp)

    polling_task = asyncio.create_task(dp.start_polling())
    parsing_task = asyncio.create_task(start_parsing(config))

    try:
        await asyncio.gather(polling_task, parsing_task)

    finally:
        await bot.session.close()
        parsing_task.cancel()

        logging.info('Bot has been stopped!')


if __name__ == '__main__':
    asyncio.run(main())


# переписать update_news
# методы для записи вбд юзера и доставания колва
# новая sql таблица
