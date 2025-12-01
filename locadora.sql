-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01/12/2025 às 12:06
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
-- Banco de dados: `locadora`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `cpf`, `telefone`, `email`) VALUES
(1, 'João Silva', '123.456.789-00', '11987654321', 'joao@email.com'),
(2, 'Maria Oliveira', '234.567.890-11', '11987654322', 'maria@email.com'),
(3, 'Pedro Costa', '345.678.901-22', '11987654323', 'pedro@email.com'),
(4, 'Ana Souza', '456.789.012-33', '11987654324', 'ana@email.com'),
(5, 'Carlos Pereira', '567.890.123-44', '11987654325', 'carlos@email.com'),
(6, 'Juliana Lima', '678.901.234-55', '11987654326', 'juliana@email.com'),
(7, 'Roberto Martins', '789.012.345-66', '11987654327', 'roberto@email.com'),
(8, 'Fernanda Almeida', '890.123.456-77', '11987654328', 'fernanda@email.com'),
(9, 'Thiago Santos', '901.234.567-88', '11987654329', 'thiago@email.com'),
(10, 'Larissa Costa', '123.456.789-99', '11987654330', 'larissa@email.com'),
(11, 'Marcos Rodrigues', '234.567.890-00', '11987654331', 'marcos@email.com'),
(12, 'Silvia Oliveira', '345.678.901-11', '11987654332', 'silvia@email.com'),
(13, 'Daniel Costa', '456.789.012-22', '11987654333', 'daniel@email.com'),
(14, 'Gabriela Silva', '567.890.123-33', '11987654334', 'gabriela@email.com'),
(15, 'Fábio Lima', '678.901.234-44', '11987654335', 'fabio@email.com'),
(16, 'Camila Pereira', '789.012.345-55', '11987654336', 'camila@email.com'),
(17, 'Eduardo Santos', '890.123.456-66', '11987654337', 'eduardo@email.com'),
(18, 'Mariana Oliveira', '901.234.567-77', '11987654338', 'mariana@email.com'),
(19, 'Lucas Almeida', '123.456.789-11', '11987654339', 'lucas@email.com'),
(20, 'Tatiane Martins', '234.567.890-22', '11987654340', 'tatiane@email.com');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
