-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 15-Jun-2024 às 18:24
-- Versão do servidor: 10.4.25-MariaDB
-- versão do PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `curriculo_online`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cursos`
--

CREATE TABLE `cursos` (
  `idcurso` int(11) NOT NULL,
  `nome_curso` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instituicao` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ano_curso` year(4) DEFAULT NULL,
  `idusuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `cursos`
--

INSERT INTO `cursos` (`idcurso`, `nome_curso`, `instituicao`, `ano_curso`, `idusuario`) VALUES
(1, '21312', '2012', 2013, 1),
(2, 'Grandes Eventos', 'Centro de FormaÃ§Ã£o Centurium', 2017, 3),
(3, 'java pica', 'web', 2023, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `formacoes`
--

CREATE TABLE `formacoes` (
  `idformacao` int(11) NOT NULL,
  `nivel` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nome_curso` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instituicao` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `situacao` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ano_inicio` year(4) DEFAULT NULL,
  `ano_fim` year(4) DEFAULT NULL,
  `idusuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `formacoes`
--

INSERT INTO `formacoes` (`idformacao`, `nivel`, `nome_curso`, `instituicao`, `situacao`, `ano_inicio`, `ano_fim`, `idusuario`) VALUES
(1, 'En', '213123', '321312', 'Cursando', 2012, 2013, 1),
(2, 'En', 'TÃ©cnico em InformÃ¡tica', 'Senac', 'ConcluÃ­do', 2016, 2017, 3),
(3, 'En', 'FormaÃ§Ã£o de Vigilante', 'Centro de FormaÃ§Ã£o Centurium', 'ConcluÃ­do', 2017, 2017, 3),
(4, 'En', 'ensino meduo', 'colgetÂ´pklj', 'ConcluÃ­do', 2004, 2009, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `idusuario` int(11) NOT NULL,
  `nome` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nacionalidade` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado_civil` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idade` int(3) DEFAULT NULL,
  `endereco` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telefone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `senha` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `foto` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`idusuario`, `nome`, `nacionalidade`, `estado_civil`, `idade`, `endereco`, `telefone`, `email`, `senha`, `foto`) VALUES
(1, 'Brandon Barbosa LourenÃ§o', 'Brasileiro(a)', 'Solteiro', 12, '123', '(21)96616-1292', 'teste@teste.com', 'fcea920f7412b5da7be0cf42b8c93759', '646ea59f45f7b.jpg'),
(3, 'Daniel Sampaio CharrÃª', 'Brasileiro(a)', 'Solteiro', 30, 'Rua AndrÃ© Rocha NÂº 892 - Taquara - JacarepaguÃ¡', '21975342286', 'daniel.dsc993@gmail.com', 'fcea920f7412b5da7be0cf42b8c93759', NULL),
(4, 'asdas', 'Brasileiro(a)as', 'Solteiro', 12, '2342', '234232342', 'brandonbarbosa@hotmail.com', 'fcea920f7412b5da7be0cf42b8c93759', NULL),
(5, 'Pedro', 'Brasileiro(a)', 'Casado', 37, 'rua da pica ', '(21)96616-1292', 'pedro@teste.com', '25d55ad283aa400af464c76d713c07ad', '647fd6651be3e.jpg'),
(6, 'bbbbb', 'Brasileiro(a)', 'Casado', 34, 'ff', '2144444', 'daniel.dsc993@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`idcurso`),
  ADD KEY `idusuario` (`idusuario`);

--
-- Índices para tabela `formacoes`
--
ALTER TABLE `formacoes`
  ADD PRIMARY KEY (`idformacao`),
  ADD KEY `idusuario` (`idusuario`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idusuario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cursos`
--
ALTER TABLE `cursos`
  MODIFY `idcurso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `formacoes`
--
ALTER TABLE `formacoes`
  MODIFY `idformacao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `cursos`
--
ALTER TABLE `cursos`
  ADD CONSTRAINT `cursos_ibfk_1` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idusuario`);

--
-- Limitadores para a tabela `formacoes`
--
ALTER TABLE `formacoes`
  ADD CONSTRAINT `formacoes_ibfk_1` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idusuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
