-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.1.33-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win32
-- HeidiSQL Versão:              9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para etec_rpg
CREATE DATABASE IF NOT EXISTS `etec_rpg` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `etec_rpg`;

-- Copiando estrutura para tabela etec_rpg.antepassado
CREATE TABLE IF NOT EXISTS `antepassado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `descricao` text,
  `pericia` varchar(200) DEFAULT NULL,
  `equipamento` varchar(200) DEFAULT NULL,
  `credito` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela etec_rpg.antepassado: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `antepassado` DISABLE KEYS */;
/*!40000 ALTER TABLE `antepassado` ENABLE KEYS */;

-- Copiando estrutura para tabela etec_rpg.antepassados
CREATE TABLE IF NOT EXISTS `antepassados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `descricao` text,
  `pericia` varchar(200) DEFAULT NULL,
  `equipamento` varchar(200) DEFAULT NULL,
  `credito` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela etec_rpg.antepassados: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `antepassados` DISABLE KEYS */;
/*!40000 ALTER TABLE `antepassados` ENABLE KEYS */;

-- Copiando estrutura para tabela etec_rpg.bestiario
CREATE TABLE IF NOT EXISTS `bestiario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `descricao` text,
  `nd` varchar(50) DEFAULT NULL,
  `atributos` varchar(200) DEFAULT NULL,
  `pericias` varchar(200) DEFAULT NULL,
  `velocidade` int(11) DEFAULT NULL,
  `vida` int(11) DEFAULT NULL,
  `mental` int(11) DEFAULT NULL,
  `energia` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela etec_rpg.bestiario: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `bestiario` DISABLE KEYS */;
/*!40000 ALTER TABLE `bestiario` ENABLE KEYS */;

-- Copiando estrutura para tabela etec_rpg.comentario
CREATE TABLE IF NOT EXISTS `comentario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `texto` text NOT NULL,
  `autor` varchar(50) DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  `post_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`),
  CONSTRAINT `comentario_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `lista` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela etec_rpg.comentario: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `comentario` DISABLE KEYS */;
/*!40000 ALTER TABLE `comentario` ENABLE KEYS */;

-- Copiando estrutura para tabela etec_rpg.equipamento
CREATE TABLE IF NOT EXISTS `equipamento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `custo` varchar(50) DEFAULT NULL,
  `volume` varchar(50) DEFAULT NULL,
  `descricao` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela etec_rpg.equipamento: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `equipamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `equipamento` ENABLE KEYS */;

-- Copiando estrutura para tabela etec_rpg.equipamentos
CREATE TABLE IF NOT EXISTS `equipamentos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `custo` varchar(50) DEFAULT NULL,
  `volume` varchar(50) DEFAULT NULL,
  `descricao` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela etec_rpg.equipamentos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `equipamentos` DISABLE KEYS */;
/*!40000 ALTER TABLE `equipamentos` ENABLE KEYS */;

-- Copiando estrutura para tabela etec_rpg.habilidade
CREATE TABLE IF NOT EXISTS `habilidade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `condicao` varchar(200) DEFAULT NULL,
  `descricao` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela etec_rpg.habilidade: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `habilidade` DISABLE KEYS */;
/*!40000 ALTER TABLE `habilidade` ENABLE KEYS */;

-- Copiando estrutura para tabela etec_rpg.habilidades
CREATE TABLE IF NOT EXISTS `habilidades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `condicao` varchar(200) DEFAULT NULL,
  `descricao` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela etec_rpg.habilidades: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `habilidades` DISABLE KEYS */;
/*!40000 ALTER TABLE `habilidades` ENABLE KEYS */;

-- Copiando estrutura para tabela etec_rpg.lista
CREATE TABLE IF NOT EXISTS `lista` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `topico` varchar(20) DEFAULT NULL,
  `autor` varchar(15) DEFAULT NULL,
  `tema` varchar(30) DEFAULT NULL,
  `atualizacao` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela etec_rpg.lista: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `lista` DISABLE KEYS */;
/*!40000 ALTER TABLE `lista` ENABLE KEYS */;

-- Copiando estrutura para tabela etec_rpg.poder
CREATE TABLE IF NOT EXISTS `poder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `requisito` varchar(200) DEFAULT NULL,
  `custo` varchar(100) DEFAULT NULL,
  `uso` varchar(200) DEFAULT NULL,
  `descricao` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela etec_rpg.poder: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `poder` DISABLE KEYS */;
/*!40000 ALTER TABLE `poder` ENABLE KEYS */;

-- Copiando estrutura para tabela etec_rpg.poderes
CREATE TABLE IF NOT EXISTS `poderes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `requisito` varchar(200) DEFAULT NULL,
  `custo` varchar(100) DEFAULT NULL,
  `uso` varchar(200) DEFAULT NULL,
  `descricao` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela etec_rpg.poderes: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `poderes` DISABLE KEYS */;
/*!40000 ALTER TABLE `poderes` ENABLE KEYS */;

-- Copiando estrutura para tabela etec_rpg.respostas
CREATE TABLE IF NOT EXISTS `respostas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `autor` varchar(100) NOT NULL,
  `conteudo` text NOT NULL,
  `data_criacao` datetime DEFAULT NULL,
  `topico_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `topico_id` (`topico_id`),
  CONSTRAINT `respostas_ibfk_1` FOREIGN KEY (`topico_id`) REFERENCES `topicos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela etec_rpg.respostas: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `respostas` DISABLE KEYS */;
/*!40000 ALTER TABLE `respostas` ENABLE KEYS */;

-- Copiando estrutura para tabela etec_rpg.topicos
CREATE TABLE IF NOT EXISTS `topicos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `autor` varchar(100) NOT NULL,
  `topico` varchar(200) NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `conteudo` text NOT NULL,
  `data_criacao` datetime DEFAULT NULL,
  `data_atualizacao` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela etec_rpg.topicos: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `topicos` DISABLE KEYS */;
INSERT IGNORE INTO `topicos` (`id`, `autor`, `topico`, `categoria`, `conteudo`, `data_criacao`, `data_atualizacao`) VALUES
	(9, 'Ana Silva', 'Como o Vale Místico pode ajudar na depressão?', 'duvida', 'Estou interessado no sistema Vale Místico para trabalhar ansiedade em grupo. Alguém já usou para este fim?', '2025-11-28 13:56:02', '2025-11-28 13:56:02'),
	(10, 'Carlos Mendes', 'Procurando grupo para Vale Místico', 'procurando', 'Busco grupo para sessões semanais de Vale Místico com foco em desenvolvimento pessoal e saúde mental.', '2025-11-28 13:56:02', '2025-11-28 13:56:02'),
	(11, 'Marina Costa', 'Sugestão: Guia de facilitadores para iniciantes', 'sugestao', 'Seria ótimo termos um guia com técnicas para facilitar sessões de Vale Místico com grupos terapêuticos.', '2025-11-28 13:56:02', '2025-11-28 13:56:02'),
	(12, 'Dr. Rafael Lima', 'Discussão: Integrando Vale Místico na terapia em grupo', 'discussao', 'Vamos discutir como integrar as mecânicas do Vale Místico em contextos de terapia em grupo.', '2025-11-28 13:56:02', '2025-11-28 13:56:02'),
	(13, 'Juliana Santos', 'Dúvida sobre a mecânica de "token"', 'duvida', 'Alguém pode explicar melhor como funcionam as jornadas emocionais e como aplicar com diferentes públicos?', '2025-11-28 13:56:02', '2025-11-28 13:56:02'),
	(15, 'Ana Silva', 'Como o Vale Místico pode ajudar com depressão?', 'duvida', 'Estou interessado no sistema Vale Místico para trabalhar ansiedade em grupo. Alguém já usou para este fim?', '2025-11-28 13:56:21', '2025-11-28 13:56:21');
/*!40000 ALTER TABLE `topicos` ENABLE KEYS */;

-- Copiando estrutura para tabela etec_rpg.usuario
CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) NOT NULL,
  `senha` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela etec_rpg.usuario: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT IGNORE INTO `usuario` (`id`, `nome`, `senha`) VALUES
	(1, 'Batata', 'scrypt:32768:8:1$VlcPEGTsfvI5FIa7$8aff3311850092a6ab804e500d92fd05abe7ba9c9d75676f2733f5c4b5004345b5ecc16b0465df5002150cf27da4f85cc1c7c4456fc3ff004dd4113fbb3134c0'),
	(2, 'Zeliz', 'scrypt:32768:8:1$k2Sz1ohily6aLSpP$49dba82493b5c5f398e6f55f489255213c3b8ca1a7f74898cb2ec4524ee058156adeda9f2230bf9d9b3bca6db85b847039f854df2d6cb4c816d9b3c1522824d1');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
