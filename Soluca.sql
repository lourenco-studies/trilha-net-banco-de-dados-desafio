-- 1 - Buscar o nome e ano dos filmes
Select Nome, Ano from Filmes

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
Select Nome, Ano, Duracao from Filmes order by Ano

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
Select Nome, Ano, Duracao from Filmes where Nome = 'De Volta para o Futuro'

-- 4 - Buscar os filmes lançados em 1997
Select Nome, Ano, Duracao from Filmes where Ano = 1997

-- 5 - Buscar os filmes lançados APÓS o ano 2000
Select Nome, Ano, Duracao from Filmes where Ano > 2000

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
Select Nome, Ano, Duracao from Filmes where Duracao > 100 AND Duracao < 150 order by Duracao

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
Select Ano, count(*) as Quantidade from Filmes group by Ano order by Quantidade desc

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
Select Id, PrimeiroNome, UltimoNome, Genero from Atores where Genero = 'M'

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
Select Id, PrimeiroNome, UltimoNome, Genero from Atores where Genero = 'F' order by PrimeiroNome

-- 10 - Buscar o nome do filme e o gênero
Select f.Nome, g.Genero from Filmes f inner join FilmesGenero fg on fg.IdFilme = f.Id inner join  Generos g on fg.IdGenero = g.Id

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
Select f.Nome, g.Genero from Filmes f inner join FilmesGenero fg on fg.IdFilme = f.Id inner join  Generos g on fg.IdGenero = g.Id where Genero = 'Mistério'

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
Select f.Nome, a.PrimeiroNome, a.UltimoNome, e.Papel from Filmes f inner join ElencoFilme e on e.IdFilme = f.Id inner join Atores a on e.IdAtor = a.Id 
