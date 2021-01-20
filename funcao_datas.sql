select curdate();

select current_time();

select current_timestamp();

select year(current_timestamp());

select month(current_timestamp());

select monthname(current_timestamp());

select datediff(current_timestamp(), '2020-12-16') as resultado;

select datediff(current_timestamp(), '1999-12-16') as resultado;

select datediff(current_timestamp(), '1998-03-17') as resultado;

select datediff(current_timestamp(), '1971-09-27') as Dias_vividos;

select datediff(current_timestamp(), '1980-08-03') as resultado;

select datediff(current_timestamp(), '1926-07-27') as resultado;

select current_timestamp() as Dia_de_hoje,
date_sub(current_timestamp(), interval 5 day) as resultado;

select distinct data_venda,
 dayname(data_venda) as dia, monthname(data_venda) as mês,
 year(data_venda) as Ano from notas_fiscais;
 
 select * from tabela_de_clientes;
 
 select nome, timestampdiff (year, data_de_nascimento, curdate()) as idade
 from tabela_de_clientes;

