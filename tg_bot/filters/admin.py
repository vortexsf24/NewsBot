from aiogram import types
from aiogram.dispatcher.filters import BoundFilter

from tg_bot.config import Config


class IsAdmin(BoundFilter):
    async def check(self, message: types.Message) -> bool:
        config: Config = message.bot.get('config')
        return message.from_user.id in config.tg_bot.ADMIN_IDS
