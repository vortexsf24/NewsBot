import asyncio
import logging

from aiogram import Bot, Dispatcher

from tg_bot.config import load_config, Config
from tg_bot.handlers.client import register_client_handlers

logging.basicConfig(
    level=logging.INFO,
    format=u'%(filename)s:%(lineno)d #%(levelname)-1s [%(asctime)s]  ----->  %(message)s'
)


# def register_all_middlewares(dp):
#     dp.setup_middleware(...)


# def register_all_filters(dp):
#     dp.filters_factory.bind(IsAdmin)


def register_all_handlers(dp):
    register_client_handlers(dp)


async def main():
    logging.info('Starting bot')
    config: Config = load_config()

    bot = Bot(token=config.tg_bot.TOKEN, parse_mode='HTML')
    bot['config'] = config

    dp = Dispatcher(bot)
    await dp.skip_updates()

    # register_all_middlewares(dp)
    # register_all_filters(dp)
    register_all_handlers(dp)

    try:
        await dp.start_polling()

    finally:
        await bot.session.close()
        logging.info('Bot has been stopped!')


if __name__ == '__main__':
    asyncio.run(main())
