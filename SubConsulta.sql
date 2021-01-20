select distinct bairro from tabela_de_vendedores;

select * from tabela_de_clientes where bairro 
in('tijuca', 'jardins', 'copacabana', 'santo amaro');

select * from tabela_de_clientes where bairro 
in(select distinct bairro from tabela_de_vendedores); 

select X.EMBALAGEM, X.preco_maximo from 
(select embalagem, max(preco_de_lista) as preco_maximo from tabela_de_produtos
group by EMBALAGEM) X where X.preco_maximo >= 10;

