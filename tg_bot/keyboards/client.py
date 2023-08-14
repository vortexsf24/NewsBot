from aiogram.types import ReplyKeyboardMarkup
from aiogram.types import InlineKeyboardMarkup
from aiogram.types import InlineKeyboardButton


def get_main_rkb() -> ReplyKeyboardMarkup:
    """
    ReplyKeyboardMarkup with 3 navigation buttons to choose genre of news.
    Appear after /start command.
    """

    keyboard = ReplyKeyboardMarkup(resize_keyboard=True, input_field_placeholder='Choose news type you want to read.')
    keyboard.add('Politics').add('Sports').add('Games')

    return keyboard
