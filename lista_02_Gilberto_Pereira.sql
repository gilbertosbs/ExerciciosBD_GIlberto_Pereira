--criação da tabela lista02 com as linhas cod,  descrição, quantidade, categoria

create table lista02 (
Cod int primary key,
Descricao varchar(100)not null,
Quantidade int not null,
Dt_compra date not null,
Categoria char(30) not null,
)
GO
--Inserção de dados na lista de acordo com o pedido
insert into lista02 (
 Cod,
Descricao,
Quantidade,
Dt_compra,
Categoria)
values (1, 'Arroz Parboilizado', 300, '2021-05-10', 'Grãos e Cereais')
values (2, 'Feijão Carioca', 400, '2021-05-10', 'Grãos e Cereais')
values (3, 'Farinha de trigo', 300, '2021-05-02', 'farináceos')
values (4, 'Açucar refinado', 250, '2021-05-03', 'Açucar e Adoçante')
values (5, 'Macarrão Italiano', 400, '2021-05-05', 'Massas')
values (6, 'Coca-Cola-doislitros', 350, '2021-05-05', 'Refrigerantes')
values (7, 'Iogurte Grego', 200, '2021-05-08', 'Latícineos')
values (8, 'Ervilha Fresca', 200, '2021-05-10', 'Enlatados')
values (9, 'Milho em conserva', 230, '2021-05-10', 'Enlatados')
values (10,'Chocolate lacta', 180, '2021-05-09', 'Doces e Sobremesas')
 
--Seleciona e exibe todos os dados da tabela com uso de aliases
select Cod as 'Código do funcionário',
       Descricao,
       Quantidade,
       Dt_compra,
       Categoria as 'Categoria'
from lista02
go

--seleciona e exibe apenas as 5 linhas iniciais
select top 5 *
from tabela02
go

--seleciona e exibe os produtos cujo valor seja maior que 300
select * from lista02
where produtos > 300
go

--seleciona da tabela lista02 somente os produtos da categoria grãos, cereais e enlatados
select * from lista02
where categoria = 'Grãos e Cereais' and categoria = 'enlatados'
go

--seleciona da tabela02 a linha descricao e exibe em ordem alfabetica
select * from tabela02
order by Descricao ASC
go

--seleciona a tabela02 e caso haja descrições iguais ele 
--exibe de acordo com a menor quantidade
select * from tabela02
where Descricao = Descricao
order by Descricao,
         Quantidade DESC
go

--seleciona a tabela02 e exibe os produtos da categoria 
--com letras iniciais em G ou E
select * from tabela02
where Categoria = 'G' or 'E'
go

