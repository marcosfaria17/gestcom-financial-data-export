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
	de_para_origens (origem, descricao_origem) AS (
		SELECT
			'apg1',
			'Adiantamento'
		FROM
			DUMMY
		UNION ALL
		SELECT
			'bol1',
			'Boleto - DDA'
		FROM
			DUMMY
		UNION ALL
		SELECT
			'lcm1',
			'Lançamento Manual'
		FROM
			DUMMY
		UNION ALL
		SELECT
			'pgt1',
			'Outros'
		FROM
			DUMMY
	),
	conta_pagar AS (
		SELECT
			dep_empr.empresa_padrao AS empresa,
			TO_DATE (fin_out."dt_emissao") AS data_emissao,
			TO_DATE (fin_out."dt_vencimento") AS data_vencimento,
			DAYS_BETWEEN (CURRENT_DATE, fin_out."dt_vencimento") AS dias,
			fin_out."nf" AS numero_nota_fiscal,
			fin_out."cod_pn" AS codigo_parceiro_negocio,
			fin_out."nome_pn" AS nome_parceiro_negocio,
			fin_out."cnpj_cpf" AS cnpjcpf,
			dep_orig.descricao_origem AS origem,
			fin_out."parcela" AS parcela,
			fin_out."valor" AS valor
		FROM
			SBOHOSPCOM.IRO_VW_FINANCIAL_OUT AS fin_out
			LEFT JOIN de_para_empresas AS dep_empr ON dep_empr.empresa_sap = fin_out."empresa"
			LEFT JOIN de_para_origens AS dep_orig ON dep_orig.origem = fin_out."origem"
		WHERE
			fin_out."origem" IN ('apg1', 'bol1', 'lcm1', 'pgt1')
			AND fin_out."intercompany" = 'N'
			AND fin_out."valor" <> 0
	)
SELECT
	con_pag.empresa,
	con_pag.data_emissao,
	con_pag.data_vencimento,
	con_pag.dias,
	con_pag.numero_nota_fiscal,
	CASE
		WHEN con_pag.dias < 0 THEN 'Vencida'
		ELSE 'A Vencer'
	END AS status,
	con_pag.codigo_parceiro_negocio,
	con_pag.nome_parceiro_negocio,
	con_pag.cnpjcpf,
	con_pag.origem,
	con_pag.parcela,
	con_pag.valor
FROM
	conta_pagar con_pag