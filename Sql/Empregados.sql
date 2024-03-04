-- Criação das tabelas Departamento e Empregado

create table departamento (
   CodDepto                      serial not null, 
   Nome                          varchar(20),
   Local                         varchar(20));
alter table departamento add constraint pkdepto primary key(coddepto);

create table empregado (
       Matricula               serial not null,
       PrimeiroNome            varchar(15),
       Sobrenome   	          varchar(15),
       Dataadmissao            date,
       Cargo                   varchar(30),
       Salario                 numeric(13,2),
       gerente		             integer,
       CodDepto                integer);
alter table empregado add constraint pkEmp primary key(matricula);

Alter table empregado add constraint fkgerente foreign key(gerente) references Empregado;
Alter table Empregado add constraint fkdepto foreign key(coddepto) references Departamento;


insert into departamento values (default,'Informática','Sede');
insert into departamento values (default,'Pessoal','Sede');


insert into Empregado values (default,'Jõao', 'Guedes',current_date,'Analista de Sistemas Junior',3400.00,null,1);
insert into Empregado values (default,'José', 'Batista',current_date,'Analista de Sistemas Pleno',4200.00,1,1);
insert into Empregado values (default,'Ana Maria', 'Silva',current_date,'Analista de Sistemas Junior',3400.00,1,1);
insert into Empregado values (default,'Ricardo', 'Neves',current_date,'Analista de Sistemas Pleno',4200.00,2,1);
insert into Empregado values (default,'Valter', 'Moura',current_date,'Analista de Suporte Junior',3400.00,2,1);
insert into Empregado values (default,'Mariana','Oliveira',current_date,'Designer de Interface',4800.00,1,null);

select * from empregado; 



-- Consultas ao banco Empregados
Select e.sobrenome as "Empregado", d.nome as "Departamento", e.dataadmissao as "Data de Admissão"
From empregado e join departamento d 
on e.coddepto = d.coddepto; --marina não aparece pois não tem departamento


Select e.primeironome as "Empregado", 	g.primeironome as "Gerente"
From (empregado e join empregado g --autorelacionamento
on e.gerente = g.matricula);

Select d.nome as Departamento, 	e.primeironome as
Empregado
From departamento d left outer join empregado e 
on d.coddepto = e.coddepto;  --mesmo que n seja elacionado com a tabela da direita eu pego

select d.nome as Departamento, e.primeironome 
as Empregado
from departamento d right outer join empregado e
on d.coddepto = e.coddepto  --mesmo que n seja elacionado com a tabela da esquerda eu pego
order by d.nome;

Select d.nome as Departamento, 	e.primeironome as Empregado
From departamento d full join empregado e --pega tudo dos dois lados
on d.coddepto = e.coddepto;

Select d.nome as Departamento, 	e.primeironome as Funcionario
From departamento d left join empregado e
on d.coddepto = e.coddepto --pega o departamento que não tem funcionário e ordena pelo nome
Where e.coddepto is null
Order by d.nome; 