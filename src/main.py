import sys

from src.config import Config
from src.logger_config import configurar_logger
from src.hana_client import executar_consulta
from src.csv_exporter import salvar_csv


def main():
    logger = configurar_logger()

    try:
        Config.validar()

        logger.info("Iniciando exportação financeira SAP HANA para CSV.")

        for consulta in Config.CONSULTAS:
            nome = consulta["nome"]
            arquivo_sql = consulta["arquivo_sql"]
            arquivo_csv = consulta["arquivo_csv"]

            logger.info(f"Executando consulta: {nome}")
            logger.info(f"Arquivo SQL: {arquivo_sql}")

            dataframe = executar_consulta(arquivo_sql)

            quantidade_linhas = salvar_csv(dataframe, arquivo_csv)

            logger.info(f"CSV gerado: {arquivo_csv}")
            logger.info(f"Linhas exportadas: {quantidade_linhas}")

        logger.info("Exportação finalizada com sucesso.")

    except Exception as erro:
        logger.exception(f"Erro durante a exportação: {erro}")
        sys.exit(1)


if __name__ == "__main__":
    main()