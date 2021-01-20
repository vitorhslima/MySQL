select LTRIM(' olá') as resultado;

select rtrim('OLÁ      ') AS RESULTADO;

SELECT trim('  OLÁ     ') AS RESULTADO;

select concat('Olá', ' ', 'tudo bem', '?')as resultado;

select upper('Olá tudo bem ?') as resultado;

select substring('Olá, tudo bem ?', 6) as resultado;

select substring('Olá, tudo bem ?', 6,4) as resultado;

select concat(nome, ' (', cpf, ') ') as resultado from tabela_de_clientes;

select nome, concat(endereco_1, '  ', bairro, '  ', cidade, '  ', estado, '  ') as Complemento from tabela_de_clientes;




