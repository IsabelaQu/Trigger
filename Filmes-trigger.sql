CREATE DATABASE Locadora;
USE Locadora;

-- Criação da tabela "Filmes"
CREATE TABLE Filmes (
id_filmes	INT primary key	auto_increment,
titulo		VARCHAR(60),
minutos		INT
);	

-- Verificando o valor de minutos, caso seja negativo, alterar para null
DELIMITER $

create trigger verifica_minutos before insert on Filmes
	for each row
    begin
		if new.minutos < 0 then
        
        -- lança um erro
        signal sqlstate '45000'
        set message_text = "Valor invalido para minutos",
        mysql_errno = 2022;
        
			set new.minutos = null;
		end if;
	end$

DELIMITER ;    
    
-- Inserção de dados de exemplo
INSERT INTO Filmes (titulo, minutos) VALUES	('The terrible trigger', 	120);
INSERT INTO Filmes (titulo, minutos) VALUES ('O alto da compadecida', 	135);
INSERT INTO Filmes (titulo, minutos) VALUES ('Faroeste caboclo', 		240);
INSERT INTO Filmes (titulo, minutos) VALUES ('The matrix', 				90);
INSERT INTO Filmes (titulo, minutos) VALUES ('Blade runner', 			-88);
INSERT INTO Filmes (titulo, minutos) VALUES ('O labirinto do fauno', 	110);
INSERT INTO Filmes (titulo, minutos) VALUES ('Metropole', 				0);
INSERT INTO Filmes (titulo, minutos) VALUES ('A lista', 				120);
        
        
CREATE TABLE Log_deletions (
	id_delete		INT primary key	auto_increment,
    titulo			VARCHAR(60),
    quando			DATETIME,
    quem			VARCHAR(40)
);

DELIMITER $

CREATE TRIGGER Log_delete after delete on Filmes
	for each row
    begin
		insert into Log_deletions values (null, old.titulo, sysdate(), user());
	end$

DELIMITER ;

delete from Filmes where id_filmes = 2;
delete from Filmes where id_filmes = 4;

select * from Log_deletions;