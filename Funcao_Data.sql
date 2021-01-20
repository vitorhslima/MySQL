select current_timestamp() as resultado;

select concat('O dia de hoje é : ', current_timestamp()) as resultado;

select concat('O dia de hoje é : ', 
date_format(current_timestamp(), '%W, %d/%m/%Y - %U')) as resultado;