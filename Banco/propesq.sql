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
(1, 'Thayane Lopes', '1234567891012', 'thayane', '999.999.999-99', '12344994', '417583671350a2cce56f8e2e7c8b1093--cone-dos-desenhos-animados-bola-de-natal-15.png', 'www', 'plano 1', 'teste@email.com', '(81) 97908-2434', '0123-455', '000000-0', 'sha1:64000:18:p0CNmAURMtMUXC4lNaubAZ0Ln0mt8Hwj:cH5lk0B+3J0gHVZIgRJZK8sj', 3, 'PIBITI GRAD CNPq', 'banco do brasil', 1),
(3, 'Thayane Lopes', '1234567891012', 'sandra', '999.999.999-99', '12344994', 'd8fd0ecf239e0007d54bb163b3ce18de.jpg', 'www', 'ffff', 'teste@email.com', '(81) 97908-2434', '0123-455', '000000-0', 'sha1:64000:18:qvn8RDmzMkBRtfJtvLnoHoEDULkUjyPi:QAh6NMQ8p70kQ+ddbSyecvIu', 3, 'PIBIC AF IFPE', 'banco do brasil', 1);

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
(3, 'Jaboatão dos Guararapes', '81979082153', 'rus tsd', 158, '', 'Barra de Jangada', 'jaboatao', 'PE', '54.490-000', NULL),
(4, 'Jaboatão dos Guararapes', '81979082535', 'sddddddddddddddssssssssss', 22222, 'sdddddddddddd', 'dssssssssssssssssssssss', 'fdgdgfdsdddddddd', 'AL', '54490000', NULL);

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
  `data_entrega` varchar(15) DEFAULT NULL,
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

--
-- Extraindo dados da tabela `formulario_frequencia`
--

INSERT INTO `formulario_frequencia` (`id`, `id_bolsista`, `id_usuario`, `situacao_cronograma`, `justificativa`, `resumo_atividades`, `carga_horaria`, `interesse_atividades`, `progresso_alcancado`, `pagamento_bolsa`, `comentarios_estudante`, `comentarios_orientador`, `data_entrega`, `mesAno`, `nome_bolsista`, `matricula_bolsista`, `titulo_plano`, `tipo_projeto`, `nome_orientador`, `status_bolsista`, `status_orientador`, `status_gestor`, `status_propesq`) VALUES
(1, 1, 1, 'eeee', 'eee', 'ee', NULL, NULL, NULL, NULL, 'eee', 'eeee', '2018-01-17', NULL, 'thayane', 'sdfsg', 'sddsd', 'sdfsdfd', 'dsffdsf', NULL, NULL, NULL, NULL);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `campus`
--
ALTER TABLE `campus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
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
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `bolsista`
--
ALTER TABLE `bolsista`
  ADD CONSTRAINT `bolsista_ibfk_1` FOREIGN KEY (`campus`) REFERENCES `campus` (`id`),
  ADD CONSTRAINT `id_orientador` FOREIGN KEY (`id_orientador`) REFERENCES `usuario` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
