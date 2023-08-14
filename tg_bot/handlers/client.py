import os

from aiogram import Dispatcher, types

from tg_bot.keyboards.client import get_main_rkb


async def cmd_start(message: types.Message):
    await message.bot.send_animation(chat_id=message.chat.id,
                                     animation=open(
                                         os.path.join(os.getcwd(), 'tg_bot', 'data', 'media', 'greeting_gif.mp4'),
                                         'rb'))
    await message.answer(f"Welcome, {message.from_user.first_name}!", reply_markup=get_main_rkb())


async def cmd_help(message: types.Message):
    await message.answer(
        'This bot was created to help you to know the actual global situation. We provide many authoritative sources '
        'of information on any topic you like. This is free of charge. \n\nTo start using the bot, use button menu '
        'under this message and choose the type of news you want to receive. After that the bot will reply you with '
        'available newspapers. Choose one and obtain all the information that was published for the last time.',
        reply_markup=get_main_rkb())


def register_client_handlers(dp: Dispatcher):
    dp.register_message_handler(cmd_start, commands=['start'])
    dp.register_message_handler(cmd_help, commands=['help'])
