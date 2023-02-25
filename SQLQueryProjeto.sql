--1
SELECT Nome,Ano 
FROM Filmes
--2
SELECT Nome,Ano,Duracao 
FROM Filmes 
ORDER BY Ano ASC
--3
SELECT Nome,Ano,Duracao 
FROM Filmes 
WHERE Nome = 'de volta para o futuro';
--4
SELECT Nome,Ano,Duracao 
FROM Filmes 
WHERE Ano = '1997';
--5
SELECT Nome,Ano,Duracao 
FROM Filmes 
WHERE Ano >= '2000';
--6
SELECT Nome,Ano,Duracao 
FROM Filmes 
WHERE Duracao >'100' AND Duracao<'150' ORDER BY Duracao ASC;
--7
SELECT Ano, COUNT(*) Quantidade 
FROM Filmes 
GROUP BY Ano ORDER BY Quantidade DESC
--8
SELECT PrimeiroNome, UltimoNome, Genero 
FROM Atores 
WHERE Genero = 'M';
--9
SELECT PrimeiroNome, UltimoNome, Genero 
FROM Atores  
WHERE Genero = 'F' ORDER BY PrimeiroNome ASC
--10
SELECT Nome,Genero 
FROM FilmesGenero,Filmes,Generos 
WHERE Filmes.Id = FilmesGenero.IdFilme AND Generos.Id = FilmesGenero.IdGenero 
--11
SELECT Nome,Genero 
FROM FilmesGenero,Filmes,Generos 
WHERE Filmes.Id = FilmesGenero.IdFilme AND Generos.Id = FilmesGenero.IdGenero AND Generos.Genero = 'MISTÉRIO'
--12
SELECT Nome,PrimeiroNome,UltimoNome,Papel 
FROM Filmes,Atores,ElencoFilme 
WHERE Filmes.Id = ElencoFilme.IdFilme AND Atores.Id = ElencoFilme.IdAtor


