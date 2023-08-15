from aiogram.types import ReplyKeyboardMarkup
from aiogram.types import InlineKeyboardMarkup
from aiogram.types import InlineKeyboardButton


def get_main_rkb() -> ReplyKeyboardMarkup:
    """
    ReplyKeyboardMarkup with 3 navigation buttons to choose genre of news.
    Appear after /start command.
    """

    keyboard = ReplyKeyboardMarkup(resize_keyboard=True, input_field_placeholder='What do you wanna read about?')
    keyboard.add('Politics').add('Sport').add('Games')

    return keyboard


def get_politics_ikb() -> InlineKeyboardMarkup:
    """
    InlineKeyboardMarkup for retrieving news on political topics from following sources.
    """

    keyboard = InlineKeyboardMarkup(row_width=2)
    keyboard.add(
        InlineKeyboardButton(text="Politico", callback_data="politico"),
        InlineKeyboardButton(text="Voanews", callback_data="voanews"),
        InlineKeyboardButton(text="RT", callback_data="rt"),
        InlineKeyboardButton(text="BBC", callback_data="bbc"),
        InlineKeyboardButton(text="CNN", callback_data="cnn"),
        InlineKeyboardButton(text="EuroNews", callback_data="euronews")
    )

    return keyboard


def get_sport_ikb() -> InlineKeyboardMarkup:
    """
    InlineKeyboardMarkup for retrieving news on sports topics from following sources.
    """

    keyboard = InlineKeyboardMarkup(row_width=2)
    keyboard.add(
        InlineKeyboardButton(text="Guardiansport", callback_data="guardiansport"),
        InlineKeyboardButton(text="Skysports", callback_data="skysports"),
        InlineKeyboardButton(text="Sportingnews", callback_data="sportingnews"),
        InlineKeyboardButton(text="Euronews Sports", callback_data="euronews_sport"),
        InlineKeyboardButton(text="CNN Sports", callback_data="cnn_sports")
    )

    return keyboard


def get_games_ikb() -> InlineKeyboardMarkup:
    """
    InlineKeyboardMarkup for retrieving news on games and cybersport topics from following sources.
    """

    keyboard = InlineKeyboardMarkup(row_width=2)
    keyboard.add(
        InlineKeyboardButton(text="Thegamer", callback_data="thegamer"),
        InlineKeyboardButton(text="Stopgame", callback_data="stopgame"),
        InlineKeyboardButton(text="Xfire", callback_data="xfire"),
        InlineKeyboardButton(text="VG247", callback_data="vg247"),
        InlineKeyboardButton(text="Kotaku", callback_data="kotaku")
    )

    return keyboard
