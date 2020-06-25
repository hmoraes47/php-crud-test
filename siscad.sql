-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 22-Jun-2020 às 22:30
-- Versão do servidor: 10.4.10-MariaDB
-- versão do PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `siscad`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
CREATE TABLE IF NOT EXISTS `funcionario` (
  `CodFuncionario` int(11) NOT NULL,
  `CodFuncionarioFilho` int(11) NOT NULL,
  `Nome` varchar(100) DEFAULT NULL,
  `DataNascimento` date NOT NULL,
  `Salario` double NOT NULL,
  `Atividades` varchar(200) NOT NULL,
  `NumeroFilhos` int(11) NOT NULL,
  `NFilhos` int(11) NOT NULL,
  PRIMARY KEY (`CodFuncionario`),
  KEY `CodFuncionarioFilho` (`CodFuncionarioFilho`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionariofilho`
--

DROP TABLE IF EXISTS `funcionariofilho`;
CREATE TABLE IF NOT EXISTS `funcionariofilho` (
  `CodFuncionarioFilho` int(11) NOT NULL,
  `CodFuncionario` int(11) NOT NULL,
  `Nome` varchar(100) DEFAULT NULL,
  `DataNascimento` date NOT NULL,
  PRIMARY KEY (`CodFuncionarioFilho`),
  KEY `CodFuncionario` (`CodFuncionario`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
