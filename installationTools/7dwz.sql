-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2020-07-26 18:59:50
-- 服务器版本： 8.0.12
-- PHP 版本： 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `7dwz`
--

-- --------------------------------------------------------

--
-- 表的结构 `day_0`
--

CREATE TABLE `day_0` (
  `id` int(11) NOT NULL,
  `sign` varchar(4) COLLATE utf8mb4_general_ci NOT NULL,
  `url` text COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 表的结构 `day_1`
--

CREATE TABLE `day_1` (
  `id` int(11) NOT NULL,
  `sign` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 表的结构 `day_2`
--

CREATE TABLE `day_2` (
  `id` int(11) NOT NULL,
  `sign` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 表的结构 `day_3`
--

CREATE TABLE `day_3` (
  `id` int(11) NOT NULL,
  `sign` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 表的结构 `day_4`
--

CREATE TABLE `day_4` (
  `id` int(11) NOT NULL,
  `sign` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 表的结构 `day_5`
--

CREATE TABLE `day_5` (
  `id` int(11) NOT NULL,
  `sign` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 表的结构 `day_6`
--

CREATE TABLE `day_6` (
  `id` int(11) NOT NULL,
  `sign` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转储表的索引
--

--
-- 表的索引 `day_0`
--
ALTER TABLE `day_0`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sign` (`sign`);

--
-- 表的索引 `day_1`
--
ALTER TABLE `day_1`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sign` (`sign`);

--
-- 表的索引 `day_2`
--
ALTER TABLE `day_2`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sign` (`sign`);

--
-- 表的索引 `day_3`
--
ALTER TABLE `day_3`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sign` (`sign`);

--
-- 表的索引 `day_4`
--
ALTER TABLE `day_4`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sign` (`sign`);

--
-- 表的索引 `day_5`
--
ALTER TABLE `day_5`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sign` (`sign`);

--
-- 表的索引 `day_6`
--
ALTER TABLE `day_6`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sign` (`sign`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `day_0`
--
ALTER TABLE `day_0`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `day_1`
--
ALTER TABLE `day_1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `day_2`
--
ALTER TABLE `day_2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `day_3`
--
ALTER TABLE `day_3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `day_4`
--
ALTER TABLE `day_4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `day_5`
--
ALTER TABLE `day_5`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `day_6`
--
ALTER TABLE `day_6`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
