CREATE DATABASE bd_escola;

use bd_escola;

CREATE TABLE tb_aluno (
 cd_aluno INT AUTO_INCREMENT PRIMARY KEY,
 nm_aluno VARCHAR(45),
 cpf VARCHAR(11)
);

CREATE TABLE tb_aluno (
 cd_aluno INT AUTO_INCREMENT PRIMARY KEY,
 nm_aluno VARCHAR(45),
 cpf VARCHAR(11)

create user 'Danielle'@'localhost' identified by '1234';
grant all privileges on *.* to 'Danielle'@'localhost';

/*Usuario com permissão apenas na database bd_escola*/
create user 'Graciete'@'localhost' identified by '1234';
grant insert on tb_aluno.* to 'Graciete'@'localhost';

/*Usuario com permisssão apenas para executar o comando select database bd_escola*/
create user 'JoseCarlos'@'localhost' identified by '1234';
grant select, inserct, flush privileges on tb_aluno.* to 'JoseCarlos'@'localhost';
