import asyncio

from aiogram import Dispatcher, types

from aiogram.utils.exceptions import Throttled
from aiogram.dispatcher.handler import CancelHandler
from aiogram.dispatcher.middlewares import BaseMiddleware


class ThrottlingMiddleware(BaseMiddleware):
    def __init__(self):
        BaseMiddleware.__init__(self)
        self.rate_limit: int = 1

    async def on_process_message(self, message: types.Message, data: dict):
        dp = Dispatcher.get_current()

        try:
            await dp.throttle(key='antiflood_message', rate=self.rate_limit)

        except Throttled as _t:
            await self.message_throttle(message, _t)
            raise CancelHandler()

    async def message_throttle(self, message: types.Message, throttled: Throttled):
        if throttled.exceeded_count <= 2:
            await message.answer('You are sending messages to often!')

        await asyncio.sleep(throttled.rate - throttled.delta)
