select * from tabela_de_produtos;

select nome_do_produto, PRECO_DE_LISTA, 
case
	when PRECO_DE_LISTA >= 12 then 'Produto Caro'
	when PRECO_DE_LISTA >= 7 and PRECO_DE_LISTA < 12 then 'Produto em Conta'
else 'produto barato' 
end as status_preco 
from tabela_de_produtos;

select embalagem,
case
	when PRECO_DE_LISTA >= 12 then 'Produto Caro'
	when PRECO_DE_LISTA >= 7 and PRECO_DE_LISTA < 12 then 'Produto em Conta'
else 'produto barato' 
end as status_preco, avg(PRECO_DE_LISTA) as preco_medio
from tabela_de_produtos
group by EMBALAGEM,
case
	when PRECO_DE_LISTA >= 12 then 'Produto Caro'
	when PRECO_DE_LISTA >= 7 and PRECO_DE_LISTA < 12 then 'Produto em Conta'
else 'produto barato' 
end
 ORDER BY EMBALAGEM;
 
 select nome, idade,
 case 
	when year(data_de_nascimento) < 1990 then 'Idoso(a)'
	when year(data_de_nascimento) >= 1990 and idade <= 1995 then 'São Adolecenres'
	when year(data_de_nascimento) >= 1995 then 'São crianças'
end as Media_idades
from tabela_de_clientes
order by data_de_nascimento;

