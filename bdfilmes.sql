-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 26/09/2025 às 22:44
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bdfilmes`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `ator`
--

CREATE TABLE `ator` (
  `codAtor` int(11) NOT NULL,
  `ator` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `ator`
--

INSERT INTO `ator` (`codAtor`, `ator`) VALUES
(1, 'assa'),
(6, 'vavbavava'),
(7, 'dvdvdvdgn');

-- --------------------------------------------------------

--
-- Estrutura para tabela `atorfilme`
--

CREATE TABLE `atorfilme` (
  `codAtorFilme` int(11) NOT NULL,
  `codAtor` int(11) NOT NULL,
  `codFilme` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `diretorfilme`
--

CREATE TABLE `diretorfilme` (
  `codDiretor` int(11) NOT NULL,
  `nomeDiretor` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `diretorfilme`
--

INSERT INTO `diretorfilme` (`codDiretor`, `nomeDiretor`) VALUES
(1, 'fdfd'),
(2, 'vdvdvdvd');

-- --------------------------------------------------------

--
-- Estrutura para tabela `filme`
--

CREATE TABLE `filme` (
  `codFilme` int(11) NOT NULL,
  `filme` varchar(50) DEFAULT NULL,
  `codGenero` int(11) NOT NULL,
  `codDiretor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `generofilme`
--

CREATE TABLE `generofilme` (
  `codGenero` int(11) NOT NULL,
  `generoFilme` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `generofilme`
--

INSERT INTO `generofilme` (`codGenero`, `generoFilme`) VALUES
(1, 'vdfvvdvdv');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `ator`
--
ALTER TABLE `ator`
  ADD PRIMARY KEY (`codAtor`);

--
-- Índices de tabela `atorfilme`
--
ALTER TABLE `atorfilme`
  ADD PRIMARY KEY (`codAtorFilme`),
  ADD KEY `codAtor` (`codAtor`),
  ADD KEY `codFilme` (`codFilme`);

--
-- Índices de tabela `diretorfilme`
--
ALTER TABLE `diretorfilme`
  ADD PRIMARY KEY (`codDiretor`);

--
-- Índices de tabela `filme`
--
ALTER TABLE `filme`
  ADD PRIMARY KEY (`codFilme`),
  ADD KEY `codGenero` (`codGenero`),
  ADD KEY `codDiretor` (`codDiretor`);

--
-- Índices de tabela `generofilme`
--
ALTER TABLE `generofilme`
  ADD PRIMARY KEY (`codGenero`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `ator`
--
ALTER TABLE `ator`
  MODIFY `codAtor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `atorfilme`
--
ALTER TABLE `atorfilme`
  MODIFY `codAtorFilme` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `diretorfilme`
--
ALTER TABLE `diretorfilme`
  MODIFY `codDiretor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `filme`
--
ALTER TABLE `filme`
  MODIFY `codFilme` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `generofilme`
--
ALTER TABLE `generofilme`
  MODIFY `codGenero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `atorfilme`
--
ALTER TABLE `atorfilme`
  ADD CONSTRAINT `atorfilme_ibfk_1` FOREIGN KEY (`codAtor`) REFERENCES `ator` (`codAtor`),
  ADD CONSTRAINT `atorfilme_ibfk_2` FOREIGN KEY (`codFilme`) REFERENCES `filme` (`codFilme`);

--
-- Restrições para tabelas `filme`
--
ALTER TABLE `filme`
  ADD CONSTRAINT `filme_ibfk_1` FOREIGN KEY (`codGenero`) REFERENCES `generofilme` (`codGenero`),
  ADD CONSTRAINT `filme_ibfk_2` FOREIGN KEY (`codDiretor`) REFERENCES `diretorfilme` (`codDiretor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
