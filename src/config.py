import os
from pathlib import Path
from dotenv import load_dotenv


BASE_DIR = Path(__file__).resolve().parent.parent

load_dotenv(BASE_DIR / ".env")


class Config:
    HANA_HOST = os.getenv("HANA_HOST")
    HANA_PORT = int(os.getenv("HANA_PORT", "30015"))
    HANA_USER = os.getenv("HANA_USER")
    HANA_PASSWORD = os.getenv("HANA_PASSWORD")

    CSV_SEPARATOR = os.getenv("CSV_SEPARATOR", ";")
    CSV_DECIMAL = os.getenv("CSV_DECIMAL", ",")
    CSV_ENCODING = os.getenv("CSV_ENCODING", "utf-8-sig")

    SQL_DIR = BASE_DIR / "sql"
    OUTPUT_DIR = BASE_DIR / "output"
    LOG_DIR = BASE_DIR / "logs"

    CONSULTAS = [
        {
            "nome": "contas_pagar",
            "arquivo_sql": SQL_DIR / "contas_pagar.sql",
            "arquivo_csv": OUTPUT_DIR / "contas_pagar.csv",
        },
        {
            "nome": "contas_receber",
            "arquivo_sql": SQL_DIR / "contas_receber.sql",
            "arquivo_csv": OUTPUT_DIR / "contas_receber.csv",
        },
    ]

    @classmethod
    def validar(cls):
        obrigatorios = {
            "HANA_HOST": cls.HANA_HOST,
            "HANA_USER": cls.HANA_USER,
            "HANA_PASSWORD": cls.HANA_PASSWORD,
        }

        faltando = [nome for nome, valor in obrigatorios.items() if not valor]

        if faltando:
            raise ValueError(f"Configurações ausentes no .env: {', '.join(faltando)}")

        cls.OUTPUT_DIR.mkdir(parents=True, exist_ok=True)
        cls.LOG_DIR.mkdir(parents=True, exist_ok=True)

        for consulta in cls.CONSULTAS:
            if not consulta["arquivo_sql"].exists():
                raise FileNotFoundError(
                    f"Arquivo SQL não encontrado: {consulta['arquivo_sql']}"
                )