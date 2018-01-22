-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 22-Jan-2018 às 16:39
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

-- --------------------------------------------------------

--
-- Estrutura da tabela `campus`
--

CREATE TABLE `campus` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `telefone` varchar(14) NOT NULL,
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
(3, 'JaboatÃ£o dos Guararapes', '81979082153', 'rus tsd', 158, '', 'Barra de Jangada', 'jaboatao', 'PE', '54.490-000', NULL);

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
  `mesAno` varchar(255) DEFAULT NULL,
  `nome_bolsista` varchar(150) DEFAULT NULL,
  `matricula_bolsista` varchar(14) DEFAULT NULL,
  `titulo_plano` varchar(150) DEFAULT NULL,
  `tipo_projeto` varchar(100) DEFAULT NULL,
  `nome_orientador` varchar(150) DEFAULT NULL,
  `status_bolsista` tinyint(1) DEFAULT NULL,
  `status_orientador` tinyint(1) DEFAULT NULL,
  `status_gestor` tinyint(1) DEFAULT NULL,
  `status_propesq` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(1, 'Orientador'),
(3, 'Gestor'),
(4, 'propesq');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario2`
--

CREATE TABLE `usuario2` (
  `id` int(11) NOT NULL,
  `nome` varchar(14) NOT NULL,
  `login` varchar(14) NOT NULL,
  `senha` varchar(14) NOT NULL,
  `curriculo` varchar(14) NOT NULL,
  `telefone` varchar(14) NOT NULL,
  `rg` varchar(14) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `email` varchar(14) NOT NULL,
  `campus` int(11) DEFAULT NULL,
  `tipo_usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Indexes for table `usuario2`
--
ALTER TABLE `usuario2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campus` (`campus`),
  ADD KEY `tipo_usuario` (`tipo_usuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bolsista`
--
ALTER TABLE `bolsista`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `campus`
--
ALTER TABLE `campus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `formulario_frequencia`
--
ALTER TABLE `formulario_frequencia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `usuario2`
--
ALTER TABLE `usuario2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `bolsista`
--
ALTER TABLE `bolsista`
  ADD CONSTRAINT `bolsista_ibfk_1` FOREIGN KEY (`campus`) REFERENCES `campus` (`id`),
  ADD CONSTRAINT `id_orientador` FOREIGN KEY (`id_orientador`) REFERENCES `usuario2` (`id`);

--
-- Limitadores para a tabela `usuario2`
--
ALTER TABLE `usuario2`
  ADD CONSTRAINT `usuario2_ibfk_1` FOREIGN KEY (`campus`) REFERENCES `campus` (`id`),
  ADD CONSTRAINT `usuario2_ibfk_2` FOREIGN KEY (`tipo_usuario`) REFERENCES `tipo_usuario` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
