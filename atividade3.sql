-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27/10/2025 às 12:43
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
-- Banco de dados: `atividade3`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cientistas`
--

CREATE TABLE `cientistas` (
  `id_ciencitistas` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `area` varchar(50) NOT NULL,
  `premio_nobel` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cientistas`
--

INSERT INTO `cientistas` (`id_ciencitistas`, `nome`, `area`, `premio_nobel`) VALUES
(1, 'Isaac Newton', 'Física', 0),
(2, 'Nikola Tesla', 'Engenheiro', 0),
(3, 'Stephen Hawking', 'Física', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nome`, `email`, `cidade`) VALUES
(1, 'Fernanda Lima', 'fernanda@email.com', 'São Paulo'),
(2, 'Roberto Gomes', 'roberto@email.com', 'Rio de Janeiro'),
(3, 'Juliana Mendes', 'juliana@email.com', 'Belo Horizante');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cursos_online`
--

CREATE TABLE `cursos_online` (
  `id_cursos` int(11) NOT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `plataforma` varchar(50) DEFAULT NULL,
  `horas_duracao` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cursos_online`
--

INSERT INTO `cursos_online` (`id_cursos`, `titulo`, `plataforma`, `horas_duracao`) VALUES
(1, 'SQL do Zero', 'Udemy', 12.5),
(2, 'Python Avançado', 'Coursera', 20),
(3, 'Design UX', 'Alura', 15.5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `filmes`
--

CREATE TABLE `filmes` (
  `id_filmes` int(11) NOT NULL,
  `titulo` varchar(150) DEFAULT NULL,
  `diretor` varchar(100) DEFAULT NULL,
  `ano_lancamento` int(11) DEFAULT NULL,
  `genero` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `filmes`
--

INSERT INTO `filmes` (`id_filmes`, `titulo`, `diretor`, `ano_lancamento`, `genero`) VALUES
(1, 'O poderoso Chefão', 'Francis Ford Coppola', 1972, 'Drama'),
(2, 'Pulp Fiction ', 'Quentin Tarantino', 1994, 'Crime'),
(3, 'Interestelar', 'Cristopher Nolan', 2014, 'Ficção Cientifica');

-- --------------------------------------------------------

--
-- Estrutura para tabela `hospitais`
--

CREATE TABLE `hospitais` (
  `id_hospital` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `leitos` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `hospitais`
--

INSERT INTO `hospitais` (`id_hospital`, `nome`, `cidade`, `leitos`) VALUES
(1, 'Hospital São Lucas', 'Porto Alegre', 300),
(2, 'Hospital Albert Einstein', 'São Paulo', 600),
(3, 'Hospital das Clínicas', 'São Paulo', 800);

-- --------------------------------------------------------

--
-- Estrutura para tabela `idiomas`
--

CREATE TABLE `idiomas` (
  `id_idiomas` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `falantes_milhoes` int(11) DEFAULT NULL,
  `oficial_br` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `idiomas`
--

INSERT INTO `idiomas` (`id_idiomas`, `nome`, `falantes_milhoes`, `oficial_br`) VALUES
(1, 'Português', 260, 1),
(2, 'Inglês', 670, 0),
(3, 'Espanhol', 350, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `jogos`
--

CREATE TABLE `jogos` (
  `id_jogos` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `genero` varchar(50) DEFAULT NULL,
  `ano_lancamento` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `jogos`
--

INSERT INTO `jogos` (`id_jogos`, `nome`, `genero`, `ano_lancamento`) VALUES
(1, 'The Witcher 3', 'RPG', 2015),
(2, 'EAFC 26', 'Esporte', 2025),
(3, 'Minecraft', 'SandBox', 2009);

-- --------------------------------------------------------

--
-- Estrutura para tabela `livros`
--

CREATE TABLE `livros` (
  `id_livros` int(11) NOT NULL,
  `titulo` varchar(150) DEFAULT NULL,
  `autor` varchar(100) DEFAULT NULL,
  `ano_publicacao` int(11) DEFAULT NULL,
  `genero` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `livros`
--

INSERT INTO `livros` (`id_livros`, `titulo`, `autor`, `ano_publicacao`, `genero`) VALUES
(1, 'Dom Casmurro', 'Machado de Assis', 1899, NULL),
(2, '1984', 'George Orwell', 1949, NULL),
(3, 'O Pequeno Príncipe', 'Antoine de Saint-Exupéry', 1943, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `museus`
--

CREATE TABLE `museus` (
  `id_museus` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `visitantes_anuais` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `museus`
--

INSERT INTO `museus` (`id_museus`, `nome`, `cidade`, `visitantes_anuais`) VALUES
(1, 'Museu do Louvre', 'Paris', 9600000),
(2, 'Museu do Vaticano', 'Vaticano', 6500000),
(3, 'MASP', 'São Paulo', 1200000);

-- --------------------------------------------------------

--
-- Estrutura para tabela `musicas`
--

CREATE TABLE `musicas` (
  `id_musicas` int(11) NOT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `artista` varchar(100) DEFAULT NULL,
  `duracao_segundos` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `musicas`
--

INSERT INTO `musicas` (`id_musicas`, `titulo`, `artista`, `duracao_segundos`) VALUES
(1, 'Imagine', 'John Lennon', 183),
(2, 'Bohemian Rhapsody', 'Queen', 354),
(3, 'Blinding Lights', 'The Weeknd', 203);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cientistas`
--
ALTER TABLE `cientistas`
  ADD PRIMARY KEY (`id_ciencitistas`);

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Índices de tabela `cursos_online`
--
ALTER TABLE `cursos_online`
  ADD PRIMARY KEY (`id_cursos`);

--
-- Índices de tabela `filmes`
--
ALTER TABLE `filmes`
  ADD PRIMARY KEY (`id_filmes`);

--
-- Índices de tabela `hospitais`
--
ALTER TABLE `hospitais`
  ADD PRIMARY KEY (`id_hospital`);

--
-- Índices de tabela `idiomas`
--
ALTER TABLE `idiomas`
  ADD PRIMARY KEY (`id_idiomas`);

--
-- Índices de tabela `jogos`
--
ALTER TABLE `jogos`
  ADD PRIMARY KEY (`id_jogos`);

--
-- Índices de tabela `livros`
--
ALTER TABLE `livros`
  ADD PRIMARY KEY (`id_livros`);

--
-- Índices de tabela `museus`
--
ALTER TABLE `museus`
  ADD PRIMARY KEY (`id_museus`);

--
-- Índices de tabela `musicas`
--
ALTER TABLE `musicas`
  ADD PRIMARY KEY (`id_musicas`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cientistas`
--
ALTER TABLE `cientistas`
  MODIFY `id_ciencitistas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `cursos_online`
--
ALTER TABLE `cursos_online`
  MODIFY `id_cursos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `filmes`
--
ALTER TABLE `filmes`
  MODIFY `id_filmes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `hospitais`
--
ALTER TABLE `hospitais`
  MODIFY `id_hospital` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `idiomas`
--
ALTER TABLE `idiomas`
  MODIFY `id_idiomas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `jogos`
--
ALTER TABLE `jogos`
  MODIFY `id_jogos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `livros`
--
ALTER TABLE `livros`
  MODIFY `id_livros` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `museus`
--
ALTER TABLE `museus`
  MODIFY `id_museus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `musicas`
--
ALTER TABLE `musicas`
  MODIFY `id_musicas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
