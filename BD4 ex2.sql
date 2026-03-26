CREATE TABLE Jogadores (
	id_jogador INT PRIMARY KEY,
    nome_usuario VARCHAR(50)
);

CREATE TABLE Jogos (
	id_jogo INT PRIMARY KEY,
    titulo varchar(50),
    preco decimal(10,2)
);

CREATE TABLE Compras (
	id_compra int primary key,
    id_jogador_fk int,
    id_jogo_fk int
);

select * from Jogadores;
select * from Jogos;
select * from Compras;

insert into Jogadores values (1, 'PH bebado'), (2, 'Rafael embriagado'), (3, 'Matheus de ressaca');

insert into Jogos values (40, 'quarto do otavio', 0.02), (10, 'Fortnite', 1200.12), (20, 'Brawl stars', 20.00), (30, 'fuja do matheus minami pacheco 2', 100.00);

insert into Compras values (101, 1, 10), (102, 2, 20), (103, 2, 30);

SELECT Jogadores.nome_usuario, Jogos.titulo
FROM Compras
INNER JOIN Jogadores ON Compras.id_jogador_fk = Jogadores.id_jogador
INNER JOIN Jogos ON Compras.id_jogo_fk = Jogos.id_jogo;


SELECT Jogadores.nome_usuario, Jogos.titulo
FROM Jogadores
LEFT JOIN Compras ON Compras.id_jogador_fk = Jogadores.id_jogador
LEFT JOIN Jogos ON Compras.id_jogo_fk = Jogos.id_jogo;

SELECT Jogadores.nome_usuario, Jogos.titulo
FROM Jogos
LEFT JOIN Compras ON Compras.id_jogo_fk = Jogos.id_jogo
LEFT JOIN Jogadores ON Compras.id_jogador_fk = Jogadores.id_jogador;
