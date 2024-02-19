WITH source AS (
    SELECT
        *
    FROM {{ ref('Cidades') }}
)

SELECT
    "cdCidade"
    ,"Cidade"
FROM source