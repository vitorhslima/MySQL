select * from tabela_de_produtos order by PRECO_DE_LISTA;

select * from tabela_de_produtos order by PRECO_DE_LISTA desc;

select * from tabela_de_produtos order by NOME_DO_PRODUTO;

select * from tabela_de_produtos order by EMBALAGEM, NOME_DO_PRODUTO;

select sabor, NOME_DO_PRODUTO, PRECO_DE_LISTA from tabela_de_produtos order by sabor asc, NOME_DO_PRODUTO desc;

select * from tabela_de_produtos where NOME_DO_PRODUTO = 'Linha Refrescante - 1 Litro - Morango/Limão';

select * from itens_notas_fiscais where CODIGO_DO_PRODUTO = 1101035 order by quantidade desc;

