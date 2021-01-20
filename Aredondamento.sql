select (23+((25-2)/2)*45) as resultado;

select floor(12.93333332233) as resultado;

select ceiling(13.3322532) as resultado;

select round(12.7777777662320) as resultado;

select rand() as resultado;

select numero, quantidade, preco, quantidade * preco as Faturamento 
from itens_notas_fiscais;

select numero, quantidade, preco, round(quantidade * preco, 2) as faturamento
from itens_notas_fiscais;

select * from notas_fiscais;

select year(data_venda), floor(sum(imposto * (quantidade * preco))) as valor_imposto
from notas_fiscais NF 
inner join itens_notas_fiscais INF on nf.NUMERO = inf.numero
where year(data_venda) = 2016
group by year(data_venda);




