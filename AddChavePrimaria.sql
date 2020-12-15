USE suco;

ALTER TABLE tb_clientes ADD PRIMARY kEY (CPF);

alter table tb_clientes ADD COLUMN (DATA_NACIMENTO DATE);

insert into tb_clientes (
CPF, NOME, ENDERECO, ENDERECO2, BAIRRO, CIDADE, ESTADO, CEP, IDADE, SEXO,
 LIMITE_CREDITO, VOLUME_COMPRA, PRIMEIRA_COMPRA, DATA_NACIMENTO)
 VALUES ('46551319858', 'Vitor hugo de Souza Lima', 'Rua João Varin 281',
 'casa','Vila Assis', 'Mauá', 'SP', '09370790', 21, 'M', '10000.00', '2000',0,
 '1999-12-16');
 select * from tb_clientes;
 
