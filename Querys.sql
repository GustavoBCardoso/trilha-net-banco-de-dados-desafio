/* 01 - Buscar o nome e ano dos filmes*/
SELECT Nome, Ano From Filmes


/* 02 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano */
SELECT Nome, Ano, Duracao From Filmes ORDER BY Ano ASC


/* 03 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração */
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro'


/* 04 - Buscar os filmes lançados em 1997 */
SELECT * FROM Filmes Where Ano = 1997


 /* 05 - Buscar os filmes lançados APÓS o ano 2000 */
SELECT * FROM Filmes Where Ano > 2000


/* 06 - Buscar os filmes com a duracao maior que 100 e menor que 150, 
	ordenando pela duracao em ordem crescente */
SELECT * FROM Filmes 
WHERE Duracao BETWEEN 101 AND 149 
ORDER BY Duracao


/* 07 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, 
	ordenando pela duracao em ordem decrescente */
SELECT 
	Ano, 
	COUNT(*) Quantidade
FROM Filmes 
GROUP BY Ano
ORDER BY SUM(Duracao) DESC


/* 08 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome */
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'M'


/* 09 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, 
	e ordenando pelo PrimeiroNome */
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome


/* 10 - Buscar o nome do filme e o gênero */
SELECT fl.Nome, gn.Genero FROM FilmesGenero fg
INNER JOIN Filmes fl ON fl.Id = fg.IdFilme
INNER JOIN Generos gn ON gn.Id = fg.IdGenero


/* 11 - Buscar o nome do filme e o gênero do tipo "Mistério" */
SELECT fl.Nome, gn.Genero FROM FilmesGenero fg
INNER JOIN Filmes fl ON fl.Id = fg.IdFilme
INNER JOIN Generos gn ON gn.Id = fg.IdGenero
WHERE gn.Genero = 'Mistério'


/* 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel */
SELECT fl.Nome, at.PrimeiroNome, at.UltimoNome, ef.Papel  FROM ElencoFilme ef
INNER JOIN Filmes fl ON fl.Id = ef.IdFilme
INNER JOIN Atores at ON at.Id = ef.IdAtor