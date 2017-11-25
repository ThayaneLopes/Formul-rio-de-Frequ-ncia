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
  `telefone` varchar(14) NOT NULL,
  `agencia` varchar(7) NOT NULL,
  `conta` varchar(7) NOT NULL,
  `senha` varchar(12) NOT NULL,
  `campus` int(11) DEFAULT NULL
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
  `cep` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `formulario_frequencia`
--

CREATE TABLE `formulario_frequencia` (
  `id` int(11) NOT NULL,
  `mes_ano` varchar(7) NOT NULL,
  `id_bolsista` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `tipo_projeto` varchar(100) NOT NULL,
  `situacao_cronograma` varchar(150) NOT NULL,
  `justificativa` varchar(140) NOT NULL,
  `resumo_atividades` varchar(140) NOT NULL,
  `carga_horaria` varchar(15) NOT NULL,
  `interesse_atividades` varchar(15) NOT NULL,
  `progresso_alcancado` varchar(15) NOT NULL,
  `pagamento_bolsa` varchar(15) NOT NULL,
  `comentarios_estudante` varchar(150) DEFAULT NULL,
  `comentarios_orientador` varchar(150) DEFAULT NULL,
  `data_entrega` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_usuario`
--

CREATE TABLE `tipo_usuario` (
  `id` int(11) NOT NULL,
  `descricao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `login` varchar(100) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `rg` varchar(14) NOT NULL,
  `email` varchar(100) NOT NULL,
  `curriculo` varchar(200) NOT NULL,
  `telefone` varchar(14) NOT NULL,
  `campus` int(11) DEFAULT NULL,
  `tipo_usuario` int(11) DEFAULT NULL,
  `senha` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bolsista`
--
ALTER TABLE `bolsista`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campus` (`campus`);

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
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `campus`
--
ALTER TABLE `campus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `formulario_frequencia`
--
ALTER TABLE `formulario_frequencia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `bolsista`
--
ALTER TABLE `bolsista`
  ADD CONSTRAINT `bolsista_ibfk_1` FOREIGN KEY (`campus`) REFERENCES `campus` (`id`);

--
-- Limitadores para a tabela `formulario_frequencia`
--
ALTER TABLE `formulario_frequencia`
  ADD CONSTRAINT `formulario_frequencia_ibfk_1` FOREIGN KEY (`id_bolsista`) REFERENCES `bolsista` (`id`),
  ADD CONSTRAINT `formulario_frequencia_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`);

--
-- Limitadores para a tabela `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`campus`) REFERENCES `campus` (`id`),
  ADD CONSTRAINT `usuario_ibfk_2` FOREIGN KEY (`tipo_usuario`) REFERENCES `tipo_usuario` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
