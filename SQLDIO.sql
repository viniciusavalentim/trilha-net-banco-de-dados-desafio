--1
SELECT Nome, Ano 
FROM Filmes

--2
SELECT *
FROM Filmes
Order by Ano ASC

--3
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Nome = 'De Volta para o futuro';

--4
SELECT *
FROM Filmes
WHERE Ano = 1997;

--5
SELECT *
FROM Filmes
WHERE Ano > 2000;

--6
SELECT *
FROM Filmes
WHERE Duracao > 100 and Duracao < 150 ORDER BY Duracao ASC

--7
SELECT	F.ANO,
COUNT(1) QUANTIDADE
FROM FILMES F
GROUP BY F.ANO
ORDER BY QUANTIDADE DESC;
--8
SELECT	A.PRIMEIRONOME NOME,
		A.ULTIMONOME SOBRENOME,
		A.GENERO
FROM ATORES A
WHERE A.GENERO = 'M';

--9
SELECT	A.PRIMEIRONOME NOME,
		A.ULTIMONOME SOBRENOME,
		A.GENERO
FROM ATORES A
WHERE A.GENERO = 'F'
ORDER BY NOME;

--10
SELECT	F.NOME,
		G.GENERO
FROM FILMES F
JOIN FILMESGENERO FG ON FG.IDFILME = F.ID
JOIN GENEROS G ON G.ID = FG.IDGENERO;

--11
SELECT	F.NOME,
		G.GENERO
FROM FILMES F
JOIN FILMESGENERO FG ON FG.IDFILME = F.ID
JOIN GENEROS G ON G.ID = FG.IDGENERO
WHERE UPPER(G.GENERO) = 'MIST�RIO';

--12
SELECT	F.NOME,
		A.PRIMEIRONOME + ' ' + A.ULTIMONOME ATOR,
		EF.PAPEL
FROM FILMES F
JOIN ELENCOFILME EF ON EF.IDFILME = F.ID
JOIN ATORES A ON A.ID = EF.IDATOR;