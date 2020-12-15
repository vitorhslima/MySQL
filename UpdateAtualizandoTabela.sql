 use suco;
 
 update tb_produto set embalagem = 'lata', preco = 2.60
 where codigo = '544931';
 
 update tb_produto set embalagem = 'Lata', preco = 2.99
 where codigo = '1042712';
 
 select *from tb_produto;