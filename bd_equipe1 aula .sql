-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 16-Maio-2021 às 06:09
-- Versão do servidor: 10.4.18-MariaDB
-- versão do PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bd_equipe1`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `alunos`
--

CREATE TABLE `alunos` (
  `Id_aluno` int(10) NOT NULL,
  `Nome` varchar(50) DEFAULT NULL,
  `Sobrenome` varchar(60) DEFAULT NULL,
  `Idade` int(3) DEFAULT NULL,
  `Sexo` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `alunos`
--

INSERT INTO `alunos` (`Id_aluno`, `Nome`, `Sobrenome`, `Idade`, `Sexo`) VALUES
(1, 'Julia', 'Oliveira', 18, 'Feminino'),
(2, 'Maria', 'Batista', 21, 'Feminino'),
(3, 'Pedro', 'Silva', 20, 'Masculino'),
(4, 'Joao', 'Oliver', 19, 'Masculino'),
(5, 'Daniel', 'Santos', 18, 'Masculino'),
(6, 'Mateus', 'Andrade', 25, 'Masculino'),
(7, 'Davi', 'Dutra', 27, 'Masculino'),
(8, 'Sabrina', 'Abrao', 19, 'Feminino');

-- --------------------------------------------------------

--
-- Estrutura da tabela `contato`
--

CREATE TABLE `contato` (
  `Id_contato` int(10) NOT NULL,
  `Celular1` int(11) DEFAULT NULL,
  `Celular2` int(11) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `ID_chave` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `contato`
--

INSERT INTO `contato` (`Id_contato`, `Celular1`, `Celular2`, `Email`, `ID_chave`) VALUES
(1, 2147483647, 1265348111, 'juhsant1@hotmail.com', 1),
(2, 2147483642, 1265348222, 'juhsant2@hotmail.com', 2),
(3, 2147483643, 1265348333, 'juhsant3@hotmail.com', 3),
(4, 2147483644, 1265348444, 'juhsant4@hotmail.com', 4),
(5, 2147483645, 1265348555, 'juhsant5@hotmail.com', 5),
(6, 2147483646, 1265348666, 'juhsant6@hotmail.com', 6),
(7, 2147483640, 1265348777, 'juhsant7@hotmail.com', 7),
(8, 2147483641, 1265348888, 'juhsant8@hotmail.com', 8);

-- --------------------------------------------------------

--
-- Estrutura da tabela `livro`
--

CREATE TABLE `livro` (
  `Id_livro` int(11) NOT NULL,
  `Nome_livro` varchar(50) DEFAULT NULL,
  `Preco_normal` decimal(10,2) DEFAULT NULL,
  `Preco_desconto` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `livro`
--

INSERT INTO `livro` (`Id_livro`, `Nome_livro`, `Preco_normal`, `Preco_desconto`) VALUES
(1, 'JS', '500.00', '450.00'),
(2, 'CSS', '200.00', '180.00'),
(3, 'HTML', '550.00', '495.00'),
(4, 'CSS', '200.00', '180.00'),
(5, 'Harry', '600.00', '540.00'),
(6, 'BancoD', '260.00', '234.00'),
(7, 'Princess', '100.00', '90.00'),
(8, 'Terror', '150.00', '135.00');

--
-- Acionadores `livro`
--
DELIMITER $$
CREATE TRIGGER `trigger_desconto` BEFORE INSERT ON `livro` FOR EACH ROW SET NEW.Preco_desconto = (NEW.Preco_normal * 0.9)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `materias`
--

CREATE TABLE `materias` (
  `Id_materias` int(10) NOT NULL,
  `Nome_materia` varchar(50) DEFAULT NULL,
  `Carga_horaria` int(3) DEFAULT NULL,
  `id_Chav` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `materias`
--

INSERT INTO `materias` (`Id_materias`, `Nome_materia`, `Carga_horaria`, `id_Chav`) VALUES
(1, 'Quimica', 4, 1),
(2, 'Quimica', 4, 2),
(3, 'Matematica', 4, 3),
(4, 'Programação', 4, 4),
(5, 'Inglês', 4, 5),
(6, 'Matematica', 4, 6),
(7, 'Culinaria', 4, 7),
(8, 'Programação', 4, 8);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`Id_aluno`);

--
-- Índices para tabela `contato`
--
ALTER TABLE `contato`
  ADD PRIMARY KEY (`Id_contato`),
  ADD KEY `ID_chave` (`ID_chave`);

--
-- Índices para tabela `livro`
--
ALTER TABLE `livro`
  ADD PRIMARY KEY (`Id_livro`);

--
-- Índices para tabela `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`Id_materias`),
  ADD KEY `id_Chav` (`id_Chav`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `alunos`
--
ALTER TABLE `alunos`
  MODIFY `Id_aluno` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `contato`
--
ALTER TABLE `contato`
  MODIFY `Id_contato` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `livro`
--
ALTER TABLE `livro`
  MODIFY `Id_livro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `materias`
--
ALTER TABLE `materias`
  MODIFY `Id_materias` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
