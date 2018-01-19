-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-01-2018 a las 14:47:39
-- Versión del servidor: 10.1.29-MariaDB
-- Versión de PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `periodico`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `leer`
--

CREATE TABLE `leer` (
  `idcategoria` varchar(20) COLLATE latin1_spanish_ci NOT NULL,
  `descripcion` text COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `leer`
--

INSERT INTO `leer` (`idcategoria`, `descripcion`) VALUES
('econo', 'Las primeras informaciones específicas sobre economía aparecieron en la prensa del siglo XVII. En esa época, las noticias eran redactadas a menudo por los propios interesados, en muchos casos comerciantes o banqueros, en forma de panfletos u hojas informativas. '),
('recre', 'Se conoce como entretenimiento al conjunto de actividades que permite a los seres humanos emplear su tiempo libre para divertirse, evadiendo temporalmente sus preocupaciones.\r\n\r\nEl entretenimiento forma parte de la amplia familia del ocio y se ha convertido en un sector floreciente de la actividad económica, especialmente a través de los parques temáticos y de atracciones, los medios de comunicación y las industrias del cine, la música, los videojuegos y el deporte.'),
('sport', 'Periodismo deportivo es la forma del periodismo que informa sobre temas relacionados con el deporte y los certámenes deportivos del interés de la opinión pública de la cual todas las personas están informadas sobre los diversos deportes que se acontecen tanto, nacional o internacional. Mientras en muchos medios de comunicación los periodistas dedicados al reportaje deportivo son llamados los profesionales del juego, en realidad esta área ha crecido en importancia a medida que el deporte mismo se ha convertido en un poder económico e influyente.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE `noticias` (
  `idnoticias` int(11) NOT NULL,
  `email` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `idcategoria` varchar(20) COLLATE latin1_spanish_ci NOT NULL,
  `titulo` varchar(100) COLLATE latin1_spanish_ci NOT NULL,
  `texto` text COLLATE latin1_spanish_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `noticias`
--

INSERT INTO `noticias` (`idnoticias`, `email`, `idcategoria`, `titulo`, `texto`, `date`) VALUES
(1, 'manolin@gmail.com', 'recre', 'Gianni Versace, un asesinato americano', 'Este jueves se estrena la serie de Ryan Murphy que supera la biografía del diseñador italiano y se centra en su asesino, Andrew Cunanan, y cómo la homofobia cultural y los prejuicios retrasaron la búsqueda de éste por parte del FBI.', '2018-01-19 08:41:56'),
(2, 'francisco@gmail.com', 'sport', 'Australia confirma partido contra Colombia', 'A comienzos de diciembre se dio a conocer que la selección de Colombia jugará contra Francia en el Stade de France en París el 23 de marzo de 2018. Ese será el primer partido amistoso que tendrá el combinado nacional de cara al Mundial de Rusia. No obstante, el segundo rival de esa doble fecha Fifa era una incógnita. Desde hace un tiempo se especuló que era Australia, pero ninguna de las dos federaciones habían confirmado, hasta este jueves. ', '2018-01-19 08:42:48'),
(3, 'manoli@gmail.com', 'econo', 'Hacienda pacta con los alcaldes la reforma del impuesto de plusvalía', 'Madrid 18 ENE 2018 - 20:44	CET\r\nEl Gobierno ultima la presentación del proyecto de ley para modificar el impuesto sobre plusvalía, el que se liquida en los Ayuntamientos al vender un inmueble. La reforma llega después de que el Constitucional lo anulase para los casos en que los contribuyentes vendan con pérdidas, algo frecuente en los años de crisis. ', '2018-01-19 08:46:08'),
(4, 'fin@gmail.com', 'noda', 'oapdi', 'aomdn', '2018-01-19 08:41:56'),
(5, 'ivancastilloj@gmail.com', 'deporte', 'pique se muere', 'sa muerto porque shakira la dejao', '2018-01-19 13:16:05'),
(6, 'ivancasastilloj@gmail.com', 'Sociedad', 'holiholi', 'sezdvgybuhjis', '2018-01-19 13:40:58');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `leer`
--
ALTER TABLE `leer`
  ADD PRIMARY KEY (`idcategoria`);

--
-- Indices de la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`idnoticias`),
  ADD KEY `idcategoria` (`idcategoria`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `noticias`
--
ALTER TABLE `noticias`
  MODIFY `idnoticias` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `leer`
--
ALTER TABLE `leer`
  ADD CONSTRAINT `leer_ibfk_1` FOREIGN KEY (`idcategoria`) REFERENCES `noticias` (`idcategoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
