select * from itens_notas_fiscais;

select * from notas_fiscais;

select * from notas_fiscais nf 
inner join itens_notas_fiscais inf  
on nf .NUMERO = inf .NUMERO;

select nf.CPF, nf.DATA_VENDA, inf.QUANTIDADE  from notas_fiscais nf 
inner join itens_notas_fiscais inf  
on nf .NUMERO = inf .NUMERO;

select nf.CPF, date_format(NF.DATA_VENDA, '%Y-%m') as Ano_Mes,
inf.QUANTIDADE  from notas_fiscais nf 
inner join itens_notas_fiscais inf  
on nf .NUMERO = inf .NUMERO;

/* Consulta com vendas de clientes por mes */
select nf.CPF, date_format(NF.DATA_VENDA, '%Y-%m') as Ano_Mes,
sum(inf.QUANTIDADE) as Quantidade_Vendas  from notas_fiscais nf 
inner join itens_notas_fiscais inf  
on nf .NUMERO = inf .NUMERO
group by nf.CPF, date_format(NF.DATA_VENDA, '%Y-%m');


/* Limite de compra por cliente */

select * from tabela_de_clientes tc;

select tc.cpf, tc.nome, tc.volume_de_compra as Quantidade_Limite
from tabela_de_clientes tc;

select x.CPF, x.NOME, x.Ano_Mes, x.Quantidade_Vendas, x.quantidade_limite,
case when(x.quantidade_limite - x.Quantidade_Vendas) < 0 then 'invalida'
else 'valida' end as status_venda
from (
select nf.CPF, tc.NOME, date_format(NF.DATA_VENDA, '%Y-%m') as Ano_Mes,
sum(inf.QUANTIDADE) as Quantidade_Vendas
, max(tc.VOLUME_DE_COMPRA) as quantidade_limite from notas_fiscais nf 
inner join itens_notas_fiscais inf  
on nf.NUMERO = inf.NUMERO
inner join tabela_de_clientes tc 
on tc.CPF = nf.CPF
group by nf.CPF, tc.nome, date_format(NF.DATA_VENDA, '%Y-%m')) X;


SELECT X.CPF, X.NOME, X.MES_ANO, X.QUANTIDADE_VENDAS, X.QUANTIDADE_LIMITE,
CASE WHEN (X.QUANTIDADE_LIMITE - X.QUANTIDADE_VENDAS) < 0 THEN 'INVÁLIDA'
ELSE 'VÁLIDA' END AS STATUS_VENDA, (1 - (X.QUANTIDADE_LIMITE/X.QUANTIDADE_VENDAS)) * 100 AS PERCENTUAL
FROM (SELECT NF.CPF, TC.NOME, DATE_FORMAT(NF.DATA_VENDA, '%Y-%m') AS MES_ANO
, SUM(INF.QUANTIDADE) AS QUANTIDADE_VENDAS 
, MAX(TC.VOLUME_DE_COMPRA) AS QUANTIDADE_LIMITE FROM NOTAS_FISCAIS NF
INNER JOIN ITENS_NOTAS_FISCAIS INF
ON NF.NUMERO = INF.NUMERO
INNER JOIN TABELA_DE_CLIENTES TC 
ON TC.CPF = NF.CPF
GROUP BY NF.CPF, TC.NOME, DATE_FORMAT(NF.DATA_VENDA, '%Y-%m')) X
WHERE (X.QUANTIDADE_LIMITE - X.QUANTIDADE_VENDAS) < 0;
