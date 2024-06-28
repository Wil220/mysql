CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
    id_classe INT PRIMARY KEY AUTO_INCREMENT,
    nome_classe VARCHAR(50) NOT NULL,
    descricao VARCHAR(255)
);

INSERT INTO tb_classes (nome_classe, descricao) 
VALUES 
("Herói", "Personagem que defende o bem e luta contra o mal"),
("Vilão", "Personagem que pratica o mal e enfrenta os heróis"),
("Anti-herói", "Personagem que usa métodos questionáveis para alcançar seus objetivos"),
("Mutante", "Personagem com habilidades sobre-humanas devido a mutações genéticas"),
("Deus", "Personagem com poderes divinos e imortais");

CREATE TABLE tb_personagens (
    id_personagem INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    poder_ataque INT NOT NULL,
    poder_defesa INT NOT NULL,
    nivel INT NOT NULL,
    id_classe INT,
    FOREIGN KEY (id_classe) REFERENCES tb_classes(id_classe)
);

INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, nivel, id_classe) 
VALUES 
("Homem de Ferro", 3200, 2800, 40, 1),
("Thanos", 5000, 4000, 50, 2),
("Wolverine", 2800, 3000, 35, 4),
("Thor", 4500, 3700, 45, 5),
("Deadpool", 3000, 2500, 38, 3),
("Magneto", 3200, 2600, 42, 4),
("Loki", 3500, 3300, 43, 5),
("Capitão América", 2500, 2900, 39, 1);


SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%C%";

SELECT  nome, poder_ataque, poder_defesa, nivel, tb_classes.nome_classe, tb_classes.descricao FROM
tb_personagens INNER JOIN tb_classes
ON tb_personagens.id_classe=tb_classes.id_classe;
 

