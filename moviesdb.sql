-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 12-07-2024 a las 21:15:49
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `moviesdb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculas`
--

CREATE TABLE `peliculas` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `sinopsis` text DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `lenguaje` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `peliculas`
--

INSERT INTO `peliculas` (`id`, `titulo`, `sinopsis`, `imagen`, `lenguaje`) VALUES
(1, 'Cadena perpetua', 'Una historia de esperanza y amistad en prisión', 'aclamada_1.jpg', 'Inglés'),
(2, 'El Padrino', 'La saga de una poderosa familia mafiosa', 'aclamada_2.jpg', 'Inglés'),
(3, 'El Padrino: Parte II', 'La continuación de la saga de la familia Corleone', 'aclamada_3.jpg', 'Inglés'),
(4, 'La lista de Schindler', 'Un empresario salva a refugiados durante el Holocausto', 'aclamada_4.jpg', 'Inglés'),
(5, '12 hombres sin piedad', 'Miembros de un jurado deliberan sobre un juicio por asesinato', 'aclamada_5.jpg', 'Inglés'),
(6, 'El viaje de Chihiro', 'La aventura mágica de una niña en un mundo de espíritus', 'aclamada_6.jpg', 'Japonés'),
(7, 'El caballero oscuro', 'Batman se enfrenta a su mayor desafío contra el Joker', 'aclamada_7.jpg', 'Inglés'),
(8, 'Parásitos', 'Una familia pobre trama para ser empleada por una familia rica', 'aclamada_8.jpg', 'Coreano'),
(9, 'Milagros inesperados', 'Un guardia del corredor de la muerte encuentra a un prisionero con poderes sobrenaturales', 'aclamada_9.jpg', 'Inglés'),
(10, 'Forrest Gump', 'El viaje de un hombre simple a través de momentos definitorios de la historia de EE.UU.', 'aclamada_10.jpg', 'Inglés'),
(11, 'Pulp Fiction', 'Historias interconectadas de crimen en Los Ángeles', 'aclamada_11.jpg', 'Inglés'),
(12, 'El Señor de los Anillos', 'Una épica búsqueda para destruir un anillo poderoso y salvar la Tierra Media', 'aclamada_12.jpg', 'Inglés');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
