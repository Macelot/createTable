show databases;
use test;
show tables;

CREATE TABLE IF NOT EXISTS `usuario_testes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `salario` float(14,2) DEFAULT NULL,
  `data_cadastro` datetime DEFAULT CURRENT_TIMESTAMP,
  `peso` float(7,3) DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  `imagem` longblob,
  `nascimento` date DEFAULT NULL, 
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

desc usuario_testes;


CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `senha` varchar(30) DEFAULT NULL,
  `data_cadastro` datetime DEFAULT CURRENT_TIMESTAMP,
  `salario` float(14,2) DEFAULT NULL,
  `altura` float(4,2) DEFAULT NULL,
  `peso` float(7,3) DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  `imagem` longblob,
  `celular` varchar(20) DEFAULT NULL,
  `nascimento` date DEFAULT NULL, 
  `versao` int(11) DEFAULT NULL,
  `ativo` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;


CREATE TABLE IF NOT EXISTS `pessoas` (
  `id` int(30) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `idade` int(11) NOT NULL,
  `datanascimento` varchar(30) NOT NULL,
  `cor` varchar(30) NOT NULL,
  `nacionalidade` varchar(30) NOT NULL,
  `genero` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `peso` varchar(30) NOT NULL,
  `sanguineo` varchar(30) NOT NULL,
  `cordolho` varchar(30) NOT NULL,
  PRIMARY KEY (`nome`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pessoas`
--

INSERT INTO `pessoas` (`nome`, `idade`, `datanascimento`, `cor`, `nacionalidade`, `genero`, `email`, `peso`, `sanguineo`, `cordolho`) VALUES
('Nathalia', 20, '25/08/1995', 'Branca', 'Brasileira', 'Feminino', 'nathyzinha@gmail.com', '45', 'A+', 'Verde'),
('Roberto', 20, '30/09/1995', 'Negro', 'Africana', 'Masculino', 'robertão24@gmail.com', '85', 'O-', 'Castanho'),
('Pedro', 17, '11/06/1999', 'Branco', 'Brasileira', 'Masculino', 'pedrão13@gmail.com', '65', 'A+', 'Azul'),
('Caio', 20, '29/07/1995', 'Negro', 'Inglesa', 'Masculino', 'Caião@gmail.com', '90', 'A-', 'Castanho'),
('Felipe', 17, '13//04/1999', 'Branco', 'Brasileira', 'Masculino', 'Feripão@gmail.com', '71', 'B+', 'Verde'),
('Bianca', 20, '24/06/1995', 'Branca', 'Brasileira', 'Feminino', 'Biankis@gmial.com', '55', 'A-', 'Castanho'),
('Mitsuki', 20, '15/10/1995', 'Branca', 'Japonesa', 'Feminino', 'Mitsis@gmail.com', '30', 'AB+', 'Azul'),
('Katarina', 20, '18/09/1995', 'Branca', 'Brasileira', 'Feminino', 'katsis@gmail.com', '45', 'A+', 'Verde'),
('Jihad', 20, '30/11/1995', 'Negro', 'Árabe', 'Masculino', 'allahu.jihadão@gmail.com', '84', 'B+', 'Castanho'),
('Gabriela', 20, '17/05/1995', 'Branca', 'Brasileira', 'Feminino', 'gabsis@gmail.com', '50', 'A-', 'Verde'),
('Anna', 20, '31/07/1995', 'Branca', 'Inglesa', 'Feminino', 'annis@gmail.com', '37', 'AB+', 'Verde'),
('Marthina', 20, '14/09/1995', 'Branca', 'Brasileira', 'Feminino', 'Martinhas@gmail.com', '51', 'A-', 'Castanho'),
('Carolina', 20, '11/06/1999', 'Branca', 'Brasileira', 'Feminino', 'carolis@gmail.com', '57', 'B-', 'Azul'),
('Laura', 20, '16/06/1995', 'Branca', 'Brasileira', 'Feminino', 'lauris@gmail.com', '49', 'O-', 'Verde'),
('Judineia', 20, '14/07/1995', 'Branca', 'Brasileira', 'Feminino', 'judinis@gmail.com', '53', 'A+', 'Azul'),
('Juditi', 20, '14/07/1995', 'Branca', 'Brasileira', 'Feminino', 'judis@gmail.com', '47', 'A+', 'Azul'),
('Cleyton', 20, '19/07/1995', 'Branca', 'Brasileira', 'Masculino', 'cleytão@gmail.com', '75', 'B-', 'Castanho'),
('Coquito', 20, '17/04/1995', 'Branca', 'Africana', 'Masculino', 'cocão@gmail.com', '60', 'A+', 'Verde'),
('Bruno', 17, '30/07/1999', 'Branca', 'Brasileira', 'Masculino', 'brunão@gmail.com', '64', 'AB+', 'Verde'),
('Laís', 20, '15/05/1995', 'Branca', 'Brasileira', 'Feminino', 'laisis@gmail.com', '50', 'A-', 'Verde');




--
-- Estrutura da tabela `cidades`
--

CREATE TABLE IF NOT EXISTS `cidades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cidade` varchar(30) NOT NULL,
  `estado` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Extraindo dados da tabela `cidades`
--

INSERT INTO `cidades` (`id`, `cidade`, `estado`) VALUES
(1, 'Novo Hamburgo', 1),
(2, 'Campo Bom', 1),
(3, 'Florianópolis', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `estados`
--

CREATE TABLE IF NOT EXISTS `estados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `estado` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `estados`
--

INSERT INTO `estados` (`id`, `estado`) VALUES
(1, 'Rio Grande do Sul'),
(2, 'Santa Catarina');