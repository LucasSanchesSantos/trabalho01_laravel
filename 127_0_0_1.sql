-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17-Mar-2023 às 00:04
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `afungaz`
--
CREATE DATABASE IF NOT EXISTS `afungaz` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `afungaz`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `cnpj_cpf` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `agendamento`
--

CREATE TABLE `agendamento` (
  `id` int(11) NOT NULL,
  `cnpj_cpf` varchar(11) NOT NULL,
  `data_agendamento` date NOT NULL,
  `id_local` int(11) NOT NULL,
  `id_situacao` int(11) NOT NULL,
  `hora` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `agendamento`
--

INSERT INTO `agendamento` (`id`, `cnpj_cpf`, `data_agendamento`, `id_local`, `id_situacao`, `hora`) VALUES
(1, '13506861662', '2023-01-09', 1, 1, 0),
(2, '13506861662', '2023-01-11', 2, 1, 0),
(3, '13506861662', '2023-01-13', 3, 1, 0),
(4, '13506861662', '2023-01-15', 1, 1, 0),
(5, '13506861662', '2023-01-17', 2, 1, 0),
(6, '13506861662', '2023-01-19', 3, 1, 0),
(7, '13506861662', '2023-01-21', 1, 1, 0),
(8, '13506861662', '2023-01-23', 2, 1, 0),
(9, '13506861662', '2023-01-25', 2, 1, 0),
(10, '13506861662', '2023-01-27', 3, 1, 0),
(11, '13506861662', '2023-01-29', 1, 1, 0),
(12, '13506861662', '2023-01-31', 1, 1, 0),
(13, '13506861662', '2023-02-02', 2, 1, 0),
(14, '13506861662', '2023-02-04', 3, 1, 0),
(15, '13506861662', '2023-02-06', 1, 1, 0),
(16, '13506861662', '2023-02-08', 3, 1, 0),
(17, '13506861662', '2023-02-10', 1, 1, 0),
(18, '13506861662', '2023-02-12', 3, 1, 0),
(19, '13506861662', '2023-02-14', 3, 1, 0),
(20, '13506861662', '2023-02-16', 1, 1, 0),
(21, '13506861662', '2022-12-29', 4, 1, 0),
(22, '13506861662', '2023-03-23', 4, 1, 0),
(23, '13506861662', '2023-05-29', 5, 1, 0),
(24, '13506861662', '2023-01-05', 3, 1, 0),
(25, '13506861662', '2023-01-07', 1, 1, 0),
(26, '13506861662', '2023-01-06', 1, 1, 0),
(27, '13506861662', '2022-12-31', 1, 1, 0),
(28, '13506861662', '2022-12-31', 1, 1, 0),
(29, '13506861662', '2022-12-31', 2, 1, 0),
(32, '13506861662', '2022-12-31', 1, 1, 1),
(33, '13506861662', '2022-12-31', 1, 1, 1),
(34, '13506861662', '2022-12-31', 1, 1, 1),
(35, '13506861662', '2022-12-31', 5, 1, 0),
(37, '13506861662', '2022-12-31', 19, 1, 12),
(38, '13506861662', '2023-01-05', 19, 1, 10),
(39, '13506861662', '2022-12-31', 19, 1, 10),
(43, '13506861662', '2022-12-31', 16, 1, 13),
(44, '13506861662', '2022-12-31', 17, 1, 10),
(45, '13506861662', '2022-12-31', 1, 1, 22),
(46, '13506861662', '2022-12-31', 19, 1, 17),
(47, '13506861662', '2022-12-31', 18, 1, 13),
(48, '13506861662', '2022-12-31', 19, 1, 15),
(49, '13506861662', '2022-12-31', 17, 1, 16),
(50, '13506861662', '2023-01-07', 16, 1, 21),
(51, '13506861662', '2022-12-31', 17, 1, 11),
(52, '13506861662', '2022-12-31', 20, 1, 10),
(53, '13506861662', '2022-12-31', 20, 1, 20),
(54, '13506861662', '2023-01-02', 19, 1, 22),
(55, '13506861662', '2023-01-02', 18, 1, 22),
(56, '13506861662', '2023-02-09', 17, 1, 21),
(57, '13506861662', '2023-01-02', 5, 1, 0),
(58, '13506861662', '2023-01-02', 8, 1, 0),
(59, '13506861662', '2023-01-02', 10, 1, 0),
(60, '13506861662', '2023-01-17', 15, 1, 0),
(61, '13506861662', '2023-01-02', 17, 1, 19);

-- --------------------------------------------------------

--
-- Estrutura da tabela `local`
--

CREATE TABLE `local` (
  `id` int(11) NOT NULL,
  `local_origem` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_tipo_local` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `local`
--

INSERT INTO `local` (`id`, `local_origem`, `id_tipo_local`) VALUES
(1, 'Quioesque 1', 1),
(2, 'Quioesque 2', 1),
(3, 'Quioesque 3', 1),
(4, 'Quioesque 4', 1),
(5, 'Quioesque 5', 1),
(6, 'Chalé 1', 2),
(7, 'Chalé 2', 2),
(8, 'Chalé 3', 2),
(9, 'Chalé 4', 2),
(10, 'Chalé 5', 2),
(11, 'Chalé 6', 2),
(12, 'Chalé 7', 2),
(13, 'Chalé 8', 2),
(14, 'Chalé 9', 2),
(15, 'Chalé 10', 2),
(16, 'Quadra', 3),
(17, 'Campo 1', 3),
(18, 'Campo 2', 3),
(19, 'Quadra de areia 1', 3),
(20, 'Quadra de areia 2', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoa`
--

CREATE TABLE `pessoa` (
  `idtipopessoa` int(11) NOT NULL,
  `idtipocontribuinte` int(11) DEFAULT NULL,
  `idtipocadastro` int(11) DEFAULT NULL,
  `idsituacaopessoa` int(11) DEFAULT NULL,
  `idtiporesidencia` int(11) DEFAULT NULL,
  `idtipoestadocivil` int(11) DEFAULT NULL,
  `idtipoocupacao` int(11) DEFAULT NULL,
  `idtiposexo` int(11) DEFAULT NULL,
  `idgrupo` int(11) DEFAULT NULL,
  `idconjuge` int(30) DEFAULT NULL,
  `idtipolimite` int(11) DEFAULT NULL,
  `cnpj_cpf` varchar(11) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `nomefantasia` varchar(150) DEFAULT NULL,
  `cce_rg` varchar(20) DEFAULT NULL,
  `datacriacao` date DEFAULT NULL,
  `datacadastro` date DEFAULT NULL,
  `dataalteracao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `fornecedor` int(11) DEFAULT NULL,
  `cliente` int(11) DEFAULT NULL,
  `cpfgerado` int(11) DEFAULT NULL,
  `ultimaconsultaspc` date DEFAULT NULL,
  `valorlimitecredito` float DEFAULT NULL,
  `gerarboleto` int(11) DEFAULT NULL,
  `idusuario` int(11) DEFAULT NULL,
  `atualizarcadastro` int(11) DEFAULT NULL,
  `idnaturezaretencaofonte` int(11) DEFAULT NULL,
  `chavemd5` varchar(40) DEFAULT NULL,
  `aposentado` int(11) DEFAULT NULL,
  `pensionista` int(11) DEFAULT NULL,
  `inscricaosuframa` varchar(20) DEFAULT NULL,
  `limitecreditoadicional` float DEFAULT NULL,
  `inscricaomunicipal` varchar(20) DEFAULT NULL,
  `apelidoftp` varchar(30) DEFAULT NULL,
  `aceite` int(11) DEFAULT NULL,
  `identificador` int(30) DEFAULT NULL,
  `emancipado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `pessoa`
--

INSERT INTO `pessoa` (`idtipopessoa`, `idtipocontribuinte`, `idtipocadastro`, `idsituacaopessoa`, `idtiporesidencia`, `idtipoestadocivil`, `idtipoocupacao`, `idtiposexo`, `idgrupo`, `idconjuge`, `idtipolimite`, `cnpj_cpf`, `nome`, `nomefantasia`, `cce_rg`, `datacriacao`, `datacadastro`, `dataalteracao`, `fornecedor`, `cliente`, `cpfgerado`, `ultimaconsultaspc`, `valorlimitecredito`, `gerarboleto`, `idusuario`, `atualizarcadastro`, `idnaturezaretencaofonte`, `chavemd5`, `aposentado`, `pensionista`, `inscricaosuframa`, `limitecreditoadicional`, `inscricaomunicipal`, `apelidoftp`, `aceite`, `identificador`, `emancipado`) VALUES
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, 1, '100985181', 'MARCOS DIVINO DO NASCIMENTO', 'MARCOS DIVINO DO NASCIMENTO', '132132296', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2520, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3019330, NULL),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, 1, '1028882130', 'FERNANDES RIBEIRO DA SILVA', 'FERNANDES RIBEIRO DA SILVA', '16796888', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 1, 1, 0, '0000-00-00', 0, NULL, NULL, NULL, 0, 'senha', NULL, NULL, 'null', NULL, 'null', 'null', 1, 2385851, NULL),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, 2, '1045775177', 'MATEUS ALVES DE ALBUQUERQUE', 'MATEUS ALVES DE ALBUQUERQUE', '11586907', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '2038-03-03', 0, 0, 8935, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 1963153, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '1074228243', 'VAGNER OLIVEIRA DA SILVA', 'null', '1142387', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 948, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 365146, NULL),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '1114592145', 'ALZIRO FERREIRA NANTES FILHO', 'ALZIRO FERREIRA NANTES FILHO', '1290204', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 255, 6312, 255, 0, 'senha', 255, 255, 'null', 0, 'null', 'null', 1, 3453205, 0),
(1, 2, 2, 1, NULL, 2, 1, 1, NULL, NULL, NULL, '1142974286', 'ISAEL DOUGLAS OLIVEIRA PIRES', 'ISAEL DOUGLAS OLIVEIRA PIRES', '1239790', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, NULL, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 5888688, 0),
(1, 2, 1, 1, NULL, NULL, 10, NULL, NULL, NULL, NULL, '11501071467', 'JAQUELINE MELO DO NASCIMENTO', 'JAQUE', '8509792.0', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 1, 5925, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 0, NULL, 0),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, NULL, '1175797260', 'FRANCISCO CEZAR SOARES DA SILVA JUNIOR', 'null', '1121213', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 1, 1, 0, '0000-00-00', 0, 255, 6758, 1, 0, 'senha', 255, 255, 'null', 0, 'null', 'null', 1, 3750920, NULL),
(1, 2, 2, 1, 1, 2, 1, 2, NULL, NULL, 2, '1179343131', 'LIANI  APARECIDA LUCA TRINDADE', 'LIANE APARECIDA LUCA TRINDADE', '001447309', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '2044-03-07', 0, 0, 6937, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 1111212, 0),
(1, 2, 2, 1, 2, 2, 1, 1, NULL, 2147483647, 2, '11801378843', 'ROSMEY BATISTA DA GRACA', 'null', '20470786', '0000-00-00', '2038-09-07', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 1, 0, 1364, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3954071, 0),
(1, 2, 2, 1, 1, 2, 8, 1, NULL, NULL, NULL, '1191422283', 'ALAN DOUGLAS SCALABRIM', 'null', '6376546', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 5144, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2932338, NULL),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '1193947154', 'MAIKEL FERNANDO MARTINS TEIXEIRA', 'MAIKEL FERNANDO MARTINS TEIXEIRA', '17022894', '2031-03-01', '2042-05-05', '0000-00-00 00:00:00', 0, 1, 0, '2042-05-05', 0, 0, 9979, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3998365, 0),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, NULL, '1230693190', 'CRISTIAN RAMON MACHADO RESQUIN', 'null', '14179148', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '2042-09-05', 0, 0, 8467, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2111207, NULL),
(1, 2, 2, 1, 2, 2, 3, 1, NULL, NULL, NULL, '12448381798', 'JAMERSON CRISTIAN ALBARADO DE LIMA', 'null', '211107834', '0000-00-00', '2041-08-05', '0000-00-00 00:00:00', 1, 1, 0, '0000-00-00', 0, 0, 6673, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3626233, NULL),
(1, 2, 2, 1, NULL, 2, 1, 1, NULL, 2147483647, NULL, '1250232198', 'RAPHAEL FERRARI DA SILVA ', 'RAPHAEL FERRARI DA SILVA ', '1414573', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 9793, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 0, NULL, 0),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, NULL, '1307465170', 'FERNANDO BRANCO DA SILVA', 'null', '15545644', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 509, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3663415, NULL),
(1, 2, 2, 1, 2, 2, 1, 1, NULL, 2147483647, 3, '1319330193', 'Jorge Rodrigues da Silva', 'null', '03961716173', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 4009, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 158909, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, NULL, '1329913221', 'LUCAS JUNIOR DA SILVA VICENTE ', 'null', '1263562', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 7849, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2071817, 0),
(1, 2, 2, 1, NULL, 2, 1, 1, NULL, 2147483647, NULL, '13506861662', 'PAULO HENRIQUE SOUZA SANTOS ', 'PAULO HENRIQUE SOUZA SANTOS ', '20118881', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', NULL, 1, 0, '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'senha', NULL, NULL, 'null', NULL, 'null', 'null', NULL, NULL, NULL),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '1355946263', 'VANDERSON DE OLIVEIRA DIAS', 'VANDERSON DE OLIVEIRA DIAS', '1164805', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 7734, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 48376, 0),
(1, 2, 2, 1, NULL, 1, 1, 1, NULL, NULL, NULL, '1402194200', 'HENRIQUE BARROS GOMES', 'HENRIQUE BARROS GOMES', '6683885', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 1, 99000, NULL, NULL, 'senha', NULL, NULL, 'null', 0, 'null', 'null', NULL, NULL, NULL),
(1, 2, 2, 1, 3, 2, 1, 1, NULL, 2147483647, 1, '1413712266', 'RENATO FILHO DA SILVA BOTELHO', 'RENATO FILHO DA SILVA BOTELHO', '21302162', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 11950, 255, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3754855, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '1429848170', 'DYEGO DA CUNHA CLEMENTI', 'null', '1709568', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 6041, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2660700, 0),
(1, 2, 2, 1, 1, 2, 1, 2, NULL, NULL, 1, '14719534830', 'IDENIZIA RIBEIRO DOS SANTOS', 'IDENIZIA RIBEIRO DOS SANTOS', '20433463', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '2037-07-02', 0, 0, 205, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3711103, NULL),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '14767210259', 'LUIS ANTONIO CARDOSO FARIAS', 'null', '146643', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 4813, 255, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2267685, NULL),
(1, 2, 2, 1, NULL, 2, 1, 1, NULL, NULL, NULL, '1485990289', 'DIEMISON DOS SANTOS PEREIRA', 'DIEMISON DOS SANTOS PEREIRA', '1385822', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', NULL, 1, 0, '0000-00-00', 0, 0, 681, NULL, NULL, 'senha', NULL, NULL, 'null', 0, 'null', 'null', 1, 4019201, NULL),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, NULL, '1493822195', 'NIEDSON ALIFE RAMOS DA SILVA', 'null', 'null', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '2042-12-06', 0, 0, 7120, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3802773, 0),
(1, 2, 2, 1, NULL, 2, 1, 1, NULL, NULL, NULL, '1570167222', 'JOSE WILLIAN BENTO DA SILVA', 'JOSE WILLIAN BENTO DA SILVA', '10555455', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', NULL, 1, 0, '0000-00-00', NULL, NULL, 1757, NULL, NULL, 'senha', NULL, NULL, 'null', NULL, 'null', 'null', NULL, 5742106, NULL),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, 3, '1587772124', 'WILAKSON MENDONCA FEITOZA', 'WILAKSON MENDONCA FEITOZA', '1610545-1', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 505, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3408859, NULL),
(1, 2, 2, 1, 1, 2, 1, 2, NULL, NULL, NULL, '1589227271', 'ANDREZA MIRANDA DA SILVA', 'ANDREZA', '6777550', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 7990, 1, 99000, NULL, NULL, 'senha', NULL, NULL, 'null', 0, 'null', 'null', NULL, NULL, NULL),
(1, 2, 2, 1, NULL, 2, 1, 1, NULL, NULL, NULL, '1606014285', 'LUCAS PINHEIRO COSTA', 'LUCAS PINHEIRO COSTA', '1194681', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 9389, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 0, NULL, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '1636688179', 'CELSO JOAQUIM CABREIRA RODRIGUES', 'null', '385065437', '2032-05-06', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 11722, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3419263, 0),
(1, 2, 2, 1, NULL, 2, 1, 2, NULL, NULL, NULL, '1668181517', 'ANDREA ALVES DOS SANTOS SOUZA', 'ANDREA ALVES DOS SANTOS SOUZA', '0943031931', '2031-08-02', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 8137, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 6525727, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, NULL, '172067235', 'FRANCISCO SILVA CARVALHO', 'FRANCISCO', '6086650', '2033-01-03', '0000-00-00', '0000-00-00 00:00:00', 1, 1, 0, '0000-00-00', 0, 0, 6646, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 1010166, 0),
(1, 2, 2, 1, NULL, 4, 1, 1, NULL, NULL, NULL, '1734948540', 'LUIS CARLOS ALVES DE MELO', 'LUIS CARLOS ALVES DE MELO', '1524646', '0000-00-00', '2043-05-02', '0000-00-00 00:00:00', 1, 0, 0, '2043-05-02', 0, 0, 1224, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 0, NULL, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 2, '175582122', 'JOSE ANTONIO ANTUNES', 'JOSE ANTONIO ANTUNES', '1332149', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 1, 1, 0, '0000-00-00', 0, 0, 7082, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3499108, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '1773806165', 'MAURICIO DE FREITAS CASTALDELI FILHO', 'MAURICIO DE FREITAS CASTALDELI FILHO', '1818030-2', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 489, 0, NULL, 'senha', NULL, NULL, 'null', NULL, 'null', 'null', 1, 3090722, NULL),
(1, 2, 2, 1, 2, 1, 1, 1, NULL, NULL, NULL, '1789011132', 'RAFAEL PETINE LEMES', 'RAFAEL PETINE', '16580478', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 1, 0, 0, '0000-00-00', 0, 0, 4814, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2911418, NULL),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, NULL, '1808739116', 'FERNANDO BELMONT DOS SANTOS ', 'null', '448958', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 4873, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2787582, NULL),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, NULL, '1808886178', 'EDSON CARLOS REI DE ALMEIDA', 'null', '13978047', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2819, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3506192, 0),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, NULL, '1835376290', 'DINAEL SILVA SANTOS', 'DINAEL', '280722077888', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 1, 99000, NULL, NULL, 'senha', NULL, NULL, 'null', 172.1, 'null', 'null', NULL, NULL, NULL),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 2, '1851305181', 'JOAO FERNANDO DA SILVA', 'JOAO FERNANDO DA SILVA', '18416276', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 5433, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3617721, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '1875484205', 'RICARDO HENRIQUE GONÇALVES DOS REIS', 'null', '6668241', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2520, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3940761, NULL),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, NULL, '1880435276', 'LUIZ PAULO DA SILVA MORAES', 'null', '1353657', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 5077, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 1556702, NULL),
(1, 2, 2, 1, NULL, 2, 99, 1, NULL, NULL, NULL, '1891157183', 'DEMILSON LOPES MEDEIROS', 'DEMILSON LOPES MEDEIROS', '1742214-0', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 7296, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 0, 0, 0),
(1, 2, 2, 1, NULL, 2, 1, 1, NULL, NULL, NULL, '1952605202', 'MADSON AMORIN PENA', 'MADSON AMORIN PENA', '5306984', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 1, 1, 0, '0000-00-00', 0, 0, 5528, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 4592692, 0),
(1, 2, 2, 1, 1, 2, 6, 1, NULL, NULL, 1, '20142870153', 'ACELINO LUIZ ANTUNES MATOSO', 'LUIZ MATOSO', '492447', '2022-07-05', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2520, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3293074, NULL),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, 1, '2018067117', 'LAERCIO MOTA BARBOSA', 'LAERCIO', '0001440184', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 7153, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3350127, NULL),
(1, 2, 2, 1, 1, 2, 1, 2, NULL, NULL, 3, '2049652178', 'CRISTIANE ARIANE MICHERLE DIEZ PINTO', 'CRISTIANE ARIANE MICHERLE DIEZ PINTO', '001525229', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 1, 3426, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 1724442, NULL),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '2060199123', 'RENATO MIRANDA', 'null', '16587928', '2033-05-08', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 3979, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3627370, NULL),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '20688210287', 'ARNALDO BORGES DA SILVA ', 'null', '1310481', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2520, 255, 0, 'senha', 0, 255, 'null', 0, 'null', 'null', 1, 3692400, NULL),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, 1, '20877625972', 'ORLANDO MENEGHETTI', 'ORLANDO', '1514368', '0000-00-00', '2040-01-04', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 39, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3653395, 0),
(1, 2, 2, 1, 1, 2, 99, 1, NULL, 2147483647, 3, '2090567112', 'THIAGO MENDONCA DE ANDRADE', 'THIAGO MENDONCA DE ANDRADE', '20105991', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 11549, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3807775, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '2093793911', 'APARECIDO SIMPLICIO DOS SANTOS ', 'CIDAO', '67937660', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2520, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2321060, NULL),
(1, 2, 2, 1, 2, 2, 1, 1, NULL, 2147483647, NULL, '2196114243', 'FERNANDO TAIGUARA SANTOS PINHEIRO', 'TAIGUARA', '7075364', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 1, 99000, NULL, NULL, 'senha', NULL, NULL, 'null', 1500, 'null', 'null', NULL, NULL, NULL),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, 1, '2293499197', 'RENAN ALESSANDRO TIEMANN', 'RENAN ALESSANDRO TIEMANN', '17613116', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 178, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3426760, 0),
(1, 2, 2, 1, NULL, 1, 1, 2, NULL, NULL, NULL, '2308313200', 'SAYANNE LIMA DA SILVA', 'SAYANNE LIMA DA SILVA', '7078203', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 1, 99000, NULL, NULL, 'senha', NULL, NULL, 'null', 0, 'null', 'null', NULL, NULL, NULL),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '2354317964', 'UATSON FERREIRA DOS SANTOS', 'null', '60015104', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 39, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2673683, 0),
(1, 2, 2, 1, 1, 2, 99, 1, NULL, NULL, NULL, '2412938121', 'CLEYTON DE OLIVEIRA HEIDRICH', 'CLEYTON DE OLIVEIRA HEIDRICH', '17258383', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 1, 0, 0, '0000-00-00', 0, 0, 1224, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2017300, 0),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, NULL, '2467375145', 'ALLAN JALDI CARDOSO', 'null', '17278716', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 1, 0, 0, '0000-00-00', 0, 0, 8281, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3782701, 0),
(1, 2, 2, 1, NULL, 2, 1, 1, NULL, 2147483647, NULL, '2493622952', 'JEFERSON LUIZ DO PRADO', 'JEFERSON LUIZ DO PRADO', '73600316', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 8839, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 5361955, 0),
(1, 2, 2, 1, 1, 2, 3, 1, NULL, 2147483647, NULL, '2587288177', 'HENUS RICHARDSON MAIA', 'HENUS RICHARDSON MAIA', '19790449', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 12868, 255, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 1600541, 0),
(1, 2, 2, 1, NULL, 1, 1, 1, NULL, NULL, NULL, '2603777246', 'LUCAS MANASFI PEREIRA', 'LUCAS MANASFI PEREIRA', '1147520-0', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', NULL, 1, 0, '0000-00-00', 0, NULL, NULL, NULL, NULL, 'senha', NULL, NULL, 'null', 0, 'null', 'null', 1, 8320661, NULL),
(1, 2, 2, 1, NULL, 3, 1, 2, NULL, NULL, NULL, '2620436290', 'CRISLANE DA SILVA MAGALHAES CRUZ', 'CRISLANE DA SILVA MAGALHAES CRUZ', '4482187', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', NULL, 1, 0, '0000-00-00', 0, NULL, NULL, NULL, NULL, 'senha', NULL, NULL, 'null', 0, 'null', 'null', 1, 7043457, NULL),
(1, 2, 2, 1, NULL, 2, 1, 1, NULL, NULL, NULL, '2626008206', 'GILSON NUNES DE SOUZA', 'GILSON NUNES DE SOUZA', '6340320', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 255, 8367, 255, 0, 'senha', 255, 255, 'null', 0, 'null', 'null', 0, 4303087, 255),
(1, 2, 2, 1, 2, 2, 1, 1, NULL, 2147483647, 3, '26385736806', 'GILMAR DE FREITAS', 'GILMAR DE FREITAS', '575.077', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 1, 0, 0, '0000-00-00', 1800, 0, 1224, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2931645, 0),
(1, 2, 2, 1, NULL, 1, 1, 1, NULL, NULL, NULL, '2663140236', 'TIAGO BATISTA DE LIMA', 'TIAGO BATISTA DE LIMA', '355050', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 6908, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 0, 0, 0),
(1, 2, 2, 1, NULL, 2, 1, 2, NULL, 2147483647, NULL, '2685781250', 'DAIANE LOPES VICENTE ', 'DAIANE LOPES VICENTE ', '1274726', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', NULL, 1, 0, '0000-00-00', 0, NULL, NULL, NULL, NULL, 'senha', NULL, NULL, 'null', 0, 'null', 'null', 1, 6540533, NULL),
(1, 2, 2, 1, NULL, 2, 1, 1, NULL, NULL, NULL, '26892278', 'RAIMUNDO DO NASCIMENTO MOREIRA', 'RAIMUNDO DO NASCIMENTO MOREIRA', '6012425', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 1, 99000, NULL, NULL, 'senha', NULL, NULL, 'null', 0, 'null', 'null', NULL, NULL, NULL),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, NULL, '2738616119', 'FRANCK LUIZ CAVALCANTE', 'FRANCK LUIZ CAVALCANTE', '001567375', '2033-12-05', '0000-00-00', '0000-00-00 00:00:00', 1, 0, 0, '0000-00-00', 0, 0, 1224, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3414588, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '27715105880', 'BENEDITO FABIO RODRIGUES', 'DITO', '27743645X', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 3916, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2590835, 0),
(1, 2, 2, 1, 2, 2, 1, 1, NULL, 2147483647, 2, '27790718851', 'FERNANDO DOS SANTOS MARCHIORI', 'FERNANDO DOS SANTOS MARCHIORI', '29956541-5', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 2000, 0, 2520, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 1711195, NULL),
(1, 2, 2, 1, 2, 2, 1, 1, NULL, NULL, NULL, '2779214147', 'CLEBSON DE ASSIS ZAMONER ', 'null', '19846355', '0000-00-00', '2040-04-06', '0000-00-00 00:00:00', 1, 1, 0, '0000-00-00', 0, 0, 462, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3185447, NULL),
(1, 2, 2, 1, 1, 2, 1, 2, NULL, NULL, NULL, '2810393133', 'JOCIMARA LENE MIRANDA', 'mara ', '19351542', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 8295, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 4042018, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, 1, '2834418101', 'JUNIOR MATOS PASSOS', 'JUNIOR', '1647740', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 1, 0, 0, '0000-00-00', 0, 0, 1224, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3419723, NULL),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, NULL, '292153236', 'MARCELO BARBOSA RODRIGUES', 'MARCELO', '6196059', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 5122.79, 1, 99000, NULL, NULL, 'senha', NULL, NULL, 'null', 0, 'null', 'null', NULL, NULL, NULL),
(1, 2, 2, 1, 1, 1, 1, 2, NULL, NULL, NULL, '2948739101', 'JULIANA LUIZA GUIMARAES BACKES ', 'Juliana', '001758782', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 12617, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3759498, 0),
(1, 2, 2, 1, 2, 4, 1, 1, NULL, NULL, 2, '2986082947', 'CLEZIO FERNANDES GIOMO', 'CLEZIO FERNANDES GIOMO', '7.637.895-9', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '2042-02-04', 1700, 0, 13041, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3542228, 0),
(1, 2, 2, 1, 2, 2, 1, 1, NULL, 2147483647, 2, '300112130', 'LUIZ CARLOS ROCHA DOS SANTOS', 'LUIZ CARLOS ROCHA DOS SANTOS', '14665867', '0000-00-00', '2039-03-02', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 5615, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3172269, 0),
(1, 2, 2, 1, 1, 2, 1, 2, NULL, NULL, 1, '3044812208', 'JANETE CAROLINE MENDES BRAGA', 'JANETE CAROLINE MENDES BRAGA', '13143018', '0000-00-00', '2043-04-02', '0000-00-00 00:00:00', 1, 1, 0, '2043-04-02', 0, 255, 2910, 255, 0, 'senha', 255, 255, 'null', 0, 'null', 'null', 1, 3814406, 0),
(1, 2, 2, 1, 1, 1, 99, 1, NULL, NULL, NULL, '304939196', 'GILMAR APARECIDO DA SILVA VARGAS', 'GILMAR APARECIDO DA SILVA VARGAS', '001290573', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 140182, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3755520, 0),
(1, 2, 2, 1, NULL, 2, 8, 1, NULL, NULL, NULL, '3056098157', 'MURYLLO ALVES OLIVEIRA', 'MURYLLO ALVES OLIVEIRA', '4919746', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 1, 2520, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3762917, NULL),
(1, 2, 2, 1, NULL, 2, 1, 1, NULL, NULL, NULL, '31293233846', 'MURILO ANTONIO FARIA', 'null', '360125712', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 9158, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 0, NULL, 0),
(1, 2, 2, 1, 1, 1, 1, 2, NULL, NULL, 1, '3138417132', 'ANA PAULA BERNARDES BELAO', 'ANA PAULA', '2077989-5', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 11054, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2055753, 0),
(1, 2, 2, 1, NULL, 1, 1, 1, NULL, NULL, NULL, '318214210', 'GIRLEY DORNELES DOS SANTOS', 'GIRLEY DORNELES DOS SANTOS', '1050131', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 1362, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 4149809, 0),
(1, 2, 2, 1, 3, 1, 1, 2, NULL, NULL, NULL, '3217964110', 'Maria Eunice Inacia da Silva', 'Maria', '1703269', '2033-09-01', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 8519, 255, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 1276278, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, 2, '32262175268', 'EMERSON LIMA DE OLIVEIRA', 'EMERSON LIMA DE OLIVEIRA', '189684', '0000-00-00', '2039-01-03', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 5633, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3317276, NULL),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '32401304835', 'LUIS FERNANDO OLIVEIRA DOS SANTOS', 'null', '432375314', '2030-02-05', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2520, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 397589, NULL),
(1, 2, 2, 1, NULL, 1, 1, 2, NULL, NULL, NULL, '32766971220', 'MARIA ELZA CHAGAS CALDAS', 'MARIA ELZA CHAGAS CALDAS FUNC', '2514511', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 1, 99000, NULL, NULL, 'senha', NULL, NULL, 'null', 100, 'null', 'null', NULL, NULL, NULL),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, 2, '33028429888', 'WILLIAM MAXIMO DA FONCECA', 'WILLIAM', '452111006', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 605, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3486385, 0),
(1, 2, 2, 1, 1, 2, 99, 1, NULL, NULL, 1, '3316547177', 'VAGNER DOS SANTOS CARVALHO', 'VAGUIM', '21160520', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2217, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3044245, NULL),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, NULL, '3382202913', 'ROBERTO CRISTIANO POERSCH', 'null', '69249000', '0000-00-00', '2040-04-04', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 7594, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3715872, NULL),
(1, 2, 2, 1, 1, 2, 1, 2, NULL, NULL, 2, '34128174220', 'ANTONIA DAUCIVAN PEREIRA RODRIGUES', 'ANTONIA DANCIVAN PEREIRA RODRIGUES', '137952487', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 1, 1, 0, '0000-00-00', 0, 0, 1011, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2749101, 0),
(1, 2, 2, 1, 1, 1, 1, 2, NULL, NULL, NULL, '3443360181', 'KELLY CRISTHINA CAMARGO DE LIMA', 'KELLY CRISTHINA CAMARGO DE LIMA', '21117942', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', NULL, 1, 0, '0000-00-00', 0, NULL, 475, NULL, NULL, 'senha', NULL, NULL, 'null', 0, 'null', 'null', 1, 4159719, NULL),
(1, 2, 2, 1, 1, 4, 1, 2, NULL, NULL, 1, '35393092172', 'RAQUEL MARQUES ASSUNCAO', 'null', '04899091', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 894, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3767510, 0),
(1, 2, 2, 1, NULL, 2, 1, 1, NULL, NULL, 2, '3591060135', 'GEOVANY CARNEIRO DE CASTRO OLIVEIRA', 'null', '5478619', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 8948, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 0, NULL, 0),
(1, 2, 2, 1, 1, 1, 1, 2, NULL, NULL, NULL, '3607575100', 'LILIANE APARECIDA CARRARA', 'LILIANE APARECIDA CARRARA', '21869111', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 12214, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3860882, 0),
(1, 2, 2, 1, 1, 2, 99, 1, 71, 2147483647, 2, '36159514172', 'GERALDO GUIMARAES ASSUNCAO', 'GERALDO GUIMARAES ASSUNCAO', '04400917', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 1, 1, 0, '0000-00-00', 250, 0, 455, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3378248, NULL),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, 1, '36160776134', 'ELIAS PAIVA SILVA  ', 'ELIAS', '482273', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2520, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2823671, NULL),
(1, 2, 2, 1, NULL, 2, 1, 1, NULL, NULL, NULL, '3666887155', 'JHONATAN WILLIAN RODRIGUES DE SOUZA', 'JHONATAN WILLIAN RODRIGUES DE SOUZA', '21754519', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 11060, 255, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2194525, 0),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, NULL, '367585235', 'WELITON SANTANA XAVIER', 'Weliton', '1054522', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 13052, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 733144, 0),
(1, 2, 2, 1, 2, 2, 1, 1, NULL, 2147483647, NULL, '3789374997', 'SAMUEL RODRIGUES DE MELO', 'SAMUEL', '76215910', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 8198, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 4166281, NULL),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, NULL, '3796220177', 'RENATO GOMES DE SOUSA', 'null', '001769919', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 4537, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3547167, 0),
(1, 2, 2, 1, NULL, 1, 1, 1, NULL, NULL, NULL, '3834474371', 'RAFAEL DOS SANTOS SILVA', 'RAFAEL DOS SANTOS SILVA', '6743153', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, NULL, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 6129724, 0),
(1, 2, 2, 1, NULL, 2, 1, 1, NULL, NULL, NULL, '3851485181', 'LEOMAR TONSACH ALEXANDRE', 'LEOMAR TONSACH ALEXANDRE', '2263783-4', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, NULL, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 0, NULL, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '3883527106', 'RICK ASERI SÁ DA SILVA', 'null', '001774752', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 6312, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3802861, NULL),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '3913745165', 'DAVID ARCANGELO ARRUDA', 'DAVID ARCANGELO ARRUDA', '18331521', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 202, 255, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2202235, NULL),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, NULL, '3920106156', 'DANILO SOUZA CARVALHO', 'DANILO SOUZA CARVALHO', '20694520', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 6698, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2779792, 0),
(1, 2, 2, 1, 1, 1, 1, 2, NULL, NULL, NULL, '3966316145', 'ERIKA PAULA BASILIO', 'ERIKA PAULA BASILIO', '2351785-9', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 5466, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 62826, 0),
(1, 2, 2, 1, 1, 2, 1, 2, NULL, 2147483647, NULL, '3968768116', 'MEIRI TAUHANE NUNES', 'null', '1954936-9', '2033-11-03', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 255, 6115, 1, 0, 'senha', 255, 255, 'null', 0, 'null', 'null', 1, 3711608, NULL),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, NULL, '39845800530', 'DAGMAR ALVES PORTELA FILHO', 'null', '2294891', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 6440, 255, 0, 'senha', 255, 255, 'null', 0, 'null', 'null', 1, 3705726, NULL),
(1, 2, 2, 1, 2, 1, 1, 2, NULL, NULL, 1, '3993244109', 'MAYDA SULIMACTA LIMA PEREIRA', 'null', '22191300', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2910, 255, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2929691, 0),
(1, 2, 2, 1, 1, 1, 1, 2, NULL, NULL, NULL, '4008004114', 'BRUNA SANTANA DOS REIS', 'BRUNA SANTANA REIS', '1789864-1', '2033-03-05', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 9311, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3183279, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, 2, '40156141', 'ANDERSON ALVES GUIMARAES', 'ANDERSON ALVES GUIMARAES', '00138818', '2031-02-06', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '2039-03-07', 0, 0, 175, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2806766, 0),
(1, 2, 2, 1, 2, 2, 1, 1, NULL, 2147483647, 2, '40662748115', 'JOAO DE DEUS OLIVEIRA NUNES', 'JOAO DE DEUS OLIVEIRA NUNES', '625198 SSP/MT', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2520, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 1325130, NULL),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, NULL, '40840743149', 'ROBERTO RIVELINO DE SOUZA ', 'ROBERTO RIVELINO DE SOUZA ', '529703', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 8645, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3903920, 0),
(1, 2, 2, 1, 2, 2, 1, 1, NULL, 2147483647, 2, '40859363287', 'MARCIO ALVES DOS SANTOS', 'MARCIO ALVES DOS SANTOS', '459512', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 5311, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 610292, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 2, '40917401204', 'EDSON PEREIRA RAMOS', 'EDSON PEREIRA RAMOS', '427675', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 1, 2311, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3406109, 0),
(1, 2, 2, 1, NULL, 1, 1, 1, NULL, NULL, NULL, '4116099120', 'JONES APARECIDO OLIVEIRA DO NASCIMENTO', 'JONES APARECIDO OLIVEIRA DO NASCIMENTO', '2500985-0', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 7017, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 0, 3974478, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 2, '41181700191', 'CLOVIS NASCIMENTO DOS SANTOS', 'CLOVES NASCIMENTO DOS SANTOS', '558969', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 14278, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3089342, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, NULL, '4124733135', 'FLAVIO ALVES DA SILVA', 'null', '23716797', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 1364, 255, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3369916, 0),
(1, 2, 2, 1, NULL, 2, 1, 1, NULL, NULL, NULL, '4127771186', 'CLAUDIO HUMBERTO AFONSO DA SILVA', 'CLAUDIO HUMBERTO AFONSO DA SILVA', '2487690', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', NULL, 1, 0, '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'senha', NULL, NULL, 'null', NULL, 'null', 'null', NULL, NULL, NULL),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 2, '41402715900', 'GERONIMO BORGES NETO', 'GG', '33616996', '0000-00-00', '2039-07-04', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 9202, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3667874, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '414596528', ' MYCHELL SILVA VILAS BOAS', 'null', '0784703744', '2030-06-07', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2272, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 491820, NULL),
(1, 2, 2, 1, 1, 2, 1, 2, NULL, 2147483647, 2, '41873777272', 'MARIA LUCIA DE OLIVEIRA ANDRADE', 'MARIA LUCIA DE OLIVEIRA ANDRADE', '403.413-RO', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 1, 1, 0, '0000-00-00', 5000, 0, 6723, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 1799487, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, 2, '42148197215', 'FRANCISCO LAERCIO FLORENCIO DO NASCIMENTO', 'FRANCISCO LAERCIO FLORENCIO DO NASCIMENTO', '318993', '0000-00-00', '2038-01-04', '0000-00-00 00:00:00', 1, 1, 0, '0000-00-00', 0, 0, 9259, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3918174, 0),
(1, 2, 2, 1, 2, 2, 1, 1, NULL, NULL, NULL, '4216450164', 'WILIAN DA SILVA ARAUJO', 'WILIAN DA SILVA ARAUJO', '23155299', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 4760, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 4004953, 0),
(1, 2, 2, 1, NULL, 2, 1, 1, NULL, 2147483647, 2, '4222438928', 'FABIO FRANCISCO DA SILVA', 'FABIO FRANCISCO DA SILVA', '91937832', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '2043-04-06', 0, 0, 6323, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 35749, 0),
(1, 2, 1, 1, 2, 2, 1, 1, NULL, NULL, NULL, '42412498253', 'LUIZ CELIO NETO BEZERRA', 'null', '2851759', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 5109, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3712488, NULL),
(1, 2, 2, 1, 1, 2, 99, 1, NULL, NULL, 1, '4241354181', 'MATHEUS RICARDO RAMOS', 'CABEçA', '21782741', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 4695, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2910834, NULL),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, 3, '427231167', 'DIEGO QUINTINO FRANCA', 'DIEGO QUINTINO FRANCA', '1418206-8', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2520, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3640983, NULL),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, 2, '43226663100', 'EDNILDES ALVES ROSA', 'EDENILDES ALVES ROSA', '704.406/MT', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '2037-07-05', 0, 0, 13408, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 693367, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '4361800146', 'EDJUNIOR DOS SANTOS DOMINGOS', 'EDJUNIOR DOS SANTOS DOMINGOS', '23425628', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 255, 7613, 255, 0, 'senha', 255, 255, 'null', 0, 'null', 'null', 1, 3858251, 0),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, NULL, '4466202117', 'ALLAN FERREIRA MOREIRA', 'null', '20957157', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 9524, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 439347, 0),
(1, 2, 2, 1, 2, 2, 1, 1, 71, NULL, 2, '4500844937', 'LUCIANO KOCHAN', 'LUCIANO KOCHAN', '4.512.054', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 1, 1, 0, '0000-00-00', 570, 0, 487, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3433403, NULL),
(1, 2, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '45068178187', 'SIMONE TEREZINHA DE MELO', 'null', '2810283', '2025-11-04', '0000-00-00', '0000-00-00 00:00:00', NULL, NULL, 0, '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'senha', NULL, NULL, 'null', NULL, 'null', 'null', NULL, NULL, NULL),
(1, 2, 2, 2, 1, 2, 1, 1, NULL, NULL, 1, '45748756234', 'TARCILO PEREIRA DOS SANTOS', 'TARCILO PEREIRA DOS SANTOS', '452316', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 4139, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3811795, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '46164332249', 'FRANCISCO NERI DA SILVA', 'null', '0256771', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2520, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3804036, NULL),
(1, 2, 2, 1, 1, 1, 1, 2, NULL, NULL, NULL, '4643013192', 'JESSICA SAMPATTI LEITE', 'JESSICA SAMPATTI LEITE', '1863259', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 208, 255, NULL, 'senha', NULL, NULL, 'null', NULL, 'null', 'null', 1, 824719, NULL),
(1, 2, 2, 1, 2, 2, 8, 1, NULL, 2147483647, 2, '46865322134', 'FERNANDO RICARDO MORETTO', 'FERNANDO', '10086048', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 1, 1, 0, '0000-00-00', 0, 0, 752, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 398508, 0),
(1, 2, 2, 1, NULL, 1, 1, 1, NULL, NULL, NULL, '4779400139', 'RHAUL DAMASIO SILVA', 'RHAUL ', '23968907', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 3925, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 4310572, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, 3, '47905930297', 'SAMUEL DE MELO RAIMUNDO', 'SAMUEL DE MELO RAIMUNDO', '732163', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2520, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 1275607, NULL),
(1, 2, 2, 1, NULL, 1, 1, 2, NULL, NULL, NULL, '4803333190', 'NUBIA LOPES LIMA', 'nubia', '33530840', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 11991, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3254930, 0),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, NULL, '48058106', 'LEANDRO FARIA DE MORAIS', 'LEANDRO FARIA DE MORAIS ', '4572569', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 5385, 255, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3658935, 0),
(1, 2, 2, 1, NULL, 2, 1, 2, NULL, 2147483647, NULL, '4895040518', 'MARCIA DIAS DA SILVA', 'MARCIA DIAS DA SILVA', '1552809536', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', NULL, 0, 6271, 0, 0, 'senha', 0, 0, 'null', NULL, 'null', 'null', 0, NULL, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, 2, '49195719172', 'NESVAL DE SOUZA BARRETO JUNIOR', 'NESVAL DE SOUZA BARRETO JUNIOR', '578823', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 7446, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3817348, 0),
(1, 2, 2, 1, NULL, 4, 1, 1, NULL, NULL, NULL, '4944661118', 'BRUNO DE FREITAS MACIEL', 'BRUNO DE FREITAS MACIEL', '1828315-2', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, NULL, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 6487156, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 2, '49931016272', 'ADENILTON APARECIDO DOS SANTOS', 'ADENILTON APARECIDO DOS SANTOS', '510.106', '0000-00-00', '2039-06-02', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2520, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2763239, NULL),
(1, 2, 1, 1, 1, 1, NULL, 1, NULL, NULL, 1, '5040562128', 'LUCAS MENDONCA ARAUJO DE SOUZA', 'ABACAXI', '18858163', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 8871, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3762302, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 2, '50757296904', 'JOSE ROBERTO CORCINE', 'JOSE ROBERTO CORCINE', '3.752.384.4', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 2000, 0, 850, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3628236, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, 2, '51171813104', 'JOSE CARDEAL DE SOUZA', 'JOSE CARDEAL DE SOUZA', '602850', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 5000, 0, 2520, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 506254, NULL),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, 2, '516479156', 'FLAVIO DE AGUIAR SILVA', 'FLAVIO DE AGUIAR SILVA', '15534090', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 2500, 1, 2775, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3614233, NULL),
(1, 2, 2, 1, 1, 2, 8, 1, NULL, 2147483647, 2, '51889722120', 'MANOEL JOSE SIQUEIRA', 'Manoel', '686367', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 1000, 0, 6140, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3637222, 0),
(1, 2, 2, 1, 2, 2, 1, 1, NULL, 2147483647, 2, '51890739120', 'IVALDO GONCALVES NORONHA', 'IVALDO GONCALVES NORONHA', '000609267', '2027-08-04', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 655, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2881560, 0),
(1, 2, 2, 1, 3, 2, 1, 1, NULL, 2147483647, 1, '52060365287', 'SOLIMAR SANTOS DE MORAES ', 'null', '4367683', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 4802, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3454182, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 1, '52736237900', 'ADÃO BORGES SOBRINHO', 'ADãO', '38671677', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 12946, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3199366, 0),
(1, 2, 2, 1, 1, 2, 99, 1, NULL, NULL, 1, '52934306968', 'NELSON APARECIDO BEVILAQUA ', 'NELSON BEVILAQUA', '869064', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2520, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3758462, NULL),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, NULL, '53148266153', 'JAIR APARECIDO DE SÁ ', 'SAMUCA', '579014', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 5737, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3276, NULL),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '5340460100', 'JOALISON CAMARGO DE CASTRO', 'JOALISON CAMARGO DE CASTRO', '25165330', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 1531, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3763249, 0),
(1, 2, 2, 1, 1, 1, 1, 2, NULL, NULL, NULL, '5439730184', 'EDILAINE CRISTINA DA ROCHA', 'EDILAINE CRISTINA DA ROCHA', '25832832', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2201, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2903370, NULL),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, NULL, '5444907119', 'MARCOS ANTONIO CENTURION AREVALO', 'null', '001890099', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 255, 7627, 255, 0, 'senha', 255, 255, 'null', 0, 'null', 'null', 1, 3869381, NULL),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '5463228671', 'ALICINIO MARQUES DA CUNHA', 'null', '12625774', '0000-00-00', '2040-12-09', '0000-00-00 00:00:00', 1, 1, 0, '0000-00-00', 0, 0, 472, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3031175, 0),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, NULL, '5471771192', 'THALISSON ARAN LIMA', 'null', '001785964', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 1, 12, 1, 0, 'senha', 255, 255, 'null', 0, 'null', 'null', 1, 98551, NULL),
(1, 2, 2, 1, NULL, 1, 1, 2, NULL, NULL, NULL, '5482387585', 'ARIELLE SANTOS PEDREIRA', 'ARIELLE SANTOS PEDREIRA', '1597531987', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 140035, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 6525749, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 1, '558879292', 'Deverson Luiz galbiati ceratti', 'Ceratti', '2291062', '0000-00-00', '2042-08-03', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 201, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 0, 0, 0),
(1, 2, 2, 1, 2, 2, 9, 1, NULL, 2147483647, 1, '56832672187', 'ADELVANIO GOMES GUIMARAES', 'ADELVANIO GOMES GUIMARAES', '12314242', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 1681, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3691163, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '5698092150', 'JEAN CARLOS GOMES DOS PASSOS', 'PASSOS', '1941460', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 255, 12794, 255, 0, 'senha', 255, 255, 'null', 0, 'null', 'null', 1, 628524, 0),
(1, 2, 2, 1, NULL, 1, 1, 2, NULL, NULL, NULL, '5722190160', 'BEATRIZ SANTOS KROETZLER', 'BEATRIZ SANTOS KROETZLER', '26660199', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 11611, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 4626993, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 1, '57276862100', 'CLEBER CESAR SILVA', 'CLEBER', '663696 SSPMS', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '2037-12-08', 0, 0, 2520, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2901696, NULL),
(1, 2, 2, 1, NULL, 2, 1, 2, NULL, NULL, 1, '5761198142', 'NAIARA MICAELA AGUERO FLORENTIN', 'null', '2036365', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 178, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 0, NULL, 0),
(1, 2, 2, 1, 1, 2, 1, 2, NULL, NULL, NULL, '57743282287', 'VALDIRENE DO SOCORRO CAMPELO', 'VALDIRENE DO SOCORRO CAMPELO', '2982410', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 1, 99000, NULL, NULL, 'senha', NULL, NULL, 'null', 0, 'null', 'null', NULL, NULL, NULL),
(1, 2, 2, 1, NULL, 1, 1, 2, NULL, NULL, NULL, '5779691533', 'MAIARA DE MELO PIRES', 'MAIARA DE MELO PIRES', '1536286931', '2034-06-02', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 1697, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 6525883, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 2, '57989737272', 'ODENILTON GODINHO MACHADO', 'RAIMUNDA BATISTA DE ARAUJO', '10363610', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 1817, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 1561986, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 2, '58025197115', 'ROBERTO PROENCE', 'ROBERTO PROENCE', '732271', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 1000, 0, 5559, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3354867, 0),
(1, 2, 2, 1, NULL, 2, 1, 1, NULL, NULL, NULL, '5822107125', 'WESLEY SOUZA LIMA', 'WESLEY SOUZA LIMA', '26629666', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', NULL, 1, 0, '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'senha', NULL, NULL, 'null', NULL, 'null', 'null', NULL, NULL, NULL),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 2, '58286519191', 'JOSE RONILDO DA SILVA', 'JOSE', '695354', '0000-00-00', '2039-04-03', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 1, 0, 5240, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3646762, 0),
(1, 2, 1, 1, 1, 2, NULL, 1, NULL, 2147483647, NULL, '58382151', 'ADAILTON GREGORIO DE ALMEIDA', 'ADAILTON GREGORIO DE ALMEIDA', '15144844', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 140248, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3014922, 0),
(1, 2, 1, 1, NULL, 1, NULL, 2, NULL, NULL, NULL, '5856239539', 'thamires da silva pinheiro', 'mimi', '1301238708', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', NULL, 1, 0, '0000-00-00', 0, NULL, NULL, NULL, NULL, 'senha', NULL, NULL, 'null', 0, 'null', 'null', 1, 6525917, NULL),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 1, '592807193', 'JOAQUIM MARTINS DA SILVA NETO', 'null', '346.513', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2750, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 1634611, 0),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, NULL, '59315857291', 'OZIMAR DA SILVA NASCIMENTO', 'null', '273852', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 3309, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3657028, NULL),
(1, 2, 2, 1, 1, 2, 2, 1, NULL, NULL, NULL, '597781214', 'CASSIO PAULO RIBEIRO ALBANO', 'null', '1172536', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2520, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3618871, NULL),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 1, '60034165215', 'MARCOS BORGES MARTINES', 'MARCOS', '563340 SSPRO', '2028-04-05', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 1, 2520, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3841571, NULL);
INSERT INTO `pessoa` (`idtipopessoa`, `idtipocontribuinte`, `idtipocadastro`, `idsituacaopessoa`, `idtiporesidencia`, `idtipoestadocivil`, `idtipoocupacao`, `idtiposexo`, `idgrupo`, `idconjuge`, `idtipolimite`, `cnpj_cpf`, `nome`, `nomefantasia`, `cce_rg`, `datacriacao`, `datacadastro`, `dataalteracao`, `fornecedor`, `cliente`, `cpfgerado`, `ultimaconsultaspc`, `valorlimitecredito`, `gerarboleto`, `idusuario`, `atualizarcadastro`, `idnaturezaretencaofonte`, `chavemd5`, `aposentado`, `pensionista`, `inscricaosuframa`, `limitecreditoadicional`, `inscricaomunicipal`, `apelidoftp`, `aceite`, `identificador`, `emancipado`) VALUES
(1, 2, 2, 1, 1, 2, 1, 2, NULL, 2147483647, NULL, '6032191109', 'CARINE REZENDE DE SOUZA', 'CARINE REZENDE DE SOUSA', '27528901', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 511, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 144403, 0),
(1, 2, 1, 1, 1, 2, 1, 1, NULL, NULL, 1, '60333448200', 'DANIEL ALMEIDA PIRES', 'DANIEL ALMEIDA PIRES', '651817', '2029-04-05', '0000-00-00', '0000-00-00 00:00:00', 1, 1, 0, '0000-00-00', 1000, 0, 768, 0, 0, 'senha', NULL, NULL, 'null', NULL, 'null', 'null', 1, 3013980, NULL),
(1, 2, 2, 1, 2, 4, 99, 1, 71, NULL, 2, '60424982153', 'ADILZA ANTONIA DOS SANTOS', 'ADILZA ANTONIA DOS SANTOS /CARTAO GAZIN', '09232826', '0000-00-00', '2038-07-05', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 3754, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3535841, 0),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, NULL, '6061562918', 'DIOGO TAGLIATTI AMADEU', 'null', '79170259', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2520, 255, 0, 'senha', 255, 255, 'null', 0, 'null', 'null', 1, 3564295, NULL),
(1, 2, 2, 1, 2, 2, 1, 1, NULL, NULL, 2, '60834820110', 'GILMAR DE CASTRO', 'ROSILENE CAMPOS PANHAN', '632979', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2520, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2418665, NULL),
(1, 2, 2, 1, 1, 2, 1, 2, NULL, 2147483647, NULL, '61100200282', 'MARINALVA SOUSA SODRE', 'MARANALVA', '3359159', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 1, 99000, NULL, NULL, 'senha', NULL, NULL, 'null', 0, 'null', 'null', NULL, NULL, NULL),
(1, 2, 2, 1, 2, 2, 1, 2, NULL, NULL, NULL, '61286508215', 'NORMA LUCIA UCHOA DE OLIVEIRA', 'NORMA', '3175901.0', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 1, 99000, NULL, NULL, 'senha', NULL, NULL, 'null', 15000, 'null', 'null', NULL, NULL, NULL),
(1, 2, 2, 1, 1, 1, 3, 1, NULL, NULL, 2, '61495840204', 'ENEIAS PAULO ARAUJO LACERDA', 'ENEIAS PAULO ARAUJO LACERDA', '0270785', '2029-02-04', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 10, 0, 8133, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3795402, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 2, '61499129220', 'RICARDO  ROQUE CORREIA', 'RICARDO ROQUE CORREIA', '588413', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 39, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3955375, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, 2, '62378376200', 'OSEIAS ELER  SUDARIO', 'OSEIAS ELER SUDARIO', '579630', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2804, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3255860, 0),
(1, 2, 2, 1, 1, 1, 99, 1, NULL, NULL, NULL, '62681818168', 'EVERTON BENEDITO FERREIRA RAMOS', 'null', '09872558', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 1, 2117, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3755516, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '63175711200', 'WAGNER AVELINO MARTINS', 'null', '273962516', '0000-00-00', '2041-07-05', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 8579, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3844067, 0),
(1, 2, 2, 1, 1, 2, 8, 1, NULL, 2147483647, 1, '639388124', 'ANDERSON DE SOUZA NUNES', 'DIDA', '02949081092', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 1826, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3616369, 0),
(1, 2, 1, 1, 1, 1, 1, 1, NULL, NULL, NULL, '64151581200', 'MARCIO KLEBER SOUZA E SILVA', 'MARCIO KLEBER SOUZA E SILVA', '2869221', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 255, 731, 1, 0, 'senha', 255, 255, 'null', 0, 'null', 'null', 1, 3774077, NULL),
(1, 2, 2, 1, 1, 2, 8, 1, NULL, NULL, 2, '64561933204', 'AMILTON APARECIDO SALES', 'null', '614957', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 1500, 0, 5966, 255, 0, 'senha', 1, 0, 'null', 0, 'null', 'null', 1, 3682365, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 1, '64754618220', 'GESSER BEZERRA DE SOUSA BRASIL', 'GESSER', '1497188', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 5545, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2579712, NULL),
(1, 2, 2, 1, 2, 1, 1, 1, NULL, NULL, NULL, '650799224', 'LUCIMARIO JOSE GALDINO', 'null', '6276365', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 7369, 255, 0, 'senha', 255, 255, 'null', 0, 'null', 'null', 1, 3678971, NULL),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '65091817204', 'JOSE SILVA DE MORAIS', 'null', '3614889', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 1, 1, 0, '0000-00-00', 0, 0, 2520, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 1829795, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, 2, '65224990106', 'HELIO BEIA FRANCISCATO', 'HELIO BEIA FRANCISCATO', '970.356', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 7088, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3891172, 0),
(1, 2, 2, 1, 1, 2, 1, 2, NULL, NULL, 3, '65297083249', 'SUELANIS MARIA SILVA COSTA', 'SUELANIS MARIA SILVA COSTA', '000651128', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 8510, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3116319, NULL),
(1, 2, 2, 2, 1, 1, 1, 1, NULL, NULL, 1, '6555255641', 'FRANCISCO MARTINS NETO', 'null', '13128255', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 178, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 4432438, 0),
(1, 2, 1, 1, 1, 2, 1, 1, NULL, NULL, NULL, '65714008200', 'JOSE CARLOS DA COSTA PEREIRA', 'JOSE CARLOS DA COSTA PEREIRA', '573043', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 9331, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3840817, 0),
(1, 2, 2, 1, NULL, 1, 1, 1, NULL, NULL, NULL, '658115260', 'LUCAS LUAN MIRANDA', 'LUCAS LUAN MIRANDA ', '1087502', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 14164, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 5524669, 0),
(1, 2, 2, 1, 1, 2, 10, 1, NULL, 2147483647, 2, '66046882249', 'RONALDO SILVA DA COSTA', 'RONALDO', '726632 SSP/RO', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '2044-03-07', 0, 0, 1179, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 1648234, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 2, '66465540215', 'LEDIMAR FREITAS BARBOSA', 'LEDIMAR FREITAS BARBOSA', '688919', '2029-11-06', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 7342, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 365115, 0),
(1, 2, 2, 1, 2, 1, 1, 1, NULL, NULL, 2, '66547709272', 'ROGERIO FRANCISCO DOS SANTOS', 'ROGERIO', '681770', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 6416, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3717462, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '66618339200', 'FRANCEILDO LEANDRO FRANCA', 'FRANCEILDO LEANDRO FRANCA', '0319329', '0000-00-00', '2044-07-05', '0000-00-00 00:00:00', 0, 1, 0, '2044-07-05', 0, 0, 731, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3286216, NULL),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, NULL, '66771196100', 'REGINALDO CORTEZ DE PAULA', 'REGINALDO CORTEZ DE PAULA', '825127', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2520, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 1816497, NULL),
(1, 2, 1, 1, 1, 2, NULL, 1, NULL, NULL, NULL, '66939011234', 'ELIÉZIO OLIVEIRA DE SOUSA', 'DEDEU', '362306', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 464, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3403899, NULL),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '66948983200', 'RODRIGO DE BRITO SOUSA', 'RODRIGO DE BRITO SOUSA', '4224736', '2030-08-03', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 8766, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 0, 0, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 2, '67692435200', 'ODIMAR FERREIRA DE SOUZA JUNIOR', 'ODIMAR FERREIRA DE SOUZA JUNIOR', '684511', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 1, 0, 0, '0000-00-00', 1, 0, 8281, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3591097, 0),
(1, 2, 2, 1, NULL, 2, 1, 1, NULL, NULL, NULL, '6839281124', 'WEVERSON ALEXANDRE PENA', 'WEVERSON ALEXANDRE PENA', '25715275', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 894, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 0, 6511068, 0),
(1, 2, 2, 1, NULL, 2, 1, 1, NULL, NULL, NULL, '68543026253', 'MARLON SOUZA DA SILVA', 'MARLON SOUZA DA SILVA', '2999284', '2028-05-02', '0000-00-00', '0000-00-00 00:00:00', NULL, 1, 0, '0000-00-00', 0, NULL, NULL, NULL, NULL, 'senha', NULL, NULL, 'null', 0, 'null', 'null', 1, 6725898, NULL),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, NULL, '68719051204', 'SALOMAO FELICIO GUARIM', 'SALOMAO FELICIO GUARIM', '842103', '0000-00-00', '2042-11-04', '0000-00-00 00:00:00', 0, 1, 0, '2042-11-04', 0, 0, 9793, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3613719, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, 1, '68739796272', 'ELCIO RODAMES ZANETTI', 'ELCIO RODAMES ZANETTI', '4331726', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 178, 255, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3265791, 0),
(1, 2, 2, 1, 1, 4, 1, 2, NULL, NULL, 1, '68798458272', 'SELMA ATUNIA DOS SANTOS GUSMAO', 'null', '3875338', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 1, 1, 0, '0000-00-00', 0, 0, 9797, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3321716, 0),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, NULL, '68895038134', 'MARCELO DOS SANTOS GROCHEVISKI', 'MARCELO DOS SANTOS GROCHEVISKI', '10666052', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 12383, 255, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 1996994, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, 1, '68910991291', 'ALESSANDRO PEREIRA DO NASCIMENTO', 'null', '3762152', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 1, 1, 0, '0000-00-00', 0, 0, 4449, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3173791, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 3, '69016372172', 'ADRIANO PETERSON DA SILVA', 'ADRIANO PETERSON DA SILVA', '922433', '2028-09-09', '0000-00-00', '0000-00-00 00:00:00', 1, 0, 0, '0000-00-00', 0, 0, 2191, 0, 0, 'senha', NULL, NULL, 'null', NULL, 'null', 'null', 1, 2636974, NULL),
(1, 2, 2, 1, NULL, 2, 1, 1, NULL, NULL, NULL, '69077991115', 'MARCIO XAVIER DOS SANTOS', 'MARCIO XAVIER DOS SANTOS', '11164573', '0000-00-00', '2044-07-08', '0000-00-00 00:00:00', 0, 1, 0, '2044-07-08', 0, 0, 2123, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 0, NULL, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 2, '69469652134', 'ADEMILSON CIRINO ALVES', 'ADEMILSON CIRINO ALVES', '11815027', '2028-12-06', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 3000, 0, 4466, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3630891, 0),
(1, 2, 2, 1, 1, 5, 1, 1, NULL, NULL, NULL, '69531676100', 'CARLOS ALESSANDRO CORREA DOS SANTOS', 'null', '1020122', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 3836, 255, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3517480, NULL),
(1, 2, 2, 1, 1, 2, 1, NULL, NULL, NULL, NULL, '69552304253', 'JANETY VITORIA RODRIGUES DA SILVA', 'JANETY VITORIA RODRIGUES DA SI', '3585455.0', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 1, 99000, NULL, NULL, 'senha', NULL, NULL, 'null', 0, 'null', 'null', NULL, NULL, NULL),
(1, 2, 2, 1, 2, 2, 1, 1, NULL, NULL, 2, '69594139234', 'ADEMAR ALENCAR JARDIM JUNIOR', 'ADEMAR ALENCAR JARDIM JUNIOR', '268093', '2030-08-01', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 7563, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3178421, NULL),
(1, 2, 2, 1, 1, 2, 99, 2, NULL, NULL, NULL, '69792143220', 'RANNIELLY CAMARA DO NASCIMENTO', 'RANNI', '4350904', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 5251.89, 1, 99000, NULL, NULL, 'senha', NULL, NULL, 'null', 0, 'null', 'null', NULL, NULL, NULL),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, NULL, '69802262153', 'JUNIOR CEZAR MARTINS BARCELOS', 'JUNIOR CEZAR MARTINS BARCELOS', '1212460-5', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 9688, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3168654, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 1, '70077002253', 'ANDRE LUIZ GONCALVES', 'ANDRE LUIZ GONCALVES', '736908', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 750, 0, 2520, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 1752260, NULL),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '70316151190', 'CARLOS PEREIRA LEITE', 'CARLOS PEREIRA LEITE', '26020971', '2035-03-04', '0000-00-00', '0000-00-00 00:00:00', 1, 0, 0, '0000-00-00', 0, 0, 39, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 4179964, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 2, '70410062120', 'WENDER GOMES LOPES', 'WENDER GOMES LOPES', '4140643', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '2039-04-02', 0, 0, 2123, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2273173, 0),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, 1, '704536242', 'FRANCISCO BATISTA DE PAULO', 'Batista', '6391096', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 12303, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3022205, 0),
(1, 2, 2, 1, NULL, 1, 1, 1, NULL, NULL, NULL, '70578194120', 'JADSON HORACIO DO VALE', 'JADSON HORACIO DO VALE', '6516240', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', NULL, 1, 0, '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'senha', NULL, NULL, 'null', NULL, 'null', 'null', NULL, NULL, NULL),
(1, 2, 2, 1, NULL, 1, 8, 1, NULL, NULL, NULL, '70778124134', 'WILLIAN FREITAS DA SILVA', 'WILLIAN FREITAS DA SILVA', '001031506', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 14620, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 4037820, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, 3, '70988951215', 'LENIO LEMOS BRAGA', 'LENIO LEMOS BRAGA', '736824', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 1, 2520, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2967900, NULL),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 1, '71113509287', 'JUCELINO E  FRANCA NUNES', 'null', '709568', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 167, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3917639, 0),
(1, 2, 2, 1, 1, 2, 99, 1, NULL, NULL, 2, '71233679287', 'OZIEL DA SILVA', 'OZIEL DA SILVA', '737.289', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 6444, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3888650, NULL),
(1, 2, 2, 1, 1, 2, 1, 2, NULL, 2147483647, 3, '71311866272', 'ANDREIA CABRAL DE BRITO', 'ANDREIA CABRAL DE BRITO', '708660', '0000-00-00', '2039-11-09', '0000-00-00 00:00:00', 0, 1, 0, '2039-11-09', 0, 0, 11969, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3541816, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 2, '71651284253', 'LYS  SANTOS', 'BISCOITO ', '704248', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 1, 0, 845, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3758461, 0),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, 2, '71713123215', 'JUARI GOLLO', 'JUARI GOLLO', '685765', '2030-01-03', '0000-00-00', '0000-00-00 00:00:00', 1, 1, 0, '0000-00-00', 0, 0, 782, 0, 0, 'senha', 0, NULL, 'null', NULL, 'null', 'null', 1, 3231882, NULL),
(1, 2, 2, 1, 2, 2, 1, 1, NULL, NULL, 2, '71739564987', 'ADEMILSON BUZETTI', 'ADEMILSON BUZETTI', '5994570-0', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 1, 0, 0, '0000-00-00', 0, 0, 1224, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3827786, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 1, '72254165100', 'LUCIANO VIEIRA MATOS', 'LUCIANO VIEIRA MATOS', '1.365.259-1', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 3807, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3775553, NULL),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '72282240197', 'RAIMUNDO FERNANDES CARVALHO', 'null', '148742720006', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 7081, 255, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3891006, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, NULL, '72576839215', 'LUIS CARLOS FONTINELE DA SILVA', 'LUIS CARLOS FONTINELE DA SILVA', '364885', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 680, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2645663, NULL),
(1, 2, 2, 1, 2, 2, 9, 1, 73, 2147483647, 2, '72684410968', 'LUIS FERNANDO CIONI', 'LUIS FERNANDO SIONE', '23830581', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 2000, 0, 8300, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3906132, 0),
(1, 2, 2, 1, 1, 1, 99, 1, NULL, NULL, NULL, '73267880220', 'FABRICIO DE ARAUJO SANTOS', 'null', '3724099', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 4812, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 144808, NULL),
(1, 2, 2, 2, 1, 1, 1, 1, NULL, NULL, 1, '73386774172', 'RODRIGO MARTINS LIRA', 'null', '1493416', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 11814, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3600766, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '73675741168', 'EDSON APARECIDO DOS SANTOS', 'null', '15542912', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 11839, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3261014, 0),
(1, 2, 2, 1, 2, 2, 8, 1, NULL, 2147483647, 2, '73705578120', 'WESLEY HAINZENREDER SILVA', 'Wesley O Melhor do Brasil', '1887750-8', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 1, 0, 2520, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3674723, NULL),
(1, 2, 2, 1, 4, 2, 99, 1, NULL, NULL, 3, '737108908', 'ANDRE FERNANDO DE ARAUJO', 'ANDRE FERNANDO DE ARAUJO', '64611798', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 1, 2520, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3658806, NULL),
(1, 2, 2, 1, 1, 2, 8, 1, NULL, 2147483647, 2, '73768316220', 'WILKER REGINALDO MACHADO', 'null', '750667', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 6200, 0, 807, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3319796, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, NULL, '7395363973', 'RAFAEL ANDREW FAVARO', 'null', '102308158', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 5950, 255, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2826369, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 1, '74747770291', 'RONIE RONALDO FELIX DA SILVA', 'RONNY', '784886', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2520, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 1113824, NULL),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, 2, '74887050259', 'MICHELSON MOISES DA SILVA MESSIAS', 'MICHELSON MOISES DA SILVA MESSIAS', '344151', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 7875, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3523705, 0),
(1, 2, 2, 1, 2, 2, 1, 1, NULL, NULL, 3, '75143364272', 'ADMILSON DA SILVEIRA', 'ADMILSON DA SILVEIRA', '783700', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 500, 0, 140349, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3628680, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 2, '75268817272', 'FRANK DOUGLAS BASTOS', 'FRANK DOUGLAS BASTOS', '663593', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2520, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3225506, NULL),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, 1, '75731312320', 'ERISVANIO PEREIRA SALES', 'VANIO', '11553626', '2028-12-04', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 895, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2361894, 0),
(1, 2, 2, 1, 1, 2, 1, 2, NULL, 2147483647, NULL, '758525273', 'SUELLEN FERNANDA DE SOUZA', 'null', '1111143', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 782, 255, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3184390, NULL),
(1, 2, 2, 1, 2, 1, 1, 1, NULL, NULL, NULL, '76191664915', 'HILARIO RISSARDI', 'null', '42182923', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 464, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2804440, NULL),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 2, '76206092100', 'CELIMAR LEITE BARBOSA', 'CELIMAR LEITE BARBOSA', '924875', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2520, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 311488, NULL),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '76520196215', 'ERIVALDO DA SILVA PINTO', 'ERIVALDO DA SILVA PINTO', '4840092.0', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 1, 99000, NULL, NULL, 'senha', NULL, NULL, 'null', 0, 'null', 'null', NULL, NULL, NULL),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, 1, '7671894931', 'ANDRE CIRILO DO PRADO DA SILVA', 'null', '105332360', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 8664, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 81683, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 1, '76769526972', 'ISMAEL JOSÉ CELSO', 'null', '31573983', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 1669, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 450064, 0),
(1, 2, 2, 1, 2, 2, 1, 1, NULL, NULL, NULL, '769629202', 'Reginaldo José Lopes', 'Reginaldo', '1105237', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 5558, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3621086, NULL),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '77118855200', 'JOSE BATISTA DE SOUSA JUNIOR', 'JOSE BATISTA DE SOUSA JUNIOR', '4266815', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 5109, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3824834, NULL),
(1, 2, 2, 1, 2, 2, 1, 1, 57, 2147483647, 2, '77251725991', 'EDNEI FERNANDES DA CUNHA', 'EDNEI FERNANDES DA CUNHA', '49244195', '0000-00-00', '2038-03-05', '0000-00-00 00:00:00', 1, 1, 0, '2038-03-05', 50, 0, 1091, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3619321, NULL),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, 3, '775001058', 'ALESSANDRO JOSE SOMMAVILLA', 'ALESSANDRO JOSE SOMMAVILLA', '1096804677', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 1880, NULL, NULL, 'senha', NULL, NULL, 'null', NULL, 'null', 'null', 1, 695121, NULL),
(1, 2, 2, 1, 2, 2, 1, 1, NULL, 2147483647, 2, '77789172115', 'LUIZ CARLOS GONCALVES LAHR', 'LUIZ CARLOS GONCALVES LAR', '10490078', '0000-00-00', '2037-05-05', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 1, 0, 4393, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3638709, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, NULL, '77851498104', 'EMILIO DA SILVA GOMES', 'EMILIO DA SILVA GOMES', '12249025', '0000-00-00', '2042-11-04', '0000-00-00 00:00:00', 0, 1, 0, '2042-11-04', 0, 0, 489, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 4036646, NULL),
(1, 2, 2, 1, 1, 1, 1, 2, NULL, NULL, 3, '78116686291', 'MARIA CLEIDIAN DO NASCIMENTO SILVA', 'MARIA CLEIDIAN DO NASCIMENTO SILVA', '429178', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 13965, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 520024, 0),
(1, 2, 1, 1, 1, 2, 1, 2, NULL, NULL, NULL, '78377480263', 'MARCILENE DA PAIXAO BARROS', 'LENE', '3822870.0', '2030-06-06', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 4133.25, 1, 99000, NULL, NULL, 'senha', NULL, NULL, 'null', 0, 'null', 'null', NULL, NULL, NULL),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, 1, '789216', 'JOSIVAL NICACIO DA SILVA', 'VALDIR', '946268', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2947, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3225261, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 1, '80987001191', 'JULIANO GONCALVES DE SOUZA', 'JULIANO GONCALVES DE SOUZA', '11180331', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 1, 2520, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 534571, NULL),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 2, '81998570134', 'VALDERI SOBRINHO DA SILVA', 'VALDERI SOBRINHO DA SILVA', '2934075', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 7088, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2960575, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '82050724187', 'VALMIR APARECIDO DA SILVA ', 'VALMIR APARECIDO DA SILVA ', '001019946', '2029-01-04', '0000-00-00', '0000-00-00 00:00:00', NULL, 1, 0, '0000-00-00', 0, NULL, 7010, NULL, NULL, 'senha', NULL, NULL, 'null', 0, 'null', 'null', 1, 4056273, NULL),
(1, 2, 2, 1, 1, 2, 99, 1, NULL, 2147483647, 1, '82505322287', 'SALOMAO SOUZA DIAS', 'SALOMAO SOUZA DIAS', '756943', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 765, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3897641, NULL),
(1, 2, NULL, 1, 1, 2, 1, 1, NULL, NULL, NULL, '82866490100', 'EDILSON LIRA E SILVA', 'LIRA', '11694521', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 5135, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3658499, NULL),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, 2, '82902356153', 'SAMUEL RODRIGO MORETTO', 'Samuca', '1.008.607-2 ', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 4719, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2878329, 0),
(1, 2, 2, 1, 2, 2, 1, 1, NULL, NULL, 3, '83421025215', 'CLAYTON ZAGO POSSO', 'CLAYTON ZAGO POSSO', '927061', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 140300, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3955390, 0),
(1, 2, 2, 1, 2, 2, 1, 1, NULL, 2147483647, 2, '83469060215', 'ZAQUEU ALEGARIO DE SOUZA', 'ZAQUEU ALEGARIO DE SOUZA', '2001312-4', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 4526, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3176717, 0),
(1, 2, 2, 1, 2, 2, 1, 1, 71, 2147483647, 2, '83554726168', 'RONEY EMERSON DA SILVA MARTINS', 'RONEY EMERSON DA SILVA MARTINS', '2167100', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 450, 0, 2520, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3675915, NULL),
(1, 2, 2, 1, NULL, 2, 3, 1, NULL, NULL, NULL, '83733671104', 'HEBER LUCIO DE OLIVEIRA GARCIA', 'null', '873098', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 255, 13367, 255, 0, 'senha', 255, 255, 'null', 0, 'null', 'null', 0, 8829628, 255),
(1, 2, 1, 1, 1, 2, 1, 1, NULL, NULL, 2, '83832270272', 'LIDIVAN MOURAO DE LIMA', 'LIDIVAN MOURAO DE LIMA', '362174', '0000-00-00', '2038-07-01', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 612, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2959447, NULL),
(1, 2, 1, 1, 1, 1, 1, 1, NULL, NULL, 2, '84037865220', 'MARCOS ORMANDES GARCIA', 'MARCOS ORMANDES GARCIA', '922321', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 8199, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3539466, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 1, '84386266291', 'JHONE GLAUBER ALVES', 'GLAUBER', '5060292', '0000-00-00', '2041-06-08', '0000-00-00 00:00:00', 1, 1, 0, '0000-00-00', 0, 0, 7257, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2659308, 0),
(1, 2, 2, 1, 1, 1, 1, 2, NULL, NULL, 2, '84927704149', 'ANDREIA  KARNIKOWSKI', 'ANDREIA KARNIKOWSKI', '1177950', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 12868, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3743959, 0),
(1, 2, 2, 1, 1, 2, 99, 1, NULL, NULL, 1, '86373730204', 'RENE UILLIAN GONÇALVES DE OLIVEIRA', 'RENê', '796075', '2032-09-06', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 4171, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3107582, 0),
(1, 2, 2, 1, 2, 2, 99, 1, NULL, NULL, NULL, '86431692934', 'SYLVIO JOSE PEREIRA TERCEIRO', 'null', '5461144', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 3979, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2990819, NULL),
(1, 2, 2, 1, NULL, 2, 1, 1, NULL, NULL, NULL, '86751069120', 'DANIEL LEMES LUZ', 'DANIEL LEMES LUZ', '417008', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', NULL, 1, 0, '0000-00-00', 0, NULL, NULL, NULL, NULL, 'senha', NULL, NULL, 'null', 0, 'null', 'null', 1, 6543258, NULL),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, 1, '86848399272', 'LEANDRO VIEIRA DE ABREU', 'null', '901200', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 1, 0, 0, '0000-00-00', 0, 0, 8281, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3624402, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 2, '86953869100', 'MARCOS DE OLIVEIRA', 'MARCOS DE OLIVEIRA #', '1171584-7', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 2000, 0, 2520, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3638801, NULL),
(1, 2, 2, 1, NULL, 1, 1, 1, NULL, NULL, 1, '87880806253', 'SHIRLEY PEREIRA DE LIMA', 'SHIRLEY PEREIRA DE LIMA', '5453106', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 167, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 0, NULL, 0),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, 1, '87889501153', 'ARLINDO BORDIM FILHO', 'ARLINDO BORDIN FILHO', '1025260.6', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 656, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3755312, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, 2, '88383563191', 'CLAUDIR VIEIRA', 'CLAUDIR VIEIRA', '12883018', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 850, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3610063, 0),
(1, 2, 2, 1, 2, 2, 1, 1, NULL, NULL, 2, '88746488120', 'ITALO SOUZA TAMACHIRO', 'TAMACHIRO', '1099271', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 1, 0, 0, '0000-00-00', 0, 0, 1224, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3857945, 0),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, 2, '888520166', 'CLAUDEMIR PEREIRA DA SILVA', 'CLAUDEMIR PEREIRA DA SILVA', '16113640', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2520, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2954962, NULL),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 2, '89027469172', 'WILLIAM JOSé DOS SANTOS', 'WILLIAM JOSé DOS SANTOS', '12442224', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 1, 1, 0, '0000-00-00', 0, 0, 458, NULL, NULL, 'senha', NULL, NULL, 'null', NULL, 'null', 'null', 1, 3285850, NULL),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, NULL, '89217330191', 'JAMIL PINHEIRO JUNIOR', 'null', '957730', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2520, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 4166376, 0),
(1, 2, 2, 1, 1, 1, 1, 2, NULL, NULL, 2, '89256581191', 'MARCIA TRINDADE CORONEL', 'MARCIA TRINDADE CORONEL', '1147366', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2520, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3340895, NULL),
(1, 2, 2, 1, 1, 2, 8, 1, NULL, NULL, NULL, '89476557249', 'ROBERTO SILVA FREITAS', 'null', '254556', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 8300, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3855016, NULL),
(1, 2, 2, 1, NULL, 2, 1, 1, NULL, NULL, NULL, '89579860220', 'JUNIOR SANTOS DA SILVA DAMASCENO', 'Junior', '735384', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', NULL, 1, 0, '0000-00-00', NULL, NULL, 794, NULL, NULL, 'senha', NULL, NULL, 'null', NULL, 'null', 'null', NULL, 5358347, NULL),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 2, '89901223172', 'JOSINALDO ALVES DE CARVALHO', 'JOSINALDO ALVES DE CARVALHO', '10704337', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 200, 0, 2520, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3714605, NULL),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, 2, '89934849100', 'VALDIR RIBEIRO DOS SANTOS', 'VALDIR RIBEIRO DOS SANTOS', '1105132-9', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 11154, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3878360, 0),
(1, 2, 2, 1, 1, 2, 7, 1, NULL, NULL, NULL, '90110510178', 'HEBEER  WINCK ', 'null', '12605000', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 7712, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3344957, NULL),
(1, 2, 2, 1, 2, 2, 1, 1, NULL, 2147483647, 1, '90220315191', 'MARCELO TEODORO DE ALMEIDA', 'MARCELO', '1133847-4', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 11498, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2741187, 0),
(1, 2, 2, 1, NULL, 2, 1, 1, NULL, NULL, NULL, '90230477291', 'ANTONIO ADILSON CRUZ SALOMAO', 'ADILSON', '5284830', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 15000, 1, 99000, NULL, NULL, 'senha', NULL, NULL, 'null', 0, 'null', 'null', NULL, NULL, NULL),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 1, '90443730130', 'WENDELL DA SILVA LOPES', 'WENDELL DA SILVA LOPES/9956.1598', '1010416', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2520, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 1881635, NULL),
(1, 2, 2, 1, 1, 2, 1, 2, NULL, NULL, 2, '90528948172', 'GRACIELA DE ABREU', 'GRACIELA DE ABREU', '1255666.1', '0000-00-00', '2038-09-07', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 2000, 0, 656, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3822861, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 2, '91026830168', 'MARCELO FABIANO RODRIGUES CARNEIRO', 'MARCELO FABIANO RODRIGUES CARNEIRO', '3563209', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2520, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2409078, NULL),
(1, 2, 2, 1, 1, 1, 1, 2, NULL, NULL, 2, '91148316191', 'MARILENE FIGUEIREDO DE ALMEIDA', 'MARILENE FIGUEIREDO DE ALMEIDA', '1047130', '2029-01-02', '2038-01-04', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2520, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3108424, NULL),
(1, 2, 2, 1, NULL, 2, 1, 1, NULL, NULL, NULL, '91250161134', 'RICARDO VIEIRA DE MORAES', 'RICARDO VIEIRA DE MORAES', '13437518', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 8997, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 6231805, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, 1, '913574112', 'WEILLER GREGORIO CEZAR', 'null', '15439909', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 9615, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 1958501, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '91780535287', 'UILIASMAR MACHADO DOS SANTOS', 'null', '951692', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 4352, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3817928, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '917920376', 'DARMAN VIRISSIMO DA SILVA', 'null', '1384802', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 4762, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3016342, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '91843618249', 'AIRTON MELO DA COSTA', 'AIRTON MELO DA COSTA', '970399', '2033-08-04', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 14150, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3517314, 0),
(1, 2, 2, 1, 1, 2, 99, 1, NULL, 2147483647, 3, '91894018168', 'MARCIO JOSE CASTELLI', 'MARCIO JOSE CASTELLI', '12063878', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 1, 1, 0, '0000-00-00', 2000, 0, 4106, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2459911, NULL),
(1, 2, 2, 1, 2, 1, 1, 2, NULL, NULL, 1, '91938988272', 'TATIMARA FERREIRA BRAGA', 'TATIMARA FERREIRA BRAGA', '7763568', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 178, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3090070, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, 1, '91951186168', 'LUIS PAULO SANTOS BRAGA ', 'LUIS PAULO SANTOS BRAGA ', '1221364', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 14519, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 335947, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, NULL, '92056636204', 'ALVARO CLISTENES DA FONSECA COELHO', 'ALVARO CLISTENES DA FONSECA COELHO', '236698520035', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 5077, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3647129, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, NULL, '92146678100', 'MARCIO RODRIGUES DOS SANTOS', 'MARCIO RODRIGUES DOS SANTOS', '954505', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 326, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 857307, 0),
(1, 2, 2, 1, NULL, 2, 1, 2, NULL, 2147483647, 1, '921887299', 'ADRIANA FONTOURA DA COSTA', 'DRIKA', '6308716', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2669, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3727725, 0),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, NULL, '92262490163', 'WEDER PEREIRA BENINCA', 'WEDER PEREIRA BENINCA', '13081578', '2030-11-05', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 6775, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2608115, 0),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, 3, '92283551153', 'CLEITON BERGER', 'CLEITON', '1244558', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '2044-03-07', 300, 0, 679, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2934120, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 2, '92328385168', 'LUCIANO MARTINS  BARBOSA', 'LUCIANO MARTINS', '13921908', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2520, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3849168, 0),
(1, 2, 2, 1, 1, 1, 1, 2, NULL, NULL, NULL, '92514650291', 'LUCIANA SANTOS DA MOTA', 'null', '10379690', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 650, 1, 0, 'senha', NULL, NULL, 'null', NULL, 'null', 'null', 1, 1898745, NULL),
(1, 2, 2, 1, NULL, 2, 1, 2, NULL, NULL, NULL, '927802295', 'ADRIELE DA SILVA QUEIROZ', 'ADRIELE DA SILVA QUEIROZ', '6383634', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 1, 99000, NULL, NULL, 'senha', NULL, NULL, 'null', 0, 'null', 'null', NULL, NULL, NULL),
(1, 2, 2, 1, 1, 2, 8, 2, NULL, NULL, NULL, '92913385249', 'ANDREIA SOARES FERREIRA', 'null', '795903', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 1, 0, 0, '0000-00-00', 0, 0, 1224, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3495811, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 1, '93640994191', 'OANDERSON RODRIGUES  XAVIER', 'OANDERSON', '001288871', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 1, 2520, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3933553, NULL),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, NULL, '93686986191', 'RONE  JOSE DE  SOUZA  ', 'RONE', '14239191', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 1635, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2813380, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, NULL, '93695969253', 'CESAR AUGUSTO PEREIRA GUEDES', 'CESAR AUGUSTO PEREIRA GUEDES', '38816900X', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 166, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3526539, 0),
(1, 2, 1, 1, NULL, 4, 1, 2, NULL, NULL, NULL, '940957523', 'ALINE SILVA DO CARMO OLIVEIRA', 'ALINE SILVA DO CARMO OLIVEIRA', '1111517754', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 8071, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 6525700, 0),
(1, 2, 2, 1, NULL, 2, 1, 2, NULL, NULL, NULL, '94191638220', 'ISABEL APARECIDA RIBEIRO SILVA', 'BEL', '6467173', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 6078.72, 1, 99000, NULL, NULL, 'senha', NULL, NULL, 'null', 0, 'null', 'null', NULL, NULL, NULL),
(1, 1, 2, 1, 1, 2, 1, 1, NULL, 2147483647, NULL, '94894361191', 'URIAS LIMA MARQUES', 'null', '139258000', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2520, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3738515, NULL),
(1, 2, 2, 1, 2, 1, 1, 2, NULL, NULL, 3, '94994781249', 'KELY CRISTINA CRISTO RODRIGUES', 'KELY CRISTINA CRISTO RODRIGUES', '1017966', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 8043, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3538300, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, NULL, '95492070134', 'ROBERTO CARVALHO DA SILVA', 'null', '1144316', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2209, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2036583, NULL),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, 1, '95709282120', 'MARCOS ROBERTO GIOMO', 'MARCOS', '32367989', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 1, 0, 2520, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3714498, 0),
(1, 2, 2, 1, NULL, 2, 1, 1, NULL, 2147483647, NULL, '96105917287', 'Diego Morbach', 'DIEGO MORBACH SANTOS', '5157603', '2032-11-07', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 1031, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 6977913, 0),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, NULL, '96469099149', 'LUCIANO SAMPAIO DA PAZ', 'null', '14631024', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 1880, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2033600, NULL),
(1, 2, 2, 2, 1, 1, 1, 1, NULL, NULL, 3, '96504994234', 'RAPHAEL DOS SANTOS PEREIRA - FALECIDO', 'RAPHAEL DOS SANTOS PEREIRA', '951673', '2032-11-02', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 756, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3130958, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 2, '96697717149', 'REGIS FAGNER DOS SANTOS', 'REGIS FAGNER DOS SANTOS', '13965174', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 3802, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2554436, NULL),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, 1, '96828480163', 'ANDERSON MOISES GONCALVES DA SILVA', 'ANDERSON MOISES GONCALVES DA SILVA', '1298819', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 219, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3417604, NULL),
(1, 2, NULL, 1, NULL, 2, 1, 1, NULL, NULL, NULL, '96850728172', 'ROBIANO ELOIR PEREIRA', 'null', 'null', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 255, 12257, 255, 0, 'senha', 255, 255, 'null', 0, 'null', 'null', 0, 8831592, 255),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, 1, '97159085272', 'MARCUS ARTUR PERES CARDOSO', 'null', '10425462', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 1362, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3931408, 0),
(1, 2, 2, 1, 1, 2, 3, 1, NULL, NULL, 2, '97630055153', 'SIDNEY DA SILVA COSTA JUNIOR', 'SIDNEY DA SILVA COSTA JUNIOR', '1129380', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '2042-11-07', 0, 0, 2520, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3737425, NULL),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '977835103', 'FLAVIO SAO PAULO', 'FLAVIO SÃO PAULO', '15966844', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 255, 12, 255, 0, 'senha', 255, 255, 'null', 0, 'null', 'null', 0, 3979414, 0),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, NULL, '97917966100', 'ROBERTO JUNIOR SAUERESSIG', 'ROBERTO JUNIOR SAUERESSIG', '1252974', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 208, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 724282, 0),
(1, 2, 2, 1, 2, 2, 1, 1, NULL, 2147483647, 2, '98227610153', 'EDER QUEIROZ CASPERS', 'EDER QUEIROZ CASPERS', '14346214', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 5000, 0, 1673, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3758481, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '99363283291', 'DANIEL XAVIER DA SILVA', 'DANIEL XAVIER DA SILVA', '966.764', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 9135, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2076109, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 2, '99370468072', 'OZIEL SOUZA DE MATOS', 'OZIEL SOUZA DE MATOS #', '25348116', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 1, 0, 2520, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3701861, NULL),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, 1, '99389975204', 'MAGNO ROQUE DE SOUZA', 'null', '5429828', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 178, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3648105, 0),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, 1, '99401576149', 'HELIO MOREIRA CAMPOS', 'HELIO MOREIRA CAMPOS', '15057097', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 962, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2243166, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `situacao`
--

CREATE TABLE `situacao` (
  `id` int(11) NOT NULL,
  `descricao` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `situacao`
--

INSERT INTO `situacao` (`id`, `descricao`) VALUES
(1, 'Ativo'),
(2, 'Inativo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_local`
--

CREATE TABLE `tipo_local` (
  `id` int(11) NOT NULL,
  `descricao` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tipo_local`
--

INSERT INTO `tipo_local` (`id`, `descricao`) VALUES
(1, 'Quiosque'),
(2, 'Chalé'),
(3, 'Campos');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_usuario`
--

CREATE TABLE `tipo_usuario` (
  `id` int(11) NOT NULL,
  `descricao` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tipo_usuario`
--

INSERT INTO `tipo_usuario` (`id`, `descricao`) VALUES
(1, 'Admin'),
(2, 'Genérico');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `agendamento`
--
ALTER TABLE `agendamento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_local` (`id_local`),
  ADD KEY `id_situacao` (`id_situacao`);

--
-- Índices para tabela `local`
--
ALTER TABLE `local`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_tipo_local` (`id_tipo_local`);

--
-- Índices para tabela `pessoa`
--
ALTER TABLE `pessoa`
  ADD PRIMARY KEY (`cnpj_cpf`);

--
-- Índices para tabela `situacao`
--
ALTER TABLE `situacao`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tipo_local`
--
ALTER TABLE `tipo_local`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `agendamento`
--
ALTER TABLE `agendamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT de tabela `local`
--
ALTER TABLE `local`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `situacao`
--
ALTER TABLE `situacao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tipo_local`
--
ALTER TABLE `tipo_local`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `agendamento`
--
ALTER TABLE `agendamento`
  ADD CONSTRAINT `agendamento_ibfk_1` FOREIGN KEY (`id_local`) REFERENCES `local` (`id`),
  ADD CONSTRAINT `agendamento_ibfk_2` FOREIGN KEY (`id_situacao`) REFERENCES `situacao` (`id`);

--
-- Limitadores para a tabela `local`
--
ALTER TABLE `local`
  ADD CONSTRAINT `local_ibfk_1` FOREIGN KEY (`id_tipo_local`) REFERENCES `tipo_local` (`id`);
--
-- Banco de dados: `contador_de_dedinhos`
--
CREATE DATABASE IF NOT EXISTS `contador_de_dedinhos` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `contador_de_dedinhos`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `alunos`
--

CREATE TABLE `alunos` (
  `id` int(11) NOT NULL,
  `cpf` varchar(15) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `telefone` varchar(17) NOT NULL,
  `id_instituicao` int(11) NOT NULL,
  `id_tipo_usuario` int(11) NOT NULL,
  `endereco` varchar(150) NOT NULL,
  `rg` varchar(12) NOT NULL,
  `email` varchar(150) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `dias_semana` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `alunos`
--

INSERT INTO `alunos` (`id`, `cpf`, `nome`, `telefone`, `id_instituicao`, `id_tipo_usuario`, `endereco`, `rg`, `email`, `senha`, `dias_semana`) VALUES
(10, '08888627928', 'LUCAS SANCHES DOS SANTOS', '44998728973', 8, 2, 'Rua balbino N° 90', '128697306', 'lucas.santos@gazin.com.br', '123', 4),
(15, '11111111111', 'Leozin', '44998728973', 10, 1, '123', '888888888', 'leonardo@email.com', '123', 2),
(38, '11111111111', 'Flavio', '000000000000000', 8, 1, '000000000', '111111111', 'flavio.aguiar@gazin.com.br', '123', 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `contador`
--

CREATE TABLE `contador` (
  `id` int(11) NOT NULL,
  `id_aluno` int(11) NOT NULL,
  `contador` float NOT NULL,
  `date` date NOT NULL,
  `id_instituicao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `contador`
--

INSERT INTO `contador` (`id`, `id_aluno`, `contador`, `date`, `id_instituicao`) VALUES
(228, 15, -1, '2022-07-21', 10),
(229, 15, 1, '2022-07-21', 10),
(230, 15, -1, '2022-07-21', 10),
(231, 10, 1, '2022-07-21', 8),
(232, 10, -1, '2022-07-21', 8),
(233, 10, 1, '2022-07-21', 8),
(234, 10, 1, '2022-07-22', 8),
(235, 15, 1, '2022-07-22', 10),
(236, 10, -1, '2022-07-22', 8),
(237, 10, 1, '2022-07-22', 8),
(238, 10, -1, '2022-07-22', 8),
(239, 10, 1, '2022-07-22', 8),
(240, 10, -1, '2022-07-22', 8),
(241, 10, 1, '2022-07-22', 8),
(242, 10, -1, '2022-07-22', 8),
(243, 10, 1, '2022-07-22', 8),
(244, 10, -1, '2022-07-22', 8),
(245, 10, 1, '2022-07-22', 8),
(246, 10, -1, '2022-07-22', 8),
(247, 10, 1, '2022-07-22', 8),
(248, 10, -1, '2022-07-22', 8),
(249, 10, 1, '2022-07-22', 8),
(250, 10, -1, '2022-07-22', 8),
(251, 10, 1, '2022-07-22', 8),
(252, 10, -1, '2022-07-22', 8),
(253, 10, 1, '2022-07-22', 8),
(254, 10, -1, '2022-07-22', 8),
(255, 10, 1, '2022-07-22', 8),
(256, 10, -1, '2022-07-22', 8),
(257, 10, 1, '2022-07-22', 8),
(258, 10, -1, '2022-07-22', 8),
(259, 10, 1, '2022-07-22', 8),
(260, 10, -1, '2022-07-22', 8),
(261, 10, 1, '2022-07-22', 8),
(262, 10, -1, '2022-07-22', 8),
(263, 10, 1, '2022-07-22', 8),
(264, 10, -1, '2022-07-22', 8),
(265, 10, 1, '2022-07-22', 8),
(266, 10, -1, '2022-07-22', 8),
(267, 10, 1, '2022-07-22', 8),
(268, 10, -1, '2022-07-22', 8),
(269, 10, 1, '2022-07-22', 8),
(270, 10, -1, '2022-07-22', 8),
(271, 10, 1, '2022-07-22', 8),
(272, 10, -1, '2022-07-22', 8),
(273, 10, 1, '2022-07-22', 8),
(274, 10, -1, '2022-07-22', 8),
(275, 10, 1, '2022-07-22', 8),
(276, 10, 1, '2022-07-24', 8),
(277, 10, 1, '2022-07-28', 8),
(278, 38, 1, '2022-07-28', 8),
(279, 10, 1, '2022-07-31', 8);

-- --------------------------------------------------------

--
-- Estrutura da tabela `contador_volta`
--

CREATE TABLE `contador_volta` (
  `id` int(11) NOT NULL,
  `id_aluno` int(11) NOT NULL,
  `contador` int(11) NOT NULL,
  `date` date NOT NULL,
  `id_instituicao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `contador_volta`
--

INSERT INTO `contador_volta` (`id`, `id_aluno`, `contador`, `date`, `id_instituicao`) VALUES
(1, 10, -1, '2022-07-22', 8),
(2, 10, -1, '2022-07-22', 8),
(3, 10, -1, '2022-07-22', 8),
(4, 10, -1, '2022-07-22', 8),
(5, 10, 1, '2022-07-22', 8),
(6, 10, 1, '2022-07-22', 8),
(7, 10, 1, '2022-07-22', 8),
(8, 10, 1, '2022-07-22', 8),
(9, 10, -1, '2022-07-22', 8),
(10, 10, 1, '2022-07-22', 8),
(11, 10, -1, '2022-07-22', 8),
(12, 10, 1, '2022-07-22', 8),
(13, 10, -1, '2022-07-22', 8),
(14, 10, 1, '2022-07-22', 8),
(15, 10, -1, '2022-07-22', 8),
(16, 10, 1, '2022-07-22', 8),
(17, 10, -1, '2022-07-22', 8),
(18, 10, 1, '2022-07-22', 8),
(19, 10, -1, '2022-07-22', 8),
(20, 10, 1, '2022-07-22', 8),
(21, 10, -1, '2022-07-22', 8),
(22, 10, 1, '2022-07-22', 8),
(23, 10, -1, '2022-07-22', 8),
(24, 10, 1, '2022-07-22', 8),
(25, 10, -1, '2022-07-22', 8),
(26, 10, 1, '2022-07-22', 8),
(27, 10, -1, '2022-07-22', 8),
(28, 10, 1, '2022-07-22', 8),
(29, 10, -1, '2022-07-22', 8),
(30, 10, 1, '2022-07-22', 8),
(31, 10, -1, '2022-07-22', 8),
(32, 10, 1, '2022-07-22', 8),
(33, 10, -1, '2022-07-22', 8),
(34, 10, 1, '2022-07-22', 8),
(35, 10, -1, '2022-07-22', 8),
(36, 10, 1, '2022-07-22', 8),
(37, 10, -1, '2022-07-22', 8),
(38, 10, 1, '2022-07-22', 8),
(39, 10, -1, '2022-07-22', 8),
(40, 10, 1, '2022-07-22', 8);

-- --------------------------------------------------------

--
-- Estrutura da tabela `instituicao`
--

CREATE TABLE `instituicao` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `id_motorista` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `instituicao`
--

INSERT INTO `instituicao` (`id`, `nome`, `id_motorista`) VALUES
(8, 'Alfa', 4),
(9, 'Campos III', 3),
(10, 'UEM', 3),
(11, 'ifpr', 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `motorista`
--

CREATE TABLE `motorista` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `limite` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `motorista`
--

INSERT INTO `motorista` (`id`, `nome`, `limite`) VALUES
(3, 'Marcio', 45),
(4, 'José', 60);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_aluno`
--

CREATE TABLE `tipo_aluno` (
  `id` int(11) NOT NULL,
  `tipo_usuario` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tipo_aluno`
--

INSERT INTO `tipo_aluno` (`id`, `tipo_usuario`) VALUES
(1, 'Aluno'),
(2, 'Admin');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_tipo_usuario` (`id_tipo_usuario`),
  ADD KEY `instituicao` (`id_instituicao`),
  ADD KEY `id_instituicao` (`id_instituicao`);

--
-- Índices para tabela `contador`
--
ALTER TABLE `contador`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_aluno` (`id_aluno`),
  ADD KEY `id_instituicao` (`id_instituicao`);

--
-- Índices para tabela `contador_volta`
--
ALTER TABLE `contador_volta`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `instituicao`
--
ALTER TABLE `instituicao`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_motorista` (`id_motorista`);

--
-- Índices para tabela `motorista`
--
ALTER TABLE `motorista`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tipo_aluno`
--
ALTER TABLE `tipo_aluno`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `alunos`
--
ALTER TABLE `alunos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de tabela `contador`
--
ALTER TABLE `contador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=280;

--
-- AUTO_INCREMENT de tabela `contador_volta`
--
ALTER TABLE `contador_volta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de tabela `instituicao`
--
ALTER TABLE `instituicao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `motorista`
--
ALTER TABLE `motorista`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `tipo_aluno`
--
ALTER TABLE `tipo_aluno`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Banco de dados: `csg`
--
CREATE DATABASE IF NOT EXISTS `csg` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `csg`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `contato_padrao`
--

CREATE TABLE `contato_padrao` (
  `id` int(11) NOT NULL,
  `descricao` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `contato_padrao`
--

INSERT INTO `contato_padrao` (`id`, `descricao`) VALUES
(1, 'Chamado CSG'),
(2, 'E-mail'),
(3, 'WhatsApp');

-- --------------------------------------------------------

--
-- Estrutura da tabela `descricao_funcionario`
--

CREATE TABLE `descricao_funcionario` (
  `id` int(11) NOT NULL,
  `id_funcionario_csg` int(11) NOT NULL,
  `descricao_responsabilidades` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `descricao_funcionario`
--

INSERT INTO `descricao_funcionario` (`id`, `id_funcionario_csg`, `descricao_responsabilidades`) VALUES
(1, 1, 'Assessor direto da gerência do Varejo.\r\nControle de verba e recomposição de rentabilidade.\r\nEmitir relatórios e controles voltados a venda.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `filiais`
--

CREATE TABLE `filiais` (
  `idfilial` int(11) NOT NULL,
  `idempresa` int(11) NOT NULL,
  `idtipofilial` int(11) NOT NULL,
  `numerofilial` int(11) NOT NULL,
  `fantasia` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `filiais`
--

INSERT INTO `filiais` (`idfilial`, `idempresa`, `idtipofilial`, `numerofilial`, `fantasia`) VALUES
(10002, 1, 3, 2, 'DOURADINA - PR'),
(10003, 1, 3, 3, 'MUNDO NOVO - MS'),
(10004, 1, 3, 4, 'SETE QUEDAS - MS'),
(10005, 1, 3, 5, 'SAO JOSE DO RIO CLARO - MT'),
(10006, 1, 3, 6, 'ARENAPOLIS - MT'),
(10007, 1, 3, 7, 'DIAMANTINO - MT'),
(10008, 1, 3, 8, 'NOBRES - MT'),
(10009, 1, 3, 9, 'TANGARA DA SERRA - MT'),
(10010, 1, 3, 10, 'SAO JOSE DOS QUATRO MARCOS - MT'),
(10011, 1, 3, 11, 'PONTES E LACERDA - MT'),
(10012, 1, 3, 12, 'BARRA DO BUGRES - MT'),
(10013, 1, 3, 13, 'POCONE - MT'),
(10014, 1, 3, 14, 'JUINA - MT'),
(10015, 1, 3, 15, 'CUIABÁ I - MT'),
(10016, 1, 3, 16, 'SORRISO - MT'),
(10017, 1, 3, 17, 'CACERES - MT'),
(10018, 1, 3, 18, 'PRIMAVERA DO LESTE - MT'),
(10019, 1, 3, 19, 'CAMPO NOVO DO PARECIS - MT'),
(10020, 1, 3, 20, 'SINOP - MT I'),
(10021, 1, 3, 21, 'SAO MIGUEL DO GUAPORE - RO'),
(10022, 1, 3, 22, 'COXIM - MS'),
(10023, 1, 3, 23, 'CAMPO VERDE - MT'),
(10024, 1, 3, 24, 'DOURADOS - MS'),
(10025, 1, 3, 25, 'IPORA - PR'),
(10026, 1, 3, 26, 'ESPIGAO DO OESTE - RO'),
(10027, 1, 3, 27, 'AQUIDAUANA - MS'),
(10028, 1, 3, 28, 'GOIOERE'),
(10029, 1, 3, 29, 'RONDONOPOLIS - MT I'),
(10030, 1, 3, 30, 'LUCAS DO RIO VERDE - MT'),
(10031, 1, 3, 31, 'TAPEJARA'),
(10032, 1, 3, 32, 'ALTA FLORESTA - MT'),
(10033, 1, 3, 33, 'NAVIRAI - MS'),
(10034, 1, 3, 34, 'CORUMBA - MS'),
(10035, 1, 3, 35, 'ARIQUEMES - RO'),
(10036, 1, 3, 36, 'MARACAJU - MS'),
(10037, 1, 3, 37, 'ROLIM DE MOURA - RO'),
(10038, 1, 3, 38, 'CUIABA'),
(10039, 1, 3, 39, 'COLIDER - MT'),
(10040, 1, 3, 40, 'RIO BRILHANTE - MS'),
(10041, 1, 3, 41, 'SINOP - MT II'),
(10043, 1, 3, 43, 'BARRA DO GARCAS - MT'),
(10044, 1, 3, 44, 'JARDIM - MS'),
(10045, 1, 3, 45, 'PARANAIBA - MS'),
(10046, 1, 3, 46, 'SAO GABRIEL DO OESTE - MS'),
(10047, 1, 3, 47, 'NOVA MUTUM - MT'),
(10048, 1, 3, 48, 'AMAMBAI - MS'),
(10049, 1, 3, 49, 'VERA - MT'),
(10051, 1, 3, 51, 'GUARANTA DO NORTE - MT'),
(10052, 1, 3, 52, 'JUARA - MT'),
(10053, 1, 3, 53, 'VILHENA - RO I'),
(10054, 1, 3, 54, 'JI-PARANA - RO I'),
(10055, 1, 3, 55, 'PORTO VELHO - RO I'),
(10056, 1, 3, 56, 'MIRASSOL DO OESTE - MT'),
(10057, 1, 3, 57, 'CACOAL - RO'),
(10058, 1, 3, 58, 'PETROQUIMICA RIO TERCEIRO S. A.'),
(10059, 1, 3, 59, 'JARU - RO'),
(10060, 1, 3, 60, 'OURO PRETO DO OESTE - RO'),
(10061, 1, 3, 61, 'JACIARA - MT'),
(10062, 1, 3, 62, 'BONITO - MS'),
(10063, 1, 3, 63, 'CIANORTE'),
(10064, 1, 3, 64, 'PARANATINGA - MT'),
(10065, 1, 3, 65, 'ALTA FLORESTA DO OESTE - RO'),
(10066, 1, 3, 66, 'PIMENTA BUENO - RO'),
(10069, 1, 3, 69, 'MIRANDA - MS'),
(10070, 1, 3, 70, 'NOVA ANDRADINA - MS'),
(10071, 1, 3, 71, 'FATIMA DO SUL - MS'),
(10072, 1, 3, 72, 'RIO BRANCO - AC'),
(10073, 1, 3, 73, 'PONTA PORA - MS'),
(10074, 1, 3, 74, 'BURITIS - RO'),
(10075, 1, 3, 75, 'PORTO VELHO - RO II'),
(10076, 1, 3, 76, 'BELA VISTA - MS'),
(10077, 1, 3, 77, 'CUIABA - MT'),
(10078, 1, 3, 78, 'SIDROLANDIA - MS'),
(10079, 1, 3, 79, 'RIO VERDE - MS'),
(10080, 1, 3, 80, 'RIO BRANCO - AC'),
(10081, 1, 3, 81, 'ROSARIO OESTE - MT'),
(10082, 1, 3, 82, 'SONORA - MS'),
(10083, 1, 3, 83, 'CEREJEIRAS - RO'),
(10084, 1, 3, 84, 'CANARANA - MT'),
(10086, 1, 3, 86, 'PRESIDENTE MEDICI - RO'),
(10087, 1, 3, 87, 'NOVA OLIMPIA - MT'),
(10088, 1, 3, 88, 'TANGARA DA SERRA - MT'),
(10089, 1, 3, 89, 'NOVA XAVANTINA - MT'),
(10090, 1, 3, 90, 'COLORADO DO OESTE - RO'),
(10091, 1, 3, 91, 'JI-PARANA - RO II'),
(10092, 1, 3, 92, 'ALTO PARAISO - RO'),
(10093, 1, 3, 93, 'AGUA BOA - MT'),
(10094, 1, 3, 94, 'MONTE NEGRO - RO'),
(10095, 1, 3, 95, 'COMODORO - MT'),
(10097, 1, 3, 97, 'MACHADINHO - RO'),
(10098, 1, 3, 98, 'NOVA ALVORADA DO SUL - MS'),
(10099, 1, 3, 99, 'DOURADINA'),
(10100, 1, 3, 100, 'RONDONOPOLIS - MT II'),
(10101, 1, 3, 101, 'TAPURAH - MT'),
(10102, 1, 3, 102, 'PORTO VELHO - RO III'),
(10103, 1, 3, 103, 'GUAJARA MIRIM - RO'),
(10104, 1, 3, 104, 'ARIQUEMES - RO II'),
(10106, 1, 3, 106, 'gazin indústria e comércio de móveis e Eltro Ltda'),
(10107, 1, 3, 107, 'SAPEZAL - MT'),
(10108, 1, 3, 108, 'COXIM - MS'),
(10109, 1, 3, 109, 'gazin indústria e comércio de móveis e Eltro Ltda'),
(10110, 1, 3, 110, 'CUJUBIM - RO'),
(10111, 1, 3, 111, 'PEDRA PRETA - MT'),
(10112, 1, 3, 112, 'MARCELANDIA - MT'),
(10113, 1, 3, 113, 'SAO FRANCISCO DO GUAPORE - RO'),
(10114, 1, 3, 114, 'EPITACIOLANDIA - AC'),
(10116, 1, 3, 116, 'LADARIO - MS'),
(10117, 1, 3, 117, 'NOVA BRASILANDIA DO OESTE - RO'),
(10118, 1, 3, 118, 'BARRA DO GARCAS - MT'),
(10119, 1, 3, 119, 'ARIPUANA - MT'),
(10120, 1, 3, 120, 'VILHENA - RO I'),
(10122, 1, 3, 122, ''),
(10123, 1, 3, 123, 'JACIARA - MT'),
(10124, 1, 3, 124, 'JUSCIMEIRA - MT'),
(10126, 1, 3, 126, 'ARAPUTANGA - MT'),
(10127, 1, 3, 127, 'PORTO VELHO - RO IV'),
(10128, 1, 3, 128, 'CAARAPO - MS'),
(10129, 1, 3, 129, 'ALTO GARCAS - MT'),
(10130, 1, 3, 130, 'ALTO ARAGUAIA - MT'),
(10131, 1, 3, 131, 'BRASNORTE - MT'),
(10132, 1, 3, 132, 'SINOP - MT III'),
(10133, 1, 3, 133, 'CASTANHEIRA - MT'),
(10134, 1, 3, 134, 'PEIXOTO DE AZEVEDO - MT'),
(10135, 1, 3, 135, 'RONDONOPOLIS - MT V'),
(10136, 1, 3, 136, 'ACRELANDIA - AC'),
(10137, 1, 3, 137, 'SENADOR GUIOMARD - AC'),
(10138, 1, 3, 138, 'Tangará da Serra II'),
(10139, 1, 3, 139, 'NOVA MAMORE - RO'),
(10140, 1, 3, 140, 'HUMAITA - AM'),
(10141, 1, 3, 141, 'CORUMBA - MS'),
(10142, 1, 3, 142, 'VILA BELA DA SANTISSIMA TRINDADE - MT'),
(10143, 1, 3, 143, 'DOURADINA - PR - INTERNET'),
(10144, 1, 3, 144, 'CACERES - MT II'),
(10145, 1, 3, 145, 'RIO BRANCO - AC'),
(10147, 1, 3, 147, 'VILA RICA - MT'),
(10148, 1, 3, 148, 'MIRANTE DA SERRA - RO'),
(10149, 1, 3, 149, 'CONFRESA - MT'),
(10151, 1, 3, 151, 'ALVORADA DO OESTE - RO'),
(10153, 1, 3, 153, 'RIO BRANCO - AC'),
(10154, 1, 3, 154, 'NAVIRAÍ - MS'),
(10157, 1, 3, 157, 'PORTO VELHO - RO V'),
(10158, 1, 3, 158, 'ALTO TAQUARI - MT'),
(10159, 1, 3, 159, 'RIBEIRAO CASCALHEIRA - MT'),
(10160, 1, 3, 160, 'RIO BRANCO - AC'),
(10165, 1, 3, 165, 'SENA MADUREIRA - AC'),
(10166, 1, 3, 166, 'FEIJO - AC'),
(10167, 1, 3, 167, 'CRUZEIRO DO SUL - AC'),
(10169, 1, 3, 169, 'TARAUACA - AC'),
(10170, 1, 3, 170, 'RONDONOPOLIS - MT IV'),
(10171, 1, 3, 171, 'QUERENCIA - MT'),
(10172, 1, 3, 172, 'IVINHEMA - MS'),
(10177, 1, 3, 177, 'DOURADINA - PR'),
(10178, 1, 3, 178, 'PLACIDO DE CASTRO - AC'),
(10179, 1, 3, 179, 'CRUZEIRO DO SUL - AC'),
(10180, 1, 3, 180, 'RONDONOPOLIS - MT V'),
(10181, 1, 3, 181, 'URUPA - RO'),
(10182, 1, 3, 182, 'GUIRATINGA - MT'),
(10183, 1, 3, 183, 'JURUENA - MT'),
(10184, 1, 3, 184, 'CAMAPUÃ - MS'),
(10185, 1, 3, 185, 'COLNIZA - MT'),
(10186, 1, 3, 186, 'CASSILANDIA - MS'),
(10187, 1, 3, 187, 'RIBAS DO RIO PARDO - MS'),
(10189, 1, 3, 189, 'JI-PARANA - RO'),
(10190, 1, 3, 190, 'CHAPADÃO DO SUL - MS'),
(10191, 1, 3, 191, 'COSTA RICA - MS'),
(10192, 1, 3, 192, 'APARECIDA DO TABOADO - MS'),
(10193, 1, 3, 193, 'CAPIXABA - AC'),
(10194, 1, 3, 194, 'RIO BRANCO - AC'),
(10195, 1, 3, 195, 'RIO BRANCO - AC'),
(10196, 1, 3, 196, 'AGUA CLARA - MS'),
(10197, 1, 3, 197, 'NOVA MUTUM - MT'),
(10199, 1, 3, 199, 'VILHENA - RO III'),
(10200, 1, 3, 200, 'PORTO VELHO - RO VI'),
(10201, 1, 3, 201, 'EPITACIOLANDIA - AC'),
(10202, 1, 3, 202, 'CUIABÁ - MT'),
(10204, 1, 3, 204, 'CAMPO GRANDE - MS'),
(10205, 1, 3, 205, 'ROLIM DE MOURA - RO'),
(10206, 1, 3, 206, 'CACOAL - RO'),
(10207, 1, 3, 207, 'CACOAL - RO'),
(10209, 1, 3, 209, 'ARIQUEMES - RO'),
(10211, 1, 3, 211, 'CRUZEIRO DO SUL - AC'),
(10214, 1, 3, 214, 'PONTES E LACERDA - MT'),
(10215, 1, 3, 215, 'RIO BRANCO - AC'),
(10217, 1, 3, 217, 'CAMPO GRANDE - MS II'),
(10218, 1, 3, 218, 'PORTO VELHO - RO'),
(10219, 1, 3, 219, 'MUTUM PARANA/PORTO VELHO - RO'),
(10220, 1, 3, 220, 'JI-PARANÁ - RO'),
(10221, 1, 3, 221, 'JI-PARANÁ - RO'),
(10224, 1, 3, 224, 'TANGARA DA SERRA - MT'),
(10226, 1, 3, 226, 'PRIMAVERA DO LESTE - MT'),
(10228, 1, 3, 228, 'JI-PARANA - RO'),
(10229, 1, 3, 229, 'NOVO PROGRESSO - PA'),
(10230, 1, 3, 230, 'ITAITUBA - PA'),
(10231, 1, 3, 231, 'ITAITUBA - PA'),
(10232, 1, 3, 232, 'CASTELO DE SONHOS (ALTAMIRA) - PA'),
(10233, 1, 3, 233, 'RIO BRANCO - AC'),
(10234, 1, 3, 234, 'ITAQUIRAI - MS'),
(10235, 1, 3, 235, 'BOCA DO ACRE - AM'),
(10236, 1, 3, 236, 'MINISTRO ANDREAZZA - RO'),
(10237, 1, 3, 237, 'ITIQUIRA - MT'),
(10238, 1, 3, 238, 'CHUPINGUAIA - RO'),
(10239, 1, 3, 239, 'EXTREMA - RO'),
(10240, 1, 3, 240, 'PORTO VELHO - RO'),
(10241, 1, 3, 241, 'SANTAREM - PA'),
(10242, 1, 3, 242, 'SANTAREM - PA / FL 242'),
(10243, 1, 3, 243, 'SANTAREM - PA / FL 243'),
(10246, 1, 3, 246, 'SANTAREM - PA / FL 246'),
(10247, 1, 3, 247, 'MATUPA - MT'),
(10248, 1, 3, 248, 'PRIMAVERA DO LESTE - MT'),
(10249, 1, 3, 249, 'RURÓPOLIS - PA'),
(10250, 1, 3, 250, 'BATAGUASSU - MS'),
(10253, 1, 3, 253, 'TRAIRAO - PA'),
(10254, 1, 3, 254, 'ITAITUBA - PA'),
(10255, 1, 3, 255, 'SORRISO - MT'),
(10256, 1, 3, 256, 'VILHENA - RO I'),
(10257, 1, 3, 257, 'JI-PARANA - RO'),
(10258, 1, 3, 258, 'QUERENCIA - MT'),
(10259, 1, 3, 259, 'CANDEIAS DO JAMARI - RO'),
(10260, 1, 3, 260, 'JARU - RO'),
(10261, 1, 3, 261, 'CORUMBA - MS'),
(10262, 1, 3, 262, 'NOVA UBIRATÃ - MT'),
(10263, 1, 3, 263, 'GAUCHA DO NORTE - MT'),
(10264, 1, 3, 264, 'ALTAMIRA - PA'),
(10270, 1, 3, 270, 'NOVA ALVORADA DO SUL - MS'),
(10271, 1, 3, 271, 'INOCENCIA - MS'),
(10272, 1, 3, 272, 'MIRANDA - MS'),
(10273, 1, 3, 273, 'ANAPU - PA'),
(10274, 1, 3, 274, 'TUCURUÍ - PA'),
(10275, 1, 3, 275, 'URUARA PA'),
(10276, 1, 3, 276, 'SANTAREM - PA / FL 276'),
(10277, 1, 3, 277, 'MEDICILANDIA - PA'),
(10278, 1, 3, 278, 'UNIÃO BANDEIRANTES - RO'),
(10279, 1, 3, 279, 'PIMENTA BUENO - RO'),
(10280, 1, 3, 280, 'RONDONOPOLIS - MT'),
(10281, 1, 3, 281, 'PORTO MURTINHO - MS'),
(10282, 1, 3, 282, 'ANTONIO JOÃO - MS'),
(10284, 1, 3, 284, 'GLORIA DE DOURADOS - MS'),
(10285, 1, 3, 285, 'BRASILANDIA - MS'),
(10286, 1, 3, 286, 'CACERES - MT'),
(10287, 1, 3, 287, 'LUCAS DO RIO VERDE - MT'),
(10288, 1, 3, 288, 'JUINA - MT'),
(10289, 1, 3, 289, 'ITAPORÃ - MS'),
(10290, 1, 3, 290, 'NIOAQUE - MS'),
(10291, 1, 3, 291, 'ANASTÁCIO - MS'),
(10292, 1, 3, 292, 'RIO BRANCO - AC'),
(10293, 1, 3, 293, 'CAMPOS DE JÚLIO - MT'),
(10295, 1, 3, 295, 'SERINGUEIRAS - RO'),
(10296, 1, 3, 296, 'ROLIM DE MOURA - RO'),
(10297, 1, 3, 297, 'LÁBREA - AM'),
(10299, 1, 3, 299, 'DOURADOS - MS'),
(10300, 1, 3, 300, 'PONTA PORÃ - MS'),
(10301, 1, 3, 301, 'SORRISO - MT'),
(10302, 1, 3, 302, 'VARZEA GRANDE - MT'),
(10304, 1, 3, 304, 'BOM JESUS DO ARAGUAIA- MT'),
(10305, 1, 3, 305, 'CORUMBA - MS'),
(10306, 1, 3, 306, 'BODOQUENA - MS'),
(10309, 1, 3, 309, 'CORONEL SAPUCAIA - MS'),
(10310, 1, 3, 310, 'PORTO ALEGRE DO NORTE - MT'),
(10311, 1, 3, 311, 'COXIM - MS'),
(10312, 1, 3, 312, 'CONFRESA - MT'),
(10313, 1, 3, 313, 'TERENOS MS'),
(10314, 1, 3, 314, 'VARZEA GRANDE - MT'),
(10315, 1, 3, 315, 'VARZEA GRANDE - MT'),
(10316, 1, 3, 316, 'CAMPINAPOLIS - MT'),
(10317, 1, 3, 317, 'PORTO VELHO - RO'),
(10318, 1, 3, 318, 'BRASILEIA - AC'),
(10319, 1, 3, 319, 'NOVO REPARTIMENTO - PA'),
(10320, 1, 3, 320, 'FIGUEIRÃO - MS'),
(10321, 1, 3, 321, 'ANAURILANDIA - MS'),
(10322, 1, 3, 322, 'TRES LAGOAS - MS'),
(10323, 1, 3, 323, 'MARACAJU - MS'),
(10324, 1, 3, 324, 'SÃO FÉLIX DO ARAGUAIA - MT'),
(10325, 1, 3, 325, 'TRÊS LAGOAS - MS'),
(10326, 1, 3, 326, 'VISTA ALEGRE DO ABUNÃ (PORTO VELHO)-RO'),
(10327, 1, 3, 327, 'ALTA FLORESTA - MT'),
(10328, 1, 3, 328, 'CHAPADA DOS GUIMARAES - MT'),
(10329, 1, 3, 329, 'CAMPO VERDE - MT'),
(10332, 1, 3, 332, 'PORTO VELHO - RO'),
(10334, 1, 3, 334, 'CACOAL - RO'),
(10335, 1, 3, 335, 'POXORÉU - MT'),
(10336, 1, 3, 336, 'CAMPO GRANDE MS'),
(10337, 1, 3, 337, 'NOVO SÃO JOAQUIM - MT'),
(10338, 1, 3, 338, 'DOURADOS - MS'),
(10339, 1, 3, 339, 'ALTO ALEGRE DOS PARECIS - RO'),
(10340, 1, 3, 340, 'COCALINHO - MT'),
(10341, 1, 3, 341, 'NOVA XAVANTINA - MT'),
(10342, 1, 3, 342, 'DOURADOS - MS'),
(10343, 1, 3, 343, 'VÁRZEA GRANDE - MT'),
(10344, 1, 3, 344, 'CUIABÁ - MT'),
(10345, 1, 3, 345, 'NOVA BANDEIRANTES - MT'),
(10346, 1, 3, 346, 'ITAITUBA - PA'),
(10347, 1, 3, 347, 'CAMPO GRANDE - MS'),
(10348, 1, 3, 348, 'JI - PARANÁ - RO'),
(10349, 1, 3, 349, 'PACAJÁ - PA'),
(10350, 1, 3, 350, 'CAMPO GRANDE - MS'),
(10351, 1, 3, 351, 'DEODAPÓLIS-MS'),
(10353, 1, 3, 353, 'CRUZEIRO DO SUL - AC'),
(10355, 1, 3, 355, 'CAMPO GRANDE - MS'),
(10357, 1, 3, 357, 'MORAES ALMEIDA (ITAITUBA) - PA'),
(10358, 1, 3, 358, 'HUMAITÁ - AM'),
(10359, 1, 3, 359, 'ASSIS BRASIL - AC'),
(10361, 1, 3, 361, 'FEIRA DE SANTANA - BA'),
(10362, 1, 3, 362, 'FEIRA DE SANTANA - BA'),
(10363, 1, 3, 363, 'FEIRA DE SANTANA - BA'),
(10364, 1, 3, 364, 'FEIRA DE SANTANA - BA'),
(10365, 1, 3, 365, 'FEIRA DE SANTANA - BA'),
(10366, 1, 3, 366, 'FEIRA DE SANTANA - BA'),
(10367, 1, 3, 367, 'CAMPO GRANDE - MS'),
(10368, 1, 3, 368, 'EPITACIOLANDIA - AC'),
(10369, 1, 3, 369, 'ORIXIMINÁ -PA'),
(10370, 1, 3, 370, 'ALENQUER - PA'),
(10371, 1, 3, 371, 'JURUTI - PA'),
(10372, 1, 3, 372, 'MONTE ALEGRE - PA'),
(10373, 1, 3, 373, 'ÓBIDOS - PA'),
(10374, 1, 3, 374, 'PORTO VELHO - RO'),
(10376, 1, 3, 376, 'SINOP - MT'),
(10377, 1, 3, 377, 'PEDRO GOMES - MS'),
(10378, 1, 3, 378, 'MIRITITUBA - PA'),
(10380, 1, 3, 380, 'PLACAS - PA'),
(10381, 1, 3, 381, 'COSTA MARQUES - RO'),
(10382, 1, 3, 382, 'XAPURI - AC'),
(10383, 1, 3, 383, 'RIO BRANCO - AC'),
(10384, 1, 3, 384, 'BURITIS - RO'),
(10385, 1, 3, 385, 'VALE DO ANARI - RO'),
(10386, 1, 3, 386, 'SENADOR GUIOMARD - AC'),
(10387, 1, 3, 387, 'GUAJARÁ-MIRIM - RO'),
(10388, 1, 3, 388, 'APUÍ - AM'),
(10389, 1, 3, 389, 'NOVA DIMENSÃO ( NOVA MAMORÉ) - RO'),
(10390, 1, 3, 390, 'ITAPUÃ DO OESTE - RO'),
(10392, 1, 3, 392, 'RONDONOPOLIS - MT'),
(10393, 1, 3, 393, 'CORUMBIARA - RO'),
(10821, 1, 3, 821, 'DOURADINA'),
(10826, 1, 3, 826, 'DOURADINA'),
(10890, 1, 3, 890, 'PETROQUIMICA RIO TERCEIRO S. A.'),
(10998, 1, 3, 998, 'FILIAL TESTE T.I.'),
(10999, 1, 3, 999, 'INTERNET ATACADO'),
(140002, 14, 3, 2, 'IPAMERI - GO'),
(140003, 14, 3, 3, 'CALDAS NOVAS - GO'),
(140004, 14, 3, 4, 'ITUMBIARA - GO'),
(140005, 14, 3, 5, 'PIRES DO RIO - GO'),
(140006, 14, 3, 6, 'MORRINHOS - GO'),
(140007, 14, 3, 7, 'PORANGATU - GO'),
(140008, 14, 3, 8, 'CRISTALINA - GO'),
(140009, 14, 3, 9, 'GURUPI - TO'),
(240001, 24, 3, 1, 'CAPANEMA - PA'),
(240003, 24, 3, 3, 'SANTA LUZIA DO PARA - PA'),
(240004, 24, 3, 4, 'PRIMAVERA - PA'),
(240005, 24, 3, 5, 'SAO MIGUEL DO GUAMÁ - PA'),
(240006, 24, 3, 6, 'SALINÓPOLIS - PA'),
(240007, 24, 3, 7, 'SÃO JOÃO DE PIRABAS - PA'),
(240009, 24, 3, 9, 'CASTANHAL - PA'),
(240010, 24, 3, 10, 'MÃE DO RIO - PA'),
(240011, 24, 3, 11, 'IGARAPÉ-AÇU - PA'),
(240012, 24, 3, 12, 'IRITUIA - PA'),
(240014, 24, 3, 14, 'CAPANEMA - PA'),
(240015, 24, 3, 15, 'SANTA MARIA DO PARA - PA'),
(240016, 24, 3, 16, 'NOVA ESPERANÇA DO PIRIA - PA'),
(240017, 24, 3, 17, 'SÃO DOMINGOS DO CAPIM - PA'),
(240018, 24, 3, 18, 'PARAGOMINAS - PA'),
(240019, 24, 3, 19, 'CAPITÃO POÇO - PA'),
(240020, 24, 3, 20, 'BRAGANÇA - PA');

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `situacao_cadastro_csg`
--

CREATE TABLE `situacao_cadastro_csg` (
  `id` int(11) NOT NULL,
  `descricao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `situacao_cadastro_csg`
--

INSERT INTO `situacao_cadastro_csg` (`id`, `descricao`) VALUES
(1, 'Ativo'),
(2, 'Inativo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `suporte_team`
--

CREATE TABLE `suporte_team` (
  `id` int(11) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `ramal` int(11) NOT NULL,
  `ddd` int(11) NOT NULL,
  `telefone` int(11) NOT NULL,
  `email` varchar(150) NOT NULL,
  `id_contato_padrao` int(11) NOT NULL,
  `foto` varchar(200) NOT NULL,
  `responsabilidades` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `suporte_team`
--

INSERT INTO `suporte_team` (`id`, `nome`, `ramal`, `ddd`, `telefone`, `email`, `id_contato_padrao`, `foto`, `responsabilidades`) VALUES
(1, 'Lucas Sanches dos Santos', 2868, 44, 991025800, 'lucas.santos@gazin.com.br', 3, '8d8d11d1-e8a3-4b48-a8dd-4dc04af4853c.jpeg', 'Assessor direto da gerência do Varejo.\nControle de verba e recomposição de rentabilidade.\nEmitir relatórios e controles voltados a venda.'),
(2, 'RENATA AGRELA BASSI', 0, 44, 991325489, 'renata.bassi@gazin.com.br', 1, 'renata.jpeg', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_setor_funcionario`
--

CREATE TABLE `tipo_setor_funcionario` (
  `id` int(11) NOT NULL,
  `descricao` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tipo_setor_funcionario`
--

INSERT INTO `tipo_setor_funcionario` (`id`, `descricao`) VALUES
(1, 'Filial'),
(2, 'Assessoria');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_usuario`
--

CREATE TABLE `tipo_usuario` (
  `id` int(11) NOT NULL,
  `descricao` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tipo_usuario`
--

INSERT INTO `tipo_usuario` (`id`, `descricao`) VALUES
(1, 'Filial'),
(2, 'Suporte'),
(3, 'Administrador');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `usuario` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`idusuario`, `nome`, `usuario`) VALUES
(2669, 'RENATA AGRELA BASSI', 'renata.bassi'),
(9524, 'LUCAS SANCHES DOS SANTOS', 'lucas.santos'),
(12051, 'MATEUS VAGLIERI TESSAROLO', 'mateus.vaglieri');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario_csg`
--

CREATE TABLE `usuario_csg` (
  `id_usuario_csg` int(11) NOT NULL,
  `id_usuario_sabium` int(11) NOT NULL,
  `idfilial` int(11) NOT NULL,
  `id_tipo_usuario` int(11) NOT NULL,
  `usuario` varchar(200) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `ramal` int(4) NOT NULL,
  `ddd` int(2) NOT NULL,
  `telefone` int(9) NOT NULL,
  `email` varchar(200) NOT NULL,
  `id_contato_padrao` int(11) NOT NULL,
  `foto` varchar(200) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `data_criacao` timestamp NOT NULL DEFAULT current_timestamp(),
  `id_tipo_setor_funcionario` int(11) NOT NULL,
  `id_situacao_cadastro_csg` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuario_csg`
--

INSERT INTO `usuario_csg` (`id_usuario_csg`, `id_usuario_sabium`, `idfilial`, `id_tipo_usuario`, `usuario`, `nome`, `ramal`, `ddd`, `telefone`, `email`, `id_contato_padrao`, `foto`, `senha`, `data_criacao`, `id_tipo_setor_funcionario`, `id_situacao_cadastro_csg`) VALUES
(1, 9524, 0, 3, 'lucas.santos', 'Lucas Sanches dos Santos', 2868, 44, 991025800, 'lucas.santos@gazin.com.br', 3, '8d8d11d1-e8a3-4b48-a8dd-4dc04af4853c.jpeg', 'senha', '2023-02-20 22:47:53', 2, 1),
(2, 0, 10002, 1, 'filial_1.002', '', 0, 0, 0, '', 0, '', '990796', '2023-02-21 19:48:30', 1, 1),
(3, 0, 10003, 1, 'filial_1.003', '', 0, 0, 0, '', 0, '', '270655', '2023-02-21 19:48:30', 1, 1),
(4, 0, 10004, 1, 'filial_1.004', '', 0, 0, 0, '', 0, '', '662256', '2023-02-21 19:48:30', 1, 1),
(5, 0, 10005, 1, 'filial_1.005', '', 0, 0, 0, '', 0, '', '396978', '2023-02-21 19:48:30', 1, 1),
(6, 0, 10006, 1, 'filial_1.006', '', 0, 0, 0, '', 0, '', '294779', '2023-02-21 19:48:30', 1, 1),
(7, 0, 10007, 1, 'filial_1.007', '', 0, 0, 0, '', 0, '', '948602', '2023-02-21 19:48:30', 1, 1),
(8, 0, 10008, 1, 'filial_1.008', '', 0, 0, 0, '', 0, '', '191274', '2023-02-21 19:48:30', 1, 1),
(9, 0, 10009, 1, 'filial_1.009', '', 0, 0, 0, '', 0, '', '264149', '2023-02-21 19:48:30', 1, 1),
(10, 0, 10010, 1, 'filial_1.010', '', 0, 0, 0, '', 0, '', '496929', '2023-02-21 19:48:30', 1, 1),
(11, 0, 10011, 1, 'filial_1.011', '', 0, 0, 0, '', 0, '', '308409', '2023-02-21 19:48:30', 1, 1),
(12, 0, 10012, 1, 'filial_1.012', '', 0, 0, 0, '', 0, '', '119556', '2023-02-21 19:48:30', 1, 1),
(13, 0, 10013, 1, 'filial_1.013', '', 0, 0, 0, '', 0, '', '810440', '2023-02-21 19:48:30', 1, 1),
(14, 0, 10014, 1, 'filial_1.014', '', 0, 0, 0, '', 0, '', '417220', '2023-02-21 19:48:30', 1, 1),
(15, 0, 10015, 1, 'filial_1.015', '', 0, 0, 0, '', 0, '', '291021', '2023-02-21 19:48:30', 1, 1),
(16, 0, 10016, 1, 'filial_1.016', '', 0, 0, 0, '', 0, '', '510085', '2023-02-21 19:48:30', 1, 1),
(17, 0, 10017, 1, 'filial_1.017', '', 0, 0, 0, '', 0, '', '660979', '2023-02-21 19:48:30', 1, 1),
(18, 0, 10018, 1, 'filial_1.018', '', 0, 0, 0, '', 0, '', '318383', '2023-02-21 19:48:30', 1, 1),
(19, 0, 10019, 1, 'filial_1.019', '', 0, 0, 0, '', 0, '', '787129', '2023-02-21 19:48:30', 1, 1),
(20, 0, 10020, 1, 'filial_1.020', '', 0, 0, 0, '', 0, '', '232135', '2023-02-21 19:48:30', 1, 1),
(21, 0, 10021, 1, 'filial_1.021', '', 0, 0, 0, '', 0, '', '860506', '2023-02-21 19:48:30', 1, 1),
(22, 0, 10022, 1, 'filial_1.022', '', 0, 0, 0, '', 0, '', '857200', '2023-02-21 19:48:30', 1, 1),
(23, 0, 10023, 1, 'filial_1.023', '', 0, 0, 0, '', 0, '', '754147', '2023-02-21 19:48:30', 1, 1),
(24, 0, 10024, 1, 'filial_1.024', '', 0, 0, 0, '', 0, '', '948202', '2023-02-21 19:48:30', 1, 1),
(25, 0, 10025, 1, 'filial_1.025', '', 0, 0, 0, '', 0, '', '896409', '2023-02-21 19:48:30', 1, 1),
(26, 0, 10026, 1, 'filial_1.026', '', 0, 0, 0, '', 0, '', '167786', '2023-02-21 19:48:30', 1, 1),
(27, 0, 10027, 1, 'filial_1.027', '', 0, 0, 0, '', 0, '', '466516', '2023-02-21 19:48:30', 1, 1),
(28, 0, 10028, 1, 'filial_1.028', '', 0, 0, 0, '', 0, '', '233721', '2023-02-21 19:48:30', 1, 1),
(29, 0, 10029, 1, 'filial_1.029', '', 0, 0, 0, '', 0, '', '935744', '2023-02-21 19:48:30', 1, 1),
(30, 0, 10030, 1, 'filial_1.030', '', 0, 0, 0, '', 0, '', '876965', '2023-02-21 19:48:30', 1, 1),
(31, 0, 10031, 1, 'filial_1.031', '', 0, 0, 0, '', 0, '', '393753', '2023-02-21 19:48:30', 1, 1),
(32, 0, 10032, 1, 'filial_1.032', '', 0, 0, 0, '', 0, '', '677787', '2023-02-21 19:48:30', 1, 1),
(33, 0, 10033, 1, 'filial_1.033', '', 0, 0, 0, '', 0, '', '290641', '2023-02-21 19:48:30', 1, 1),
(34, 0, 10034, 1, 'filial_1.034', '', 0, 0, 0, '', 0, '', '392670', '2023-02-21 19:48:30', 1, 1),
(35, 0, 10035, 1, 'filial_1.035', '', 0, 0, 0, '', 0, '', '421924', '2023-02-21 19:48:30', 1, 1),
(36, 0, 10036, 1, 'filial_1.036', '', 0, 0, 0, '', 0, '', '178951', '2023-02-21 19:48:30', 1, 1),
(37, 0, 10037, 1, 'filial_1.037', '', 0, 0, 0, '', 0, '', '426129', '2023-02-21 19:48:30', 1, 1),
(38, 0, 10038, 1, 'filial_1.038', '', 0, 0, 0, '', 0, '', '438936', '2023-02-21 19:48:30', 1, 1),
(39, 0, 10039, 1, 'filial_1.039', '', 0, 0, 0, '', 0, '', '591043', '2023-02-21 19:48:30', 1, 1),
(40, 0, 10040, 1, 'filial_1.040', '', 0, 0, 0, '', 0, '', '822214', '2023-02-21 19:48:30', 1, 1),
(41, 0, 10041, 1, 'filial_1.041', '', 0, 0, 0, '', 0, '', '175872', '2023-02-21 19:48:30', 1, 1),
(42, 0, 10043, 1, 'filial_1.043', '', 0, 0, 0, '', 0, '', '688873', '2023-02-21 19:48:30', 1, 1),
(43, 0, 10044, 1, 'filial_1.044', '', 0, 0, 0, '', 0, '', '758994', '2023-02-21 19:48:30', 1, 1),
(44, 0, 10045, 1, 'filial_1.045', '', 0, 0, 0, '', 0, '', '950720', '2023-02-21 19:48:30', 1, 1),
(45, 0, 10046, 1, 'filial_1.046', '', 0, 0, 0, '', 0, '', '996027', '2023-02-21 19:48:30', 1, 1),
(46, 0, 10047, 1, 'filial_1.047', '', 0, 0, 0, '', 0, '', '417060', '2023-02-21 19:48:30', 1, 1),
(47, 0, 10048, 1, 'filial_1.048', '', 0, 0, 0, '', 0, '', '202709', '2023-02-21 19:48:30', 1, 1),
(48, 0, 10049, 1, 'filial_1.049', '', 0, 0, 0, '', 0, '', '878020', '2023-02-21 19:48:30', 1, 1),
(49, 0, 10051, 1, 'filial_1.051', '', 0, 0, 0, '', 0, '', '308091', '2023-02-21 19:48:30', 1, 1),
(50, 0, 10052, 1, 'filial_1.052', '', 0, 0, 0, '', 0, '', '781738', '2023-02-21 19:48:30', 1, 1),
(51, 0, 10053, 1, 'filial_1.053', '', 0, 0, 0, '', 0, '', '853953', '2023-02-21 19:48:30', 1, 1),
(52, 0, 10054, 1, 'filial_1.054', '', 0, 0, 0, '', 0, '', '358845', '2023-02-21 19:48:30', 1, 1),
(53, 0, 10055, 1, 'filial_1.055', '', 0, 0, 0, '', 0, '', '320219', '2023-02-21 19:48:30', 1, 1),
(54, 0, 10056, 1, 'filial_1.056', '', 0, 0, 0, '', 0, '', '287837', '2023-02-21 19:48:30', 1, 1),
(55, 0, 10057, 1, 'filial_1.057', '', 0, 0, 0, '', 0, '', '791158', '2023-02-21 19:48:30', 1, 1),
(56, 0, 10058, 1, 'filial_1.058', '', 0, 0, 0, '', 0, '', '488065', '2023-02-21 19:48:30', 1, 1),
(57, 0, 10059, 1, 'filial_1.059', '', 0, 0, 0, '', 0, '', '165483', '2023-02-21 19:48:30', 1, 1),
(58, 0, 10060, 1, 'filial_1.060', '', 0, 0, 0, '', 0, '', '262452', '2023-02-21 19:48:30', 1, 1),
(59, 0, 10061, 1, 'filial_1.061', '', 0, 0, 0, '', 0, '', '276349', '2023-02-21 19:48:30', 1, 1),
(60, 0, 10062, 1, 'filial_1.062', '', 0, 0, 0, '', 0, '', '209539', '2023-02-21 19:48:30', 1, 1),
(61, 0, 10063, 1, 'filial_1.063', '', 0, 0, 0, '', 0, '', '549287', '2023-02-21 19:48:30', 1, 1),
(62, 0, 10064, 1, 'filial_1.064', '', 0, 0, 0, '', 0, '', '247797', '2023-02-21 19:48:30', 1, 1),
(63, 0, 10065, 1, 'filial_1.065', '', 0, 0, 0, '', 0, '', '416603', '2023-02-21 19:48:30', 1, 1),
(64, 0, 10066, 1, 'filial_1.066', '', 0, 0, 0, '', 0, '', '499045', '2023-02-21 19:48:30', 1, 1),
(65, 0, 10069, 1, 'filial_1.069', '', 0, 0, 0, '', 0, '', '158482', '2023-02-21 19:48:30', 1, 1),
(66, 0, 10070, 1, 'filial_1.070', '', 0, 0, 0, '', 0, '', '861090', '2023-02-21 19:48:30', 1, 1),
(67, 0, 10071, 1, 'filial_1.071', '', 0, 0, 0, '', 0, '', '807092', '2023-02-21 19:48:30', 1, 1),
(68, 0, 10072, 1, 'filial_1.072', '', 0, 0, 0, '', 0, '', '306604', '2023-02-21 19:48:30', 1, 1),
(69, 0, 10073, 1, 'filial_1.073', '', 0, 0, 0, '', 0, '', '797146', '2023-02-21 19:48:30', 1, 1),
(70, 0, 10074, 1, 'filial_1.074', '', 0, 0, 0, '', 0, '', '386478', '2023-02-21 19:48:30', 1, 1),
(71, 0, 10075, 1, 'filial_1.075', '', 0, 0, 0, '', 0, '', '123420', '2023-02-21 19:48:30', 1, 1),
(72, 0, 10076, 1, 'filial_1.076', '', 0, 0, 0, '', 0, '', '927114', '2023-02-21 19:48:30', 1, 1),
(73, 0, 10077, 1, 'filial_1.077', '', 0, 0, 0, '', 0, '', '188711', '2023-02-21 19:48:30', 1, 1),
(74, 0, 10078, 1, 'filial_1.078', '', 0, 0, 0, '', 0, '', '419998', '2023-02-21 19:48:30', 1, 1),
(75, 0, 10079, 1, 'filial_1.079', '', 0, 0, 0, '', 0, '', '517129', '2023-02-21 19:48:30', 1, 1),
(76, 0, 10080, 1, 'filial_1.080', '', 0, 0, 0, '', 0, '', '196231', '2023-02-21 19:48:30', 1, 1),
(77, 0, 10081, 1, 'filial_1.081', '', 0, 0, 0, '', 0, '', '531626', '2023-02-21 19:48:30', 1, 1),
(78, 0, 10082, 1, 'filial_1.082', '', 0, 0, 0, '', 0, '', '322368', '2023-02-21 19:48:30', 1, 1),
(79, 0, 10083, 1, 'filial_1.083', '', 0, 0, 0, '', 0, '', '207433', '2023-02-21 19:48:30', 1, 1),
(80, 0, 10084, 1, 'filial_1.084', '', 0, 0, 0, '', 0, '', '782254', '2023-02-21 19:48:30', 1, 1),
(81, 0, 10086, 1, 'filial_1.086', '', 0, 0, 0, '', 0, '', '693445', '2023-02-21 19:48:30', 1, 1),
(82, 0, 10087, 1, 'filial_1.087', '', 0, 0, 0, '', 0, '', '257332', '2023-02-21 19:48:30', 1, 1),
(83, 0, 10088, 1, 'filial_1.088', '', 0, 0, 0, '', 0, '', '288455', '2023-02-21 19:48:30', 1, 1),
(84, 0, 10089, 1, 'filial_1.089', '', 0, 0, 0, '', 0, '', '940903', '2023-02-21 19:48:30', 1, 1),
(85, 0, 10090, 1, 'filial_1.090', '', 0, 0, 0, '', 0, '', '490950', '2023-02-21 19:48:30', 1, 1),
(86, 0, 10091, 1, 'filial_1.091', '', 0, 0, 0, '', 0, '', '882697', '2023-02-21 19:48:30', 1, 1),
(87, 0, 10092, 1, 'filial_1.092', '', 0, 0, 0, '', 0, '', '485278', '2023-02-21 19:48:30', 1, 1),
(88, 0, 10093, 1, 'filial_1.093', '', 0, 0, 0, '', 0, '', '816682', '2023-02-21 19:48:30', 1, 1),
(89, 0, 10094, 1, 'filial_1.094', '', 0, 0, 0, '', 0, '', '899162', '2023-02-21 19:48:30', 1, 1),
(90, 0, 10095, 1, 'filial_1.095', '', 0, 0, 0, '', 0, '', '162402', '2023-02-21 19:48:30', 1, 1),
(91, 0, 10097, 1, 'filial_1.097', '', 0, 0, 0, '', 0, '', '307767', '2023-02-21 19:48:30', 1, 1),
(92, 0, 10098, 1, 'filial_1.098', '', 0, 0, 0, '', 0, '', '128990', '2023-02-21 19:48:30', 1, 1),
(93, 0, 10099, 1, 'filial_1.099', '', 0, 0, 0, '', 0, '', '853740', '2023-02-21 19:48:30', 1, 1),
(94, 0, 10100, 1, 'filial_1.100', '', 0, 0, 0, '', 0, '', '177282', '2023-02-21 19:48:30', 1, 1),
(95, 0, 10101, 1, 'filial_1.101', '', 0, 0, 0, '', 0, '', '587842', '2023-02-21 19:48:30', 1, 1),
(96, 0, 10102, 1, 'filial_1.102', '', 0, 0, 0, '', 0, '', '513809', '2023-02-21 19:48:30', 1, 1),
(97, 0, 10103, 1, 'filial_1.103', '', 0, 0, 0, '', 0, '', '392986', '2023-02-21 19:48:30', 1, 1),
(98, 0, 10104, 1, 'filial_1.104', '', 0, 0, 0, '', 0, '', '421540', '2023-02-21 19:48:30', 1, 1),
(99, 0, 10107, 1, 'filial_1.107', '', 0, 0, 0, '', 0, '', '197532', '2023-02-21 19:48:30', 1, 1),
(100, 0, 10108, 1, 'filial_1.108', '', 0, 0, 0, '', 0, '', '485776', '2023-02-21 19:48:30', 1, 1),
(101, 0, 10110, 1, 'filial_1.110', '', 0, 0, 0, '', 0, '', '947450', '2023-02-21 19:48:30', 1, 1),
(102, 0, 10111, 1, 'filial_1.111', '', 0, 0, 0, '', 0, '', '912652', '2023-02-21 19:48:30', 1, 1),
(103, 0, 10112, 1, 'filial_1.112', '', 0, 0, 0, '', 0, '', '236811', '2023-02-21 19:48:30', 1, 1),
(104, 0, 10113, 1, 'filial_1.113', '', 0, 0, 0, '', 0, '', '948821', '2023-02-21 19:48:30', 1, 1),
(105, 0, 10114, 1, 'filial_1.114', '', 0, 0, 0, '', 0, '', '861572', '2023-02-21 19:48:30', 1, 1),
(106, 0, 10116, 1, 'filial_1.116', '', 0, 0, 0, '', 0, '', '646582', '2023-02-21 19:48:30', 1, 1),
(107, 0, 10117, 1, 'filial_1.117', '', 0, 0, 0, '', 0, '', '291664', '2023-02-21 19:48:30', 1, 1),
(108, 0, 10118, 1, 'filial_1.118', '', 0, 0, 0, '', 0, '', '671070', '2023-02-21 19:48:30', 1, 1),
(109, 0, 10119, 1, 'filial_1.119', '', 0, 0, 0, '', 0, '', '520117', '2023-02-21 19:48:30', 1, 1),
(110, 0, 10120, 1, 'filial_1.120', '', 0, 0, 0, '', 0, '', '849670', '2023-02-21 19:48:30', 1, 1),
(111, 0, 10123, 1, 'filial_1.123', '', 0, 0, 0, '', 0, '', '151178', '2023-02-21 19:48:30', 1, 1),
(112, 0, 10124, 1, 'filial_1.124', '', 0, 0, 0, '', 0, '', '745728', '2023-02-21 19:48:30', 1, 1),
(113, 0, 10126, 1, 'filial_1.126', '', 0, 0, 0, '', 0, '', '995719', '2023-02-21 19:48:30', 1, 1),
(114, 0, 10127, 1, 'filial_1.127', '', 0, 0, 0, '', 0, '', '279693', '2023-02-21 19:48:30', 1, 1),
(115, 0, 10128, 1, 'filial_1.128', '', 0, 0, 0, '', 0, '', '438621', '2023-02-21 19:48:30', 1, 1),
(116, 0, 10129, 1, 'filial_1.129', '', 0, 0, 0, '', 0, '', '802485', '2023-02-21 19:48:30', 1, 1),
(117, 0, 10130, 1, 'filial_1.130', '', 0, 0, 0, '', 0, '', '712184', '2023-02-21 19:48:30', 1, 1),
(118, 0, 10131, 1, 'filial_1.131', '', 0, 0, 0, '', 0, '', '447146', '2023-02-21 19:48:30', 1, 1),
(119, 0, 10132, 1, 'filial_1.132', '', 0, 0, 0, '', 0, '', '933019', '2023-02-21 19:48:30', 1, 1),
(120, 0, 10133, 1, 'filial_1.133', '', 0, 0, 0, '', 0, '', '128167', '2023-02-21 19:48:30', 1, 1),
(121, 0, 10134, 1, 'filial_1.134', '', 0, 0, 0, '', 0, '', '877511', '2023-02-21 19:48:30', 1, 1),
(122, 0, 10135, 1, 'filial_1.135', '', 0, 0, 0, '', 0, '', '549083', '2023-02-21 19:48:30', 1, 1),
(123, 0, 10136, 1, 'filial_1.136', '', 0, 0, 0, '', 0, '', '709250', '2023-02-21 19:48:30', 1, 1),
(124, 0, 10137, 1, 'filial_1.137', '', 0, 0, 0, '', 0, '', '165542', '2023-02-21 19:48:30', 1, 1),
(125, 0, 10138, 1, 'filial_1.138', '', 0, 0, 0, '', 0, '', '714889', '2023-02-21 19:48:30', 1, 1),
(126, 0, 10139, 1, 'filial_1.139', '', 0, 0, 0, '', 0, '', '115322', '2023-02-21 19:48:30', 1, 1),
(127, 0, 10140, 1, 'filial_1.140', '', 0, 0, 0, '', 0, '', '392431', '2023-02-21 19:48:30', 1, 1),
(128, 0, 10141, 1, 'filial_1.141', '', 0, 0, 0, '', 0, '', '650598', '2023-02-21 19:48:30', 1, 1),
(129, 0, 10142, 1, 'filial_1.142', '', 0, 0, 0, '', 0, '', '919776', '2023-02-21 19:48:30', 1, 1),
(130, 0, 10143, 1, 'filial_1.143', '', 0, 0, 0, '', 0, '', '304547', '2023-02-21 19:48:30', 1, 1),
(131, 0, 10144, 1, 'filial_1.144', '', 0, 0, 0, '', 0, '', '294471', '2023-02-21 19:48:30', 1, 1),
(132, 0, 10145, 1, 'filial_1.145', '', 0, 0, 0, '', 0, '', '660164', '2023-02-21 19:48:30', 1, 1),
(133, 0, 10147, 1, 'filial_1.147', '', 0, 0, 0, '', 0, '', '933517', '2023-02-21 19:48:30', 1, 1),
(134, 0, 10148, 1, 'filial_1.148', '', 0, 0, 0, '', 0, '', '720499', '2023-02-21 19:48:30', 1, 1),
(135, 0, 10149, 1, 'filial_1.149', '', 0, 0, 0, '', 0, '', '517311', '2023-02-21 19:48:30', 1, 1),
(136, 0, 10151, 1, 'filial_1.151', '', 0, 0, 0, '', 0, '', '157903', '2023-02-21 19:48:30', 1, 1),
(137, 0, 10153, 1, 'filial_1.153', '', 0, 0, 0, '', 0, '', '710551', '2023-02-21 19:48:30', 1, 1),
(138, 0, 10154, 1, 'filial_1.154', '', 0, 0, 0, '', 0, '', '781408', '2023-02-21 19:48:30', 1, 1),
(139, 0, 10157, 1, 'filial_1.157', '', 0, 0, 0, '', 0, '', '233893', '2023-02-21 19:48:30', 1, 1),
(140, 0, 10158, 1, 'filial_1.158', '', 0, 0, 0, '', 0, '', '753959', '2023-02-21 19:48:30', 1, 1),
(141, 0, 10159, 1, 'filial_1.159', '', 0, 0, 0, '', 0, '', '914034', '2023-02-21 19:48:30', 1, 1),
(142, 0, 10160, 1, 'filial_1.160', '', 0, 0, 0, '', 0, '', '869241', '2023-02-21 19:48:30', 1, 1),
(143, 0, 10165, 1, 'filial_1.165', '', 0, 0, 0, '', 0, '', '513580', '2023-02-21 19:48:30', 1, 1),
(144, 0, 10166, 1, 'filial_1.166', '', 0, 0, 0, '', 0, '', '820598', '2023-02-21 19:48:30', 1, 1),
(145, 0, 10167, 1, 'filial_1.167', '', 0, 0, 0, '', 0, '', '768386', '2023-02-21 19:48:30', 1, 1),
(146, 0, 10169, 1, 'filial_1.169', '', 0, 0, 0, '', 0, '', '315002', '2023-02-21 19:48:30', 1, 1),
(147, 0, 10170, 1, 'filial_1.170', '', 0, 0, 0, '', 0, '', '845053', '2023-02-21 19:48:30', 1, 1),
(148, 0, 10171, 1, 'filial_1.171', '', 0, 0, 0, '', 0, '', '505141', '2023-02-21 19:48:30', 1, 1),
(149, 0, 10172, 1, 'filial_1.172', '', 0, 0, 0, '', 0, '', '534332', '2023-02-21 19:48:30', 1, 1),
(150, 0, 10177, 1, 'filial_1.177', '', 0, 0, 0, '', 0, '', '814311', '2023-02-21 19:48:30', 1, 1),
(151, 0, 10178, 1, 'filial_1.178', '', 0, 0, 0, '', 0, '', '443756', '2023-02-21 19:48:30', 1, 1),
(152, 0, 10179, 1, 'filial_1.179', '', 0, 0, 0, '', 0, '', '150871', '2023-02-21 19:48:30', 1, 1),
(153, 0, 10180, 1, 'filial_1.180', '', 0, 0, 0, '', 0, '', '230019', '2023-02-21 19:48:30', 1, 1),
(154, 0, 10181, 1, 'filial_1.181', '', 0, 0, 0, '', 0, '', '286514', '2023-02-21 19:48:30', 1, 1),
(155, 0, 10182, 1, 'filial_1.182', '', 0, 0, 0, '', 0, '', '629877', '2023-02-21 19:48:30', 1, 1),
(156, 0, 10183, 1, 'filial_1.183', '', 0, 0, 0, '', 0, '', '610856', '2023-02-21 19:48:30', 1, 1),
(157, 0, 10184, 1, 'filial_1.184', '', 0, 0, 0, '', 0, '', '698067', '2023-02-21 19:48:30', 1, 1),
(158, 0, 10185, 1, 'filial_1.185', '', 0, 0, 0, '', 0, '', '360839', '2023-02-21 19:48:30', 1, 1),
(159, 0, 10186, 1, 'filial_1.186', '', 0, 0, 0, '', 0, '', '735922', '2023-02-21 19:48:30', 1, 1),
(160, 0, 10187, 1, 'filial_1.187', '', 0, 0, 0, '', 0, '', '190348', '2023-02-21 19:48:30', 1, 1),
(161, 0, 10189, 1, 'filial_1.189', '', 0, 0, 0, '', 0, '', '347616', '2023-02-21 19:48:30', 1, 1),
(162, 0, 10190, 1, 'filial_1.190', '', 0, 0, 0, '', 0, '', '985987', '2023-02-21 19:48:30', 1, 1),
(163, 0, 10191, 1, 'filial_1.191', '', 0, 0, 0, '', 0, '', '571995', '2023-02-21 19:48:30', 1, 1),
(164, 0, 10192, 1, 'filial_1.192', '', 0, 0, 0, '', 0, '', '694984', '2023-02-21 19:48:30', 1, 1),
(165, 0, 10193, 1, 'filial_1.193', '', 0, 0, 0, '', 0, '', '601788', '2023-02-21 19:48:30', 1, 1),
(166, 0, 10194, 1, 'filial_1.194', '', 0, 0, 0, '', 0, '', '397358', '2023-02-21 19:48:30', 1, 1),
(167, 0, 10195, 1, 'filial_1.195', '', 0, 0, 0, '', 0, '', '737537', '2023-02-21 19:48:30', 1, 1),
(168, 0, 10196, 1, 'filial_1.196', '', 0, 0, 0, '', 0, '', '502418', '2023-02-21 19:48:30', 1, 1),
(169, 0, 10197, 1, 'filial_1.197', '', 0, 0, 0, '', 0, '', '615081', '2023-02-21 19:48:30', 1, 1),
(170, 0, 10199, 1, 'filial_1.199', '', 0, 0, 0, '', 0, '', '251905', '2023-02-21 19:48:30', 1, 1),
(171, 0, 10200, 1, 'filial_1.200', '', 0, 0, 0, '', 0, '', '423113', '2023-02-21 19:48:30', 1, 1),
(172, 0, 10201, 1, 'filial_1.201', '', 0, 0, 0, '', 0, '', '484243', '2023-02-21 19:48:30', 1, 1),
(173, 0, 10202, 1, 'filial_1.202', '', 0, 0, 0, '', 0, '', '971411', '2023-02-21 19:48:30', 1, 1),
(174, 0, 10204, 1, 'filial_1.204', '', 0, 0, 0, '', 0, '', '607751', '2023-02-21 19:48:30', 1, 1),
(175, 0, 10205, 1, 'filial_1.205', '', 0, 0, 0, '', 0, '', '568672', '2023-02-21 19:48:30', 1, 1),
(176, 0, 10206, 1, 'filial_1.206', '', 0, 0, 0, '', 0, '', '465737', '2023-02-21 19:48:30', 1, 1),
(177, 0, 10207, 1, 'filial_1.207', '', 0, 0, 0, '', 0, '', '707787', '2023-02-21 19:48:30', 1, 1),
(178, 0, 10209, 1, 'filial_1.209', '', 0, 0, 0, '', 0, '', '667002', '2023-02-21 19:48:30', 1, 1),
(179, 0, 10211, 1, 'filial_1.211', '', 0, 0, 0, '', 0, '', '470184', '2023-02-21 19:48:30', 1, 1),
(180, 0, 10214, 1, 'filial_1.214', '', 0, 0, 0, '', 0, '', '373794', '2023-02-21 19:48:30', 1, 1),
(181, 0, 10215, 1, 'filial_1.215', '', 0, 0, 0, '', 0, '', '351916', '2023-02-21 19:48:30', 1, 1),
(182, 0, 10217, 1, 'filial_1.217', '', 0, 0, 0, '', 0, '', '142733', '2023-02-21 19:48:30', 1, 1),
(183, 0, 10218, 1, 'filial_1.218', '', 0, 0, 0, '', 0, '', '523391', '2023-02-21 19:48:30', 1, 1),
(184, 0, 10219, 1, 'filial_1.219', '', 0, 0, 0, '', 0, '', '933924', '2023-02-21 19:48:30', 1, 1),
(185, 0, 10220, 1, 'filial_1.220', '', 0, 0, 0, '', 0, '', '792598', '2023-02-21 19:48:30', 1, 1),
(186, 0, 10221, 1, 'filial_1.221', '', 0, 0, 0, '', 0, '', '358884', '2023-02-21 19:48:30', 1, 1),
(187, 0, 10224, 1, 'filial_1.224', '', 0, 0, 0, '', 0, '', '341702', '2023-02-21 19:48:30', 1, 1),
(188, 0, 10226, 1, 'filial_1.226', '', 0, 0, 0, '', 0, '', '663162', '2023-02-21 19:48:30', 1, 1),
(189, 0, 10228, 1, 'filial_1.228', '', 0, 0, 0, '', 0, '', '874173', '2023-02-21 19:48:30', 1, 1),
(190, 0, 10229, 1, 'filial_1.229', '', 0, 0, 0, '', 0, '', '350003', '2023-02-21 19:48:30', 1, 1),
(191, 0, 10230, 1, 'filial_1.230', '', 0, 0, 0, '', 0, '', '979406', '2023-02-21 19:48:30', 1, 1),
(192, 0, 10231, 1, 'filial_1.231', '', 0, 0, 0, '', 0, '', '901485', '2023-02-21 19:48:30', 1, 1),
(193, 0, 10232, 1, 'filial_1.232', '', 0, 0, 0, '', 0, '', '246115', '2023-02-21 19:48:30', 1, 1),
(194, 0, 10233, 1, 'filial_1.233', '', 0, 0, 0, '', 0, '', '219011', '2023-02-21 19:48:30', 1, 1),
(195, 0, 10234, 1, 'filial_1.234', '', 0, 0, 0, '', 0, '', '788057', '2023-02-21 19:48:30', 1, 1),
(196, 0, 10235, 1, 'filial_1.235', '', 0, 0, 0, '', 0, '', '446922', '2023-02-21 19:48:30', 1, 1),
(197, 0, 10236, 1, 'filial_1.236', '', 0, 0, 0, '', 0, '', '670413', '2023-02-21 19:48:30', 1, 1),
(198, 0, 10237, 1, 'filial_1.237', '', 0, 0, 0, '', 0, '', '989487', '2023-02-21 19:48:30', 1, 1),
(199, 0, 10238, 1, 'filial_1.238', '', 0, 0, 0, '', 0, '', '804626', '2023-02-21 19:48:30', 1, 1),
(200, 0, 10239, 1, 'filial_1.239', '', 0, 0, 0, '', 0, '', '444072', '2023-02-21 19:48:30', 1, 1),
(201, 0, 10240, 1, 'filial_1.240', '', 0, 0, 0, '', 0, '', '978812', '2023-02-21 19:48:30', 1, 1),
(202, 0, 10241, 1, 'filial_1.241', '', 0, 0, 0, '', 0, '', '848092', '2023-02-21 19:48:30', 1, 1),
(203, 0, 10242, 1, 'filial_1.242', '', 0, 0, 0, '', 0, '', '265677', '2023-02-21 19:48:30', 1, 1),
(204, 0, 10243, 1, 'filial_1.243', '', 0, 0, 0, '', 0, '', '504534', '2023-02-21 19:48:30', 1, 1),
(205, 0, 10246, 1, 'filial_1.246', '', 0, 0, 0, '', 0, '', '426444', '2023-02-21 19:48:30', 1, 1),
(206, 0, 10247, 1, 'filial_1.247', '', 0, 0, 0, '', 0, '', '894876', '2023-02-21 19:48:30', 1, 1),
(207, 0, 10248, 1, 'filial_1.248', '', 0, 0, 0, '', 0, '', '473132', '2023-02-21 19:48:30', 1, 1),
(208, 0, 10249, 1, 'filial_1.249', '', 0, 0, 0, '', 0, '', '991544', '2023-02-21 19:48:30', 1, 1),
(209, 0, 10250, 1, 'filial_1.250', '', 0, 0, 0, '', 0, '', '976685', '2023-02-21 19:48:30', 1, 1),
(210, 0, 10253, 1, 'filial_1.253', '', 0, 0, 0, '', 0, '', '835725', '2023-02-21 19:48:30', 1, 1),
(211, 0, 10254, 1, 'filial_1.254', '', 0, 0, 0, '', 0, '', '235795', '2023-02-21 19:48:30', 1, 1),
(212, 0, 10255, 1, 'filial_1.255', '', 0, 0, 0, '', 0, '', '679622', '2023-02-21 19:48:30', 1, 1),
(213, 0, 10256, 1, 'filial_1.256', '', 0, 0, 0, '', 0, '', '468947', '2023-02-21 19:48:30', 1, 1),
(214, 0, 10257, 1, 'filial_1.257', '', 0, 0, 0, '', 0, '', '522768', '2023-02-21 19:48:30', 1, 1),
(215, 0, 10258, 1, 'filial_1.258', '', 0, 0, 0, '', 0, '', '780075', '2023-02-21 19:48:30', 1, 1),
(216, 0, 10259, 1, 'filial_1.259', '', 0, 0, 0, '', 0, '', '887567', '2023-02-21 19:48:30', 1, 1),
(217, 0, 10260, 1, 'filial_1.260', '', 0, 0, 0, '', 0, '', '692550', '2023-02-21 19:48:30', 1, 1),
(218, 0, 10261, 1, 'filial_1.261', '', 0, 0, 0, '', 0, '', '426679', '2023-02-21 19:48:30', 1, 1),
(219, 0, 10262, 1, 'filial_1.262', '', 0, 0, 0, '', 0, '', '488505', '2023-02-21 19:48:30', 1, 1),
(220, 0, 10263, 1, 'filial_1.263', '', 0, 0, 0, '', 0, '', '481514', '2023-02-21 19:48:30', 1, 1),
(221, 0, 10264, 1, 'filial_1.264', '', 0, 0, 0, '', 0, '', '414826', '2023-02-21 19:48:30', 1, 1),
(222, 0, 10270, 1, 'filial_1.270', '', 0, 0, 0, '', 0, '', '299442', '2023-02-21 19:48:30', 1, 1),
(223, 0, 10271, 1, 'filial_1.271', '', 0, 0, 0, '', 0, '', '489549', '2023-02-21 19:48:30', 1, 1),
(224, 0, 10272, 1, 'filial_1.272', '', 0, 0, 0, '', 0, '', '136350', '2023-02-21 19:48:30', 1, 1),
(225, 0, 10273, 1, 'filial_1.273', '', 0, 0, 0, '', 0, '', '319806', '2023-02-21 19:48:30', 1, 1),
(226, 0, 10274, 1, 'filial_1.274', '', 0, 0, 0, '', 0, '', '353024', '2023-02-21 19:48:30', 1, 1),
(227, 0, 10275, 1, 'filial_1.275', '', 0, 0, 0, '', 0, '', '563423', '2023-02-21 19:48:30', 1, 1),
(228, 0, 10276, 1, 'filial_1.276', '', 0, 0, 0, '', 0, '', '616218', '2023-02-21 19:48:30', 1, 1),
(229, 0, 10277, 1, 'filial_1.277', '', 0, 0, 0, '', 0, '', '426455', '2023-02-21 19:48:30', 1, 1),
(230, 0, 10278, 1, 'filial_1.278', '', 0, 0, 0, '', 0, '', '574015', '2023-02-21 19:48:30', 1, 1),
(231, 0, 10279, 1, 'filial_1.279', '', 0, 0, 0, '', 0, '', '844677', '2023-02-21 19:48:30', 1, 1),
(232, 0, 10280, 1, 'filial_1.280', '', 0, 0, 0, '', 0, '', '480981', '2023-02-21 19:48:30', 1, 1),
(233, 0, 10281, 1, 'filial_1.281', '', 0, 0, 0, '', 0, '', '973855', '2023-02-21 19:48:30', 1, 1),
(234, 0, 10282, 1, 'filial_1.282', '', 0, 0, 0, '', 0, '', '496796', '2023-02-21 19:48:30', 1, 1),
(235, 0, 10284, 1, 'filial_1.284', '', 0, 0, 0, '', 0, '', '121976', '2023-02-21 19:48:30', 1, 1),
(236, 0, 10285, 1, 'filial_1.285', '', 0, 0, 0, '', 0, '', '413880', '2023-02-21 19:48:30', 1, 1),
(237, 0, 10286, 1, 'filial_1.286', '', 0, 0, 0, '', 0, '', '616707', '2023-02-21 19:48:30', 1, 1),
(238, 0, 10287, 1, 'filial_1.287', '', 0, 0, 0, '', 0, '', '407014', '2023-02-21 19:48:30', 1, 1),
(239, 0, 10288, 1, 'filial_1.288', '', 0, 0, 0, '', 0, '', '296101', '2023-02-21 19:48:30', 1, 1),
(240, 0, 10289, 1, 'filial_1.289', '', 0, 0, 0, '', 0, '', '766149', '2023-02-21 19:48:30', 1, 1),
(241, 0, 10290, 1, 'filial_1.290', '', 0, 0, 0, '', 0, '', '571967', '2023-02-21 19:48:30', 1, 1),
(242, 0, 10291, 1, 'filial_1.291', '', 0, 0, 0, '', 0, '', '691235', '2023-02-21 19:48:30', 1, 1),
(243, 0, 10292, 1, 'filial_1.292', '', 0, 0, 0, '', 0, '', '787714', '2023-02-21 19:48:30', 1, 1),
(244, 0, 10293, 1, 'filial_1.293', '', 0, 0, 0, '', 0, '', '167621', '2023-02-21 19:48:30', 1, 1),
(245, 0, 10295, 1, 'filial_1.295', '', 0, 0, 0, '', 0, '', '981286', '2023-02-21 19:48:30', 1, 1),
(246, 0, 10296, 1, 'filial_1.296', '', 0, 0, 0, '', 0, '', '592749', '2023-02-21 19:48:30', 1, 1),
(247, 0, 10297, 1, 'filial_1.297', '', 0, 0, 0, '', 0, '', '569195', '2023-02-21 19:48:30', 1, 1),
(248, 0, 10299, 1, 'filial_1.299', '', 0, 0, 0, '', 0, '', '381941', '2023-02-21 19:48:30', 1, 1),
(249, 0, 10300, 1, 'filial_1.300', '', 0, 0, 0, '', 0, '', '898826', '2023-02-21 19:48:30', 1, 1),
(250, 0, 10301, 1, 'filial_1.301', '', 0, 0, 0, '', 0, '', '650951', '2023-02-21 19:48:30', 1, 1),
(251, 0, 10302, 1, 'filial_1.302', '', 0, 0, 0, '', 0, '', '886856', '2023-02-21 19:48:30', 1, 1),
(252, 0, 10304, 1, 'filial_1.304', '', 0, 0, 0, '', 0, '', '211183', '2023-02-21 19:48:30', 1, 1),
(253, 0, 10305, 1, 'filial_1.305', '', 0, 0, 0, '', 0, '', '227995', '2023-02-21 19:48:30', 1, 1),
(254, 0, 10306, 1, 'filial_1.306', '', 0, 0, 0, '', 0, '', '593720', '2023-02-21 19:48:30', 1, 1),
(255, 0, 10309, 1, 'filial_1.309', '', 0, 0, 0, '', 0, '', '157390', '2023-02-21 19:48:30', 1, 1),
(256, 0, 10310, 1, 'filial_1.310', '', 0, 0, 0, '', 0, '', '304906', '2023-02-21 19:48:30', 1, 1),
(257, 0, 10311, 1, 'filial_1.311', '', 0, 0, 0, '', 0, '', '990398', '2023-02-21 19:48:30', 1, 1),
(258, 0, 10312, 1, 'filial_1.312', '', 0, 0, 0, '', 0, '', '732983', '2023-02-21 19:48:30', 1, 1),
(259, 0, 10313, 1, 'filial_1.313', '', 0, 0, 0, '', 0, '', '243096', '2023-02-21 19:48:30', 1, 1),
(260, 0, 10314, 1, 'filial_1.314', '', 0, 0, 0, '', 0, '', '722999', '2023-02-21 19:48:30', 1, 1),
(261, 0, 10315, 1, 'filial_1.315', '', 0, 0, 0, '', 0, '', '534109', '2023-02-21 19:48:30', 1, 1),
(262, 0, 10316, 1, 'filial_1.316', '', 0, 0, 0, '', 0, '', '157447', '2023-02-21 19:48:30', 1, 1),
(263, 0, 10317, 1, 'filial_1.317', '', 0, 0, 0, '', 0, '', '971674', '2023-02-21 19:48:30', 1, 1),
(264, 0, 10318, 1, 'filial_1.318', '', 0, 0, 0, '', 0, '', '529061', '2023-02-21 19:48:30', 1, 1),
(265, 0, 10319, 1, 'filial_1.319', '', 0, 0, 0, '', 0, '', '722658', '2023-02-21 19:48:30', 1, 1),
(266, 0, 10320, 1, 'filial_1.320', '', 0, 0, 0, '', 0, '', '550410', '2023-02-21 19:48:30', 1, 1),
(267, 0, 10321, 1, 'filial_1.321', '', 0, 0, 0, '', 0, '', '187926', '2023-02-21 19:48:30', 1, 1),
(268, 0, 10322, 1, 'filial_1.322', '', 0, 0, 0, '', 0, '', '988338', '2023-02-21 19:48:30', 1, 1),
(269, 0, 10323, 1, 'filial_1.323', '', 0, 0, 0, '', 0, '', '410400', '2023-02-21 19:48:30', 1, 1),
(270, 0, 10324, 1, 'filial_1.324', '', 0, 0, 0, '', 0, '', '270297', '2023-02-21 19:48:30', 1, 1),
(271, 0, 10325, 1, 'filial_1.325', '', 0, 0, 0, '', 0, '', '313736', '2023-02-21 19:48:30', 1, 1),
(272, 0, 10326, 1, 'filial_1.326', '', 0, 0, 0, '', 0, '', '175097', '2023-02-21 19:48:30', 1, 1),
(273, 0, 10327, 1, 'filial_1.327', '', 0, 0, 0, '', 0, '', '953293', '2023-02-21 19:48:30', 1, 1),
(274, 0, 10328, 1, 'filial_1.328', '', 0, 0, 0, '', 0, '', '814672', '2023-02-21 19:48:30', 1, 1),
(275, 0, 10329, 1, 'filial_1.329', '', 0, 0, 0, '', 0, '', '270726', '2023-02-21 19:48:30', 1, 1),
(276, 0, 10332, 1, 'filial_1.332', '', 0, 0, 0, '', 0, '', '300707', '2023-02-21 19:48:30', 1, 1),
(277, 0, 10334, 1, 'filial_1.334', '', 0, 0, 0, '', 0, '', '136452', '2023-02-21 19:48:30', 1, 1),
(278, 0, 10335, 1, 'filial_1.335', '', 0, 0, 0, '', 0, '', '238414', '2023-02-21 19:48:30', 1, 1),
(279, 0, 10336, 1, 'filial_1.336', '', 0, 0, 0, '', 0, '', '966871', '2023-02-21 19:48:30', 1, 1),
(280, 0, 10337, 1, 'filial_1.337', '', 0, 0, 0, '', 0, '', '460680', '2023-02-21 19:48:30', 1, 1),
(281, 0, 10338, 1, 'filial_1.338', '', 0, 0, 0, '', 0, '', '623067', '2023-02-21 19:48:30', 1, 1),
(282, 0, 10339, 1, 'filial_1.339', '', 0, 0, 0, '', 0, '', '147808', '2023-02-21 19:48:30', 1, 1),
(283, 0, 10340, 1, 'filial_1.340', '', 0, 0, 0, '', 0, '', '511151', '2023-02-21 19:48:30', 1, 1),
(284, 0, 10341, 1, 'filial_1.341', '', 0, 0, 0, '', 0, '', '446894', '2023-02-21 19:48:30', 1, 1),
(285, 0, 10342, 1, 'filial_1.342', '', 0, 0, 0, '', 0, '', '969215', '2023-02-21 19:48:30', 1, 1),
(286, 0, 10343, 1, 'filial_1.343', '', 0, 0, 0, '', 0, '', '794979', '2023-02-21 19:48:30', 1, 1),
(287, 0, 10344, 1, 'filial_1.344', '', 0, 0, 0, '', 0, '', '386412', '2023-02-21 19:48:30', 1, 1),
(288, 0, 10345, 1, 'filial_1.345', '', 0, 0, 0, '', 0, '', '445475', '2023-02-21 19:48:30', 1, 1),
(289, 0, 10346, 1, 'filial_1.346', '', 0, 0, 0, '', 0, '', '396402', '2023-02-21 19:48:30', 1, 1),
(290, 0, 10347, 1, 'filial_1.347', '', 0, 0, 0, '', 0, '', '635674', '2023-02-21 19:48:30', 1, 1),
(291, 0, 10348, 1, 'filial_1.348', '', 0, 0, 0, '', 0, '', '684819', '2023-02-21 19:48:30', 1, 1),
(292, 0, 10349, 1, 'filial_1.349', '', 0, 0, 0, '', 0, '', '570496', '2023-02-21 19:48:30', 1, 1),
(293, 0, 10350, 1, 'filial_1.350', '', 0, 0, 0, '', 0, '', '748206', '2023-02-21 19:48:30', 1, 1),
(294, 0, 10351, 1, 'filial_1.351', '', 0, 0, 0, '', 0, '', '273206', '2023-02-21 19:48:30', 1, 1),
(295, 0, 10353, 1, 'filial_1.353', '', 0, 0, 0, '', 0, '', '192760', '2023-02-21 19:48:30', 1, 1),
(296, 0, 10355, 1, 'filial_1.355', '', 0, 0, 0, '', 0, '', '126823', '2023-02-21 19:48:30', 1, 1),
(297, 0, 10357, 1, 'filial_1.357', '', 0, 0, 0, '', 0, '', '497287', '2023-02-21 19:48:30', 1, 1),
(298, 0, 10358, 1, 'filial_1.358', '', 0, 0, 0, '', 0, '', '767423', '2023-02-21 19:48:30', 1, 1),
(299, 0, 10359, 1, 'filial_1.359', '', 0, 0, 0, '', 0, '', '840012', '2023-02-21 19:48:30', 1, 1),
(300, 0, 10367, 1, 'filial_1.367', '', 0, 0, 0, '', 0, '', '591443', '2023-02-21 19:48:30', 1, 1),
(301, 0, 10368, 1, 'filial_1.368', '', 0, 0, 0, '', 0, '', '862865', '2023-02-21 19:48:30', 1, 1),
(302, 0, 10369, 1, 'filial_1.369', '', 0, 0, 0, '', 0, '', '361615', '2023-02-21 19:48:30', 1, 1),
(303, 0, 10370, 1, 'filial_1.370', '', 0, 0, 0, '', 0, '', '137601', '2023-02-21 19:48:30', 1, 1),
(304, 0, 10371, 1, 'filial_1.371', '', 0, 0, 0, '', 0, '', '956158', '2023-02-21 19:48:30', 1, 1),
(305, 0, 10372, 1, 'filial_1.372', '', 0, 0, 0, '', 0, '', '446703', '2023-02-21 19:48:30', 1, 1),
(306, 0, 10373, 1, 'filial_1.373', '', 0, 0, 0, '', 0, '', '758463', '2023-02-21 19:48:30', 1, 1),
(307, 0, 10374, 1, 'filial_1.374', '', 0, 0, 0, '', 0, '', '728351', '2023-02-21 19:48:30', 1, 1),
(308, 0, 10376, 1, 'filial_1.376', '', 0, 0, 0, '', 0, '', '831013', '2023-02-21 19:48:30', 1, 1),
(309, 0, 10377, 1, 'filial_1.377', '', 0, 0, 0, '', 0, '', '234710', '2023-02-21 19:48:30', 1, 1),
(310, 0, 10378, 1, 'filial_1.378', '', 0, 0, 0, '', 0, '', '874811', '2023-02-21 19:48:30', 1, 1),
(311, 0, 10380, 1, 'filial_1.380', '', 0, 0, 0, '', 0, '', '641655', '2023-02-21 19:48:30', 1, 1),
(312, 0, 10381, 1, 'filial_1.381', '', 0, 0, 0, '', 0, '', '231770', '2023-02-21 19:48:30', 1, 1),
(313, 0, 10382, 1, 'filial_1.382', '', 0, 0, 0, '', 0, '', '664699', '2023-02-21 19:48:30', 1, 1),
(314, 0, 10383, 1, 'filial_1.383', '', 0, 0, 0, '', 0, '', '791845', '2023-02-21 19:48:30', 1, 1),
(315, 0, 10384, 1, 'filial_1.384', '', 0, 0, 0, '', 0, '', '394091', '2023-02-21 19:48:30', 1, 1),
(316, 0, 10385, 1, 'filial_1.385', '', 0, 0, 0, '', 0, '', '883528', '2023-02-21 19:48:30', 1, 1),
(317, 0, 10386, 1, 'filial_1.386', '', 0, 0, 0, '', 0, '', '718214', '2023-02-21 19:48:30', 1, 1),
(318, 0, 10387, 1, 'filial_1.387', '', 0, 0, 0, '', 0, '', '207156', '2023-02-21 19:48:30', 1, 1),
(319, 0, 10388, 1, 'filial_1.388', '', 0, 0, 0, '', 0, '', '842625', '2023-02-21 19:48:30', 1, 1),
(320, 0, 10389, 1, 'filial_1.389', '', 0, 0, 0, '', 0, '', '492362', '2023-02-21 19:48:30', 1, 1),
(321, 0, 10390, 1, 'filial_1.390', '', 0, 0, 0, '', 0, '', '822406', '2023-02-21 19:48:30', 1, 1),
(322, 0, 10392, 1, 'filial_1.392', '', 0, 0, 0, '', 0, '', '357150', '2023-02-21 19:48:30', 1, 1),
(323, 0, 10393, 1, 'filial_1.393', '', 0, 0, 0, '', 0, '', '575637', '2023-02-21 19:48:30', 1, 1),
(324, 0, 140002, 1, 'filial_14.002', '', 0, 0, 0, '', 0, '', '167710', '2023-02-21 19:48:30', 1, 1),
(325, 0, 140003, 1, 'filial_14.003', '', 0, 0, 0, '', 0, '', '900347', '2023-02-21 19:48:30', 1, 1),
(326, 0, 140004, 1, 'filial_14.004', '', 0, 0, 0, '', 0, '', '295442', '2023-02-21 19:48:30', 1, 1),
(327, 0, 140005, 1, 'filial_14.005', '', 0, 0, 0, '', 0, '', '716375', '2023-02-21 19:48:30', 1, 1),
(328, 0, 140006, 1, 'filial_14.006', '', 0, 0, 0, '', 0, '', '731608', '2023-02-21 19:48:30', 1, 1),
(329, 0, 140007, 1, 'filial_14.007', '', 0, 0, 0, '', 0, '', '221613', '2023-02-21 19:48:30', 1, 1),
(330, 0, 140008, 1, 'filial_14.008', '', 0, 0, 0, '', 0, '', '536682', '2023-02-21 19:48:30', 1, 1),
(331, 0, 140009, 1, 'filial_14.009', '', 0, 0, 0, '', 0, '', '864779', '2023-02-21 19:48:30', 1, 1),
(332, 0, 240001, 1, 'filial_24.001', '', 0, 0, 0, '', 0, '', '573829', '2023-02-21 19:48:30', 1, 1),
(333, 0, 240003, 1, 'filial_24.003', '', 0, 0, 0, '', 0, '', '526055', '2023-02-21 19:48:30', 1, 1),
(334, 0, 240004, 1, 'filial_24.004', '', 0, 0, 0, '', 0, '', '476364', '2023-02-21 19:48:30', 1, 1),
(335, 0, 240005, 1, 'filial_24.005', '', 0, 0, 0, '', 0, '', '398403', '2023-02-21 19:48:30', 1, 1),
(336, 0, 240006, 1, 'filial_24.006', '', 0, 0, 0, '', 0, '', '208947', '2023-02-21 19:48:30', 1, 1),
(337, 0, 240007, 1, 'filial_24.007', '', 0, 0, 0, '', 0, '', '631627', '2023-02-21 19:48:30', 1, 1),
(338, 0, 240009, 1, 'filial_24.009', '', 0, 0, 0, '', 0, '', '461393', '2023-02-21 19:48:30', 1, 1),
(339, 0, 240010, 1, 'filial_24.010', '', 0, 0, 0, '', 0, '', '151232', '2023-02-21 19:48:30', 1, 1),
(340, 0, 240011, 1, 'filial_24.011', '', 0, 0, 0, '', 0, '', '397090', '2023-02-21 19:48:30', 1, 1),
(341, 0, 240012, 1, 'filial_24.012', '', 0, 0, 0, '', 0, '', '866883', '2023-02-21 19:48:30', 1, 1),
(342, 0, 240014, 1, 'filial_24.014', '', 0, 0, 0, '', 0, '', '915328', '2023-02-21 19:48:30', 1, 1),
(343, 0, 240015, 1, 'filial_24.015', '', 0, 0, 0, '', 0, '', '512298', '2023-02-21 19:48:30', 1, 1),
(344, 0, 240016, 1, 'filial_24.016', '', 0, 0, 0, '', 0, '', '771770', '2023-02-21 19:48:30', 1, 1),
(345, 0, 240017, 1, 'filial_24.017', '', 0, 0, 0, '', 0, '', '900792', '2023-02-21 19:48:30', 1, 1),
(346, 0, 240018, 1, 'filial_24.018', '', 0, 0, 0, '', 0, '', '944596', '2023-02-21 19:48:30', 1, 1),
(347, 0, 240019, 1, 'filial_24.019', '', 0, 0, 0, '', 0, '', '545926', '2023-02-21 19:48:30', 1, 1),
(348, 0, 240020, 1, 'filial_24.020', '', 0, 0, 0, '', 0, '', '572282', '2023-02-21 19:48:30', 1, 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `contato_padrao`
--
ALTER TABLE `contato_padrao`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `descricao_funcionario`
--
ALTER TABLE `descricao_funcionario`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Índices para tabela `filiais`
--
ALTER TABLE `filiais`
  ADD PRIMARY KEY (`idfilial`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Índices para tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Índices para tabela `situacao_cadastro_csg`
--
ALTER TABLE `situacao_cadastro_csg`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `suporte_team`
--
ALTER TABLE `suporte_team`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_contato_padrao` (`id_contato_padrao`);

--
-- Índices para tabela `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`);

--
-- Índices para tabela `usuario_csg`
--
ALTER TABLE `usuario_csg`
  ADD PRIMARY KEY (`id_usuario_csg`),
  ADD KEY `id_tipo_usuario` (`id_tipo_usuario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `descricao_funcionario`
--
ALTER TABLE `descricao_funcionario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `filiais`
--
ALTER TABLE `filiais`
  MODIFY `idfilial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240021;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `situacao_cadastro_csg`
--
ALTER TABLE `situacao_cadastro_csg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `suporte_team`
--
ALTER TABLE `suporte_team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `usuario_csg`
--
ALTER TABLE `usuario_csg`
  MODIFY `id_usuario_csg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=382;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `suporte_team`
--
ALTER TABLE `suporte_team`
  ADD CONSTRAINT `suporte_team_ibfk_1` FOREIGN KEY (`id_contato_padrao`) REFERENCES `contato_padrao` (`id`);

--
-- Limitadores para a tabela `usuario_csg`
--
ALTER TABLE `usuario_csg`
  ADD CONSTRAINT `usuario_csg_ibfk_1` FOREIGN KEY (`id_tipo_usuario`) REFERENCES `tipo_usuario` (`id`);
--
-- Banco de dados: `hackathon`
--
CREATE DATABASE IF NOT EXISTS `hackathon` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `hackathon`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `nome` varchar(120) NOT NULL,
  `email` varchar(150) NOT NULL,
  `senha` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`id`, `nome`, `email`, `senha`, `pass`) VALUES
(5, 'victor', 'victor@email.com', NULL, NULL),
(6, 'Vitin', 'victor10rsilva@gmail.com', NULL, NULL),
(7, 'LUCAS SANCHES DOS SANTOS', 'lucas.santos@gazin.com.br', NULL, 'sebga321');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pesquisa`
--

CREATE TABLE `pesquisa` (
  `id` int(11) NOT NULL,
  `nome` varchar(120) NOT NULL,
  `nome_pesquisa` varchar(255) DEFAULT NULL,
  `resultado` float DEFAULT NULL,
  `id_cliente` bigint(20) DEFAULT NULL,
  `cliente_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `pesquisa`
--

INSERT INTO `pesquisa` (`id`, `nome`, `nome_pesquisa`, `resultado`, `id_cliente`, `cliente_id`) VALUES
(1, 'atendimento', NULL, NULL, NULL, NULL),
(2, 'estrutura', NULL, NULL, NULL, NULL),
(3, 'experiencia', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `questao`
--

CREATE TABLE `questao` (
  `id` int(11) NOT NULL,
  `id_pesquisa` int(11) NOT NULL,
  `enunciado` varchar(150) NOT NULL,
  `pesquisa_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `questao`
--

INSERT INTO `questao` (`id`, `id_pesquisa`, `enunciado`, `pesquisa_id`) VALUES
(1, 1, 'Como você avalia o humor, e a disposição dos nossos atendentes?', NULL),
(2, 1, 'como você avalia a nossa agilidade e rapidez no atendimento?', NULL),
(3, 1, 'Como você avalia nossos colaboradores no quesito higiêne?', NULL),
(4, 1, 'No geral, qual sua nota para os nossos atendentes?', NULL),
(7, 2, 'Como você avalia a nossa estrutura de estacionamentos?', NULL),
(8, 2, 'Como você nos avalia em questão de espaço interno no Bar?', NULL),
(9, 2, 'Como você nos avalia quanto aos banheiros?', NULL),
(10, 2, 'Qual a sua nota para a climatização do ambiente?', NULL),
(11, 3, 'com que nota você indicaria a Sanchopp para um  amigo?', NULL),
(12, 3, 'Com que nota você avalia a qualidade do nosso chopp?', NULL),
(13, 3, 'Como você avalia nosso custo benefício?', NULL),
(14, 3, 'Com que nota você avalia o abraço que deu no Marco na saida?', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `resposta`
--

CREATE TABLE `resposta` (
  `id` int(11) NOT NULL,
  `id_questao` int(11) NOT NULL,
  `nota` int(11) NOT NULL,
  `email` varchar(120) NOT NULL,
  `valor` float NOT NULL,
  `questao_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `resposta`
--

INSERT INTO `resposta` (`id`, `id_questao`, `nota`, `email`, `valor`, `questao_id`) VALUES
(75, 1, 3, 'victor@email.com', 0, NULL),
(76, 2, 2, 'victor@email.com', 0, NULL),
(77, 3, 4, 'victor@email.com', 0, NULL),
(78, 4, 7, 'victor@email.com', 0, NULL),
(79, 1, 3, 'victor@email.com', 0, NULL),
(80, 2, 2, 'victor@email.com', 0, NULL),
(81, 3, 4, 'victor@email.com', 0, NULL),
(82, 4, 7, 'victor@email.com', 0, NULL),
(83, 1, 3, 'victor@email.com', 0, NULL),
(84, 2, 2, 'victor@email.com', 0, NULL),
(85, 3, 4, 'victor@email.com', 0, NULL),
(86, 4, 7, 'victor@email.com', 0, NULL),
(87, 1, 3, 'victor10rsilva@gmail.com', 0, NULL),
(88, 2, 6, 'victor10rsilva@gmail.com', 0, NULL),
(89, 3, 8, 'victor10rsilva@gmail.com', 0, NULL),
(90, 4, 9, 'victor10rsilva@gmail.com', 0, NULL),
(91, 1, 5, 'victor10rsilva@gmail.com', 0, NULL),
(92, 2, 7, 'victor10rsilva@gmail.com', 0, NULL),
(93, 3, 5, 'victor10rsilva@gmail.com', 0, NULL),
(94, 4, 9, 'victor10rsilva@gmail.com', 0, NULL),
(95, 7, 4, 'victor10rsilva@gmail.com', 0, NULL),
(96, 8, 4, 'victor10rsilva@gmail.com', 0, NULL),
(97, 9, 3, 'victor10rsilva@gmail.com', 0, NULL),
(98, 10, 9, 'victor10rsilva@gmail.com', 0, NULL),
(99, 11, 5, 'victor10rsilva@gmail.com', 0, NULL),
(100, 12, 6, 'victor10rsilva@gmail.com', 0, NULL),
(101, 13, 9, 'victor10rsilva@gmail.com', 0, NULL),
(102, 14, 9, 'victor10rsilva@gmail.com', 0, NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `pesquisa`
--
ALTER TABLE `pesquisa`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `questao`
--
ALTER TABLE `questao`
  ADD PRIMARY KEY (`id`),
  ADD KEY `key_pesquisa` (`id_pesquisa`);

--
-- Índices para tabela `resposta`
--
ALTER TABLE `resposta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `key_questao` (`id_questao`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `pesquisa`
--
ALTER TABLE `pesquisa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `questao`
--
ALTER TABLE `questao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `resposta`
--
ALTER TABLE `resposta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `questao`
--
ALTER TABLE `questao`
  ADD CONSTRAINT `key_pesquisa` FOREIGN KEY (`id_pesquisa`) REFERENCES `pesquisa` (`id`);

--
-- Limitadores para a tabela `resposta`
--
ALTER TABLE `resposta`
  ADD CONSTRAINT `key_questao` FOREIGN KEY (`id_questao`) REFERENCES `questao` (`id`);
--
-- Banco de dados: `laravel`
--
CREATE DATABASE IF NOT EXISTS `laravel` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `laravel`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `endereco` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `observacao` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `clients`
--

INSERT INTO `clients` (`id`, `nome`, `endereco`, `observacao`, `created_at`, `updated_at`) VALUES
(1, 'Lucas', 'Bar da roça, número 51, complemento: trás cerveja', 'eusdaf', NULL, '2023-03-15 04:26:49'),
(2, 'marco', 'rua da pedra', 'oi', '2023-03-15 03:29:12', '2023-03-15 03:29:12'),
(3, 'Lucas', 'Bar da roça, número 51, complemento: trás cerveja', 'eu', '2023-03-15 04:10:36', '2023-03-15 04:10:36');

-- --------------------------------------------------------

--
-- Estrutura da tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_03_07_225613_create_clients_table', 1),
(6, '2023_03_08_010148_create_produtos_table', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descricao` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `descricao`, `cor`, `created_at`, `updated_at`) VALUES
(1, 'geladeira', 'geladeira 300l', 'branca', NULL, NULL),
(2, 'armario', 'armario 5 portas', 'preto\r\n', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Índices para tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Banco de dados: `live_center`
--
CREATE DATABASE IF NOT EXISTS `live_center` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `live_center`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `acesso`
--

CREATE TABLE `acesso` (
  `id_acesso` int(11) NOT NULL,
  `descricao` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `acesso`
--

INSERT INTO `acesso` (`id_acesso`, `descricao`) VALUES
(1, 'Básico'),
(2, 'Admin');

-- --------------------------------------------------------

--
-- Estrutura da tabela `registro`
--

CREATE TABLE `registro` (
  `id` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `data_hora_inicio` timestamp NULL DEFAULT NULL,
  `data_hora_fim` timestamp NULL DEFAULT NULL,
  `data_hora_insert` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_usuario`
--

CREATE TABLE `tipo_usuario` (
  `id` int(11) NOT NULL,
  `descricao` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tipo_usuario`
--

INSERT INTO `tipo_usuario` (`id`, `descricao`) VALUES
(1, 'Ativo'),
(2, 'Inativo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `senha` varchar(100) NOT NULL,
  `id_acesso` int(11) NOT NULL,
  `id_tipo_usuario` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `user`
--

INSERT INTO `user` (`id`, `email`, `usuario`, `senha`, `id_acesso`, `id_tipo_usuario`, `nome`) VALUES
(3, 'lucas.santos@gazin.com.br', 'lucas', 'gazin', 2, 1, 'Lucas Sanches dos Santos');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `acesso`
--
ALTER TABLE `acesso`
  ADD PRIMARY KEY (`id_acesso`);

--
-- Índices para tabela `registro`
--
ALTER TABLE `registro`
  ADD KEY `id_user` (`id_user`);

--
-- Índices para tabela `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_acesso` (`id_acesso`),
  ADD KEY `id_tipo_usuario` (`id_tipo_usuario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `registro`
--
ALTER TABLE `registro`
  ADD CONSTRAINT `registro_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

--
-- Limitadores para a tabela `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`id_acesso`) REFERENCES `acesso` (`id_acesso`),
  ADD CONSTRAINT `user_ibfk_2` FOREIGN KEY (`id_tipo_usuario`) REFERENCES `tipo_usuario` (`id`);
--
-- Banco de dados: `motorista`
--
CREATE DATABASE IF NOT EXISTS `motorista` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `motorista`;
--
-- Banco de dados: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

--
-- Extraindo dados da tabela `pma__central_columns`
--

INSERT INTO `pma__central_columns` (`db_name`, `col_name`, `col_type`, `col_length`, `col_collation`, `col_isNull`, `col_extra`, `col_default`) VALUES
('afungaz', 'cpf', 'varchar', '11', 'utf8mb4_general_ci', 0, ',', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

--
-- Extraindo dados da tabela `pma__favorite`
--

INSERT INTO `pma__favorite` (`username`, `tables`) VALUES
('root', '[]');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Extraindo dados da tabela `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"afungaz\",\"table\":\"agendamento\"},{\"db\":\"afungaz\",\"table\":\"local\"},{\"db\":\"afungaz\",\"table\":\"tipo_local\"},{\"db\":\"afungaz\",\"table\":\"pessoa\"},{\"db\":\"afungaz\",\"table\":\"tipo_usuario\"},{\"db\":\"afungaz\",\"table\":\"admin\"},{\"db\":\"redesocial\",\"table\":\"pessoa\"},{\"db\":\"live_center\",\"table\":\"acesso\"},{\"db\":\"live_center\",\"table\":\"user\"},{\"db\":\"live_center\",\"table\":\"tipo_usuario\"}]');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

--
-- Extraindo dados da tabela `pma__table_info`
--

INSERT INTO `pma__table_info` (`db_name`, `table_name`, `display_field`) VALUES
('live_center', 'user', 'email'),
('user_gazin', 'atributo_funcionario', 'texto'),
('user_gazin', 'filial', 'nome_filial_gazin'),
('user_gazin', 'funcionario', 'nome');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Extraindo dados da tabela `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'afungaz', 'pessoa', '{\"CREATE_TIME\":\"2022-12-21 15:40:05\",\"col_order\":[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37],\"col_visib\":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]}', '2022-12-21 18:53:25'),
('root', 'contador_de_dedinhos', 'alunos', '{\"CREATE_TIME\":\"2022-07-15 15:11:54\",\"col_order\":[0,1,2,3,4,5,7,8,6,9,10],\"col_visib\":[1,1,1,1,1,1,1,1,1,1,1]}', '2022-07-15 18:36:59'),
('root', 'contador_de_dedinhos', 'contador', '{\"sorted_col\":\"`contador`.`id_aluno` ASC\"}', '2022-07-19 02:35:52'),
('root', 'hackathon_v2', 'resposta', '{\"sorted_col\":\"`resposta`.`id_questao` ASC\"}', '2022-06-26 18:17:53'),
('root', 'user_gazin', 'filial', '{\"CREATE_TIME\":\"2022-09-04 10:46:30\",\"col_order\":[0,1,2],\"col_visib\":[1,1,1]}', '2022-09-04 14:27:00'),
('root', 'vitrine_online', 'vendedores', '{\"CREATE_TIME\":\"2022-05-29 16:29:37\",\"col_order\":[0,1,2,3],\"col_visib\":[1,1,1,1]}', '2022-05-29 21:02:49');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Extraindo dados da tabela `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2022-12-29 17:49:35', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"pt\"}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Índices para tabela `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Índices para tabela `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Índices para tabela `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Índices para tabela `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Índices para tabela `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Índices para tabela `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Índices para tabela `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Índices para tabela `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Índices para tabela `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Índices para tabela `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Índices para tabela `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Índices para tabela `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Índices para tabela `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Índices para tabela `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Índices para tabela `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Índices para tabela `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Índices para tabela `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Banco de dados: `redesocial`
--
CREATE DATABASE IF NOT EXISTS `redesocial` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `redesocial`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoa`
--

CREATE TABLE `pessoa` (
  `idtipopessoa` int(11) NOT NULL,
  `idtipocontribuinte` int(11) DEFAULT NULL,
  `idtipocadastro` int(11) DEFAULT NULL,
  `idsituacaopessoa` int(11) DEFAULT NULL,
  `idtiporesidencia` int(11) DEFAULT NULL,
  `idtipoestadocivil` int(11) DEFAULT NULL,
  `idtipoocupacao` int(11) DEFAULT NULL,
  `idtiposexo` int(11) DEFAULT NULL,
  `idgrupo` int(11) DEFAULT NULL,
  `idconjuge` int(30) DEFAULT NULL,
  `idtipolimite` int(11) DEFAULT NULL,
  `cnpj_cpf` varchar(14) DEFAULT NULL,
  `nome` varchar(150) NOT NULL,
  `nomefantasia` varchar(150) DEFAULT NULL,
  `cce_rg` varchar(20) DEFAULT NULL,
  `datacriacao` date DEFAULT NULL,
  `datacadastro` date DEFAULT NULL,
  `dataalteracao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `fornecedor` int(11) DEFAULT NULL,
  `cliente` int(11) DEFAULT NULL,
  `cpfgerado` int(11) DEFAULT NULL,
  `ultimaconsultaspc` date DEFAULT NULL,
  `valorlimitecredito` float DEFAULT NULL,
  `gerarboleto` int(11) DEFAULT NULL,
  `idusuario` int(11) DEFAULT NULL,
  `atualizarcadastro` int(11) DEFAULT NULL,
  `idnaturezaretencaofonte` int(11) DEFAULT NULL,
  `chavemd5` varchar(40) DEFAULT NULL,
  `aposentado` int(11) DEFAULT NULL,
  `pensionista` int(11) DEFAULT NULL,
  `inscricaosuframa` varchar(20) DEFAULT NULL,
  `limitecreditoadicional` float DEFAULT NULL,
  `inscricaomunicipal` varchar(20) DEFAULT NULL,
  `apelidoftp` varchar(30) DEFAULT NULL,
  `aceite` int(11) DEFAULT NULL,
  `identificador` int(30) DEFAULT NULL,
  `emancipado` int(11) DEFAULT NULL,
  `idcnpj_cpf` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `pessoa`
--

INSERT INTO `pessoa` (`idtipopessoa`, `idtipocontribuinte`, `idtipocadastro`, `idsituacaopessoa`, `idtiporesidencia`, `idtipoestadocivil`, `idtipoocupacao`, `idtiposexo`, `idgrupo`, `idconjuge`, `idtipolimite`, `cnpj_cpf`, `nome`, `nomefantasia`, `cce_rg`, `datacriacao`, `datacadastro`, `dataalteracao`, `fornecedor`, `cliente`, `cpfgerado`, `ultimaconsultaspc`, `valorlimitecredito`, `gerarboleto`, `idusuario`, `atualizarcadastro`, `idnaturezaretencaofonte`, `chavemd5`, `aposentado`, `pensionista`, `inscricaosuframa`, `limitecreditoadicional`, `inscricaomunicipal`, `apelidoftp`, `aceite`, `identificador`, `emancipado`, `idcnpj_cpf`) VALUES
(1, 2, 2, 1, NULL, 2, 1, 1, NULL, 2147483647, NULL, '13506861662', 'PAULO HENRIQUE SOUZA SANTOS ', 'PAULO HENRIQUE SOUZA SANTOS ', '20118881', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', NULL, 1, 0, '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'senha', NULL, NULL, 'null', NULL, 'null', 'null', NULL, NULL, NULL, 0),
(1, 2, 2, 1, NULL, 2, 1, 1, NULL, 2147483647, 2, '04222438928', 'FABIO FRANCISCO DA SILVA', 'FABIO FRANCISCO DA SILVA', '91937832', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '2043-04-06', 0, 0, 6323, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 35749, 0, 2147483647),
(1, 2, 2, 1, NULL, 2, 1, 1, NULL, NULL, NULL, '04127771186', 'CLAUDIO HUMBERTO AFONSO DA SILVA', 'CLAUDIO HUMBERTO AFONSO DA SILVA', '2487690', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', NULL, 1, 0, '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'senha', NULL, NULL, 'null', NULL, 'null', 'null', NULL, NULL, NULL, 2147483647),
(1, 2, 2, 1, NULL, 1, 1, 2, NULL, NULL, NULL, '04803333190', 'NUBIA LOPES LIMA', 'nubia', '33530840', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 11991, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3254930, 0, 2147483647),
(1, 2, 2, 1, NULL, 2, 1, 1, NULL, NULL, NULL, '06839281124', 'WEVERSON ALEXANDRE PENA', 'WEVERSON ALEXANDRE PENA', '25715275', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 894, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 0, 6511068, 0, 2147483647),
(1, 2, 2, 1, NULL, 2, 1, 1, NULL, NULL, NULL, '05822107125', 'WESLEY SOUZA LIMA', 'WESLEY SOUZA LIMA', '26629666', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', NULL, 1, 0, '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'senha', NULL, NULL, 'null', NULL, 'null', 'null', NULL, NULL, NULL, 2147483647),
(1, 2, 2, 1, NULL, 2, 1, 1, NULL, NULL, NULL, '89579860220', 'JUNIOR SANTOS DA SILVA DAMASCENO', 'Junior', '735384', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', NULL, 1, 0, '0000-00-00', NULL, NULL, 794, NULL, NULL, 'senha', NULL, NULL, 'null', NULL, 'null', 'null', NULL, 5358347, NULL, 2147483647),
(1, 2, 2, 1, NULL, 2, 1, 1, NULL, NULL, NULL, '01606014285', 'LUCAS PINHEIRO COSTA', 'LUCAS PINHEIRO COSTA', '1194681', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 9389, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 0, NULL, 0, 2147483647),
(1, 2, 2, 1, NULL, 2, 1, 1, NULL, NULL, NULL, '31293233846', 'MURILO ANTONIO FARIA', 'null', '360125712', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 9158, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 0, NULL, 0, 2147483647),
(1, 2, 2, 1, NULL, 1, 1, 1, NULL, NULL, NULL, '00318214210', 'GIRLEY DORNELES DOS SANTOS', 'GIRLEY DORNELES DOS SANTOS', '1050131', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 1362, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 4149809, 0, 2147483647),
(1, 2, 2, 1, NULL, 2, 1, 1, NULL, NULL, NULL, '01570167222', 'JOSE WILLIAN BENTO DA SILVA', 'JOSE WILLIAN BENTO DA SILVA', '10555455', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', NULL, 1, 0, '0000-00-00', NULL, NULL, 1757, NULL, NULL, 'senha', NULL, NULL, 'null', NULL, 'null', 'null', NULL, 5742106, NULL, 2147483647),
(1, 2, 2, 1, NULL, 2, 1, 2, NULL, 2147483647, NULL, '04895040518', 'MARCIA DIAS DA SILVA', 'MARCIA DIAS DA SILVA', '1552809536', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', NULL, 0, 6271, 0, 0, 'senha', 0, 0, 'null', NULL, 'null', 'null', 0, NULL, 0, 2147483647),
(1, 2, 2, 1, NULL, 2, 1, 1, NULL, 2147483647, NULL, '01250232198', 'RAPHAEL FERRARI DA SILVA ', 'RAPHAEL FERRARI DA SILVA ', '1414573', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 9793, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 0, NULL, 0, 2147483647),
(1, 2, NULL, 1, NULL, 2, 1, 1, NULL, NULL, NULL, '96850728172', 'ROBIANO ELOIR PEREIRA', 'null', 'null', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 255, 12257, 255, 0, 'senha', 255, 255, 'null', 0, 'null', 'null', 0, 8831592, 255, 2147483647),
(1, 2, 2, 1, NULL, 2, 1, 1, NULL, NULL, NULL, '01142974286', 'ISAEL DOUGLAS OLIVEIRA PIRES', 'ISAEL DOUGLAS OLIVEIRA PIRES', '1239790', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, NULL, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 5888688, 0, 2147483647),
(1, 2, 2, 1, NULL, 2, 3, 1, NULL, NULL, NULL, '83733671104', 'HEBER LUCIO DE OLIVEIRA GARCIA', 'null', '873098', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 255, 13367, 255, 0, 'senha', 255, 255, 'null', 0, 'null', 'null', 0, 8829628, 255, 2147483647),
(1, 2, 2, 1, NULL, 2, 1, 2, NULL, NULL, NULL, '94191638220', 'ISABEL APARECIDA RIBEIRO SILVA', 'BEL', '6467173', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 6078.72, 1, 99000, NULL, NULL, 'senha', NULL, NULL, 'null', 0, 'null', 'null', NULL, NULL, NULL, 2147483647),
(1, 2, 2, 1, NULL, 1, 1, 2, NULL, NULL, NULL, '32766971220', 'MARIA ELZA CHAGAS CALDAS', 'MARIA ELZA CHAGAS CALDAS FUNC', '2514511', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 1, 99000, NULL, NULL, 'senha', NULL, NULL, 'null', 100, 'null', 'null', NULL, NULL, NULL, 2147483647),
(1, 2, 2, 1, NULL, 2, 1, 1, NULL, NULL, NULL, '68543026253', 'MARLON SOUZA DA SILVA', 'MARLON SOUZA DA SILVA', '2999284', '2028-05-02', '0000-00-00', '0000-00-00 00:00:00', NULL, 1, 0, '0000-00-00', 0, NULL, NULL, NULL, NULL, 'senha', NULL, NULL, 'null', 0, 'null', 'null', 1, 6725898, NULL, 2147483647),
(1, 2, 2, 1, NULL, 2, 1, 1, NULL, 2147483647, NULL, '96105917287', 'Diego Morbach', 'DIEGO MORBACH SANTOS', '5157603', '2032-11-07', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 1031, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 6977913, 0, 2147483647),
(1, 2, 2, 1, NULL, 3, 1, 2, NULL, NULL, NULL, '02620436290', 'CRISLANE DA SILVA MAGALHAES CRUZ', 'CRISLANE DA SILVA MAGALHAES CRUZ', '4482187', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', NULL, 1, 0, '0000-00-00', 0, NULL, NULL, NULL, NULL, 'senha', NULL, NULL, 'null', 0, 'null', 'null', 1, 7043457, NULL, 2147483647),
(1, 2, 2, 1, NULL, 2, 1, 1, NULL, NULL, NULL, '03851485181', 'LEOMAR TONSACH ALEXANDRE', 'LEOMAR TONSACH ALEXANDRE', '2263783-4', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, NULL, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 0, NULL, 0, 2147483647),
(1, 2, 2, 1, NULL, 2, 1, 2, NULL, 2147483647, 1, '00921887299', 'ADRIANA FONTOURA DA COSTA', 'DRIKA', '6308716', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2669, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3727725, 0, 2147483647),
(1, 2, 2, 1, NULL, 2, 1, 1, NULL, NULL, NULL, '69077991115', 'MARCIO XAVIER DOS SANTOS', 'MARCIO XAVIER DOS SANTOS', '11164573', '0000-00-00', '2044-07-08', '0000-00-00 00:00:00', 0, 1, 0, '2044-07-08', 0, 0, 2123, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 0, NULL, 0, 2147483647),
(1, 2, 2, 1, NULL, 1, 1, 2, NULL, NULL, NULL, '05779691533', 'MAIARA DE MELO PIRES', 'MAIARA DE MELO PIRES', '1536286931', '2034-06-02', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 1697, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 6525883, 0, 2147483647),
(1, 2, 2, 1, NULL, 1, 1, 1, NULL, NULL, NULL, '00658115260', 'LUCAS LUAN MIRANDA', 'LUCAS LUAN MIRANDA ', '1087502', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 14164, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 5524669, 0, 2147483647),
(1, 2, 2, 1, NULL, 2, 1, 2, NULL, 2147483647, NULL, '02685781250', 'DAIANE LOPES VICENTE ', 'DAIANE LOPES VICENTE ', '1274726', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', NULL, 1, 0, '0000-00-00', 0, NULL, NULL, NULL, NULL, 'senha', NULL, NULL, 'null', 0, 'null', 'null', 1, 6540533, NULL, 2147483647),
(1, 2, 2, 1, NULL, 2, 1, 1, NULL, NULL, NULL, '02626008206', 'GILSON NUNES DE SOUZA', 'GILSON NUNES DE SOUZA', '6340320', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 255, 8367, 255, 0, 'senha', 255, 255, 'null', 0, 'null', 'null', 0, 4303087, 255, 2147483647),
(1, 2, 2, 1, NULL, 2, 1, 2, NULL, NULL, NULL, '01668181517', 'ANDREA ALVES DOS SANTOS SOUZA', 'ANDREA ALVES DOS SANTOS SOUZA', '0943031931', '2031-08-02', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 8137, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 6525727, 0, 2147483647),
(1, 2, 2, 1, NULL, 2, 1, 1, NULL, NULL, NULL, '91250161134', 'RICARDO VIEIRA DE MORAES', 'RICARDO VIEIRA DE MORAES', '13437518', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 8997, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 6231805, 0, 2147483647),
(1, 2, 2, 1, NULL, 1, 1, 1, NULL, NULL, NULL, '04779400139', 'RHAUL DAMASIO SILVA', 'RHAUL ', '23968907', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 3925, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 4310572, 0, 2147483647),
(1, 2, 2, 1, NULL, 1, 8, 1, NULL, NULL, NULL, '70778124134', 'WILLIAN FREITAS DA SILVA', 'WILLIAN FREITAS DA SILVA', '001031506', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 14620, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 4037820, 0, 2147483647),
(1, 2, 1, 1, NULL, 1, NULL, 2, NULL, NULL, NULL, '05856239539', 'thamires da silva pinheiro', 'mimi', '1301238708', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', NULL, 1, 0, '0000-00-00', 0, NULL, NULL, NULL, NULL, 'senha', NULL, NULL, 'null', 0, 'null', 'null', 1, 6525917, NULL, 2147483647),
(1, 2, 2, 1, NULL, 1, 1, 2, NULL, NULL, NULL, '05482387585', 'ARIELLE SANTOS PEDREIRA', 'ARIELLE SANTOS PEDREIRA', '1597531987', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 140035, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 6525749, 0, 2147483647),
(1, 2, 1, 1, NULL, 4, 1, 2, NULL, NULL, NULL, '00940957523', 'ALINE SILVA DO CARMO OLIVEIRA', 'ALINE SILVA DO CARMO OLIVEIRA', '1111517754', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 8071, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 6525700, 0, 2147483647),
(1, 2, 2, 1, NULL, 4, 1, 1, NULL, NULL, NULL, '01734948540', 'LUIS CARLOS ALVES DE MELO', 'LUIS CARLOS ALVES DE MELO', '1524646', '0000-00-00', '2043-05-02', '0000-00-00 00:00:00', 1, 0, 0, '2043-05-02', 0, 0, 1224, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 0, NULL, 0, 2147483647),
(1, 2, 2, 1, NULL, 2, 1, 1, NULL, NULL, 2, '03591060135', 'GEOVANY CARNEIRO DE CASTRO OLIVEIRA', 'null', '5478619', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 8948, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 0, NULL, 0, 2147483647),
(1, 2, 2, 1, NULL, 1, 1, 1, NULL, NULL, NULL, '04116099120', 'JONES APARECIDO OLIVEIRA DO NASCIMENTO', 'JONES APARECIDO OLIVEIRA DO NASCIMENTO', '2500985-0', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 7017, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 0, 3974478, 0, 2147483647),
(1, 2, 2, 1, NULL, 2, 1, 1, NULL, 2147483647, NULL, '02493622952', 'JEFERSON LUIZ DO PRADO', 'JEFERSON LUIZ DO PRADO', '73600316', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 8839, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 5361955, 0, 2147483647),
(1, 2, 2, 1, NULL, 1, 1, 1, NULL, NULL, NULL, '03834474371', 'RAFAEL DOS SANTOS SILVA', 'RAFAEL DOS SANTOS SILVA', '6743153', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, NULL, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 6129724, 0, 2147483647),
(1, 2, 2, 1, NULL, 2, 1, 1, NULL, NULL, NULL, '01952605202', 'MADSON AMORIN PENA', 'MADSON AMORIN PENA', '5306984', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 1, 1, 0, '0000-00-00', 0, 0, 5528, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 4592692, 0, 2147483647),
(1, 2, 2, 1, NULL, 2, 1, 2, NULL, NULL, 1, '05761198142', 'NAIARA MICAELA AGUERO FLORENTIN', 'null', '2036365', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 178, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 0, NULL, 0, 2147483647),
(1, 2, 2, 1, NULL, 2, 8, 1, NULL, NULL, NULL, '03056098157', 'MURYLLO ALVES OLIVEIRA', 'MURYLLO ALVES OLIVEIRA', '4919746', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 1, 2520, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3762917, NULL, 2147483647),
(1, 2, 2, 1, NULL, 1, 1, 1, NULL, NULL, 1, '87880806253', 'SHIRLEY PEREIRA DE LIMA', 'SHIRLEY PEREIRA DE LIMA', '5453106', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 167, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 0, NULL, 0, 2147483647),
(1, 2, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '45068178187', 'SIMONE TEREZINHA DE MELO', 'null', '2810283', '2025-11-04', '0000-00-00', '0000-00-00 00:00:00', NULL, NULL, 0, '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'senha', NULL, NULL, 'null', NULL, 'null', 'null', NULL, NULL, NULL, 2147483647),
(1, 2, 2, 1, NULL, 2, 99, 1, NULL, NULL, NULL, '01891157183', 'DEMILSON LOPES MEDEIROS', 'DEMILSON LOPES MEDEIROS', '1742214-0', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 7296, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 0, 0, 0, 2147483647),
(1, 2, 2, 1, NULL, 2, 1, 1, NULL, NULL, NULL, '90230477291', 'ANTONIO ADILSON CRUZ SALOMAO', 'ADILSON', '5284830', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 15000, 1, 99000, NULL, NULL, 'senha', NULL, NULL, 'null', 0, 'null', 'null', NULL, NULL, NULL, 2147483647),
(1, 2, 2, 1, NULL, 2, 1, 1, NULL, NULL, NULL, '86751069120', 'DANIEL LEMES LUZ', 'DANIEL LEMES LUZ', '417008', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', NULL, 1, 0, '0000-00-00', 0, NULL, NULL, NULL, NULL, 'senha', NULL, NULL, 'null', 0, 'null', 'null', 1, 6543258, NULL, 2147483647),
(1, 2, 2, 1, NULL, 2, 1, 1, NULL, NULL, NULL, '03666887155', 'JHONATAN WILLIAN RODRIGUES DE SOUZA', 'JHONATAN WILLIAN RODRIGUES DE SOUZA', '21754519', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 11060, 255, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2194525, 0, 2147483647),
(1, 2, 2, 1, NULL, 1, 1, 1, NULL, NULL, NULL, '02603777246', 'LUCAS MANASFI PEREIRA', 'LUCAS MANASFI PEREIRA', '1147520-0', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', NULL, 1, 0, '0000-00-00', 0, NULL, NULL, NULL, NULL, 'senha', NULL, NULL, 'null', 0, 'null', 'null', 1, 8320661, NULL, 2147483647),
(1, 2, 2, 1, NULL, 1, 1, 2, NULL, NULL, NULL, '05722190160', 'BEATRIZ SANTOS KROETZLER', 'BEATRIZ SANTOS KROETZLER', '26660199', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 11611, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 4626993, 0, 2147483647),
(1, 2, 1, 1, NULL, NULL, 10, NULL, NULL, NULL, NULL, '11501071467', 'JAQUELINE MELO DO NASCIMENTO', 'JAQUE', '8509792.0', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 1, 5925, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 0, NULL, 0, 2147483647),
(1, 2, 2, 1, NULL, 4, 1, 1, NULL, NULL, NULL, '04944661118', 'BRUNO DE FREITAS MACIEL', 'BRUNO DE FREITAS MACIEL', '1828315-2', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, NULL, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 6487156, 0, 2147483647),
(1, 2, 2, 1, NULL, 2, 1, 1, NULL, NULL, NULL, '00026892278', 'RAIMUNDO DO NASCIMENTO MOREIRA', 'RAIMUNDO DO NASCIMENTO MOREIRA', '6012425', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 1, 99000, NULL, NULL, 'senha', NULL, NULL, 'null', 0, 'null', 'null', NULL, NULL, NULL, 2147483647),
(1, 2, 2, 1, NULL, 1, 1, 1, NULL, NULL, NULL, '02663140236', 'TIAGO BATISTA DE LIMA', 'TIAGO BATISTA DE LIMA', '355050', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 6908, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 0, 0, 0, 2147483647),
(1, 2, 2, 1, NULL, 2, 1, 1, NULL, NULL, NULL, '01485990289', 'DIEMISON DOS SANTOS PEREIRA', 'DIEMISON DOS SANTOS PEREIRA', '1385822', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', NULL, 1, 0, '0000-00-00', 0, 0, 681, NULL, NULL, 'senha', NULL, NULL, 'null', 0, 'null', 'null', 1, 4019201, NULL, 2147483647),
(1, 2, 2, 1, NULL, 1, 1, 2, NULL, NULL, NULL, '02308313200', 'SAYANNE LIMA DA SILVA', 'SAYANNE LIMA DA SILVA', '7078203', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 1, 99000, NULL, NULL, 'senha', NULL, NULL, 'null', 0, 'null', 'null', NULL, NULL, NULL, 2147483647),
(1, 2, 2, 1, NULL, 2, 1, 2, NULL, NULL, NULL, '00927802295', 'ADRIELE DA SILVA QUEIROZ', 'ADRIELE DA SILVA QUEIROZ', '6383634', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 1, 99000, NULL, NULL, 'senha', NULL, NULL, 'null', 0, 'null', 'null', NULL, NULL, NULL, 2147483647),
(1, 2, 2, 1, NULL, 1, 1, 1, NULL, NULL, NULL, '01402194200', 'HENRIQUE BARROS GOMES', 'HENRIQUE BARROS GOMES', '6683885', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 1, 99000, NULL, NULL, 'senha', NULL, NULL, 'null', 0, 'null', 'null', NULL, NULL, NULL, 2147483647),
(1, 2, 2, 1, NULL, 1, 1, 1, NULL, NULL, NULL, '70578194120', 'JADSON HORACIO DO VALE', 'JADSON HORACIO DO VALE', '6516240', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', NULL, 1, 0, '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'senha', NULL, NULL, 'null', NULL, 'null', 'null', NULL, NULL, NULL, 2147483647),
(1, 2, 1, 1, 1, 2, 1, 1, NULL, NULL, 1, '60333448200', 'DANIEL ALMEIDA PIRES', 'DANIEL ALMEIDA PIRES', '651817', '2029-04-05', '0000-00-00', '0000-00-00 00:00:00', 1, 1, 0, '0000-00-00', 1000, 0, 768, 0, 0, 'senha', NULL, NULL, 'null', NULL, 'null', 'null', 1, 3013980, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '01773806165', 'MAURICIO DE FREITAS CASTALDELI FILHO', 'MAURICIO DE FREITAS CASTALDELI FILHO', '1818030-2', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 489, 0, NULL, 'senha', NULL, NULL, 'null', NULL, 'null', 'null', 1, 3090722, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 2, '00175582122', 'JOSE ANTONIO ANTUNES', 'JOSE ANTONIO ANTUNES', '1332149', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 1, 1, 0, '0000-00-00', 0, 0, 7082, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3499108, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '77118855200', 'JOSE BATISTA DE SOUSA JUNIOR', 'JOSE BATISTA DE SOUSA JUNIOR', '4266815', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 5109, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3824834, NULL, 2147483647),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, NULL, '00367585235', 'WELITON SANTANA XAVIER', 'Weliton', '1054522', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 13052, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 733144, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '27715105880', 'BENEDITO FABIO RODRIGUES', 'DITO', '27743645X', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 3916, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2590835, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 2, NULL, NULL, 2, '01179343131', 'LIANI  APARECIDA LUCA TRINDADE', 'LIANE APARECIDA LUCA TRINDADE', '001447309', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '2044-03-07', 0, 0, 6937, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 1111212, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '05463228671', 'ALICINIO MARQUES DA CUNHA', 'null', '12625774', '0000-00-00', '2040-12-09', '0000-00-00 00:00:00', 1, 1, 0, '0000-00-00', 0, 0, 472, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3031175, 0, 2147483647),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, 1, '99389975204', 'MAGNO ROQUE DE SOUZA', 'null', '5429828', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 178, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3648105, 0, 2147483647),
(1, 2, 2, 1, 1, 1, 99, 1, NULL, NULL, NULL, '00304939196', 'GILMAR APARECIDO DA SILVA VARGAS', 'GILMAR APARECIDO DA SILVA VARGAS', '001290573', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 140182, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3755520, 0, 2147483647),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, NULL, '00048058106', 'LEANDRO FARIA DE MORAIS', 'LEANDRO FARIA DE MORAIS ', '4572569', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 5385, 255, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3658935, 0, 2147483647),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, NULL, '68895038134', 'MARCELO DOS SANTOS GROCHEVISKI', 'MARCELO DOS SANTOS GROCHEVISKI', '10666052', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 12383, 255, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 1996994, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '02060199123', 'RENATO MIRANDA', 'null', '16587928', '2033-05-08', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 3979, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3627370, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '66618339200', 'FRANCEILDO LEANDRO FRANCA', 'FRANCEILDO LEANDRO FRANCA', '0319329', '0000-00-00', '2044-07-05', '0000-00-00 00:00:00', 0, 1, 0, '2044-07-05', 0, 0, 731, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3286216, NULL, 2147483647),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, 1, '96828480163', 'ANDERSON MOISES GONCALVES DA SILVA', 'ANDERSON MOISES GONCALVES DA SILVA', '1298819', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 219, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3417604, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, 2, '74887050259', 'MICHELSON MOISES DA SILVA MESSIAS', 'MICHELSON MOISES DA SILVA MESSIAS', '344151', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 7875, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3523705, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '66948983200', 'RODRIGO DE BRITO SOUSA', 'RODRIGO DE BRITO SOUSA', '4224736', '2030-08-03', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 8766, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 0, 0, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 2, NULL, NULL, 2, '34128174220', 'ANTONIA DAUCIVAN PEREIRA RODRIGUES', 'ANTONIA DANCIVAN PEREIRA RODRIGUES', '137952487', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 1, 1, 0, '0000-00-00', 0, 0, 1011, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2749101, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '05698092150', 'JEAN CARLOS GOMES DOS PASSOS', 'PASSOS', '1941460', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 255, 12794, 255, 0, 'senha', 255, 255, 'null', 0, 'null', 'null', 1, 628524, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 2, '70410062120', 'WENDER GOMES LOPES', 'WENDER GOMES LOPES', '4140643', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '2039-04-02', 0, 0, 2123, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2273173, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, NULL, '77851498104', 'EMILIO DA SILVA GOMES', 'EMILIO DA SILVA GOMES', '12249025', '0000-00-00', '2042-11-04', '0000-00-00 00:00:00', 0, 1, 0, '2042-11-04', 0, 0, 489, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 4036646, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 99, 2, NULL, NULL, NULL, '69792143220', 'RANNIELLY CAMARA DO NASCIMENTO', 'RANNI', '4350904', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 5251.89, 1, 99000, NULL, NULL, 'senha', NULL, NULL, 'null', 0, 'null', 'null', NULL, NULL, NULL, 2147483647),
(1, 2, 2, 1, 1, 1, 1, 2, NULL, NULL, NULL, '03607575100', 'LILIANE APARECIDA CARRARA', 'LILIANE APARECIDA CARRARA', '21869111', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 12214, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3860882, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '03913745165', 'DAVID ARCANGELO ARRUDA', 'DAVID ARCANGELO ARRUDA', '18331521', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 202, 255, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2202235, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, NULL, '04124733135', 'FLAVIO ALVES DA SILVA', 'null', '23716797', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 1364, 255, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3369916, 0, 2147483647),
(1, 2, 2, 1, 1, 1, 1, 2, NULL, NULL, NULL, '03966316145', 'ERIKA PAULA BASILIO', 'ERIKA PAULA BASILIO', '2351785-9', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 5466, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 62826, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, NULL, '92056636204', 'ALVARO CLISTENES DA FONSECA COELHO', 'ALVARO CLISTENES DA FONSECA COELHO', '236698520035', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 5077, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3647129, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 2, NULL, 2147483647, NULL, '61100200282', 'MARINALVA SOUSA SODRE', 'MARANALVA', '3359159', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 1, 99000, NULL, NULL, 'senha', NULL, NULL, 'null', 0, 'null', 'null', NULL, NULL, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 1, '00558879292', 'Deverson Luiz galbiati ceratti', 'Ceratti', '2291062', '0000-00-00', '2042-08-03', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 201, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 0, 0, 0, 2147483647),
(1, 2, 1, 1, 1, 2, NULL, 1, NULL, 2147483647, NULL, '00058382151', 'ADAILTON GREGORIO DE ALMEIDA', 'ADAILTON GREGORIO DE ALMEIDA', '15144844', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 140248, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3014922, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 2, '01851305181', 'JOAO FERNANDO DA SILVA', 'JOAO FERNANDO DA SILVA', '18416276', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 5433, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3617721, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '70316151190', 'CARLOS PEREIRA LEITE', 'CARLOS PEREIRA LEITE', '26020971', '2035-03-04', '0000-00-00', '0000-00-00 00:00:00', 1, 0, 0, '0000-00-00', 0, 0, 39, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 4179964, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 2, NULL, 2147483647, NULL, '06032191109', 'CARINE REZENDE DE SOUZA', 'CARINE REZENDE DE SOUSA', '27528901', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 511, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 144403, 0, 2147483647),
(1, 2, 2, 1, 1, 1, 1, 2, NULL, NULL, 1, '03138417132', 'ANA PAULA BERNARDES BELAO', 'ANA PAULA', '2077989-5', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 11054, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2055753, 0, 2147483647),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, NULL, '03796220177', 'RENATO GOMES DE SOUSA', 'null', '001769919', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 4537, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3547167, 0, 2147483647),
(1, 2, 2, 2, 1, 1, 1, 1, NULL, NULL, 1, '73386774172', 'RODRIGO MARTINS LIRA', 'null', '1493416', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 11814, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3600766, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '91780535287', 'UILIASMAR MACHADO DOS SANTOS', 'null', '951692', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 4352, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3817928, 0, 2147483647),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, NULL, '92262490163', 'WEDER PEREIRA BENINCA', 'WEDER PEREIRA BENINCA', '13081578', '2030-11-05', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 6775, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2608115, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, 1, '68910991291', 'ALESSANDRO PEREIRA DO NASCIMENTO', 'null', '3762152', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 1, 1, 0, '0000-00-00', 0, 0, 4449, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3173791, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '73675741168', 'EDSON APARECIDO DOS SANTOS', 'null', '15542912', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 11839, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3261014, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, 1, '01028882130', 'FERNANDES RIBEIRO DA SILVA', 'FERNANDES RIBEIRO DA SILVA', '16796888', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 1, 1, 0, '0000-00-00', 0, NULL, NULL, NULL, 0, 'senha', NULL, NULL, 'null', NULL, 'null', 'null', 1, 2385851, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, NULL, '00172067235', 'FRANCISCO SILVA CARVALHO', 'FRANCISCO', '6086650', '2033-01-03', '0000-00-00', '0000-00-00 00:00:00', 1, 1, 0, '0000-00-00', 0, 0, 6646, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 1010166, 0, 2147483647),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, NULL, '59315857291', 'OZIMAR DA SILVA NASCIMENTO', 'null', '273852', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 3309, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3657028, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, NULL, '69802262153', 'JUNIOR CEZAR MARTINS BARCELOS', 'JUNIOR CEZAR MARTINS BARCELOS', '1212460-5', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 9688, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3168654, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, 1, '02834418101', 'JUNIOR MATOS PASSOS', 'JUNIOR', '1647740', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 1, 0, 0, '0000-00-00', 0, 0, 1224, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3419723, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 2, NULL, NULL, 2, '90528948172', 'GRACIELA DE ABREU', 'GRACIELA DE ABREU', '1255666.1', '0000-00-00', '2038-09-07', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 2000, 0, 656, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3822861, 0, 2147483647),
(1, 2, 2, 1, 1, 4, 1, 2, NULL, NULL, 1, '68798458272', 'SELMA ATUNIA DOS SANTOS GUSMAO', 'null', '3875338', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 1, 1, 0, '0000-00-00', 0, 0, 9797, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3321716, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, 1, '91951186168', 'LUIS PAULO SANTOS BRAGA ', 'LUIS PAULO SANTOS BRAGA ', '1221364', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 14519, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 335947, 0, 2147483647),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, NULL, '68719051204', 'SALOMAO FELICIO GUARIM', 'SALOMAO FELICIO GUARIM', '842103', '0000-00-00', '2042-11-04', '0000-00-00 00:00:00', 0, 1, 0, '2042-11-04', 0, 0, 9793, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3613719, 0, 2147483647),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, NULL, '05444907119', 'MARCOS ANTONIO CENTURION AREVALO', 'null', '001890099', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 255, 7627, 255, 0, 'senha', 255, 255, 'null', 0, 'null', 'null', 1, 3869381, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 2, NULL, NULL, NULL, '02810393133', 'JOCIMARA LENE MIRANDA', 'mara ', '19351542', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 8295, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 4042018, 0, 2147483647),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, NULL, '04466202117', 'ALLAN FERREIRA MOREIRA', 'null', '20957157', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 9524, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 439347, 0, 2147483647),
(1, 2, 1, 1, 1, 1, 1, 1, NULL, NULL, NULL, '64151581200', 'MARCIO KLEBER SOUZA E SILVA', 'MARCIO KLEBER SOUZA E SILVA', '2869221', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 255, 731, 1, 0, 'senha', 255, 255, 'null', 0, 'null', 'null', 1, 3774077, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, NULL, '93695969253', 'CESAR AUGUSTO PEREIRA GUEDES', 'CESAR AUGUSTO PEREIRA GUEDES', '38816900X', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 166, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3526539, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 1, '00592807193', 'JOAQUIM MARTINS DA SILVA NETO', 'null', '346.513', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2750, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 1634611, 0, 2147483647),
(1, 2, 2, 1, 1, 1, 1, 2, NULL, NULL, NULL, '05439730184', 'EDILAINE CRISTINA DA ROCHA', 'EDILAINE CRISTINA DA ROCHA', '25832832', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2201, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2903370, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, 2, '42148197215', 'FRANCISCO LAERCIO FLORENCIO DO NASCIMENTO', 'FRANCISCO LAERCIO FLORENCIO DO NASCIMENTO', '318993', '0000-00-00', '2038-01-04', '0000-00-00 00:00:00', 1, 1, 0, '0000-00-00', 0, 0, 9259, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3918174, 0, 2147483647),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, 1, '00704536242', 'FRANCISCO BATISTA DE PAULO', 'Batista', '6391096', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 12303, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3022205, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, 1, '07671894931', 'ANDRE CIRILO DO PRADO DA SILVA', 'null', '105332360', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 8664, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 81683, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 2, '58286519191', 'JOSE RONILDO DA SILVA', 'JOSE', '695354', '0000-00-00', '2039-04-03', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 1, 0, 5240, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3646762, 0, 2147483647),
(1, 2, 1, 1, 1, 2, 1, 2, NULL, NULL, NULL, '78377480263', 'MARCILENE DA PAIXAO BARROS', 'LENE', '3822870.0', '2030-06-06', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 4133.25, 1, 99000, NULL, NULL, 'senha', NULL, NULL, 'null', 0, 'null', 'null', NULL, NULL, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '76520196215', 'ERIVALDO DA SILVA PINTO', 'ERIVALDO DA SILVA PINTO', '4840092.0', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 1, 99000, NULL, NULL, 'senha', NULL, NULL, 'null', 0, 'null', 'null', NULL, NULL, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 2, NULL, NULL, NULL, '01589227271', 'ANDREZA MIRANDA DA SILVA', 'ANDREZA', '6777550', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 7990, 1, 99000, NULL, NULL, 'senha', NULL, NULL, 'null', 0, 'null', 'null', NULL, NULL, NULL, 2147483647),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, NULL, '00292153236', 'MARCELO BARBOSA RODRIGUES', 'MARCELO', '6196059', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 5122.79, 1, 99000, NULL, NULL, 'senha', NULL, NULL, 'null', 0, 'null', 'null', NULL, NULL, NULL, 2147483647),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, NULL, '01835376290', 'DINAEL SILVA SANTOS', 'DINAEL', '280722077888', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 1, 99000, NULL, NULL, 'senha', NULL, NULL, 'null', 172.1, 'null', 'null', NULL, NULL, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 2, NULL, NULL, NULL, '57743282287', 'VALDIRENE DO SOCORRO CAMPELO', 'VALDIRENE DO SOCORRO CAMPELO', '2982410', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 1, 99000, NULL, NULL, 'senha', NULL, NULL, 'null', 0, 'null', 'null', NULL, NULL, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 1, NULL, NULL, NULL, NULL, '69552304253', 'JANETY VITORIA RODRIGUES DA SILVA', 'JANETY VITORIA RODRIGUES DA SI', '3585455.0', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 1, 99000, NULL, NULL, 'senha', NULL, NULL, 'null', 0, 'null', 'null', NULL, NULL, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '05340460100', 'JOALISON CAMARGO DE CASTRO', 'JOALISON CAMARGO DE CASTRO', '25165330', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 1531, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3763249, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '01355946263', 'VANDERSON DE OLIVEIRA DIAS', 'VANDERSON DE OLIVEIRA DIAS', '1164805', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 7734, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 48376, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 2, NULL, 2147483647, NULL, '00758525273', 'SUELLEN FERNANDA DE SOUZA', 'null', '1111143', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 782, 255, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3184390, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 2, '89027469172', 'WILLIAM JOSé DOS SANTOS', 'WILLIAM JOSé DOS SANTOS', '12442224', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 1, 1, 0, '0000-00-00', 0, 0, 458, NULL, NULL, 'senha', NULL, NULL, 'null', NULL, 'null', 'null', 1, 3285850, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, NULL, '01808886178', 'EDSON CARLOS REI DE ALMEIDA', 'null', '13978047', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2819, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3506192, 0, 2147483647),
(1, 2, 2, 1, 1, 1, 1, 2, NULL, NULL, NULL, '04643013192', 'JESSICA SAMPATTI LEITE', 'JESSICA SAMPATTI LEITE', '1863259', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 208, 255, NULL, 'senha', NULL, NULL, 'null', NULL, 'null', 'null', 1, 824719, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '04361800146', 'EDJUNIOR DOS SANTOS DOMINGOS', 'EDJUNIOR DOS SANTOS DOMINGOS', '23425628', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 255, 7613, 255, 0, 'senha', 255, 255, 'null', 0, 'null', 'null', 1, 3858251, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '01074228243', 'VAGNER OLIVEIRA DA SILVA', 'null', '1142387', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 948, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 365146, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 3, 1, NULL, 2147483647, NULL, '02587288177', 'HENUS RICHARDSON MAIA', 'HENUS RICHARDSON MAIA', '19790449', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 12868, 255, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 1600541, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '99363283291', 'DANIEL XAVIER DA SILVA', 'DANIEL XAVIER DA SILVA', '966.764', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 9135, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2076109, 0, 2147483647),
(1, 2, 2, 1, 1, 1, 1, 2, NULL, NULL, NULL, '04008004114', 'BRUNA SANTANA DOS REIS', 'BRUNA SANTANA REIS', '1789864-1', '2033-03-05', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 9311, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3183279, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, NULL, '01329913221', 'LUCAS JUNIOR DA SILVA VICENTE ', 'null', '1263562', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 7849, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2071817, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, 1, '99401576149', 'HELIO MOREIRA CAMPOS', 'HELIO MOREIRA CAMPOS', '15057097', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 962, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2243166, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '00917920376', 'DARMAN VIRISSIMO DA SILVA', 'null', '1384802', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 4762, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3016342, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, 2, '62378376200', 'OSEIAS ELER  SUDARIO', 'OSEIAS ELER SUDARIO', '579630', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2804, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3255860, 0, 2147483647),
(1, 2, 2, 2, 1, 2, 1, 1, NULL, NULL, 1, '45748756234', 'TARCILO PEREIRA DOS SANTOS', 'TARCILO PEREIRA DOS SANTOS', '452316', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 4139, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3811795, 0, 2147483647),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, NULL, '97917966100', 'ROBERTO JUNIOR SAUERESSIG', 'ROBERTO JUNIOR SAUERESSIG', '1252974', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 208, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 724282, 0, 2147483647),
(1, 2, 2, 1, 1, 1, 1, 2, NULL, NULL, NULL, '03443360181', 'KELLY CRISTHINA CAMARGO DE LIMA', 'KELLY CRISTHINA CAMARGO DE LIMA', '21117942', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', NULL, 1, 0, '0000-00-00', 0, NULL, 475, NULL, NULL, 'senha', NULL, NULL, 'null', 0, 'null', 'null', 1, 4159719, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '82050724187', 'VALMIR APARECIDO DA SILVA ', 'VALMIR APARECIDO DA SILVA ', '001019946', '2029-01-04', '0000-00-00', '0000-00-00 00:00:00', NULL, 1, 0, '0000-00-00', 0, NULL, 7010, NULL, NULL, 'senha', NULL, NULL, 'null', 0, 'null', 'null', 1, 4056273, NULL, 2147483647),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, NULL, '01808739116', 'FERNANDO BELMONT DOS SANTOS ', 'null', '448958', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 4873, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2787582, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, 1, '86848399272', 'LEANDRO VIEIRA DE ABREU', 'null', '901200', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 1, 0, 0, '0000-00-00', 0, 0, 8281, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3624402, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 99, 1, NULL, NULL, 1, '04241354181', 'MATHEUS RICARDO RAMOS', 'CABEçA', '21782741', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 4695, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2910834, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, 1, '02293499197', 'RENAN ALESSANDRO TIEMANN', 'RENAN ALESSANDRO TIEMANN', '17613116', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 178, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3426760, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 2, NULL, NULL, 1, '03044812208', 'JANETE CAROLINE MENDES BRAGA', 'JANETE CAROLINE MENDES BRAGA', '13143018', '0000-00-00', '2043-04-02', '0000-00-00 00:00:00', 1, 1, 0, '2043-04-02', 0, 255, 2910, 255, 0, 'senha', 255, 255, 'null', 0, 'null', 'null', 1, 3814406, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 99, 1, NULL, 2147483647, 3, '02090567112', 'THIAGO MENDONCA DE ANDRADE', 'THIAGO MENDONCA DE ANDRADE', '20105991', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 11549, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3807775, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '91843618249', 'AIRTON MELO DA COSTA', 'AIRTON MELO DA COSTA', '970399', '2033-08-04', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 14150, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3517314, 0, 2147483647),
(1, 2, 2, 1, 1, 1, 1, 2, NULL, NULL, 3, '78116686291', 'MARIA CLEIDIAN DO NASCIMENTO SILVA', 'MARIA CLEIDIAN DO NASCIMENTO SILVA', '429178', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 13965, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 520024, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, 1, '68739796272', 'ELCIO RODAMES ZANETTI', 'ELCIO RODAMES ZANETTI', '4331726', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 178, 255, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3265791, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 2, '67692435200', 'ODIMAR FERREIRA DE SOUZA JUNIOR', 'ODIMAR FERREIRA DE SOUZA JUNIOR', '684511', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 1, 0, 0, '0000-00-00', 1, 0, 8281, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3591097, 0, 2147483647),
(1, 2, 2, 1, 1, 1, 1, 2, NULL, NULL, 2, '84927704149', 'ANDREIA  KARNIKOWSKI', 'ANDREIA KARNIKOWSKI', '1177950', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 12868, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3743959, 0, 2147483647),
(1, 2, 2, 1, 1, 1, 1, 2, NULL, NULL, NULL, '92514650291', 'LUCIANA SANTOS DA MOTA', 'null', '10379690', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 650, 1, 0, 'senha', NULL, NULL, 'null', NULL, 'null', 'null', 1, 1898745, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '00414596528', ' MYCHELL SILVA VILAS BOAS', 'null', '0784703744', '2030-06-07', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2272, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 491820, NULL, 2147483647),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, NULL, '06061562918', 'DIOGO TAGLIATTI AMADEU', 'null', '79170259', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2520, 255, 0, 'senha', 255, 255, 'null', 0, 'null', 'null', 1, 3564295, NULL, 2147483647),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, NULL, '96469099149', 'LUCIANO SAMPAIO DA PAZ', 'null', '14631024', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 1880, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2033600, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, NULL, '72576839215', 'LUIS CARLOS FONTINELE DA SILVA', 'LUIS CARLOS FONTINELE DA SILVA', '364885', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 680, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2645663, NULL, 2147483647),
(1, 2, 1, 1, 1, 1, 1, 1, NULL, NULL, 2, '84037865220', 'MARCOS ORMANDES GARCIA', 'MARCOS ORMANDES GARCIA', '922321', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 8199, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3539466, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, 2, '33028429888', 'WILLIAM MAXIMO DA FONCECA', 'WILLIAM', '452111006', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 605, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3486385, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 2, '71651284253', 'LYS  SANTOS', 'BISCOITO ', '704248', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 1, 0, 845, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3758461, 0, 2147483647),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, NULL, '02467375145', 'ALLAN JALDI CARDOSO', 'null', '17278716', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 1, 0, 0, '0000-00-00', 0, 0, 8281, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3782701, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 1, '84386266291', 'JHONE GLAUBER ALVES', 'GLAUBER', '5060292', '0000-00-00', '2041-06-08', '0000-00-00 00:00:00', 1, 1, 0, '0000-00-00', 0, 0, 7257, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2659308, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 2, 1, NULL, NULL, NULL, '00597781214', 'CASSIO PAULO RIBEIRO ALBANO', 'null', '1172536', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2520, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3618871, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '02093793911', 'APARECIDO SIMPLICIO DOS SANTOS ', 'CIDAO', '67937660', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2520, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2321060, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, 1, '36160776134', 'ELIAS PAIVA SILVA  ', 'ELIAS', '482273', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2520, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2823671, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 8, 1, NULL, 2147483647, 2, '73768316220', 'WILKER REGINALDO MACHADO', 'null', '750667', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 6200, 0, 807, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3319796, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, NULL, '92146678100', 'MARCIO RODRIGUES DOS SANTOS', 'MARCIO RODRIGUES DOS SANTOS', '954505', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 326, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 857307, 0, 2147483647);
INSERT INTO `pessoa` (`idtipopessoa`, `idtipocontribuinte`, `idtipocadastro`, `idsituacaopessoa`, `idtiporesidencia`, `idtipoestadocivil`, `idtipoocupacao`, `idtiposexo`, `idgrupo`, `idconjuge`, `idtipolimite`, `cnpj_cpf`, `nome`, `nomefantasia`, `cce_rg`, `datacriacao`, `datacadastro`, `dataalteracao`, `fornecedor`, `cliente`, `cpfgerado`, `ultimaconsultaspc`, `valorlimitecredito`, `gerarboleto`, `idusuario`, `atualizarcadastro`, `idnaturezaretencaofonte`, `chavemd5`, `aposentado`, `pensionista`, `inscricaosuframa`, `limitecreditoadicional`, `inscricaomunicipal`, `apelidoftp`, `aceite`, `identificador`, `emancipado`, `idcnpj_cpf`) VALUES
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, 1, '95709282120', 'MARCOS ROBERTO GIOMO', 'MARCOS', '32367989', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 1, 0, 2520, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3714498, 0, 2147483647),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, 2, '89934849100', 'VALDIR RIBEIRO DOS SANTOS', 'VALDIR RIBEIRO DOS SANTOS', '1105132-9', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 11154, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3878360, 0, 2147483647),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, 3, '00427231167', 'DIEGO QUINTINO FRANCA', 'DIEGO QUINTINO FRANCA', '1418206-8', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2520, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3640983, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '72282240197', 'RAIMUNDO FERNANDES CARVALHO', 'null', '148742720006', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 7081, 255, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3891006, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 2, NULL, 2147483647, NULL, '03968768116', 'MEIRI TAUHANE NUNES', 'null', '1954936-9', '2033-11-03', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 255, 6115, 1, 0, 'senha', 255, 255, 'null', 0, 'null', 'null', 1, 3711608, NULL, 2147483647),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, NULL, '01230693190', 'CRISTIAN RAMON MACHADO RESQUIN', 'null', '14179148', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '2042-09-05', 0, 0, 8467, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2111207, NULL, 2147483647),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, NULL, '89217330191', 'JAMIL PINHEIRO JUNIOR', 'null', '957730', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2520, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 4166376, 0, 2147483647),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, NULL, '01175797260', 'FRANCISCO CEZAR SOARES DA SILVA JUNIOR', 'null', '1121213', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 1, 1, 0, '0000-00-00', 0, 255, 6758, 1, 0, 'senha', 255, 255, 'null', 0, 'null', 'null', 1, 3750920, NULL, 2147483647),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, NULL, '01307465170', 'FERNANDO BRANCO DA SILVA', 'null', '15545644', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 509, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3663415, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 2, '50757296904', 'JOSE ROBERTO CORCINE', 'JOSE ROBERTO CORCINE', '3.752.384.4', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 2000, 0, 850, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3628236, 0, 2147483647),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, 2, '71713123215', 'JUARI GOLLO', 'JUARI GOLLO', '685765', '2030-01-03', '0000-00-00', '0000-00-00 00:00:00', 1, 1, 0, '0000-00-00', 0, 0, 782, 0, 0, 'senha', 0, NULL, 'null', NULL, 'null', 'null', 1, 3231882, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '20688210287', 'ARNALDO BORGES DA SILVA ', 'null', '1310481', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2520, 255, 0, 'senha', 0, 255, 'null', 0, 'null', 'null', 1, 3692400, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 99, 1, NULL, NULL, 1, '03316547177', 'VAGNER DOS SANTOS CARVALHO', 'VAGUIM', '21160520', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2217, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3044245, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, 2, '43226663100', 'EDNILDES ALVES ROSA', 'EDENILDES ALVES ROSA', '704.406/MT', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '2037-07-05', 0, 0, 13408, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 693367, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 1, '64754618220', 'GESSER BEZERRA DE SOUSA BRASIL', 'GESSER', '1497188', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 5545, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2579712, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, 3, '01587772124', 'WILAKSON MENDONCA FEITOZA', 'WILAKSON MENDONCA FEITOZA', '1610545-1', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 505, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3408859, NULL, 2147483647),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, 2, '00516479156', 'FLAVIO DE AGUIAR SILVA', 'FLAVIO DE AGUIAR SILVA', '15534090', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 2500, 1, 2775, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3614233, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 2, NULL, 2147483647, 2, '41873777272', 'MARIA LUCIA DE OLIVEIRA ANDRADE', 'MARIA LUCIA DE OLIVEIRA ANDRADE', '403.413-RO', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 1, 1, 0, '0000-00-00', 5000, 0, 6723, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 1799487, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 1, '90443730130', 'WENDELL DA SILVA LOPES', 'WENDELL DA SILVA LOPES/9956.1598', '1010416', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2520, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 1881635, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 10, 1, NULL, 2147483647, 2, '66046882249', 'RONALDO SILVA DA COSTA', 'RONALDO', '726632 SSP/RO', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '2044-03-07', 0, 0, 1179, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 1648234, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 8, 1, NULL, NULL, NULL, '01191422283', 'ALAN DOUGLAS SCALABRIM', 'null', '6376546', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 5144, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2932338, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '01875484205', 'RICARDO HENRIQUE GONÇALVES DOS REIS', 'null', '6668241', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2520, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3940761, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, NULL, '39845800530', 'DAGMAR ALVES PORTELA FILHO', 'null', '2294891', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 6440, 255, 0, 'senha', 255, 255, 'null', 0, 'null', 'null', 1, 3705726, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 2, '66465540215', 'LEDIMAR FREITAS BARBOSA', 'LEDIMAR FREITAS BARBOSA', '688919', '2029-11-06', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 7342, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 365115, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 1, '80987001191', 'JULIANO GONCALVES DE SOUZA', 'JULIANO GONCALVES DE SOUZA', '11180331', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 1, 2520, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 534571, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 1, '72254165100', 'LUCIANO VIEIRA MATOS', 'LUCIANO VIEIRA MATOS', '1.365.259-1', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 3807, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3775553, NULL, 2147483647),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, 1, '75731312320', 'ERISVANIO PEREIRA SALES', 'VANIO', '11553626', '2028-12-04', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 895, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2361894, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 99, 1, NULL, 2147483647, 1, '82505322287', 'SALOMAO SOUZA DIAS', 'SALOMAO SOUZA DIAS', '756943', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 765, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3897641, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, 2, '88383563191', 'CLAUDIR VIEIRA', 'CLAUDIR VIEIRA', '12883018', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 850, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3610063, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '14767210259', 'LUIS ANTONIO CARDOSO FARIAS', 'null', '146643', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 4813, 255, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2267685, NULL, 2147483647),
(1, 2, 1, 1, 1, 2, NULL, 1, NULL, NULL, NULL, '66939011234', 'ELIÉZIO OLIVEIRA DE SOUSA', 'DEDEU', '362306', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 464, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3403899, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 1, '60034165215', 'MARCOS BORGES MARTINES', 'MARCOS', '563340 SSPRO', '2028-04-05', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 1, 2520, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3841571, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 8, 1, NULL, 2147483647, 1, '00639388124', 'ANDERSON DE SOUZA NUNES', 'DIDA', '02949081092', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 1826, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3616369, 0, 2147483647),
(1, 2, 1, 1, 1, 2, 1, 1, NULL, NULL, NULL, '65714008200', 'JOSE CARLOS DA COSTA PEREIRA', 'JOSE CARLOS DA COSTA PEREIRA', '573043', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 9331, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3840817, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, 2, '65224990106', 'HELIO BEIA FRANCISCATO', 'HELIO BEIA FRANCISCATO', '970.356', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 7088, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3891172, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 2, '57989737272', 'ODENILTON GODINHO MACHADO', 'RAIMUNDA BATISTA DE ARAUJO', '10363610', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 1817, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 1561986, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 2, '49931016272', 'ADENILTON APARECIDO DOS SANTOS', 'ADENILTON APARECIDO DOS SANTOS', '510.106', '0000-00-00', '2039-06-02', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2520, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2763239, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 2, '41402715900', 'GERONIMO BORGES NETO', 'GG', '33616996', '0000-00-00', '2039-07-04', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 9202, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3667874, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 2, '69469652134', 'ADEMILSON CIRINO ALVES', 'ADEMILSON CIRINO ALVES', '11815027', '2028-12-06', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 3000, 0, 4466, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3630891, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 2, '96697717149', 'REGIS FAGNER DOS SANTOS', 'REGIS FAGNER DOS SANTOS', '13965174', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 3802, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2554436, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 2, '99370468072', 'OZIEL SOUZA DE MATOS', 'OZIEL SOUZA DE MATOS #', '25348116', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 1, 0, 2520, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3701861, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 2, '75268817272', 'FRANK DOUGLAS BASTOS', 'FRANK DOUGLAS BASTOS', '663593', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2520, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3225506, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, 3, '47905930297', 'SAMUEL DE MELO RAIMUNDO', 'SAMUEL DE MELO RAIMUNDO', '732163', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2520, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 1275607, NULL, 2147483647),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, 1, '87889501153', 'ARLINDO BORDIM FILHO', 'ARLINDO BORDIN FILHO', '1025260.6', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 656, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3755312, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 2, '92328385168', 'LUCIANO MARTINS  BARBOSA', 'LUCIANO MARTINS', '13921908', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2520, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3849168, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 2, NULL, NULL, 3, '02049652178', 'CRISTIANE ARIANE MICHERLE DIEZ PINTO', 'CRISTIANE ARIANE MICHERLE DIEZ PINTO', '001525229', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 1, 3426, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 1724442, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 2, '40917401204', 'EDSON PEREIRA RAMOS', 'EDSON PEREIRA RAMOS', '427675', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 1, 2311, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3406109, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 99, 1, NULL, NULL, 1, '52934306968', 'NELSON APARECIDO BEVILAQUA ', 'NELSON BEVILAQUA', '869064', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2520, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3758462, NULL, 2147483647),
(1, 2, 2, 1, 1, 1, 3, 1, NULL, NULL, 2, '61495840204', 'ENEIAS PAULO ARAUJO LACERDA', 'ENEIAS PAULO ARAUJO LACERDA', '0270785', '2029-02-04', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 10, 0, 8133, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3795402, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 99, 1, 71, 2147483647, 2, '36159514172', 'GERALDO GUIMARAES ASSUNCAO', 'GERALDO GUIMARAES ASSUNCAO', '04400917', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 1, 1, 0, '0000-00-00', 250, 0, 455, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3378248, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, 3, '70988951215', 'LENIO LEMOS BRAGA', 'LENIO LEMOS BRAGA', '736824', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 1, 2520, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2967900, NULL, 2147483647),
(1, 2, 2, 1, 1, 1, 1, 2, NULL, NULL, 2, '91148316191', 'MARILENE FIGUEIREDO DE ALMEIDA', 'MARILENE FIGUEIREDO DE ALMEIDA', '1047130', '2029-01-02', '2038-01-04', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2520, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3108424, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 99, 1, NULL, NULL, 1, '86373730204', 'RENE UILLIAN GONÇALVES DE OLIVEIRA', 'RENê', '796075', '2032-09-06', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 4171, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3107582, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 2, NULL, NULL, 3, '65297083249', 'SUELANIS MARIA SILVA COSTA', 'SUELANIS MARIA SILVA COSTA', '000651128', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 8510, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3116319, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, 2, '49195719172', 'NESVAL DE SOUZA BARRETO JUNIOR', 'NESVAL DE SOUZA BARRETO JUNIOR', '578823', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 7446, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3817348, 0, 2147483647),
(1, 2, 2, 1, 1, 1, 99, 1, NULL, NULL, NULL, '73267880220', 'FABRICIO DE ARAUJO SANTOS', 'null', '3724099', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 4812, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 144808, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 8, 1, NULL, NULL, NULL, '89476557249', 'ROBERTO SILVA FREITAS', 'null', '254556', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 8300, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3855016, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 3, 1, NULL, NULL, 2, '97630055153', 'SIDNEY DA SILVA COSTA JUNIOR', 'SIDNEY DA SILVA COSTA JUNIOR', '1129380', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '2042-11-07', 0, 0, 2520, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3737425, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 2, NULL, 2147483647, 3, '71311866272', 'ANDREIA CABRAL DE BRITO', 'ANDREIA CABRAL DE BRITO', '708660', '0000-00-00', '2039-11-09', '0000-00-00 00:00:00', 0, 1, 0, '2039-11-09', 0, 0, 11969, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3541816, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, NULL, '66771196100', 'REGINALDO CORTEZ DE PAULA', 'REGINALDO CORTEZ DE PAULA', '825127', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2520, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 1816497, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 2, '61499129220', 'RICARDO  ROQUE CORREIA', 'RICARDO ROQUE CORREIA', '588413', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 39, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3955375, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, 2, '51171813104', 'JOSE CARDEAL DE SOUZA', 'JOSE CARDEAL DE SOUZA', '602850', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 5000, 0, 2520, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 506254, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 1, '57276862100', 'CLEBER CESAR SILVA', 'CLEBER', '663696 SSPMS', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '2037-12-08', 0, 0, 2520, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2901696, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 2, '89901223172', 'JOSINALDO ALVES DE CARVALHO', 'JOSINALDO ALVES DE CARVALHO', '10704337', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 200, 0, 2520, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3714605, NULL, 2147483647),
(1, 1, 2, 1, 1, 2, 1, 1, NULL, 2147483647, NULL, '94894361191', 'URIAS LIMA MARQUES', 'null', '139258000', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2520, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3738515, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 1, '71113509287', 'JUCELINO E  FRANCA NUNES', 'null', '709568', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 167, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3917639, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '46164332249', 'FRANCISCO NERI DA SILVA', 'null', '0256771', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2520, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3804036, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 99, 1, NULL, 2147483647, 3, '91894018168', 'MARCIO JOSE CASTELLI', 'MARCIO JOSE CASTELLI', '12063878', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 1, 1, 0, '0000-00-00', 2000, 0, 4106, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2459911, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, 2, '32262175268', 'EMERSON LIMA DE OLIVEIRA', 'EMERSON LIMA DE OLIVEIRA', '189684', '0000-00-00', '2039-01-03', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 5633, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3317276, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 1, '52736237900', 'ADÃO BORGES SOBRINHO', 'ADãO', '38671677', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 12946, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3199366, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 2, '86953869100', 'MARCOS DE OLIVEIRA', 'MARCOS DE OLIVEIRA #', '1171584-7', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 2000, 0, 2520, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3638801, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 2, '81998570134', 'VALDERI SOBRINHO DA SILVA', 'VALDERI SOBRINHO DA SILVA', '2934075', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 7088, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2960575, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 1, '74747770291', 'RONIE RONALDO FELIX DA SILVA', 'RONNY', '784886', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2520, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 1113824, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 2, '41181700191', 'CLOVIS NASCIMENTO DOS SANTOS', 'CLOVES NASCIMENTO DOS SANTOS', '558969', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 14278, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3089342, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 1, '93640994191', 'OANDERSON RODRIGUES  XAVIER', 'OANDERSON', '001288871', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 1, 2520, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3933553, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '01114592145', 'ALZIRO FERREIRA NANTES FILHO', 'ALZIRO FERREIRA NANTES FILHO', '1290204', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 255, 6312, 255, 0, 'senha', 255, 255, 'null', 0, 'null', 'null', 1, 3453205, 0, 2147483647),
(1, 2, 2, 1, 1, 4, 1, 2, NULL, NULL, 1, '35393092172', 'RAQUEL MARQUES ASSUNCAO', 'null', '04899091', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 894, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3767510, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '00977835103', 'FLAVIO SAO PAULO', 'FLAVIO SÃO PAULO', '15966844', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 255, 12, 255, 0, 'senha', 255, 255, 'null', 0, 'null', 'null', 0, 3979414, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '32401304835', 'LUIS FERNANDO OLIVEIRA DOS SANTOS', 'null', '432375314', '2030-02-05', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2520, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 397589, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, NULL, '53148266153', 'JAIR APARECIDO DE SÁ ', 'SAMUCA', '579014', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 5737, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3276, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, NULL, '03382202913', 'ROBERTO CRISTIANO POERSCH', 'null', '69249000', '0000-00-00', '2040-04-04', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 7594, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3715872, NULL, 2147483647),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, NULL, '01880435276', 'LUIZ PAULO DA SILVA MORAES', 'null', '1353657', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 5077, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 1556702, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 8, 1, NULL, NULL, 2, '64561933204', 'AMILTON APARECIDO SALES', 'null', '614957', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 1500, 0, 5966, 255, 0, 'senha', 1, 0, 'null', 0, 'null', 'null', 1, 3682365, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 1, '70077002253', 'ANDRE LUIZ GONCALVES', 'ANDRE LUIZ GONCALVES', '736908', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 750, 0, 2520, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 1752260, NULL, 2147483647),
(1, 2, 1, 1, 1, 2, 1, 1, NULL, NULL, 2, '83832270272', 'LIDIVAN MOURAO DE LIMA', 'LIDIVAN MOURAO DE LIMA', '362174', '0000-00-00', '2038-07-01', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 612, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2959447, NULL, 2147483647),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, 1, '02018067117', 'LAERCIO MOTA BARBOSA', 'LAERCIO', '0001440184', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 7153, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3350127, NULL, 2147483647),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, NULL, '03920106156', 'DANILO SOUZA CARVALHO', 'DANILO SOUZA CARVALHO', '20694520', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 6698, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2779792, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 99, 1, NULL, NULL, NULL, '02412938121', 'CLEYTON DE OLIVEIRA HEIDRICH', 'CLEYTON DE OLIVEIRA HEIDRICH', '17258383', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 1, 0, 0, '0000-00-00', 0, 0, 1224, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2017300, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, NULL, '93686986191', 'RONE  JOSE DE  SOUZA  ', 'RONE', '14239191', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 1635, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2813380, 0, 2147483647),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, NULL, '01493822195', 'NIEDSON ALIFE RAMOS DA SILVA', 'null', 'null', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '2042-12-06', 0, 0, 7120, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3802773, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '01193947154', 'MAIKEL FERNANDO MARTINS TEIXEIRA', 'MAIKEL FERNANDO MARTINS TEIXEIRA', '17022894', '2031-03-01', '2042-05-05', '0000-00-00 00:00:00', 0, 1, 0, '2042-05-05', 0, 0, 9979, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3998365, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '02354317964', 'UATSON FERREIRA DOS SANTOS', 'null', '60015104', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 39, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2673683, 0, 2147483647),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, NULL, '05471771192', 'THALISSON ARAN LIMA', 'null', '001785964', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 1, 12, 1, 0, 'senha', 255, 255, 'null', 0, 'null', 'null', 1, 98551, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, 1, '97159085272', 'MARCUS ARTUR PERES CARDOSO', 'null', '10425462', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 1362, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3931408, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, 1, '00000789216', 'JOSIVAL NICACIO DA SILVA', 'VALDIR', '946268', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2947, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3225261, 0, 2147483647),
(1, 2, 1, 1, 1, 1, NULL, 1, NULL, NULL, 1, '05040562128', 'LUCAS MENDONCA ARAUJO DE SOUZA', 'ABACAXI', '18858163', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 8871, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3762302, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 2, '76206092100', 'CELIMAR LEITE BARBOSA', 'CELIMAR LEITE BARBOSA', '924875', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2520, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 311488, NULL, 2147483647),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, 3, '00775001058', 'ALESSANDRO JOSE SOMMAVILLA', 'ALESSANDRO JOSE SOMMAVILLA', '1096804677', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 1880, NULL, NULL, 'senha', NULL, NULL, 'null', NULL, 'null', 'null', 1, 695121, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, 2, '00040156141', 'ANDERSON ALVES GUIMARAES', 'ANDERSON ALVES GUIMARAES', '00138818', '2031-02-06', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '2039-03-07', 0, 0, 175, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2806766, 0, 2147483647),
(1, 2, 2, 2, 1, 1, 1, 1, NULL, NULL, 1, '06555255641', 'FRANCISCO MARTINS NETO', 'null', '13128255', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 178, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 4432438, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, NULL, '95492070134', 'ROBERTO CARVALHO DA SILVA', 'null', '1144316', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2209, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2036583, NULL, 2147483647),
(1, 2, 2, 1, 1, 1, 1, 2, NULL, NULL, 2, '89256581191', 'MARCIA TRINDADE CORONEL', 'MARCIA TRINDADE CORONEL', '1147366', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2520, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3340895, NULL, 2147483647),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, 1, '00100985181', 'MARCOS DIVINO DO NASCIMENTO', 'MARCOS DIVINO DO NASCIMENTO', '132132296', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2520, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3019330, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 8, 2, NULL, NULL, NULL, '92913385249', 'ANDREIA SOARES FERREIRA', 'null', '795903', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 1, 0, 0, '0000-00-00', 0, 0, 1224, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3495811, 0, 2147483647),
(1, 2, NULL, 1, 1, 2, 1, 1, NULL, NULL, NULL, '82866490100', 'EDILSON LIRA E SILVA', 'LIRA', '11694521', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 5135, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3658499, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 1, '76769526972', 'ISMAEL JOSÉ CELSO', 'null', '31573983', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 1669, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 450064, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 99, 1, NULL, NULL, 2, '71233679287', 'OZIEL DA SILVA', 'OZIEL DA SILVA', '737.289', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 6444, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3888650, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, 1, '00913574112', 'WEILLER GREGORIO CEZAR', 'null', '15439909', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 9615, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 1958501, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '63175711200', 'WAGNER AVELINO MARTINS', 'null', '273962516', '0000-00-00', '2041-07-05', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 8579, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3844067, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 2, '91026830168', 'MARCELO FABIANO RODRIGUES CARNEIRO', 'MARCELO FABIANO RODRIGUES CARNEIRO', '3563209', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2520, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2409078, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, 2, '82902356153', 'SAMUEL RODRIGO MORETTO', 'Samuca', '1.008.607-2 ', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 4719, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2878329, 0, 2147483647),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, NULL, '40840743149', 'ROBERTO RIVELINO DE SOUZA ', 'ROBERTO RIVELINO DE SOUZA ', '529703', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 8645, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3903920, 0, 2147483647),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, 3, '92283551153', 'CLEITON BERGER', 'CLEITON', '1244558', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '2044-03-07', 300, 0, 679, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2934120, 0, 2147483647),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, 2, '00888520166', 'CLAUDEMIR PEREIRA DA SILVA', 'CLAUDEMIR PEREIRA DA SILVA', '16113640', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2520, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2954962, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '65091817204', 'JOSE SILVA DE MORAIS', 'null', '3614889', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 1, 1, 0, '0000-00-00', 0, 0, 2520, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 1829795, 0, 2147483647),
(1, 2, 2, 1, 1, 5, 1, 1, NULL, NULL, NULL, '69531676100', 'CARLOS ALESSANDRO CORREA DOS SANTOS', 'null', '1020122', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 3836, 255, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3517480, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 8, 1, NULL, 2147483647, 2, '51889722120', 'MANOEL JOSE SIQUEIRA', 'Manoel', '686367', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 1000, 0, 6140, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3637222, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 3, '69016372172', 'ADRIANO PETERSON DA SILVA', 'ADRIANO PETERSON DA SILVA', '922433', '2028-09-09', '0000-00-00', '0000-00-00 00:00:00', 1, 0, 0, '0000-00-00', 0, 0, 2191, 0, 0, 'senha', NULL, NULL, 'null', NULL, 'null', 'null', 1, 2636974, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 6, 1, NULL, NULL, 1, '20142870153', 'ACELINO LUIZ ANTUNES MATOSO', 'LUIZ MATOSO', '492447', '2022-07-05', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2520, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3293074, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '01429848170', 'DYEGO DA CUNHA CLEMENTI', 'null', '1709568', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 6041, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2660700, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 2, NULL, NULL, 1, '14719534830', 'IDENIZIA RIBEIRO DOS SANTOS', 'IDENIZIA RIBEIRO DOS SANTOS', '20433463', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '2037-07-02', 0, 0, 205, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3711103, NULL, 2147483647),
(1, 2, 2, 1, 1, 1, 99, 1, NULL, NULL, NULL, '62681818168', 'EVERTON BENEDITO FERREIRA RAMOS', 'null', '09872558', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 1, 2117, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3755516, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, 1, '20877625972', 'ORLANDO MENEGHETTI', 'ORLANDO', '1514368', '0000-00-00', '2040-01-04', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 39, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3653395, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '01636688179', 'CELSO JOAQUIM CABREIRA RODRIGUES', 'null', '385065437', '2032-05-06', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 11722, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3419263, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, 2, '01045775177', 'MATEUS ALVES DE ALBUQUERQUE', 'MATEUS ALVES DE ALBUQUERQUE', '11586907', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '2038-03-03', 0, 0, 8935, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 1963153, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, NULL, NULL, '03883527106', 'RICK ASERI SÁ DA SILVA', 'null', '001774752', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 6312, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3802861, NULL, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, 2, '58025197115', 'ROBERTO PROENCE', 'ROBERTO PROENCE', '732271', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 1000, 0, 5559, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3354867, 0, 2147483647),
(1, 2, 2, 1, 1, 1, 1, 2, NULL, NULL, NULL, '02948739101', 'JULIANA LUIZA GUIMARAES BACKES ', 'Juliana', '001758782', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 12617, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3759498, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 7, 1, NULL, NULL, NULL, '90110510178', 'HEBEER  WINCK ', 'null', '12605000', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 7712, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3344957, NULL, 2147483647),
(1, 2, 2, 2, 1, 1, 1, 1, NULL, NULL, 3, '96504994234', 'RAPHAEL DOS SANTOS PEREIRA - FALECIDO', 'RAPHAEL DOS SANTOS PEREIRA', '951673', '2032-11-02', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 756, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3130958, 0, 2147483647),
(1, 2, 2, 1, 1, 1, 1, 1, NULL, NULL, NULL, '02738616119', 'FRANCK LUIZ CAVALCANTE', 'FRANCK LUIZ CAVALCANTE', '001567375', '2033-12-05', '0000-00-00', '0000-00-00 00:00:00', 1, 0, 0, '0000-00-00', 0, 0, 1224, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3414588, 0, 2147483647),
(1, 2, 2, 1, 1, 2, 1, 1, NULL, 2147483647, NULL, '07395363973', 'RAFAEL ANDREW FAVARO', 'null', '102308158', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 5950, 255, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2826369, 0, 2147483647),
(1, 2, 2, 1, 2, 2, 1, 1, NULL, 2147483647, 2, '40859363287', 'MARCIO ALVES DOS SANTOS', 'MARCIO ALVES DOS SANTOS', '459512', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 5311, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 610292, 0, 2147483647),
(1, 2, 2, 1, 2, 2, 1, 1, NULL, NULL, NULL, '00769629202', 'Reginaldo José Lopes', 'Reginaldo', '1105237', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 5558, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3621086, NULL, 2147483647),
(1, 2, 2, 1, 2, 4, 99, 1, 71, NULL, 2, '60424982153', 'ADILZA ANTONIA DOS SANTOS', 'ADILZA ANTONIA DOS SANTOS /CARTAO GAZIN', '09232826', '0000-00-00', '2038-07-05', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 3754, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3535841, 0, 2147483647),
(1, 2, 2, 1, 2, 2, 8, 1, NULL, 2147483647, 2, '46865322134', 'FERNANDO RICARDO MORETTO', 'FERNANDO', '10086048', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 1, 1, 0, '0000-00-00', 0, 0, 752, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 398508, 0, 2147483647),
(1, 2, 2, 1, 2, 2, 8, 1, NULL, 2147483647, 2, '73705578120', 'WESLEY HAINZENREDER SILVA', 'Wesley O Melhor do Brasil', '1887750-8', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 1, 0, 2520, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3674723, NULL, 2147483647),
(1, 2, 2, 1, 2, 2, 1, 1, NULL, 2147483647, 3, '26385736806', 'GILMAR DE FREITAS', 'GILMAR DE FREITAS', '575.077', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 1, 0, 0, '0000-00-00', 1800, 0, 1224, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2931645, 0, 2147483647),
(1, 2, 2, 1, 2, 2, 1, 1, NULL, 2147483647, 2, '83469060215', 'ZAQUEU ALEGARIO DE SOUZA', 'ZAQUEU ALEGARIO DE SOUZA', '2001312-4', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 4526, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3176717, 0, 2147483647),
(1, 2, 2, 1, 2, 2, 1, 2, NULL, NULL, NULL, '61286508215', 'NORMA LUCIA UCHOA DE OLIVEIRA', 'NORMA', '3175901.0', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 1, 99000, NULL, NULL, 'senha', NULL, NULL, 'null', 15000, 'null', 'null', NULL, NULL, NULL, 2147483647),
(1, 2, 2, 1, 2, 4, 1, 1, NULL, NULL, 2, '02986082947', 'CLEZIO FERNANDES GIOMO', 'CLEZIO FERNANDES GIOMO', '7.637.895-9', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '2042-02-04', 1700, 0, 13041, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3542228, 0, 2147483647),
(1, 2, 2, 1, 2, 2, 1, 1, NULL, NULL, 2, '60834820110', 'GILMAR DE CASTRO', 'ROSILENE CAMPOS PANHAN', '632979', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2520, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2418665, NULL, 2147483647),
(1, 2, 2, 1, 2, 2, 1, 1, NULL, 2147483647, 2, '40662748115', 'JOAO DE DEUS OLIVEIRA NUNES', 'JOAO DE DEUS OLIVEIRA NUNES', '625198 SSP/MT', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2520, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 1325130, NULL, 2147483647),
(1, 2, 2, 1, 2, 2, 1, 1, NULL, NULL, 2, '69594139234', 'ADEMAR ALENCAR JARDIM JUNIOR', 'ADEMAR ALENCAR JARDIM JUNIOR', '268093', '2030-08-01', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 7563, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3178421, NULL, 2147483647),
(1, 2, 2, 1, 2, 1, 1, 1, NULL, NULL, NULL, '76191664915', 'HILARIO RISSARDI', 'null', '42182923', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 464, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2804440, NULL, 2147483647),
(1, 2, 2, 1, 2, 2, 1, 1, 71, 2147483647, 2, '83554726168', 'RONEY EMERSON DA SILVA MARTINS', 'RONEY EMERSON DA SILVA MARTINS', '2167100', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 450, 0, 2520, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3675915, NULL, 2147483647),
(1, 2, 2, 1, 2, 2, 1, 1, NULL, 2147483647, 2, '77789172115', 'LUIZ CARLOS GONCALVES LAHR', 'LUIZ CARLOS GONCALVES LAR', '10490078', '0000-00-00', '2037-05-05', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 1, 0, 4393, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3638709, 0, 2147483647),
(1, 2, 2, 1, 2, 2, 1, 1, NULL, 2147483647, NULL, '02196114243', 'FERNANDO TAIGUARA SANTOS PINHEIRO', 'TAIGUARA', '7075364', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 1, 99000, NULL, NULL, 'senha', NULL, NULL, 'null', 1500, 'null', 'null', NULL, NULL, NULL, 2147483647),
(1, 2, 2, 1, 2, 2, 1, 1, NULL, 2147483647, 2, '51890739120', 'IVALDO GONCALVES NORONHA', 'IVALDO GONCALVES NORONHA', '000609267', '2027-08-04', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 655, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2881560, 0, 2147483647),
(1, 2, 2, 1, 2, 2, 9, 1, 73, 2147483647, 2, '72684410968', 'LUIS FERNANDO CIONI', 'LUIS FERNANDO SIONE', '23830581', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 2000, 0, 8300, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3906132, 0, 2147483647),
(1, 2, 2, 1, 2, 2, 1, 1, NULL, 2147483647, 2, '11801378843', 'ROSMEY BATISTA DA GRACA', 'null', '20470786', '0000-00-00', '2038-09-07', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 1, 0, 1364, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3954071, 0, 2147483647),
(1, 2, 2, 1, 2, 2, 1, 1, NULL, 2147483647, NULL, '03789374997', 'SAMUEL RODRIGUES DE MELO', 'SAMUEL', '76215910', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 8198, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 4166281, NULL, 2147483647),
(1, 2, 2, 1, 2, 2, 3, 1, NULL, NULL, NULL, '12448381798', 'JAMERSON CRISTIAN ALBARADO DE LIMA', 'null', '211107834', '0000-00-00', '2041-08-05', '0000-00-00 00:00:00', 1, 1, 0, '0000-00-00', 0, 0, 6673, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3626233, NULL, 2147483647),
(1, 2, 1, 1, 2, 2, 1, 1, NULL, NULL, NULL, '42412498253', 'LUIZ CELIO NETO BEZERRA', 'null', '2851759', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 5109, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3712488, NULL, 2147483647),
(1, 2, 2, 1, 2, 1, 1, 1, NULL, NULL, NULL, '00650799224', 'LUCIMARIO JOSE GALDINO', 'null', '6276365', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 7369, 255, 0, 'senha', 255, 255, 'null', 0, 'null', 'null', 1, 3678971, NULL, 2147483647),
(1, 2, 2, 1, 2, 2, 1, 1, NULL, NULL, NULL, '02779214147', 'CLEBSON DE ASSIS ZAMONER ', 'null', '19846355', '0000-00-00', '2040-04-06', '0000-00-00 00:00:00', 1, 1, 0, '0000-00-00', 0, 0, 462, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3185447, NULL, 2147483647),
(1, 2, 2, 1, 2, 2, 1, 1, NULL, NULL, 2, '88746488120', 'ITALO SOUZA TAMACHIRO', 'TAMACHIRO', '1099271', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 1, 0, 0, '0000-00-00', 0, 0, 1224, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3857945, 0, 2147483647),
(1, 2, 2, 1, 2, 2, 1, 1, NULL, 2147483647, 2, '00300112130', 'LUIZ CARLOS ROCHA DOS SANTOS', 'LUIZ CARLOS ROCHA DOS SANTOS', '14665867', '0000-00-00', '2039-03-02', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 5615, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3172269, 0, 2147483647),
(1, 2, 2, 1, 2, 2, 99, 1, NULL, NULL, NULL, '86431692934', 'SYLVIO JOSE PEREIRA TERCEIRO', 'null', '5461144', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 3979, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2990819, NULL, 2147483647),
(1, 2, 2, 1, 2, 1, 1, 2, NULL, NULL, 1, '91938988272', 'TATIMARA FERREIRA BRAGA', 'TATIMARA FERREIRA BRAGA', '7763568', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 178, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3090070, 0, 2147483647),
(1, 2, 2, 1, 2, 2, 1, 1, NULL, NULL, 3, '75143364272', 'ADMILSON DA SILVEIRA', 'ADMILSON DA SILVEIRA', '783700', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 500, 0, 140349, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3628680, 0, 2147483647),
(1, 2, 2, 1, 2, 2, 1, 1, NULL, NULL, 3, '83421025215', 'CLAYTON ZAGO POSSO', 'CLAYTON ZAGO POSSO', '927061', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 140300, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3955390, 0, 2147483647),
(1, 2, 2, 1, 2, 1, 1, 1, NULL, NULL, 2, '66547709272', 'ROGERIO FRANCISCO DOS SANTOS', 'ROGERIO', '681770', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 6416, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3717462, 0, 2147483647),
(1, 2, 2, 1, 2, 2, 1, 1, NULL, NULL, 2, '71739564987', 'ADEMILSON BUZETTI', 'ADEMILSON BUZETTI', '5994570-0', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 1, 0, 0, '0000-00-00', 0, 0, 1224, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3827786, 0, 2147483647),
(1, 2, 2, 1, 2, 2, 1, 1, 71, NULL, 2, '04500844937', 'LUCIANO KOCHAN', 'LUCIANO KOCHAN', '4.512.054', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 1, 1, 0, '0000-00-00', 570, 0, 487, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3433403, NULL, 2147483647),
(1, 2, 2, 1, 2, 1, 1, 2, NULL, NULL, 1, '03993244109', 'MAYDA SULIMACTA LIMA PEREIRA', 'null', '22191300', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 2910, 255, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2929691, 0, 2147483647),
(1, 2, 2, 1, 2, 2, 1, 1, NULL, 2147483647, 2, '98227610153', 'EDER QUEIROZ CASPERS', 'EDER QUEIROZ CASPERS', '14346214', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 5000, 0, 1673, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3758481, 0, 2147483647),
(1, 2, 2, 1, 2, 2, 1, 1, NULL, 2147483647, 1, '90220315191', 'MARCELO TEODORO DE ALMEIDA', 'MARCELO', '1133847-4', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 11498, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2741187, 0, 2147483647),
(1, 2, 2, 1, 2, 2, 9, 1, NULL, 2147483647, 1, '56832672187', 'ADELVANIO GOMES GUIMARAES', 'ADELVANIO GOMES GUIMARAES', '12314242', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 1681, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3691163, 0, 2147483647),
(1, 2, 2, 1, 2, 2, 1, 1, NULL, 2147483647, 2, '27790718851', 'FERNANDO DOS SANTOS MARCHIORI', 'FERNANDO DOS SANTOS MARCHIORI', '29956541-5', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 2000, 0, 2520, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 1711195, NULL, 2147483647),
(1, 2, 2, 1, 2, 2, 1, 1, NULL, NULL, NULL, '04216450164', 'WILIAN DA SILVA ARAUJO', 'WILIAN DA SILVA ARAUJO', '23155299', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 4760, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 4004953, 0, 2147483647),
(1, 2, 2, 1, 2, 2, 1, 1, 57, 2147483647, 2, '77251725991', 'EDNEI FERNANDES DA CUNHA', 'EDNEI FERNANDES DA CUNHA', '49244195', '0000-00-00', '2038-03-05', '0000-00-00 00:00:00', 1, 1, 0, '2038-03-05', 50, 0, 1091, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3619321, NULL, 2147483647),
(1, 2, 2, 1, 2, 2, 1, 1, NULL, 2147483647, 3, '01319330193', 'Jorge Rodrigues da Silva', 'null', '03961716173', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 4009, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 158909, 0, 2147483647),
(1, 2, 2, 1, 2, 1, 1, 1, NULL, NULL, NULL, '01789011132', 'RAFAEL PETINE LEMES', 'RAFAEL PETINE', '16580478', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 1, 0, 0, '0000-00-00', 0, 0, 4814, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 2911418, NULL, 2147483647),
(1, 2, 2, 1, 2, 1, 1, 2, NULL, NULL, 3, '94994781249', 'KELY CRISTINA CRISTO RODRIGUES', 'KELY CRISTINA CRISTO RODRIGUES', '1017966', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 8043, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3538300, 0, 2147483647),
(1, 2, 2, 1, 3, 1, 1, 2, NULL, NULL, NULL, '03217964110', 'Maria Eunice Inacia da Silva', 'Maria', '1703269', '2033-09-01', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 8519, 255, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 1276278, 0, 2147483647);
INSERT INTO `pessoa` (`idtipopessoa`, `idtipocontribuinte`, `idtipocadastro`, `idsituacaopessoa`, `idtiporesidencia`, `idtipoestadocivil`, `idtipoocupacao`, `idtiposexo`, `idgrupo`, `idconjuge`, `idtipolimite`, `cnpj_cpf`, `nome`, `nomefantasia`, `cce_rg`, `datacriacao`, `datacadastro`, `dataalteracao`, `fornecedor`, `cliente`, `cpfgerado`, `ultimaconsultaspc`, `valorlimitecredito`, `gerarboleto`, `idusuario`, `atualizarcadastro`, `idnaturezaretencaofonte`, `chavemd5`, `aposentado`, `pensionista`, `inscricaosuframa`, `limitecreditoadicional`, `inscricaomunicipal`, `apelidoftp`, `aceite`, `identificador`, `emancipado`, `idcnpj_cpf`) VALUES
(1, 2, 2, 1, 3, 2, 1, 1, NULL, 2147483647, 1, '01413712266', 'RENATO FILHO DA SILVA BOTELHO', 'RENATO FILHO DA SILVA BOTELHO', '21302162', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 11950, 255, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3754855, 0, 2147483647),
(1, 2, 2, 1, 3, 2, 1, 1, NULL, 2147483647, 1, '52060365287', 'SOLIMAR SANTOS DE MORAES ', 'null', '4367683', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 0, 4802, 1, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3454182, 0, 2147483647),
(1, 2, 2, 1, 4, 2, 99, 1, NULL, NULL, 3, '00737108908', 'ANDRE FERNANDO DE ARAUJO', 'ANDRE FERNANDO DE ARAUJO', '64611798', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00', 0, 1, 2520, 0, 0, 'senha', 0, 0, 'null', 0, 'null', 'null', 1, 3658806, NULL, 2147483647);
--
-- Banco de dados: `redesocialgazin`
--
CREATE DATABASE IF NOT EXISTS `redesocialgazin` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `redesocialgazin`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario_social`
--

CREATE TABLE `funcionario_social` (
  `cnpj_cpf` varchar(11) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `ddd` int(2) NOT NULL,
  `telefone` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `validafuncionario`
--

CREATE TABLE `validafuncionario` (
  `cnpj_cpf` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `funcionario_social`
--
ALTER TABLE `funcionario_social`
  ADD PRIMARY KEY (`cnpj_cpf`);

--
-- Índices para tabela `validafuncionario`
--
ALTER TABLE `validafuncionario`
  ADD PRIMARY KEY (`cnpj_cpf`);
--
-- Banco de dados: `sistema_educacional`
--
CREATE DATABASE IF NOT EXISTS `sistema_educacional` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sistema_educacional`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `alunos`
--

CREATE TABLE `alunos` (
  `email` varchar(100) NOT NULL,
  `endereco` varchar(150) NOT NULL,
  `ra` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `alunos`
--

INSERT INTO `alunos` (`email`, `endereco`, `ra`, `id`, `nome`) VALUES
('lucassanches12398@hotmail.com', 'Rua Benedito F. de Andrade, 82', 123, 3, 'LUCAS SANCHES DOS SANTOS');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `alunos`
--
ALTER TABLE `alunos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Banco de dados: `submarino`
--
CREATE DATABASE IF NOT EXISTS `submarino` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `submarino`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `categoria` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`id`, `categoria`) VALUES
(1, 'Telefonia'),
(2, 'Eletrônicos'),
(3, 'Games'),
(4, 'Móveis');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`id`, `nome`, `email`, `senha`) VALUES
(1, 'William Gates', 'bill@gates.com', '$2y$10$hHcOGKH8HE42tbqqCi5mPO2aeSlbziukTTv1.dSYLtcR6ZpHRhg5u');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `id` int(11) NOT NULL,
  `produto` varchar(200) NOT NULL,
  `descricao` text NOT NULL,
  `valor` double NOT NULL,
  `promo` double DEFAULT NULL,
  `imagem` varchar(50) NOT NULL,
  `ativo` char(1) DEFAULT NULL,
  `categoria_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`id`, `produto`, `descricao`, `valor`, `promo`, `imagem`, `ativo`, `categoria_id`) VALUES
(1, 'Smartphone Samsung Galaxy A01 Core 32GB Azul - Quad-Core 2GB RAM Tela 5,3” Câm. 8MP + Selfie 5MP', 'Smartphone Samsung Galaxy A01 Core 32GB Azul - Quad-Core 2GB RAM Tela 5,3” Câm. 8MP + Selfie 5MP\r\nTenha uma solução para o seu dia a dia sem deixar nada para trás com o Galaxy A01 Core da Samsung. Realize fotos especiais e únicas com a câmera de 8MP na traseira. Divirta-se e compartilhe seus momentos especiais ao fotografar com a câmera de selfie de 5MP. A tela de 5,3\" e resolução HD+ deste smartphone trazem uma experiência de visualização imersiva, seja ao ver seus vídeos, fotos ou simplesmente acessar as redes sociais. Oferece um processador Quad-Core e 2GB de memória RAM para que você tenha tudo ao alcance dos dedos de maneira mais fácil. O armazenamento interno de 32GB entrega muita conveniência para salvar seus documentos de maneira segura. E se mesmo assim achar pouco, você pode usar um cartão MicroSD de até 512GB para aumentar essa capacidade. Fique sempre conectado com a tecnologia 4G em um aparelho dual chip! A cor azul destaca o design moderno do produto e combina perfeitamente com seu dia a dia.', 999.9, 720.98, '8f73927088c071e233ff7548f2ce3257.jpg', 'S', 1),
(2, 'Smartphone Samsung Galaxy A11 64GB Azul 4G - Octa-Core 3GB RAM 6,4” Câm. Tripla + Selfie 8MP', 'Tenha uma solução para o seu dia a dia sem deixar nada para trás com o Galaxy A11 da Samsung. Realize fotos especiais e únicas com a câmera tripla na traseira, que é repleta de recursos. Divirta-se e compartilhe seus momentos especiais ao fotografar com a câmera de selfie de 8MP. A tela de 6,4\" deste smartphone traz uma experiência de visualização imersiva, seja ao ver seus vídeos, fotos ou simplesmente acessar as redes sociais. Oferece um processador Octa-Core e 3GB de memória RAM para que você tenha tudo ao alcance dos dedos de maneira mais fácil. O armazenamento interno de 64GB entrega muita conveniência para salvar seus documentos, músicas ou vídeos! Permaneça sempre conectado com a tecnologia 4G em um aparelho dual chip! Conte com a segurança de um leitor de impressão digital neste smartphone. Graças a bateria de 4000mAh o aparelho consegue te acompanhar o dia todinho, além de contar com carregamento rápido de 15W. A cor azul destaca o design moderno do produto e combina perfeitamente com seu dia a dia.', 1699.9, 1040.67, '7b80d7b462794b1fca12f32a78e29369.jpg', 'S', 1),
(3, 'Smartphone xiaomi redmi 9a tela 6,53” 2gb/32gb 4g, azul', 'A série Redmi acaba de ganhar mais um aliado; conheça o Redmi 9A o smartphone que oferece mais tela, mais bateria e um design 3D único. São 6.53” de tela HD+ e Dot Drop Display para uma experiência imersiva em jogos e vídeos, com a proteção TÜV Rheinland contra luz azul. Jogue por horas seguidas, assista filmes, séries e garanta a saúde dos seus olhos. Personalize o brilho, contraste e cores da sua tela através do Modo Leitura e tenha uma experiência mais confortável. Se preferir mais praticidade, ative os Gestos em Tela Cheia e controle os comandos do seu smartphone com os movimentos do seu dedo. O Redmi 9A possui IA otimizada na câmera traseira, que captura rapidamente fotos nítidas e claras em uma variedade de cenários diferentes. A câmera principal de 13MP com abertura de foco e f/2.2 - AF, oferece flash único e efeitos caleidoscópio que mudam a dinâmica dos seus vídeos, deixando tudo mais divertido e criativo. A câmera frontal de 5MP com abertura de foco de f/2.2, registra selfies incríveis de forma prática. O desempenho sólido e estável do Redmi 9A fica por conta do processador MediaTek Helio G25 octa-core de até 2.0Ghz, com arquitetura de 12nm, que é otimizada para jogos. Ganhe fluidez e qualidade para todas as formas de uso, sem qualquer interrupção. A bateria de 5000mAh de alta capacidade, dá o suporte que você precisa para um dia inteiro de uso. O processo de desenvolvimento do Redmi 9A, aprimorou o tempo de vida útil da bateria para oferecer carregamentos com muita qualidade e eficácia. Ouça músicas com seu fone favorito, basta conectá-lo à entrada P2 e pronto. O Redmi 9A oferece tecnologia Dual 4G e Dual SIM com slot para MicroSD, expansível a até 512GB. ESPECIFICAÇÕES Tipo de Sistema Operacional: Android (MIUI). Sistema operacional devidamente personalizado e otimizado pela Xiaomi com funcionalidades exclusivasAndroid (MIUI). Sistema operacional devidamente personalizado e otimizado pela Xiaomi com funcionalidades exclusivas Versão: Android 10 Processador: MediaTek® Helio G25 Arquitetura da CPU: 8 x A53 2.0GHz Tipo de Processador: Octa Core Velocidade do Processador: 2.0 GHz GPU Gráfica: PowerVR GE8320, 650MHz Tamanho da Tela: 6,53\" Tecnologia: LCD IPS Resolução: HD+ (1600x720) Proporção: 20:9 Densidade de Pixels: 269ppi Recursos da Tela: - Alto contraste: 1500:1 - Gama de cores: 70.8% - Brilho: 400nit (typ) - Modo leitura - Certificação TÜV Rheinland com baixa luz azul Memória RAM: 2GB Memória Interna: 32GB Memória Expansível: Até 512GB Resolução da Câmera Frontal: 5MP, 1.12μm, abertura f/2.2, lentes 3P, com campo de visão de 83 graus. Resolução da Câmera Traseira: 13MP, 1.0μm, abertura f/2.2, lentes 5P, foco automático (AF), com campo de visão de 74 graus. Tipo de Foco(Traseiro): PDAF Zoom: 10 x Zoom digital Resolução em Gravação de Vídeos(Frontal): 1080p e 720p em 30fps Resolução em Gravação de Vídeos(Traseira): 1080p e 720p em 30fps Recursos da Camera Frontal: - Reconhecimento facial - HDR - Modo retrato - Modo embelezamento - Temporizador - Selfies automáticas acenando a palma da mão Recursos da Câmera Traseira: - Modo Pro - Modo caleidoscópio - Modo embelezamento - Modo retrato com ajuste de desfoque - Temporizador - Auto HDR Sensores: Acelerômetro, Proximidade, Sensor de Luz Ambiente e Motor de Vibração. Números de SIM: Dual Chip Conexões: 4G / 3G / 2G Conector de Entrada: Micro USB Localização: GPS / A-GPS / GLONASS / Beidou Conector de Fone de Ouvido: P2 3.5mm Versão do Bluetooth: Bluetooth 5.0 Protocolos de Wi-fi: IEEE 802.11 b/g/n Suporte Wi-Fi: 2.4GHz Suporte a OTG: Sim Bateria: 5000mAh Potência Máxima: 10W Conteúdo da embalagem: 1x Smartphone Redmi 9A, 1x cabo USB, 1x Carregador padrão BR , 1x Ferramenta Ejetora, 1x Manual e 1x Termo de Garantia.', 1399.9, NULL, '501c8174156cd7e5b58425e5ff19dceb.jpg', 'S', 1),
(4, 'Fritadeira Elétrica sem Óleo/Air Fryer Nell Smart - Preta 2,4L com Timer', 'A fritadeira elétrica Nell Smart é um eletroportátil que não pode faltar na sua cozinha. O produto proporciona uma alimentação mais saudável, pois não utiliza óleo/Air Fryer em seu processo de cozimento. A fritadeira na cor preta é compacta e produzida em PP, ocupando menos espaço, possui luz indicadora de funcionamento, controle de temperatura, cesta removível antiaderente, capacidade total de 3,4L e cesto com capacidade de 2,4L. Sua alça fria garante maior segurança ao manusear a fritadeira e além disso, ela possui timer de 30 minutos sonoro e com desligamento automático. Agora é só preparar batatinha frita, coxinha, bolinha de queijo e pastel na sua fritadeira elétrica!', 289.9, NULL, '1fad2079a4468ecafb1ad7e0afec2c74.jpg', 'S', 2),
(5, 'Smart TV HD LED 32” LG 32LM625BPSB Wi-Fi Bluetooth - HDR Inteligência Artificial 3 HDMI 2 USB', 'A Smart TV 32LM625BPSB da LG veio para deixar seu momento de lazer e descontração ainda melhores. Sua resolução HD em uma linda tela LED de 32\" deixam os filmes e as séries ainda mais incríveis para você assistir com sua família e seus amigos. Ela vem com sistema operacional WebOS 4.5, além de wi-fi e bluetooth, 03 Entradas HDMI, 02 Entradas USB, 01 Entrada RF para TV aberta/TV a Cabo, 01 Entrada AV/vídeo componente, 01 Entrada LAN RJ45, tudo isso para uma melhor imersão no mundo do entretenimento com muitas opção de programação. A função Clear Voice destaca a voz do ruído de fundo, entregando mais claridade sonora. O Virtual Surround Plus entrega mais imersão sonora e máximo envolvimento para todos os seus conteúdos. O Upscaler HD permite que você curta todos os seus conteúdos, mesmo os de baixa resolução, com a máxima qualidade do seu TV. Todos os televisores LG já vem com conversor digital integrado, pra você curtir seus conteúdos com altíssima qualidade. Ao captar e combinar imagens em diferentes exposições (maior e menor exposição), o conteúdo em HDR entrega uma qualidade de brilho e contraste superior, com uma riqueza de detalhes nunca vista antes. Com a Inteligência Artificial da LG e seu reconhecimento de voz, você consegue controlar sua TV sem complicações, procurar por qualquer informação ou conteúdo que quiser, basta apenas falar através do controle remoto Smart Magic (VENDIDO SEPARADAMENTE). Essa excelente inovação entrega ainda mais conveniência para seu lazer!', 1399.9, 1281.9, '2a8b80f68b8ab09179994e4533a0d234.jpg', 'S', 2),
(6, 'Smart TV Crystal UHD 4K LED 50” Samsung - 50TU8000 Wi-Fi Bluetooth HDR 3 HDMI 2 USB', 'Tenha uma tela de cinema no conforto da sua sala com a Smart TV, modelo 50TU8000, da Samsung. Ela traz resolução 4K, que oferece uma experiência única com imagens mais realistas para você não perder nenhum detalhe, além de frequência 60Hz e tecnologia Crystal UHD. Com o HDR 10+ ela oferece cores mais apuradas e vivas e design superior com cabos escondidos e a tela mais fina. Com a tecnologia da tela LED, com 50\", ela permite uma verdadeira imersão, independente da onde se olhe e a borda ultrafina com o design sofisticado com 3 bordas proporciona elegância ao ambiente. Suas 3 entradas HDMI, 2 de USB, Wi-Fi e Bluetooth possibilitam entretenimento ilimitados por horas e horas. Ela possui, ainda, múltiplos assistentes pessoais com compatibilidade com Alexia e Bixby e controle remoto único para controlar diversos aparelhos conectados à TV. Ela também é perfeita para você que gosta de jogar, pois como o modo game, oferece o melhor tempo de resposta possível!', 2699.9, NULL, '42cdf08f2cf47621e3c745ce17e3e69b.jpg', 'S', 2),
(7, 'Google Nest Mini - Cinza', 'A Google apresenta um novo produto que deve fazer com que você converse mais com ele do que com as outras pessoas da sua casa. Trata-se do Google Nest Mini, um aparelho que lembra uma caixa de som, mas é muito mais completa, tecnológica e surpreendente do que isso. O Google Nest Mini, como o próprio nome sugere, é destinado para ficar parado em um cômodo da sua residência. Ele é capaz de interagir via comandos de voz com você e, a partir de uma evoluída integração com plataformas, conectar-se com outros serviços e eletrônicos. O design do aparelho é moderno e elegante, mas discreto e pequeno o suficiente para que não se destaque muito na decoração das casas. Assim, você pode falar com o assistente enquanto cozinha, joga, lê e por aí vai. As tarefas mais cotidianas possíveis ficarão fáceis, já que o aparelho suportará ações como agenda, dispositivos da Internet das Coisas.', 499, NULL, '889d4c9ce772e4fbbef6acaae51c33de.jpg', 'S', 2),
(8, 'Projetor Led Espelhamento Celular Wifi T5+ Multi Interfaces Branco - Yieqin', 'Projetor Led Espelhamento Celular Wifi T5+ Multi Interfaces Branco', 899.9, NULL, 'd4a3957fb33290151ac7262b4fdb5c66.jpg', 'S', 1),
(9, 'Console PlayStation 5 PS5 - Sony', 'Jogar Não Tem Limites. O slogan do novo PlayStation 5 diz tudo sobre o console. Desfrute do carregamento extremamente rápido com o SSD de altíssima velocidade, uma imersão mais profunda com suporte a feedback tátil, gatilhos adaptáveis e áudio 3D, além de uma geração inédita de jogos incríveis para PlayStation. Domine o poder de uma CPU e GPU personalizadas e o SSD com E/S integradasque redefinem as regras do que o console PlayStation pode fazer. Maximize suas sessões de jogo com tempos de carregamento praticamente instantâneos para jogos do PS5 instalados. A integração personalizada dos sistemas de console PS5 permite que os criadores extraiam dados do SSD tão rápido que eles podem desenvolver jogos de formas que antes seriam impossíveis. Mergulhe em mundos com um nível inédito de realismo enquanto os raios de luz são simulados individualmente, criando sombras e reflexos realistas em jogos compatíveis do PS5. Desfrute de fluidez e taxa de quadros de até 120qps em jogos compatíveis, com suporte a saída de 120Hz em telas 4K. Com uma TV HDR, os jogos compatíveis do PS5 exibem uma variedade de cores inacreditavelmente vibrante e realista. Os consoles PS5 oferecem suporte a saída 8K, para que você possa jogar na sua tela com resolução de 4320p em TV\'s que sejam compatíveis com a tecnologia.', 4999.99, NULL, '75ede8c14ef0d8c50a5b120067c5cb91.jpg', 'S', 3),
(10, 'PlayStation 4 Mega Pack V17 1TB 1 Controle Sony - com 3 Jogos 3 Meses PS Plus', 'Jogar videogame é muito bom, ainda mais para quem é fã do PlayStation 4! Tem disco rígido de 1TB para tudo o que há de melhor em jogos, músicas e muito mais! Acompanha 01 controle DualShock 4 para proporcionar uma precisão incomparável em cada movimento, além de compartilhar seus melhores momentos. O voucher de 3 meses da PlayStation Plus permite que você adicione competidores à sua lista de amigos para participar de batalhas épicas no modo multijogador. A Sony entrega o melhor pacote de entretenimento e com jogos exclusivos, tudo isso em apenas um único produto! O console acompanha os jogos Marvel\'s Spider-Man, Dreams e Infamous Second Son .', 2990, NULL, '3167e0f5bee8db73211927deb9dbb35b.jpg', 'S', 3),
(11, 'Game Retro Sonic The Hedgehog 3 Tiger Eletronics - Hasbro', 'Que tal voltar no tempo? Fãs antigos ou novos entusiastas de joguinhos eletrônicos vintage podem se divertir com este videogame retrô LCD Tiger Electronics Sonic the Hedgehog, inspirado no original dos anos 90. É uma aventura para derrotar o Dr. Robotnik em todas as 6 fases. O design e a tecnologia refletem o joguinho original portátil.\r\nMuita nostalgia e diversão estilo anos 90 com este joguinho eletrônico estilo vintage Tiger Electronics Sonic the Hedgehog 3 portátil. Para aquelas pessoas que se divertiram com joguinhos eletrônicos quando criança, trazemos de volta os jogos eletrônicos LCD, este inspirado em Sonic the Hedgehog 3 dos anos 90. PERSONAGENS DE SONIC THE HEDGEHOG: As crianças podem jogar como Sonic the Hedgehog e seu amigo Tails para lutar contra o Dr. Robotnik na Ilha Flutuante Idade: acima de 8 anos Para 1 jogador Requer 2 baterias AA LR6 de 1,5 V. (Não incluídas.) ATENÇÃO: Este brinquedo emite luzes que podem provocar epilepsia em pessoas propensas. Contém LCD videogame e instruções.', 169.9, NULL, '07a9e8142d24a068192e5a6c5028b068.jpg', 'S', 3),
(12, 'XBOX One X', 'Xbox One X O console mais poderoso do mundo. Experimente jogos imersivos reais em 4K, 40% mais potente que qualquer outro console. Os jogos ficam melhores no Xbox One X. Processamento mais rápido, jogabilidade mais suave. O CPU AMD personalizado 8 core possui velocidade de 2,3 GHz proporcionando uma inteligência artificial aprimorada, detalhes do mundo real e interações mais suaves para seu jogo. OS 12 GB GDDR5 de memória gráfica adicionam velocidade e potência no desempenho do jogo, possibilitando mundos maiores, horizontes mais amplos e tempos de carregamento mais rápidos. Detalhes realista, uma GPU Teraflop 6 possibilita ambientes em 4K e um realismo ainda maior dos personagens, com mais detalhes e animações mais suaves. Tempos de carregamento mais rápidos, os gráficos de jogos são mais rápidos e mais detalhados com largura de banda de memória de 326 GB/seg, para manter a fluidez do seu jogo. Características Modelo Xbox One X Marca Microsoft Memória e Armazenamento 8GB Memória flash 1TB Armazenamento interno HDD 12GB GDDR5 a 326 GB/s Recursos de Vídeo 4K Unidade de disco ótico UHD Blu ray HDMI 2.0b (externo), 2160p 60Hz, AMD FreeSync HDR10 Suporte Componentes de áudio DTS 5.1 DOLBY Digital 5.1, TrueHD com Atmos PCM 2.0, 5.1, 7.1 Recursos sem fio Wi-Fi Dual band wireless com Wi Fi Direct para redes domésticas IR Blaster Envio e recebimento de sinais Conectividade Porta de alimentação portas HDMI (1 HDMI 1.4b interno, HDMI 2.0b externo) 3 portas USB 3.0 IR externo S/PDIF Porta Ethernet Garantia 12 meses de garantia conforme certificado de garantia junto a nota fiscal Informações de Acordo com o Fabricante', 3890, NULL, 'c178c01e60b97136a12da9a35f8a99d9.jpg', 'S', 3),
(13, 'Nintendo Switch 32GB HAC-001-01 1 Controle Joy-Con - Vermelho e Azul', 'O Nintendo Switch foi projetado para se adequar à sua vida, transformando o console doméstico em um sistema portátil em um piscar de olhos. O console Nintendo Switch é tanto um console de mesa quanto portátil. Leve ele onde quiser e continue sua jogatina a hora que quiser. Com ele a diversão nunca para! Os jogos exclusivos do Switch são um espetáculo a parte, franquias como Mario, Zelda e Splatoon você só encontra aqui (jogos vendidos separadamente). Existem jogos para todos os gostos e para toda família. No Nintendo Switch você encontrará vários RPGs exclusivos, jogos de aventura, ação, FPS, plataforma e muito mais! Além disso tudo, o Nintendo Switch possui os controles Joy-Con que irão te proporcionar uma perspectiva de jogo diferente de qualquer outra que já teve.\r\n', 3290, 2999.9, 'd38296e874a7d5f3e06ff0d8704bb123.jpg', 'S', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `venda`
--

CREATE TABLE `venda` (
  `id` int(11) NOT NULL,
  `data` datetime NOT NULL,
  `status` char(1) NOT NULL,
  `cliente_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `venda_has_produto`
--

CREATE TABLE `venda_has_produto` (
  `venda_id` int(11) NOT NULL,
  `produto_id` int(11) NOT NULL,
  `valor` double NOT NULL,
  `quantidade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`);

--
-- Índices para tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_produto_categoria1_idx` (`categoria_id`);

--
-- Índices para tabela `venda`
--
ALTER TABLE `venda`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_venda_cliente1_idx` (`cliente_id`);

--
-- Índices para tabela `venda_has_produto`
--
ALTER TABLE `venda_has_produto`
  ADD PRIMARY KEY (`venda_id`,`produto_id`),
  ADD KEY `fk_venda_has_produto_produto1_idx` (`produto_id`),
  ADD KEY `fk_venda_has_produto_venda_idx` (`venda_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `venda`
--
ALTER TABLE `venda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `produto`
--
ALTER TABLE `produto`
  ADD CONSTRAINT `fk_produto_categoria1` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `venda`
--
ALTER TABLE `venda`
  ADD CONSTRAINT `fk_venda_cliente1` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `venda_has_produto`
--
ALTER TABLE `venda_has_produto`
  ADD CONSTRAINT `fk_venda_has_produto_produto1` FOREIGN KEY (`produto_id`) REFERENCES `produto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_venda_has_produto_venda` FOREIGN KEY (`venda_id`) REFERENCES `venda` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
--
-- Banco de dados: `trabalho01`
--
CREATE DATABASE IF NOT EXISTS `trabalho01` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `trabalho01`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_03_16_222225_create_produtos_table', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome_produto` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `preco` double(8,2) NOT NULL,
  `qtd_estoque` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome_produto`, `preco`, `qtd_estoque`, `created_at`, `updated_at`) VALUES
(1, 'Geladeira Brastemp', 1999.00, 5, NULL, NULL),
(2, 'Mesa de escritorio', 499.90, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Índices para tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Banco de dados: `user_gazin`
--
CREATE DATABASE IF NOT EXISTS `user_gazin` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `user_gazin`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `atributo_funcionario`
--

CREATE TABLE `atributo_funcionario` (
  `id` int(11) NOT NULL,
  `texto` varchar(1000) NOT NULL,
  `id_tipo_atributo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cargo`
--

CREATE TABLE `cargo` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cep`
--

CREATE TABLE `cep` (
  `id` int(11) NOT NULL,
  `cidade` varchar(200) NOT NULL,
  `estado` varchar(100) NOT NULL,
  `uf` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `departamento`
--

CREATE TABLE `departamento` (
  `id` int(11) NOT NULL,
  `nome` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `filial`
--

CREATE TABLE `filial` (
  `id` int(11) NOT NULL,
  `id_regional` int(11) NOT NULL,
  `nome_filial_gazin` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `filial`
--

INSERT INTO `filial` (`id`, `id_regional`, `nome_filial_gazin`) VALUES
(10002, 50, '01.002 - DOURADINA - PR'),
(10003, 52, '01.003 - MUNDO NOVO - MS'),
(10004, 52, '01.004 - SETE QUEDAS - MS'),
(10005, 54, '01.005 - SAO JOSE DO RIO CLARO - MT'),
(10006, 54, '01.006 - ARENAPOLIS - MT'),
(10007, 54, '01.007 - DIAMANTINO - MT'),
(10008, 54, '01.008 - NOBRES - MT'),
(10009, 105, '01.009 - TANGARA DA SERRA - MT'),
(10010, 105, '01.010 - SAO JOSE DOS QUATRO MARCOS - MT'),
(10011, 105, '01.011 - PONTES E LACERDA - MT'),
(10012, 105, '01.012 - BARRA DO BUGRES - MT'),
(10013, 55, '01.013 - POCONE - MT'),
(10014, 105, '01.014 - JUINA - MT'),
(10015, 55, '01.015 - CUIABÁ I - MT'),
(10016, 54, '01.016 - SORRISO - MT'),
(10017, 105, '01.017 - CACERES - MT'),
(10018, 55, '01.018 - PRIMAVERA DO LESTE - MT'),
(10019, 105, '01.019 - CAMPO NOVO DO PARECIS - MT'),
(10020, 54, '01.020 - SINOP - MT I'),
(10021, 57, '01.021 - SAO MIGUEL DO GUAPORE - RO'),
(10022, 51, '01.022 - COXIM - MS'),
(10023, 55, '01.023 - CAMPO VERDE - MT'),
(10024, 52, '01.024 - DOURADOS - MS'),
(10026, 57, '01.026 - ESPIGAO DO OESTE - RO'),
(10027, 51, '01.027 - AQUIDAUANA - MS'),
(10029, 55, '01.029 - RONDONOPOLIS - MT I'),
(10030, 54, '01.030 - LUCAS DO RIO VERDE - MT'),
(10032, 54, '01.032 - ALTA FLORESTA - MT'),
(10033, 52, '01.033 - NAVIRAI - MS'),
(10034, 51, '01.034 - CORUMBA - MS'),
(10035, 109, '01.035 - ARIQUEMES - RO'),
(10036, 52, '01.036 - MARACAJU - MS'),
(10037, 57, '01.037 - ROLIM DE MOURA - RO'),
(10039, 54, '01.039 - COLIDER - MT'),
(10040, 52, '01.040 - RIO BRILHANTE - MS'),
(10041, 54, '01.041 - SINOP - MT II'),
(10043, 53, '01.043 - BARRA DO GARCAS - MT'),
(10044, 51, '01.044 - JARDIM - MS'),
(10045, 50, '01.045 - PARANAIBA - MS'),
(10046, 51, '01.046 - SAO GABRIEL DO OESTE - MS'),
(10047, 54, '01.047 - NOVA MUTUM - MT'),
(10048, 52, '01.048 - AMAMBAI - MS'),
(10049, 54, '01.049 - VERA - MT'),
(10051, 54, '01.051 - GUARANTA DO NORTE - MT'),
(10052, 105, '01.052 - JUARA - MT'),
(10053, 57, '01.053 - VILHENA - RO I'),
(10054, 109, '01.054 - JI-PARANA - RO I'),
(10055, 56, '01.055 - PORTO VELHO - RO I'),
(10056, 105, '01.056 - MIRASSOL DO OESTE - MT'),
(10057, 57, '01.057 - CACOAL - RO'),
(10059, 109, '01.059 - JARU - RO'),
(10060, 109, '01.060 - OURO PRETO DO OESTE - RO'),
(10061, 55, '01.061 - JACIARA - MT'),
(10062, 51, '01.062 - BONITO - MS'),
(10064, 55, '01.064 - PARANATINGA - MT'),
(10065, 57, '01.065 - ALTA FLORESTA DO OESTE - RO'),
(10066, 57, '01.066 - PIMENTA BUENO - RO'),
(10070, 50, '01.070 - NOVA ANDRADINA - MS'),
(10071, 52, '01.071 - FATIMA DO SUL - MS'),
(10072, 58, '01.072 - RIO BRANCO - AC'),
(10073, 52, '01.073 - PONTA PORA - MS'),
(10074, 109, '01.074 - BURITIS - RO'),
(10075, 56, '01.075 - PORTO VELHO - RO II'),
(10076, 52, '01.076 - BELA VISTA - MS'),
(10078, 51, '01.078 - SIDROLANDIA - MS'),
(10079, 51, '01.079 - RIO VERDE - MS'),
(10080, 58, '01.080 - RIO BRANCO - AC'),
(10081, 54, '01.081 - ROSARIO OESTE - MT'),
(10082, 51, '01.082 - SONORA - MS'),
(10083, 57, '01.083 - CEREJEIRAS - RO'),
(10084, 53, '01.084 - CANARANA - MT'),
(10086, 109, '01.086 - PRESIDENTE MEDICI - RO'),
(10087, 105, '01.087 - NOVA OLIMPIA - MT'),
(10088, 105, '01.088 - TANGARA DA SERRA - MT'),
(10089, 53, '01.089 - NOVA XAVANTINA - MT'),
(10090, 57, '01.090 - COLORADO DO OESTE - RO'),
(10091, 109, '01.091 - JI-PARANA - RO II'),
(10092, 109, '01.092 - ALTO PARAISO - RO'),
(10093, 53, '01.093 - AGUA BOA - MT'),
(10094, 109, '01.094 - MONTE NEGRO - RO'),
(10095, 105, '01.095 - COMODORO - MT'),
(10097, 109, '01.097 - MACHADINHO - RO'),
(10098, 52, '01.098 - NOVA ALVORADA DO SUL - MS'),
(10100, 55, '01.100 - RONDONOPOLIS - MT II'),
(10101, 54, '01.101 - TAPURAH - MT'),
(10102, 56, '01.102 - PORTO VELHO - RO III'),
(10103, 56, '01.103 - GUAJARA MIRIM - RO'),
(10104, 109, '01.104 - ARIQUEMES - RO II'),
(10107, 105, '01.107 - SAPEZAL - MT'),
(10110, 109, '01.110 - CUJUBIM - RO'),
(10111, 55, '01.111 - PEDRA PRETA - MT'),
(10112, 54, '01.112 - MARCELANDIA - MT'),
(10113, 57, '01.113 - SAO FRANCISCO DO GUAPORE - RO'),
(10114, 58, '01.114 - EPITACIOLANDIA - AC'),
(10116, 51, '01.116 - LADARIO - MS'),
(10117, 57, '01.117 - NOVA BRASILANDIA DO OESTE - RO'),
(10118, 53, '01.118 - BARRA DO GARCAS - MT'),
(10119, 105, '01.119 - ARIPUANA - MT'),
(10120, 57, '01.120 - VILHENA - RO I'),
(10123, 55, '01.123 - JACIARA - MT'),
(10124, 55, '01.124 - JUSCIMEIRA - MT'),
(10126, 105, '01.126 - ARAPUTANGA - MT'),
(10127, 56, '01.127 - PORTO VELHO - RO IV'),
(10128, 52, '01.128 - CAARAPO - MS'),
(10129, 53, '01.129 - ALTO GARCAS - MT'),
(10130, 53, '01.130 - ALTO ARAGUAIA - MT'),
(10131, 105, '01.131 - BRASNORTE - MT'),
(10132, 54, '01.132 - SINOP - MT III'),
(10133, 105, '01.133 - CASTANHEIRA - MT'),
(10134, 54, '01.134 - PEIXOTO DE AZEVEDO - MT'),
(10135, 55, '01.135 - RONDONOPOLIS - MT V'),
(10136, 58, '01.136 - ACRELANDIA - AC'),
(10137, 58, '01.137 - SENADOR GUIOMARD - AC'),
(10139, 56, '01.139 - NOVA MAMORE - RO'),
(10140, 56, '01.140 - HUMAITA - AM'),
(10141, 51, '01.141 - CORUMBA - MS'),
(10142, 105, '01.142 - VILA BELA DA SANTISSIMA TRINDADE - MT'),
(10144, 105, '01.144 - CACERES - MT II'),
(10145, 58, '01.145 - RIO BRANCO - AC'),
(10147, 53, '01.147 - VILA RICA - MT'),
(10148, 109, '01.148 - MIRANTE DA SERRA - RO'),
(10149, 53, '01.149 - CONFRESA - MT'),
(10151, 109, '01.151 - ALVORADA DO OESTE - RO'),
(10153, 58, '01.153 - RIO BRANCO - AC'),
(10154, 52, '01.154 - NAVIRAÍ - MS'),
(10157, 56, '01.157 - PORTO VELHO - RO V'),
(10158, 53, '01.158 - ALTO TAQUARI - MT'),
(10159, 53, '01.159 - RIBEIRAO CASCALHEIRA - MT'),
(10160, 58, '01.160 - RIO BRANCO - AC'),
(10165, 58, '01.165 - SENA MADUREIRA - AC'),
(10166, 58, '01.166 - FEIJO - AC'),
(10167, 58, '01.167 - CRUZEIRO DO SUL - AC'),
(10169, 58, '01.169 - TARAUACA - AC'),
(10170, 55, '01.170 - RONDONOPOLIS - MT IV'),
(10171, 53, '01.171 - QUERENCIA - MT'),
(10172, 52, '01.172 - IVINHEMA - MS'),
(10178, 58, '01.178 - PLACIDO DE CASTRO - AC'),
(10179, 58, '01.179 - CRUZEIRO DO SUL - AC'),
(10181, 109, '01.181 - URUPA - RO'),
(10183, 105, '01.183 - JURUENA - MT'),
(10184, 51, '01.184 - CAMAPUÃ - MS'),
(10185, 105, '01.185 - COLNIZA - MT'),
(10186, 50, '01.186 - CASSILANDIA - MS'),
(10187, 50, '01.187 - RIBAS DO RIO PARDO - MS'),
(10190, 50, '01.190 - CHAPADÃO DO SUL - MS'),
(10191, 50, '01.191 - COSTA RICA - MS'),
(10192, 50, '01.192 - APARECIDA DO TABOADO - MS'),
(10193, 58, '01.193 - CAPIXABA - AC'),
(10194, 58, '01.194 - RIO BRANCO - AC'),
(10195, 58, '01.195 - RIO BRANCO - AC'),
(10196, 50, '01.196 - AGUA CLARA - MS'),
(10197, 54, '01.197 - NOVA MUTUM - MT'),
(10199, 57, '01.199 - VILHENA - RO III'),
(10200, 56, '01.200 - PORTO VELHO - RO VI'),
(10202, 55, '01.202 - CUIABÁ - MT'),
(10205, 57, '01.205 - ROLIM DE MOURA - RO'),
(10206, 57, '01.206 - CACOAL - RO'),
(10207, 57, '01.207 - CACOAL - RO'),
(10209, 109, '01.209 - ARIQUEMES - RO'),
(10211, 58, '01.211 - CRUZEIRO DO SUL - AC'),
(10214, 105, '01.214 - PONTES E LACERDA - MT'),
(10215, 58, '01.215 - RIO BRANCO - AC'),
(10218, 56, '01.218 - PORTO VELHO - RO'),
(10219, 56, '01.219 - MUTUM PARANA/PORTO VELHO - RO'),
(10220, 109, '01.220 - JI-PARANÁ - RO'),
(10221, 109, '01.221 - JI-PARANÁ - RO'),
(10224, 105, '01.224 - TANGARA DA SERRA - MT'),
(10226, 55, '01.226 - PRIMAVERA DO LESTE - MT'),
(10229, 59, '01.229 - NOVO PROGRESSO - PA'),
(10230, 59, '01.230 - ITAITUBA - PA'),
(10231, 59, '01.231 - ITAITUBA - PA'),
(10232, 59, '01.232 - CASTELO DE SONHOS (ALTAMIRA) - PA'),
(10233, 58, '01.233 - RIO BRANCO - AC'),
(10234, 52, '01.234 - ITAQUIRAI - MS'),
(10235, 58, '01.235 - BOCA DO ACRE - AM'),
(10236, 57, '01.236 - MINISTRO ANDREAZZA - RO'),
(10237, 55, '01.237 - ITIQUIRA - MT'),
(10238, 57, '01.238 - CHUPINGUAIA - RO'),
(10239, 56, '01.239 - EXTREMA - RO'),
(10240, 56, '01.240 - PORTO VELHO - RO'),
(10241, 59, '01.241 - SANTAREM - PA'),
(10242, 59, '01.242 - SANTAREM - PA / FL 242'),
(10243, 59, '01.243 - SANTAREM - PA / FL 243'),
(10246, 59, '01.246 - SANTAREM - PA / FL 246'),
(10247, 54, '01.247 - MATUPA - MT'),
(10248, 55, '01.248 - PRIMAVERA DO LESTE - MT'),
(10249, 59, '01.249 - RURÓPOLIS - PA'),
(10250, 50, '01.250 - BATAGUASSU - MS'),
(10253, 59, '01.253 - TRAIRAO - PA'),
(10254, 59, '01.254 - ITAITUBA - PA'),
(10255, 54, '01.255 - SORRISO - MT'),
(10256, 57, '01.256 - VILHENA - RO I'),
(10257, 109, '01.257 - JI-PARANA - RO'),
(10258, 53, '01.258 - QUERENCIA - MT'),
(10259, 56, '01.259 - CANDEIAS DO JAMARI - RO'),
(10260, 109, '01.260 - JARU - RO'),
(10261, 51, '01.261 - CORUMBA - MS'),
(10262, 54, '01.262 - NOVA UBIRATÃ - MT'),
(10263, 53, '01.263 - GAUCHA DO NORTE - MT'),
(10264, 59, '01.264 - ALTAMIRA - PA'),
(10270, 52, '01.270 - NOVA ALVORADA DO SUL - MS'),
(10271, 50, '01.271 - INOCENCIA - MS'),
(10272, 51, '01.272 - MIRANDA - MS'),
(10273, 59, '01.273 - ANAPU - PA'),
(10274, 59, '01.274 - TUCURUÍ - PA'),
(10275, 59, '01.275 - URUARA PA'),
(10276, 59, '01.276 - SANTAREM - PA / FL 276'),
(10277, 59, '01.277 - MEDICILANDIA - PA / FL 277'),
(10278, 56, '01.278 - UNIÃO BANDEIRANTES - RO'),
(10279, 57, '01.279 - PIMENTA BUENO - RO'),
(10280, 55, '01.280 - RONDONOPOLIS - MT'),
(10281, 51, '01.281 - PORTO MURTINHO - MS'),
(10282, 52, '01.282 - ANTONIO JOÃO - MS'),
(10284, 52, '01.284 - GLORIA DE DOURADOS - MS'),
(10285, 50, '01.285 - BRASILANDIA - MS'),
(10286, 105, '01.286 - CACERES - MT'),
(10287, 54, '01.287 - LUCAS DO RIO VERDE - MT'),
(10288, 105, '01.288 - JUINA - MT'),
(10289, 52, '01.289 - ITAPORÃ - MS'),
(10290, 51, '01.290 - NIOAQUE - MS'),
(10291, 51, '01.291 - ANASTÁCIO - MS'),
(10292, 58, '01.292 - RIO BRANCO - AC'),
(10293, 105, '01.293 - CAMPOS DE JÚLIO - MT'),
(10295, 57, '01.295 - SERINGUEIRAS - RO'),
(10296, 57, '01.296 - ROLIM DE MOURA - RO'),
(10297, 56, '01.297 - LÁBREA - AM'),
(10299, 52, '01.299 - DOURADOS - MS'),
(10300, 52, '01.300 - PONTA PORÃ - MS'),
(10301, 54, '01.301 - SORRISO - MT'),
(10302, 55, '01.302 - VARZEA GRANDE - MT'),
(10304, 53, '01.304 - BOM JESUS DO ARAGUAIA- MT'),
(10305, 51, '01.305 - CORUMBA - MS'),
(10306, 51, '01.306 - BODOQUENA - MS'),
(10308, 56, '01.308 - GUAJARÁ-MIRIM - RO'),
(10309, 52, '01.309 - CORONEL SAPUCAIA - MS'),
(10310, 53, '01.310 - PORTO ALEGRE DO NORTE - MT'),
(10311, 51, '01.311 - COXIM - MS'),
(10312, 53, '01.312 - CONFRESA - MT'),
(10313, 51, '01.313 - TERENOS MS'),
(10314, 55, '01.314 - VARZEA GRANDE - MT'),
(10315, 55, '01.315 - VARZEA GRANDE - MT'),
(10316, 53, '01.316 - CAMPINAPOLIS - MT'),
(10317, 56, '01.317 - PORTO VELHO - RO'),
(10318, 58, '01.318 - BRASILEIA - AC'),
(10319, 59, '01.319 - NOVO REPARTIMENTO - PA'),
(10320, 50, '01.320 - FIGUEIRÃO - MS'),
(10321, 50, '01.321 - ANAURILANDIA - MS'),
(10322, 50, '01.322 - TRES LAGOAS - MS'),
(10323, 52, '01.323 - MARACAJU - MS'),
(10324, 53, '01.324 - SÃO FÉLIX DO ARAGUAIA - MT'),
(10325, 50, '01.325 - TRÊS LAGOAS - MS'),
(10326, 56, '01.326 - VISTA ALEGRE DO ABUNÃ (PORTO VELHO)-RO'),
(10327, 54, '01.327 - ALTA FLORESTA - MT'),
(10328, 55, '01.328 - CHAPADA DOS GUIMARAES - MT'),
(10329, 55, '01.329 - CAMPO VERDE - MT'),
(10332, 56, '01.332 - PORTO VELHO - RO'),
(10334, 57, '01.334 - CACOAL - RO'),
(10335, 55, '01.335 - POXORÉU - MT'),
(10336, 51, '01.336 - CAMPO GRANDE MS'),
(10337, 53, '01.337 - NOVO SÃO JOAQUIM - MT'),
(10338, 52, '01.338 - DOURADOS - MS'),
(10339, 57, '01.339 - ALTO ALEGRE DOS PARECIS - RO'),
(10340, 53, '01.340 - COCALINHO - MT'),
(10341, 53, '01.341 - NOVA XAVANTINA - MT'),
(10342, 52, '01.342 - DOURADOS - MS'),
(10343, 55, '01.343 - VÁRZEA GRANDE - MT'),
(10344, 55, '01.344 - CUIABÁ - MT'),
(10345, 54, '01.345 - NOVA BANDEIRANTES - MT'),
(10346, 59, '01.346 - ITAITUBA - PA'),
(10347, 51, '01.347 - CAMPO GRANDE - MS'),
(10348, 109, '01.348 - JI - PARANÁ - RO'),
(10349, 59, '01.349 - PACAJÁ - PA'),
(10350, 51, '01.350 - CAMPO GRANDE - MS'),
(10351, 52, '01.351 - DEODÁPOLIS - MS'),
(10353, 58, '01.353 - CRUZEIRO DO SUL (LOJA) - AC'),
(10355, 51, '01.355 - CAMPO GRANDE - MS'),
(10357, 59, '01.357 - MORAES ALMEIDA (ITAITUBA) - PA'),
(10358, 56, '01.358 - HUMAITÁ - AM'),
(10359, 58, '01.359 - ASSIS BRASIL - AC'),
(10367, 51, '01.367 - CAMPO GRANDE - MS'),
(10368, 58, '01.368 - EPITACIOLANDIA - AC'),
(10369, 59, '01.369 - ORIXIMINÁ -PA'),
(10370, 59, '01.370 - ALENQUER - PA'),
(10371, 59, '01.371 - JURUTI - PA'),
(10372, 59, '01.372 - MONTE ALEGRE - PA'),
(10373, 59, '01.373 - ÓBIDOS - PA'),
(10374, 56, '01.374 - PORTO VELHO - RO'),
(10376, 54, '01.376 - SINOP - MT'),
(10377, 51, '01.377 - PEDRO GOMES - MS'),
(10378, 59, '01.378 - MIRITITUBA - PA'),
(10380, 59, '01.380 - PLACAS - PA'),
(10381, 57, '01.381 - COSTA MARQUES - RO'),
(10382, 58, '01.382 - XAPURI - AC'),
(10383, 58, '01.383 - RIO BRANCO - AC'),
(10384, 109, '01.384 - BURITIS - RO'),
(10385, 109, '01.385 - VALE DO ANARI - RO'),
(10386, 58, '01.386 - SENADOR GUIOMARD - AC'),
(140002, 50, '14.002 - IPAMERI - GO'),
(140003, 50, '14.003 - CALDAS NOVAS - GO'),
(140004, 50, '14.004 - ITUMBIARA- GO'),
(140005, 50, '14.005 - PIRES DO RIO - GO'),
(140006, 50, '14.006 - MORRINHOS - GO'),
(140007, 50, '14.007 - PORANGATU - GO'),
(140008, 50, '14.008 - CRISTALINA - GO'),
(140009, 50, '14.009 - GURUPI - TO');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `id` int(11) NOT NULL,
  `id_cargo` int(11) NOT NULL,
  `id_departamento` int(11) NOT NULL,
  `id_filial` int(11) NOT NULL,
  `id_negocio` int(11) NOT NULL,
  `id_tipo_funcionario` int(11) NOT NULL,
  `cep` int(11) NOT NULL,
  `id_atributo_funcionario` int(11) NOT NULL,
  `id_situacao_funcionario` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `cpf` int(11) NOT NULL,
  `nascimento` date NOT NULL,
  `telefone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `negocio`
--

CREATE TABLE `negocio` (
  `id` int(11) NOT NULL,
  `nome` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `regional`
--

CREATE TABLE `regional` (
  `id` int(11) NOT NULL,
  `regiao_desc` varchar(150) NOT NULL,
  `id_regiao_gazin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `regional`
--

INSERT INTO `regional` (`id`, `regiao_desc`, `id_regiao_gazin`) VALUES
(50, 'R01 - PR/GO/TO + Bolsão - 50', 1),
(51, 'R02 - MS Pantaneira - 051', 2),
(52, 'R03 - MS Conesul - 52', 3),
(53, 'R04-MT Araguaia - 053', 4),
(54, 'R05-MT Nortão - 054', 5),
(55, 'R06-MT Pantanal Pioneiro - 055', 6),
(56, 'R07 - RO Capital - 56', 7),
(57, 'R08 - RO Interior - 57', 8),
(58, 'R09-AC Geral - 058', 9),
(59, 'R10-PA Geral - 059', 10),
(105, 'R11-MT Médio Norte - 105', 11),
(108, 'R12 - PA Radisco - 108', 12),
(109, 'R13 - RO Central - 109', 13);

-- --------------------------------------------------------

--
-- Estrutura da tabela `situacao_funcionario`
--

CREATE TABLE `situacao_funcionario` (
  `id` int(11) NOT NULL,
  `descricao` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_atributo`
--

CREATE TABLE `tipo_atributo` (
  `id` int(11) NOT NULL,
  `descricao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_funcionario`
--

CREATE TABLE `tipo_funcionario` (
  `id` int(11) NOT NULL,
  `descricao` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `atributo_funcionario`
--
ALTER TABLE `atributo_funcionario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_tipo_atributo` (`id_tipo_atributo`);

--
-- Índices para tabela `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `cep`
--
ALTER TABLE `cep`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `filial`
--
ALTER TABLE `filial`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_regional` (`id_regional`);

--
-- Índices para tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_atributo_funcionario` (`id_atributo_funcionario`),
  ADD KEY `id_cargo` (`id_cargo`),
  ADD KEY `id_departamento` (`id_departamento`),
  ADD KEY `id_filial` (`id_filial`),
  ADD KEY `id_negocio` (`id_negocio`),
  ADD KEY `id_tipo_funcionario` (`id_tipo_funcionario`),
  ADD KEY `id_situacao_funcionario` (`id_situacao_funcionario`);

--
-- Índices para tabela `negocio`
--
ALTER TABLE `negocio`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `regional`
--
ALTER TABLE `regional`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `situacao_funcionario`
--
ALTER TABLE `situacao_funcionario`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tipo_atributo`
--
ALTER TABLE `tipo_atributo`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tipo_funcionario`
--
ALTER TABLE `tipo_funcionario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `atributo_funcionario`
--
ALTER TABLE `atributo_funcionario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cargo`
--
ALTER TABLE `cargo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cep`
--
ALTER TABLE `cep`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `departamento`
--
ALTER TABLE `departamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `filial`
--
ALTER TABLE `filial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140010;

--
-- AUTO_INCREMENT de tabela `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `regional`
--
ALTER TABLE `regional`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT de tabela `situacao_funcionario`
--
ALTER TABLE `situacao_funcionario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tipo_atributo`
--
ALTER TABLE `tipo_atributo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tipo_funcionario`
--
ALTER TABLE `tipo_funcionario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `atributo_funcionario`
--
ALTER TABLE `atributo_funcionario`
  ADD CONSTRAINT `atributo_funcionario_ibfk_1` FOREIGN KEY (`id_tipo_atributo`) REFERENCES `tipo_atributo` (`id`);

--
-- Limitadores para a tabela `filial`
--
ALTER TABLE `filial`
  ADD CONSTRAINT `filial_ibfk_1` FOREIGN KEY (`id_regional`) REFERENCES `regional` (`id`);

--
-- Limitadores para a tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD CONSTRAINT `funcionario_ibfk_1` FOREIGN KEY (`id_atributo_funcionario`) REFERENCES `atributo_funcionario` (`id`),
  ADD CONSTRAINT `funcionario_ibfk_2` FOREIGN KEY (`id_cargo`) REFERENCES `cargo` (`id`),
  ADD CONSTRAINT `funcionario_ibfk_3` FOREIGN KEY (`id_departamento`) REFERENCES `departamento` (`id`),
  ADD CONSTRAINT `funcionario_ibfk_4` FOREIGN KEY (`id_filial`) REFERENCES `filial` (`id`),
  ADD CONSTRAINT `funcionario_ibfk_5` FOREIGN KEY (`id_negocio`) REFERENCES `negocio` (`id`),
  ADD CONSTRAINT `funcionario_ibfk_6` FOREIGN KEY (`id_tipo_funcionario`) REFERENCES `tipo_funcionario` (`id`),
  ADD CONSTRAINT `funcionario_ibfk_7` FOREIGN KEY (`id_situacao_funcionario`) REFERENCES `situacao_funcionario` (`id`);
--
-- Banco de dados: `vitrine_online`
--
CREATE DATABASE IF NOT EXISTS `vitrine_online` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `vitrine_online`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(150) NOT NULL,
  `valor` float NOT NULL,
  `descricao` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `titulo`, `valor`, `descricao`) VALUES
(1, 'NINTENDO', 1109, '110 VOLTS'),
(2, 'Venda por marca gdfgsdfg', 110, '110 VOLTS'),
(6, 'nintendo switch', 1109, '110 VOLTS'),
(7, 'nintendo switch', 2889, '110 VOLTS'),
(8, 'NINTENDO', 1109, '110 VOLTS'),
(9, 'NINTENDO', 1099, '110 VOLTS');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `user` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `user`, `pass`) VALUES
(1, 'lucas', 'lucas', 'lucas');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendedores`
--

CREATE TABLE `vendedores` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `telefone` varchar(100) NOT NULL,
  `setor` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `vendedores`
--
ALTER TABLE `vendedores`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `vendedores`
--
ALTER TABLE `vendedores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
