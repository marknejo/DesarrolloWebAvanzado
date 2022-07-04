-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-07-2022 a las 22:09:02
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `exemendos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actorpeliculas`
--
-- Creación: 08-06-2022 a las 18:53:09
--

CREATE TABLE `actorpeliculas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `act_id` bigint(20) UNSIGNED NOT NULL,
  `pel_id` bigint(20) UNSIGNED NOT NULL,
  `aplpapel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `actorpeliculas`
--

INSERT INTO `actorpeliculas` (`id`, `act_id`, `pel_id`, `aplpapel`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Hombre en Casa', '2022-06-09 00:24:00', '2022-06-09 00:24:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actors`
--
-- Creación: 08-06-2022 a las 18:53:09
--

CREATE TABLE `actors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sex_id` bigint(20) UNSIGNED NOT NULL,
  `actnombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `actors`
--

INSERT INTO `actors` (`id`, `sex_id`, `actnombre`, `created_at`, `updated_at`) VALUES
(1, 2, 'Will Smith', '2022-06-09 00:16:08', '2022-06-24 11:05:38'),
(2, 1, 'Margot Robbie', '2022-06-18 04:06:06', '2022-06-24 11:05:28'),
(3, 2, 'Gran Gustin', '2022-06-24 22:09:57', '2022-06-24 22:09:57'),
(4, 2, 'Lucas Till', '2022-06-24 22:10:08', '2022-06-24 22:10:08'),
(5, 2, 'Dylan O\'Brien', '2022-06-24 22:10:27', '2022-06-24 22:10:27'),
(6, 2, 'Dacre Montgomery', '2022-06-24 22:10:38', '2022-06-24 22:10:38'),
(7, 2, 'Austin Butler', '2022-06-24 22:10:48', '2022-06-24 22:10:48'),
(8, 1, 'Lola Tung', '2022-06-24 22:11:07', '2022-06-24 22:11:07'),
(9, 2, 'Christopher Briney', '2022-06-24 22:11:19', '2022-06-24 22:11:19'),
(10, 1, 'Genesis Rodriguez', '2022-06-24 22:11:30', '2022-06-24 22:11:30'),
(11, 2, 'Johnny Depp', '2022-06-24 22:11:43', '2022-06-24 22:11:43'),
(12, 2, 'Cilian Murphy', '2022-06-24 22:11:52', '2022-06-24 22:11:52'),
(13, 1, 'Mia Khalifa', '2022-06-24 22:12:03', '2022-06-24 22:12:03'),
(14, 2, 'Jamie Campbell Bower', '2022-06-24 22:12:16', '2022-06-24 22:12:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alquilers`
--
-- Creación: 08-06-2022 a las 18:53:09
--

CREATE TABLE `alquilers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `soc_id` bigint(20) UNSIGNED NOT NULL,
  `pel_id` bigint(20) UNSIGNED NOT NULL,
  `alqfechadesde` date NOT NULL,
  `alqfechahasta` date NOT NULL,
  `alqcosto` decimal(4,2) NOT NULL,
  `alqfechaentrega` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `alquilers`
--

INSERT INTO `alquilers` (`id`, `soc_id`, `pel_id`, `alqfechadesde`, `alqfechahasta`, `alqcosto`, `alqfechaentrega`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2023-12-15', '2023-12-20', '50.00', '2022-06-08', '2022-06-09 00:21:41', '2022-06-09 00:21:41'),
(2, 2, 1, '2022-06-08', '2022-06-08', '40.00', '2022-06-08', '2022-06-09 00:37:38', '2022-06-09 00:37:38'),
(3, 1, 1, '2023-02-10', '2023-02-20', '10.00', '2023-02-25', '2022-06-09 01:10:12', '2022-06-09 01:10:12'),
(4, 5, 8, '2022-03-12', '2022-03-15', '30.00', '2023-12-15', '2022-06-24 22:15:22', '2022-06-24 22:15:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `directors`
--
-- Creación: 08-06-2022 a las 18:53:09
--

CREATE TABLE `directors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dirnombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `directors`
--

INSERT INTO `directors` (`id`, `dirnombre`, `created_at`, `updated_at`) VALUES
(1, 'Zack Snider', '2022-06-09 00:11:53', '2022-06-09 00:11:53'),
(2, 'Gillermo del Toro', '2022-06-24 21:35:25', '2022-06-24 21:35:25'),
(3, 'Quentin Tarantino', '2022-06-24 21:35:55', '2022-06-24 21:35:55'),
(4, 'Steven Spielberg', '2022-06-24 21:36:10', '2022-06-24 21:36:10'),
(5, 'Martin Scorsese', '2022-06-24 21:36:19', '2022-06-24 21:36:19'),
(6, 'Tim Burton', '2022-06-24 21:36:52', '2022-06-24 21:36:52'),
(7, 'Christopher Nolan', '2022-06-24 21:37:13', '2022-06-24 21:37:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--
-- Creación: 08-06-2022 a las 18:53:08
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formatos`
--
-- Creación: 08-06-2022 a las 18:53:09
--

CREATE TABLE `formatos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fornombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `formatos`
--

INSERT INTO `formatos` (`id`, `fornombre`, `created_at`, `updated_at`) VALUES
(1, 'HD', '2022-06-09 00:12:20', '2022-06-09 00:12:20'),
(2, 'FULL HD', '2022-06-09 00:12:28', '2022-06-09 00:12:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos`
--
-- Creación: 08-06-2022 a las 18:53:09
--

CREATE TABLE `generos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gennombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `generos`
--

INSERT INTO `generos` (`id`, `gennombre`, `created_at`, `updated_at`) VALUES
(1, 'Terror', '2022-06-09 00:11:35', '2022-06-09 00:11:35'),
(2, 'Romance', '2022-06-24 09:22:17', '2022-06-24 09:22:17'),
(5, 'Accion', '2022-06-24 21:33:32', '2022-06-24 21:33:32'),
(7, 'Ciencia Ficcion', '2022-06-24 22:32:21', '2022-06-24 22:32:21'),
(8, 'Comedia', '2022-06-24 22:32:28', '2022-06-24 22:32:28'),
(9, 'Animada', '2022-06-24 22:32:43', '2022-06-24 22:32:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--
-- Creación: 08-06-2022 a las 18:53:08
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_06_08_182742_sexos', 1),
(6, '2022_06_08_182858_generos', 1),
(7, '2022_06_08_183006_directors', 1),
(8, '2022_06_08_184917_formatos', 1),
(9, '2022_06_08_184943_socios', 1),
(10, '2022_06_08_185009_actors', 1),
(11, '2022_06_08_185047_peliculas', 1),
(12, '2022_06_08_185125_alquilers', 1),
(13, '2022_06_08_185201_actorpeliculas', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--
-- Creación: 08-06-2022 a las 18:53:08
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculas`
--
-- Creación: 08-06-2022 a las 18:53:09
--

CREATE TABLE `peliculas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gen_id` bigint(20) UNSIGNED NOT NULL,
  `dir_id` bigint(20) UNSIGNED NOT NULL,
  `for_id` bigint(20) UNSIGNED NOT NULL,
  `pelnombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pelcosto` decimal(10,2) NOT NULL,
  `pelfechaestreno` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `peliculas`
--

INSERT INTO `peliculas` (`id`, `gen_id`, `dir_id`, `for_id`, `pelnombre`, `pelcosto`, `pelfechaestreno`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 'Chuky', '50.00', '2023-05-20', '2022-06-09 00:19:35', '2022-06-09 00:19:35'),
(2, 1, 1, 2, 'Batman ', '15.00', '2022-06-23', '2022-06-24 06:06:12', '2022-06-24 06:06:12'),
(3, 2, 1, 1, 'Eterno Resplando de una mente sin Recuerdos', '20.00', '2022-06-23', '2022-06-24 09:28:10', '2022-06-24 09:28:10'),
(5, 2, 2, 1, 'la forma del Agua', '30.00', '2022-06-24', '2022-06-24 21:39:42', '2022-06-24 21:39:42'),
(6, 1, 2, 1, 'Mamá', '30.00', '1997-06-24', '2022-06-24 21:40:25', '2022-06-24 21:40:25'),
(7, 5, 3, 2, 'Kill Bill: la venganza volumen 1', '30.00', '2003-02-20', '2022-06-24 21:44:08', '2022-06-24 21:44:08'),
(8, 5, 3, 2, 'Tiempos Violentos', '30.00', '1994-12-04', '2022-06-24 21:44:36', '2022-06-24 21:44:36'),
(13, 7, 4, 2, 'Jurasic Park', '25.00', '1993-12-12', '2022-06-24 22:36:16', '2022-06-24 22:36:16'),
(14, 7, 4, 1, 'Tiburon', '30.00', '1975-06-14', '2022-06-24 22:37:02', '2022-06-24 22:37:02'),
(15, 7, 6, 2, 'Batman', '30.00', '1989-06-12', '2022-06-24 22:38:29', '2022-06-24 22:38:29'),
(16, 7, 2, 1, 'Titanes del Pacifico', '30.00', '2013-01-30', '2022-06-24 22:39:28', '2022-06-24 22:39:28'),
(17, 8, 7, 2, 'Lucha ciega', '30.00', '2004-02-14', '2022-06-24 22:40:47', '2022-06-24 22:40:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--
-- Creación: 08-06-2022 a las 18:53:08
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sexos`
--
-- Creación: 08-06-2022 a las 18:53:09
--

CREATE TABLE `sexos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sexnombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sexos`
--

INSERT INTO `sexos` (`id`, `sexnombre`, `created_at`, `updated_at`) VALUES
(1, 'Femenino', '2022-06-09 00:07:17', '2022-06-09 00:07:17'),
(2, 'Masculino', '2022-06-09 00:27:50', '2022-06-09 00:27:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `socios`
--
-- Creación: 08-06-2022 a las 18:53:09
--

CREATE TABLE `socios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `soccedula` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `socnombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `socdireccion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `soctelefono` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `soccorreo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `socios`
--

INSERT INTO `socios` (`id`, `soccedula`, `socnombre`, `socdireccion`, `soctelefono`, `soccorreo`, `created_at`, `updated_at`) VALUES
(1, '0503930604', 'Mateo Borja', 'Latacunga', '0996442663', 'mateo246@gmail.com', '2022-06-09 00:13:28', '2022-06-09 00:13:28'),
(2, '0503930605', 'Lucas', 'Ambato', '0996442665', 'lucas@hotmail.com', '2022-06-09 00:36:43', '2022-06-09 00:36:43'),
(4, '0503950457', 'jose', 'Ambato', '0996445778', 'jose@hotmail.com', '2022-06-24 05:16:35', '2022-06-24 05:16:35'),
(5, '0503930645', 'Marcos Borja', 'Latacunga', '0994552447', 'marcosb@hotmail.com', '2022-06-24 22:14:48', '2022-06-24 22:14:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--
-- Creación: 08-06-2022 a las 18:53:08
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Marcos Borja', 'marknejo246@gmail.com', NULL, '$2y$10$NSIJrE7grQaMP15xdf0qk.hhYZNVAC45XfJYRiCXh.iIpa6oZJ.l2', '07AJm1zLIfUIPOyaHJ3PFjD0jzOXb565X9v4zPLt59XMPdkE6xs187eqQo8L', '2022-06-09 00:02:24', '2022-06-09 00:02:24');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actorpeliculas`
--
ALTER TABLE `actorpeliculas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `actorpeliculas_act_id_foreign` (`act_id`),
  ADD KEY `actorpeliculas_pel_id_foreign` (`pel_id`);

--
-- Indices de la tabla `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `actors_sex_id_foreign` (`sex_id`);

--
-- Indices de la tabla `alquilers`
--
ALTER TABLE `alquilers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alquilers_soc_id_foreign` (`soc_id`),
  ADD KEY `alquilers_pel_id_foreign` (`pel_id`);

--
-- Indices de la tabla `directors`
--
ALTER TABLE `directors`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `formatos`
--
ALTER TABLE `formatos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `peliculas_gen_id_foreign` (`gen_id`),
  ADD KEY `peliculas_dir_id_foreign` (`dir_id`),
  ADD KEY `peliculas_for_id_foreign` (`for_id`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `sexos`
--
ALTER TABLE `sexos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `socios`
--
ALTER TABLE `socios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actorpeliculas`
--
ALTER TABLE `actorpeliculas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `actors`
--
ALTER TABLE `actors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `alquilers`
--
ALTER TABLE `alquilers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `directors`
--
ALTER TABLE `directors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `formatos`
--
ALTER TABLE `formatos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `generos`
--
ALTER TABLE `generos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sexos`
--
ALTER TABLE `sexos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `socios`
--
ALTER TABLE `socios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `actorpeliculas`
--
ALTER TABLE `actorpeliculas`
  ADD CONSTRAINT `actorpeliculas_act_id_foreign` FOREIGN KEY (`act_id`) REFERENCES `actors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `actorpeliculas_pel_id_foreign` FOREIGN KEY (`pel_id`) REFERENCES `peliculas` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `actors`
--
ALTER TABLE `actors`
  ADD CONSTRAINT `actors_sex_id_foreign` FOREIGN KEY (`sex_id`) REFERENCES `sexos` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `alquilers`
--
ALTER TABLE `alquilers`
  ADD CONSTRAINT `alquilers_pel_id_foreign` FOREIGN KEY (`pel_id`) REFERENCES `peliculas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `alquilers_soc_id_foreign` FOREIGN KEY (`soc_id`) REFERENCES `socios` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD CONSTRAINT `peliculas_dir_id_foreign` FOREIGN KEY (`dir_id`) REFERENCES `directors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `peliculas_for_id_foreign` FOREIGN KEY (`for_id`) REFERENCES `formatos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `peliculas_gen_id_foreign` FOREIGN KEY (`gen_id`) REFERENCES `generos` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
