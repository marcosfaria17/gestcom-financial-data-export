import pandas as pd
from hdbcli import dbapi

from src.config import Config


def ler_sql(caminho_sql):
    with open(caminho_sql, "r", encoding="utf-8") as arquivo:
        return arquivo.read().strip()


def executar_consulta(caminho_sql):
    sql = ler_sql(caminho_sql)

    if not sql:
        raise ValueError(f"O arquivo SQL está vazio: {caminho_sql}")

    conexao = None

    try:
        conexao = dbapi.connect(
            address=Config.HANA_HOST,
            port=Config.HANA_PORT,
            user=Config.HANA_USER,
            password=Config.HANA_PASSWORD,
        )

        dataframe = pd.read_sql(sql, conexao)

        return dataframe

    finally:
        if conexao:
            conexao.close()