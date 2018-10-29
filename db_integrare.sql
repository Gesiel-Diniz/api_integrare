-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 29-Out-2018 às 01:55
-- Versão do servidor: 10.1.36-MariaDB
-- versão do PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `integrare`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `clients`
--

CREATE TABLE `clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `clients`
--

INSERT INTO `clients` (`id`, `name`, `address`, `email`, `created_at`, `updated_at`) VALUES
(7, 'Jair Messias Bolsonaro', 'Rua Orla Rio de Janeiro, nº17, Centro, Rio de Janeiro-RJ', 'jbolsonaro@psl.com.br', '2018-10-29 02:02:59', '2018-10-29 02:02:59'),
(8, 'Fernando Haddad', 'Av. Suaçuna, nº 13, Ibirapuera, São Paulo-SP', 'ferhaddad@pt.com.br', '2018-10-29 02:04:57', '2018-10-29 02:04:57'),
(9, 'Ciro Gomes', 'Av. Atlântica, nº 12, Barra Sul, Fortaleza-CE', 'ciro.gomes@pdt.org', '2018-10-29 02:06:48', '2018-10-29 02:06:48'),
(10, 'Marina Silva', 'Rua Bananal, nº 200, Bela Floresta, Rio Branco-AC', 'ma_silva@rede.com.br', '2018-10-29 02:08:31', '2018-10-29 02:08:31');

-- --------------------------------------------------------

--
-- Estrutura da tabela `client_products`
--

CREATE TABLE `client_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `quantity` smallint(6) NOT NULL,
  `date` date NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `client_products`
--

INSERT INTO `client_products` (`id`, `client_id`, `product_id`, `quantity`, `date`, `unit_price`, `total`, `created_at`, `updated_at`) VALUES
(1, 7, 3, 1, '2018-10-29', '2.99', '2.99', '2018-10-29 02:17:23', '2018-10-29 02:17:23'),
(2, 7, 4, 2, '2018-10-29', '12.43', '24.86', '2018-10-29 02:17:24', '2018-10-29 02:17:24'),
(3, 7, 5, 3, '2018-10-29', '3.39', '10.17', '2018-10-29 02:17:24', '2018-10-29 02:17:24'),
(4, 7, 8, 4, '2018-10-29', '2.49', '9.96', '2018-10-29 02:17:24', '2018-10-29 02:17:24'),
(5, 8, 4, 1, '2018-10-30', '12.99', '12.99', '2018-10-29 02:20:03', '2018-10-29 02:20:03'),
(6, 8, 3, 4, '2018-10-30', '3.49', '13.96', '2018-10-29 02:20:04', '2018-10-29 02:20:04'),
(7, 8, 7, 2, '2018-10-30', '5.59', '11.18', '2018-10-29 02:20:04', '2018-10-29 02:20:04'),
(8, 10, 6, 2, '2018-10-27', '4.59', '9.18', '2018-10-29 02:20:46', '2018-10-29 02:20:46');

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_10_26_213019_create_clients_table', 1),
(4, '2018_10_26_213608_create_products_table', 1),
(5, '2018_10_26_214136_create_client_product_table', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(3, 'Sabonete Rexona', 'Sabonete em barra', '2018-10-29 02:09:00', '2018-10-29 02:09:00'),
(4, 'Sabão Omo', 'Sabão em pó', '2018-10-29 02:10:40', '2018-10-29 02:10:40'),
(5, 'Óleo Soya', 'Óleo de soja vegetal', '2018-10-29 02:11:35', '2018-10-29 02:11:35'),
(6, 'Pão Pulman', 'Pão de forma', '2018-10-29 02:12:58', '2018-10-29 02:12:58'),
(7, 'Oral-B 3D', 'Creme dental(Pasta de dente)', '2018-10-29 02:13:48', '2018-10-29 02:13:48'),
(8, 'Biscoito Panco', 'Biscoito tipo wafer', '2018-10-29 02:14:34', '2018-10-29 02:14:34');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clients_email_unique` (`email`);

--
-- Indexes for table `client_products`
--
ALTER TABLE `client_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_product_client_id_foreign` (`client_id`),
  ADD KEY `client_product_product_id_foreign` (`product_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `client_products`
--
ALTER TABLE `client_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `client_products`
--
ALTER TABLE `client_products`
  ADD CONSTRAINT `client_product_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  ADD CONSTRAINT `client_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
