-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-06-2020 a las 15:24:51
-- Versión del servidor: 10.1.28-MariaDB
-- Versión de PHP: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `characters`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bloodtype`
--

CREATE TABLE `bloodtype` (
  `id_blood` varchar(10) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `bloodtype`
--

INSERT INTO `bloodtype` (`id_blood`) VALUES
('0'),
('A'),
('AB'),
('B');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `_character`
--

CREATE TABLE `_character` (
  `id_character` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `description` varchar(200) COLLATE utf8_bin NOT NULL,
  `fk_bloodtype` varchar(10) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `_character`
--

INSERT INTO `_character` (`id_character`, `name`, `description`, `fk_bloodtype`) VALUES
(1, 'Izuku Midoriya', 'Brocoli', '0'),
(2, 'Katsuki Bakugo', 'Explosivo', 'A');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bloodtype`
--
ALTER TABLE `bloodtype`
  ADD PRIMARY KEY (`id_blood`);

--
-- Indices de la tabla `_character`
--
ALTER TABLE `_character`
  ADD PRIMARY KEY (`id_character`),
  ADD KEY `fk_bloodtype` (`fk_bloodtype`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `_character`
--
ALTER TABLE `_character`
  MODIFY `id_character` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
