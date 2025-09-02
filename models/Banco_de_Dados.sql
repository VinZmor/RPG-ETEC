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
CREATE DATABASE IF NOT EXISTS `etec_rpg` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `etec_rpg`;

-- Copiando estrutura para tabela etec_rpg.antepassados
DROP TABLE IF EXISTS `antepassados`;
CREATE TABLE IF NOT EXISTS `antepassados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `descricao` text,
  `pericia` varchar(200) DEFAULT NULL,
  `equipamento` varchar(200) DEFAULT NULL,
  `credito` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela etec_rpg.antepassados: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `antepassados` DISABLE KEYS */;
INSERT IGNORE INTO `antepassados` (`id`, `nome`, `descricao`, `pericia`, `equipamento`, `credito`) VALUES
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
/*!40000 ALTER TABLE `antepassados` ENABLE KEYS */;

-- Copiando estrutura para tabela etec_rpg.bestiario
DROP TABLE IF EXISTS `bestiario`;
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela etec_rpg.bestiario: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `bestiario` DISABLE KEYS */;
INSERT IGNORE INTO `bestiario` (`id`, `nome`, `descricao`, `nd`, `atributos`, `pericias`, `velocidade`, `vida`, `mental`, `energia`) VALUES
	(1, 'Cachorro', 'Um cachorro de grande porte.', ' 1/2', 'FOR 2, AGI 2, CON 2, INT 0, PER 4', 'Procurar 3, Furtividade 2', 8, 10, 6, 0),
	(2, 'Lobo, Padrão', ' Um lobo, similar a um cachorro, mas consideravelmente maior e mais selvagem.', '1', 'FOR 3, AGI 2, CON 2, INT 0, PER 4', 'Procurar 3, Furtividade 2', 8, 18, 10, 0),
	(3, 'Minotauro', 'Um híbrido entre humano e touro, racional mas geralmente hostil. Pode ser encontrado em labirintos antigos, procurando uma saída futilmente.', '7', 'FOR 4, CON 3, VON 2, SOR 0, ', 'Atletismo 3, Intimidação 3, Iniciativa 2', 7, 53, 21, 12),
	(4, 'Unicórnio', 'Um cavalo mágico com inteligência humana, um chifre branco no meio da testa e cabelo arco-íris', '10', 'FOR 2, INT 2, VON 4, CON 2 SOR 3 ', 'Charme 3', 10, 42, 30, 30),
	(5, 'Zumbi, Padrão', 'Criatura que ressurgiu após a morte, seu corpo agora decompondo, como suas habilidades, sua existência se resume a apenas alimentar.', '1/2', 'FOR 2, AGI 0, CON 3, INT 0', NULL, 4, 22, 0, 0),
	(6, 'Zumbi, Raivoso', 'Similar a um zumbi comum, exceto que é coberto e uma substância similar a sangue, e se move muito mais rapidamente e ferozmente.', NULL, 'FOR 2, AGI 3, CON 2, INT 0', 'Atletismo 2, Acrobacia 2.', 8, 26, 0, 0);
/*!40000 ALTER TABLE `bestiario` ENABLE KEYS */;

-- Copiando estrutura para tabela etec_rpg.equipamentos
DROP TABLE IF EXISTS `equipamentos`;
CREATE TABLE IF NOT EXISTS `equipamentos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `custo` varchar(50) DEFAULT NULL,
  `volume` varchar(50) DEFAULT NULL,
  `descricao` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela etec_rpg.equipamentos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `equipamentos` DISABLE KEYS */;
INSERT IGNORE INTO `equipamentos` (`id`, `nome`, `custo`, `volume`, `descricao`) VALUES
	(1, 'Pé de Cabra', '2C', '1', 'Adicione +1 em testes de força onde sua alavanca pode ser utilizada. Serve como um bastão curto.'),
	(2, 'Saco de Dormir', '2C', '1', 'Permite o sono sem uma cama, evitando penalidades.');
/*!40000 ALTER TABLE `equipamentos` ENABLE KEYS */;

-- Copiando estrutura para tabela etec_rpg.habilidades
DROP TABLE IF EXISTS `habilidades`;
CREATE TABLE IF NOT EXISTS `habilidades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `condicao` varchar(200) DEFAULT NULL,
  `descricao` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela etec_rpg.habilidades: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `habilidades` DISABLE KEYS */;
INSERT IGNORE INTO `habilidades` (`id`, `nome`, `condicao`, `descricao`) VALUES
	(1, 'Treino', 'Nenhuma', 'Você ganha 2+INT pontos de perícia. '),
	(2, 'Punho de Aço', 'Força 2', 'O dano do seu ataque desarmado aumenta para 1d2+Força, e seu crítico causa Lerdo por uma rodada.'),
	(3, 'Pés Ágeis', 'Agilidade 2', 'Sua velocidade aumenta por 2.'),
	(4, 'Mãos Ágeis', 'Agilidade 2', 'Você pode Pegar um Item como uma ação livre por 1 energia.'),
	(5, 'Inquebravel', 'Agi ou Con 2', 'Você consegue sobreviver a ataques letais, pela sua agilidade ou constituição elevada.'),
	(6, 'Resistente', 'Constituição 2', 'Você ganha +1d em testes de constituição para resistir efeitos.'),
	(7, 'Adrenalina', 'Constituição 2', 'Você potencializa seus ataques físicos quanto mais ferido você está. Caso sua vida esteja abaixo do máximo, todo ataque seu causa +1 de dano. Caso esteja abaixo da metade, aumenta para +2'),
	(8, 'Inabalável', 'Vontade 2', 'Todo dano mental recebido é reduzido pela sua vontade.'),
	(9, 'Mente de ferro', 'VON 3, Nível 5', 'Sua mente é inabalável garantindo que mantenha a concentração em situações desesperadoras. Você faz testes de VON para resistir efeitos com 3 dados.'),
	(10, 'Foco', 'Von ou Int 2', 'Você se concentra na tarefa atual.'),
	(11, 'Especialização', 'Inteligência 2', 'Você ganha um ponto em uma perícia que seja 3, passando acima do limite.'),
	(12, 'Olhos Aguçados', 'Percepção 2', 'Sua penalidade em testes de percepção por condições difíceis (escuro, fumaça, etc.) é reduzida pela metade.'),
	(13, 'Sortudo', 'Sorte 2', 'Ao falhar um teste, por 3 energia, você pode tentar novamente utilizando sorte no lugar do atributo original.'),
	(14, 'Motivar', 'Acalmar 3', 'Com uma ação principal e 4 energia, você pode dar 4 pontos de mental temporários para um aliado, que duram 1 hora. Enquanto ele tem esses pontos, ele pode gastar 1 para ganhar +1d em um teste.'),
	(15, 'Passo Preciso', 'Acrobacia 3', 'No começo do seu turno, você pode gastar 2 energia para ignorar terreno difícil até o final do seu turno.'),
	(16, 'Técnica Secreta', 'Atletismo 3', 'Quando você realizar uma manobra para derrubar ou empurrar um inimigo, você pode gastar 2 energia para causar o dano também.'),
	(17, 'Imobilizador', 'Atletismo 3', 'Você recebe +1 em testes para agarrar uma criatura. Quanto uma criatura agarrada por você tenta agir, você pode gastar 2 energia para realizar outro teste como se você estivesse agarrando a criatura novamente. Em um sucesso, você impede a ação da criatura.'),
	(18, 'Conhecimento Conveniente', 'Atualidades 3', 'Você pode gastar 2 pontos de energia para fazer um teste de atualidades -1 no lugar de um teste utilizando inteligência . Você pode gastar mais 2 pontos para remover a penalidade.'),
	(19, 'Investigador', 'Analise 3', 'Sempre que achar uma pista, você pode gastar 3 energia para descobrir alguma informação extra, se possível. (Caso não seja, a energia não é gasta)'),
	(20, 'Convencer', 'Charme ou Persuasão 3', 'Com 2 energia e uma ação principal, você pode fazer um teste de Charme ou Persuasão (VON) para convencer um personagem neutro a te ajudar temporariamente. DT varia dependendo da situação. Você pode tentar em um personagem hostil, mas o teste é feito com -1d e o personagem se torna neutro.'),
	(21, 'Curto-Circuito', 'Eletrônicos 3', 'Enquanto você tem algum ponto de acesso à estrutura eletrônica de uma sala, você pode gastar 2 energia e uma ação principal para fazer um teste de eletrônicos (INT) DT 6. Em um sucesso, você pode (duração: 1 rodada):'),
	(22, 'Distrair', 'Enganar 3', 'Como uma ação principal, você pode gastar 2 energia para fazer um teste de enganar (VON) contra um teste de vontade de um alvo. Em um sucesso, ele perde sua ação de movimento.'),
	(23, 'Agilidade Furtiva', 'Furtividade 3', 'No final de um movimento, você pode gastar 2 energia para tentar se esconder sem gastar uma ação, caso possível.'),
	(24, 'Localizar', 'Informatica 3', 'Enquanto interagindo com um sistema de computador, você pode utilizar 4 energia para fazer um teste de informática (INT) para melhorar seu nível de acesso no sistema. Os DT e o acesso adquirido são decididos pelo mestre.'),
	(25, 'Alarme', 'Inciativa 3', 'Quando rolar iniciativa, você pode gastar 2 energia para adicionar o valor da sua perícia iniciativa na sua iniciativa ou de um aliado '),
	(26, 'Aterrorizar', 'Intimidação 3', 'Utilizando uma ação de movimento e 2 energia, você pode fazer um teste de intimidação (VON) contra um teste de VON de uma criatura a alcance curto. Em um sucesso, a criatura ganha Amedrontado por 1 rodada, e recebe 1d6 de mental.'),
	(27, 'Uni-Duni-Tê', 'Intuição 3', 'Sempre que for fazer uma escolha, você pode usar 2 energia para fazer um teste de intuição (INT ou SOR) DT 7. Em um sucesso, o mestre po'),
	(28, 'Tratamento Rapido', 'Medicina 3', 'A sua cura utilizando sua bolsa médica vira 1d6+Medicina, e você pode gastar 4 energia para tratar alguém que já foi tratado no mesmo dia.'),
	(29, 'Gambiarra', 'Mecânica 3', 'Caso algum objeto quebre, você tem 1 minuto para usar 3 energia e fazer um teste de mecânica (INT) para consertá-lo. Em um sucesso, o item funciona até o final do seu uso atual.'),
	(30, 'Argumento Convincente', 'Persuasão 3', 'Quando for fazer um teste de persuasão, você pode gastar 2 energia para adicionar INT e VON ao teste.'),
	(31, 'Salvador', 'Primeiros-Socorros 3', 'Quando você remover a condição morrendo de uma criatura, você pode gastar 4 energia para acordar ela, curando 2d3+INT pontos de vida.'),
	(32, 'Sexto-Sentido', 'Procurar 3', 'No começo do seu turno, você pode gastar 5 energia para ganhar um sentido cego de 3m ao seu redor por 1 minuto ');
/*!40000 ALTER TABLE `habilidades` ENABLE KEYS */;

-- Copiando estrutura para tabela etec_rpg.poderes
DROP TABLE IF EXISTS `poderes`;
CREATE TABLE IF NOT EXISTS `poderes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `requisito` varchar(200) DEFAULT NULL,
  `custo` varchar(100) DEFAULT NULL,
  `uso` varchar(200) DEFAULT NULL,
  `descricao` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela etec_rpg.poderes: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `poderes` DISABLE KEYS */;
INSERT IGNORE INTO `poderes` (`id`, `nome`, `requisito`, `custo`, `uso`, `descricao`) VALUES
	(1, 'Invisibilidade', 'Nenhum', '1 Energia por rodada.', ' 1 Ação principal', 'Você encosta em uma criatura ou objeto, os tornando invisíveis. O efeito dura até ser cancelado por você ou pela criatura. Caso o alvo seja um objeto, o custo diminui para 1 energia por minuto.'),
	(2, 'Transferir Vitalidade', 'Nenhum', '5 Vida', '1 Ação Principal', 'Você cura 4 pontos de vida de uma criatura em alcance curto de você. '),
	(3, 'Teletransporte Rápido', 'Agilidade 2', '2 Energia', '1 Ação de movimento.', 'Você se teletransporta a um ponto que consiga ver dentro do seu alcance médio.'),
	(4, 'Tocha', 'Nenhum', '1 Energia', '1 Ação principal', 'Você cria uma pequena chamas, que flutua a alguns centímetros da sua mão, e emite luz fraca em alcance curto. Ela pode ser arremessada a alcance curto: caso atinja um objeto, a chama é muito fraca para alastrar se o material não seja extremamente inflamável, e dura 1 minuto emitindo a mesma luz. Caso atinja uma criatura, ela causa 1d3 de dano.'),
	(5, 'Onda de Chamas', '1 Poder', ' 5 Energia', '1 Ação principal', ' Você solta uma onda de chamas em um cone de 3 metros. Criaturas dentro desse cone devem fazer um teste de agilidade (DT 5). Em uma falha, elas recebem 1d6 de dano de fogo e a condição Em Chamas. Em um sucesso, elas recebem a metade do dano'),
	(6, 'Electrocutar', '1 Poder', ' 3 Energia', '1 ação principal', 'Você escolhe uma criatura dentro do seu alcance curto. A criatura deve fazer um teste de fortitude (DT 5), tomando 2d3 de dano em um falha, e metade em um sucesso. Caso haja outro alvo em alcance curto do último alvo, você pode gastar mais 2 energia para atingi-lo também. Você pode fazer isso infinitamente. O alvo também pode ser um objeto que conduz eletricidade ao invés de uma criatura. '),
	(7, 'Tratar', '1 Poder, Medicina 2', 'X Energia', '1 Minuto', 'Encoste em uma criatura por 1 minuto, curando 2 de vida por ponto de energia gastado'),
	(8, 'Acelerar', '2 Poderes', ' 4 Energia, +2 por turno', '1 Ação Principal', ' Encoste em uma criatura. No próximo turno daquela criatura, ela tem mais 1 ação principal. No final do turno, você pode gastar +2 energia para evitar que o efeito acabe.'),
	(9, 'Pertubar', 'Nenhum', '4 Energia', '1 Ação Principal', 'Escolha um alvo a alcance médio. O alvo deve fazer um teste de VON DT (3 + sua VON).');
/*!40000 ALTER TABLE `poderes` ENABLE KEYS */;

-- Copiando estrutura para tabela etec_rpg.respostas
DROP TABLE IF EXISTS `respostas`;
CREATE TABLE IF NOT EXISTS `respostas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `autor` varchar(100) NOT NULL,
  `conteudo` text NOT NULL,
  `data_criacao` datetime DEFAULT NULL,
  `topico_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `topico_id` (`topico_id`),
  CONSTRAINT `respostas_ibfk_1` FOREIGN KEY (`topico_id`) REFERENCES `topicos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela etec_rpg.respostas: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `respostas` DISABLE KEYS */;
/*!40000 ALTER TABLE `respostas` ENABLE KEYS */;

-- Copiando estrutura para tabela etec_rpg.topicos
DROP TABLE IF EXISTS `topicos`;
CREATE TABLE IF NOT EXISTS `topicos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `autor` varchar(100) NOT NULL,
  `topico` varchar(200) NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `conteudo` text NOT NULL,
  `data_criacao` datetime DEFAULT NULL,
  `data_atualizacao` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela etec_rpg.topicos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `topicos` DISABLE KEYS */;
/*!40000 ALTER TABLE `topicos` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
