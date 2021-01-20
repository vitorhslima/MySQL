select distinct bairro from tabela_de_clientes;
select distinct bairro from tabela_de_vendedores;

select distinct bairro, nome, 'cliente' as tipo from tabela_de_clientes
union 
select distinct bairro, nome, 'vendedor' as tipo from tabela_de_vendedores;