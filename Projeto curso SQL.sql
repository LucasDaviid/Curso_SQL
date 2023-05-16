USE carros;

-- Criando a tabela de marcas
CREATE TABLE marcas (
	marcas_id INT NOT NULL AUTO_INCREMENT,
	nome_marca VARCHAR(50) NOT NULL,
    PRIMARY KEY (marcas_id)
);

-- Criando a tabela de inventario
CREATE TABLE inventario(
	inventario_id INT NOT NULL AUTO_INCREMENT,
    modelo VARCHAR(150) NOT NULL,
    transmissao VARCHAR(20) NOT NULL,
    motor VARCHAR(5) NOT NULL,
    combustivel VARCHAR(30) NOT NULL,
    marcas_id INT NOT NULL,
    PRIMARY KEY (inventario_id),
    FOREIGN KEY (marcas_id) REFERENCES marcas(marcas_id)
);

-- Criando a tabela de clientes
CREATE TABLE clientes (
	clientes_id INT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(100) NOT NULL,
    sobrenome VARCHAR(100) NOT NULL,
    endereço VARCHAR(200) NOT NULL,
    PRIMARY KEY (clientes_id)
);

-- Inserindo dados na tabela de clientes
INSERT INTO clientes (nome, sobrenome, endereço)
VALUES 
	('Lucas', 'David', 'Rua Águas da Prata'),
    ('Guilherme', 'Sei', 'Rua Armando Cardoso de Melo'),
    ('Beatriz', 'Sei', 'Rua Armando Cardoso de Melo'),
    ('Tereza', 'Vinhedo', 'Rua da Balsa'),
    ('Shirley', 'Clara', 'Rua Afonso Pena');

-- Inserindo dados na tabela de marcas
INSERT INTO marcas (nome_marca)
VALUES 
	('Volkswagen'), ('Fiat'), ('Chevrolet'), ('Hyundai'), ('Peugeot'), ('Renault');

-- Inserindo dados na tabela de inventario
INSERT INTO inventario (modelo, transmissao, motor, combustivel, marcas_id)
VALUES 
	('Peugeot 208', 'Manual', '1.0', 'Etanol', '5'),
    ('Peugeot 208', 'Automática', '1.6', 'Gasolina', '5'),
    ('Volkswagen Voyage', 'Manual', '1.0', 'Gasolina', '1'),
    ('Fiat Cronos', 'Manual', '1.3', 'Etanol', '2'),
    ('Renault Kwid', 'Manual', '1.0', 'Gasolina/Etanol', '6'),
	('Fiat Argo', 'Automática', '1.3', 'Etanol', '2'),
	('Volkswagen Gol', 'Manual', '1.0', 'Gasolina', '1'),
	('Fiat Mobi', 'Manual', '1.0', 'Gasolina', '2'),
	('Chevrolet Onix', 'Manual', '1.0', 'Gasolina', '3'),
    ('Hyundai HB20', 'Automática', '1.0', 'Gasolina/Etanol', '3');