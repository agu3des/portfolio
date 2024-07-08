--CRIAR TABELAS
CREATE TABLE Cliente (
	CodCLI Serial PRIMARY KEY,
	Nome Varchar(30),
	Endereco Varchar(30),
	Telefone Varchar(12),
	InscE Varchar(10),
	CNPJ Varchar(10),
	Cidade Varchar(15),
	UF Varchar(2)
);

CREATE TABLE Produto (
	CodPROD Serial not null,
	Descricao Varchar(20),
	Valor Numeric(10,2),
	Unidade Char(2),
	constraint pk_prod primary key(CodPROD)
);

CREATE TABLE Pedido (
	NumPED Serial PRIMARY KEY,
	PrazoEntrega Integer,
	Data Date,
	CodCLI Integer,
	CodVEND Integer,
	FOREIGN KEY(CodCLI) REFERENCES Cliente (CodCLI)
);

CREATE TABLE Vendedor (
	CodVEND Serial PRIMARY KEY,
	Nome Varchar(30),
	DataNasc Date,
	SalarioFixo Numeric(12,2),
	FaixaComissao Char(1)
);

CREATE TABLE ItensPedido (
	NumPED Integer,
	CodPROD Integer,
	Quantidade Integer,
	constraint pk_itens PRIMARY KEY(CodPROD,NumPED),
	constraint fk_prod FOREIGN KEY(CodPROD) REFERENCES Produto (CodPROD),
	constraint fk_ped FOREIGN KEY(NumPED) REFERENCES Pedido (NumPED)
);
 
ALTER TABLE Pedido ADD FOREIGN KEY(CodVEND) REFERENCES Vendedor (CodVEND);


--INSERT CLIENTES
insert into cliente values(default,'Claudia Dias',null,null, '564325','786534','Recife','PE');
insert into cliente values(default,'Joaquim Moraes','Epitacio Pessoa, 123','32425643', '500925','789004','Joao Pessoa','PB');
insert into cliente values(default,'Janaina Rodrigues','Rui Carneiro, 342',null, '764325','386534','Joao Pessoa','PB');
insert into cliente values(default,'Maria Portela','Boa Viagem, 345','76435678', null,null,'Recife','PE');
insert into cliente values(default,'Ana Moura','Nego, 321','32465432', '87325','780978','Joao Pessoa','PB');
insert into cliente values(default,'Cassandra Doura',null,null, '786525','79876','Recife','PE');
insert into cliente values(default,'Cicero Novaes',null,null, '123525','432534','Natal','RN');
insert into cliente values(default,'Marcos Araruna','Sergipe,267','43265432', '900325','800534','Joao Pessoa','PB');

--INSERT VENDEDOR
insert into vendedor values(default,'Juan Gomes', '28/07/1978', 2300.80,'C');
insert into vendedor values(default,'Joao Peregrino', '20/05/1970', 3300.80,'B');
insert into vendedor values(default,'Carla Gomes', '12/02/1984', 5300.80,'A');
insert into vendedor values(default,'Josefa Cirino', '23/08/1990', 2300.80,'C');
insert into vendedor values(default,'Ariane Dutra', '28/09/1993', 3300.80,'B');

--INSERT PRODUTO
insert into produto values(default,'Queijo', 22.00, 'KG');
insert into produto values(default,'Chocolate', 6.12, 'G');
insert into produto values(default,'Leite', 10.00, 'L');
insert into produto values(default,'Linho', 24.00, 'M');
insert into produto values(default,'Feijao', 12.00, 'KG');
insert into produto values(default,'Açucar', 9.00, 'KG');

--INSERT PEDIDO
insert into pedido values(default,23, '12/09/2019', 1,1);
insert into pedido values(default,10, '21/09/2020', 2,1);
insert into pedido values(default,5, '25/08/2020', 3,4);
insert into pedido values(default,2, '28/07/2020', 4,2);
insert into pedido values(default,3, '28/09/2020', 5,3);
insert into pedido values(default,3, '26/10/2020', 5,2);

--INSERT ITENS DO PEDIDO
insert into itenspedido values(2,2, 35);
insert into itenspedido values(2,3, 30);
insert into itenspedido values(1,1, 10);
insert into itenspedido values(4,5, 35);
insert into itenspedido values(5,4, 10);
insert into itenspedido values(3,4, 35);
insert into itenspedido values(1,5, 10);


--CONSULTA SIMPLES
select * from cliente;
select * from vendedor;
select * from produto;
select * from pedido;
select * from itenspedido;

--INSERT - ALUNA
insert into cliente values(default, 'Ananda Guedes', 'Rua Maria Pereira, 380', '9882',null, null, 'João Pessoa', 'PB');
insert into cliente values(default, 'Suênia Guedes', 'Rua Joana de Silva, 400', '46822','68131', null, 'Rio de Janeiro', 'RJ');
insert into cliente values(default, 'Angêlica Araújo', 'Rua Escritor José Amago, 780', '9838','723631', null, 'Manaus', 'AM');

insert into vendedor values(default, 'Joana Tavares', '23/07/1980', 1000, 'C');
insert into vendedor values(default, 'Letícia Leite', '05/11/2000', 3600, 'B');
insert into vendedor values(default, 'Arthur Manoel', '16/01/2016', 5900, 'A');

insert into produto values(default, 'Biscoito', 3.90, 'G');
insert into produto values(default, 'Cafe', 7.80, 'G');
insert into produto values(default, 'Refrigerante', 9.0, 'L');

insert into pedido values(default, 2, '30/09/2025', 4, 3);
insert into pedido values(default, 5, '02/04/2025', 2, 1);
insert into pedido values(default, 6, '27/07/2025', 5, 2);

insert into itenspedido values(6, 5, 7);
insert into itenspedido values(4, 3, 16);
insert into itenspedido values(2, 7, 42);


--SELECT 
Select numped, codprod, quantidade
		From itenspedido
		Where quantidade > 20;
		
Select descricao
	From produto
	Where unidade = 'KG' and valor > 4.0;
	
Select codprod, descricao
	From produto
	Where valor between 5.00 and 15.50;

Select nome
	From vendedor
	Where faixacomissao IN ('A','B');
	
Select nome
	From cliente
	Where InscE is null;
	
Select nome, (salariofixo *1.15) + 120 as "Novo Salário"
From vendedor
Where faixacomissao = 'C'
Order by nome;

Select  *
From Cliente
Where nome like '________A';

Select  *
From Cliente
Where nome like '________a'


-- BD Pedidos
-- script da aula 05 - subqueries e outros comandos

select * from produto order by codprod; 

Select descricao
From produto
Where unidade IN ('KG', 'L', 'M');

Select round(avg(valor),0)
From produto; 

-- Subqueries

Select descricao
From produto
Where codprod in 
     (select codprod
	  From itenspedido
      Where quantidade = 10);

select * from vendedor order by codvend; 

select nome
	From vendedor
	Where salariofixo < 
	      (select round(AVG(salariofixo),1)
		   From vendedor);
								 

select * from produto; 

Select  pr.unidade, max(pr.valor) 
From  produto pr
group by pr.unidade; 
		 
Select p.descricao 
From produto p
Where  p.valor > 
    ANY (Select  max(pr.valor) 
         From  produto pr
         group by pr.unidade) ;
		 
-- Teste com ALL

Select p.descricao 
From produto p
Where  p.valor > 
    ALL (Select  max(pr.valor) 
         From  produto pr
         group by pr.unidade) ;

-- Consultas correlacionadas

-- Faça a seguinte inserção
insert into produto values (default, 'XXX', 1.2, 'KG');

select * from produto order by codprod; 

select p.descricao
	From produto P
	Where not exists 
	(select *
     From itenspedido i
	 Where i.codprod = P.codprod);
	 
-- sem o NOT
select p.descricao
	From produto P
	Where exists 
	(select *
     From itenspedido i
	 Where i.codprod = P.codprod);
	 
-- igual a: 
Select p.descricao
From produto p 
Where p.codprod in  
     (select i.codprod
	  From itenspedido i);

-- com Not

Select p.descricao
From produto p 
Where p.codprod not in  
     (select i.codprod
	  From itenspedido i);

-- Usando IN e um filtro de linha

Select p.descricao
From produto p 
Where p.codprod in  
     (select i.codprod
	  From itenspedido i
	  Where i.quantidade = 10);
	    
-- Outras subqueries

Select distinct 
   (Select COUNT(*) from cliente where cidade like 'João Pessoa') AS "Quantidade de Pessoenses", 
   (Select COUNT(*) from cliente where cidade like 'Recife') AS "Quantidade de Recifenses"
  From cliente;
  
insert into cliente (codcli,nome) 
          (select codvend + 10, nome
          from vendedor
          where faixacomissao like 'A');
		  
select * from cliente order by codcli; 
select * from vendedor order by codvend; 

Update produto
Set valor = valor*1.025
Where valor < (select avg(valor) 
			   From produto
			   Where unidade = 'KG');
			   
select * from produto order by unidade; 

--Inserir antes do delete
insert into pedido values(100,10,'12/10/2020',4,null);

select * from pedido; 

delete from pedido P
where not exists (select nome
     		    from vendedor v
     		    where v.codvend = P.codvend);

-- Qual o resultado?

Select p.data 
from pedido p
where p.numped in 
       (select i.numped 
        from itenspedido i
        where i.codprod in 
               (select pr.codprod 
                from produto pr
                where descricao like 'Chocolate'))
-- Igual a: 
-- como reescrever a consulta usando JOIN?


-- Create table as

CREATE TABLE pedidoVendedor AS 
select p.numped, v.nome
from pedido p join vendedor v on p.codvend = v.codvend
where data < '12/12/2020'; 

Select * from pedidoVendedor;

insert into pedidoVendedor values(201, 'Bruno Assis');

create table vendedor1 as 
     select * from vendedor where 1=2;
select * from vendedor1;

-- AntiJOINs

SELECT c.nome, c.codcli 
FROM cliente c
WHERE c.codcli NOT IN 
		(SELECT p.codcli 
		 FROM pedido p) 
ORDER BY c.nome;

Select c.nome, c.codcli
from cliente c left join pedido p on c.codcli = p.codcli
where p.codcli is null
Order by c.nome;

Select c.nome, c.codcli as cliente, p.codcli as ClienteemPedido, numped
from cliente c left join pedido p on c.codcli = p.codcli
Order by c.nome;

--VISÕES
--Criar uma view que contenha somente os produtos cuja unidade é o Quilo.
CREATE or replace VIEW Prquilo
	(codigo, descricao,unidade)
	AS Select codprod,descricao,unidade
		From produto
		Where unidade = 'KG';
Select * from Prquilo; --como se fosse uma tabela
Select descricao from prquilo;


CREATE OR REPLACE VIEW
	VendSal(codigo,nome,salario)
	AS Select codvend,nome,salariofixo
		From vendedor;
Select * from VendSal;
Select nome from vendSal order by nome;

insert into PRquilo
values(110,'Arroz','KG');
Select * from Prquilo; 

Update Prquilo
Set descricao = ‘Arroz Integral’
Where codigo = 110;
Select * from prquilo order by codigo;
Select * from produto order by codprod;
Delete from PRquilo
where descricao = 'Arroz Integral';

--não se pode inserir por meio dessa view
CREATE or replace VIEW Listapedidos AS
Select nome, descricao
From vendedor v join pedido p on v.codvend = p.codvend
Join itenspedido i on p.numped = i.numped
join produto pr on i.codprod = pr.codprod
order by nome;
Select * from listapedidos order by nome;

--não faz sentido
Create or replace view totalsalarios as
select sum(salariofixo) as TotaldeSalarios
from vendedor;
Select * from totalsalarios;
Update totalsalarios
Set total = total + 130;

--view with check option
CREATE OR REPLACE VIEW ProdutodescA AS
SELECT codprod, descricao
FROM produto
WHERE descricao like 'A%'
WITH CHECK OPTION;
Select * from produtodesca;
Insert into ProdutodescA values (40,'Manteiga');--dá erro
Insert into ProdutodescA values (41,'Azeite');

--with
Select * from cliente;
With ClientesAtivos AS
(SELECT codcli from Cliente WHERE endereco is not
null ),
ClientesInativos AS
(SELECT codcli from Cliente WHERE endereco is null )
SELECT * FROM ClientesAtivos
UNION
SELECT * FROM ClientesInativos

--apagar duplicatas em vendedor
DELETE FROM Vendedor
WHERE CodVEND IN (
    SELECT CodVEND
    FROM (
        SELECT CodVEND, Nome,
               ROW_NUMBER() OVER (PARTITION BY Nome ORDER BY CodVEND) AS row_num
        FROM Vendedor) 
		AS subquery
    WHERE row_num > 1);

select * from vendedor; --vendedores antes de dar insert
insert into vendedor values(default, 'Moacir Ribeiro', '27/07/1998', 2700, 'A');
insert into vendedor values(default, 'Julinha Rapis', '21/03/1990', 3600, 'B');
insert into vendedor values(default, 'Tavares Lima', '19/04/1988', 1900, 'C');
select * from vendedor; --mostra com os inserts
commit; --efetivou os inserts em disco

insert into vendedor values(default, 'Renato Borges', '20/01/1974', 1700, 'A'); 
insert into vendedor values(default, 'Catarina Limões', '10/06/2001', 2600, 'B');
insert into vendedor values(default, 'Rute Real', '12/09/1982', 2900, 'C');
insert into vendedor values(default, 'Clovis Paulo', '30/03/1995', 2700, 'A');
insert into vendedor values(default, 'Vinícius Júnior', '17/04/2003', 2800, 'B');
select * from vendedor; --salvos apenas em memória
rollback; --volta as alterações já que estas não foram salvas em disco
select * from vendedor; --mostra o resultado após o rollback, ou seja, sem as inserções anteriores


create role ago login
	password 'anandinha' superuser createdb createrole;
commit;

grant all on vendedor to ago;
commit;

select * from vendedor;
insert into vendedor values(default, 'Maria Azulis', '11/08/2002', 2800, 'A');
select * from vendedor; --inserido depois pois foi inserido na memória após
commit;
insert into vendedor values(26, 'Vinícius Júnior', '17/04/2003', 2800, 'B');
commit;--ao commitar vai liberar para o outro usuário



-- Aula 10 - Introdução ao pgplsql

CREATE OR REPLACE FUNCTION incrementa(i integer) 
   RETURNS integer AS $$
   BEGIN
     RETURN i + 1;
   END;
$$ LANGUAGE plpgsql;

select incrementa(2); 

-- Exemplo 1

select * from cliente order by codcli; 

DO $$ 
Declare nomeVar varchar(40);
Begin
   select nome into strict nomeVar
     from cliente
     where codcli = 2;
   raise notice 'Nome = %', nomeVar;
   Exception
        When no_data_found then
             raise notice 'Nenhum cliente com essa matrícula foi encontrado';
End$$;

-- Exemplo 2
-- drop table testa_bloco; 

create table testa_bloco (coluna1 integer primary key, coluna2 date);
select * from testa_bloco; 

Do $$
 DECLARE
   I INT := 0;
 BEGIN
     WHILE I <= 10 LOOP
        INSERT INTO TESTA_BLOCO(coluna1,coluna2)
          VALUES (I,current_date);
        I := I + 1;
     END LOOP;
END$$;

select * from testa_bloco; 

-- Exemplo 3
select * from produto; 

Alter table produto add status varchar(40);
Alter table produto add quantest integer; 

Update produto
Set quantest = 45 
Where codprod = 1; 

Select * from produto order by codprod; 

Do $$ 
Declare qtd_atual produto.quantest%type;
Begin
  select quantest into qtd_atual from produto
  where codprod = 1;
  if qtd_atual > 30 then
     update produto
      set status = 'Estoque dentro do esperado'
      where codprod = 1;
  else
    update produto
      set status = 'Estoque fora do limite minimo'
      where codprod = 1;
  end if;
End$$;

 select codprod, descricao, status, quantest 
 from produto
 order by codprod;

-- Exemplo 4

select * from vendedor; 

DO $$ 
  DECLARE
    v_vendedor  vendedor%ROWTYPE;
Begin
    SELECT codvend, nome INTO v_vendedor
    FROM vendedor
    WHERE codvend = 2;
    raise notice 'Vendedor selecionado = %',v_vendedor.nome;
End$$;