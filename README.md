# Business Case - Logística - OTIF

### Sobre a empresa:
A DataLog, uma empresa especializada em serviços logísticos atuante no Estado de Santa Catarina, desempenha um papel crucial na distribuição de produtos, com ênfase no setor de alimentos. Ao longo do ano de 2022, foram concluídas com sucesso mais de 140 mil entregas, evidenciando nosso compromisso e eficiência operacional.

### Objetivo:
A empresa está constantemente em busca da excelência por meio da implementação das melhores práticas de gestão, reconhecendo a importância estratégica do setor logístico nos últimos anos. O foco primordial é assegurar a satisfação dos clientes, visando manter uma vantagem competitiva sólida no mercado em constante evolução.

Com o objetivo de medir os resultados e melhorar o desempenho, surgiu uma solicitação do Diretor de Logística para avaliar o desempenho das entregas através da análise de OTIF (On Time In Full), que mede a capacidade de realizar as entregas dentro do prazo acordado, atendendo a quantidade dos produtos solicitados.

### Requisitos:
O Dashboard entregue deverá possuir recursos que possibilitem obter as respostas para as perguntas listadas abaixo.

1. Qual foi o total de entregas em todo o período analisado?
2. Qual é a quantidade de pedidos em aberto no total do período?
3. Qual foi a média de dias entre a data do pedido e da emissão da CTE? (Order Fill Rate)
4. Quanto tempo, em média, os clientes esperam entre o pedido e a entrega? (Order Cycle Time)
5. Qual foi o percentual de pedidos entregues dentro do prazo acordado? (On Time)
6. Qual foi o percentual de pedidos entregues sem ocorrências de devoluções? (In Full)
7. Qual foi o índice OTIF do período total?
8. Quais são os resultados de % On Time, % In Full e % OTIF de cada um dos períodos?
9. Ao longo dos meses do primeiro semestre, qual é o melhor ano em termos de OTIF?
10. Comparando os dois períodos, a quantidade de entregas aumentou ou diminuiu? Qual foi a diferença em número de entregas?
11. Comparando os dois períodos, como foi o desempenho de OCT? Melhorou ou piorou?
12. Com base nas questões anteriores, a KPK Log deveria focar seus esforços em melhorar o prazo ou a qualidade das entregas?

### Informações adicionais:
● **Order Fill Rate (OFR)** = média de dias entre a data do pedido e da emissão da CTE. Representa o tempo que a operação leva para a separação de um pedido, incluindo todas as atividades — desde o recebimento da ordem de compra até a expedição.

● **Order Cycle Time (OCT)** = média de dias entre a data do pedido e da entrega. Tem como objetivo medir quanto tempo a empresa leva para fazer uma entrega, desde o despacho até a chegada no destino, ou seja, a eficiência geral da operação.
● **On Time** = número de pedidos entregues com data de entrega menor ou igual à data prevista. Mede a pontualidade do pedido.

● **% On Time** = proporção entre pedidos On Time em relação ao total de pedidos entregues.

● **In Full** = número de pedidos com quantidade de ocorrências de devolução igual a zero. Avalia a conformidade às especificações acordadas com o cliente como qualidade, dimensões, quantidade e preço. 

● **% In Full** = proporção entre pedidos In Full em relação ao total de pedidos entregues.

● **% OTIF** = multiplicação % On Time e % In Full. Esta segmentação permite identificar se a origem do problema está na entrega ou na expedição. On Time baixo significa que há necessidade de revisar o processo de transporte ou então melhorar a negociação de data prevista de entrega. Por outro lado, o In Full baixo pode indicar problemas no processamento, separação, embalagem, conferência ou despacho dos produtos.

### Base de Dados:
A empresa disponibilizou a base de dados de janeiro de 2022 a agosto de 2023 com datas e quantidades de pedidos, além das várias dimensões relacionadas às entregas. As tabelas disponibilizadas foram:

**Representante**: tabela com o cadastro do representante e sua equipe.

**Cliente**: tabela com o cadastro de clientes atendidos, cidade do cliente e também do canal de atendimento que este pertence.

**Cidade**: tabela com o cadastro das cidades atendidas.

**Pedidos**: tabela com a data do pedido, número do pedido, data prevista de entrega, data de emissão da CTE (Conhecimento de Transporte eletrônico), data de entrega, código do representante e cidade, além da quantidade de ocorrências de devoluções. As datas de entrega em branco representam as entregas ainda em aberto.

### Solução proposta:
Para atender as necessidades de maneira eficaz e com um baixo custo tecnológico, serão utilizadas as seguintes ferramentas:
- dbt Core: para o processo de transformação e carga dos dados;
- PostgreSQL: para armazenamento dos dados tratados;
- Power BI: para criação do Dashboard e análise dos dados.

### Modelo de Dados:
![image](https://github.com/JevertonFlores/AE_business_case_DataLog_OTIF/assets/36814309/b630d7c3-515c-4cf9-a2c7-11aed6b41f4d)

### Tratamento e modelagem dos dados com dbt Core:
<a href="https://github.com/JevertonFlores/AE_business_case_DataLog_OTIF/tree/main/models">- Models dbt Core;</a>

### Lineage:
![image](https://github.com/JevertonFlores/AE_business_case_DataLog_OTIF/assets/36814309/c0c64a64-995c-4d7b-a0e2-2ac7702235d0)

### Datamart armazenado no PostgreSQL:
![image](https://github.com/JevertonFlores/AE_business_case_DataLog_OTIF/assets/36814309/62cd3fee-8116-4663-83f0-9ad0cc97b95e)

### Dashboard:
O dashboard pode ser acessado pelo link --> 
<a href="https://app.powerbi.com/view?r=eyJrIjoiNDZkMmU0OTItNTY0Ny00NDUwLWJjMDctMDAwYmRhYmZhZGNlIiwidCI6ImRlYzg2NmVlLWFkZjAtNGIxZC1hMWJhLTdhODZjODY0OTRiZCJ9">- DataLog - OTIG

### Telas do dashboard:

![image](https://github.com/JevertonFlores/AE_business_case_DataLog_OTIF/assets/36814309/72eca046-bd11-4fb3-b7c0-b61aeda68ac0)
