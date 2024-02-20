WITH source AS (
    SELECT
        *
    FROM {{ ref('stg_pedidos') }}
),

intermediate AS (
    SELECT
        TO_DATE("DataPedido", 'MM/DD/YYYY') AS data_pedido
        ,"NoPedido" AS pedido
        ,TO_DATE("DataPrevistaEntrega", 'MM/DD/YYYY') AS data_prevista
        ,TO_DATE("DataEmissaoCTE", 'MM/DD/YYYY') AS data_cte
        ,TO_DATE("DataEntrega", 'MM/DD/YYYY') AS data_entrega
        ,"cdRepresentante" AS id_representante
        ,"cdCliente" AS id_cliente
        ,"OcorrenciaDevolucao" AS ocorrencia_devolucao
    FROM source
),

clientes AS (
    SELECT
        sk_cliente
        ,id_cliente
    FROM {{ ref('dim_clientes') }}
),

representantes AS (
    SELECT
        sk_representante
        ,id_representante
    FROM {{ ref('dim_representantes') }}
),

final AS (
    SELECT
        TO_CHAR(p.data_pedido, 'YYYYMMDD')::INT AS sk_datetime
        ,c.sk_cliente 
        ,r.sk_representante
        ,p.pedido
        ,p.data_pedido
        ,p.data_prevista
        ,p.data_cte
        ,p.data_entrega
        ,p.ocorrencia_devolucao
    FROM intermediate p 
    LEFT JOIN clientes c
        ON p.id_cliente = c.id_cliente
    LEFT JOIN representantes r 
        ON p.id_representante = r.id_representante
)

SELECT
    *
FROM final