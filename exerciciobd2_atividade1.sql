create database exercicio;

use exercicio;


CREATE TABLE Diretores (
    cod_diretor INT NOT NULL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE Filmes (
    cod_filme INT NOT NULL PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    cod_diretor INT NOT NULL,
    FOREIGN KEY (cod_diretor) REFERENCES Diretores (cod_diretor)
);

select * from Diretores;

select * from Filmes;

insert into Diretores (cod_diretor, nome) values (3, 'Steven Spielberg');
insert into Diretores (cod_diretor, nome) values (4, 'Guillermo del Toro');

insert into Filmes (cod_filme, titulo, cod_diretor) values (3, 'Jurassic Park', 3);
insert into Filmes (cod_filme, titulo, cod_diretor) values (4, 'Pinocchio', 4);
insert into Filmes (cod_filme, titulo, cod_diretor) values (5, 'O Labirinto do Fauno', 4);
insert into Filmes (cod_filme, titulo, cod_diretor) values (6, 'Jogador Nº1', 3);


SELECT Diretores.nome, COUNT(Filmes.cod_filme) AS num_filmes_realizados
FROM Diretores
LEFT JOIN Filmes ON Diretores.cod_diretor = Filmes.cod_diretor
GROUP BY Diretores.nome;