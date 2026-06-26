import pandas as pd

from src.config import Config


def salvar_csv(dataframe: pd.DataFrame, caminho_csv):
    caminho_tmp = caminho_csv.with_suffix(".csv.tmp")

    dataframe.to_csv(
        caminho_tmp,
        index=False,
        sep=Config.CSV_SEPARATOR,
        decimal=Config.CSV_DECIMAL,
        encoding=Config.CSV_ENCODING,
    )

    caminho_tmp.replace(caminho_csv)

    return len(dataframe)