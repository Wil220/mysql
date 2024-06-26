CREATE DATABASE  db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nomedoproduto VARCHAR(255) NOT NULL,
categoria VARCHAR(255) NOT NULL,
preco DECIMAL NOT NULL,
quantidadeemestoque INT,
datadeadicao VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);
 
 INSERT INTO tb_produtos(nomedoproduto,categoria,preco, quantidadeemestoque,datadeadicao)
 VALUES  ("camiseta", "roupa", 35.00, 50,"2023-08-08"),
         ("calsa", "roupa", 60.00, 500, "2023-07-25"),
         ("notebook", "eletronico", 5000.00, 120, "2023-05-26"),
         ("copoamericano", "casa e cozinha", 3.00, 500, "2023-04-18"); 
         INSERT INTO tb_produtos(nomedoproduto,categoria,preco, quantidadeemestoque,datadeadicao)
         VALUES ("prato", "casa e cozinha", 10.00, 150, "2023-08-24"),
         ("tv 32'", "eletronico", 1500.00, 50, "2023-11-10"),
         ("fone", "acessorio",35.00, 200, "2023-10-16");
         

SELECT * FROM tb_produtos;
SELECT * FROM tb_produtos WHERE preco > 500;
SELECT * FROM tb_produtos WHERE preco <= 500;
UPDATE tb_produtos SET preco = 55.00 WHERE Id = 2;