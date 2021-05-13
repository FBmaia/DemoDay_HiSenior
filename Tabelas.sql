-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 13-Maio-2021 às 16:51
-- Versão do servidor: 10.4.18-MariaDB
-- versão do PHP: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `hi_senior`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `entrega`
--

CREATE TABLE `entrega` (
  `ID_entrega` int(11) NOT NULL,
  `ID_idoso` int(11) NOT NULL,
  `ID_voluntario` int(11) NOT NULL,
  `Status` varchar(255) NOT NULL,
  `Data_pedido` date NOT NULL,
  `Data_entrega` date NOT NULL,
  `Descricao_pedido` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `entrega`
--

INSERT INTO `entrega` (`ID_entrega`, `ID_idoso`, `ID_voluntario`, `Status`, `Data_pedido`, `Data_entrega`, `Descricao_pedido`) VALUES
(1, 1, 2, 'Pedido realizado', '2021-05-13', '2021-05-13', 'Dipirona  '),
(2, 2, 1, 'Pedido realizado', '2021-05-12', '2021-05-12', 'Insulina  '),
(3, 3, 3, 'Pedido realizado', '2021-05-11', '2021-05-11', 'Paracetamol  ');

-- --------------------------------------------------------

--
-- Estrutura da tabela `idoso`
--

CREATE TABLE `idoso` (
  `ID_idoso` int(11) NOT NULL,
  `Nome` varchar(255) NOT NULL,
  `Data_de_nascimento` date NOT NULL,
  `CPF` varchar(255) NOT NULL,
  `Estado` varchar(255) NOT NULL,
  `Cidade` varchar(255) NOT NULL,
  `CEP` varchar(255) NOT NULL,
  `Bairro` varchar(255) NOT NULL,
  `Logradouro` varchar(255) NOT NULL,
  `Numero` int(11) NOT NULL,
  `PCD` varchar(255) DEFAULT NULL,
  `Email` varchar(255) NOT NULL,
  `Senha` varchar(255) NOT NULL,
  `Data_criacao_perfil` date NOT NULL,
  `DDD` int(11) NOT NULL,
  `Telefone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `idoso`
--

INSERT INTO `idoso` (`ID_idoso`, `Nome`, `Data_de_nascimento`, `CPF`, `Estado`, `Cidade`, `CEP`, `Bairro`, `Logradouro`, `Numero`, `PCD`, `Email`, `Senha`, `Data_criacao_perfil`, `DDD`, `Telefone`) VALUES
(1, 'Lurdes Maria das Dores', '1944-05-11', '212.269.477-21', 'SP', 'Holambra', '8594510', 'Holambrez', 'Julio Carvalho', 114, NULL, 'lurdiscosturas@hotimaill.come', 'lurdes123', '2021-05-12', 19, 955271147),
(2, 'Maria Julia das Dores', '1944-05-21', '255.969.577-81', 'SP', 'Holambra', '8594710', 'Holambrez', 'Carvalho julio', 164, NULL, 'mariacosturas@hotmail.com', 'maria123', '2021-05-12', 19, 955255147),
(3, 'Joâo Maria', '1954-05-11', '288.219.457-61', 'SP', 'Holambra', '8594210', 'Holambrez', 'Paloma Barros', 814, NULL, 'joaopedreiro@hotmail.com', 'joazinho123', '2021-05-12', 19, 955277227);

-- --------------------------------------------------------

--
-- Estrutura da tabela `voluntario`
--

CREATE TABLE `voluntario` (
  `ID_vountario` int(11) NOT NULL,
  `Nome` varchar(255) NOT NULL,
  `Data_de_nascimento` date NOT NULL,
  `CPF` varchar(255) NOT NULL,
  `Estado` varchar(255) NOT NULL,
  `Cidade` varchar(255) NOT NULL,
  `CEP` varchar(255) NOT NULL,
  `Bairro` varchar(255) NOT NULL,
  `Logradouro` varchar(255) NOT NULL,
  `Numero` int(11) NOT NULL,
  `PCD` varchar(255) DEFAULT NULL,
  `Nivel` int(11) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Senha` varchar(255) NOT NULL,
  `Data_criacao_perfil` date NOT NULL,
  `DDD` int(11) NOT NULL,
  `Telefone` int(11) NOT NULL,
  `Ficha_criminal` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `voluntario`
--

INSERT INTO `voluntario` (`ID_vountario`, `Nome`, `Data_de_nascimento`, `CPF`, `Estado`, `Cidade`, `CEP`, `Bairro`, `Logradouro`, `Numero`, `PCD`, `Nivel`, `Email`, `Senha`, `Data_criacao_perfil`, `DDD`, `Telefone`, `Ficha_criminal`) VALUES
(1, 'Ernesto Dell Torre', '1991-07-17', '4367789051', 'São Paulo', 'SP', '027708-67', 'Lapa', 'Rua dos Almirantes', 1001, 'Não', 1, 'ernestotorres@gmail.com', '*********', '2021-03-11', 11, 9658329, 'Limpo'),
(2, 'Samantha Ferreira Lopes', '2001-04-01', '2008789074', 'São Paulo', 'SP', '027708-67', 'Pirituba', 'Avenida São José', 3440, 'Não', 2, 'ferreirasamantha1@gmail.com', '*********', '2021-04-30', 11, 0, 'Limpa'),
(3, 'Ilma Ferreira', '1999-11-24', '34367789052', 'São Paulo', 'SP', '027708-67', 'Lapa', 'Rua dos Almirantes', 11, 'Não', 3, 'ilmaferreira2@gmail.com', '*********', '2021-05-05', 11, 2147483647, 'Limpo');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `entrega`
--
ALTER TABLE `entrega`
  ADD PRIMARY KEY (`ID_entrega`);

--
-- Índices para tabela `idoso`
--
ALTER TABLE `idoso`
  ADD PRIMARY KEY (`ID_idoso`),
  ADD UNIQUE KEY `CPF` (`CPF`,`Email`);

--
-- Índices para tabela `voluntario`
--
ALTER TABLE `voluntario`
  ADD PRIMARY KEY (`ID_vountario`),
  ADD UNIQUE KEY `CPF` (`CPF`,`Email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `entrega`
--
ALTER TABLE `entrega`
  MODIFY `ID_entrega` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `idoso`
--
ALTER TABLE `idoso`
  MODIFY `ID_idoso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `voluntario`
--
ALTER TABLE `voluntario`
  MODIFY `ID_vountario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
