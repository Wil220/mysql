CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida;


CREATE TABLE tb_categorias (
    id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao_categoria VARCHAR(255)
);

CREATE TABLE tb_cursos (
    id_curso INT PRIMARY KEY AUTO_INCREMENT,
    nome_curso VARCHAR(100) NOT NULL,
    descricao_curso TEXT,
    valor DECIMAL(10, 2) NOT NULL,
    carga_horaria INT NOT NULL,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_categorias (nome_categoria, descricao_categoria) VALUES 
("Tecnologia", "Cursos voltados para áreas de TI e desenvolvimento"),
("Negócios", "Cursos de administração ,finanças e marketing"),
("Saúde", "Cursos sobre bem-estar, medicina e nutrição"),
("Artes", "Cursos de música, pintura e design"),
("Ciências", "Cursos de física, química e biologia");

INSERT INTO tb_cursos (nome_curso, descricao_curso, valor, carga_horaria, tb_categoria.nome_categoria ) 
VALUES 
("Java para Iniciantes", "Curso introdutório de programação em Java", 800.00, 40, 1),
("Marketing Digital", "Curso sobre estratégias de marketing online", 600.00, 30, 2),
("Introdução à Nutrição", "Curso básico de nutrição e dietética", 500.00, 20, 3),
("Pintura em Aquarela", "Curso de técnicas de pintura em aquarela", 450.00, 25, 4),
("Física Quântica", "Curso avançado sobre conceitos de física quântica", 1200.00, 50, 5),
("Desenvolvimento Web com PHP", "Curso completo sobre desenvolvimento web usando PHP", 900.00, 45, 1),
("Finanças Pessoais", "Curso sobre gestão de finanças pessoais", 350.00, 15, 2),
("Anatomia Humana", "Curso detalhado sobre a anatomia do corpo humano", 750.00, 35, 3);

SELECT * FROM tb_cursos WHERE valor > 500.00;
SELECT * FROM tb_cursos WHERE valor BETWEEN 600.00 AND 1000.00;
SELECT * FROM tb_cursos WHERE nome_curso LIKE '%J%';

SELECT nome_curso, descricao_curso, valor, carga_horaria, tb_categorias.nome_categoria, tb_categorias.descricao_categoria FROM 
tb_cursos INNER JOIN tb_categorias 
ON tb_cursos.id_categoria=tb_categorias.id_categoria;

SELECT nome_curso, descricao_curso, valor, carga_horaria, tb_categorias.nome_categoria, tb_categorias.descricao_categoria FROM 
tb_cursos INNER JOIN tb_categorias 
ON tb_cursos.id_categoria=tb_categorias.id_categoria WHERE descricao_categoria = "Cursos voltados para áreas de TI e desenvolvimento";