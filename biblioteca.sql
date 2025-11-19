-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 19/11/2025 às 15:16
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `biblioteca`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `acervos`
--

CREATE TABLE `acervos` (
  `Codigo` int(11) NOT NULL,
  `Titulo1` varchar(255) DEFAULT NULL,
  `Titulo2` varchar(255) DEFAULT NULL,
  `Autor` varchar(255) DEFAULT NULL,
  `OutrosAutores` varchar(255) DEFAULT NULL,
  `Edicao` varchar(100) DEFAULT NULL,
  `TipoAcervo` int(11) DEFAULT NULL,
  `CodEditora` int(11) DEFAULT NULL,
  `AnoEdicao` int(11) DEFAULT NULL,
  `Origem` int(11) DEFAULT NULL,
  `Categoria` int(11) DEFAULT NULL,
  `NumTombo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `acervos`
--

INSERT INTO `acervos` (`Codigo`, `Titulo1`, `Titulo2`, `Autor`, `OutrosAutores`, `Edicao`, `TipoAcervo`, `CodEditora`, `AnoEdicao`, `Origem`, `Categoria`, `NumTombo`) VALUES
(1, 'O Mistério da Serra', NULL, 'Lucas Andrade', NULL, '2ª', 1, 1, 2018, 1, 1, 1001),
(2, 'Programação Moderna', 'Guia Completo', 'Carla Torres', 'Eduardo Lima', '1ª', 1, 2, 2020, 2, 2, 1002),
(3, 'História Antiga', NULL, 'Ana Moreira', NULL, '3ª', 1, 3, 2015, 1, 3, 1003),
(4, 'As Estrelas Chamam', NULL, 'Rafael Duarte', NULL, '1ª', 2, 4, 2021, 1, 4, 1004),
(5, 'Animais da Floresta', NULL, 'Beatriz Monteiro', NULL, '5ª', 3, 5, 2010, 2, 5, 1005);

-- --------------------------------------------------------

--
-- Estrutura para tabela `acervos_autor`
--

CREATE TABLE `acervos_autor` (
  `CodAcervo` int(11) NOT NULL,
  `CodAutor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `acervos_autor`
--

INSERT INTO `acervos_autor` (`CodAcervo`, `CodAutor`) VALUES
(1, 1),
(2, 1),
(2, 2),
(3, 3),
(4, 4);

-- --------------------------------------------------------

--
-- Estrutura para tabela `autor`
--

CREATE TABLE `autor` (
  `Codigo` int(11) NOT NULL,
  `Nome` varchar(255) DEFAULT NULL,
  `NumAutor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `autor`
--

INSERT INTO `autor` (`Codigo`, `Nome`, `NumAutor`) VALUES
(1, 'Lucas Andrade', 100),
(2, 'Carla Torres', 101),
(3, 'Ana Moreira', 102),
(4, 'Rafael Duarte', 103),
(5, 'Beatriz Monteiro', 104);

-- --------------------------------------------------------

--
-- Estrutura para tabela `categoria`
--

CREATE TABLE `categoria` (
  `Codigo` int(11) NOT NULL,
  `Descricao` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `categoria`
--

INSERT INTO `categoria` (`Codigo`, `Descricao`) VALUES
(1, 'Romance'),
(2, 'Tecnologia'),
(3, 'História'),
(4, 'Ficção Científica'),
(5, 'Infantil');

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `Codigo` int(11) NOT NULL,
  `Nome` varchar(255) DEFAULT NULL,
  `Endereco` varchar(255) DEFAULT NULL,
  `Cidade` varchar(100) DEFAULT NULL,
  `Telefone` varchar(20) DEFAULT NULL,
  `Observacao` varchar(255) DEFAULT NULL,
  `Situacao` varchar(50) DEFAULT NULL,
  `CodCliente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `clientes`
--

INSERT INTO `clientes` (`Codigo`, `Nome`, `Endereco`, `Cidade`, `Telefone`, `Observacao`, `Situacao`, `CodCliente`) VALUES
(1, 'João Pereira', 'Rua das Acácias, 120', 'São Paulo', '(11) 98765-1120', 'Cliente preferencial', 'Ativo', 101),
(2, 'Mariana Lopes', 'Av. Central, 890', 'Rio de Janeiro', '(21) 99342-8871', 'Pagamento sempre em dia', 'Ativo', 102),
(3, 'Rafael Souza', 'Rua Primavera, 55', 'Belo Horizonte', '(31) 99880-4401', 'Revisão de cadastro', 'Pendente', 103),
(4, 'Ana Beatriz', 'Rua Alfazema, 330', 'Curitiba', '(41) 99611-7740', 'Aguardando retorno', 'Inativo', 104),
(5, 'Carlos Mendes', 'Av. Paulista, 1500', 'São Paulo', '(11) 98220-5599', 'Cliente VIP', 'Ativo', 105);

-- --------------------------------------------------------

--
-- Estrutura para tabela `editora`
--

CREATE TABLE `editora` (
  `Codigo` int(11) NOT NULL,
  `Descricao` varchar(255) DEFAULT NULL,
  `Telefone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `editora`
--

INSERT INTO `editora` (`Codigo`, `Descricao`, `Telefone`) VALUES
(1, 'Editora Horizonte', '(11) 99844-2210'),
(2, 'Livros & Cia', '(21) 98733-1104'),
(3, 'Nova Era Publicações', '(31) 99215-7098'),
(4, 'Páginas Soltas Editora', '(41) 99502-3341'),
(5, 'Mundo Literário Editora', '(51) 98177-2056');

-- --------------------------------------------------------

--
-- Estrutura para tabela `emprestimo`
--

CREATE TABLE `emprestimo` (
  `Codigo` int(11) NOT NULL,
  `DataEmp` date DEFAULT NULL,
  `DataEntrega` date DEFAULT NULL,
  `CodTombo` int(11) DEFAULT NULL,
  `CodCliente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `emprestimo`
--

INSERT INTO `emprestimo` (`Codigo`, `DataEmp`, `DataEntrega`, `CodTombo`, `CodCliente`) VALUES
(1, '2025-01-10', '2025-01-20', 1001, 1),
(2, '2025-01-15', '2025-01-25', 1002, 2),
(3, '2025-02-01', '2025-02-10', 1003, 3),
(4, '2025-02-05', '2025-02-18', 1004, 4),
(5, '2025-02-08', '2025-02-21', 1005, 5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `parametrosdabiblioteca`
--

CREATE TABLE `parametrosdabiblioteca` (
  `Nome` varchar(255) DEFAULT NULL,
  `Endereco` varchar(255) DEFAULT NULL,
  `Cidade` varchar(100) DEFAULT NULL,
  `Estado` varchar(50) DEFAULT NULL,
  `Pais` varchar(20) DEFAULT NULL,
  `CEP` varchar(20) DEFAULT NULL,
  `Telefone` varchar(20) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `ValorMulta` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `parametrosdabiblioteca`
--

INSERT INTO `parametrosdabiblioteca` (`Nome`, `Endereco`, `Cidade`, `Estado`, `Pais`, `CEP`, `Telefone`, `Email`, `ValorMulta`) VALUES
('Carlos Menezes', 'Rua das Palmeiras, 145', 'Curitiba', 'PR', 'Brasil', '80530-210', '(41) 99812-4402', 'carlos.menezes@gmail.com', 120.5),
('Mariana Azevedo', 'Av. Brasil, 987', 'Porto Alegre', 'RS', 'Brasil', '90110-320', '(51) 99230-7781', 'mariana.azevedo@hotmail.com', 85),
('Thiago Rodrigues', 'Rua Bela Vista, 72', 'São Paulo', 'SP', 'Brasil', '04045-020', '(11) 98577-6301', 'thiago.rod@gmail.com', 200),
('Ana Clara Santos', 'Rua Santo André, 399', 'Recife', 'PE', 'Brasil', '52050-010', '(81) 98120-1134', 'anaclara.santos@outlook.com', 45.9),
('Eduardo Lima', 'Rua do Cedro, 221', 'Belo Horizonte', 'MG', 'Brasil', '30411-180', '(31) 99455-8820', 'edu.lima@gmail.com', 150);

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `Codigo` int(11) NOT NULL,
  `Nome` varchar(255) DEFAULT NULL,
  `TipoUsuario` varchar(50) DEFAULT NULL,
  `Telefone` varchar(20) DEFAULT NULL,
  `Login` varchar(50) DEFAULT NULL,
  `Senha` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`Codigo`, `Nome`, `TipoUsuario`, `Telefone`, `Login`, `Senha`) VALUES
(1, 'Admin Geral', 'Administrador', '(11) 90000-1111', 'admin', '1234'),
(2, 'Julia Ramos', 'Bibliotecária', '(41) 94512-7777', 'julia.r', 'senha1'),
(3, 'Pedro Henrique', 'Atendente', '(21) 95888-5522', 'pedro.h', 'senha2'),
(4, 'Marcos Teles', 'Bibliotecário', '(31) 97733-8844', 'marcos.t', 'senha3'),
(5, 'Larissa Lima', 'Assistente', '(51) 91234-5566', 'larissa.l', 'senha4');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `acervos`
--
ALTER TABLE `acervos`
  ADD PRIMARY KEY (`Codigo`),
  ADD KEY `Categoria` (`Categoria`),
  ADD KEY `CodEditora` (`CodEditora`);

--
-- Índices de tabela `acervos_autor`
--
ALTER TABLE `acervos_autor`
  ADD PRIMARY KEY (`CodAcervo`,`CodAutor`),
  ADD KEY `CodAutor` (`CodAutor`);

--
-- Índices de tabela `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`Codigo`);

--
-- Índices de tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`Codigo`);

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`Codigo`);

--
-- Índices de tabela `editora`
--
ALTER TABLE `editora`
  ADD PRIMARY KEY (`Codigo`);

--
-- Índices de tabela `emprestimo`
--
ALTER TABLE `emprestimo`
  ADD PRIMARY KEY (`Codigo`),
  ADD KEY `CodCliente` (`CodCliente`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Codigo`);

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `acervos`
--
ALTER TABLE `acervos`
  ADD CONSTRAINT `acervos_ibfk_1` FOREIGN KEY (`Categoria`) REFERENCES `categoria` (`Codigo`),
  ADD CONSTRAINT `acervos_ibfk_2` FOREIGN KEY (`CodEditora`) REFERENCES `editora` (`Codigo`);

--
-- Restrições para tabelas `acervos_autor`
--
ALTER TABLE `acervos_autor`
  ADD CONSTRAINT `acervos_autor_ibfk_1` FOREIGN KEY (`CodAcervo`) REFERENCES `acervos` (`Codigo`),
  ADD CONSTRAINT `acervos_autor_ibfk_2` FOREIGN KEY (`CodAutor`) REFERENCES `autor` (`Codigo`);

--
-- Restrições para tabelas `emprestimo`
--
ALTER TABLE `emprestimo`
  ADD CONSTRAINT `emprestimo_ibfk_1` FOREIGN KEY (`CodCliente`) REFERENCES `clientes` (`Codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
