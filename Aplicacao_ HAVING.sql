/* Aula de utilização da Função HAVING + EXERCICIOS*/
/* Utilização para junção de grupo e filtrar resultados*/

/* Diferença entre WHERE e HAVING está no momento de agrupamento dos dados,
WHERE	 aplicado antes dos dados enquanto HAVING após o agrupamento dos dados*/


/* Sintaxe:

SELEC coluna1, funçãoAgregação(Coluna2)
FROM Tabela
GROUPY BY Coluna1
HAVING condição */

/*
Exemplo quais nomes no sistema tem uma ocorrência maior que 10*/

SELECT Firstname, COUNT (Firstname) as "Quantidade"
FROM Person.Person
GROUP BY FirstName
HAVING COUNT (FirstName) > 10
ORDER BY FirstName asc

/* Quais produtos que no total de vendas estão entre 162 k e 500 k
*/

SELECT TOP 10 *
FROM Sales.SalesOrderDetail

SELECT productid, sum(linetotal) as "Total"
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING SUM(linetotal) between 162000 and 500000


/* 
Caso utilizando where e having

Quais nomes no sistema tem uma ocorrência maior que 10 vezes, porém somente com titulo "Mr."
?

*/

SELECT Firstname, Count(FirstName) as "QTD."
from Person.Person	
WHERE Title = 'Mr.'
GROUP BY FirstName
HAVING	COUNT (FirstName) > 10

/* Desafio*/

/* esejamos identificar quais províncias (StateProvinceID)
possuem o maior número de cadastros em nosso sistema. Escreva uma consulta SQL que retorne todas as províncias com mais de 1.000 registros, exibindo o identificador
da província e a quantidade de cadastros.*/
 
SELECT StateProvinceID, Count(StateProvinceID) as "qtd"
FROM Person.Address
GROUP BY StateProvinceID
HAVING COUNT (StateProvinceID) > 1000