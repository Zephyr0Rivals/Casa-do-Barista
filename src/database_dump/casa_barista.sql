-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: mysql:3306
-- Tempo de geração: 09/09/2026 às 17:52
-- Versão do servidor: 8.4.10
-- Versão do PHP: 8.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `casa_barista`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` smallint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('D0Zw5tLRuiHYmQHhhH1uvYc3DaHtfd84Po9CY3PX', NULL, '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0', 'eyJfdG9rZW4iOiJWQUxabVYxbUpMcW0wUDVQY0ZzTkt5QXg0cHc1eGZmMnJqazc0aXBxIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cLzEyNy4wLjAuMTo4MDAwIiwicm91dGUiOiJob21lIn0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=', 1788551421),
('eQycVc44rGpe8cjSAo5fYMQvdxOkyT8OL2Dl637o', NULL, '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0', 'eyJfdG9rZW4iOiJHZ2tXVFF5T2R1MDhzcGp6VXd0emduV1F0UldBakZkdGdsejRYNjZoIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cL2xvY2FsaG9zdDo4MDAwXC9hZG1pblwvdmVuZGFzXC9jbGllbnRlIiwicm91dGUiOiJhZG1pbi52ZW5kYXMuY2xpZW50ZS5pbmRleCJ9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19', 1788553325),
('Ig3G1BlixyzfzP8yzYMqqyPelRJbvUhTywJMXQVS', NULL, '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0', 'eyJfdG9rZW4iOiJ0aHJRc0M1Z0pZV3pOcW1mNU9aOEl4N2IycGJiTWo3RzJzOXlPY1JkIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cL2xvY2FsaG9zdDo4MDAwXC9hZG1pblwvYmFubmVyIiwicm91dGUiOiJhZG1pbi5iYW5uZXIuaW5kZXgifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1788553291);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_banner`
--

CREATE TABLE `tbl_banner` (
  `id_banner` int NOT NULL,
  `titulo_banner` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `imagem_banner` varchar(65) COLLATE utf8mb4_general_ci NOT NULL,
  `status_banner` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `data_criacao_banner` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_atualizacao_banner` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbl_banner`
--

INSERT INTO `tbl_banner` (`id_banner`, `titulo_banner`, `imagem_banner`, `status_banner`, `data_criacao_banner`, `data_atualizacao_banner`) VALUES
(1, 'Promoção especial de inverno', 'banner/promocao_especial_de_inverno.png', 'ATIVO', '2026-05-13 14:02:34', '2026-05-20 14:14:50'),
(2, 'Moccacino ', 'banner/mocaccino.png', 'ATIVO', '2026-05-18 13:54:19', '2026-05-18 13:54:19'),
(5, 'Chocolate Alpino', 'banner/chocolate_alpilno.png', 'ATIVO', '2026-05-18 14:08:16', '2026-05-18 14:08:16'),
(6, 'Affogato', 'banner/affogato.png', 'ATIVO', '2026-05-18 14:08:34', '2026-07-27 20:20:04'),
(7, 'Latte com Leite de Cabra', 'banner/latte_leite_cabra.png', 'ATIVO', '2026-05-18 14:11:50', '2026-05-18 14:11:50'),
(8, 'Macchiato Lótus', 'banner/macchiato_lotus.png', 'INATIVO', '2026-05-18 14:11:52', '2026-06-02 14:14:11');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_categoria`
--

CREATE TABLE `tbl_categoria` (
  `id_categoria` int NOT NULL,
  `nome_categoria` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `status_categoria` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `data_criacao_categoria` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_atualizacao_categoria` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbl_categoria`
--

INSERT INTO `tbl_categoria` (`id_categoria`, `nome_categoria`, `status_categoria`, `data_criacao_categoria`, `data_atualizacao_categoria`) VALUES
(1, 'CAFÉ', 'ATIVO', '2026-05-13 14:52:13', '2026-05-13 14:52:13'),
(3, 'SALGADOS', 'ATIVO', '2026-05-18 17:24:29', '2026-05-20 16:25:06'),
(4, 'LANCHES', 'ATIVO', '2026-05-18 17:24:31', '2026-05-18 17:24:31'),
(5, 'BEBIDAS GELADAS', 'INATIVO', '2026-05-18 17:24:33', '2026-05-29 17:08:17'),
(7, 'COMBOS', 'ATIVO', '2026-05-18 17:24:38', '2026-05-20 16:15:53'),
(8, 'DOCES', 'ATIVO', '2026-05-20 16:24:35', '2026-05-20 16:24:35');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_cliente`
--

CREATE TABLE `tbl_cliente` (
  `id_cliente` int NOT NULL,
  `nome_cliente` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `email_cliente` varchar(80) COLLATE utf8mb4_general_ci NOT NULL,
  `senha_cliente` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `foto_cliente` varchar(65) COLLATE utf8mb4_general_ci NOT NULL,
  `status_cliente` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `data_criacao_cliente` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_atualizacao_produto` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbl_cliente`
--

INSERT INTO `tbl_cliente` (`id_cliente`, `nome_cliente`, `email_cliente`, `senha_cliente`, `foto_cliente`, `status_cliente`, `data_criacao_cliente`, `data_atualizacao_produto`) VALUES
(1, 'Lucas martins', 'lucas@gmail.com', 'senha123', 'cliente/lucas_na_praia.png', 'ATIVO', '2026-05-13 15:22:28', '2026-09-03 19:38:27'),
(3, 'Eduardo Teixeira', 'Teixerao@gmail.com', 'EdTeixeira432', 'cliente/eduardo_teixeira.png', 'ATIVO', '2026-05-20 17:08:29', '2026-05-20 17:12:10'),
(4, 'Gustavo Adolfo de Medeiros', 'Adolfomedeiros@gmail.com', 'Gusadolfomed43935', 'cliente/gustavo_adolfo_medeiros.png', 'ATIVO', '2026-05-20 17:10:47', '2026-05-20 17:11:52'),
(5, 'Rafael Hiroto Nagasaki', 'Heronaga@gmail.com', 'senha456', 'cliente/rafael_hiroto_nagasaki.png', 'ATIVO', '2026-05-20 17:14:28', '2026-05-20 17:14:28'),
(6, 'Caio Pereira dos Santos', 'CaioPereira9090@gmail.com', 'senha456', 'cliente/caio_pereira_santos.png', 'ATIVO', '2026-05-20 17:15:15', '2026-05-20 17:18:04'),
(7, 'Cristiano Henrique Carvalho', 'CristianoHenrique3443@gmail.com', 'Carvalhos2323', 'cliente/cristiano_henrique_carvalho.png', 'ATIVO', '2026-05-20 17:18:15', '2026-05-20 17:18:15');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_contato`
--

CREATE TABLE `tbl_contato` (
  `id_contato` int NOT NULL,
  `nome_contato` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `email_contato` varchar(80) COLLATE utf8mb4_general_ci NOT NULL,
  `telefone_contato` varchar(14) COLLATE utf8mb4_general_ci NOT NULL,
  `assunto_contato` varchar(7) COLLATE utf8mb4_general_ci NOT NULL,
  `mensagem_contato` text COLLATE utf8mb4_general_ci NOT NULL,
  `status_contato` varchar(80) COLLATE utf8mb4_general_ci NOT NULL,
  `data_criacao_contato` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_atualizacao_contato` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbl_contato`
--

INSERT INTO `tbl_contato` (`id_contato`, `nome_contato`, `email_contato`, `telefone_contato`, `assunto_contato`, `mensagem_contato`, `status_contato`, `data_criacao_contato`, `data_atualizacao_contato`) VALUES
(1, 'Afonso', 'fundador@gmail.com', '(11)24535-7777', 'DÚVIDA', 'olá bom dia, como vaís? Gosteria de saber se tu conseguías usar de leite natural de vaca?', 'LIDO', '2026-05-13 14:15:26', '2026-07-22 16:33:56'),
(2, 'Deodoro de Órleans', 'Deodoro55587@gmail.com', '(11)93658-8525', 'DÚVIDA', 'Estou muito curioso para o evento de confraternização da Casa do Barista, em que mês ele ira acontecer?', 'RECEBIDO', '2026-05-18 16:39:45', '2026-05-18 16:39:45'),
(3, 'Patrick de Oliveira', 'Patrick1234@gmail.com', '(11)89076-5667', 'CAFÉ', 'Ouvi dizer que o Expresso do Oriente vai voltar para o cardápio, isso é realmente verdade e por quanto tempo? ', 'LIDO', '2026-05-18 16:43:11', '2026-05-20 14:20:47'),
(4, 'Vinicius Gonzaga', 'Vinizaga@gmail.com', '(11)76580-7589', 'EVENTO', 'Gostaria de saber os dias e preços para um casamento.', 'RECEBIDO', '2026-05-18 16:45:56', '2026-05-18 16:45:56'),
(5, 'Sebastião de Olinda', 'Domsebastiao@gmail.com', '(55)74356-1832', 'DÚVIDA', 'Amo muito a rede da Casa do Barista, vocês têm alguma filial perto (ou em) Santa Maria?', 'RECEBIDO', '2026-05-18 16:55:54', '2026-05-18 16:55:54'),
(6, 'Augusta de Braga Nascimento', 'Braganascimento@gmail.com', '(19)96035-0728', 'CAFÉ', 'Vocês usam leite natural ou de caixa nas bebidas?', 'RECEBIDO', '2026-05-18 17:02:31', '2026-05-18 17:02:31');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_depoimento`
--

CREATE TABLE `tbl_depoimento` (
  `id_depoimento` int NOT NULL,
  `id_cliente` int NOT NULL,
  `titulo_depoimento` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `descricao_depoimento` text COLLATE utf8mb4_general_ci NOT NULL,
  `nota_depoimento` int NOT NULL,
  `status_depoimento` varchar(10) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'PENDENTE',
  `data_criacao_depoimento` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_atualizacao_depoimento` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbl_depoimento`
--

INSERT INTO `tbl_depoimento` (`id_depoimento`, `id_cliente`, `titulo_depoimento`, `descricao_depoimento`, `nota_depoimento`, `status_depoimento`, `data_criacao_depoimento`, `data_atualizacao_depoimento`) VALUES
(1, 1, 'Excelente café', 'O café estava perfeito e o atendimento foi muito acolhedor.', 3, 'APROVADO', '2026-05-13 15:29:04', '2026-07-28 19:52:10'),
(2, 3, 'Superou expectativas', 'Experiência excelente do início ao fim, recomendo muito.', 2, 'APROVADO', '2026-05-22 14:18:47', '2026-07-28 19:52:14'),
(3, 4, 'Simplesmente incrível', 'Tudo funcionou perfeitamente, desde a compra até o uso do produto.', 4, 'PENDENTE', '2026-05-22 14:18:49', '2026-07-28 19:52:18'),
(4, 5, 'Perfeito em todos os aspectos', 'Atendimento impecável, entrega rápida e produto de altíssima qualidade.', 5, 'PENDENTE', '2026-05-22 14:18:51', '2026-05-22 14:18:51'),
(5, 6, 'Muito bom', 'Gostei bastante, só alguns detalhes poderiam ser melhores.', 3, 'PENDENTE', '2026-05-22 14:18:52', '2026-07-28 19:52:26'),
(6, 7, 'Regular', 'Produto ok, mas nada que se destaque ou surpreenda.', 1, 'PENDENTE', '2026-05-22 14:18:54', '2026-07-28 19:52:33');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_galeria`
--

CREATE TABLE `tbl_galeria` (
  `id_galeria` int NOT NULL,
  `nome_galeria` varchar(80) COLLATE utf8mb4_general_ci NOT NULL,
  `imagem_galeria` varchar(65) COLLATE utf8mb4_general_ci NOT NULL,
  `status_galeria` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `data_criacao_galeria` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_atualizacao_galeria` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbl_galeria`
--

INSERT INTO `tbl_galeria` (`id_galeria`, `nome_galeria`, `imagem_galeria`, `status_galeria`, `data_criacao_galeria`, `data_atualizacao_galeria`) VALUES
(1, 'Ambiente interno', 'galeria/ambiente_interno.png', 'ATIVO', '2026-05-13 14:26:31', '2026-05-13 14:26:31'),
(3, 'Foto do bar', 'galeria/foto_bar.png', 'ATIVO', '2026-05-18 14:34:15', '2026-05-18 14:34:15'),
(4, 'Foto da Fachada da Cafeteria', 'galeria/foto_fachada_cafeteria.png', 'ATIVO', '2026-05-18 14:35:00', '2026-05-18 14:35:00'),
(5, 'Foto do Ambiente Externo', 'galeria/foto_ambiente_externo.png', 'ATIVO', '2026-05-18 14:36:21', '2026-05-18 14:36:21'),
(6, 'Foto de um Flat White', 'galeria/foto_flat_white.png', 'ATIVO', '2026-05-18 14:37:30', '2026-07-29 20:01:57'),
(7, 'Foto de um evento de confraternização', 'galeria/foto_evento_confraternizacao.png', 'ATIVO', '2026-05-18 14:38:23', '2026-07-29 19:59:01'),
(8, 'foto do banheiro', 'galeria/foto_banheiro', 'ATIVO', '2026-08-10 20:25:08', '2026-08-10 20:25:08');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_horarios`
--

CREATE TABLE `tbl_horarios` (
  `id_horarios` int NOT NULL,
  `dia_semana_horarios` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `hora_abertura_horarios` time NOT NULL,
  `hora_fechamento_horarios` time NOT NULL,
  `observacao_horarios` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `status_horarios` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `data_criacao_horarios` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_atualizacao_horarios` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbl_horarios`
--

INSERT INTO `tbl_horarios` (`id_horarios`, `dia_semana_horarios`, `hora_abertura_horarios`, `hora_fechamento_horarios`, `observacao_horarios`, `status_horarios`, `data_criacao_horarios`, `data_atualizacao_horarios`) VALUES
(1, 'SEGUNDA-FEIRA', '08:00:00', '20:00:00', 'Atendimento por ordem de chegada', 'ATIVO', '2026-05-13 14:47:05', '2026-05-13 14:47:05'),
(2, 'TERÇA-FEIRA', '08:00:00', '20:00:00', 'Atendimento por ordem de chegada', 'ATIVO', '2026-05-18 16:24:52', '2026-05-18 16:24:52'),
(3, 'QUARTA-FEIRA', '08:00:00', '20:00:00', 'Atendimento por ordem de chegada', 'ATIVO', '2026-05-18 16:24:54', '2026-05-18 16:24:54'),
(4, 'QUINTA-FEIRA', '08:00:00', '20:00:00', 'Atendimento por ordem de chegada', 'ATIVO', '2026-05-18 16:24:56', '2026-05-18 16:24:56'),
(5, 'SEXTA-FEIRA', '08:00:00', '22:00:00', 'Atendimento livre até às 18h.', 'ATIVO', '2026-05-18 16:24:57', '2026-07-22 16:17:20'),
(6, 'SÁBADO', '09:00:00', '18:00:00', 'Atendimento por ordem de chegada', 'ATIVO', '2026-05-18 16:24:59', '2026-05-18 16:24:59'),
(7, 'DOMINGO', '09:00:00', '18:00:00', 'Atendimento por ordem de chegada', 'ATIVO', '2026-05-18 16:25:28', '2026-07-22 16:12:38');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_itens_venda`
--

CREATE TABLE `tbl_itens_venda` (
  `id_itens_venda` int NOT NULL,
  `id_venda` int NOT NULL,
  `id_produto` int NOT NULL,
  `qtde_itens_venda` double(6,2) NOT NULL,
  `valor_unit_itens_venda` double(6,2) NOT NULL,
  `subtotal_itens_venda` double(6,2) NOT NULL,
  `status_itens_venda` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `data_criacao_itens_venda` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_atualizacao_itens_venda` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbl_itens_venda`
--

INSERT INTO `tbl_itens_venda` (`id_itens_venda`, `id_venda`, `id_produto`, `qtde_itens_venda`, `valor_unit_itens_venda`, `subtotal_itens_venda`, `status_itens_venda`, `data_criacao_itens_venda`, `data_atualizacao_itens_venda`) VALUES
(4, 1, 1, 3.00, 13.90, 41.70, 'PENDENTE', '2026-05-29 14:28:23', '2026-07-22 17:08:28'),
(5, 11, 9, 2.00, 16.90, 33.80, 'PENDENTE', '2026-05-29 14:28:26', '2026-06-02 13:36:03'),
(6, 12, 4, 2.00, 12.90, 25.80, 'PENDENTE', '2026-05-29 14:28:41', '2026-06-02 13:36:05'),
(7, 13, 5, 3.00, 22.90, 68.70, 'PENDENTE', '2026-05-29 14:42:46', '2026-06-02 13:36:07'),
(8, 14, 8, 1.00, 24.90, 24.90, 'PENDENTE', '2026-05-29 14:43:42', '2026-06-02 13:36:09'),
(9, 17, 10, 2.00, 20.90, 41.80, 'PENDENTE', '2026-05-29 14:46:21', '2026-06-02 13:36:22'),
(10, 1, 4, 2.00, 12.90, 25.80, 'PENDENTE', '2026-06-02 13:46:07', '2026-06-02 13:46:07'),
(11, 11, 8, 1.00, 24.90, 24.90, 'PENDENTE', '2026-06-10 13:38:37', '2026-06-10 13:38:37'),
(12, 13, 10, 2.00, 18.90, 37.80, 'PENDENTE', '2026-06-10 13:41:36', '2026-06-10 13:41:36'),
(13, 12, 9, 1.00, 16.90, 16.90, 'PENDENTE', '2026-06-10 13:45:19', '2026-06-10 13:45:19'),
(14, 14, 9, 2.00, 16.90, 33.80, 'PENDENTE', '2026-07-22 14:27:02', '2026-07-22 14:27:02'),
(17, 17, 4, 3.00, 12.90, 38.70, 'PENDENTE', '2026-07-22 14:32:32', '2026-07-22 14:32:32');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_linha_tempo`
--

CREATE TABLE `tbl_linha_tempo` (
  `id_linha_tempo` int NOT NULL,
  `titulo_linha_tempo` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `ano_linha_tempo` date NOT NULL,
  `descricao_linha_tempo` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `status_linha_tempo` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `data_criacao_linha_tempo` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_atualizacao_linha_tempo` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbl_linha_tempo`
--

INSERT INTO `tbl_linha_tempo` (`id_linha_tempo`, `titulo_linha_tempo`, `ano_linha_tempo`, `descricao_linha_tempo`, `status_linha_tempo`, `data_criacao_linha_tempo`, `data_atualizacao_linha_tempo`) VALUES
(1, 'inauguração', '2001-01-01', 'A Casa do Barista inicou suas operações oferecendo cafe especiais e atendimento acolhedor.', 'ATIVO', '2026-05-13 14:36:19', '2026-05-13 14:36:19'),
(11, 'Consolidação no Mercado', '2003-03-04', 'Em 2003, a cafeteria consolidou sua presença no mercado e \ndefiniu sua identidade, estabelecendo marca, cardápio e estilo. Nesse período, ampliou seu reconhecimento, \nfirmou parcerias estratégicas e fidelizou sua clientela.', 'ATIVO', '2026-05-18 15:35:32', '2026-05-18 15:35:32'),
(12, 'Expansão (Novas Unidades)', '2006-07-11', 'Em [ANO], a cafeteria iniciou sua expansão regional, com a \nabertura de novas unidades e franquias no município de São Paulo e em cidades estratégicas do entorno, como \nGuarulhos e Campinas.', 'ATIVO', '2026-05-18 15:35:34', '2026-05-18 15:35:34'),
(13, 'Inovação e Diferenciação', '2007-09-19', 'Um ano após a expansão, algumas unidades adotaram cardápios\nexclusivos, com insumos de pequenos produtores, técnicas tradicionais e seleção rigorosa de grãos. \nO sucesso levou à padronização dessas práticas em toda a rede.', 'ATIVO', '2026-05-18 15:35:37', '2026-05-18 15:35:37'),
(14, 'Expansão Nacional', '2014-11-27', 'Em 2014, a Casa do Barista expandiu sua rede para todo o território nacional, \ncom filiais de Porto Alegre a Fortaleza.', 'ATIVO', '2026-05-18 15:35:39', '2026-05-18 15:35:39'),
(15, 'Internacionalização', '2023-08-21', 'Em 2023, a Casa do Barista iniciou sua internacionalização pela \nAmérica do Sul, adaptando cardápios e culturas locais. Com qualidade e identidade fortes, \nconsolidou sua marca além das fronteiras, tornando-se referência regional. ', 'ATIVO', '2026-05-18 15:35:43', '2026-05-18 15:35:43');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_news`
--

CREATE TABLE `tbl_news` (
  `id_news` int NOT NULL,
  `email_news` varchar(80) COLLATE utf8mb4_general_ci NOT NULL,
  `aceite_news` int NOT NULL DEFAULT '1',
  `data_criacao_news` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_atualizacao_news` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbl_news`
--

INSERT INTO `tbl_news` (`id_news`, `email_news`, `aceite_news`, `data_criacao_news`, `data_atualizacao_news`) VALUES
(1, 'Vollfahrt@gmail.com', 1, '2026-05-13 14:21:08', '2026-05-13 14:21:08'),
(3, 'VaiCorinthias1234@gmail.com', 1, '2026-05-18 14:16:25', '2026-05-18 14:16:25'),
(4, 'JoaozinhoGamer3000@gmail.com', 1, '2026-05-18 14:19:26', '2026-05-18 14:19:26'),
(5, 'FernandoSousa9090@gmail.com', 1, '2026-05-18 14:19:28', '2026-05-18 14:19:28'),
(7, 'AugustaBraganca@gmail.com', 1, '2026-05-18 14:22:54', '2026-05-18 14:22:54'),
(8, 'denominator@gmail.com', 1, '2026-05-18 14:23:25', '2026-05-18 14:23:25');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_produto`
--

CREATE TABLE `tbl_produto` (
  `id_produto` int NOT NULL,
  `nome_produto` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `id_categoria` int NOT NULL,
  `descricao_curta_produto` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `descricao_longa_produto` text COLLATE utf8mb4_general_ci,
  `valor_produto` double(6,2) NOT NULL,
  `imagem_produto` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
  `destaque_produto` int NOT NULL DEFAULT '0',
  `status_produto` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `data_criacao_produto` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_atualizacao_produto` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbl_produto`
--

INSERT INTO `tbl_produto` (`id_produto`, `nome_produto`, `id_categoria`, `descricao_curta_produto`, `descricao_longa_produto`, `valor_produto`, `imagem_produto`, `destaque_produto`, `status_produto`, `data_criacao_produto`, `data_atualizacao_produto`) VALUES
(1, 'Café longo', 1, 'Suave e Equilibrado', 'Café Gourmet das montanhas fria do monte fuji', 13.90, 'produto/cafe_longo.png', 1, 'ATIVO', '2026-05-13 15:03:14', '2026-05-29 16:58:16'),
(4, 'Croissant Dourado', 3, 'Folhado leve e amanteigado', 'Croissant artesanal, crocante por fora \ne macio por dentro, preparado com manteiga de alta qualidade', 12.90, 'produto/croissant_dourado.png', 1, 'ATIVO', '2026-05-20 15:05:00', '2026-05-20 15:05:00'),
(5, 'Panini Paulista', 4, 'Sanduíche quente e crocante', 'Pão prensado com presunto e queijo derretido, \nfinalizado na chapa para uma textura crocante', 22.90, 'produto/panini_paulista.png', 1, 'ATIVO', '2026-05-20 15:08:05', '2026-05-20 15:08:05'),
(8, 'Suprasumo', 7, 'Combo completo e equilibrado', 'Refeição combinada com pão na chapa com \nmanteiga, café ou bebida à escolha e acompanhamento do dia, oferecendo praticidade, sabor e energia \npara começar bem o dia.', 24.90, 'produto/suprasumo.png', 1, 'ATIVO', '2026-05-20 15:19:35', '2026-05-20 15:19:35'),
(9, 'Citrus Ice Fresh', 5, 'Refrescante e levemente cítrico', 'Bebida gelada à base de suco natural \nde laranja com toque de limão e gelo, oferecendo frescor intenso e equilíbrio entre doçura e acidez', 16.90, 'produto/citrus_ice_fresh.png', 1, 'ATIVO', '2026-05-20 16:23:14', '2026-05-20 16:23:14'),
(10, 'Macchiato Supra', 1, 'Intenso com toque cremoso', 'spresso encorpado “marcado” com uma leve camada de \nleite vaporizado, criando equilíbrio entre intensidade e suavidade, com finalização aveludada ', 18.90, 'produto/macchiato_supra.png', 1, 'ATIVO', '2026-05-20 16:57:15', '2026-05-29 16:32:39');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_usuarios`
--

CREATE TABLE `tbl_usuarios` (
  `id_usuario` int NOT NULL,
  `nome_usuario` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `email_usuario` varchar(80) COLLATE utf8mb4_general_ci NOT NULL,
  `senha_usuario` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `foto_usuario` varchar(65) COLLATE utf8mb4_general_ci NOT NULL,
  `nivel_usuario` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `data_criacao_usuario` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_atualizacao_usuario` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status_usuario` varchar(10) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbl_usuarios`
--

INSERT INTO `tbl_usuarios` (`id_usuario`, `nome_usuario`, `email_usuario`, `senha_usuario`, `foto_usuario`, `nivel_usuario`, `data_criacao_usuario`, `data_atualizacao_usuario`, `status_usuario`) VALUES
(1, 'Pedro Silva', 'pedro@casadobarista.com.br', 'senha123', 'usuarios/pedro_silva.png', 'ADMINISTRADOR', '2026-05-13 15:17:15', '2026-05-20 16:37:21', 'ATIVO'),
(2, 'Augusto Campos de Olinda', 'Austoengenheiro@gmail.com', 'senha123', 'usuarios/augusto_campos_olinda.png', 'ADMINISTRADOR', '2026-05-20 16:37:33', '2026-05-20 16:37:33', 'ATIVO'),
(3, 'Edicleideleine da Silva Gonçalves', 'edileine02@gmail.com', 'meusertao082003', 'usuarios/edileine.png', 'ADMINISTRADOR', '2026-05-20 16:43:08', '2026-05-20 16:43:08', 'ATIVO'),
(4, 'Tom Carvalho', 'Carvalho3908@gmail.com', 'senha123', 'usuario/tom_carvalho.png', 'ADMINISTRADOR', '2026-05-20 16:45:20', '2026-05-20 16:47:46', 'ATIVO'),
(5, 'Katarina Becker Silva', 'KatBecker@gmail.com', 'senha123', 'usuario/katarina_becker.png', 'ADMINISTRADOR', '2026-05-20 16:52:05', '2026-05-20 16:56:38', 'ATIVO'),
(6, 'Guillherme Ribeiro Schmidt', 'Guischmidt@gmail.com', 'senha123', 'usuarios/guillherme_schmidt.png', 'ADMINISTRADOR', '2026-05-20 16:54:46', '2026-05-20 16:54:46', 'ATIVO');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_usuarios_venda`
--

CREATE TABLE `tbl_usuarios_venda` (
  `id_usuarios_venda` int NOT NULL,
  `id_usuario` int NOT NULL,
  `id_venda` int NOT NULL,
  `data_criacao_depoimento` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_atualizacao_cliente` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbl_usuarios_venda`
--

INSERT INTO `tbl_usuarios_venda` (`id_usuarios_venda`, `id_usuario`, `id_venda`, `data_criacao_depoimento`, `data_atualizacao_cliente`) VALUES
(5, 1, 1, '2026-05-22 16:49:13', '2026-05-22 16:49:13'),
(6, 2, 11, '2026-05-22 16:49:14', '2026-05-22 16:49:14'),
(7, 3, 12, '2026-05-22 16:49:15', '2026-05-22 16:49:15'),
(8, 4, 13, '2026-05-22 16:49:16', '2026-05-22 16:49:16'),
(9, 5, 14, '2026-05-22 16:49:18', '2026-05-22 16:49:18'),
(10, 6, 17, '2026-05-22 16:49:19', '2026-05-22 16:49:19');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_venda`
--

CREATE TABLE `tbl_venda` (
  `id_venda` int NOT NULL,
  `data_hora_venda` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `valor_total_venda` double(10,2) NOT NULL,
  `forma_pagamento_venda` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `id_cliente` int NOT NULL,
  `status_venda` varchar(12) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'EM ANDAMENTO',
  `observacao_venda` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `data_criacao_venda` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_atualizacao_venda` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbl_venda`
--

INSERT INTO `tbl_venda` (`id_venda`, `data_hora_venda`, `valor_total_venda`, `forma_pagamento_venda`, `id_cliente`, `status_venda`, `observacao_venda`, `data_criacao_venda`, `data_atualizacao_venda`) VALUES
(1, '2026-05-13 16:34:43', 67.50, 'CRÉDITO', 1, 'EM ANDAMENTO', 'No galpão 19.', '2026-05-13 16:34:43', '2026-07-22 17:15:04'),
(11, '2026-05-22 15:12:40', 58.70, 'PIX', 3, 'EM ANDAMENTO', 'Localizado na mesa 14.', '2026-05-22 15:12:40', '2026-07-22 16:56:17'),
(12, '2026-05-22 15:26:55', 46.70, 'PIX', 4, 'EM ANDAMENTO', 'Localizado na mesa 11', '2026-05-22 15:26:55', '2026-06-10 13:54:28'),
(13, '2026-05-22 15:27:04', 106.50, 'CRÉDITO', 5, 'FINALIZADA', 'Localizado na mesa 13', '2026-05-22 15:27:04', '2026-07-22 17:01:18'),
(14, '2026-05-22 15:29:11', 58.70, 'PIX', 6, 'EM ANDAMENTO', 'Localizado na mesa 9', '2026-05-22 15:29:11', '2026-07-22 14:46:20'),
(17, '2026-05-22 16:38:12', 80.50, 'CRÉDITO', 7, 'EM ANDAMENTO', 'Localizado na mesa 7', '2026-05-22 16:38:12', '2026-07-22 14:48:54');

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Índices de tabela `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Índices de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`),
  ADD KEY `failed_jobs_connection_queue_failed_at_index` (`connection`,`queue`,`failed_at`);

--
-- Índices de tabela `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Índices de tabela `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Índices de tabela `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Índices de tabela `tbl_banner`
--
ALTER TABLE `tbl_banner`
  ADD PRIMARY KEY (`id_banner`);

--
-- Índices de tabela `tbl_categoria`
--
ALTER TABLE `tbl_categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Índices de tabela `tbl_cliente`
--
ALTER TABLE `tbl_cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Índices de tabela `tbl_contato`
--
ALTER TABLE `tbl_contato`
  ADD PRIMARY KEY (`id_contato`);

--
-- Índices de tabela `tbl_depoimento`
--
ALTER TABLE `tbl_depoimento`
  ADD PRIMARY KEY (`id_depoimento`),
  ADD KEY `fk_depoimento_cliente` (`id_cliente`);

--
-- Índices de tabela `tbl_galeria`
--
ALTER TABLE `tbl_galeria`
  ADD PRIMARY KEY (`id_galeria`);

--
-- Índices de tabela `tbl_horarios`
--
ALTER TABLE `tbl_horarios`
  ADD PRIMARY KEY (`id_horarios`);

--
-- Índices de tabela `tbl_itens_venda`
--
ALTER TABLE `tbl_itens_venda`
  ADD PRIMARY KEY (`id_itens_venda`),
  ADD KEY `fk_itens_venda_venda` (`id_venda`),
  ADD KEY `fk_itens_venda_produto` (`id_produto`);

--
-- Índices de tabela `tbl_linha_tempo`
--
ALTER TABLE `tbl_linha_tempo`
  ADD PRIMARY KEY (`id_linha_tempo`);

--
-- Índices de tabela `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD PRIMARY KEY (`id_news`),
  ADD UNIQUE KEY `email_news` (`email_news`);

--
-- Índices de tabela `tbl_produto`
--
ALTER TABLE `tbl_produto`
  ADD PRIMARY KEY (`id_produto`),
  ADD KEY `fk_produto_categoria` (`id_categoria`);

--
-- Índices de tabela `tbl_usuarios`
--
ALTER TABLE `tbl_usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Índices de tabela `tbl_usuarios_venda`
--
ALTER TABLE `tbl_usuarios_venda`
  ADD PRIMARY KEY (`id_usuarios_venda`),
  ADD KEY `fk_usuarios_venda_usuario` (`id_usuario`),
  ADD KEY `fk_usuarios_venda_venda` (`id_venda`);

--
-- Índices de tabela `tbl_venda`
--
ALTER TABLE `tbl_venda`
  ADD PRIMARY KEY (`id_venda`),
  ADD KEY `fk_venda_cliente` (`id_cliente`);

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tbl_banner`
--
ALTER TABLE `tbl_banner`
  MODIFY `id_banner` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `tbl_categoria`
--
ALTER TABLE `tbl_categoria`
  MODIFY `id_categoria` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `tbl_cliente`
--
ALTER TABLE `tbl_cliente`
  MODIFY `id_cliente` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `tbl_contato`
--
ALTER TABLE `tbl_contato`
  MODIFY `id_contato` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `tbl_depoimento`
--
ALTER TABLE `tbl_depoimento`
  MODIFY `id_depoimento` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `tbl_galeria`
--
ALTER TABLE `tbl_galeria`
  MODIFY `id_galeria` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `tbl_horarios`
--
ALTER TABLE `tbl_horarios`
  MODIFY `id_horarios` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `tbl_itens_venda`
--
ALTER TABLE `tbl_itens_venda`
  MODIFY `id_itens_venda` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `tbl_linha_tempo`
--
ALTER TABLE `tbl_linha_tempo`
  MODIFY `id_linha_tempo` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `tbl_news`
--
ALTER TABLE `tbl_news`
  MODIFY `id_news` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `tbl_produto`
--
ALTER TABLE `tbl_produto`
  MODIFY `id_produto` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `tbl_usuarios`
--
ALTER TABLE `tbl_usuarios`
  MODIFY `id_usuario` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `tbl_usuarios_venda`
--
ALTER TABLE `tbl_usuarios_venda`
  MODIFY `id_usuarios_venda` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `tbl_venda`
--
ALTER TABLE `tbl_venda`
  MODIFY `id_venda` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `tbl_depoimento`
--
ALTER TABLE `tbl_depoimento`
  ADD CONSTRAINT `fk_depoimento_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `tbl_cliente` (`id_cliente`);

--
-- Restrições para tabelas `tbl_itens_venda`
--
ALTER TABLE `tbl_itens_venda`
  ADD CONSTRAINT `fk_itens_venda_produto` FOREIGN KEY (`id_produto`) REFERENCES `tbl_produto` (`id_produto`),
  ADD CONSTRAINT `fk_itens_venda_venda` FOREIGN KEY (`id_venda`) REFERENCES `tbl_venda` (`id_venda`);

--
-- Restrições para tabelas `tbl_produto`
--
ALTER TABLE `tbl_produto`
  ADD CONSTRAINT `fk_produto_categoria` FOREIGN KEY (`id_categoria`) REFERENCES `tbl_categoria` (`id_categoria`);

--
-- Restrições para tabelas `tbl_usuarios_venda`
--
ALTER TABLE `tbl_usuarios_venda`
  ADD CONSTRAINT `fk_usuarios_venda_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `tbl_usuarios` (`id_usuario`),
  ADD CONSTRAINT `fk_usuarios_venda_venda` FOREIGN KEY (`id_venda`) REFERENCES `tbl_venda` (`id_venda`);

--
-- Restrições para tabelas `tbl_venda`
--
ALTER TABLE `tbl_venda`
  ADD CONSTRAINT `fk_venda_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `tbl_cliente` (`id_cliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
