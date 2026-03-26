create table Jogadores (
	id_aluno INT primary key AUTO_INCREMENT,
	nick_name VARCHAR(50)
);

create table Skins (
	id_skin INT PRIMARY KEY AUTO_INCREMENT,
    nome_skin VARCHAR(50),
    id_dono INT
);

select * from jogadores;

INSERT INTO Jogadores VALUES (1, 'Bahia'), (2, 'PH'), (3, 'Matheus');
INSERT INTO Skins VALUES (10, 'ghost face espreitando', 1), (11, 'otavio careca', 2), (12, 'carteira de trabalho', 4);

-- Matheus foi beta e não tem skin, diferente do PH e Bahia

SELECT jogadores.nick_name, Skins.nome_skin
FROM Jogadores
INNER JOIN Skins ON Jogadores.id_aluno = Skins.id_dono;

SELECT jogadores.nick_name, Skins.nome_skin
FROM Jogadores
LEFT JOIN Skins ON Jogadores.id_aluno = Skins.id_dono;



