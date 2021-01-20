select estado, sum(limite_de_credito) as soma_limite from tabela_de_clientes 
group by estado;

select estado, sum(limite_de_credito) as soma_limite from tabela_de_clientes 
group by estado having sum(LIMITE_DE_CREDITO) > 900000;

select NOME_DO_PRODUTO, EMBALAGEM, max(preco_de_lista) as PrecoMaximo, min(preco_de_lista) as PrecoMinimo
from tabela_de_produtos
group by EMBALAGEM;

select NOME_DO_PRODUTO, EMBALAGEM, max(preco_de_lista) as PrecoMaximo, min(preco_de_lista) as PrecoMinimo
from tabela_de_produtos
group by EMBALAGEM having sum(PRECO_DE_LISTA) <= 80;

select nome, max(VOLUME_DE_COMPRA) as maior_compra from tabela_de_clientes group by VOLUME_DE_COMPRA;