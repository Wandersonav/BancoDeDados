/*Na tabela de notas fiscais temos o valor do imposto.
 Já na tabela de itens temos a quantidade e o faturamento. Calcule o valor do 
 imposto pago no ano de 2016 arredondando para o menor inteiro.*/
 
 
 select  YEAR(DATA_VENDA), FLOOR(SUM(IMPOSTO *(QUANTIDADE * PRECO))) AS FATURAMENTO 
 from notas_fiscais nf 
 inner join itens_notas_fiscais inf on nf.NUMERO = inf.NUMERO
 where year(data_venda) = 2016 
 group by
 YEAR (DATA_VENDA)
 
 
 SELECT YEAR(DATA_VENDA), FLOOR(SUM(IMPOSTO * (QUANTIDADE * PRECO))) 
FROM notas_fiscais NF
INNER JOIN itens_notas_fiscais INF ON NF.NUMERO = INF.NUMERO
WHERE YEAR(DATA_VENDA) = 2016
GROUP BY YEAR(DATA_VENDA)
 
 
