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
DROP DATABASE IF EXISTS `etec_rpg`;
CREATE DATABASE IF NOT EXISTS `etec_rpg` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `etec_rpg`;

-- Copiando dados para a tabela etec_rpg.antepassado: ~37 rows (aproximadamente)
DELETE FROM `antepassado`;
/*!40000 ALTER TABLE `antepassado` DISABLE KEYS */;
INSERT INTO `antepassado` (`id`, `nome`, `descricao`, `pericia`, `equipamento`, `credito`) VALUES
	(1, 'Estudante', 'Você é um estudante no ensino médio ou faculdade.', 'Atualidades: +2, Análise +1', 'Bolsa Larga', '0'),
	(2, 'Artista Marcial', 'Você dedica boa parte do seu tempo livre à prática de artes marciais, ou pratica profissionalmente.', ' Luta +2, Atletismo +1', 'Soco Inglês', '1'),
	(3, 'Fazendeiro', 'Você tem aptidão com a natureza, trabalhando no campo ou  rancho.', 'Sobrevivência +2 (PE), Lâmina +1', 'Enxada', '2'),
	(4, 'Policial', 'Você combate o crime, seja policial militar ou civil, e é treinado com armas de fogo.', 'Rifles +1, Pistolas +2', 'Pistola', '2'),
	(5, 'Professor', 'A sua vocação é ensinar aos outros, então você escolheu a área de educador.', 'Acalmar +1, Intuição +1, Atualidades +1', 'Bolsa Comum', '1'),
	(6, 'Mecânico', 'Você é especializado em ', 'Mecânica +2, Direção +1 (PE)', 'Kit de Mecânica', '2'),
	(7, 'Criminoso', 'Você não quis ganhar dinheiro de acordo com a lei, então decidiu cometer ilegalidades.', 'Arrombamento +1 (PE), Furtividade +2', ' Kit de Arrombamento', '0'),
	(8, 'Herdeiro', 'Você vem de uma família rica.', NULL, NULL, '10'),
	(9, 'Segurança', 'Você trabalha para assegurar a proteção de algo ou alguém. (EX: Segurança de Shopping a até um guarda costas)', 'Pistola +1, Procurar +2', 'Pistola', '2'),
	(10, 'Artista', 'Através de arte (pinturas, canções, etc) você conquistou sua carreira', ' Um tipo de arte da sua escolha (instrumentos, pintar, etc.) (PE) +2, Persuadir +1', 'Ferramenta artística', '1'),
	(11, 'Médico', 'Você é um especialista em medicina, sabendo quase todos os detalhes do corpo humano.', 'Medicina +2, Intuição +1', 'Bolsa Médica', '5'),
	(12, 'Paramédico', 'Você auxilia os serviços médicos trabalhando com primeiros socorros. Pode ser enfermeiro, fisioterapeuta, etc.', 'Primeiros Socorros +2, Acalmar +1', 'Kit de Primeiros-Socorros', '2'),
	(13, 'Bombeiro', 'Você arrisca a sua vida para salvar pessoas, seja combatendo incêndios, resgatar pessoas ou atuar em emergências.', 'Acalmar +1, Atletismo +1, Primeiros Socorros +1', 'Roupa Protegida (I)', '2'),
	(14, 'Influencer Digital', 'Você gosta de influenciar as pessoas, ou apenas ter um público que goste das mesmas coisas que você. ', 'Persuadir +2, Enganar +1', 'Celular', '1'),
	(15, 'Empreendedor', 'Através de seu empreendimento você conseguiu sua independência financeira.', 'Persuadir +2, Finanças +1 (PE)', 'Bolsa', '2'),
	(16, 'Assalariado', 'Você é um trabalhador comum, sendo um funcionário de uma empresa.', 'Informática +2, Persuasão +1', 'Veículo (10C)', '1'),
	(17, 'Filósofo', 'Sua percepção sobre a vida é grandiosa, com ela você questiona o motivo das coisas, querendo descobrir a resposta do mundo.', 'Atualidades +2, Análise +1', 'Livro', '0'),
	(18, 'Advogado', 'Você sempre teve interesse nas leis e na justiça. Você defende o direito dos indivíduos, podendo ser para o bem ou para o mal.', 'Persuadir +2, Enganação +1', 'Livro de Direito (Livro)', '3'),
	(19, 'Órfão', 'Você cresceu em um orfanato pelo abandono ou falecimento dos seus pais.', 'Intuição +2, Furtividade +1', 'Bolsa Grande', '0'),
	(20, 'Trambiqueiro', 'Você é um indivíduo que tenta sair por cima das situações, usando sua lábia traiçoeira e seus conhecimentos.', 'Enganar +1, Persuadir +1, Atualidades +1', 'Pé de Cabra', '1'),
	(21, 'Atleta', 'Você se dedicou a práticas físicas podendo ser algo amador a profissional.', 'Atletismo +2, Acrobacia +1', 'Marmita', '3'),
	(22, 'Marmita', 'Você trabalha divulgação de produtos diversos, podendo ser: Roupas, Lanchonetes, etc)', 'Charme +2, Acrobacia +1', 'Celular', '3'),
	(23, 'Jornalista', 'Você trabalha com comunicação de informações as informa para um público. Sabendo sempre o que está rolando e tendo uma interpretação completa.', 'Atualidades +2, Análise +1', 'Câmera', '2'),
	(24, 'Ator', 'Você trabalha com atuação, sendo aquele que através dela convence os outros e encanta o público. ', 'Persuadir +1, Charme +2', 'Maquiagem', '3'),
	(25, 'Apostador', 'Você uma fissura por apostas, desde jogos na qual tenha controle como poker a talvez o acaso dos jogos de azar. Com isso suas habilidades ligadas a apostas são excepcionais.', 'Enganação +2, Análise +1', 'Jogos de aposta', 'Sorte'),
	(26, 'Veterinário', 'Você trabalha cuidando de animais, podendo ser criaturas domesticadas e selvagens de diversas formas e tamanhos.', 'Medicina +2, Adestrar +1', 'Bolsa Médica', '2'),
	(27, 'Coveiro', 'Você é um zelador de um cemitério, sendo aquele que escava o último lugar dos mortos. Essa vida te garantiu um certa facilidade em atividades usando músculos e a capacidade de consolar aqueles que lamentam as mortes', 'Atletismo +2, Acalmar +1.', 'Pá (Bastão Grande)', '1'),
	(28, 'Mordomo', 'Você se especializou em trabalhar com a gestão de residências ou hoteis.', 'Serviços +2 (PE), Procurar +1', 'Terno (Roupa Protegida (I))', '2'),
	(29, 'Pescador', 'Você trabalha com pesca de animais marinhos, você pode ser um simples pescador autônomo ou em um barco de pesca.', 'Atletismo +1 Sobrevivência +2 (PE)', 'Vara De Pesca (Bastão Grande)', '1'),
	(30, 'Conspirador', NULL, NULL, 'Chapéu de Alumínio (Capacete)', '1'),
	(31, 'Paparazzi', 'Você trabalha com a divulgação de imagens de pessoas famosas de maneira clandestina', 'Furtividade +1, Fotografia (PE) +2', ' Câmera', '1'),
	(32, 'Psicólogo', NULL, 'Acalmar +2, Intuição +1 ', 'Livro de psicanálise (Livro)', '3'),
	(33, 'Motorista', 'Você trabalha como motorista de aplicativo ou talvez algo profissional como táxi, seja qual for, graças a anos de prática isso o fez um ótimo piloto.', 'Direção +3 (PE)', 'Veículo', '1'),
	(34, 'Aposentado', 'Você já contribuiu muito para a sociedade, e agora tem ou possui mais de 65 anos e recebe o benefício aposentadoria.', 'Intuição +2, Charme +1', ' Pochete (bolsa)', '1'),
	(35, 'Cientista', 'Você é um profissional em uma área complexa (Química, Física, etc), embora muitos a vejam com difícil demais, para você aquilo tem as maravilhas disso.', 'Atualidades +2, Análise +1', 'Óculos de visão no escuro', '3'),
	(36, 'Desempregado', 'Devido ao sistema capitalista, houve uma crescente onda de desempregados, ou seja, pessoas que não possuem empregos.', ' Iniciativa +1, Procurar +2', 'Celular', '0'),
	(37, 'Fanático', 'Seu interesse em algo é inigualável, o fazendo um seguidor fiel dessa ideologia. (Substitua o “X” por seu fanatismo)', 'Fanático por X +3 (PE) ', 'Livro sobre X', '1');
/*!40000 ALTER TABLE `antepassado` ENABLE KEYS */;

-- Copiando dados para a tabela etec_rpg.bestiario: ~0 rows (aproximadamente)
DELETE FROM `bestiario`;
/*!40000 ALTER TABLE `bestiario` DISABLE KEYS */;
/*!40000 ALTER TABLE `bestiario` ENABLE KEYS */;

-- Copiando dados para a tabela etec_rpg.equipamento: ~0 rows (aproximadamente)
DELETE FROM `equipamento`;
/*!40000 ALTER TABLE `equipamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `equipamento` ENABLE KEYS */;

-- Copiando dados para a tabela etec_rpg.habilidade: ~0 rows (aproximadamente)
DELETE FROM `habilidade`;
/*!40000 ALTER TABLE `habilidade` DISABLE KEYS */;
/*!40000 ALTER TABLE `habilidade` ENABLE KEYS */;

-- Copiando dados para a tabela etec_rpg.poder: ~0 rows (aproximadamente)
DELETE FROM `poder`;
/*!40000 ALTER TABLE `poder` DISABLE KEYS */;
/*!40000 ALTER TABLE `poder` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
