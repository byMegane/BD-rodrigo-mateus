CREATE TABLE BibliotecaEscolar (
	id_livro int primary key auto_increment,
    titulo varchar(100) not null,
    autor varchar(100) not null,
    ano_publicacao int,
    quantidade_estoque int
);

select * from BibliotecaEscolar;
select * from bibliotecaescolar where ano_publicacao > 2021;
select * from bibliotecaescolar order by titulo asc;

insert into BibliotecaEscolar (titulo, autor, ano_publicacao, quantidade_estoque)
values
	 ('skibidi', 'miguel', 2020, 2),
     ('oi', 'matheus', 2021, 13),
     ('celide', 'rafaramos', 2025, 22);

update bibliotecaescolar set quantidade_estoque = 2 where id_livro = 1;
delete from bibliotecaescolar where id_livro = 3;

drop table bibliotecaescolar;