CREATE DATABASE Solicitações;
USE Solicitações;

-- Criação da tabela "Pedidos"
CREATE TABLE Pedidos (
	id_pedido		int PRIMARY KEY auto_increment,
    data_pedido		datetime,
    nome_cliente	varchar(100)
    );
    
-- Inserção de dados de exemplo
INSERT INTO Pedidos (data_pedido, nome_cliente) VALUES 
(NOW(), 'Cliente 1'),
(NOW(), 'Cliente 2'),
(NOW(), 'Cliente 3');

-- Criação da Trigger
DELIMITER $
CREATE TRIGGER Registro_data_criacao_pedido
BEFORE INSERT ON Pedidos
FOR EACH ROW
BEGIN
	SET NEW.data_pedido = NOW();
END;
$
DELIMITER ;

-- Inserção de novo registro na tabela "Pedidos" sem fornecer a data
INSERT INTO Pedidos (nome_cliente) VALUES ('Novo Cliente');

-- Consulta para verificar os resultados 
SELECT * FROM Pedidos;

 