SELECT 
	Nome, 
	Ano 
FROM Filmes;


SELECT 
	Nome,
	Ano 
FROM Filmes 
ORDER BY Ano ASC;


SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro';


SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano = '1997';


SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano > '2000';


SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Duracao > '100'
AND Duracao < '150'
ORDER BY Duracao ASC;


SELECT 
	Ano,
	COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade Desc;


SELECT *
FROM Atores
WHERE Genero = 'M';


SELECT *
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome ASC;


SELECT fl.Nome, gen.Genero
FROM Filmes fl
INNER JOIN FilmesGenero flgen ON fl.Id = flgen.IdFilme
INNER JOIN Generos gen ON flgen.IdGenero = gen.Id;


SELECT fl.Nome, gen.Genero
FROM Filmes fl
INNER JOIN FilmesGenero flgen ON fl.Id = flgen.IdFilme
INNER JOIN Generos gen ON flgen.IdGenero = gen.Id
WHERE gen.Genero = 'Mistério';


SELECT fl.Nome, ats.PrimeiroNome, ats.UltimoNome, elflm.Papel
FROM Filmes fl
INNER JOIN ElencoFilme AS elflm ON elflm.IDFilme = fl.Id
INNER JOIN Atores AS ats ON ats.Id = elflm.IdAtor;