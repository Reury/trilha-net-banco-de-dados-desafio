--use Filmes

--1
select 
	nome,ano
from Filmes;

--2
select
	nome, ano 
	from Filmes 
	order by ano;

--3

select 
	nome,ano, duracao
	from Filmes
	where Nome='De volta para o futuro';

--4

select nome,ano,duracao
 from Filmes
 where ano=1997;

--5
select nome,ano, duracao 
	from Filmes
	where ano>2000;
	
--6
select nome, ano,duracao
	from Filmes
	where duracao>100 and duracao <150;

--7 
select ano, COUNT(id) as total from Filmes
	group by ano
	order by total desc;

--8
SELECT
	*
FROM Atores
WHERE Genero = 'M'

--9
select primeiroNome,UltimoNome
	from Atores
	where Genero = 'F'
	order by PrimeiroNome asc;

--10
select f.nome,g.Genero
from Filmes f
inner join FilmesGenero fg on f.id = fg.IdFilme
inner join Generos g ON fg.IdGenero = g.Id;

--11
select f.nome,g.Genero
from Filmes f
inner join FilmesGenero fg on f.id = fg.IdFilme
inner join Generos g ON fg.IdGenero = g.Id
where g.Genero='Mistério';


--12

select f.nome, a.PrimeiroNome, a.UltimoNome, ef.papel
from filmes f
inner join ElencoFilme ef on f.Id = ef.IdFilme
inner join Atores a ON ef.IdAtor = a.Id


