-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 18-10-2024 a las 05:01:05
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `metrics_project`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('metric_history_run', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:15:{i:0;O:27:\"App\\Models\\MetricHistoryRun\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:19:\"metric_history_runs\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:1;s:3:\"url\";s:26:\"https://www.broobe.com/es/\";s:13:\"accessibility\";s:4:\"0.25\";s:3:\"pwa\";s:4:\"0.25\";s:11:\"performance\";s:4:\"0.25\";s:3:\"seo\";s:4:\"0.25\";s:14:\"best_practices\";s:4:\"0.25\";s:11:\"strategy_id\";i:1;s:10:\"created_at\";N;s:10:\"updated_at\";N;}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:1;s:3:\"url\";s:26:\"https://www.broobe.com/es/\";s:13:\"accessibility\";s:4:\"0.25\";s:3:\"pwa\";s:4:\"0.25\";s:11:\"performance\";s:4:\"0.25\";s:3:\"seo\";s:4:\"0.25\";s:14:\"best_practices\";s:4:\"0.25\";s:11:\"strategy_id\";i:1;s:10:\"created_at\";N;s:10:\"updated_at\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"strategy\";O:19:\"App\\Models\\Strategy\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"strategies\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:4:{s:2:\"id\";i:1;s:4:\"name\";s:7:\"DESKTOP\";s:10:\"created_at\";N;s:10:\"updated_at\";N;}s:11:\"\0*\0original\";a:4:{s:2:\"id\";i:1;s:4:\"name\";s:7:\"DESKTOP\";s:10:\"created_at\";N;s:10:\"updated_at\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:3:\"url\";i:1;s:13:\"accessibility\";i:2;s:3:\"pwa\";i:3;s:11:\"performance\";i:4;s:3:\"seo\";i:5;s:14:\"best_practices\";i:6;s:11:\"strategy_id\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:1;O:27:\"App\\Models\\MetricHistoryRun\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:19:\"metric_history_runs\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:2;s:3:\"url\";s:26:\"https://www.broobe.com/es/\";s:13:\"accessibility\";s:4:\"0.88\";s:3:\"pwa\";N;s:11:\"performance\";N;s:3:\"seo\";N;s:14:\"best_practices\";N;s:11:\"strategy_id\";i:1;s:10:\"created_at\";s:19:\"2024-10-17 14:15:36\";s:10:\"updated_at\";s:19:\"2024-10-17 14:15:36\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:2;s:3:\"url\";s:26:\"https://www.broobe.com/es/\";s:13:\"accessibility\";s:4:\"0.88\";s:3:\"pwa\";N;s:11:\"performance\";N;s:3:\"seo\";N;s:14:\"best_practices\";N;s:11:\"strategy_id\";i:1;s:10:\"created_at\";s:19:\"2024-10-17 14:15:36\";s:10:\"updated_at\";s:19:\"2024-10-17 14:15:36\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"strategy\";r:47;}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:3:\"url\";i:1;s:13:\"accessibility\";i:2;s:3:\"pwa\";i:3;s:11:\"performance\";i:4;s:3:\"seo\";i:5;s:14:\"best_practices\";i:6;s:11:\"strategy_id\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:2;O:27:\"App\\Models\\MetricHistoryRun\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:19:\"metric_history_runs\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:3;s:3:\"url\";s:26:\"https://www.broobe.com/es/\";s:13:\"accessibility\";s:4:\"0.88\";s:3:\"pwa\";N;s:11:\"performance\";N;s:3:\"seo\";N;s:14:\"best_practices\";N;s:11:\"strategy_id\";i:1;s:10:\"created_at\";s:19:\"2024-10-17 14:15:45\";s:10:\"updated_at\";s:19:\"2024-10-17 14:15:45\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:3;s:3:\"url\";s:26:\"https://www.broobe.com/es/\";s:13:\"accessibility\";s:4:\"0.88\";s:3:\"pwa\";N;s:11:\"performance\";N;s:3:\"seo\";N;s:14:\"best_practices\";N;s:11:\"strategy_id\";i:1;s:10:\"created_at\";s:19:\"2024-10-17 14:15:45\";s:10:\"updated_at\";s:19:\"2024-10-17 14:15:45\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"strategy\";r:47;}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:3:\"url\";i:1;s:13:\"accessibility\";i:2;s:3:\"pwa\";i:3;s:11:\"performance\";i:4;s:3:\"seo\";i:5;s:14:\"best_practices\";i:6;s:11:\"strategy_id\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:3;O:27:\"App\\Models\\MetricHistoryRun\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:19:\"metric_history_runs\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:4;s:3:\"url\";s:26:\"https://www.broobe.com/es/\";s:13:\"accessibility\";s:4:\"0.88\";s:3:\"pwa\";N;s:11:\"performance\";s:4:\"0.31\";s:3:\"seo\";s:4:\"1.00\";s:14:\"best_practices\";s:4:\"0.96\";s:11:\"strategy_id\";i:2;s:10:\"created_at\";s:19:\"2024-10-17 14:21:44\";s:10:\"updated_at\";s:19:\"2024-10-17 14:21:44\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:4;s:3:\"url\";s:26:\"https://www.broobe.com/es/\";s:13:\"accessibility\";s:4:\"0.88\";s:3:\"pwa\";N;s:11:\"performance\";s:4:\"0.31\";s:3:\"seo\";s:4:\"1.00\";s:14:\"best_practices\";s:4:\"0.96\";s:11:\"strategy_id\";i:2;s:10:\"created_at\";s:19:\"2024-10-17 14:21:44\";s:10:\"updated_at\";s:19:\"2024-10-17 14:21:44\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"strategy\";O:19:\"App\\Models\\Strategy\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"strategies\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:4:{s:2:\"id\";i:2;s:4:\"name\";s:6:\"MOBILE\";s:10:\"created_at\";N;s:10:\"updated_at\";N;}s:11:\"\0*\0original\";a:4:{s:2:\"id\";i:2;s:4:\"name\";s:6:\"MOBILE\";s:10:\"created_at\";N;s:10:\"updated_at\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:3:\"url\";i:1;s:13:\"accessibility\";i:2;s:3:\"pwa\";i:3;s:11:\"performance\";i:4;s:3:\"seo\";i:5;s:14:\"best_practices\";i:6;s:11:\"strategy_id\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:4;O:27:\"App\\Models\\MetricHistoryRun\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:19:\"metric_history_runs\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:5;s:3:\"url\";s:26:\"https://www.broobe.com/es/\";s:13:\"accessibility\";N;s:3:\"pwa\";N;s:11:\"performance\";N;s:3:\"seo\";s:4:\"1.00\";s:14:\"best_practices\";N;s:11:\"strategy_id\";i:1;s:10:\"created_at\";s:19:\"2024-10-17 15:06:07\";s:10:\"updated_at\";s:19:\"2024-10-17 15:06:07\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:5;s:3:\"url\";s:26:\"https://www.broobe.com/es/\";s:13:\"accessibility\";N;s:3:\"pwa\";N;s:11:\"performance\";N;s:3:\"seo\";s:4:\"1.00\";s:14:\"best_practices\";N;s:11:\"strategy_id\";i:1;s:10:\"created_at\";s:19:\"2024-10-17 15:06:07\";s:10:\"updated_at\";s:19:\"2024-10-17 15:06:07\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"strategy\";r:47;}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:3:\"url\";i:1;s:13:\"accessibility\";i:2;s:3:\"pwa\";i:3;s:11:\"performance\";i:4;s:3:\"seo\";i:5;s:14:\"best_practices\";i:6;s:11:\"strategy_id\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:5;O:27:\"App\\Models\\MetricHistoryRun\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:19:\"metric_history_runs\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:6;s:3:\"url\";s:26:\"https://www.broobe.com/es/\";s:13:\"accessibility\";N;s:3:\"pwa\";N;s:11:\"performance\";s:4:\"0.56\";s:3:\"seo\";N;s:14:\"best_practices\";N;s:11:\"strategy_id\";i:1;s:10:\"created_at\";s:19:\"2024-10-17 19:30:37\";s:10:\"updated_at\";s:19:\"2024-10-17 19:30:37\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:6;s:3:\"url\";s:26:\"https://www.broobe.com/es/\";s:13:\"accessibility\";N;s:3:\"pwa\";N;s:11:\"performance\";s:4:\"0.56\";s:3:\"seo\";N;s:14:\"best_practices\";N;s:11:\"strategy_id\";i:1;s:10:\"created_at\";s:19:\"2024-10-17 19:30:37\";s:10:\"updated_at\";s:19:\"2024-10-17 19:30:37\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"strategy\";r:47;}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:3:\"url\";i:1;s:13:\"accessibility\";i:2;s:3:\"pwa\";i:3;s:11:\"performance\";i:4;s:3:\"seo\";i:5;s:14:\"best_practices\";i:6;s:11:\"strategy_id\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:6;O:27:\"App\\Models\\MetricHistoryRun\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:19:\"metric_history_runs\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:7;s:3:\"url\";s:26:\"https://www.broobe.com/es/\";s:13:\"accessibility\";s:4:\"0.88\";s:3:\"pwa\";N;s:11:\"performance\";s:4:\"0.83\";s:3:\"seo\";N;s:14:\"best_practices\";N;s:11:\"strategy_id\";i:1;s:10:\"created_at\";s:19:\"2024-10-17 19:39:15\";s:10:\"updated_at\";s:19:\"2024-10-17 19:39:15\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:7;s:3:\"url\";s:26:\"https://www.broobe.com/es/\";s:13:\"accessibility\";s:4:\"0.88\";s:3:\"pwa\";N;s:11:\"performance\";s:4:\"0.83\";s:3:\"seo\";N;s:14:\"best_practices\";N;s:11:\"strategy_id\";i:1;s:10:\"created_at\";s:19:\"2024-10-17 19:39:15\";s:10:\"updated_at\";s:19:\"2024-10-17 19:39:15\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"strategy\";r:47;}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:3:\"url\";i:1;s:13:\"accessibility\";i:2;s:3:\"pwa\";i:3;s:11:\"performance\";i:4;s:3:\"seo\";i:5;s:14:\"best_practices\";i:6;s:11:\"strategy_id\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:7;O:27:\"App\\Models\\MetricHistoryRun\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:19:\"metric_history_runs\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:8;s:3:\"url\";s:26:\"https://www.broobe.com/es/\";s:13:\"accessibility\";N;s:3:\"pwa\";N;s:11:\"performance\";N;s:3:\"seo\";s:4:\"1.00\";s:14:\"best_practices\";N;s:11:\"strategy_id\";i:1;s:10:\"created_at\";s:19:\"2024-10-17 19:43:39\";s:10:\"updated_at\";s:19:\"2024-10-17 19:43:39\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:8;s:3:\"url\";s:26:\"https://www.broobe.com/es/\";s:13:\"accessibility\";N;s:3:\"pwa\";N;s:11:\"performance\";N;s:3:\"seo\";s:4:\"1.00\";s:14:\"best_practices\";N;s:11:\"strategy_id\";i:1;s:10:\"created_at\";s:19:\"2024-10-17 19:43:39\";s:10:\"updated_at\";s:19:\"2024-10-17 19:43:39\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"strategy\";r:47;}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:3:\"url\";i:1;s:13:\"accessibility\";i:2;s:3:\"pwa\";i:3;s:11:\"performance\";i:4;s:3:\"seo\";i:5;s:14:\"best_practices\";i:6;s:11:\"strategy_id\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:8;O:27:\"App\\Models\\MetricHistoryRun\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:19:\"metric_history_runs\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:9;s:3:\"url\";s:26:\"https://www.broobe.com/es/\";s:13:\"accessibility\";N;s:3:\"pwa\";N;s:11:\"performance\";N;s:3:\"seo\";s:4:\"1.00\";s:14:\"best_practices\";N;s:11:\"strategy_id\";i:1;s:10:\"created_at\";s:19:\"2024-10-17 19:45:23\";s:10:\"updated_at\";s:19:\"2024-10-17 19:45:23\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:9;s:3:\"url\";s:26:\"https://www.broobe.com/es/\";s:13:\"accessibility\";N;s:3:\"pwa\";N;s:11:\"performance\";N;s:3:\"seo\";s:4:\"1.00\";s:14:\"best_practices\";N;s:11:\"strategy_id\";i:1;s:10:\"created_at\";s:19:\"2024-10-17 19:45:23\";s:10:\"updated_at\";s:19:\"2024-10-17 19:45:23\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"strategy\";r:47;}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:3:\"url\";i:1;s:13:\"accessibility\";i:2;s:3:\"pwa\";i:3;s:11:\"performance\";i:4;s:3:\"seo\";i:5;s:14:\"best_practices\";i:6;s:11:\"strategy_id\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:9;O:27:\"App\\Models\\MetricHistoryRun\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:19:\"metric_history_runs\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:10;s:3:\"url\";s:26:\"https://www.broobe.com/es/\";s:13:\"accessibility\";N;s:3:\"pwa\";N;s:11:\"performance\";s:4:\"0.79\";s:3:\"seo\";N;s:14:\"best_practices\";N;s:11:\"strategy_id\";i:1;s:10:\"created_at\";s:19:\"2024-10-17 19:48:03\";s:10:\"updated_at\";s:19:\"2024-10-17 19:48:03\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:10;s:3:\"url\";s:26:\"https://www.broobe.com/es/\";s:13:\"accessibility\";N;s:3:\"pwa\";N;s:11:\"performance\";s:4:\"0.79\";s:3:\"seo\";N;s:14:\"best_practices\";N;s:11:\"strategy_id\";i:1;s:10:\"created_at\";s:19:\"2024-10-17 19:48:03\";s:10:\"updated_at\";s:19:\"2024-10-17 19:48:03\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"strategy\";r:47;}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:3:\"url\";i:1;s:13:\"accessibility\";i:2;s:3:\"pwa\";i:3;s:11:\"performance\";i:4;s:3:\"seo\";i:5;s:14:\"best_practices\";i:6;s:11:\"strategy_id\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:10;O:27:\"App\\Models\\MetricHistoryRun\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:19:\"metric_history_runs\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:11;s:3:\"url\";s:26:\"https://www.broobe.com/es/\";s:13:\"accessibility\";N;s:3:\"pwa\";N;s:11:\"performance\";N;s:3:\"seo\";N;s:14:\"best_practices\";N;s:11:\"strategy_id\";i:1;s:10:\"created_at\";s:19:\"2024-10-17 20:19:48\";s:10:\"updated_at\";s:19:\"2024-10-17 20:19:48\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:11;s:3:\"url\";s:26:\"https://www.broobe.com/es/\";s:13:\"accessibility\";N;s:3:\"pwa\";N;s:11:\"performance\";N;s:3:\"seo\";N;s:14:\"best_practices\";N;s:11:\"strategy_id\";i:1;s:10:\"created_at\";s:19:\"2024-10-17 20:19:48\";s:10:\"updated_at\";s:19:\"2024-10-17 20:19:48\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"strategy\";r:47;}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:3:\"url\";i:1;s:13:\"accessibility\";i:2;s:3:\"pwa\";i:3;s:11:\"performance\";i:4;s:3:\"seo\";i:5;s:14:\"best_practices\";i:6;s:11:\"strategy_id\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:11;O:27:\"App\\Models\\MetricHistoryRun\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:19:\"metric_history_runs\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:12;s:3:\"url\";s:26:\"https://www.broobe.com/es/\";s:13:\"accessibility\";N;s:3:\"pwa\";N;s:11:\"performance\";N;s:3:\"seo\";N;s:14:\"best_practices\";N;s:11:\"strategy_id\";i:1;s:10:\"created_at\";s:19:\"2024-10-17 20:21:20\";s:10:\"updated_at\";s:19:\"2024-10-17 20:21:20\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:12;s:3:\"url\";s:26:\"https://www.broobe.com/es/\";s:13:\"accessibility\";N;s:3:\"pwa\";N;s:11:\"performance\";N;s:3:\"seo\";N;s:14:\"best_practices\";N;s:11:\"strategy_id\";i:1;s:10:\"created_at\";s:19:\"2024-10-17 20:21:20\";s:10:\"updated_at\";s:19:\"2024-10-17 20:21:20\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"strategy\";r:47;}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:3:\"url\";i:1;s:13:\"accessibility\";i:2;s:3:\"pwa\";i:3;s:11:\"performance\";i:4;s:3:\"seo\";i:5;s:14:\"best_practices\";i:6;s:11:\"strategy_id\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:12;O:27:\"App\\Models\\MetricHistoryRun\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:19:\"metric_history_runs\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:13;s:3:\"url\";s:26:\"https://www.broobe.com/es/\";s:13:\"accessibility\";N;s:3:\"pwa\";N;s:11:\"performance\";N;s:3:\"seo\";N;s:14:\"best_practices\";N;s:11:\"strategy_id\";i:1;s:10:\"created_at\";s:19:\"2024-10-17 20:43:29\";s:10:\"updated_at\";s:19:\"2024-10-17 20:43:29\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:13;s:3:\"url\";s:26:\"https://www.broobe.com/es/\";s:13:\"accessibility\";N;s:3:\"pwa\";N;s:11:\"performance\";N;s:3:\"seo\";N;s:14:\"best_practices\";N;s:11:\"strategy_id\";i:1;s:10:\"created_at\";s:19:\"2024-10-17 20:43:29\";s:10:\"updated_at\";s:19:\"2024-10-17 20:43:29\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"strategy\";r:47;}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:3:\"url\";i:1;s:13:\"accessibility\";i:2;s:3:\"pwa\";i:3;s:11:\"performance\";i:4;s:3:\"seo\";i:5;s:14:\"best_practices\";i:6;s:11:\"strategy_id\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:13;O:27:\"App\\Models\\MetricHistoryRun\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:19:\"metric_history_runs\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:14;s:3:\"url\";s:26:\"https://www.broobe.com/es/\";s:13:\"accessibility\";N;s:3:\"pwa\";N;s:11:\"performance\";N;s:3:\"seo\";N;s:14:\"best_practices\";N;s:11:\"strategy_id\";i:1;s:10:\"created_at\";s:19:\"2024-10-17 21:22:37\";s:10:\"updated_at\";s:19:\"2024-10-17 21:22:37\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:14;s:3:\"url\";s:26:\"https://www.broobe.com/es/\";s:13:\"accessibility\";N;s:3:\"pwa\";N;s:11:\"performance\";N;s:3:\"seo\";N;s:14:\"best_practices\";N;s:11:\"strategy_id\";i:1;s:10:\"created_at\";s:19:\"2024-10-17 21:22:37\";s:10:\"updated_at\";s:19:\"2024-10-17 21:22:37\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"strategy\";r:47;}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:3:\"url\";i:1;s:13:\"accessibility\";i:2;s:3:\"pwa\";i:3;s:11:\"performance\";i:4;s:3:\"seo\";i:5;s:14:\"best_practices\";i:6;s:11:\"strategy_id\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:14;O:27:\"App\\Models\\MetricHistoryRun\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:19:\"metric_history_runs\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:15;s:3:\"url\";s:26:\"https://www.broobe.com/es/\";s:13:\"accessibility\";N;s:3:\"pwa\";N;s:11:\"performance\";N;s:3:\"seo\";N;s:14:\"best_practices\";N;s:11:\"strategy_id\";i:1;s:10:\"created_at\";s:19:\"2024-10-17 21:57:20\";s:10:\"updated_at\";s:19:\"2024-10-17 21:57:20\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:15;s:3:\"url\";s:26:\"https://www.broobe.com/es/\";s:13:\"accessibility\";N;s:3:\"pwa\";N;s:11:\"performance\";N;s:3:\"seo\";N;s:14:\"best_practices\";N;s:11:\"strategy_id\";i:1;s:10:\"created_at\";s:19:\"2024-10-17 21:57:20\";s:10:\"updated_at\";s:19:\"2024-10-17 21:57:20\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"strategy\";r:47;}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:3:\"url\";i:1;s:13:\"accessibility\";i:2;s:3:\"pwa\";i:3;s:11:\"performance\";i:4;s:3:\"seo\";i:5;s:14:\"best_practices\";i:6;s:11:\"strategy_id\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', 1729211187);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'ACCESSIBILITY', NULL, NULL),
(2, 'BEST_PRACTICES', NULL, NULL),
(3, 'PERFORMANCE', NULL, NULL),
(4, 'PWA', NULL, NULL),
(5, 'SEO', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metric_history_runs`
--

CREATE TABLE `metric_history_runs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `accessibility` decimal(5,2) DEFAULT NULL,
  `pwa` decimal(5,2) DEFAULT NULL,
  `performance` decimal(5,2) DEFAULT NULL,
  `seo` decimal(5,2) DEFAULT NULL,
  `best_practices` decimal(5,2) DEFAULT NULL,
  `strategy_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `metric_history_runs`
--

INSERT INTO `metric_history_runs` (`id`, `url`, `accessibility`, `pwa`, `performance`, `seo`, `best_practices`, `strategy_id`, `created_at`, `updated_at`) VALUES
(1, 'https://www.broobe.com/es/', 0.25, 0.25, 0.25, 0.25, 0.25, 1, NULL, NULL),
(2, 'https://www.broobe.com/es/', 0.88, NULL, NULL, NULL, NULL, 1, '2024-10-17 17:15:36', '2024-10-17 17:15:36'),
(3, 'https://www.broobe.com/es/', 0.88, NULL, NULL, NULL, NULL, 1, '2024-10-17 17:15:45', '2024-10-17 17:15:45'),
(4, 'https://www.broobe.com/es/', 0.88, NULL, 0.31, 1.00, 0.96, 2, '2024-10-17 17:21:44', '2024-10-17 17:21:44'),
(5, 'https://www.broobe.com/es/', NULL, NULL, NULL, 1.00, NULL, 1, '2024-10-17 18:06:07', '2024-10-17 18:06:07'),
(6, 'https://www.broobe.com/es/', NULL, NULL, 0.56, NULL, NULL, 1, '2024-10-17 22:30:37', '2024-10-17 22:30:37'),
(7, 'https://www.broobe.com/es/', 0.88, NULL, 0.83, NULL, NULL, 1, '2024-10-17 22:39:15', '2024-10-17 22:39:15'),
(8, 'https://www.broobe.com/es/', NULL, NULL, NULL, 1.00, NULL, 1, '2024-10-17 22:43:39', '2024-10-17 22:43:39'),
(9, 'https://www.broobe.com/es/', NULL, NULL, NULL, 1.00, NULL, 1, '2024-10-17 22:45:23', '2024-10-17 22:45:23'),
(10, 'https://www.broobe.com/es/', NULL, NULL, 0.79, NULL, NULL, 1, '2024-10-17 22:48:03', '2024-10-17 22:48:03'),
(11, 'https://www.broobe.com/es/', NULL, NULL, NULL, NULL, NULL, 1, '2024-10-17 23:19:48', '2024-10-17 23:19:48'),
(12, 'https://www.broobe.com/es/', NULL, NULL, NULL, NULL, NULL, 1, '2024-10-17 23:21:20', '2024-10-17 23:21:20'),
(13, 'https://www.broobe.com/es/', NULL, NULL, NULL, NULL, NULL, 1, '2024-10-17 23:43:29', '2024-10-17 23:43:29'),
(14, 'https://www.broobe.com/es/', NULL, NULL, NULL, NULL, NULL, 1, '2024-10-18 00:22:37', '2024-10-18 00:22:37'),
(15, 'https://www.broobe.com/es/', NULL, NULL, NULL, NULL, NULL, 1, '2024-10-18 00:57:20', '2024-10-18 00:57:20'),
(16, 'https://www.broobe.com/es/', NULL, NULL, NULL, NULL, NULL, 1, '2024-10-18 03:26:29', '2024-10-18 03:26:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_10_17_021219_create_strategies_table', 1),
(5, '2024_10_17_021220_create_metric_history_runs_table', 1),
(6, '2024_10_17_021221_create_categories_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('FDIectHhSItmE4Y01EZ5WCoLWX27fe6w8jGQYj1x', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMXRqRTZRMUl5YVVwSGlMdE9mbXQ4SXVIaFZldnF5NFJEYWYxSVN4RiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729210705),
('NBPeWekgLSRIR2yWVxi1j9BbhbHQl4SyBcfUJ4PD', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYlo0aGd4NmszRDRGT3BPRHFyREpTOEc2SHNtdnNvNm9uUTluaUw3UiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTIyOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvZ2V0TWV0cmljcz9jYXRlZ29yaWVzJTVCMCU1RD1BQ0NFU1NJQklMSVRZJnN0cmF0ZWd5PURFU0tUT1AmdXJsPWh0dHBzJTNBJTJGJTJGd3d3LmJyb29iZS5jb20lMkZlcyUyRiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729219886);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `strategies`
--

CREATE TABLE `strategies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `strategies`
--

INSERT INTO `strategies` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'DESKTOP', NULL, NULL),
(2, 'MOBILE', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indices de la tabla `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `metric_history_runs`
--
ALTER TABLE `metric_history_runs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `metric_history_runs_strategy_id_foreign` (`strategy_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `strategies`
--
ALTER TABLE `strategies`
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
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `metric_history_runs`
--
ALTER TABLE `metric_history_runs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `strategies`
--
ALTER TABLE `strategies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `metric_history_runs`
--
ALTER TABLE `metric_history_runs`
  ADD CONSTRAINT `metric_history_runs_strategy_id_foreign` FOREIGN KEY (`strategy_id`) REFERENCES `strategies` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
