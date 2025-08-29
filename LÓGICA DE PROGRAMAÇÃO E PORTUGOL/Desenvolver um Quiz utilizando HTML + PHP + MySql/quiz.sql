-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 04/07/2025 às 22:36
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
-- Banco de dados: `quiz`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `pergunta2`
--

CREATE TABLE `pergunta2` (
  `ID_questao` int(11) NOT NULL,
  `pergunta` varchar(500) NOT NULL,
  `ID_prova` int(11) NOT NULL,
  `correta` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

--
-- Despejando dados para a tabela `pergunta2`
--

INSERT INTO `pergunta2` (`ID_questao`, `pergunta`, `ID_prova`, `correta`) VALUES
(1, 'Todas as variaveis em PHP comecam com que simbolo?', 1, 0),
(2, 'A sintax PHP e mais similar a', 2, 0),
(3, 'Qual o jeito correto de se criar uma funcao?', 3, 0),
(4, 'Qual e o jeito correto de abrir o arquivo \"time.txt\" como legivel?', 4, 0),
(5, 'Qual o jeito correto de se adiconar um comentario em PHP?', 5, 0),
(6, 'Como se cria cookie em PHP?', 6, 0),
(7, 'Em PHP, o unico jeito de sair texto e com echo ?', 7, 0),
(8, 'Como criar um array em PHP?', 8, 0),
(9, 'Qual operador e usado para checar e dois valores sao iguais e do mesmo tipo?', 9, 0),
(10, 'PHP pode ser executado em  Microsoft Windows IIS(Internet Information Server)?', 10, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `prova`
--

CREATE TABLE `prova` (
  `ID_prova` int(11) NOT NULL,
  `Tema` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

--
-- Despejando dados para a tabela `prova`
--

INSERT INTO `prova` (`ID_prova`, `Tema`) VALUES
(1, 'pergunta 1'),
(2, 'pergunta 2'),
(3, 'pergunta 3'),
(4, 'pergunta 4'),
(5, 'pergunta 5'),
(6, 'pergunta 6'),
(7, 'pergunta 7'),
(8, 'pergunta 8'),
(9, 'pergunta 9'),
(10, 'pergunta 10');

-- --------------------------------------------------------

--
-- Estrutura para tabela `respostas2`
--

CREATE TABLE `respostas2` (
  `ID_alternativa` int(11) NOT NULL,
  `ID_questao` int(11) DEFAULT NULL,
  `desc_alt` varchar(255) NOT NULL,
  `correta` tinyint(1) NOT NULL,
  `letras` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

--
-- Despejando dados para a tabela `respostas2`
--

INSERT INTO `respostas2` (`ID_alternativa`, `ID_questao`, `desc_alt`, `correta`, `letras`) VALUES
(1, 1, '#', 0, 'A'),
(2, 1, '$', 1, 'B'),
(3, 1, '%', 0, 'C'),
(4, 2, 'Perl and C ', 1, 'A'),
(5, 2, 'JavaScrip', 0, 'B'),
(6, 2, 'VBScript', 0, 'C'),
(7, 3, 'create myFunction() ', 0, 'A'),
(8, 3, 'function myFunction()', 1, 'B'),
(9, 3, 'new_function myFunction()', 0, 'C'),
(10, 4, 'open(\"time.txt\",\"read\"); ', 0, 'A'),
(11, 4, 'fopen(\"time.txt\",\"r\");', 1, 'B'),
(12, 4, 'fopen(\"time.txt\",\"r+\");', 0, 'C'),
(13, 5, '/*comment(...)comment*/', 0, 'A'),
(14, 5, '*\\...\\*', 0, 'B'),
(15, 5, '/*...*/', 1, 'C'),
(16, 6, 'createcookie', 0, 'A'),
(17, 6, 'setcookie()', 1, 'B'),
(18, 6, 'makecookie(', 0, 'C'),
(19, 7, 'VERDADEIRO', 0, 'A'),
(20, 7, 'FALSO', 1, 'B'),
(21, 8, '$cars = \"Volvo\", \"BMW\", \"Toyota\";', 0, 'A'),
(22, 8, '$cars = array[\"Volvo\", \"BMW\", \"Toyota\"];', 0, 'B'),
(23, 8, '$cars = array(\"Volvo\", \"BMW\", \"Toyota\");', 1, 'C'),
(24, 9, '===', 1, 'A'),
(25, 9, '=', 0, 'B'),
(26, 9, '==', 0, 'C'),
(27, 10, 'VERDADEIRO', 1, 'A'),
(28, 10, 'FALSO', 0, 'B');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `pergunta2`
--
ALTER TABLE `pergunta2`
  ADD PRIMARY KEY (`ID_questao`),
  ADD KEY `ID_prova` (`ID_prova`);

--
-- Índices de tabela `prova`
--
ALTER TABLE `prova`
  ADD PRIMARY KEY (`ID_prova`);

--
-- Índices de tabela `respostas2`
--
ALTER TABLE `respostas2`
  ADD PRIMARY KEY (`ID_alternativa`),
  ADD KEY `ID_questao` (`ID_questao`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `pergunta2`
--
ALTER TABLE `pergunta2`
  MODIFY `ID_questao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de tabela `prova`
--
ALTER TABLE `prova`
  MODIFY `ID_prova` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `respostas2`
--
ALTER TABLE `respostas2`
  MODIFY `ID_alternativa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `pergunta2`
--
ALTER TABLE `pergunta2`
  ADD CONSTRAINT `ID_prova` FOREIGN KEY (`ID_prova`) REFERENCES `prova` (`ID_prova`);

--
-- Restrições para tabelas `respostas2`
--
ALTER TABLE `respostas2`
  ADD CONSTRAINT `respostas2_ibfk_1` FOREIGN KEY (`ID_questao`) REFERENCES `pergunta2` (`ID_questao`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
