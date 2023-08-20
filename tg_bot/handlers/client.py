import asyncio
import os

from aiogram import Dispatcher, types

from tg_bot.keyboards.client import (
    get_main_rkb,
    get_politics_ikb,
    get_sport_ikb,
    get_games_ikb
)

from tg_bot.services.database import BotDB


async def cmd_start(message: types.Message):
    db = BotDB(message.bot['config'])
    await db.create_pool()
    print(await db.get_user_quantity())
    await db.add_user(message.from_user.id)
    db.pool.close()

    await message.bot.send_animation(chat_id=message.chat.id, animation=open(
        os.path.join(os.getcwd(), 'tg_bot', 'data', 'media', 'greeting_gif.mp4'), 'rb'))
    await message.answer(f'Welcome, {message.from_user.first_name}!', reply_markup=get_main_rkb())


async def cmd_help(message: types.Message):
    await message.answer(
        'This bot was created to help you to know the actual global situation. We provide many authoritative sources '
        'of information on any topic you like. This is free of charge. \n\nTo start using the bot, use button menu '
        'under this message and choose the type of news you want to receive. After that the bot will reply you with '
        'available newspapers. Choose one and obtain all the information that was published for the last time.',
        reply_markup=get_main_rkb())


async def cmd_none(message: types.Message):
    await message.answer('If you are confused use /help command.', reply_markup=get_main_rkb())


async def politics(message: types.Message):
    await message.answer(f'Choose broadcaster.', reply_markup=get_politics_ikb())


async def sport(message: types.Message):
    await message.answer(f'Choose broadcaster.', reply_markup=get_sport_ikb())


async def games(message: types.Message):
    await message.answer(f'Choose broadcaster.', reply_markup=get_games_ikb())


def create_news_message(news: list) -> str:
    """
    Forms formatted message containing actual news which will be sent to user.
    It's made from the list of dictionaries where each object contain link and article.

    Args:
        news (list): A list of dictionaries where each dictionary contains a link and an article.

    Returns:
        news_message (str): A formatted message with links to the articles.
    """

    news_message = '<b>Actual news from this portal:</b>\n'

    for section in news:
        news_message += f'• <a href="{section.get("link")}">{section.get("article")}</a>\n\n'

    return news_message


async def send_news(callback_query: types.CallbackQuery):
    db = BotDB(callback_query.bot['config'])
    await db.create_pool()

    news = await db.get_news(callback_query.data)
    db.pool.close()

    news_message = await asyncio.to_thread(create_news_message, news)
    await callback_query.bot.send_message(callback_query.from_user.id, text=f'{news_message}', parse_mode='HTML',
                                          disable_web_page_preview=True)


def register_client_handlers(dp: Dispatcher):
    dp.register_message_handler(cmd_start, commands=['start'])
    dp.register_message_handler(cmd_help, commands=['help'])

    dp.register_message_handler(politics, text='Politics')
    dp.register_message_handler(sport, text='Sport')
    dp.register_message_handler(games, text='Games')

    dp.register_message_handler(cmd_none)

    dp.register_callback_query_handler(send_news)
