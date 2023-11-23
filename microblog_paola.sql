-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 23/11/2023 às 21:28
-- Versão do servidor: 10.4.27-MariaDB
-- Versão do PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `microblog_paola`
--
CREATE DATABASE IF NOT EXISTS `microblog_paola` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `microblog_paola`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `noticias`
--

CREATE TABLE `noticias` (
  `id` int(11) NOT NULL,
  `data` datetime NOT NULL DEFAULT current_timestamp(),
  `titulo` varchar(150) NOT NULL,
  `texto` text NOT NULL,
  `resumo` text NOT NULL,
  `imagem` text NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `noticias`
--

INSERT INTO `noticias` (`id`, `data`, `titulo`, `texto`, `resumo`, `imagem`, `usuario_id`) VALUES
(1, '2023-11-23 17:21:51', 'Loira', 'Loira dos anos 2010', 'Essa é uma foto de uma mulher loira dos anos 2010', 'loira.jpg', 9),
(2, '2023-11-23 17:22:42', 'Sanduíche Mac', 'Olha o sanduícheee', 'Foto de um Sanduíche do Mac', 'sanduiche.jpg', 9),
(3, '2023-11-23 17:24:31', 'Cachorrinho', 'Foto de um cachorrinho', 'Essa é a foto de um cachorrinho fofinho', 'dog.jpg', 11);

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `tipo` enum('admin','editor') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`, `tipo`) VALUES
(9, 'Paola', 'paola@gmail.com', '$2y$10$Ig278Z53awM2TjLtqak6SeptH70t.bDvF.eQ.p0JGR./D0/Sb88UK', 'admin'),
(10, 'Marina', 'marina@gmail.com', '$2y$10$X227b43oXXsSjK.2rVxHuew7jAolKmc/kYHETnZAjS0qE1W8mKwVC', 'editor'),
(11, 'Beatriz', 'bia@msn.com', '$2y$10$2mhhipZcXiRhtzKhuQtROenerjCAUL/m2GYASFTSvajoNBcGa39U6', 'editor'),
(12, 'Mateus', 'mateus@msn.com', '$2y$10$5OsGcdaJDph9qteudhzknegldQeZpxrXK5OgBlqZ.u44gFI8cfJMy', 'admin');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_noticias_usuarios` (`usuario_id`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `noticias`
--
ALTER TABLE `noticias`
  ADD CONSTRAINT `fk_noticias_usuarios` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
