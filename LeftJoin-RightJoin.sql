select count(*) from tabela_de_clientes;

select cpf, count(*) from notas_fiscais group by cpf;

select distinct A.cpf, B.cpf, nome from tabela_de_clientes A
inner join notas_fiscais B on A.cpf = B.cpf;

select distinct nome, A.cpf, B.cpf from tabela_de_clientes A
left join notas_fiscais B on A.cpf = B.cpf;

select distinct nome, A.cpf, B.cpf from tabela_de_clientes A 
left join notas_fiscais B on A.cpf = B.cpf
where B.cpf is null;

select nome, A.cpf, B.cpf from notas_fiscais B 
right join tabela_de_clientes A on A.CPF = B.cpf
where B.cpf is null; 

select distinct nome, A.cpf, B.cpf from tabela_de_clientes A 
left join notas_fiscais B on A.cpf = B.cpf
where B.cpf is null and year(B.data_venda) = 2015;

