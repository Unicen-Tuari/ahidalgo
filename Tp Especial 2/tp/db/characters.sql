-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-07-2020 a las 23:34:17
-- Versión del servidor: 10.4.13-MariaDB
-- Versión de PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
  `id_blood` int(2) NOT NULL,
  `type_blood` varchar(2) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `bloodtype`
--

INSERT INTO `bloodtype` (`id_blood`, `type_blood`) VALUES
(1, 'A'),
(2, 'b');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `mail` varchar(150) COLLATE utf8_bin NOT NULL,
  `password` varchar(150) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id_user`, `mail`, `password`) VALUES
(1, 'ariel@ariel.com', '$2y$10$1RtguZflFAm91yq3yxElCOOndSPeMp1.bHgWnpfwy3fjNJGmbMqDW');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `_character`
--

CREATE TABLE `_character` (
  `id_character` int(10) NOT NULL,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `description` varchar(200) COLLATE utf8_bin NOT NULL,
  `hero_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `birthday` varchar(50) COLLATE utf8_bin NOT NULL,
  `height` varchar(50) COLLATE utf8_bin NOT NULL,
  `quirk` varchar(50) COLLATE utf8_bin NOT NULL,
  `char_blood` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `_character`
--

INSERT INTO `_character` (`id_character`, `name`, `description`, `hero_name`, `birthday`, `height`, `quirk`, `char_blood`) VALUES
(17, 'Izuku Midoriya', 'ola ahre', 'Deku', '15 de julio', '172cm', 'One For All', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bloodtype`
--
ALTER TABLE `bloodtype`
  ADD PRIMARY KEY (`id_blood`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indices de la tabla `_character`
--
ALTER TABLE `_character`
  ADD PRIMARY KEY (`id_character`),
  ADD KEY `char_blood` (`char_blood`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bloodtype`
--
ALTER TABLE `bloodtype`
  MODIFY `id_blood` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `_character`
--
ALTER TABLE `_character`
  MODIFY `id_character` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `_character`
--
ALTER TABLE `_character`
  ADD CONSTRAINT `fk_id_blood` FOREIGN KEY (`char_blood`) REFERENCES `bloodtype` (`id_blood`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
