-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 19-Mar-2018 às 12:51
-- Versão do servidor: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `propesq`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `bolsista`
--

CREATE TABLE `bolsista` (
  `id` int(11) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `matricula` varchar(13) NOT NULL,
  `login` varchar(100) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `rg` varchar(14) NOT NULL,
  `historico_escolar` varchar(200) NOT NULL,
  `curriculo` varchar(200) NOT NULL,
  `titulo_plano` varchar(200) NOT NULL,
  `email` varchar(150) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `agencia` varchar(15) NOT NULL,
  `conta` varchar(15) NOT NULL,
  `senha` varchar(100) NOT NULL,
  `campus` int(11) DEFAULT NULL,
  `tipo_projeto` varchar(400) DEFAULT NULL,
  `banco` varchar(150) NOT NULL,
  `id_orientador` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `bolsista`
--

INSERT INTO `bolsista` (`id`, `nome`, `matricula`, `login`, `cpf`, `rg`, `historico_escolar`, `curriculo`, `titulo_plano`, `email`, `telefone`, `agencia`, `conta`, `senha`, `campus`, `tipo_projeto`, `banco`, `id_orientador`) VALUES
(9, 'Thayane Lopes', '20152tijg0644', 'thayane', '333.333.333-33', '2222222', 'ok.pdf', 'wwww', 'plano qualquer', 'teste@email.com', '(81) 99999-9999', '3333-333', '333333-3', '25f9e794323b453885f5181f1b624d0b', 5, 'PIBIC GRAD IFPE', 'Caixa', 1),
(10, 'Sandra Lopes', '1234567891012', 'sandra', '999.999.999-99', '8888888888888', 'Briefing.docx', 'wwww', 'plano a', 'sandralopes1973@hotmail.com', '(81) 99999-9999', '8888-888', '888888-8', '25f9e794323b453885f5181f1b624d0b', 3, 'PIBITI GRAD CNPq', 'caixa', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `campus`
--

CREATE TABLE `campus` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `logradouro` varchar(100) NOT NULL,
  `numero_logradouro` int(11) NOT NULL,
  `complemento` varchar(150) NOT NULL,
  `bairro` varchar(80) NOT NULL,
  `cidade` varchar(80) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `cep` varchar(11) DEFAULT NULL,
  `numero` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `campus`
--

INSERT INTO `campus` (`id`, `nome`, `telefone`, `logradouro`, `numero_logradouro`, `complemento`, `bairro`, `cidade`, `estado`, `cep`, `numero`) VALUES
(3, 'Jaboatão dos Guararapes', '81979082153', 'rus tsd', 158, '', 'Barra de Jangada', 'jaboatao', 'PE', '54.490-000', NULL),
(4, 'Jaboatão dos Guararapes', '81979082535', 'sddddddddddddddssssssssss', 22222, 'sdddddddddddd', 'dssssssssssssssssssssss', 'fdgdgfdsdddddddd', 'AL', '54490000', NULL),
(5, 'Recife', '(33) 33333-3333', 'aaaaaaa', 123, '', 'sdddddd', 'Recife', 'PE', '22.222-222', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `formulario_frequencia`
--

CREATE TABLE `formulario_frequencia` (
  `id` int(11) NOT NULL,
  `id_bolsista` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `situacao_cronograma` varchar(150) DEFAULT NULL,
  `justificativa` varchar(140) DEFAULT NULL,
  `resumo_atividades` varchar(140) DEFAULT NULL,
  `carga_horaria` varchar(15) DEFAULT NULL,
  `interesse_atividades` varchar(15) DEFAULT NULL,
  `progresso_alcancado` varchar(15) DEFAULT NULL,
  `pagamento_bolsa` varchar(15) DEFAULT NULL,
  `comentarios_estudante` varchar(150) DEFAULT NULL,
  `comentarios_orientador` varchar(150) DEFAULT NULL,
  `data_entrega` date DEFAULT NULL,
  `status_bolsista` tinyint(1) DEFAULT NULL,
  `status_orientador` tinyint(1) DEFAULT NULL,
  `status_gestor` tinyint(1) DEFAULT NULL,
  `status_propesq` tinyint(1) DEFAULT NULL,
  `mesAno` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `formulario_frequencia`
--

INSERT INTO `formulario_frequencia` (`id`, `id_bolsista`, `id_usuario`, `situacao_cronograma`, `justificativa`, `resumo_atividades`, `carga_horaria`, `interesse_atividades`, `progresso_alcancado`, `pagamento_bolsa`, `comentarios_estudante`, `comentarios_orientador`, `data_entrega`, `status_bolsista`, `status_orientador`, `status_gestor`, `status_propesq`, `mesAno`) VALUES
(13, 10, NULL, NULL, NULL, 'aaaa', NULL, NULL, NULL, NULL, 'bbbbb', NULL, '2018-03-16', 1, NULL, NULL, NULL, '');

-- --------------------------------------------------------


--
-- Estrutura da tabela `tipo_usuario`
--

CREATE TABLE `tipo_usuario` (
  `id` int(11) NOT NULL,
  `descricao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tipo_usuario`
--

INSERT INTO `tipo_usuario` (`id`, `descricao`) VALUES
(1, 'orientador'),
(3, 'gestor'),
(4, 'propesq'),
(5, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bolsista`
--
ALTER TABLE `bolsista`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campus` (`campus`),
  ADD KEY `cpf` (`cpf`) USING BTREE,
  ADD KEY `id_orientador` (`id_orientador`);

--
-- Indexes for table `campus`
--
ALTER TABLE `campus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `formulario_frequencia`
--
ALTER TABLE `formulario_frequencia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_bolsista` (`id_bolsista`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indexes for table `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bolsista`
--
ALTER TABLE `bolsista`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `campus`
--
ALTER TABLE `campus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `formulario_frequencia`
--
ALTER TABLE `formulario_frequencia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `bolsista`
--
ALTER TABLE `bolsista`
  ADD CONSTRAINT `bolsista_ibfk_1` FOREIGN KEY (`campus`) REFERENCES `campus` (`id`);
COMMIT;
--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `login` varchar(100) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `rg` varchar(14) NOT NULL,
  `email` varchar(150) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `senha` varchar(100) NOT NULL,
  `campus` int(11) DEFAULT NULL,
  `tipo_usuario` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id`, `nome`, `login`, `cpf`, `rg`, `email`, `telefone`, `senha`, `campus`, `tipo_usuario`) VALUES
(1, 'Thayane Lopes', 'thayane', '333.333.333-33', '12344994', 'teste@email.com', '(88) 88888-8888', 'sha1:64000:18:KFMDEIGTUBakpgZ3KiQ0qYzrr9IFq2Ii:+zl5WJiArebCO10aH8nNk4C0', 4, '1'),
(2, 'Elinda', 'thayane', '999.999.999-99', '99999999999999', 'fndsihnf@iwfhfisu', '(99) 99999-9999', 'sha1:64000:18:WHFh4HNlvX6LyRitZD8Rm6KbrEGj0fMy:jD5odNEHEOIW7az2ekXH7hmj', 3, '3'),
(3, 'Elinda', 'thayane', '999.999.999-99', '99999999999999', 'fndsihnf@iwfhfisu', '(99) 99999-9999', 'sha1:64000:18:F4zbnWCjGk1VZiWyvUXYVcsztD9l5I47:5S0ml34pMPxyjW8X4z474W5e', 3, '3'),
(4, 'Elinda', 'thayane', '999.999.999-99', '99999999999999', 'fndsihnf@iwfhfisu', '(99) 99999-9999', 'sha1:64000:18:LVbqqIZd1VpQBBN79OZ/lcIkZdP07hhT:LMxO87zcV2DuwtVzP8Cea5hP', 3, '3'),
(5, 'Sandra Loeps', 'sandra', '888.888.888-88', '8888888', 'sdd@sdFs', '(81) 98777-7777', '25f9e794323b453885f5181f1b624d0b', 4, '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campus` (`campus`),
  ADD KEY `tipo_usuario` (`tipo_usuario`),
  ADD KEY `cpf` (`cpf`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
