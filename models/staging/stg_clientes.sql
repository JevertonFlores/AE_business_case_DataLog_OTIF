WITH source AS (
    SELECT
        *
    FROM {{ ref('Clientes') }}
)

SELECT
    "cdCliente"
    ,"Cliente"
    ,"CanalAtendimento"
    ,"cdCidade"
FROM source