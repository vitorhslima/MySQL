select embalagem, max(preco_de_lista) as maior_preco from tabela_de_produtos
group by embalagem; 

select X.embalagem, X.maior_preco from
vw_maiores_embalagem X where X.maior_preco >= 10;

select A.nome_do_produto, A.embalagem, A.preco_de_lista, X.maior_preco,
((A.preco_de_lista / X.maior_preco) -1) * 100 as Percentual 
from tabela_de_produtos A inner join vw_maiores_embalagem X
on A.EMBALAGEM = X.EMBALAGEM
