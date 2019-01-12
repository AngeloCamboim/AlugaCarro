-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 13-Jan-2019 às 00:45
-- Versão do servidor: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `alugacarro`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadastroclientes`
--

CREATE TABLE IF NOT EXISTS `cadastroclientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `idade` int(11) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `cnh` varchar(15) NOT NULL,
  `endereco` varchar(50) DEFAULT NULL,
  `Telefone` varchar(20) NOT NULL,
  `cartaocredito` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `cadastroclientes`
--

INSERT INTO `cadastroclientes` (`id`, `nome`, `idade`, `cpf`, `cnh`, `endereco`, `Telefone`, `cartaocredito`) VALUES
(1, 'Angelo Camboim', 25, '477.759.410-65', '41251739490', '2ª Travessa Teotônio Vilela', '(82) 99144-8681', '5290 4280 9660 8212'),
(2, 'Carlos Alberto', 23, '482.569.520-67', '52362840501', 'Rua Raposa Branca', '(47)  99154-6592', '5391 4381 9770 8313');

-- --------------------------------------------------------

--
-- Estrutura da tabela `carrosdisponiveis`
--

CREATE TABLE IF NOT EXISTS `carrosdisponiveis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `montadora` varchar(30) NOT NULL,
  `ano` int(11) NOT NULL,
  `placa` varchar(10) DEFAULT NULL,
  `valorDiario` decimal(5,2) DEFAULT NULL,
  `situacao` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Extraindo dados da tabela `carrosdisponiveis`
--

INSERT INTO `carrosdisponiveis` (`id`, `nome`, `montadora`, `ano`, `placa`, `valorDiario`, `situacao`) VALUES
(1, 'Gol 1.0', 'Volkswagen ', 2016, 'IDZ-7239', '100.00', 'Liberado'),
(3, 'Uno 1.0', 'Fiat Chrysler Automobiles', 2015, 'ICW-0991', '100.00', 'Alugado'),
(4, 'Kwid 1.4', 'Renault S.A', 2018, 'IEA-2531', '150.00', 'Liberado'),
(5, 'Onix LT 1.0', 'General Motors', 2013, 'ILC-5364', '70.00', 'Liberado'),
(6, 'Ka 1.0', 'Ford Motor Company', 2014, 'IDE-1107', '80.00', 'Manutencao'),
(7, 'Etios 1.0', 'Toyota Motor Company', 2017, 'IFA-8657', '90.00', 'Alugado'),
(8, 'HB20 1.0', 'Hyundai Motor Company', 2015, 'IFU-0600', '100.00', 'Alugado'),
(9, 'Civic 2.0', 'Honda Motor Company, Ltd', 2015, 'IBH-4524', '120.00', 'Liberado');

-- --------------------------------------------------------

--
-- Estrutura da tabela `motoristasparticulares`
--

CREATE TABLE IF NOT EXISTS `motoristasparticulares` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `idade` int(11) NOT NULL,
  `cnh` varchar(20) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `valorhora` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Extraindo dados da tabela `motoristasparticulares`
--

INSERT INTO `motoristasparticulares` (`id`, `nome`, `idade`, `cnh`, `telefone`, `valorhora`) VALUES
(1, 'Luan Sebastião da Mota', 35, '73825793326', '(64) 98253-3003', '150.00'),
(2, 'Matheus Arthur Souza', 30, '43842096242', '(51) 99520-4995', '100.00'),
(3, 'Benjamin Isaac da Cunha', 32, '42775967053', '(51) 99362-2372', '120.00'),
(4, 'Emanuel Ian Mendes', 40, '97572865312', '(51) 98366-3065', '130.00'),
(5, 'Cauã Bruno Murilo Ramos', 29, '39526381828', '(51) 98911-6844', '125.00'),
(6, 'Eduardo Mário Ferreira', 28, '08062850707', '(51) 98955-5266', '115.00'),
(7, 'Vicente Diego Ribeiro', 33, '39389249106', '(51) 98358-4164', '105.00'),
(8, 'Pedro Lucca Ferreira', 36, '28621365499', '(51) 99199-5747', '100.00'),
(9, 'Diogo Arthur Carlos Pires', 37, '71841439124', '(51) 98232-4732', '110.00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `orcamento`
--

CREATE TABLE IF NOT EXISTS `orcamento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `carro` varchar(40) NOT NULL,
  `Cliente` varchar(20) NOT NULL,
  `ValorCarro` decimal(5,2) DEFAULT NULL,
  `motorista` varchar(30) DEFAULT NULL,
  `ValorMotorista` decimal(5,2) DEFAULT NULL,
  `DiasAlugados` int(11) NOT NULL,
  `situacao` varchar(15) DEFAULT NULL,
  `total` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Extraindo dados da tabela `orcamento`
--

INSERT INTO `orcamento` (`id`, `carro`, `Cliente`, `ValorCarro`, `motorista`, `ValorMotorista`, `DiasAlugados`, `situacao`, `total`) VALUES
(1, 'Volkswagen Gol 1.0', 'Carlos Alberto', '100.00', NULL, NULL, 5, 'Em posse', '500.00'),
(3, 'Renault Kwid 1.4', 'Pedro Fonseca', '150.00', 'Matheus Arthur', '100.00', 0, 'Viagem 1h', '250.00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
