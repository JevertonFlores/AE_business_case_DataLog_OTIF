WITH source_cli AS (
    SELECT
        *
    FROM {{ ref('stg_clientes') }}
),

source_cid AS (
    SELECT
        *
    FROM {{ ref('stg_cidades') }}
),

final AS (
    SELECT
        ROW_NUMBER() OVER (ORDER BY cli."cdCliente") AS sk_cliente
        ,cli."cdCliente" AS id_cliente
        ,cli."Cliente" AS cliente 
        ,cli."CanalAtendimento" AS canal
        ,cid."Cidade" AS cidade
    FROM source_cli cli 
    INNER JOIN source_cid cid 
        ON cli."cdCidade" = cid."cdCidade"
)

SELECT
    *
FROM final