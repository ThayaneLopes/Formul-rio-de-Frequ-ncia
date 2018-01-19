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
  `id_orientador` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `bolsista`
--

INSERT INTO `bolsista` (`id`, `nome`, `matricula`, `login`, `cpf`, `rg`, `historico_escolar`, `curriculo`, `titulo_plano`, `email`, `telefone`, `agencia`, `conta`, `senha`, `campus`, `tipo_projeto`, `banco`, `id_orientador`) VALUES
(1, 'Thayane Pereira Lopes da Silva', '324234', 'thayane', '104.496.294-14', '987654321', 'tumblr_ng91c1uzRI1rcfx2ho1_r1_1280.jpg', 'qweqwe', 'd', 'thayanelopes1997@live.com', '8133046256', '324234', '234234', 'sha1:64000:18:50pVp1nYhKvjKpwzmTbUaclk1hWj7xup:Dyjw4UehEDuiNxPJS0AJ0vte', 3, 'PIBITI GRAD CNPq', 'bb', 0),
(2, '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '', 0);

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
(1, 'Thayane Pereira Lopes da Silva', '8133046256', 'ddd', 158, 'Jardim Progresso', 'Barra de Jangada', 'dsffdfd', 'AC', '55555-555', NULL),
(2, 'Jaboatão dos Guararapes', '81979082153', 'rus tsd', 158, '', 'Barra de Jangada', 'jaboatao', 'PE', '54.490-000', NULL),
(3, 'Jaboatão dos Guararapes', '81979082153', 'rus tsd', 158, '', 'Barra de Jangada', 'jaboatao', 'PE', '54.490-000', NULL),
(4, 'Jaboatão dos Guararapes', '81979082153', 'rus tsd', 158, '', '', 'jaboatao', 'PE', '54.490-000', NULL),
(5, 'Jaboatão dos Guararapes', '81979082153', 'rus tsd', 158, '', '', 'jaboatao', 'PE', '54.490-000', NULL),
(6, 'Thayane Pereira Lopes da Silva', '8133046256', 'ddd', 158, 'Jardim Progresso', 'Barra de Jangada', 'dsffdfd', 'AC', '55555-555', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `formulario_frequencia`
--

CREATE TABLE `formulario_frequencia` (
  `id` int(11) NOT NULL,
  `mes_ano` varchar(7) NOT NULL,
  `id_bolsista` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `situacao_cronograma` varchar(150) NOT NULL,
  `justificativa` varchar(140) NOT NULL,
  `resumo_atividades` varchar(140) NOT NULL,
  `carga_horaria` varchar(15) NOT NULL,
  `interesse_atividades` varchar(15) NOT NULL,
  `progresso_alcancado` varchar(15) NOT NULL,
  `pagamento_bolsa` varchar(15) NOT NULL,
  `comentarios_estudante` varchar(150) DEFAULT NULL,
  `comentarios_orientador` varchar(150) DEFAULT NULL,
  `data_entrega` date DEFAULT NULL,
  `mesAno` varchar(255) DEFAULT NULL
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
(3, 'Gestor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bolsista`
--
ALTER TABLE `bolsista`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campus` (`campus`),
  ADD KEY `cpf` (`cpf`) USING BTREE;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `campus`
--
ALTER TABLE `campus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `formulario_frequencia`
--
ALTER TABLE `formulario_frequencia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
