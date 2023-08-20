from dataclasses import dataclass
from environs import Env


@dataclass
class TgBot:
    TOKEN: str
    ADMIN_IDS: tuple[int, ...]


@dataclass
class DbConfig:
    HOST: str
    PORT: int
    USER: str
    PASSWORD: str
    DATABASE: str


@dataclass
class Config:
    tg_bot: TgBot
    db: DbConfig


def load_config() -> Config:
    env = Env()
    env.read_env()

    return Config(
        tg_bot=TgBot(
            TOKEN=env.str('BOT_TOKEN'),
            ADMIN_IDS=tuple(map(int, env.list('BOT_ADMINS')))
        ),
        db=DbConfig(
            HOST=env.str('DB_HOST'),
            PORT=env.int('DB_PORT'),
            USER=env.str('DB_USER'),
            PASSWORD=env.str('DB_PASSWORD'),
            DATABASE=env.str('DB_DATABASE')
        )
    )
