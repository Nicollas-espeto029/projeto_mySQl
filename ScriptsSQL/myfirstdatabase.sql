CREATE DATABASE Agentize;
USE Agentize;

CREATE TABLE Usuario (
    Usuario_id INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(50) NOT NULL,
    Email VARCHAR(50) NOT NULL,
    Senha VARCHAR(30) NOT NULL,
    DataNasc DATE,
    RG VARCHAR(15),
    Telefone VARCHAR(20)
);

CREATE TABLE Empresa (
    Empresa_id INT PRIMARY KEY AUTO_INCREMENT,
    Usuario_id INT,
    RazaoSocial VARCHAR(50) NOT NULL,
    Endereco VARCHAR(100),
    CNPJ VARCHAR(20),
    FOREIGN KEY (Usuario_id) REFERENCES Usuario(Usuario_id)
);

CREATE TABLE Clientes (
    Cliente_id INT PRIMARY KEY AUTO_INCREMENT,
    Usuario_id INT,
    Endereco VARCHAR(100),
    FOREIGN KEY (Usuario_id) REFERENCES Usuario(Usuario_id)
);

CREATE TABLE Tipo_Servicos (
    Tipo_servico_id INT PRIMARY KEY AUTO_INCREMENT,
    Nome_tipo VARCHAR(50)
);

CREATE TABLE Servicos (
    Servico_id INT PRIMARY KEY AUTO_INCREMENT,
    Tipo_servico_id INT,
    Nome_servico VARCHAR(50),
    FOREIGN KEY (Tipo_servico_id) REFERENCES Tipo_Servicos(Tipo_servico_id)
);

CREATE TABLE Agendamento (
    Agendamento_id INT PRIMARY KEY AUTO_INCREMENT,
    DataHorarioAgendamento DATETIME,
    Servico_id INT,
    Cliente_id INT,
    Tempo_agendado INT,
    FOREIGN KEY (Servico_id) REFERENCES Servicos(Servico_id),
    FOREIGN KEY (Cliente_id) REFERENCES Clientes(Cliente_id)
);

CREATE TABLE Ofertas_Servicos (
    Oferta_Servicos_id INT PRIMARY KEY AUTO_INCREMENT,
    Empresa_id INT,
    Nome_post VARCHAR(50),
    Hora_inicio TIME,
    Hora_fim TIME,
    FOREIGN KEY (Empresa_id) REFERENCES Empresa(Empresa_id)
);

CREATE TABLE Funcionarios (
    Funcionario_id INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(50),
    Email VARCHAR(50),
    Cargo VARCHAR(30),
    Empresa_id INT,
    FOREIGN KEY (Empresa_id) REFERENCES Empresa(Empresa_id)
);

INSERT INTO Usuario (Nome, Email, Senha) VALUES 
('Agenda Facil', 'Agenda123@gmail.com', 'agd1597N');

INSERT INTO Empresa (Usuario_id, RazaoSocial, Endereco, CNPJ) VALUES 
(1, 'Agenda Facil LTDA', 'Rua das Empresas, 123', '12.345.678/0001-90');

INSERT INTO Usuario (Nome, Email, Senha, DataNasc) VALUES 
('Ana Souza', 'ana.souza@gmail.com', 'senha123', '1996-03-22'),
('Carlos Lima', 'carlos.lima@gmail.com', 'senha123', '1989-08-14'),
('Mariana Costa', 'mariana.costa@gmail.com', 'senha123', '2002-01-10'),
('João Pedro', 'joao.pedro@gmail.com', 'senha123', '1994-06-18'),
('Larissa Martins', 'larissa.martins@gmail.com', 'senha123', '1998-11-05');

INSERT INTO Clientes (Usuario_id, Endereco) VALUES
(2, 'Rua A, São Paulo'),
(3, 'Rua B, Rio de Janeiro'),
(4, 'Rua C, Belo Horizonte'),
(5, 'Rua D, Curitiba'),
(6, 'Rua E, Fortaleza');

INSERT INTO Tipo_Servicos (Nome_tipo) VALUES 
('Barbearia');

INSERT INTO Servicos (Tipo_servico_id, Nome_servico) VALUES 
(1, 'Corte Masculino');

INSERT INTO Agendamento (DataHorarioAgendamento, Servico_id, Cliente_id, Tempo_agendado) VALUES 
('2025-09-21 10:00:00', 1, 2, 30);

INSERT INTO Funcionarios (Nome, Email, Cargo, Empresa_id) VALUES
('Lucas Almeida', 'lucas.almeida@empresa.com', 'Recepcionista', 1),
('Fernanda Ribeiro', 'fernanda.ribeiro@empresa.com', 'Gerente', 1),
('Bruno Carvalho', 'bruno.carvalho@empresa.com', 'Atendente', 1);

INSERT INTO Ofertas_Servicos (Empresa_id, Nome_post, Hora_inicio, Hora_fim) VALUES
(1, 'Promoção Corte de Cabelo', '09:00:00', '12:00:00');


DROP DATABASE agenda_facil;

SELECT * FROM Empresa;
SELECT * FROM Clientes;
SELECT * FROM Agendamento;
SELECT * FROM Servicos;
SELECT * FROM Funcionarios