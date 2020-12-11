-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 10-Dez-2020 às 22:13
-- Versão do servidor: 10.4.14-MariaDB
-- versão do PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `requisicao`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `materiais`
--

CREATE TABLE `materiais` (
  `id_material` int(10) UNSIGNED NOT NULL,
  `id_tipo_equipamento` int(10) UNSIGNED DEFAULT NULL,
  `designacao` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigo_interno` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `observacoes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `materiais`
--

INSERT INTO `materiais` (`id_material`, `id_tipo_equipamento`, `designacao`, `codigo_interno`, `observacoes`, `created_at`, `updated_at`) VALUES
(1, 1, 'PC HP', NULL, NULL, '2019-03-01 14:15:32', '2019-03-01 14:15:32'),
(2, 1, 'PC HP', NULL, NULL, '2019-03-01 14:15:32', '2019-03-01 14:15:32'),
(3, 1, 'PC HP', NULL, NULL, '2019-03-01 14:15:32', '2019-03-01 14:15:32'),
(4, 1, 'PC HP', NULL, NULL, '2019-03-01 14:15:32', '2019-03-01 14:15:32'),
(5, 1, 'PC HP', NULL, NULL, '2019-03-01 14:15:32', '2019-03-01 14:15:32'),
(6, 2, 'Sistemas de Informação de Apoio à Gestão', NULL, NULL, '2019-03-01 14:15:32', '2019-03-01 14:15:32'),
(7, 2, 'Cidades e Regiões Digitais: impacte nas cidades e nas pessoas', NULL, NULL, '2019-03-01 14:15:32', '2019-03-01 14:15:32'),
(8, 2, 'Informática e Competências Tecnológicas para a Sociedade da Informação', NULL, NULL, '2019-03-01 14:15:32', '2019-03-01 14:15:32');

-- --------------------------------------------------------

--
-- Estrutura da tabela `requisicoes`
--

CREATE TABLE `requisicoes` (
  `id_requisicao` int(10) UNSIGNED NOT NULL,
  `data_requisicao` date DEFAULT NULL,
  `data_prevista_entrega` date DEFAULT NULL,
  `data_entrega` date DEFAULT NULL,
  `data_renovacao` date DEFAULT NULL,
  `entregue` tinyint(1) NOT NULL DEFAULT 0,
  `renovou` tinyint(1) NOT NULL DEFAULT 0,
  `hora_requisicao` time DEFAULT NULL,
  `hora_entrega` time DEFAULT NULL,
  `id_material` int(10) UNSIGNED NOT NULL,
  `id_tipo_equipamento` int(10) UNSIGNED NOT NULL,
  `observacoes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `requisicoes`
--

INSERT INTO `requisicoes` (`id_requisicao`, `data_requisicao`, `data_prevista_entrega`, `data_entrega`, `data_renovacao`, `entregue`, `renovou`, `hora_requisicao`, `hora_entrega`, `id_material`, `id_tipo_equipamento`, `observacoes`, `created_at`, `updated_at`) VALUES
(1, '2020-12-09', '2020-12-10', '2020-12-10', '2020-12-11', 1, 1, '17:02:39', '18:02:38', 1, 1, 'Tudo bem!', NULL, NULL),
(2, '2020-12-16', '2020-12-19', '2020-12-18', '2020-12-19', 1, 1, '10:02:38', '18:02:38', 2, 2, 'Feito!', NULL, NULL),
(3, '2020-12-02', '2020-12-05', '2020-12-03', '2020-12-05', 1, 1, '12:04:39', '15:04:39', 3, 3, 'Tudo direito', NULL, NULL),
(4, '2020-12-09', '2020-12-11', '2020-12-10', '2020-12-10', 1, 1, '14:50:09', '17:50:09', 2, 2, 'Ta tudo porreiro!', '2020-12-09 15:50:09', '2020-12-10 15:50:09'),
(5, '2020-12-20', '2020-12-15', '2020-12-15', '2020-12-23', 1, 1, '17:02:39', '19:04:50', 1, 1, 'Mais ou menos!', '2020-12-16 15:51:26', '2020-12-31 15:51:26'),
(6, '2020-12-20', '2020-12-26', '2020-12-21', '2020-12-22', 1, 1, '08:52:23', '09:52:23', 3, 3, 'Podia estar melhor !', NULL, NULL),
(7, '2020-12-27', '2020-12-30', '2020-12-28', '2020-12-28', 1, 1, '09:52:23', '08:52:23', 1, 1, 'Ta fixe', NULL, NULL),
(8, '2020-12-01', '2020-12-01', '2020-12-01', '2020-12-01', 1, 1, '09:50:23', '10:52:23', 3, 3, 'Fixe !!', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `requisitantes`
--

CREATE TABLE `requisitantes` (
  `id_requisitante` int(10) UNSIGNED NOT NULL,
  `nome` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefone` varchar(13) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `localidade` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cartao_cidadao` varchar(13) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_tipo_requisitante` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `requisitantes`
--

INSERT INTO `requisitantes` (`id_requisitante`, `nome`, `telefone`, `email`, `localidade`, `cartao_cidadao`, `id_tipo_requisitante`, `created_at`, `updated_at`) VALUES
(1, 'Dona Gracinda ', '924536079', 'qualquercoisa3@gmail.com', 'Porto', '30844005', 'Auxiliar', NULL, NULL),
(2, 'Maria Joaquina', '912345678', 'qualquercoisa@gmail.com', 'Porto', '30844001', 'Professora', NULL, NULL),
(3, 'David Costa', '923456789', 'qualquercoisa2@gmail.com', 'Porto', '30844003', 'Aluno', NULL, NULL),
(4, 'Mariana Pacheco', '925469703', 'marianapacheco12@gmail.com', 'Porto', '30844003', 'Aluno', NULL, NULL),
(5, 'Jorge Mendes', '937285652', 'jorgejorginho@gmail.com', 'Lisboa', '30844007', 'Professor', NULL, NULL),
(6, 'Quim Quim', '927643756', 'quimdassirenes@gmail.com', 'Porto', '32456789', 'Professor', NULL, NULL),
(7, 'Quim da Aldeia', '914342657', 'aldeiacity@gmail.com', 'Lisboa', '89215728', 'Auxiliar', NULL, NULL),
(8, 'João Pinheiro', '916598067', 'praioumais@gmail.com', 'Porto', '54698076', 'Auxiliar', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipos_equipamentos`
--

CREATE TABLE `tipos_equipamentos` (
  `id_tipo_equipamento` int(10) UNSIGNED NOT NULL,
  `descricao` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `tipos_equipamentos`
--

INSERT INTO `tipos_equipamentos` (`id_tipo_equipamento`, `descricao`, `created_at`, `updated_at`) VALUES
(1, 'Computadores', NULL, NULL),
(2, 'Livros', NULL, NULL),
(3, 'Calculadoras', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipos_requisitantes`
--

CREATE TABLE `tipos_requisitantes` (
  `id_tipo_requisitante` int(10) UNSIGNED NOT NULL,
  `tipo` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `tipos_requisitantes`
--

INSERT INTO `tipos_requisitantes` (`id_tipo_requisitante`, `tipo`, `created_at`, `updated_at`) VALUES
(1, 'Auxiliares', NULL, NULL),
(2, 'Professores', NULL, NULL),
(3, 'Alunos', NULL, NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `materiais`
--
ALTER TABLE `materiais`
  ADD PRIMARY KEY (`id_material`);

--
-- Índices para tabela `requisicoes`
--
ALTER TABLE `requisicoes`
  ADD PRIMARY KEY (`id_requisicao`);

--
-- Índices para tabela `requisitantes`
--
ALTER TABLE `requisitantes`
  ADD PRIMARY KEY (`id_requisitante`);

--
-- Índices para tabela `tipos_equipamentos`
--
ALTER TABLE `tipos_equipamentos`
  ADD PRIMARY KEY (`id_tipo_equipamento`);

--
-- Índices para tabela `tipos_requisitantes`
--
ALTER TABLE `tipos_requisitantes`
  ADD PRIMARY KEY (`id_tipo_requisitante`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `materiais`
--
ALTER TABLE `materiais`
  MODIFY `id_material` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `requisicoes`
--
ALTER TABLE `requisicoes`
  MODIFY `id_requisicao` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `requisitantes`
--
ALTER TABLE `requisitantes`
  MODIFY `id_requisitante` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `tipos_requisitantes`
--
ALTER TABLE `tipos_requisitantes`
  MODIFY `id_tipo_requisitante` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
