-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 21-Maio-2023 às 15:08
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bd_users`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `bd_users`
--

CREATE TABLE `bd_users` (
  `id` bigint(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Tipo` bigint(5) NOT NULL,
  `Nr_cliente` bigint(20) NOT NULL,
  `Estado` varchar(15) NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `Nif` varchar(9) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Password_new` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `bd_users`
--

INSERT INTO `bd_users` (`id`, `Email`, `Tipo`, `Nr_cliente`, `Estado`, `Nome`, `Nif`, `Password`, `Password_new`) VALUES
(21, 'dmdi.verificacao.pass@gmail.com', 1, 1, '1', 'Admin-Diogo', '.', '827ccb0eea8a706c4c34a16891f84e7b', '827ccb0eea8a706c4c34a16891f84e7b'),
(22, 'teste01.pap@gmail.com', 2, 2, '1', 'BackOffice-Diogo', '.', '827ccb0eea8a706c4c34a16891f84e7b', '827ccb0eea8a706c4c34a16891f84e7b'),
(28, 'celineferreirarodrigues@gmail.com', 3, 1428, '1', 'Céline Ferreira Rodrigues', '212645846', '827ccb0eea8a706c4c34a16891f84e7b', '827ccb0eea8a706c4c34a16891f84e7b'),
(30, 'gi.moreira2@gmail.com', 3, 1526, '1', 'Geraldo Moreira', '214705102', '827ccb0eea8a706c4c34a16891f84e7b', '827ccb0eea8a706c4c34a16891f84e7b');

-- --------------------------------------------------------

--
-- Estrutura da tabela `enc_artigos`
--

CREATE TABLE `enc_artigos` (
  `Id_enc` bigint(20) UNSIGNED NOT NULL,
  `Cod_artigo` varchar(50) NOT NULL,
  `Code` varchar(50) NOT NULL,
  `Nome` varchar(100) NOT NULL,
  `Quant` bigint(20) NOT NULL,
  `Preco0` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `enc_artigos`
--

INSERT INTO `enc_artigos` (`Id_enc`, `Cod_artigo`, `Code`, `Nome`, `Quant`, `Preco0`) VALUES
(173, 'GMS396BT-24-47', '101030100000000140', 'Masunaga | O | GMS396BT  | Cor 24 Titan | 47-21', 5, 224);

-- --------------------------------------------------------

--
-- Estrutura da tabela `enc_cab`
--

CREATE TABLE `enc_cab` (
  `Id_enc` bigint(20) UNSIGNED NOT NULL,
  `id_enc_itr` varchar(50) NOT NULL,
  `id_users` bigint(20) NOT NULL,
  `Nr_cliente` bigint(20) NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `Data` date NOT NULL,
  `Obs` varchar(255) NOT NULL,
  `Total` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `enc_cab`
--

INSERT INTO `enc_cab` (`Id_enc`, `id_enc_itr`, `id_users`, `Nr_cliente`, `Nome`, `Data`, `Obs`, `Total`) VALUES
(173, ' C085-22300012', 28, 1428, 'Céline Ferreira Rodrigues', '2023-03-27', '', 1120);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `bd_users`
--
ALTER TABLE `bd_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Índices para tabela `enc_artigos`
--
ALTER TABLE `enc_artigos`
  ADD PRIMARY KEY (`Id_enc`,`Cod_artigo`);

--
-- Índices para tabela `enc_cab`
--
ALTER TABLE `enc_cab`
  ADD PRIMARY KEY (`Id_enc`),
  ADD UNIQUE KEY `Id_enc` (`Id_enc`),
  ADD KEY `id_users` (`id_users`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `bd_users`
--
ALTER TABLE `bd_users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de tabela `enc_cab`
--
ALTER TABLE `enc_cab`
  MODIFY `Id_enc` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `enc_cab`
--
ALTER TABLE `enc_cab`
  ADD CONSTRAINT `enc_cab_ibfk_2` FOREIGN KEY (`id_users`) REFERENCES `bd_users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
