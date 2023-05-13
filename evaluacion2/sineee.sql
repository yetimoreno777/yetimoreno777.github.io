-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-05-2023 a las 03:53:07
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
-- Base de datos: `sineee`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas`
--

CREATE TABLE `artistas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `edad` int(11) NOT NULL,
  `genero` tinyint(11) NOT NULL,
  `pelicula_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `artistas`
--

INSERT INTO `artistas` (`id`, `nombre`, `edad`, `genero`, `pelicula_id`) VALUES
(0, 'Kevin ', 26, 0, 0),
(1, 'Layla', 47, 1, 0),
(2, 'Han', 34, 0, 0),
(3, 'Jose', 78, 0, 0),
(4, 'Lala', 28, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `directores`
--

CREATE TABLE `directores` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `pelicula_id` int(11) NOT NULL,
  `genero` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `directores`
--

INSERT INTO `directores` (`id`, `nombre`, `pelicula_id`, `genero`) VALUES
(0, 'Pepe', 0, 0),
(1, 'Toño', 0, 0),
(2, 'Maria', 0, 1),
(3, '\"Ñero\"', 0, 0),
(4, 'landell', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculas`
--

CREATE TABLE `peliculas` (
  `id` int(11) NOT NULL,
  `añolanzamiento` date NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `artista_id` int(11) NOT NULL,
  `director_id` int(11) NOT NULL,
  `tipopelicula_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `peliculas`
--

INSERT INTO `peliculas` (`id`, `añolanzamiento`, `nombre`, `artista_id`, `director_id`, `tipopelicula_id`) VALUES
(0, '2012-01-01', '2012', 0, 0, 0),
(1, '1965-06-28', 'los marcianos y los panes', 0, 0, 0),
(2, '1997-03-04', 'vietnam', 0, 0, 0),
(3, '2017-08-24', 'bladerunner 2057', 0, 0, 0),
(4, '2023-05-12', 'el examen de la muerte', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipospeliculas`
--

CREATE TABLE `tipospeliculas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipospeliculas`
--

INSERT INTO `tipospeliculas` (`id`, `nombre`) VALUES
(0, 'accion'),
(1, 'comedia'),
(2, 'drama '),
(3, 'terror'),
(4, 'sci-fi');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `artistas`
--
ALTER TABLE `artistas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pelicula_id` (`pelicula_id`);

--
-- Indices de la tabla `directores`
--
ALTER TABLE `directores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pelicula_id` (`pelicula_id`);

--
-- Indices de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artista_id` (`artista_id`,`director_id`,`tipopelicula_id`),
  ADD KEY `director_id` (`director_id`),
  ADD KEY `tipopelicula_id` (`tipopelicula_id`);

--
-- Indices de la tabla `tipospeliculas`
--
ALTER TABLE `tipospeliculas`
  ADD PRIMARY KEY (`id`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `artistas`
--
ALTER TABLE `artistas`
  ADD CONSTRAINT `artistas_ibfk_1` FOREIGN KEY (`pelicula_id`) REFERENCES `peliculas` (`id`);

--
-- Filtros para la tabla `directores`
--
ALTER TABLE `directores`
  ADD CONSTRAINT `directores_ibfk_1` FOREIGN KEY (`pelicula_id`) REFERENCES `peliculas` (`id`);

--
-- Filtros para la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD CONSTRAINT `peliculas_ibfk_1` FOREIGN KEY (`director_id`) REFERENCES `directores` (`id`),
  ADD CONSTRAINT `peliculas_ibfk_2` FOREIGN KEY (`tipopelicula_id`) REFERENCES `tipospeliculas` (`id`),
  ADD CONSTRAINT `peliculas_ibfk_3` FOREIGN KEY (`artista_id`) REFERENCES `artistas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
