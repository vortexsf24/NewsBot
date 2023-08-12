import asyncio
import logging

from aiogram import Bot, Dispatcher
from aiogram.contrib.fsm_storage.memory import MemoryStorage

from tg_bot.config import load_config, Config
from tg_bot.handlers.admin import register_admin_handlers
from tg_bot.handlers.user import register_user_handlers
from tg_bot.filters.admin import IsAdmin

logging.basicConfig(
    level=logging.INFO,
    format=u'%(filename)s:%(lineno)d #%(levelname)-1s [%(asctime)s]  ----->  %(message)s'
)


# def register_all_middlewares(dp):
#     dp.setup_middleware(...)


def register_all_filters(dp):
    dp.filters_factory.bind(IsAdmin)


def register_all_handlers(dp):
    register_admin_handlers(dp)
    register_user_handlers(dp)


async def main():
    try:
        logging.info('Starting bot')
        config: Config = load_config()

        bot = Bot(token=config.tg_bot.TOKEN, parse_mode='HTML')
        bot['config'] = config

        storage = MemoryStorage()

        dp = Dispatcher(bot, storage=storage)
        await dp.skip_updates()

        # register_all_middlewares(dp)
        register_all_filters(dp)
        register_all_handlers(dp)

        await dp.start_polling()

    finally:
        await dp.storage.close()
        await bot.session.close()

        logging.info('Bot has been stopped!')


if __name__ == '__main__':
    asyncio.run(main())


# если очистить переписку с ботом но состояние осталось