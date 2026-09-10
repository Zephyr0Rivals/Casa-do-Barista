-- MySQL dump 10.13  Distrib 8.4.11, for Linux (x86_64)
--
-- Host: localhost    Database: casa_barista
-- ------------------------------------------------------
-- Server version	8.4.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` bigint NOT NULL,
  PRIMARY KEY (`key`),
  KEY `cache_expiration_index` (`expiration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` bigint NOT NULL,
  PRIMARY KEY (`key`),
  KEY `cache_locks_expiration_index` (`expiration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`),
  KEY `failed_jobs_connection_queue_failed_at_index` (`connection`,`queue`,`failed_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` smallint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1),(2,'0001_01_01_000001_create_cache_table',1),(3,'0001_01_01_000002_create_jobs_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('D0Zw5tLRuiHYmQHhhH1uvYc3DaHtfd84Po9CY3PX',NULL,'172.18.0.1','Mozilla/5.0 (X11; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0','eyJfdG9rZW4iOiJWQUxabVYxbUpMcW0wUDVQY0ZzTkt5QXg0cHc1eGZmMnJqazc0aXBxIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cLzEyNy4wLjAuMTo4MDAwIiwicm91dGUiOiJob21lIn0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=',1788551421),('eQycVc44rGpe8cjSAo5fYMQvdxOkyT8OL2Dl637o',NULL,'172.18.0.1','Mozilla/5.0 (X11; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0','eyJfdG9rZW4iOiJHZ2tXVFF5T2R1MDhzcGp6VXd0emduV1F0UldBakZkdGdsejRYNjZoIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cL2xvY2FsaG9zdDo4MDAwXC9hZG1pblwvdmVuZGFzXC9jbGllbnRlIiwicm91dGUiOiJhZG1pbi52ZW5kYXMuY2xpZW50ZS5pbmRleCJ9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1788553325),('Ig3G1BlixyzfzP8yzYMqqyPelRJbvUhTywJMXQVS',NULL,'172.18.0.1','Mozilla/5.0 (X11; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0','eyJfdG9rZW4iOiJ0aHJRc0M1Z0pZV3pOcW1mNU9aOEl4N2IycGJiTWo3RzJzOXlPY1JkIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cL2xvY2FsaG9zdDo4MDAwXC9hZG1pblwvYmFubmVyIiwicm91dGUiOiJhZG1pbi5iYW5uZXIuaW5kZXgifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==',1788553291);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_banner`
--

DROP TABLE IF EXISTS `tbl_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_banner` (
  `id_banner` int NOT NULL AUTO_INCREMENT,
  `titulo_banner` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `imagem_banner` varchar(65) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status_banner` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `data_criacao_banner` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_atualizacao_banner` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_banner`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_banner`
--

LOCK TABLES `tbl_banner` WRITE;
/*!40000 ALTER TABLE `tbl_banner` DISABLE KEYS */;
INSERT INTO `tbl_banner` VALUES (1,'Promoção especial de inverno','banner/promocao_especial_de_inverno.png','ATIVO','2026-05-13 14:02:34','2026-05-20 14:14:50'),(2,'Moccacino ','banner/mocaccino.png','ATIVO','2026-05-18 13:54:19','2026-05-18 13:54:19'),(5,'Chocolate Alpino','banner/chocolate_alpilno.png','ATIVO','2026-05-18 14:08:16','2026-05-18 14:08:16'),(6,'Affogato','banner/affogato.png','ATIVO','2026-05-18 14:08:34','2026-07-27 20:20:04'),(7,'Latte com Leite de Cabra','banner/latte_leite_cabra.png','ATIVO','2026-05-18 14:11:50','2026-05-18 14:11:50'),(8,'Macchiato Lótus','banner/macchiato_lotus.png','INATIVO','2026-05-18 14:11:52','2026-06-02 14:14:11');
/*!40000 ALTER TABLE `tbl_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_categoria`
--

DROP TABLE IF EXISTS `tbl_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_categoria` (
  `id_categoria` int NOT NULL AUTO_INCREMENT,
  `nome_categoria` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status_categoria` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `data_criacao_categoria` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_atualizacao_categoria` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_categoria`
--

LOCK TABLES `tbl_categoria` WRITE;
/*!40000 ALTER TABLE `tbl_categoria` DISABLE KEYS */;
INSERT INTO `tbl_categoria` VALUES (1,'CAFÉ','ATIVO','2026-05-13 14:52:13','2026-05-13 14:52:13'),(3,'SALGADOS','ATIVO','2026-05-18 17:24:29','2026-05-20 16:25:06'),(4,'LANCHES','ATIVO','2026-05-18 17:24:31','2026-05-18 17:24:31'),(5,'BEBIDAS GELADAS','INATIVO','2026-05-18 17:24:33','2026-05-29 17:08:17'),(7,'COMBOS','ATIVO','2026-05-18 17:24:38','2026-05-20 16:15:53'),(8,'DOCES','ATIVO','2026-05-20 16:24:35','2026-05-20 16:24:35');
/*!40000 ALTER TABLE `tbl_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cliente`
--

DROP TABLE IF EXISTS `tbl_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_cliente` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nome_cliente` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email_cliente` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `senha_cliente` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `foto_cliente` varchar(65) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status_cliente` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `data_criacao_cliente` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_atualizacao_produto` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cliente`
--

LOCK TABLES `tbl_cliente` WRITE;
/*!40000 ALTER TABLE `tbl_cliente` DISABLE KEYS */;
INSERT INTO `tbl_cliente` VALUES (1,'Lucas martins','lucas@gmail.com','senha123','cliente/lucas_na_praia.png','ATIVO','2026-05-13 15:22:28','2026-09-03 19:38:27'),(3,'Eduardo Teixeira','Teixerao@gmail.com','EdTeixeira432','cliente/eduardo_teixeira.png','ATIVO','2026-05-20 17:08:29','2026-05-20 17:12:10'),(4,'Gustavo Adolfo de Medeiros','Adolfomedeiros@gmail.com','Gusadolfomed43935','cliente/gustavo_adolfo_medeiros.png','ATIVO','2026-05-20 17:10:47','2026-05-20 17:11:52'),(5,'Rafael Hiroto Nagasaki','Heronaga@gmail.com','senha456','cliente/rafael_hiroto_nagasaki.png','ATIVO','2026-05-20 17:14:28','2026-05-20 17:14:28'),(6,'Caio Pereira dos Santos','CaioPereira9090@gmail.com','senha456','cliente/caio_pereira_santos.png','ATIVO','2026-05-20 17:15:15','2026-05-20 17:18:04'),(7,'Cristiano Henrique Carvalho','CristianoHenrique3443@gmail.com','Carvalhos2323','cliente/cristiano_henrique_carvalho.png','ATIVO','2026-05-20 17:18:15','2026-05-20 17:18:15');
/*!40000 ALTER TABLE `tbl_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_contato`
--

DROP TABLE IF EXISTS `tbl_contato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_contato` (
  `id_contato` int NOT NULL AUTO_INCREMENT,
  `nome_contato` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email_contato` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `telefone_contato` varchar(14) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `assunto_contato` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `mensagem_contato` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status_contato` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `data_criacao_contato` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_atualizacao_contato` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_contato`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_contato`
--

LOCK TABLES `tbl_contato` WRITE;
/*!40000 ALTER TABLE `tbl_contato` DISABLE KEYS */;
INSERT INTO `tbl_contato` VALUES (1,'Afonso','fundador@gmail.com','(11)24535-7777','DÚVIDA','olá bom dia, como vaís? Gosteria de saber se tu conseguías usar de leite natural de vaca?','LIDO','2026-05-13 14:15:26','2026-07-22 16:33:56'),(2,'Deodoro de Órleans','Deodoro55587@gmail.com','(11)93658-8525','DÚVIDA','Estou muito curioso para o evento de confraternização da Casa do Barista, em que mês ele ira acontecer?','RECEBIDO','2026-05-18 16:39:45','2026-05-18 16:39:45'),(3,'Patrick de Oliveira','Patrick1234@gmail.com','(11)89076-5667','CAFÉ','Ouvi dizer que o Expresso do Oriente vai voltar para o cardápio, isso é realmente verdade e por quanto tempo? ','LIDO','2026-05-18 16:43:11','2026-05-20 14:20:47'),(4,'Vinicius Gonzaga','Vinizaga@gmail.com','(11)76580-7589','EVENTO','Gostaria de saber os dias e preços para um casamento.','RECEBIDO','2026-05-18 16:45:56','2026-05-18 16:45:56'),(5,'Sebastião de Olinda','Domsebastiao@gmail.com','(55)74356-1832','DÚVIDA','Amo muito a rede da Casa do Barista, vocês têm alguma filial perto (ou em) Santa Maria?','RECEBIDO','2026-05-18 16:55:54','2026-05-18 16:55:54'),(6,'Augusta de Braga Nascimento','Braganascimento@gmail.com','(19)96035-0728','CAFÉ','Vocês usam leite natural ou de caixa nas bebidas?','RECEBIDO','2026-05-18 17:02:31','2026-05-18 17:02:31');
/*!40000 ALTER TABLE `tbl_contato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_depoimento`
--

DROP TABLE IF EXISTS `tbl_depoimento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_depoimento` (
  `id_depoimento` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int NOT NULL,
  `titulo_depoimento` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `descricao_depoimento` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nota_depoimento` int NOT NULL,
  `status_depoimento` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'PENDENTE',
  `data_criacao_depoimento` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_atualizacao_depoimento` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_depoimento`),
  KEY `fk_depoimento_cliente` (`id_cliente`),
  CONSTRAINT `fk_depoimento_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `tbl_cliente` (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_depoimento`
--

LOCK TABLES `tbl_depoimento` WRITE;
/*!40000 ALTER TABLE `tbl_depoimento` DISABLE KEYS */;
INSERT INTO `tbl_depoimento` VALUES (1,1,'Excelente café','O café estava perfeito e o atendimento foi muito acolhedor.',3,'APROVADO','2026-05-13 15:29:04','2026-07-28 19:52:10'),(2,3,'Superou expectativas','Experiência excelente do início ao fim, recomendo muito.',2,'APROVADO','2026-05-22 14:18:47','2026-07-28 19:52:14'),(3,4,'Simplesmente incrível','Tudo funcionou perfeitamente, desde a compra até o uso do produto.',4,'PENDENTE','2026-05-22 14:18:49','2026-07-28 19:52:18'),(4,5,'Perfeito em todos os aspectos','Atendimento impecável, entrega rápida e produto de altíssima qualidade.',5,'PENDENTE','2026-05-22 14:18:51','2026-05-22 14:18:51'),(5,6,'Muito bom','Gostei bastante, só alguns detalhes poderiam ser melhores.',3,'PENDENTE','2026-05-22 14:18:52','2026-07-28 19:52:26'),(6,7,'Regular','Produto ok, mas nada que se destaque ou surpreenda.',1,'PENDENTE','2026-05-22 14:18:54','2026-07-28 19:52:33');
/*!40000 ALTER TABLE `tbl_depoimento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_galeria`
--

DROP TABLE IF EXISTS `tbl_galeria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_galeria` (
  `id_galeria` int NOT NULL AUTO_INCREMENT,
  `nome_galeria` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `imagem_galeria` varchar(65) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status_galeria` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `data_criacao_galeria` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_atualizacao_galeria` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_galeria`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_galeria`
--

LOCK TABLES `tbl_galeria` WRITE;
/*!40000 ALTER TABLE `tbl_galeria` DISABLE KEYS */;
INSERT INTO `tbl_galeria` VALUES (1,'Ambiente interno','galeria/ambiente_interno.png','ATIVO','2026-05-13 14:26:31','2026-05-13 14:26:31'),(3,'Foto do bar','galeria/foto_bar.png','ATIVO','2026-05-18 14:34:15','2026-05-18 14:34:15'),(4,'Foto da Fachada da Cafeteria','galeria/foto_fachada_cafeteria.png','ATIVO','2026-05-18 14:35:00','2026-05-18 14:35:00'),(5,'Foto do Ambiente Externo','galeria/foto_ambiente_externo.png','ATIVO','2026-05-18 14:36:21','2026-05-18 14:36:21'),(6,'Foto de um Flat White','galeria/foto_flat_white.png','ATIVO','2026-05-18 14:37:30','2026-07-29 20:01:57'),(7,'Foto de um evento de confraternização','galeria/foto_evento_confraternizacao.png','ATIVO','2026-05-18 14:38:23','2026-07-29 19:59:01'),(8,'foto do banheiro','galeria/foto_banheiro','ATIVO','2026-08-10 20:25:08','2026-08-10 20:25:08');
/*!40000 ALTER TABLE `tbl_galeria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_horarios`
--

DROP TABLE IF EXISTS `tbl_horarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_horarios` (
  `id_horarios` int NOT NULL AUTO_INCREMENT,
  `dia_semana_horarios` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `hora_abertura_horarios` time NOT NULL,
  `hora_fechamento_horarios` time NOT NULL,
  `observacao_horarios` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status_horarios` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `data_criacao_horarios` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_atualizacao_horarios` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_horarios`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_horarios`
--

LOCK TABLES `tbl_horarios` WRITE;
/*!40000 ALTER TABLE `tbl_horarios` DISABLE KEYS */;
INSERT INTO `tbl_horarios` VALUES (1,'SEGUNDA-FEIRA','08:00:00','20:00:00','Atendimento por ordem de chegada','ATIVO','2026-05-13 14:47:05','2026-05-13 14:47:05'),(2,'TERÇA-FEIRA','08:00:00','20:00:00','Atendimento por ordem de chegada','ATIVO','2026-05-18 16:24:52','2026-05-18 16:24:52'),(3,'QUARTA-FEIRA','08:00:00','20:00:00','Atendimento por ordem de chegada','ATIVO','2026-05-18 16:24:54','2026-05-18 16:24:54'),(4,'QUINTA-FEIRA','08:00:00','20:00:00','Atendimento por ordem de chegada','ATIVO','2026-05-18 16:24:56','2026-05-18 16:24:56'),(5,'SEXTA-FEIRA','08:00:00','22:00:00','Atendimento livre até às 18h.','ATIVO','2026-05-18 16:24:57','2026-07-22 16:17:20'),(6,'SÁBADO','09:00:00','18:00:00','Atendimento por ordem de chegada','ATIVO','2026-05-18 16:24:59','2026-05-18 16:24:59'),(7,'DOMINGO','09:00:00','18:00:00','Atendimento por ordem de chegada','ATIVO','2026-05-18 16:25:28','2026-07-22 16:12:38');
/*!40000 ALTER TABLE `tbl_horarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_itens_venda`
--

DROP TABLE IF EXISTS `tbl_itens_venda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_itens_venda` (
  `id_itens_venda` int NOT NULL AUTO_INCREMENT,
  `id_venda` int NOT NULL,
  `id_produto` int NOT NULL,
  `qtde_itens_venda` double(6,2) NOT NULL,
  `valor_unit_itens_venda` double(6,2) NOT NULL,
  `subtotal_itens_venda` double(6,2) NOT NULL,
  `status_itens_venda` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `data_criacao_itens_venda` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_atualizacao_itens_venda` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_itens_venda`),
  KEY `fk_itens_venda_venda` (`id_venda`),
  KEY `fk_itens_venda_produto` (`id_produto`),
  CONSTRAINT `fk_itens_venda_produto` FOREIGN KEY (`id_produto`) REFERENCES `tbl_produto` (`id_produto`),
  CONSTRAINT `fk_itens_venda_venda` FOREIGN KEY (`id_venda`) REFERENCES `tbl_venda` (`id_venda`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_itens_venda`
--

LOCK TABLES `tbl_itens_venda` WRITE;
/*!40000 ALTER TABLE `tbl_itens_venda` DISABLE KEYS */;
INSERT INTO `tbl_itens_venda` VALUES (4,1,1,3.00,13.90,41.70,'PENDENTE','2026-05-29 14:28:23','2026-07-22 17:08:28'),(5,11,9,2.00,16.90,33.80,'PENDENTE','2026-05-29 14:28:26','2026-06-02 13:36:03'),(6,12,4,2.00,12.90,25.80,'PENDENTE','2026-05-29 14:28:41','2026-06-02 13:36:05'),(7,13,5,3.00,22.90,68.70,'PENDENTE','2026-05-29 14:42:46','2026-06-02 13:36:07'),(8,14,8,1.00,24.90,24.90,'PENDENTE','2026-05-29 14:43:42','2026-06-02 13:36:09'),(9,17,10,2.00,20.90,41.80,'PENDENTE','2026-05-29 14:46:21','2026-06-02 13:36:22'),(10,1,4,2.00,12.90,25.80,'PENDENTE','2026-06-02 13:46:07','2026-06-02 13:46:07'),(11,11,8,1.00,24.90,24.90,'PENDENTE','2026-06-10 13:38:37','2026-06-10 13:38:37'),(12,13,10,2.00,18.90,37.80,'PENDENTE','2026-06-10 13:41:36','2026-06-10 13:41:36'),(13,12,9,1.00,16.90,16.90,'PENDENTE','2026-06-10 13:45:19','2026-06-10 13:45:19'),(14,14,9,2.00,16.90,33.80,'PENDENTE','2026-07-22 14:27:02','2026-07-22 14:27:02'),(17,17,4,3.00,12.90,38.70,'PENDENTE','2026-07-22 14:32:32','2026-07-22 14:32:32');
/*!40000 ALTER TABLE `tbl_itens_venda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_linha_tempo`
--

DROP TABLE IF EXISTS `tbl_linha_tempo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_linha_tempo` (
  `id_linha_tempo` int NOT NULL AUTO_INCREMENT,
  `titulo_linha_tempo` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ano_linha_tempo` date NOT NULL,
  `descricao_linha_tempo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status_linha_tempo` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `data_criacao_linha_tempo` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_atualizacao_linha_tempo` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_linha_tempo`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_linha_tempo`
--

LOCK TABLES `tbl_linha_tempo` WRITE;
/*!40000 ALTER TABLE `tbl_linha_tempo` DISABLE KEYS */;
INSERT INTO `tbl_linha_tempo` VALUES (1,'inauguração','2001-01-01','A Casa do Barista inicou suas operações oferecendo cafe especiais e atendimento acolhedor.','ATIVO','2026-05-13 14:36:19','2026-05-13 14:36:19'),(11,'Consolidação no Mercado','2003-03-04','Em 2003, a cafeteria consolidou sua presença no mercado e \ndefiniu sua identidade, estabelecendo marca, cardápio e estilo. Nesse período, ampliou seu reconhecimento, \nfirmou parcerias estratégicas e fidelizou sua clientela.','ATIVO','2026-05-18 15:35:32','2026-05-18 15:35:32'),(12,'Expansão (Novas Unidades)','2006-07-11','Em [ANO], a cafeteria iniciou sua expansão regional, com a \nabertura de novas unidades e franquias no município de São Paulo e em cidades estratégicas do entorno, como \nGuarulhos e Campinas.','ATIVO','2026-05-18 15:35:34','2026-05-18 15:35:34'),(13,'Inovação e Diferenciação','2007-09-19','Um ano após a expansão, algumas unidades adotaram cardápios\nexclusivos, com insumos de pequenos produtores, técnicas tradicionais e seleção rigorosa de grãos. \nO sucesso levou à padronização dessas práticas em toda a rede.','ATIVO','2026-05-18 15:35:37','2026-05-18 15:35:37'),(14,'Expansão Nacional','2014-11-27','Em 2014, a Casa do Barista expandiu sua rede para todo o território nacional, \ncom filiais de Porto Alegre a Fortaleza.','ATIVO','2026-05-18 15:35:39','2026-05-18 15:35:39'),(15,'Internacionalização','2023-08-21','Em 2023, a Casa do Barista iniciou sua internacionalização pela \nAmérica do Sul, adaptando cardápios e culturas locais. Com qualidade e identidade fortes, \nconsolidou sua marca além das fronteiras, tornando-se referência regional. ','ATIVO','2026-05-18 15:35:43','2026-05-18 15:35:43');
/*!40000 ALTER TABLE `tbl_linha_tempo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_news`
--

DROP TABLE IF EXISTS `tbl_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_news` (
  `id_news` int NOT NULL AUTO_INCREMENT,
  `email_news` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `aceite_news` int NOT NULL DEFAULT '1',
  `data_criacao_news` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_atualizacao_news` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_news`),
  UNIQUE KEY `email_news` (`email_news`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_news`
--

LOCK TABLES `tbl_news` WRITE;
/*!40000 ALTER TABLE `tbl_news` DISABLE KEYS */;
INSERT INTO `tbl_news` VALUES (1,'Vollfahrt@gmail.com',1,'2026-05-13 14:21:08','2026-05-13 14:21:08'),(3,'VaiCorinthias1234@gmail.com',1,'2026-05-18 14:16:25','2026-05-18 14:16:25'),(4,'JoaozinhoGamer3000@gmail.com',1,'2026-05-18 14:19:26','2026-05-18 14:19:26'),(5,'FernandoSousa9090@gmail.com',1,'2026-05-18 14:19:28','2026-05-18 14:19:28'),(7,'AugustaBraganca@gmail.com',1,'2026-05-18 14:22:54','2026-05-18 14:22:54'),(8,'denominator@gmail.com',1,'2026-05-18 14:23:25','2026-05-18 14:23:25');
/*!40000 ALTER TABLE `tbl_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_produto`
--

DROP TABLE IF EXISTS `tbl_produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_produto` (
  `id_produto` int NOT NULL AUTO_INCREMENT,
  `nome_produto` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_categoria` int NOT NULL,
  `descricao_curta_produto` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `descricao_longa_produto` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `valor_produto` double(6,2) NOT NULL,
  `imagem_produto` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `destaque_produto` int NOT NULL DEFAULT '0',
  `status_produto` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `data_criacao_produto` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_atualizacao_produto` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_produto`),
  KEY `fk_produto_categoria` (`id_categoria`),
  CONSTRAINT `fk_produto_categoria` FOREIGN KEY (`id_categoria`) REFERENCES `tbl_categoria` (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_produto`
--

LOCK TABLES `tbl_produto` WRITE;
/*!40000 ALTER TABLE `tbl_produto` DISABLE KEYS */;
INSERT INTO `tbl_produto` VALUES (1,'Café longo',1,'Suave e Equilibrado','Café Gourmet das montanhas fria do monte fuji',13.90,'produto/cafe_longo.png',1,'ATIVO','2026-05-13 15:03:14','2026-05-29 16:58:16'),(4,'Croissant Dourado',3,'Folhado leve e amanteigado','Croissant artesanal, crocante por fora \ne macio por dentro, preparado com manteiga de alta qualidade',12.90,'produto/croissant_dourado.png',1,'ATIVO','2026-05-20 15:05:00','2026-05-20 15:05:00'),(5,'Panini Paulista',4,'Sanduíche quente e crocante','Pão prensado com presunto e queijo derretido, \nfinalizado na chapa para uma textura crocante',22.90,'produto/panini_paulista.png',1,'ATIVO','2026-05-20 15:08:05','2026-05-20 15:08:05'),(8,'Suprasumo',7,'Combo completo e equilibrado','Refeição combinada com pão na chapa com \nmanteiga, café ou bebida à escolha e acompanhamento do dia, oferecendo praticidade, sabor e energia \npara começar bem o dia.',24.90,'produto/suprasumo.png',1,'ATIVO','2026-05-20 15:19:35','2026-05-20 15:19:35'),(9,'Citrus Ice Fresh',5,'Refrescante e levemente cítrico','Bebida gelada à base de suco natural \nde laranja com toque de limão e gelo, oferecendo frescor intenso e equilíbrio entre doçura e acidez',16.90,'produto/citrus_ice_fresh.png',1,'ATIVO','2026-05-20 16:23:14','2026-05-20 16:23:14'),(10,'Macchiato Supra',1,'Intenso com toque cremoso','spresso encorpado “marcado” com uma leve camada de \nleite vaporizado, criando equilíbrio entre intensidade e suavidade, com finalização aveludada ',18.90,'produto/macchiato_supra.png',1,'ATIVO','2026-05-20 16:57:15','2026-05-29 16:32:39');
/*!40000 ALTER TABLE `tbl_produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_usuarios`
--

DROP TABLE IF EXISTS `tbl_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_usuarios` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `nome_usuario` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email_usuario` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `senha_usuario` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `foto_usuario` varchar(65) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nivel_usuario` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `data_criacao_usuario` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_atualizacao_usuario` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status_usuario` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_usuarios`
--

LOCK TABLES `tbl_usuarios` WRITE;
/*!40000 ALTER TABLE `tbl_usuarios` DISABLE KEYS */;
INSERT INTO `tbl_usuarios` VALUES (1,'Pedro Silva','pedro@casadobarista.com.br','senha123','usuarios/pedro_silva.png','ADMINISTRADOR','2026-05-13 15:17:15','2026-05-20 16:37:21','ATIVO'),(2,'Augusto Campos de Olinda','Austoengenheiro@gmail.com','senha123','usuarios/augusto_campos_olinda.png','ADMINISTRADOR','2026-05-20 16:37:33','2026-05-20 16:37:33','ATIVO'),(3,'Edicleideleine da Silva Gonçalves','edileine02@gmail.com','meusertao082003','usuarios/edileine.png','ADMINISTRADOR','2026-05-20 16:43:08','2026-05-20 16:43:08','ATIVO'),(4,'Tom Carvalho','Carvalho3908@gmail.com','senha123','usuario/tom_carvalho.png','ADMINISTRADOR','2026-05-20 16:45:20','2026-05-20 16:47:46','ATIVO'),(5,'Katarina Becker Silva','KatBecker@gmail.com','senha123','usuario/katarina_becker.png','ADMINISTRADOR','2026-05-20 16:52:05','2026-05-20 16:56:38','ATIVO'),(6,'Guillherme Ribeiro Schmidt','Guischmidt@gmail.com','senha123','usuarios/guillherme_schmidt.png','ADMINISTRADOR','2026-05-20 16:54:46','2026-05-20 16:54:46','ATIVO');
/*!40000 ALTER TABLE `tbl_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_usuarios_venda`
--

DROP TABLE IF EXISTS `tbl_usuarios_venda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_usuarios_venda` (
  `id_usuarios_venda` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int NOT NULL,
  `id_venda` int NOT NULL,
  `data_criacao_depoimento` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_atualizacao_cliente` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_usuarios_venda`),
  KEY `fk_usuarios_venda_usuario` (`id_usuario`),
  KEY `fk_usuarios_venda_venda` (`id_venda`),
  CONSTRAINT `fk_usuarios_venda_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `tbl_usuarios` (`id_usuario`),
  CONSTRAINT `fk_usuarios_venda_venda` FOREIGN KEY (`id_venda`) REFERENCES `tbl_venda` (`id_venda`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_usuarios_venda`
--

LOCK TABLES `tbl_usuarios_venda` WRITE;
/*!40000 ALTER TABLE `tbl_usuarios_venda` DISABLE KEYS */;
INSERT INTO `tbl_usuarios_venda` VALUES (5,1,1,'2026-05-22 16:49:13','2026-05-22 16:49:13'),(6,2,11,'2026-05-22 16:49:14','2026-05-22 16:49:14'),(7,3,12,'2026-05-22 16:49:15','2026-05-22 16:49:15'),(8,4,13,'2026-05-22 16:49:16','2026-05-22 16:49:16'),(9,5,14,'2026-05-22 16:49:18','2026-05-22 16:49:18'),(10,6,17,'2026-05-22 16:49:19','2026-05-22 16:49:19');
/*!40000 ALTER TABLE `tbl_usuarios_venda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_venda`
--

DROP TABLE IF EXISTS `tbl_venda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_venda` (
  `id_venda` int NOT NULL AUTO_INCREMENT,
  `data_hora_venda` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `valor_total_venda` double(10,2) NOT NULL,
  `forma_pagamento_venda` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_cliente` int NOT NULL,
  `status_venda` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'EM ANDAMENTO',
  `observacao_venda` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `data_criacao_venda` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_atualizacao_venda` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_venda`),
  KEY `fk_venda_cliente` (`id_cliente`),
  CONSTRAINT `fk_venda_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `tbl_cliente` (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_venda`
--

LOCK TABLES `tbl_venda` WRITE;
/*!40000 ALTER TABLE `tbl_venda` DISABLE KEYS */;
INSERT INTO `tbl_venda` VALUES (1,'2026-05-13 16:34:43',67.50,'CRÉDITO',1,'EM ANDAMENTO','No galpão 19.','2026-05-13 16:34:43','2026-07-22 17:15:04'),(11,'2026-05-22 15:12:40',58.70,'PIX',3,'EM ANDAMENTO','Localizado na mesa 14.','2026-05-22 15:12:40','2026-07-22 16:56:17'),(12,'2026-05-22 15:26:55',46.70,'PIX',4,'EM ANDAMENTO','Localizado na mesa 11','2026-05-22 15:26:55','2026-06-10 13:54:28'),(13,'2026-05-22 15:27:04',106.50,'CRÉDITO',5,'FINALIZADA','Localizado na mesa 13','2026-05-22 15:27:04','2026-07-22 17:01:18'),(14,'2026-05-22 15:29:11',58.70,'PIX',6,'EM ANDAMENTO','Localizado na mesa 9','2026-05-22 15:29:11','2026-07-22 14:46:20'),(17,'2026-05-22 16:38:12',80.50,'CRÉDITO',7,'EM ANDAMENTO','Localizado na mesa 7','2026-05-22 16:38:12','2026-07-22 14:48:54');
/*!40000 ALTER TABLE `tbl_venda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-09-09 19:52:33
