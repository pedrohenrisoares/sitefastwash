-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 10-Jun-2022 às 16:47
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `fastwash`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` int(11) NOT NULL,
  `nomeCliente` varchar(100) NOT NULL,
  `emailCliente` varchar(100) NOT NULL,
  `senhaCliente` varchar(45) NOT NULL,
  `statusCliente` varchar(20) NOT NULL,
  `dataCliente` date NOT NULL,
  `fotoCliente` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`idCliente`, `nomeCliente`, `emailCliente`, `senhaCliente`, `statusCliente`, `dataCliente`, `fotoCliente`) VALUES
(1, 'CLIENTE 01', 'cliente01@hotmail.com', '123', 'ATIVO', '2022-05-21', 'fotocliente01.png'),
(2, 'CLIENTE 02', 'cliente02@hotmail.com', '123', 'INATIVO', '2022-05-21', 'fotocliente02.png'),
(3, 'CLIENTE 03', 'cliente02@hotmail.com', '123', 'INATIVO', '2022-05-21', 'fotocliente03.png'),
(4, 'CLIENTE 04', 'cliente02@hotmail.com', '123', 'ATIVO', '2022-05-21', 'fotocliente04.png');

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `clienteativo`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `clienteativo` (
`CÓDIGO` int(11)
,`NOME CLIENTE` varchar(100)
,`E-MAIL` varchar(100)
,`SENHA` varchar(45)
,`STATUS` varchar(20)
,`DATA CADASTRO` date
,`FOTO` varchar(100)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `clientecompleto`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `clientecompleto` (
`CÓDIGO` int(11)
,`NOME CLIENTE` varchar(100)
,`E-MAIL` varchar(100)
,`SENHA` varchar(45)
,`STATUS` varchar(20)
,`DATA CADASTRO` date
,`FOTO` varchar(100)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `clienteinativo`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `clienteinativo` (
`CÓDIGO` int(11)
,`NOME CLIENTE` varchar(100)
,`E-MAIL` varchar(100)
,`SENHA` varchar(45)
,`STATUS` varchar(20)
,`DATA CADASTRO` date
,`FOTO` varchar(100)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `clientetelefone`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `clientetelefone` (
`NOME DO CLIENTE` varchar(100)
,`E-MAIL` varchar(100)
,`TELEFONE` mediumtext
,`STATUS` varchar(20)
);

-- --------------------------------------------------------

--
-- Estrutura da tabela `contato`
--

CREATE TABLE `contato` (
  `idContato` int(11) NOT NULL,
  `nomeContato` varchar(100) NOT NULL,
  `emailContato` varchar(100) NOT NULL,
  `foneContato` varchar(20) NOT NULL,
  `mensagemCont` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `contato`
--

INSERT INTO `contato` (`idContato`, `nomeContato`, `emailContato`, `foneContato`, `mensagemCont`) VALUES
(1, 'clienteContato01', 'clientecontato01@gmail.com', '(11) 99356-1234', 'Gostei muito da lavagem automotiva'),
(2, 'clienteContato02', 'clientecontato02@gmail.com', '(11) 99356-1234', 'Atendimento nota 10');

-- --------------------------------------------------------

--
-- Estrutura da tabela `empresa`
--

CREATE TABLE `empresa` (
  `idEmpresa` int(11) NOT NULL,
  `nomeEmpresa` varchar(100) NOT NULL,
  `cnpjCpfEmpresa` varchar(45) NOT NULL,
  `razaoSocialEmpresa` varchar(100) DEFAULT NULL,
  `emailEmpresa` varchar(100) NOT NULL,
  `statusEmpresa` varchar(20) NOT NULL,
  `datCadEmpresa` date NOT NULL,
  `horarioAtendEmpresa` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `empresa`
--

INSERT INTO `empresa` (`idEmpresa`, `nomeEmpresa`, `cnpjCpfEmpresa`, `razaoSocialEmpresa`, `emailEmpresa`, `statusEmpresa`, `datCadEmpresa`, `horarioAtendEmpresa`) VALUES
(1, 'FASTWASH MATRIZ', '12.123.123/0001-10', 'FASTWASH LTDA', 'fastwash@fastwashmatriz.com.br', 'ATIVO', '2022-05-18', '10:00:00');

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `empresaativo`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `empresaativo` (
`CÓDIGO` int(11)
,`NOME DA EMPRESA` varchar(100)
,`CNPJ/CPF` varchar(45)
,`RAZÃO SOCIAL` varchar(100)
,`E-MAIL` varchar(100)
,`STATUS` varchar(20)
,`DATA DE CADASTRO` date
,`HORÁRIO DE ATENDIMENTO` time
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `empresacompleta`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `empresacompleta` (
`CÓDIGO` int(11)
,`NOME DA EMPRESA` varchar(100)
,`CNPJ/CPF` varchar(45)
,`RAZÃO SOCIAL` varchar(100)
,`E-MAIL` varchar(100)
,`STATUS` varchar(20)
,`DATA DE CADASTRO` date
,`HORÁRIO DE ATENDIMENTO` time
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `empresafone`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `empresafone` (
`NOME DA EMPRESA` varchar(100)
,`RAZÃO SOCIAL` varchar(100)
,`NÚMERO DA EMPRESA` varchar(20)
,`E-MAIL` varchar(100)
,`STATUS` varchar(20)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `empresainativa`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `empresainativa` (
`CÓDIGO` int(11)
,`NOME DA EMPRESA` varchar(100)
,`CNPJ/CPF` varchar(45)
,`RAZÃO SOCIAL` varchar(100)
,`E-MAIL` varchar(100)
,`STATUS` varchar(20)
,`DATA DE CADASTRO` date
,`HORÁRIO DE ATENDIMENTO` time
);

-- --------------------------------------------------------

--
-- Estrutura da tabela `fonecliente`
--

CREATE TABLE `fonecliente` (
  `idFoneCliente` int(11) NOT NULL,
  `numeroCliente` varchar(20) DEFAULT NULL,
  `operFoneCliente` varchar(45) DEFAULT NULL,
  `descFoneCliente` varchar(20) DEFAULT NULL,
  `idCliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `fonecliente`
--

INSERT INTO `fonecliente` (`idFoneCliente`, `numeroCliente`, `operFoneCliente`, `descFoneCliente`, `idCliente`) VALUES
(1, '(21) 99357-6261', 'CLARO', 'CELULAR', 1),
(2, '(83) 95961-9589', 'TIM', 'RECADO', 2),
(3, '(66) 95131-6329', 'NEXTEL', 'LIGAR APOS AS 17', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `foneempresa`
--

CREATE TABLE `foneempresa` (
  `idFoneEmpresa` int(11) NOT NULL,
  `numeroEmpresa` varchar(20) DEFAULT NULL,
  `operFoneEmpresa` varchar(45) DEFAULT NULL,
  `descFoneEmpresa` varchar(20) DEFAULT NULL,
  `idEmpresa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `foneempresa`
--

INSERT INTO `foneempresa` (`idFoneEmpresa`, `numeroEmpresa`, `operFoneEmpresa`, `descFoneEmpresa`, `idEmpresa`) VALUES
(1, '(11) 96357-2809', 'OI', 'CENTRAL', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `fonefuncionario`
--

CREATE TABLE `fonefuncionario` (
  `idFoneFuncionario` int(11) NOT NULL,
  `numeroFuncionario` varchar(20) DEFAULT NULL,
  `operFoneFuncionario` varchar(45) DEFAULT NULL,
  `descFoneFuncionario` varchar(20) DEFAULT NULL,
  `idFuncionario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `fonefuncionario`
--

INSERT INTO `fonefuncionario` (`idFoneFuncionario`, `numeroFuncionario`, `operFoneFuncionario`, `descFoneFuncionario`, `idFuncionario`) VALUES
(1, '(11) 93651-1883', 'VIVO', 'CELULAR', 1),
(2, '(11) 95532-1883', 'OI', 'RECADO', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `idFuncionario` int(11) NOT NULL,
  `nomeFuncionario` varchar(100) NOT NULL,
  `emailFuncionario` varchar(100) NOT NULL,
  `senhaFuncionario` varchar(45) NOT NULL,
  `nivelFuncionario` varchar(20) NOT NULL,
  `statusFuncionario` varchar(20) NOT NULL,
  `dataCadFuncionario` date NOT NULL,
  `horarioTrabFunc` time NOT NULL,
  `idEmpresa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`idFuncionario`, `nomeFuncionario`, `emailFuncionario`, `senhaFuncionario`, `nivelFuncionario`, `statusFuncionario`, `dataCadFuncionario`, `horarioTrabFunc`, `idEmpresa`) VALUES
(1, 'FUNCIONARIO 01', 'emailfuncionario01@uol.com.br', '123', 'OPERACIONAL', 'ATIVO', '2022-06-09', '08:00:00', 1),
(2, 'FUNCIONARIO 02', 'emailfuncionario02@uol.com.br', '123', 'OPERACIONAL', 'INATIVO', '2022-06-09', '08:00:00', 1);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `funcionarioativo`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `funcionarioativo` (
`CÓDIGO` int(11)
,`NOME FUNCIONARIO` varchar(100)
,`E-MAIL` varchar(100)
,`NIVEL FUNCIONARIO` varchar(20)
,`STATUS` varchar(20)
,`NOME EMPRESA` varchar(100)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `funcionariocompleto`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `funcionariocompleto` (
`CÓDIGO` int(11)
,`NOME FUNCIONARIO` varchar(100)
,`E-MAIL` varchar(100)
,`SENHA` varchar(45)
,`NIVEL FUNCIONARIO` varchar(20)
,`STATUS` varchar(20)
,`DATA DE CADASTRO` date
,`CARGA HORARIA` time
,`NOME EMPRESA` varchar(100)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `funcionariofone`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `funcionariofone` (
`NOME DO FUNCIONÁRIO` varchar(100)
,`E-MAIL` varchar(100)
,`TELEFONE` mediumtext
,`STATUS` varchar(20)
,`NOME DA EMPRESA` varchar(100)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `funcionarioinativo`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `funcionarioinativo` (
`CÓDIGO` int(11)
,`NOME FUNCIONARIO` varchar(100)
,`E-MAIL` varchar(100)
,`NIVEL FUNCIONARIO` varchar(20)
,`STATUS` varchar(20)
,`NOME EMPRESA` varchar(100)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `mensagemcontato`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `mensagemcontato` (
`CÓDIGO CONTATO` int(11)
,`NOME DO CONTATO` varchar(100)
,`E-MAIL CONTATO` varchar(100)
,`TELEFONE DO CONTATO` varchar(20)
,`MENSAGEM CONTATO` text
);

-- --------------------------------------------------------

--
-- Estrutura da tabela `reserva`
--

CREATE TABLE `reserva` (
  `idReserva` int(11) NOT NULL,
  `obsReserva` text NOT NULL,
  `dataReserva` date NOT NULL,
  `horaReserva` time NOT NULL,
  `statusReserva` varchar(20) NOT NULL,
  `idFuncionario` int(11) NOT NULL,
  `idCliente` int(11) NOT NULL,
  `idServico` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `reserva`
--

INSERT INTO `reserva` (`idReserva`, `obsReserva`, `dataReserva`, `horaReserva`, `statusReserva`, `idFuncionario`, `idCliente`, `idServico`) VALUES
(1, 'Não passar pretinho nas rodas', '2022-06-15', '13:30:00', 'ATIVO', 1, 1, 3),
(2, 'Cuidado com os bancos traseiros', '2022-06-20', '10:30:00', 'ATIVO', 1, 2, 1);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `reservacliente`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `reservacliente` (
`DATA DA RESERVA` date
,`HORÁRIO` time
,`NOME DO CLIENTE` varchar(100)
,`E-MAIL` varchar(100)
,`OBSERVAÇÃO` text
,`NÚMERO FONE` mediumtext
,`NOME SERVIÇO` varchar(100)
);

-- --------------------------------------------------------

--
-- Estrutura da tabela `servico`
--

CREATE TABLE `servico` (
  `idServico` int(11) NOT NULL,
  `nomeServico` varchar(100) NOT NULL,
  `valorServico` decimal(10,2) NOT NULL,
  `statusServico` varchar(20) NOT NULL,
  `dataCadServico` date NOT NULL,
  `fotoServico1` varchar(100) NOT NULL,
  `fotoServico2` varchar(100) NOT NULL,
  `fotoServico3` varchar(100) NOT NULL,
  `descricaoServico` text NOT NULL,
  `textoServico` text NOT NULL,
  `tempoExecServico` time NOT NULL,
  `idEmpresa` int(11) NOT NULL,
  `tipoCarro` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `servico`
--

INSERT INTO `servico` (`idServico`, `nomeServico`, `valorServico`, `statusServico`, `dataCadServico`, `fotoServico1`, `fotoServico2`, `fotoServico3`, `descricaoServico`, `textoServico`, `tempoExecServico`, `idEmpresa`, `tipoCarro`) VALUES
(1, 'LAVAGEM COMPLETA', '25.00', 'ATIVO', '2022-05-18', 'lavagemCompleta01.png', 'lavagemCompleta02.png', 'lavagemCompleta03.png', 'Lavagem completa em seu carro usando os melhores produtos do mercado. ', 'Lavagem rapida com sistema de leva e traz para que você não precise sair do conforto da sua casa.', '01:30:00', 1, 'GRANDE'),
(2, 'SERVIÇO 02', '50.00', 'ATIVO', '2022-05-18', 'fotoservico01.png', 'fotoservico02.png', 'fotoservico03.png', 'SERVIÇO', 'SERVIÇO', '01:00:00', 1, 'GRANDE'),
(3, 'SERVIÇO 03', '50.00', 'ATIVO', '2022-05-18', 'fotoservico01.png', 'fotoservico02.png', 'fotoservico03.png', 'SERVIÇO', 'SERVIÇO', '01:00:00', 1, 'GRANDE'),
(4, 'SERVIÇO 04', '50.00', 'ATIVO', '2022-05-18', 'fotoservico01.png', 'fotoservico02.png', 'fotoservico03.png', 'SERVIÇO', 'SERVIÇO', '01:00:00', 1, 'GRANDE');

-- --------------------------------------------------------

--
-- Estrutura para vista `clienteativo`
--
DROP TABLE IF EXISTS `clienteativo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `clienteativo`  AS SELECT `cliente`.`idCliente` AS `CÓDIGO`, `cliente`.`nomeCliente` AS `NOME CLIENTE`, `cliente`.`emailCliente` AS `E-MAIL`, `cliente`.`senhaCliente` AS `SENHA`, `cliente`.`statusCliente` AS `STATUS`, `cliente`.`dataCliente` AS `DATA CADASTRO`, `cliente`.`fotoCliente` AS `FOTO` FROM `cliente` WHERE `cliente`.`statusCliente` = 'ATIVO' ORDER BY `cliente`.`nomeCliente` ASC ;

-- --------------------------------------------------------

--
-- Estrutura para vista `clientecompleto`
--
DROP TABLE IF EXISTS `clientecompleto`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `clientecompleto`  AS SELECT `cliente`.`idCliente` AS `CÓDIGO`, `cliente`.`nomeCliente` AS `NOME CLIENTE`, `cliente`.`emailCliente` AS `E-MAIL`, `cliente`.`senhaCliente` AS `SENHA`, `cliente`.`statusCliente` AS `STATUS`, `cliente`.`dataCliente` AS `DATA CADASTRO`, `cliente`.`fotoCliente` AS `FOTO` FROM `cliente` ORDER BY `cliente`.`nomeCliente` ASC ;

-- --------------------------------------------------------

--
-- Estrutura para vista `clienteinativo`
--
DROP TABLE IF EXISTS `clienteinativo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `clienteinativo`  AS SELECT `cliente`.`idCliente` AS `CÓDIGO`, `cliente`.`nomeCliente` AS `NOME CLIENTE`, `cliente`.`emailCliente` AS `E-MAIL`, `cliente`.`senhaCliente` AS `SENHA`, `cliente`.`statusCliente` AS `STATUS`, `cliente`.`dataCliente` AS `DATA CADASTRO`, `cliente`.`fotoCliente` AS `FOTO` FROM `cliente` WHERE `cliente`.`statusCliente` = 'INATIVO' ORDER BY `cliente`.`nomeCliente` ASC ;

-- --------------------------------------------------------

--
-- Estrutura para vista `clientetelefone`
--
DROP TABLE IF EXISTS `clientetelefone`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `clientetelefone`  AS SELECT `cliente`.`nomeCliente` AS `NOME DO CLIENTE`, `cliente`.`emailCliente` AS `E-MAIL`, group_concat(`fonecliente`.`numeroCliente`,' - ',`fonecliente`.`descFoneCliente` separator ',') AS `TELEFONE`, `cliente`.`statusCliente` AS `STATUS` FROM (`cliente` join `fonecliente` on(`cliente`.`idCliente` = `fonecliente`.`idCliente`)) GROUP BY `cliente`.`nomeCliente` ORDER BY `cliente`.`nomeCliente` ASC ;

-- --------------------------------------------------------

--
-- Estrutura para vista `empresaativo`
--
DROP TABLE IF EXISTS `empresaativo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `empresaativo`  AS SELECT `empresa`.`idEmpresa` AS `CÓDIGO`, `empresa`.`nomeEmpresa` AS `NOME DA EMPRESA`, `empresa`.`cnpjCpfEmpresa` AS `CNPJ/CPF`, `empresa`.`razaoSocialEmpresa` AS `RAZÃO SOCIAL`, `empresa`.`emailEmpresa` AS `E-MAIL`, `empresa`.`statusEmpresa` AS `STATUS`, `empresa`.`datCadEmpresa` AS `DATA DE CADASTRO`, `empresa`.`horarioAtendEmpresa` AS `HORÁRIO DE ATENDIMENTO` FROM `empresa` WHERE `empresa`.`statusEmpresa` = 'ATIVO' ORDER BY `empresa`.`nomeEmpresa` ASC ;

-- --------------------------------------------------------

--
-- Estrutura para vista `empresacompleta`
--
DROP TABLE IF EXISTS `empresacompleta`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `empresacompleta`  AS SELECT `empresa`.`idEmpresa` AS `CÓDIGO`, `empresa`.`nomeEmpresa` AS `NOME DA EMPRESA`, `empresa`.`cnpjCpfEmpresa` AS `CNPJ/CPF`, `empresa`.`razaoSocialEmpresa` AS `RAZÃO SOCIAL`, `empresa`.`emailEmpresa` AS `E-MAIL`, `empresa`.`statusEmpresa` AS `STATUS`, `empresa`.`datCadEmpresa` AS `DATA DE CADASTRO`, `empresa`.`horarioAtendEmpresa` AS `HORÁRIO DE ATENDIMENTO` FROM `empresa` ORDER BY `empresa`.`nomeEmpresa` ASC ;

-- --------------------------------------------------------

--
-- Estrutura para vista `empresafone`
--
DROP TABLE IF EXISTS `empresafone`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `empresafone`  AS SELECT `empresa`.`nomeEmpresa` AS `NOME DA EMPRESA`, `empresa`.`razaoSocialEmpresa` AS `RAZÃO SOCIAL`, `foneempresa`.`numeroEmpresa` AS `NÚMERO DA EMPRESA`, `empresa`.`emailEmpresa` AS `E-MAIL`, `empresa`.`statusEmpresa` AS `STATUS` FROM (`empresa` join `foneempresa` on(`empresa`.`idEmpresa` = `foneempresa`.`idEmpresa`)) ORDER BY `empresa`.`nomeEmpresa` ASC ;

-- --------------------------------------------------------

--
-- Estrutura para vista `empresainativa`
--
DROP TABLE IF EXISTS `empresainativa`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `empresainativa`  AS SELECT `empresa`.`idEmpresa` AS `CÓDIGO`, `empresa`.`nomeEmpresa` AS `NOME DA EMPRESA`, `empresa`.`cnpjCpfEmpresa` AS `CNPJ/CPF`, `empresa`.`razaoSocialEmpresa` AS `RAZÃO SOCIAL`, `empresa`.`emailEmpresa` AS `E-MAIL`, `empresa`.`statusEmpresa` AS `STATUS`, `empresa`.`datCadEmpresa` AS `DATA DE CADASTRO`, `empresa`.`horarioAtendEmpresa` AS `HORÁRIO DE ATENDIMENTO` FROM `empresa` WHERE `empresa`.`statusEmpresa` = 'INATIVA' ORDER BY `empresa`.`nomeEmpresa` ASC ;

-- --------------------------------------------------------

--
-- Estrutura para vista `funcionarioativo`
--
DROP TABLE IF EXISTS `funcionarioativo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `funcionarioativo`  AS SELECT `funcionario`.`idFuncionario` AS `CÓDIGO`, `funcionario`.`nomeFuncionario` AS `NOME FUNCIONARIO`, `funcionario`.`emailFuncionario` AS `E-MAIL`, `funcionario`.`nivelFuncionario` AS `NIVEL FUNCIONARIO`, `funcionario`.`statusFuncionario` AS `STATUS`, `empresa`.`nomeEmpresa` AS `NOME EMPRESA` FROM (`funcionario` join `empresa` on(`funcionario`.`idEmpresa` = `empresa`.`idEmpresa`)) WHERE `funcionario`.`statusFuncionario` = 'ATIVO' ORDER BY `funcionario`.`nomeFuncionario` ASC ;

-- --------------------------------------------------------

--
-- Estrutura para vista `funcionariocompleto`
--
DROP TABLE IF EXISTS `funcionariocompleto`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `funcionariocompleto`  AS SELECT `funcionario`.`idFuncionario` AS `CÓDIGO`, `funcionario`.`nomeFuncionario` AS `NOME FUNCIONARIO`, `funcionario`.`emailFuncionario` AS `E-MAIL`, `funcionario`.`senhaFuncionario` AS `SENHA`, `funcionario`.`nivelFuncionario` AS `NIVEL FUNCIONARIO`, `funcionario`.`statusFuncionario` AS `STATUS`, `funcionario`.`dataCadFuncionario` AS `DATA DE CADASTRO`, `funcionario`.`horarioTrabFunc` AS `CARGA HORARIA`, `empresa`.`nomeEmpresa` AS `NOME EMPRESA` FROM (`funcionario` join `empresa` on(`funcionario`.`idFuncionario` = `empresa`.`idEmpresa`)) ORDER BY `funcionario`.`nomeFuncionario` ASC ;

-- --------------------------------------------------------

--
-- Estrutura para vista `funcionariofone`
--
DROP TABLE IF EXISTS `funcionariofone`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `funcionariofone`  AS SELECT `funcionario`.`nomeFuncionario` AS `NOME DO FUNCIONÁRIO`, `funcionario`.`emailFuncionario` AS `E-MAIL`, group_concat(`fonefuncionario`.`numeroFuncionario`,' - ',`fonefuncionario`.`descFoneFuncionario` separator ',') AS `TELEFONE`, `funcionario`.`statusFuncionario` AS `STATUS`, `empresa`.`nomeEmpresa` AS `NOME DA EMPRESA` FROM ((`funcionario` join `empresa` on(`funcionario`.`idEmpresa` = `empresa`.`idEmpresa`)) join `fonefuncionario` on(`funcionario`.`idFuncionario` = `fonefuncionario`.`idFuncionario`)) GROUP BY `funcionario`.`nomeFuncionario` ORDER BY `funcionario`.`nomeFuncionario` ASC ;

-- --------------------------------------------------------

--
-- Estrutura para vista `funcionarioinativo`
--
DROP TABLE IF EXISTS `funcionarioinativo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `funcionarioinativo`  AS SELECT `funcionario`.`idFuncionario` AS `CÓDIGO`, `funcionario`.`nomeFuncionario` AS `NOME FUNCIONARIO`, `funcionario`.`emailFuncionario` AS `E-MAIL`, `funcionario`.`nivelFuncionario` AS `NIVEL FUNCIONARIO`, `funcionario`.`statusFuncionario` AS `STATUS`, `empresa`.`nomeEmpresa` AS `NOME EMPRESA` FROM (`funcionario` join `empresa` on(`funcionario`.`idEmpresa` = `empresa`.`idEmpresa`)) WHERE `funcionario`.`statusFuncionario` = 'INATIVO' ORDER BY `funcionario`.`nomeFuncionario` ASC ;

-- --------------------------------------------------------

--
-- Estrutura para vista `mensagemcontato`
--
DROP TABLE IF EXISTS `mensagemcontato`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `mensagemcontato`  AS SELECT `contato`.`idContato` AS `CÓDIGO CONTATO`, `contato`.`nomeContato` AS `NOME DO CONTATO`, `contato`.`emailContato` AS `E-MAIL CONTATO`, `contato`.`foneContato` AS `TELEFONE DO CONTATO`, `contato`.`mensagemCont` AS `MENSAGEM CONTATO` FROM `contato` ORDER BY `contato`.`idContato` ASC ;

-- --------------------------------------------------------

--
-- Estrutura para vista `reservacliente`
--
DROP TABLE IF EXISTS `reservacliente`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `reservacliente`  AS SELECT `reserva`.`dataReserva` AS `DATA DA RESERVA`, `reserva`.`horaReserva` AS `HORÁRIO`, `cliente`.`nomeCliente` AS `NOME DO CLIENTE`, `cliente`.`emailCliente` AS `E-MAIL`, `reserva`.`obsReserva` AS `OBSERVAÇÃO`, group_concat(`fonecliente`.`numeroCliente`,' - ',`fonecliente`.`descFoneCliente` separator ',') AS `NÚMERO FONE`, `servico`.`nomeServico` AS `NOME SERVIÇO` FROM (((`reserva` join `cliente` on(`reserva`.`idCliente` = `cliente`.`idCliente`)) join `fonecliente` on(`cliente`.`idCliente` = `fonecliente`.`idCliente`)) join `servico` on(`reserva`.`idServico` = `servico`.`idServico`)) GROUP BY `cliente`.`nomeCliente` ORDER BY `reserva`.`dataReserva` ASC, `reserva`.`horaReserva` ASC ;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`);

--
-- Índices para tabela `contato`
--
ALTER TABLE `contato`
  ADD PRIMARY KEY (`idContato`);

--
-- Índices para tabela `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`idEmpresa`);

--
-- Índices para tabela `fonecliente`
--
ALTER TABLE `fonecliente`
  ADD PRIMARY KEY (`idFoneCliente`),
  ADD KEY `idCliente` (`idCliente`);

--
-- Índices para tabela `foneempresa`
--
ALTER TABLE `foneempresa`
  ADD PRIMARY KEY (`idFoneEmpresa`),
  ADD KEY `idEmpresa` (`idEmpresa`);

--
-- Índices para tabela `fonefuncionario`
--
ALTER TABLE `fonefuncionario`
  ADD PRIMARY KEY (`idFoneFuncionario`),
  ADD KEY `idFuncionario` (`idFuncionario`);

--
-- Índices para tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`idFuncionario`),
  ADD KEY `idEmpresa` (`idEmpresa`);

--
-- Índices para tabela `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`idReserva`),
  ADD KEY `idCliente` (`idCliente`),
  ADD KEY `idFuncionario` (`idFuncionario`),
  ADD KEY `idServico` (`idServico`);

--
-- Índices para tabela `servico`
--
ALTER TABLE `servico`
  ADD PRIMARY KEY (`idServico`),
  ADD KEY `idEmpresa` (`idEmpresa`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `contato`
--
ALTER TABLE `contato`
  MODIFY `idContato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `empresa`
--
ALTER TABLE `empresa`
  MODIFY `idEmpresa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `fonecliente`
--
ALTER TABLE `fonecliente`
  MODIFY `idFoneCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `foneempresa`
--
ALTER TABLE `foneempresa`
  MODIFY `idFoneEmpresa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `fonefuncionario`
--
ALTER TABLE `fonefuncionario`
  MODIFY `idFoneFuncionario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `idFuncionario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `reserva`
--
ALTER TABLE `reserva`
  MODIFY `idReserva` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `servico`
--
ALTER TABLE `servico`
  MODIFY `idServico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `fonecliente`
--
ALTER TABLE `fonecliente`
  ADD CONSTRAINT `fonecliente_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `foneempresa`
--
ALTER TABLE `foneempresa`
  ADD CONSTRAINT `foneempresa_ibfk_1` FOREIGN KEY (`idEmpresa`) REFERENCES `empresa` (`idEmpresa`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `fonefuncionario`
--
ALTER TABLE `fonefuncionario`
  ADD CONSTRAINT `fonefuncionario_ibfk_1` FOREIGN KEY (`idFuncionario`) REFERENCES `funcionario` (`idFuncionario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD CONSTRAINT `funcionario_ibfk_1` FOREIGN KEY (`idEmpresa`) REFERENCES `empresa` (`idEmpresa`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `reserva_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `reserva_ibfk_2` FOREIGN KEY (`idFuncionario`) REFERENCES `funcionario` (`idFuncionario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `reserva_ibfk_3` FOREIGN KEY (`idServico`) REFERENCES `servico` (`idServico`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `servico`
--
ALTER TABLE `servico`
  ADD CONSTRAINT `servico_ibfk_1` FOREIGN KEY (`idEmpresa`) REFERENCES `empresa` (`idEmpresa`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
