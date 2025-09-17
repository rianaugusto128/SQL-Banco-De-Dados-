-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 15/09/2025 às 20:53
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

DELIMITER $$
--
-- Procedimentos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `VerificaIdade` (IN `idade_input` INT)   BEGIN
    IF idade_input >= 18 THEN
        SELECT 'Maior de idade' AS resultado;
    ELSE
        SELECT 'Menor de idade' AS resultado;
    END IF;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `aluguel`
--

CREATE TABLE `aluguel` (
  `id` int(11) NOT NULL,
  `id_Carro` int(11) DEFAULT NULL,
  `id_Cliente` int(11) DEFAULT NULL,
  `valor` double DEFAULT NULL,
  `data_reserva` datetime DEFAULT NULL,
  `data_devolucao` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `aluguel`
--

INSERT INTO `aluguel` (`id`, `id_Carro`, `id_Cliente`, `valor`, `data_reserva`, `data_devolucao`) VALUES
(1, 1121, 2022, 350, '2025-09-01 00:00:00', '2025-09-05 00:00:00'),
(2, 1223, 1893, 420, '2025-09-03 00:00:00', '2025-09-06 00:00:00'),
(3, 1234, 2960, 500, '2025-09-05 00:00:00', '2025-09-10 00:00:00'),
(4, 5161, 6216, 310, '2025-09-07 00:00:00', '2025-09-09 00:00:00'),
(5, 5678, 6492, 600, '2025-09-10 00:00:00', '2025-09-15 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `carro`
--

CREATE TABLE `carro` (
  `id_Carro` int(11) NOT NULL,
  `modelo` varchar(50) DEFAULT NULL,
  `marca` varchar(50) DEFAULT NULL,
  `placa` varchar(7) DEFAULT NULL,
  `Status_carro` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `carro`
--

INSERT INTO `carro` (`id_Carro`, `modelo`, `marca`, `placa`, `Status_carro`) VALUES
(1121, 'Fiesta', 'Ford', 'JKL-112', 'Alugado'),
(1223, 'T-Cross', 'Volkswagen', 'YZA-122', 'Disponível'),
(1234, 'Civic', 'Honda', 'ABC-123', 'Disponível'),
(3141, 'Gol', 'Volkswagen', 'MNO-314', 'Disponível'),
(5161, 'HB20', 'Hyundai', 'PQR-516', 'Reservado'),
(5678, 'Corolla', 'Toyota', 'DEF-567', 'Em manutenção'),
(7181, 'Cruze', 'Chevrolet', 'STU-718', 'Em manutenção'),
(9101, 'Onix', 'Chevrolet', 'GHI-910', 'Disponível'),
(9202, 'Ranger', 'Ford', 'VWX-920', 'Alugado');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `id_Cliente` int(11) NOT NULL,
  `nome` varchar(150) DEFAULT NULL,
  `idade` int(11) DEFAULT NULL,
  `CPF` varchar(11) DEFAULT NULL,
  `telefone` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`id_Cliente`, `nome`, `idade`, `CPF`, `telefone`) VALUES
(1893, 'Fatima Serravalle Latin Barrada', 67, '868.584.330', '6825881314'),
(2022, 'Lauro Abreu da Paixão Teixeira', 56, '987.529.300', '5135509504'),
(2960, 'Pietro Gadelha Firmino Vogas', 44, '911.877.350', '4732111347'),
(5272, 'Adilson Mata Claudino Guimarães', 88, '578.404.500', '1335502276'),
(6216, 'Eric Rodrigues Guerini Vilela', 34, '194.768.860', '3331852146'),
(6492, 'Otoniel Paula Robadey de Arruda', 65, '565.819.090', '1536672662'),
(6706, 'Lilian Paulo Corrêa Guedes', 21, '277.924.270', '8728699433'),
(7065, 'Andrea Leonicio Paulino de Rodrigues', 23, '151.345.070', '1635874386'),
(7442, 'Lucca Martins Chaves Marques', 99, '175.928.100', '6121643849'),
(7684, 'Lidia Rosa Claudino Pacheco', 100, '732.993.130', '4932356393');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `aluguel`
--
ALTER TABLE `aluguel`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `carro`
--
ALTER TABLE `carro`
  ADD PRIMARY KEY (`id_Carro`);

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_Cliente`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `aluguel`
--
ALTER TABLE `aluguel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `carro`
--
ALTER TABLE `carro`
  MODIFY `id_Carro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9203;

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_Cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7685;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
