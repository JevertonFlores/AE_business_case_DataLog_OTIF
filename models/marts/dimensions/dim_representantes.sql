WITH source AS (
    SELECT
        *
    FROM {{ ref('stg_representantes') }}
),

final AS (
    SELECT
        ROW_NUMBER() OVER (ORDER BY "cdRepresentante") AS sk_representante
        ,"cdRepresentante" AS id_representante
        ,"Representante" AS representante
        ,"Equipe" AS equipe 
    FROM source
)

SELECT
    sk_representante
    ,id_representante
    ,representante
    ,equipe
FROM final