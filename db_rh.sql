CREATE DATABASE rh_empresas;

USE rh_empresas;

CREATE TABLE colaboradores(
id BIGINT AUTO_INCREMENT,
nomecompleto VARCHAR(255) NOT NULL,
datadenascimento date, 
cargo VARCHAR(255) NOT NULL,
salario DECIMAL NOT NULL,
avaliacaodedesempenho VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);
 
 INSERT INTO colaboradores(nomecompleto,datadenascimento, cargo, salario,avaliacaodedesempenho)
 VALUES ("josé antonio", "1969-01-30", "analista TI", 2.000, "excelente");
 INSERT INTO colaboradores(nomecompleto,datadenascimento, cargo, salario,avaliacaodedesempenho)
 VALUES ("felipe lima", "1999-05-23", "getente de projeto", 1.000, "muito nom");
 INSERT INTO colaboradores(nomecompleto,datadenascimento, cargo, salario,avaliacaodedesempenho)
 VALUES ("antonio araujo", "1971-06-20", "desenvolvedor", 3.000, "bom");
 INSERT INTO colaboradores(nomecompleto,datadenascimento, cargo, salario,avaliacaodedesempenho)
 VALUES ("maria hoaquina", "1995-06-24", "suporte tecnico", 1.200, "muito bom");
 INSERT INTO colaboradores(nomecompleto,datadenascimento, cargo, salario,avaliacaodedesempenho)
 VALUES ("larissa souto", "2000-01-01", "analista TI", 2.000, "otimo");
 
SELECT* FROM colaboradores;
ALTER TABLE colaboradores MODIFY salario DECIMAL(6,3);
SELECT * FROM colaboradores WHERE salario > 2.000;
SELECT * FROM colaboradores WHERE salario <= 2.000;
UPDATE colaboradores SET salario = 5.000 WHERE Id = 2;
