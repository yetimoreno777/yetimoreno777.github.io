-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-02-2023 a las 02:39:47
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
-- Base de datos: `productos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `precio` double NOT NULL,
  `descripcion` varchar(300) NOT NULL,
  `color` varchar(50) NOT NULL,
  `existencia` int(11) NOT NULL,
  `marca` varchar(30) NOT NULL,
  `medida` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `precio`, `descripcion`, `color`, `existencia`, `marca`, `medida`) VALUES
(1, 'Taifelds Soft Cookies Galletas de mantequilla 3 sabores 540g', 160, 'galletas perronas', 'estandar', 29834, 'Taifelds', 'estandar'),
(2, 'Urban Design – Escritorio Minimalista para Oficina – 3 Niveles de Repisas – Ligero y Resistente – Cómodo y Funcional – Escritorio para Computadora y Trabajo - Blanco', 2199, 'mesa perrona', 'estandar', 102, 'Urban design', 'estandar'),
(3, 'LEGO Kit de construcción de Modelo de Auto Technic™ 42115 Lamborghini Sián FKP 37 (3696 Piezas)', 10499, 'lego carisimo de lamboryini', 'verde chingamelavista', 3696, 'LEGO', 'estandar'),
(4, 'Dilan olec', 1, 'dilan perron', 'negro', 1, 'Mexico', 'estandar'),
(5, 'El hada Tilín', 255.78, 'eso tilin', 'estandar', 210, 'Kindle', 'estandar'),
(6, 'PUMA Chivas Home Shirt Replica 21-22 Jersey para Hombre', 899, 'la camisa de dios', 'estandar', 1290176938, 'PUMA', 'estandar'),
(7, 'peres rogas', 1, 'peres perron', 'blanco', 1, 'Mexico', 'estandar'),
(8, 'HyperX Cloud Alpha - Audífonos para gaming, Rojo- Altavoces de cámara doble - Comodidad galardonada de HyperX - Resistente estructura de aluminio - Micrófono desmontable con cancelación de ruido', 1089, 'audifonos', 'negro', 36421, 'HyperX', 'estandar'),
(9, 'Bluelander Mouse Pad Gamer Profesional, Alfombrilla de Ratón, Impermeable, Ergonómico, Base de Goma Antideslizante, Tamaño Grande (60 x 30 x 3 cm), Altamente Duradero, Caucho de Calidad (Verde)', 149, 'mauspad perron', 'verde', 1324, 'Bluelander', 'estandar'),
(10, 'Berry Hip Set De Plumones Con Punta Doble, Rotuladores Para Colorear, Marcadores Con 60 Colores', 299, 'plumones perrones', 'todos', 29387419, 'Berry hip', 'estandar');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
