-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 01-10-2022 a las 00:26:18
-- Versión del servidor: 8.0.30
-- Versión de PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `g5e1_washingrent`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alquiler`
--

CREATE TABLE `alquiler` (
  `id` int NOT NULL,
  `username` varchar(100) NOT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `alquiler`
--

INSERT INTO `alquiler` (`id`, `username`, `fecha`) VALUES
(2, 'alberto', '2022-09-29 16:58:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lavadora`
--

CREATE TABLE `lavadora` (
  `id` int NOT NULL,
  `marca` varchar(100) DEFAULT NULL,
  `modelo` varchar(100) DEFAULT NULL,
  `pesokg` int DEFAULT NULL,
  `disponibilidad` int DEFAULT NULL,
  `novedad` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `lavadora`
--

INSERT INTO `lavadora` (`id`, `marca`, `modelo`, `pesokg`, `disponibilidad`, `novedad`) VALUES
(1, 'LG', 'Carga frontal', 12, 7, 0),
(2, 'Kalley', 'Carga superior', 9, 6, 1),
(3, 'LG', 'Lavadora Secadora', 19, 9, 0),
(4, 'Electrolux', 'Carga frontal', 32, 3, 0),
(5, 'Siemens', 'Carga superior', 15, 10, 1),
(6, 'Samsung', 'Lavadora secadora', 22, 6, 0),
(7, 'Whirlpool', 'Carga frontal', 12, 10, 0),
(8, 'Samsung', 'Lavadora secadora', 18, 4, 0),
(9, 'kalley', 'Carga superior', 22, 8, 1),
(10, 'Whirlpool', 'Carga superior', 18, 4, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `username` varchar(50) NOT NULL DEFAULT '',
  `contrasena` varchar(100) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `apellidos` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `saldo` double(22,2) DEFAULT NULL,
  `premium` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`username`, `contrasena`, `nombre`, `apellidos`, `email`, `saldo`, `premium`) VALUES
('alberto', '123456', 'Alberto', 'Cardenas', 'alberto@correo.com', 100.00, 0),
('william', '1234', 'William', 'Mosquera', 'william@correo.com', 100.00, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alquiler`
--
ALTER TABLE `alquiler`
  ADD PRIMARY KEY (`id`,`username`,`fecha`) USING BTREE,
  ADD KEY `FK_usuario` (`username`);

--
-- Indices de la tabla `lavadora`
--
ALTER TABLE `lavadora`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`username`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alquiler`
--
ALTER TABLE `alquiler`
  ADD CONSTRAINT `FK_pelicula` FOREIGN KEY (`id`) REFERENCES `lavadora` (`id`),
  ADD CONSTRAINT `FK_usuario` FOREIGN KEY (`username`) REFERENCES `usuario` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
