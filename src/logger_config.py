import logging
from logging.handlers import RotatingFileHandler

from src.config import Config


def configurar_logger():
    Config.LOG_DIR.mkdir(parents=True, exist_ok=True)

    logger = logging.getLogger("gestcom_financial_export")
    logger.setLevel(logging.INFO)

    if logger.handlers:
        return logger

    formato = logging.Formatter(
        "%(asctime)s | %(levelname)s | %(message)s",
        datefmt="%Y-%m-%d %H:%M:%S",
    )

    console_handler = logging.StreamHandler()
    console_handler.setFormatter(formato)

    file_handler = RotatingFileHandler(
        Config.LOG_DIR / "export.log",
        maxBytes=5_000_000,
        backupCount=5,
        encoding="utf-8",
    )
    file_handler.setFormatter(formato)

    logger.addHandler(console_handler)
    logger.addHandler(file_handler)

    return logger