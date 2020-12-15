
select * from tbcliente;

select cpf, nome, sexo from tbcliente limit 3;

select cpf as cpf_cliente, nome as nome_cliente from tbcliente;

select * from tbproduto where produto = '544931';

select nome, cpf , sexo, idade from tbcliente where idade <=22;

select idade, nome, cpf from tbcliente where idade <> 22;

select * from tbcliente where nome > 'Fernando Cavalcante';

select * from tbproduto where PRECO_LISTA = 16.008;

select * from tbproduto where PRECO_LISTA between 16.007 and 16.009;

select * from tabela_de_vendedores where PERCENTUAL_COMISSAO < 0.8;

select nome, DATA_NASCIMENTO, sexo from tbcliente where DATA_NASCIMENTO = '1995-01-13';

select nome, DATA_NASCIMENTO, sexo from tbcliente where DATA_NASCIMENTO > '1995-01-13';

select nome, DATA_NASCIMENTO, sexo from tbcliente where DATA_NASCIMENTO < '1995-01-13';

select * from tbcliente where month(data_nascimento) = 12;

SELECT * FROM tabela_de_vendedores WHERE year(admisao) = 2016;

select nome, cpf, sexo,idade from tbcliente where idade >= 18 and idade <= 23;

select * from tbcliente where cidade = 'São Paulo' or bairro = 'Brás';

select * from tbcliente where (cidade = 'São Paulo' and bairro = 'Brás') 
or (idade >=27 or idade <=18);

