-- 1. Buscar o nome e ano dos filmes
select nome, ano from filmes

--2.  Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
select nome, ano from filmes order by ano asc

--3. Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
select * from filmes where nome ='de volta para o futuro'

--4 - Buscar os filmes lançados em 1997
select * from filmes where ano =1997

--5 - Buscar os filmes lançados APÓS o ano 2000
select * from filmes where ano > 2000

--6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
select * from filmes where duracao > 100 and duracao < 150 order by 4 asc

--7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
select ano, COUNT(*) as qtd from filmes group by ano order by qtd desc

--8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
select PrimeiroNome, UltimoNome, Genero from Atores where Genero ='M'

--9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
select PrimeiroNome,UltimoNome,Genero from atores where genero ='F' order by PrimeiroNome asc

--10 - Buscar o nome do filme e o gênero
select filmes.Nome, Generos.Genero from Filmes
inner join FilmesGenero on FilmesGenero.IdFilme = Filmes.Id
inner join Generos on Generos.Id = FilmesGenero.IdGenero

--11 - Buscar o nome do filme e o gênero do tipo "Mistério"
select filmes.Nome, Generos.Genero from Filmes
inner join FilmesGenero on FilmesGenero.IdFilme = Filmes.Id
inner join Generos on Generos.Id = FilmesGenero.IdGenero
where Generos.genero = 'Mistério'

--12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
select filmes.Nome, Atores.PrimeiroNome,Atores.UltimoNome, ElencoFilme.Papel from filmes
inner join ElencoFilme on ElencoFilme.IdFilme = Filmes.id
inner join Atores on  Atores.Id = ElencoFilme.IdAtor