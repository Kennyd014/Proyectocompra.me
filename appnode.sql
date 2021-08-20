-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 20-08-2021 a las 02:02:38
-- Versión del servidor: 5.7.31
-- Versión de PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `appnode`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

DROP TABLE IF EXISTS `productos`;
CREATE TABLE IF NOT EXISTS `productos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text NOT NULL,
  `precio` decimal(10,0) NOT NULL,
  `imagen` text NOT NULL,
  `stock` int(11) NOT NULL,
  `categoria` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `imagen`, `stock`, `categoria`) VALUES
(1, 'AURICULAR BLUETOOTH I12 TIPO APPLE TODOS LOS COLORES', 'Capacidad de la Batería Caja: 380mAh, Capacidad de la Batería Auricular: 65mAh, Impedancia: 32 ohm, Tiempo de carga: 1-2 Hr, Tiempo de reprodución: 2-3 Hr, Carga de Auriculares: 3-4 veces\',', '1200', 'inpods.jpeg', 75, 'electronica'),
(2, 'TOSTADORA DOS RODAJAS - SUZIKA', 'ACER0, 700 WATT, 7 NIVELES DE TEMPERATURA ', '2700', 'tostadora.png', 26, 'Electrodomesticos'),
(6, 'Mopa plegable JIJA', 'Mopa plegable 10 en 1 para limpieza de suelo y alfombras, accesorio multifuncional con certificación CE y ETL, potencia de 1500W', '2900', 'mopa.jpg', 12, 'Electrodomesticos'),
(5, 'Afeitadora koofex', 'Recortador de pelo profesional de Metal de oro de pelo peluquería hombres', '1260', 'afeitadora.jpg', 44, 'Electrodomesticos'),
(7, 'Almohada de espuma viscoelástica', 'Almohada de espuma viscoelástica suave, nuevo diseño, molde de aroma hecho de espuma de Profumato, almohada para dormir, té verde lavanda', '900', 'almohada.jpg', 157, 'Hogar'),
(8, 'Silla Gamer', 'Silla mecedora de espuma moldeada OEM ODM, moderna, para juegos', '7000', 'silla_gamer.jpg', 9, 'Hogar'),
(9, 'Colchón de estilo europeo de tamaño King', 'Colchón de estilo europeo de tamaño King, muebles de dormitorio, espuma viscoelástica, colchón de muelles de bolsillo', '15000', 'colchon.jpg', 17, 'Hogar'),
(10, 'Bicicleta de ejercicio deportiva', 'Bicicleta de ejercicio deportiva para interiores, bici giratoria de fitness para el hogar', '9000', 'bici_fija.jpg', 33, 'Deportes y Camping'),
(11, 'Mancuerna 2KG', 'Núcleo interior de Hierro de 2Kg + mancuerna fluida de plástico para inmersión', '500', 'mancuerna.png', 0, 'Deportes y camping'),
(12, 'Bicicletas de montaña', 'Bicicletas de montaña híbridas, 29 tamaños', '45000', 'bicicleta.jpg', 22, 'Deportes y camping'),
(13, 'Campera Invierno', 'Chaqueta de invierno azul para hombre, Chaqueta corta para deportes al aire libre, con capucha', '12000', 'campera.jpg', 0, 'Ropa y Accesorios'),
(14, 'Remera Verano', 'JHM Premium Custom All Over Print T Shirt hombres, camiseta Casual de manga corta ajustada con cuello redondo', '4500', 'remera.jpg', 37, 'Ropa y Accesorios'),
(15, 'Camiseta Invierno', 'Camiseta invierno 100% poliester', '1350', 'camiseta.jpg', 24, 'Ropa y Accesorios'),
(19, 'Faro luminoso giratorio', 'Faro luminoso giratorio led', '450', 'faro luminoso giratorio.png', 0, '1'),
(17, 'Gorra hombre', 'Gorra hombre diseño variado', '1950', 'gorrahombre.jpg', 88, 'Ropa y Accesorios');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(1000) DEFAULT NULL,
  `apellido` varchar(100) NOT NULL,
  `usuario` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `contraseña` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `usuario`, `email`, `contraseña`) VALUES
(1, 'marcelo', 'lopez', 'Elmarce', 'marcelo@gmail', '243525355'),
(2, 'Juan', 'Martinez', 'Eljuani10', 'juani@gmail.com', '1235684'),
(3, 'Juan', 'Martinez', 'Eljuani10', 'juani@gmail.com', '1235684'),
(4, 'Pedro', 'Gimenez', 'peter1856', 'Peter@gmail.com', '123458'),
(5, 'Mateo', 'Casco', 'Mateo87', 'mateoc@gmail.com', '87494321465'),
(6, 'Sofia', 'Salinas', 'Sofisal12', 'Sofi12@gmail.com', '56565622'),
(7, 'rafael', 'dos santos', 'rafa2antos', 'rafa@gmail.com', '54518421611');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
