WITH
    de_para_empresas (empresa_sap, empresa_padrao) AS (
        SELECT
            'ABC Equipamentos Hospitalares EIRELI',
            'ABC'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'ABC Equipamentos Hospitalares LTDA - Matriz TO',
            'ABC'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'ABC Equipamentos Hospitalares LTDA - ME',
            'ABC'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'GDB Comercio e Serviços EIRELI-EPP',
            'GDB'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'GDB Comercio e Serviços Eirelli - EPP',
            'GDB'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'GDB Comercio e Serviços LTDA',
            'GDB'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'GDB Comercio e Serviços LTDA - GOIANIA',
            'GDB'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'Health Solutions Comercio e Serviços Eireli - ME',
            'HEALTH'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'Health Solutions Comercio e Serviços EIRELI-ME',
            'HEALTH'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'Health Solutions Comercio e Serviços Eirelli - ME',
            'HEALTH'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'Health Solutions Comercio e Serviços LTDA',
            'HEALTH'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'Hospcom Equipamentos Hospitalares EIRELI',
            'HOSPCOM'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'Hospcom Equipamentos Hospitalares LTDA',
            'HOSPCOM'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'Hospcom Equipamentos Hospitalares LTDA - Filial DF',
            'HOSPCOM'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'Hospcom Equipamentos Hospitalares LTDA - SOROCABA',
            'HOSPCOM'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'Hospcom Equipamentos Hospitalares LTDA - Filial DF 2',
            'HOSPCOM'
        FROM
            DUMMY
    ),
    de_para_regioes (uf, regional) AS (
        SELECT
            'AC',
            'NORTE'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'AL',
            'NORDESTE'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'AP',
            'NORTE'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'AM',
            'NORTE'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'BA',
            'NORDESTE'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'CE',
            'NORDESTE'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'DF',
            'DF'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'GO',
            'GO+TO'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'MT',
            'MT+MS'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'MS',
            'MT+MS'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'MG',
            'OUTROS'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'PA',
            'NORTE'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'PB',
            'NORDESTE'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'PE',
            'NORDESTE'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'RJ',
            'RJ+ES+SUL'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'RN',
            'NORDESTE'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'RS',
            'RJ+ES+SUL'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'RO',
            'NORTE'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'SP',
            'SP'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'TO',
            'GO+TO'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'ES',
            'RJ+ES+SUL'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'MA',
            'NORTE'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'PI',
            'NORDESTE'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'PR',
            'RJ+ES+SUL'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'RR',
            'NORTE'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'SC',
            'RJ+ES+SUL'
        FROM
            DUMMY
    ),
    de_para_organizacoes_sociais (cod_pn) AS (
        SELECT
            'C000010'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'C000013'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'C000046'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'C000053'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'C000090'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'C000092'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'C000093'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'C000101'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'C000164'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'C000190'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'C000198'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'C000201'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'C000239'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'C000334'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'C000345'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'C000368'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'C000413'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'C000459'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'C000656'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'C000963'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'C001015'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'C001017'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'C001018'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'C001844'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'C002413'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'C002431'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'C002645'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'C002650'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'C002678'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'C002763'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'C003006'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'C003007'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'C003010'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'C003216'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'C003660'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'C003744'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'C003760'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'C003895'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'C004043'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'C004932'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'C005642'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'C007044'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'C007059'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'C007221'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'C007270'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'C007283'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'C008767'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'C008970'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'C009114'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'C009897'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'C009900'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'C010699'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'C010976'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'C011354'
        FROM
            DUMMY
        UNION ALL
        SELECT
            'C011537'
        FROM
            DUMMY
    ),
    conta_receber AS (
        SELECT
            dep_empr.empresa_padrao AS empresa,
            fin_in."dt_emissao" AS data_emissao,
            fin_in."pedido_sales" AS numero_pedido,
            fin_in."nf" AS numero_nota_fiscal,
            fin_in."cod_pn" AS codigo_parceiro_negocio,
            fin_in."nome_pn" AS nome_parceiro_negocio,
            fin_in."cnpj_cpf" AS cnpjcpf,
            fin_in."uf" AS uf,
            CASE fin_in."publico"
                WHEN 'N' THEN 'Privado'
                ELSE 'Público'
            END tipo,
            dep_reg.regional,
            fin_in."vendedor" AS vendedor,
            fin_in."parcela" AS parcela,
            fin_in."dt_vencimento" AS data_vencimento,
            fin_in."valor" AS valor,
            DAYS_BETWEEN (CURRENT_DATE, fin_in."dt_vencimento") AS dias,
            CASE
                WHEN DAYS_BETWEEN (CURRENT_DATE, fin_in."dt_vencimento") < 0 THEN fin_in."valor" * 0.02
                ELSE 0
            END AS multa,
            CASE
                WHEN DAYS_BETWEEN (CURRENT_DATE, fin_in."dt_vencimento") < 0 THEN ABS(
                    DAYS_BETWEEN (CURRENT_DATE, fin_in."dt_vencimento")
                ) * (fin_in."valor" * 0.000833333333333333)
                ELSE 0
            END AS juros,
            fin_in."utilizacao" AS utilizacao,
            fin_in."negativado" AS negativado,
            fin_in."judicializado" AS judicializado,
            fin_in."previsão" AS previsao,
            CASE
                WHEN dep_os.cod_pn IS NOT NULL THEN 'SIM'
                ELSE 'NÃO'
            END AS organizacoes_sociais
        FROM
            SBOHOSPCOM.IRO_VW_FINANCIAL_IN AS fin_in
            LEFT JOIN de_para_empresas AS dep_empr ON dep_empr.empresa_sap = fin_in."empresa"
            LEFT JOIN de_para_regioes AS dep_reg ON dep_reg.uf = fin_in."uf"
            LEFT JOIN de_para_organizacoes_sociais AS dep_os ON dep_os.cod_pn = fin_in."cod_pn"
        WHERE
            fin_in."origem" = 'rcb1'
            AND fin_in."cancelado?" = 'N'
            AND fin_in."intercompany" = 'N'
            AND fin_in."valor" <> 0
    )
SELECT
    con_rec.empresa,
    TO_DATE (con_rec.data_emissao) AS data_emissao,
    con_rec.numero_pedido,
    con_rec.numero_nota_fiscal,
    CASE
        WHEN con_rec.dias < 0 THEN 'Vencida'
        ELSE 'A Vencer'
    END AS status,
    con_rec.codigo_parceiro_negocio,
    con_rec.nome_parceiro_negocio,
    con_rec.cnpjcpf,
    con_rec.uf,
    con_rec.tipo,
    con_rec.regional,
    con_rec.vendedor,
    con_rec.parcela,
    con_rec.data_vencimento,
    con_rec.dias,
    con_rec.valor,
    con_rec.multa,
    con_rec.juros,
    con_rec.valor + con_rec.multa + con_rec.juros AS valor_atualizado,
    con_rec.utilizacao,
    con_rec.negativado,
    con_rec.judicializado,
    con_rec.previsao,
    con_rec.organizacoes_sociais
FROM
    conta_receber AS con_rec