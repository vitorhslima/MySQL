select tp.SABOR, nf.DATA_VENDA, inf.QUANTIDADE from tabela_de_produtos tp
inner join itens_notas_fiscais inf on tp.CODIGO_DO_PRODUTO = inf.CODIGO_DO_PRODUTO
inner join notas_fiscais nf on nf.NUMERO = inf.NUMERO;


/*qantidade vendida por sabor 2016*/
select tp.SABOR, year(nf.DATA_VENDA) as Ano, sum(inf.QUANTIDADE) as Quantidade from tabela_de_produtos tp
inner join itens_notas_fiscais inf on tp.CODIGO_DO_PRODUTO = inf.CODIGO_DO_PRODUTO
inner join notas_fiscais nf on nf.NUMERO = inf.NUMERO
where year(nf.DATA_VENDA) = 2016
group by tp.SABOR, year(nf.DATA_VENDA)
order by sum(inf.QUANTIDADE) desc;

/*Para saber a quantidade tatol*/
select  year(nf.DATA_VENDA) as Ano, sum(inf.QUANTIDADE) as Quantidade from tabela_de_produtos tp
inner join itens_notas_fiscais inf on tp.CODIGO_DO_PRODUTO = inf.CODIGO_DO_PRODUTO
inner join notas_fiscais nf on nf.NUMERO = inf.NUMERO
where year(nf.DATA_VENDA) = 2016
group by year(nf.DATA_VENDA)
order by sum(inf.QUANTIDADE) desc;

/*com participacao*/
select venda_sabor.sabor, venda_sabor.ano, venda_sabor.quantidade,
(venda_sabor.quantidade/venda_total.QUANTIDADE) * 100 as participacao from 
(select tp.SABOR, year(nf.DATA_VENDA) as Ano, sum(inf.QUANTIDADE) as Quantidade from tabela_de_produtos tp
inner join itens_notas_fiscais inf on tp.CODIGO_DO_PRODUTO = inf.CODIGO_DO_PRODUTO
inner join notas_fiscais nf on nf.NUMERO = inf.NUMERO
where year(nf.DATA_VENDA) = 2016
group by tp.SABOR, year(nf.DATA_VENDA)) as venda_sabor
inner join
(select  year(nf.DATA_VENDA) as Ano, sum(inf.QUANTIDADE) as Quantidade from tabela_de_produtos tp
inner join itens_notas_fiscais inf on tp.CODIGO_DO_PRODUTO = inf.CODIGO_DO_PRODUTO
inner join notas_fiscais nf on nf.NUMERO = inf.NUMERO
where year(nf.DATA_VENDA) = 2016
group by year(nf.DATA_VENDA)) as venda_total
on venda_sabor.ano = venda_total.ano
order by venda_sabor.QUANTIDADE desc;


SELECT VENDA_TAMANHO.TAMANHO, VENDA_TAMANHO.ANO, VENDA_TAMANHO.QUANTIDADE,
ROUND((VENDA_TAMANHO.QUANTIDADE/VENDA_TOTAL.QUANTIDADE) * 100, 2) AS PARTICIPACAO FROM 
(SELECT TP.TAMANHO, YEAR(NF.DATA_VENDA) AS ANO, SUM(INF.QUANTIDADE) AS QUANTIDADE FROM 
TABELA_DE_PRODUTOS TP 
INNER JOIN ITENS_NOTAS_FISCAIS INF ON TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO
INNER JOIN NOTAS_FISCAIS NF ON NF.NUMERO = INF.NUMERO
WHERE YEAR(NF.DATA_VENDA) = 2016
GROUP BY TP.TAMANHO, YEAR(NF.DATA_VENDA)) AS VENDA_TAMANHO
INNER JOIN 
(SELECT YEAR(NF.DATA_VENDA) AS ANO, SUM(INF.QUANTIDADE) AS QUANTIDADE FROM 
TABELA_DE_PRODUTOS TP 
INNER JOIN ITENS_NOTAS_FISCAIS INF ON TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO
INNER JOIN NOTAS_FISCAIS NF ON NF.NUMERO = INF.NUMERO
WHERE YEAR(NF.DATA_VENDA) = 2016
GROUP BY YEAR(NF.DATA_VENDA)) AS VENDA_TOTAL
ON VENDA_TAMANHO.ANO = VENDA_TOTAL.ANO
ORDER BY VENDA_TAMANHO.QUANTIDADE DESC;

