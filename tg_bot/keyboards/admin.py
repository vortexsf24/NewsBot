from aiogram.types import ReplyKeyboardMarkup
from aiogram.types import InlineKeyboardMarkup
from aiogram.types import InlineKeyboardButton


def get_main_rkb() -> ReplyKeyboardMarkup:
    """
    ReplyKeyboardMarkup with 4 navigation buttons to choose genre of news and enter admin panel.
    Appear after /start command.
    """

    keyboard = ReplyKeyboardMarkup(resize_keyboard=True, input_field_placeholder='What is your will, my lord?')
    keyboard.add('Politics').add('Sport').add('Games').add('Admin')

    return keyboard


def get_admin_ikb() -> InlineKeyboardMarkup:
    """
    InlineKeyboardMarkup for commands in admin panel.
    """

    keyboard = InlineKeyboardMarkup(row_width=1)
    keyboard.add(
        InlineKeyboardButton(text='Number of users', callback_data='user_quantity'),
    )

    return keyboard
