-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: milton
-- ------------------------------------------------------
-- Server version	8.0.25

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id` int NOT NULL AUTO_INCREMENT,
  `empresa` varchar(100) DEFAULT NULL,
  `endereco` varchar(200) DEFAULT NULL,
  `telefone` varchar(45) DEFAULT NULL,
  `telefone2` varchar(45) DEFAULT NULL,
  `pontuacao` int DEFAULT NULL,
  `contato` varchar(45) DEFAULT NULL,
  `celular` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `departamento` varchar(45) DEFAULT NULL,
  `idvendedor` int DEFAULT NULL,
  `tabela` varchar(45) DEFAULT NULL,
  `tipoatend` varchar(45) DEFAULT NULL,
  `classificacao` varchar(45) DEFAULT NULL,
  `origem` varchar(45) DEFAULT NULL,
  `entidade` varchar(45) DEFAULT NULL,
  `numero` int DEFAULT NULL,
  `complemento` varchar(45) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `bairro` varchar(45) DEFAULT NULL,
  `cpf` varchar(45) DEFAULT NULL,
  `cnpj` varchar(45) DEFAULT NULL,
  `insc` varchar(45) DEFAULT NULL,
  `rg` varchar(45) DEFAULT NULL,
  `inscmun` varchar(45) DEFAULT NULL,
  `indie` varchar(45) DEFAULT NULL,
  `site` varchar(150) DEFAULT NULL,
  `emailemp` varchar(150) DEFAULT NULL,
  `obs` varchar(400) DEFAULT NULL,
  `idcomissionado` int DEFAULT NULL,
  `rsocial` varchar(200) DEFAULT NULL,
  `cep` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='Tabela referente ao cliente, vinculado a ela tem a tabela de vendedores e comissionados. 										';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (2,'Damay','1','1','1',1,'1','1','1','1',1,'1','1','1','1','1',1,'1','1','1','1','1','1','1','1','1','1','1','1','1',1,'1','1'),(3,'Top Haus','2','2','2',2,'2','2','2','2',2,'2','2','2','22','2',2,'2','2','2','2','2','2','2','2','2','22','2','2','2',2,'2','2'),(5,'Avaya System',NULL,'(47)99886-0854',NULL,0,'José',NULL,'jose@avaya.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'11137854000185',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'Totvs',NULL,'(11)323-60873',NULL,0,'Maria',NULL,'totvs@totvs.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'548807562000158',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'TecToy',NULL,'(11)32360873',NULL,0,'Bart Simpson',NULL,'bart@simpson.com.br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'44787278999187',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comissionado`
--

DROP TABLE IF EXISTS `comissionado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comissionado` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) DEFAULT NULL,
  `empresa` varchar(200) DEFAULT NULL,
  `telefone` varchar(45) DEFAULT NULL,
  `contato` varchar(45) DEFAULT NULL,
  `tipopgt` varchar(30) DEFAULT NULL,
  `valorfixo` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `regraComissao` varchar(45) DEFAULT NULL,
  `obs` varchar(300) DEFAULT NULL,
  `valor` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COMMENT='Cadastro de comissionados.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comissionado`
--

LOCK TABLES `comissionado` WRITE;
/*!40000 ALTER TABLE `comissionado` DISABLE KEYS */;
INSERT INTO `comissionado` VALUES (1,'Ana Carolina','High Company','(47)3236-0872','Enoque','Percentual','15','Pendente','Regra Representante','qwe',3),(2,'Djavan','Hyper','(47)3236-0873','Enoque','0','0','Pendente','Regra Representante','qwe',2);
/*!40000 ALTER TABLE `comissionado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `condpgto`
--

DROP TABLE IF EXISTS `condpgto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `condpgto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `condpgt` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COMMENT='Cadastro das formas de pgto.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `condpgto`
--

LOCK TABLES `condpgto` WRITE;
/*!40000 ALTER TABLE `condpgto` DISABLE KEYS */;
INSERT INTO `condpgto` VALUES (1,'1x - 120 DDL'),(2,'1x - 15 DDL'),(3,'1x - 30 DDL'),(4,'1x - 45 DDL'),(5,'1x - 60 DDL'),(6,'1x - 7 DDL'),(7,'1x - 90 DDL'),(8,'2x - 30% pedido e saldo 30 DDL');
/*!40000 ALTER TABLE `condpgto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contato`
--

DROP TABLE IF EXISTS `contato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contato` (
  `id` int NOT NULL AUTO_INCREMENT,
  `contato` varchar(150) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `telefone` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='Cadastro de contatos.(Usada na tela de orçamentos)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contato`
--

LOCK TABLES `contato` WRITE;
/*!40000 ALTER TABLE `contato` DISABLE KEYS */;
INSERT INTO `contato` VALUES (1,'Judah','lion@thundercats.com.br','(47)98787-5627'),(2,'Karla','cheetara@thundercats.com.br','(47)96565-36-87'),(3,'Junior','panthro@thundercats.com.br','(47)98787-5236'),(4,'Dani','tygra@thundercats.com.br','(11)3236-0873'),(5,'Mestre dos Magos','wilykit@thundercats.com.br','(11)8977-8713'),(6,'Harry Potter','wilykat@thundercats.com.br','(11)8977-8713');
/*!40000 ALTER TABLE `contato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custovariavel`
--

DROP TABLE IF EXISTS `custovariavel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custovariavel` (
  `id` int NOT NULL AUTO_INCREMENT,
  `descricao` varchar(200) DEFAULT NULL,
  `valor` int DEFAULT NULL,
  `valorcobrado` int DEFAULT NULL,
  `descricaoServ` varchar(45) DEFAULT NULL,
  `acao` varchar(45) DEFAULT NULL,
  `datapgto` date DEFAULT NULL,
  `tipodecusto` varchar(45) DEFAULT NULL,
  `idfornecedor` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COMMENT='Cadastro de custo variável.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custovariavel`
--

LOCK TABLES `custovariavel` WRITE;
/*!40000 ALTER TABLE `custovariavel` DISABLE KEYS */;
INSERT INTO `custovariavel` VALUES (1,'Andaimes',250,150,'Aluguel de Andaime','Sem cobranças','2021-08-20','Indicar custos',1),(2,'Frete Entrega',30,15,'Entrega por moto','Lançar no contas a pagar','2021-08-15','Selecione',1);
/*!40000 ALTER TABLE `custovariavel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entrega`
--

DROP TABLE IF EXISTS `entrega`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entrega` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dia` date DEFAULT NULL,
  `prazo` int DEFAULT NULL,
  `idveiculo` varchar(45) DEFAULT NULL,
  `despesa` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Tabela pertence a Logística. Esta vinculada ao veículo a ser usado na entrega.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entrega`
--

LOCK TABLES `entrega` WRITE;
/*!40000 ALTER TABLE `entrega` DISABLE KEYS */;
INSERT INTO `entrega` VALUES (1,'2021-05-18',10,'1',50),(5,'2021-10-04',80,'4',20);
/*!40000 ALTER TABLE `entrega` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formapgto`
--

DROP TABLE IF EXISTS `formapgto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `formapgto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `forma` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COMMENT='Cadastro de forma de pgto.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formapgto`
--

LOCK TABLES `formapgto` WRITE;
/*!40000 ALTER TABLE `formapgto` DISABLE KEYS */;
INSERT INTO `formapgto` VALUES (1,'Boleto'),(2,'Cartão de Crédito'),(3,'Cartão de Débito'),(4,'Cheque'),(5,'Depósito'),(6,'Dinheiro'),(7,'Pix'),(8,'TED/DOC');
/*!40000 ALTER TABLE `formapgto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedor`
--

DROP TABLE IF EXISTS `fornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fornecedor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `empresa` varchar(150) DEFAULT NULL,
  `telefone` varchar(45) DEFAULT NULL,
  `telefone2` varchar(45) DEFAULT NULL,
  `contato` varchar(150) DEFAULT NULL,
  `celular` varchar(45) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `departamento` varchar(45) DEFAULT NULL,
  `endereco` varchar(300) DEFAULT NULL,
  `cep` varchar(45) DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `cidade` varchar(150) DEFAULT NULL,
  `estado` varchar(150) DEFAULT NULL,
  `cnpjcpf` varchar(45) DEFAULT NULL,
  `inscestad` varchar(80) DEFAULT NULL,
  `inscmunic` varchar(80) DEFAULT NULL,
  `site` varchar(200) DEFAULT NULL,
  `emailemp` varchar(150) DEFAULT NULL,
  `obs` varchar(300) DEFAULT NULL,
  `numero` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='Cadastro de fornecedores.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedor`
--

LOCK TABLES `fornecedor` WRITE;
/*!40000 ALTER TABLE `fornecedor` DISABLE KEYS */;
INSERT INTO `fornecedor` VALUES (1,'Teste','','(47)5555-5555','Batman','(47) 96589-7835','batman@ligadajustica.com.br','Inteligência','Top Secret','','N pode contar','Navegantes','Santa Catarina','','isento','n tem','www.batman.com.br','batman@ligadajustica.com.br','O Batimá é o cara!!!',144),(2,'Grupo JA','',NULL,'','','cavaquinho2003@gmail.com','','','88385-000','','Santa Catarina','Santa Catarina','','','','','','',0);
/*!40000 ALTER TABLE `fornecedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itementrega`
--

DROP TABLE IF EXISTS `itementrega`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itementrega` (
  `id` int NOT NULL AUTO_INCREMENT,
  `valorentrega` double DEFAULT NULL,
  `idorc` int DEFAULT NULL,
  `identrega` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Esta tabela contem um conjunto de entregas para um determinado orçamento. Esta vinculada as tabelas orcamento e entrega. ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itementrega`
--

LOCK TABLES `itementrega` WRITE;
/*!40000 ALTER TABLE `itementrega` DISABLE KEYS */;
INSERT INTO `itementrega` VALUES (23,0,20,1);
/*!40000 ALTER TABLE `itementrega` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itemlogequipe`
--

DROP TABLE IF EXISTS `itemlogequipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itemlogequipe` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idorc` int DEFAULT NULL,
  `idlogequipe` int DEFAULT NULL,
  `valorequipe` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Esta tabela mostra um conjunto e equipes que pode ser adicionada ao orçamento. Esta vinculada a orcamento e logequipe.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itemlogequipe`
--

LOCK TABLES `itemlogequipe` WRITE;
/*!40000 ALTER TABLE `itemlogequipe` DISABLE KEYS */;
/*!40000 ALTER TABLE `itemlogequipe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itemlogretirada`
--

DROP TABLE IF EXISTS `itemlogretirada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itemlogretirada` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idlogretira` int DEFAULT NULL,
  `idorc` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Esta tabela tem um conjundo de retiradas vinculadas ao orçamento. Esta vinculada a tabela retirada e orcamento.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itemlogretirada`
--

LOCK TABLES `itemlogretirada` WRITE;
/*!40000 ALTER TABLE `itemlogretirada` DISABLE KEYS */;
INSERT INTO `itemlogretirada` VALUES (39,2,20);
/*!40000 ALTER TABLE `itemlogretirada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itemtransporte`
--

DROP TABLE IF EXISTS `itemtransporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itemtransporte` (
  `id` int NOT NULL AUTO_INCREMENT,
  `valorcorreio` double DEFAULT NULL,
  `valort` double DEFAULT NULL,
  `idorc` int DEFAULT NULL,
  `idtransp` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Esta tabela se refere ao conjunto de logística de transporte. Tem os valores de correio ou do carro utilizado para entrega. Esta vinculada a tabela orcamento e transporte.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itemtransporte`
--

LOCK TABLES `itemtransporte` WRITE;
/*!40000 ALTER TABLE `itemtransporte` DISABLE KEYS */;
INSERT INTO `itemtransporte` VALUES (14,0,0,8,1);
/*!40000 ALTER TABLE `itemtransporte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logequipe`
--

DROP TABLE IF EXISTS `logequipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logequipe` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dia` date DEFAULT NULL,
  `horainstal` time DEFAULT NULL,
  `idcol` int DEFAULT NULL,
  `tempoexec` time DEFAULT NULL,
  `valor` double DEFAULT NULL,
  `nome` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb3 COMMENT='Cadastro de equipe. Esta vinculada a tabela colaborador.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logequipe`
--

LOCK TABLES `logequipe` WRITE;
/*!40000 ALTER TABLE `logequipe` DISABLE KEYS */;
INSERT INTO `logequipe` VALUES (4,'2021-08-05','17:57:00',NULL,'04:00:00',98,'Aplicadores - IBM'),(5,'2021-08-12','08:00:00',NULL,'06:00:00',60,'Impressores - Grupo JA'),(6,'2021-08-19','10:38:00',NULL,'09:00:00',60,'Microsoft'),(100,NULL,NULL,NULL,NULL,2495,'111'),(101,NULL,NULL,NULL,NULL,34,'222');
/*!40000 ALTER TABLE `logequipe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logretirada`
--

DROP TABLE IF EXISTS `logretirada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logretirada` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dia` date DEFAULT NULL,
  `prazo` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Cadastro de retirada, para adicionar ao orçamento.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logretirada`
--

LOCK TABLES `logretirada` WRITE;
/*!40000 ALTER TABLE `logretirada` DISABLE KEYS */;
INSERT INTO `logretirada` VALUES (1,'2021-09-16',20),(2,'2021-09-17',15);
/*!40000 ALTER TABLE `logretirada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orcamento`
--

DROP TABLE IF EXISTS `orcamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orcamento` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idempresa` int DEFAULT NULL,
  `idcontato` int DEFAULT NULL,
  `idvendedor` int DEFAULT NULL,
  `trabalho` varchar(200) DEFAULT NULL,
  `logistica` varchar(45) DEFAULT NULL,
  `campanha` varchar(45) DEFAULT NULL,
  `prazoentrega` int DEFAULT NULL,
  `validade` int DEFAULT NULL,
  `idformapgt` int DEFAULT NULL,
  `idcondpgt` int DEFAULT NULL,
  `faturamento` varchar(45) DEFAULT NULL,
  `idmateriaprima` int DEFAULT NULL,
  `obs` varchar(300) DEFAULT NULL,
  `nomeorc` varchar(150) DEFAULT NULL,
  `logdataentrega` date DEFAULT NULL,
  `idveiculo` varchar(45) DEFAULT NULL,
  `logprazoentrega` int DEFAULT NULL,
  `custotransportadora` int DEFAULT NULL,
  `despesaentrega` int DEFAULT NULL,
  `custocorreio` int DEFAULT NULL,
  `idcustovariavel` varchar(45) DEFAULT NULL,
  `idfornecedor` int DEFAULT NULL,
  `tipodecusto` varchar(45) DEFAULT NULL,
  `idcomissionado` int DEFAULT NULL,
  `tipocomissionadopgt` tinyint(1) DEFAULT NULL,
  `valor` double DEFAULT NULL,
  `idtransporte` int DEFAULT NULL,
  `logtime` tinyint DEFAULT NULL,
  `logretirada` tinyint DEFAULT NULL,
  `logentrega` tinyint DEFAULT NULL,
  `logtransporte` tinyint DEFAULT NULL,
  `identrega` int DEFAULT NULL,
  `idlogequipe` int DEFAULT NULL,
  `idlogretira` int DEFAULT NULL,
  `situacao` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COMMENT='Cadastro de orçamentos. Vinculada as tabelas cliente, contato, vendedor, formapgto, condpgto, materiaprima, veiculo, custovariavel, fornecedor, comissionado, entrega, logequipe e logretirada.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orcamento`
--

LOCK TABLES `orcamento` WRITE;
/*!40000 ALTER TABLE `orcamento` DISABLE KEYS */;
INSERT INTO `orcamento` VALUES (6,2,4,2,'2','Não definido','2',0,4,NULL,NULL,'',2,'2','Banner','2021-08-25','3',0,0,0,20,'1',1,'Selecione',1,1,4611,1,0,0,0,0,1,4,1,'Em andamento'),(8,3,NULL,1,NULL,NULL,NULL,0,0,NULL,NULL,'',NULL,NULL,'Letra Caixa',NULL,NULL,0,0,0,0,NULL,NULL,NULL,NULL,NULL,60,NULL,0,0,0,0,NULL,4,NULL,NULL),(17,2,4,2,NULL,NULL,NULL,0,4,NULL,NULL,'',NULL,NULL,'Banner',NULL,NULL,0,0,0,0,NULL,NULL,NULL,NULL,NULL,30,NULL,0,0,0,0,NULL,NULL,NULL,NULL),(18,2,4,2,NULL,NULL,NULL,0,4,NULL,NULL,'',NULL,NULL,'Banner',NULL,NULL,0,0,0,0,NULL,NULL,NULL,NULL,NULL,50,NULL,0,0,0,0,NULL,NULL,NULL,NULL),(19,2,4,2,NULL,NULL,NULL,0,4,NULL,NULL,'',NULL,NULL,'Banner',NULL,NULL,0,0,0,0,NULL,NULL,NULL,NULL,NULL,110,NULL,0,0,0,0,NULL,NULL,NULL,''),(20,3,NULL,1,NULL,NULL,NULL,0,0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,0,0,0,0,NULL,NULL,NULL,NULL,NULL,110,NULL,0,1,1,0,NULL,NULL,NULL,'');
/*!40000 ALTER TABLE `orcamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `precofinal` double DEFAULT NULL,
  `nome` varchar(300) DEFAULT NULL,
  `unidadecob` varchar(100) DEFAULT NULL,
  `idcjmodelo` int DEFAULT NULL,
  `categoria` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Esta é a nova tabela de produtos. 28/10/2021';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (36,50,'Faixada Acm','Área Linear',NULL,'br.com.iris.model.Categoriamp@174'),(37,10,'Banner','Área Cúbica',NULL,'br.com.iris.model.Categoriamp@175'),(38,200,'Balcão Preto','Área Quadrada',NULL,'br.com.iris.model.Categoriamp@176'),(39,250,'Painel de Led','Unidade',NULL,'br.com.iris.model.Categoriamp@175'),(52,100,'Painel Acm','Área Cúbica',NULL,'br.com.iris.model.Categoriamp@176'),(53,0,'Testando','Área Cúbica',NULL,'br.com.iris.model.Categoriamp@176'),(54,0,'Teste4','Área Cúbica',NULL,'br.com.iris.model.Categoriamp@176');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transporte`
--

DROP TABLE IF EXISTS `transporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transporte` (
  `id` int NOT NULL AUTO_INCREMENT,
  `custotransporte` double DEFAULT NULL,
  `custocorreio` double DEFAULT NULL,
  `dtenvio` date DEFAULT NULL,
  `dtransp` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Cadastro de logística dos custos de transporte.(Tipo, custo e data de entrega)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transporte`
--

LOCK TABLES `transporte` WRITE;
/*!40000 ALTER TABLE `transporte` DISABLE KEYS */;
INSERT INTO `transporte` VALUES (1,100,200,'2021-08-15','2021-06-19'),(2,50,50,'2021-05-18','2021-08-31'),(6,10,10,NULL,NULL),(7,5,5,NULL,NULL);
/*!40000 ALTER TABLE `transporte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `veiculo`
--

DROP TABLE IF EXISTS `veiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `veiculo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `veiculo` varchar(80) DEFAULT NULL,
  `placa` varchar(10) DEFAULT NULL,
  `nfrota` varchar(50) DEFAULT NULL,
  `cor` varchar(45) DEFAULT NULL,
  `anomodelo` varchar(45) DEFAULT NULL,
  `renavam` int DEFAULT NULL,
  `kmlitro` varchar(45) DEFAULT NULL,
  `obs` varchar(200) DEFAULT NULL,
  `corretora` varchar(100) DEFAULT NULL,
  `companhia` varchar(100) DEFAULT NULL,
  `datacontratacao` date DEFAULT NULL,
  `vencimento` date DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `napolice` int DEFAULT NULL,
  `contato` varchar(50) DEFAULT NULL,
  `fornecedor` varchar(50) DEFAULT NULL,
  `nf` int DEFAULT NULL,
  `datacompra` date DEFAULT NULL,
  `garantia` date DEFAULT NULL,
  `vidautil` int DEFAULT NULL,
  `saldoresidual` varchar(45) DEFAULT NULL,
  `idgestor` int DEFAULT NULL,
  `centrocusto` varchar(45) DEFAULT NULL,
  `combustivel` varchar(20) DEFAULT NULL,
  `situacao` varchar(45) DEFAULT NULL,
  `valorcompra` double DEFAULT NULL,
  `qtdsinistro` int DEFAULT NULL,
  `nomedoc` varchar(100) DEFAULT NULL,
  `chassis` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='Cadastro e controle dos veículos da empresa.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `veiculo`
--

LOCK TABLES `veiculo` WRITE;
/*!40000 ALTER TABLE `veiculo` DISABLE KEYS */;
INSERT INTO `veiculo` VALUES (1,'Iveco Tector','DEA-0251','123','Branco','2018',0,'9','0','Corrite','156','2019-04-13','2019-12-13','(99) 99999-5583',254864,'0','br.com.iris.model.Fornecedor@174',548941652,'2018-10-30','2020-03-11',72,'26500.0',1,'Não definido','Diesel','Ativo',82000,0,'0',''),(3,'Pálio Weekend','DJU-5863','1','Preto','2013/2014',144,'9','nda','Sicoob Seguros','Sicoob','2021-03-25','2021-04-25','(11) 5899-2837',222,'Manuel','Scoob',44444,'2021-03-25','2023-03-25',72,'5660.0',2,'Administrativo','Etanol','Ativo',25000,0,NULL,'4444'),(4,'Corolla','FGU5410','123','Branco','2018',0,'25','Nda','Darci Seguros','Suhai','2020-02-21','2021-02-21','',1235,'Darci','br.com.iris.model.Fornecedor@175',5588,'2018-10-10','2025-10-10',560,'9000.0',1,'Administrativo','Flex','Ativo',90000,0,NULL,'44444t44'),(5,'Ecosport','BBB-2121','1','Branco','2015',22222,'4','Nda','BB','bb','2020-01-21','2022-01-21','8888',88888,'Terry Crews','João dos Veneno',4,'2019-05-19','2025-05-19',180,'55555.0',1,'Acabamento','Flex','Ativo',55000,0,NULL,'44');
/*!40000 ALTER TABLE `veiculo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendedor`
--

DROP TABLE IF EXISTS `vendedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendedor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `vendedor` varchar(100) DEFAULT NULL,
  `whatsapp` varchar(45) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='Cadastro de vendedores.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendedor`
--

LOCK TABLES `vendedor` WRITE;
/*!40000 ALTER TABLE `vendedor` DISABLE KEYS */;
INSERT INTO `vendedor` VALUES (1,'Judah Adonai','(11)5555-4444','11@223'),(2,'Gabriel','(11)4444-5555','22@33'),(3,'Dani','(47)3333-2222','33@44'),(4,'Henrique','(47)7777-5555','44@55'),(5,'Núbia','(47)8888-7777','55@55');
/*!40000 ALTER TABLE `vendedor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-18 17:39:45
