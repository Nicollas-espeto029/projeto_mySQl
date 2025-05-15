CREATE DATABASE agenda_facil;
USE agenda_facil;

CREATE TABLE Empresa (
	EmpresaID INT PRIMARY KEY AUTO_INCREMENT,
	Nome VARCHAR (50) NOT NULL,
	Email VARCHAR (50) NOT NULL,
	Senha VARCHAR (30) NOT NULL
);

CREATE TABLE Clientes (
    ClienteID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Cidade VARCHAR(50),
    Idade INT
);
CREATE TABLE Agendamento (
	AgendamentoId INT PRIMARY KEY AUTO_INCREMENT,
	Tipo_Servico VARCHAR(200) NOT NULL,
    Ano_Mes_Dia DATETIME
);

CREATE TABLE servicos (
ServicoID INT PRIMARY KEY AUTO_INCREMENT,
Tipo_servico VARCHAR (50),
Nome_usuario VARCHAR (30),
Email VARCHAR (30),
Senha VARCHAR (40)
);


INSERT INTO Empresa (Nome, Email, senha) VALUES
('Agenda_facil', 'Agenda123@gmail.com', 'agd1597N');

INSERT INTO Clientes (Nome, Email, Cidade, Idade) VALUES
('Ana Souza', 'ana.souza@gmail.com', 'São Paulo', 28),
('Carlos Lima', 'carlos.lima@gmail.com', 'Rio de Janeiro', 35),
('Mariana Costa', 'mariana.costa@gmail.com', 'Belo Horizonte', 22),
('João Pedro', 'joao.pedro@gmail.com', 'Curitiba', 30),
('Larissa Martins', 'larissa.martins@gmail.com', 'Fortaleza', 26);


INSERT INTO Agendamento (Tipo_Servico, Ano_Mes_Dia) VALUES
('Barbearia', '2025-09-21');


INSERT INTO servicos (Tipo_servico, Nome_usuario, Email, Senha) VALUES
('Barbearia', 'Lucas Silva', 'lucas.silva@gmail.com', 'senhaSegura123');

DROP DATABASE agenda_facil

