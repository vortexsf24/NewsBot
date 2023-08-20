import asyncio
import os

from aiogram import Dispatcher, types

from tg_bot.filters.admin import IsAdmin
from tg_bot.keyboards.admin import (
    get_main_rkb,
    get_admin_ikb
)

from tg_bot.services.database import BotDB


async def cmd_start(message: types.Message):
    await message.bot.send_animation(chat_id=message.chat.id, animation=open(
        os.path.join(os.getcwd(), 'tg_bot', 'data', 'media', 'greeting_gif.mp4'), 'rb'))
    await message.answer('Welcome, my lord!', reply_markup=get_main_rkb())


async def cmd_help(message: types.Message):
    await message.answer(
        'This bot was created to help you to know the actual global situation. We provide many authoritative sources '
        'of information on any topic you like. This is free of charge. \n\nTo start using the bot, use button menu '
        'under this message and choose the type of news you want to receive. After that the bot will reply you with '
        'available newspapers. Choose one and obtain all the information that was published for the last time.',
        reply_markup=get_main_rkb())


async def cmd_admin(message: types.Message):
    await message.answer('What is your will, my lord?', reply_markup=get_admin_ikb())


async def cmd_none(message: types.Message):
    await message.answer('If you are confused use /help command.\nType "Admin" to enter the admin panel.',
                         reply_markup=get_main_rkb())


async def user_quantity(callback_query: types.CallbackQuery):
    db = BotDB(callback_query.bot['config'])
    await db.create_pool()

    await callback_query.bot.send_message(callback_query.from_user.id,
                                          f'There are {await db.get_user_quantity()} people who used this bot.')


def register_admin_handlers(dp: Dispatcher):
    dp.register_message_handler(cmd_start, IsAdmin(), commands=['start'])
    dp.register_message_handler(cmd_help, IsAdmin(), commands=['help'])
    dp.register_message_handler(cmd_admin, IsAdmin(), text='Admin')
    dp.register_message_handler(cmd_none, IsAdmin())
    dp.register_callback_query_handler(user_quantity, text='user_quantity')
