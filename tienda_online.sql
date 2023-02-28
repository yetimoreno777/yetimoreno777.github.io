-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-02-2023 a las 01:47:21
-- Versión del servidor: 10.1.39-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda_online`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Alimentos y bebidas', 'aliemntos muy alimentosos'),
(2, 'Electronicos', 'Cosas muy electricas'),
(3, 'Entretenimiento', 'para hacerte wey'),
(4, 'Productos de belleza', 'para verte bien creo'),
(5, 'Deportes', 'para hacerte wey pero haciendo ejercicio');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `fecha_de_nacimiento` date NOT NULL,
  `sexo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `correo`, `telefono`, `fecha_de_nacimiento`, `sexo`) VALUES
(1, 'lola', 'lolameras@gmail.com', '6672803957', '1973-09-24', 1),
(2, 'pepe', 'pepenador@gmail.com', '6673750284', '2000-02-13', 0),
(3, 'papa', 'papanatas@gmail.com', '6673948397', '1986-07-27', 0),
(4, 'laca', 'lacachora@gmail.com', '667839407', '1976-11-27', 1),
(5, 'desho', 'deshonestor@gmail.com', '6678305827', '1890-12-17', 0),
(6, 'juan', 'jperezsosa@gmail.com', '6672840571', '2008-03-28', 1),
(7, 'Isabel', 'Isabelita@gmail.com', '6672839610', '1967-09-15', 1),
(8, 'maria', 'marialadelbarrio@gmail.com', '6672810837', '1989-05-28', 1),
(9, 'kaka', 'kakarita@gmail.com', '6674039548', '1979-07-21', 0),
(10, 'Armando', 'armandocasas@gmail.com', '6678304782', '1963-02-28', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
