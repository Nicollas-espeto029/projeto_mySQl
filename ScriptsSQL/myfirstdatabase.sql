CREATE DATABASE agenda_facil;
USE agenda_facil;

CREATE TABLE Empresa (
	Empresa_id INT PRIMARY KEY AUTO_INCREMENT,
	Nome VARCHAR (50) NOT NULL,
	Email VARCHAR (50) NOT NULL,
	Senha VARCHAR (30) NOT NULL
);

CREATE TABLE Clientes (
    Cliente_id INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Cidade VARCHAR(50),
    DataNasc DATE
);
CREATE TABLE Agendamento (
	Agendamento_id INT PRIMARY KEY AUTO_INCREMENT,
	Tipo_Servico VARCHAR(200) NOT NULL,
    Servico_id
    DataAgendamento DATETIME
);

CREATE TABLE servicos (
Servico_id INT PRIMARY KEY AUTO_INCREMENT,
Tipo_servico_id VARCHAR (50),
Nome_servico VARCHAR (30),
Email VARCHAR (30),
);

CREATE TABLE Funcionarios (
    Funcionario_id INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Cargo VARCHAR(50),
    EmpresaID INT,
    FOREIGN KEY (Empresa_id) REFERENCES Empresa(Empresa_id)
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

INSERT INTO Funcionarios (Nome, Email, Cargo, EmpresaID) VALUES
('Lucas Almeida', 'lucas.almeida@empresa.com', 'Recepcionista', 1),
('Fernanda Ribeiro', 'fernanda.ribeiro@empresa.com', 'Gerente', 1),
('Bruno Carvalho', 'bruno.carvalho@empresa.com', 'Atendente', 1);


DROP DATABASE agenda_facil