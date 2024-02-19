WITH source AS (
    SELECT
        *
    FROM {{ ref('Pedidos') }}
)

SELECT
    "DataPedido"
    ,"NoPedido"
    ,"DataPrevistaEntrega"
    ,"DataEmissaoCTE"
    ,"DataEntrega"
    ,"cdRepresentante"
    ,"cdCliente"
    ,"OcorrenciaDevolucao"
FROM source