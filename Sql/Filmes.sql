create table Artista (
	CodArt serial not null,
	NomeArt varchar(100),
	Cidade varchar(20),
	País char(10),
	DataNasc date,
	constraint PKArtista primary key(CodArt)
);

create table Estudio (
	CodEst serial not null,
	NomeEst varchar(100),
	constraint PKEstudio primary key(CodEst)
);

create table Categoria (
	CodCat serial not null,
	DescCat varchar(15),
	constraint PKCategoria primary key(CodCat)
);

create table Filme (
	CodFil serial not null,
	Titulo varchar(30),
	Ano integer,
	Duracao integer,
	CategCod serial not null,
	EstudCod serial not null,
	constraint PKFilme primary key(CodFil),
	foreign key(CategCod) references Categoria(CodCat),
	foreign key(EstudCod) references Estudio(CodEst)
);

create table Personagem (
	FilmeCod serial not null,
	ArtCod serial not null,
	NomePer varchar(10),
	CacheMoney integer,
	constraint PKPer primary key(FilmeCod,ArtCod),
	foreign key (FilmeCod) references Filme(CodFil),
	foreign key (ArtCod) references Artista(CodArt)
);

insert into Artista values(default,'Cameron Diaz',null,'USA','15/07/75');
insert into Artista values(default,'Julia Roberts',null,'USA','20/08/67');
insert into Artista values(default,'Brad Pitt',null,null,'05/03/70');
insert into Artista values(default,'Joaquin Phoenix',null,null,'06/04/72');
insert into Artista values(default,'Bradley Cooper',null,'USA','06/06/77');
insert into Artista values(default,'Tom Cruise',null,'USA','10/09/64');
insert into Artista values(default,'Rodrigo Santoro','Rio de Janeiro','Brasil','12/10/78');


insert into Estudio values(default,'Paramount');
insert into Estudio values(default,'Disney');
insert into Estudio values(default,'Universal');

insert into Categoria values(default,'Aventura');
insert into Categoria values(default,'Romance');
insert into Categoria values(default,'Comédia');
insert into Categoria values(default,'Ação');
insert into Categoria values(default,'Suspense');
insert into Categoria values(default,'Drama');

insert into Filme values(default,'Encontro Explosivo',2010,134,4,1);
insert into Filme values(default,'O Besouro Verde',2010,155,1,1);
insert into Filme values(default,'Comer, Rezar, Amar',2010,177,2,1);
insert into Filme values(default,'Coringa',2019,122,6,1);
insert into Filme values(default,'Era uma vez em Hollywood',2020,119,4,2);
insert into Filme values(default,'Nasce uma estrela',2018,100,6,1);

insert into Personagem values(1,1,'Natalie',10000);
insert into Personagem values(1,2,'Tom',10000);
insert into Personagem values(5,3,'John',10000);
insert into Personagem values(3,2,'Ana',6000);
insert into Personagem values(6,5,'Tom',11000);
insert into Personagem values(4,4,'John',12000);

select * from Artista;
select * from Categoria;
select * from Estudio;
select * from Filme;
select * from Personagem;

--7. Insira o seguinte registro: 
insert into filme values(default,'Elvis',2022,120,null,3); 
--8. Verifique quais são os artistas cadastrados ordenados pelo nome.
select NomeArt
	from Artista
	Order by NomeArt;
--9. Selecione os artistas que têm o nome iniciando com a letra ‘B’. 	
select NomeArt
	from Artista
	Where NomeArt like 'B%';
--10. Verifique os filmes que foram lançados em 2019. 
select Titulo
	from Filme
	where Ano = 2019;
--11. Atualize o valor do cachê de todos os artistas em 15%. 
select * from Personagem; --valor anterior
update Personagem
	set CacheMoney = CacheMoney * 1.15;
select * from Personagem; --valor após a alteração
--12. Insira 2 artistas brasileiros. 
insert into Artista values(default,'Carla Dias',null,'Brasil','13/03/79');
insert into Artista values(default,'Munique Mendez',null,'Brasil','25/04/88');
insert into Artista values(default,'João Silva',null,'Brasil','07/08/70');
select * from Artista; --verificar a inserção
--13. Delete 1 artista recentemente incluído que não seja brasileiro.
delete from Artista 
	where NomeArt = 'Tom Cruise';
select * from Artista
--14. Verifique quais os títulos dos filmes que possuem duração maior que 120 min?
select Titulo
	from Filme
	where Duracao > 120;
--15. Na tabela ARTISTA, quais artistas possuem cidade nula? Após a consulta realizada, atualize as cidades nulas encontradas para três artistas.
select NomeArt
	from Artista
	where Cidade is null;
update Artista
	set Cidade = 'Natal'
	where NomeArt = 'João Silva';
update Artista
	set Cidade = 'João Pessoa'
	where NomeArt = 'Carla Dias';
update Artista
	set Cidade = 'Recife'
	where NomeArt = 'Munique Mendez';
select * from Artista;
--16. Qual a descrição da categoria do filme ‘Coringa’?
select DescCat 
	from Categoria join Filme
	on CategCod = CodCat
	where Titulo = 'Coringa';
--17. Mostre os títulos de filmes, com seus nomes de estúdios e nomes de suas categorias.
select Titulo, NomeEst, DescCat
	from Filme F join Estudio E 
	on E.CodEst = F.EstudCod
	join Categoria C 
	on C.CodCat = F.CategCod;
--18. Qual o nome dos artistas que fizeram o filme ‘Encontro Explosivo’?
select NomeArt 
	from Artista A join Personagem P
	on A.CodArt = P.ArtCod  
	join Filme F
	on F.CodFil = P.FilmeCod
	where Titulo = 'Encontro Explosivo';
--19. Selecione os artistas que têm o nome iniciando com a letra ‘B’ e participaram de filmes da categoria ‘Aventura’.
select NomeArt, DescCat
	from Artista A join Personagem P
	on A.CodArt = P.ArtCod
	join Filme F
	on P.FilmeCod = F.CodFil
	join Categoria C
	on C.CodCat = F.CategCod
	where NomeArt like 'B%' and DescCat = 'Aventura';
--20. Apresente quantos filmes existem por categoria. Para isso mostre a descrição da categoria e sua respectiva contagem. Use group by.
select DescCat, count(*)
	from Filme F
	join Categoria C
	on C.CodCat = F.CategCod
	group by DescCat;

--21. Explique o que o seguinte comando faz e mostra?
select a.nomeart, p.nomeper
	from artista a left outer join personagem p on a.codart = p.artcod;
--22. Explique o que a seguinte consulta faz e retorna: 
select codart
 	from artista
	Except
	  select artcod
	   from personagem;
--23. O que a seguinte consulta faz e retorna? Explique. 
Select f.titulo as Filme
	From filme f left join categoria c on f.categcod = c.codcat
	Where f.categcod is null; 



--1. Explique: o que a seguinte consulta faz e apresenta?
select f.titulo
from filme f
where f.estudcod in (select e.codest
from estudio e
where e.nomeest like 'P%');
--A consulta retorna o título do filme, esse que pertence a um estúdio cuja inicial do nome é P.

--2. Observe agora a seguinte consulta. O que ela faz? Em que ela difere da anterior?
select f.titulo
from filme f
where exists
(select e.codest
from estudio e
where f.estudcod = e.codest and nomeest like 'P%');
--A consulta retorna o mesmo da anterior, no entanto é utilizado a condição ‘exists’, que obriga a existência do fator, além de que existe uma comparação entre as chaves.

-- Use subqueries (subconsultas) para formular as consultas pedidas.
--3. Crie uma consulta que mostre as descrições de categorias que estão na tabela Filme (associadas a filmes).
select c.desccat
from categoria c
where c.codcat in(select f.categcod
				 from filme f)

--4. Qual o nome do artista cujo nome de personagem é ‘Natalie’?

--5. Existe algum artista cadastrado que não esteja na tabela Personagem?

--6. Crie uma consulta que apresente os nomes dos artistas que possuem cachê acima da média. Nesta, além de usar subconsulta, use JOIN entre artista e personagem.

--7. Para a tabela artista, crie uma view artistaV com os seguintes campos: codart, nomeart, datanasc. Renomeie “codart” para “código do artista” e “nomeart” para “nome” na view. Liste o conteúdo da view criada.

--8. Crie uma view filmeV com os seguintes campos: titulo,duração, ano, estúdio (nome do estúdio). Liste, em seguida, seu conteúdo .

--9. Faça a inserção da artista “Mariana Ximenes” com a data de nascimento ‘27/11/78’ através da view artistaV. Como foi possível inserir por meio da view? Explique.

--10. Tente inserir um filme através da view filmeV. O que aconteceu? Explique.

--11. Faça a inserção através da tabela base filme. Depois consulte a view. O filme foi inserido? Consulte também a tabela base e explique.