 
 SELECT CONCAT('O cliente  ',NOME,'  faturou  ',faturamento,'  no ano de:  ',DATA) FROM  tabela_de_clientes CLI INNER JOIN
( SELECT YEAR(DATA_VENDA)AS DATA,CPF, SUM(Round(QUANTIDADE * PRECO)) AS faturamento 
FROM notas_fiscais nf 
INNER JOIN itens_notas_fiscais inf ON nf.NUMERO = inf.NUMERO 
WHERE  YEAR(DATA_VENDA) = 2016
GROUP BY 
CPF, year(DATA_VENDA)) AS PRODUTOS
ON PRODUTOS.CPF = CLI.CPF


  

