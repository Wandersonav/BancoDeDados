select concat (NOME, '( rua -',  ENDERECO_1,' Bairro - ', BAIRRO, ' Cidade - ', CIDADE, ' UF - ',ESTADO,')' ) as resultado from tabela_de_clientes



select nome, round((datediff(CURDATE(),data_de_nascimento))/365) as idade from tabela_de_clientes


SELECT NOME, TIMESTAMPDIFF (YEAR, DATA_DE_NASCIMENTO, CURDATE()) AS    IDADE
FROM  tabela_de_clientes