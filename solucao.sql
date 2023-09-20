use Filmes

SELECT NOME, ANO FROM Filmes
SELECT NOME, ANO FROM Filmes ORDER BY ANO
SELECT NOME, ANO, DURACAO FROM Filmes WHERE NOME = 'DE VOLTA PARA O FUTURO'
SELECT NOME, ANO, DURACAO FROM Filmes WHERE ANO = '1997'
SELECT NOME, ANO, DURACAO FROM Filmes WHERE ANO > '2000'
SELECT NOME, ANO, DURACAO FROM Filmes WHERE Duracao > 100 AND DURACAO < 150 ORDER BY Duracao
SELECT ANO, COUNT(*) AS QTD FROM Filmes GROUP BY ANO ORDER BY QTD DESC
SELECT * FROM Atores WHERE Genero = 'M' 
SELECT * FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome

SELECT Filmes.Nome, GeneroS.Genero FROM FILMES
INNER JOIN FilmesGenero 
	ON (FILMES.Id = FilmesGenero.IdFilme)
INNER JOIN Generos 
	ON (Generos.Id = FilmesGenero.IdGenero)


SELECT Filmes.Nome, Atores.PrimeiroNome, UltimoNome, Papel FROM FILMES
INNER JOIN ElencoFilme 
	ON (FILMES.Id = ElencoFilme.IdFilme)
INNER JOIN Atores 
	ON (Atores.Id = ElencoFilme.IdAtor)
