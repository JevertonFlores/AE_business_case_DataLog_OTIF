WITH source AS (
    SELECT
        *
    FROM {{ ref('Representantes') }}
)

SELECT
    "cdRepresentante"
    ,"Representante"
    ,"Equipe"
FROM source