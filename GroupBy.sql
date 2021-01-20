select * from tabela_de_clientes; 

select estado, LIMITE_DE_CREDITO from tabela_de_clientes;

select estado, sum(LIMITE_DE_CREDITO) as limite_total from tabela_de_clientes group by estado;

select embalagem, preco_de_lista from tabela_de_produtos;

select NOME_DO_PRODUTO, embalagem, max(preco_de_lista) as Maior_Preco from tabela_de_produtos group by EMBALAGEM;

select embalagem, count(*) as contador from tabela_de_produtos group by embalagem;

select bairro, sum(limite_de_credito) as limite from tabela_de_clientes group by bairro;

select estado,bairro, sum(limite_de_credito) as limite from tabela_de_clientes
where cidade = 'rio de janeiro' group by bairro;

select estado,bairro, sum(limite_de_credito) as limite from tabela_de_clientes
where cidade = 'rio de janeiro' group by bairro order by bairro;

select max(quantidade) as 'maior quantidade' from itens_notas_fiscais  WHERE `CODIGO_DO_PRODUTO` = '1101035' ;

select count(*) from itens_notas_fiscais where CODIGO_DO_PRODUTO  = '1101035' and QUANTIDADE = 99;
