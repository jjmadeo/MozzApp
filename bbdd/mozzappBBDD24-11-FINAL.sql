-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-11-2020 a las 19:27:10
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mozapp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auditoria`
--

CREATE TABLE `auditoria` (
  `id` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `operacion` varchar(100) NOT NULL,
  `log` varchar(500) NOT NULL,
  `usuario` int(11) DEFAULT NULL,
  `rol` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `auditoria`
--

INSERT INTO `auditoria` (`id`, `fecha`, `operacion`, `log`, `usuario`, `rol`) VALUES
(438, '2020-11-24 18:26:14', 'Login', 'Inicio de sesion del usaurio.', 10009, 3),
(439, '2020-11-24 18:26:14', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(440, '2020-11-24 18:26:15', 'ObtenerPedidosMesa', 'Se solicitaron los pedidos de la mesa => undefined', 10009, 3),
(441, '2020-11-24 18:26:16', 'CerrarMesa', 'Se solicto el cierre de la mesa => 2', 10009, 3),
(442, '2020-11-24 18:26:16', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(443, '2020-11-24 18:26:17', 'ObtenerPedidosMesa', 'Se solicitaron los pedidos de la mesa => undefined', 10009, 3),
(444, '2020-11-24 18:26:20', 'CerrarMesa', 'Se solicto el cierre de la mesa => 5', 10009, 3),
(445, '2020-11-24 18:26:20', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(446, '2020-11-24 18:26:24', 'Cerrar Sesion', 'Se ah solicitado el cierre de session.', 10009, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificacion`
--

CREATE TABLE `calificacion` (
  `CALIFICACIONID` int(11) NOT NULL,
  `NOMBRE` varchar(50) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `TELEFONO` varchar(50) NOT NULL,
  `PUNTUACION` int(11) NOT NULL,
  `COMENTARIO` varchar(500) NOT NULL,
  `FECHA_HORA` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `PEDIDOID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrusel`
--

CREATE TABLE `carrusel` (
  `ID` int(11) NOT NULL,
  `URL` varchar(500) NOT NULL,
  `TITULO` varchar(50) NOT NULL,
  `DESCRIPCCION` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `carrusel`
--

INSERT INTO `carrusel` (`ID`, `URL`, `TITULO`, `DESCRIPCCION`) VALUES
(1, 'https://viajandoporjapon.com/wp-content/uploads/2013/07/8012757028_32b653bfc2_k-1000x300.jpg', 'Sushi Johng', 'Maki Oriental, con finas hierbas'),
(2, 'https://restaurantelbarralet.com/wp-content/uploads/2014/04/Amanida-amb-tonyina-1000x300.jpg', 'Risoto Primavera', 'Aroz Shamani con vegetales salteados'),
(3, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ6Wnyypuc6o4HOgyHfDSGjGWugnwrXQ7BOeA&usqp=CAU', 'Pizza, Especial de la casa', 'Queso Azul, rucula aceitunas negras y jamon crudo.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carta`
--

CREATE TABLE `carta` (
  `PRODID` int(11) NOT NULL,
  `NOMBRE` varchar(50) NOT NULL,
  `URLIMG` varchar(500) NOT NULL,
  `CATEGORIAID` int(11) DEFAULT NULL,
  `PRECIO` float DEFAULT NULL,
  `eliminado` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `carta`
--

INSERT INTO `carta` (`PRODID`, `NOMBRE`, `URLIMG`, `CATEGORIAID`, `PRECIO`, `eliminado`) VALUES
(8, 'MILANESA', 'https://cocina-casera.com/wp-content/uploads/2016/11/hamburguesa-queso-receta.jpg', 1, 222.39, 1),
(9, 'MILANESA', 'https://cocina-casera.com/wp-content/uploads/2016/11/hamburguesa-queso-receta.jpg', 1, 85.3, 1),
(10, 'VACIOaa', 'https://cocina-casera.com/wp-content/uploads/2016/11/hamburguesa-queso-receta.jpg', 1, 122, 1),
(11, 'SUPREMA', 'https://cocina-casera.com/wp-content/uploads/2016/11/hamburguesa-queso-receta.jpg', 1, 459.62, 0),
(12, 'SUSHI', 'https://cocina-casera.com/wp-content/uploads/2016/11/hamburguesa-queso-receta.jpg', 1, 758.64, 1),
(13, 'ARROZ', 'https://cocina-casera.com/wp-content/uploads/2016/11/hamburguesa-queso-receta.jpg', 1, 12, 0),
(14, 'PIZZA', 'https://cocina-casera.com/wp-content/uploads/2016/11/hamburguesa-queso-receta.jpg', 1, 197.39, 0),
(15, 'tira de asado', 'asdsad', 1, 12.32, 1),
(16, 'tira de asado', 'https://cocina-casera.com/wp-content/uploads/2016/11/hamburguesa-queso-receta.jpg', 1, 12.32, 0),
(17, 'sdfsdf', 'sdfsdf', 4, 213, 1),
(18, 'sdfsdf', 'sdfsdf', 4, 213, 1),
(19, 'sdfsdf', 'https://cocina-casera.com/wp-content/uploads/2016/11/hamburguesa-queso-receta.jpg', 4, 213, 1),
(20, 'sadsad', 'asdsad', 3, 213, 1),
(21, 'MILANESA', 'https://cocina-casera.com/wp-content/uploads/2016/11/hamburguesa-queso-receta.jpg', 1, 85.3, 0),
(22, 'sadsadasdjjjjjjjjjjjjj', 'sadsadsa', 3, 123, 1),
(23, 'Ã±oquis fritos', 'asdasd', 2, 500, 1),
(24, 'juegoasdasdsad', 'asd', 1, 500, 1),
(25, 'HAMBURG', 'https://cocina-casera.com/wp-content/uploads/2016/11/hamburguesa-queso-receta.jpg', 2, 50, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `CATEGORIAID` int(11) NOT NULL,
  `NOMBRE` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`CATEGORIAID`, `NOMBRE`) VALUES
(1, 'OTROS'),
(2, 'MINUTAS'),
(3, 'BEBIDAS'),
(4, 'PARRILLA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `EMPLID` int(11) NOT NULL,
  `EMPLNOMB` varchar(50) NOT NULL,
  `EMPLAPLL` varchar(50) NOT NULL,
  `EMPLTURN` varchar(2) NOT NULL,
  `EMPLUSUA` varchar(8) NOT NULL,
  `EMPLCLAV` varchar(100) NOT NULL,
  `ROLEID` int(11) DEFAULT NULL,
  `BAJA` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`EMPLID`, `EMPLNOMB`, `EMPLAPLL`, `EMPLTURN`, `EMPLUSUA`, `EMPLCLAV`, `ROLEID`, `BAJA`) VALUES
(1, 'Juan Jose', 'Madeo', 'TM', 'jjmadeo1', '$2y$10$goFAXywwVbZGt/QQxRko5.oR.udRlXP/PiwtrDn/mFO5CemoJvc5.', 2, '0000-00-00 00:00:00'),
(4, 'Juan Jose ALFA', 'Madeo', 'TM', 'jjmadeo', '$2y$10$2R4ul1M.kKozeS9Mw/CHj.vk02LssBYoHUVW7y42iLVq9c2dNNMuK', 2, '0000-00-00 00:00:00'),
(7, 'Juan Jose', 'Madeo', 'TM', 'jjmadeo9', '$2y$10$ct6yCxWL.qLmwjR3A6Ekdus84g9z1WwgGAxfAWUzdlxDlM6a5.Vi2', 1, '2020-11-24 18:07:25'),
(9, 'Jose', 'Gomez', 'TT', 'josecg87', '$2y$10$rJWPv2/VCix0yhCeTOwlCut4ZLLCP2N9TNm4YNMABkC6ZpjruzAka', 2, '0000-00-00 00:00:00'),
(11, 'JUANJO', 'MADEO', 'TT', 'josecg90', '$2y$10$goFAXywwVbZGt/QQxRko5.oR.udRlXP/PiwtrDn/mFO5CemoJvc5.', 2, '0000-00-00 00:00:00'),
(10007, 'Test Mozo', 'Mozo', 'TT', 'mozo', '$2y$10$OHCT0Nkgrz5o4VHuCKma.ekY1QWNZmTMB0Ne2i3Km7fkDSGLFFo9e', 2, '0000-00-00 00:00:00'),
(10008, 'Prueba ADM', 'ADM', 'TT', 'adm', '$2y$10$j/A7h49/gcDFG7snH2233O3nIx7O93a//3F8u1ocq9YmJITjE78Ga', 1, '0000-00-00 00:00:00'),
(10009, 'Cajero', 'Cajero Prueba', 'TT', 'cajero', '$2y$10$kePsUtrUItkEIP/vbODSBemcRcKVkGr5tM6Hrd/e6c34I7QaI5Gkm', 3, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `ESTADOID` int(11) NOT NULL,
  `NOMBRE` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`ESTADOID`, `NOMBRE`) VALUES
(1, 'PENDIENTE'),
(2, 'VISTO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesa`
--

CREATE TABLE `mesa` (
  `MESAID` int(11) NOT NULL,
  `OCUPADA` tinyint(4) NOT NULL,
  `HABILITADA` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `mesa`
--

INSERT INTO `mesa` (`MESAID`, `OCUPADA`, `HABILITADA`) VALUES
(1, 0, 1),
(2, 0, 1),
(3, 0, 1),
(4, 0, 1),
(5, 0, 1),
(6, 0, 1),
(7, 0, 1),
(8, 0, 1),
(9, 0, 1),
(10, 0, 1),
(11, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notificacion`
--

CREATE TABLE `notificacion` (
  `NOTIFICACIONID` int(11) NOT NULL,
  `PEDIDOID` int(11) DEFAULT NULL,
  `ESTADOID` int(11) DEFAULT NULL,
  `TIPO_NOTI_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `notificacion`
--

INSERT INTO `notificacion` (`NOTIFICACIONID`, `PEDIDOID`, `ESTADOID`, `TIPO_NOTI_ID`) VALUES
(1, 7, 1, 3),
(2, 8, 1, 3),
(3, 9, 1, 3),
(4, 10, 1, 3),
(5, 11, 1, 3),
(6, 11, 1, 1),
(7, 12, 1, 3),
(8, 12, 1, 1),
(9, 13, 1, 3),
(10, 14, 1, 3),
(11, 14, 1, 1),
(12, 14, 1, 2),
(13, 15, 1, 3),
(14, 15, 1, 1),
(15, 15, 1, 1),
(16, 16, 1, 3),
(17, 16, 1, 1),
(18, 17, 1, 3),
(19, 18, 1, 3),
(20, 19, 1, 3),
(21, 20, 1, 3),
(22, 21, 1, 3),
(23, 22, 1, 3),
(24, 22, 1, 1),
(25, 22, 1, 1),
(26, 22, 1, 2),
(27, 23, 1, 3),
(28, 23, 1, 1),
(29, 23, 1, 1),
(30, 23, 1, 2),
(31, 24, 1, 3),
(32, 24, 1, 2),
(33, 25, 1, 3),
(34, 25, 1, 2),
(35, 25, 1, 2),
(36, 25, 1, 2),
(37, 25, 1, 1),
(38, 25, 1, 2),
(39, 26, 1, 3),
(40, 27, 1, 3),
(41, 28, 1, 3),
(42, 29, 1, 3),
(43, 30, 1, 3),
(44, 31, 1, 3),
(45, 32, 1, 3),
(46, 33, 1, 3),
(47, 34, 1, 3),
(48, 35, 1, 3),
(49, 36, 1, 3),
(50, 37, 1, 3),
(51, 38, 1, 3),
(52, 38, 1, 1),
(53, 39, 2, 3),
(54, 39, 2, 1),
(55, 40, 2, 3),
(56, 40, 2, 1),
(57, 40, 2, 1),
(58, 40, 2, 2),
(59, 41, 2, 3),
(60, 41, 2, 1),
(61, 41, 2, 2),
(62, 42, 2, 3),
(63, 42, 2, 1),
(64, 42, 2, 2),
(65, 43, 1, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `PEDIDOID` int(11) NOT NULL,
  `FECHA_HORA` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `RELAID` int(11) DEFAULT NULL,
  `TOTAL` float DEFAULT NULL,
  `PEDIDO_COBRADO` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`PEDIDOID`, `FECHA_HORA`, `RELAID`, `TOTAL`, `PEDIDO_COBRADO`) VALUES
(4, '2020-11-10 03:01:11', 3, 1235.36, 1),
(5, '2020-11-10 03:01:11', 3, 1235.36, 1),
(6, '2020-11-10 03:01:11', 3, 3569.9, 1),
(7, '2020-11-10 03:01:11', 3, 808.67, 1),
(8, '2020-11-10 03:01:11', 3, 1547.95, 1),
(9, '2020-11-10 03:01:11', 2, 552.77, 1),
(10, '2020-11-10 03:01:11', 5, 127.39, 1),
(11, '2020-11-10 03:01:11', 2, 127.39, 1),
(12, '2020-11-10 03:01:11', 3, 254.78, 1),
(13, '2020-11-10 03:01:11', 3, 1, 1),
(14, '2020-11-10 03:01:11', 4, 456.69, 1),
(15, '2020-11-12 04:52:09', 2, 794.31, 1),
(16, '2020-11-12 04:52:09', 3, 419.99, 1),
(17, '2020-11-12 04:52:47', 2, 726.88, 1),
(18, '2020-11-12 05:02:56', 3, 594.33, 1),
(19, '2020-11-12 05:04:20', 2, 4596.2, 1),
(20, '2020-11-12 05:06:23', 2, 2757.72, 1),
(21, '2020-11-13 22:52:41', 2, 459.62, 1),
(22, '2020-11-13 23:19:32', 2, 459.62, 1),
(23, '2020-11-13 23:19:35', 3, 919.24, 1),
(24, '2020-11-13 23:19:39', 11, 459.62, 1),
(25, '2020-11-13 23:19:37', 8, 1838.48, 1),
(26, '2020-11-23 21:14:05', 2, 1266.63, 1),
(27, '2020-11-23 21:16:08', 11, 1278.63, 1),
(28, '2020-11-23 21:27:02', 11, 693.65, 1),
(29, '2020-11-23 21:27:45', 11, 1850.8, 1),
(30, '2020-11-23 21:31:57', 11, 931.24, 1),
(31, '2020-11-23 21:33:53', 11, 1390.86, 1),
(32, '2020-11-23 21:35:03', 11, 1128.63, 1),
(33, '2020-11-23 21:37:46', 11, 1770.85, 1),
(34, '2020-11-23 21:38:56', 11, 1862.48, 1),
(35, '2020-11-23 21:40:53', 11, 483.62, 1),
(36, '2020-11-23 22:32:18', 6, 1402.86, 1),
(37, '2020-11-23 22:32:20', 8, 1338.02, 1),
(38, '2020-11-24 01:11:51', 2, 778.95, 1),
(39, '2020-11-24 18:01:56', 3, 1600.25, 1),
(40, '2020-11-24 18:01:59', 5, 1886.48, 1),
(41, '2020-11-24 18:02:01', 6, 2729.2, 1),
(42, '2020-11-24 18:26:16', 3, 1405.31, 1),
(43, '2020-11-24 18:26:20', 6, 931.24, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permiso`
--

CREATE TABLE `permiso` (
  `PERMISOID` int(11) NOT NULL,
  `NOMBRE` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `permiso`
--

INSERT INTO `permiso` (`PERMISOID`, `NOMBRE`) VALUES
(1, 'VER MESAS'),
(2, 'CERRAR MESA'),
(3, 'ABM CARTA'),
(4, 'ABM EMPLEADO'),
(5, 'ABM CARRUSEL'),
(6, 'ADM MESAS'),
(7, 'VER PEDIDOS'),
(8, 'ADM MOZO'),
(9, 'ACC AUDITORIA'),
(11, 'VER LLAMADO CLIENTE'),
(12, 'GESTIONAR PEDIDOS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relacartapedido`
--

CREATE TABLE `relacartapedido` (
  `RELA_C_P_ID` int(11) NOT NULL,
  `OBSERVACION` varchar(200) NOT NULL,
  `CANTIDAD` int(11) NOT NULL,
  `PEDIDOID` int(11) DEFAULT NULL,
  `PRODID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `relacartapedido`
--

INSERT INTO `relacartapedido` (`RELA_C_P_ID`, `OBSERVACION`, `CANTIDAD`, `PEDIDOID`, `PRODID`) VALUES
(6, 'ads', 2, 4, 10),
(7, 'ads', 2, 4, 11),
(8, 'ads', 2, 4, 12),
(9, 'ads', 2, 4, 13),
(10, 'ads', 2, 5, 10),
(11, 'ads', 2, 5, 11),
(12, 'ads', 2, 5, 12),
(13, 'ads', 2, 5, 13),
(14, '', 4, 6, 11),
(15, '', 3, 6, 12),
(16, '', 3, 6, 13),
(17, '', 3, 7, 8),
(18, '', 5, 7, 9),
(19, '', 1, 8, 9),
(20, '', 1, 8, 10),
(21, '', 1, 8, 11),
(22, '', 1, 8, 12),
(23, '', 1, 8, 13),
(24, '', 3, 9, 8),
(25, '', 2, 9, 9),
(26, '', 1, 10, 8),
(27, '', 1, 11, 8),
(28, '', 2, 12, 8),
(29, '', 1, 14, 8),
(30, '', 1, 14, 9),
(31, '', 2, 14, 10),
(32, '', 1, 15, 8),
(33, '', 1, 15, 9),
(34, '', 1, 15, 10),
(35, '', 1, 15, 11),
(36, '', 2, 16, 9),
(37, '', 1, 16, 8),
(38, '', 1, 16, 10),
(39, '', 1, 17, 13),
(40, '', 3, 17, 14),
(41, '', 1, 17, 16),
(42, '', 1, 18, 11),
(43, '', 1, 18, 13),
(44, '', 1, 18, 16),
(45, '', 10, 19, 11),
(46, '', 6, 20, 11),
(47, '', 1, 21, 11),
(48, '', 1, 22, 11),
(49, '', 2, 23, 11),
(50, '', 1, 24, 11),
(51, '', 4, 25, 11),
(52, '', 1, 26, 11),
(53, '', 1, 26, 13),
(54, '', 1, 26, 14),
(55, '', 1, 26, 16),
(56, '', 1, 26, 21),
(57, '', 1, 26, 23),
(58, '', 1, 27, 11),
(59, '', 2, 27, 13),
(60, '', 1, 27, 14),
(61, '', 1, 27, 16),
(62, '', 1, 27, 21),
(63, '', 1, 27, 23),
(64, '', 1, 28, 11),
(65, '', 1, 28, 13),
(66, '', 1, 28, 14),
(67, '', 2, 28, 16),
(68, '', 1, 29, 16),
(69, '', 4, 29, 11),
(70, '', 2, 30, 11),
(71, '', 1, 30, 13),
(72, '', 3, 31, 11),
(73, '', 1, 31, 13),
(74, '', 2, 32, 11),
(75, '', 1, 32, 13),
(76, '', 1, 32, 14),
(77, '', 3, 33, 11),
(78, '', 2, 33, 13),
(79, '', 1, 33, 14),
(80, '', 2, 33, 21),
(81, '', 4, 34, 11),
(82, '', 2, 34, 13),
(83, '', 1, 35, 11),
(84, '', 2, 35, 13),
(85, '', 3, 36, 11),
(86, '', 2, 36, 13),
(87, '', 2, 37, 11),
(88, '', 2, 37, 13),
(89, '', 2, 37, 14),
(90, '', 1, 38, 11),
(91, '', 1, 38, 13),
(92, '', 1, 38, 14),
(93, '', 2, 38, 16),
(94, '', 1, 38, 21),
(95, '', 3, 39, 11),
(96, '', 2, 39, 13),
(97, '', 1, 39, 14),
(98, '', 4, 40, 11),
(99, '', 4, 40, 13),
(100, '', 5, 41, 11),
(101, '', 2, 41, 13),
(102, '', 2, 41, 14),
(103, '', 1, 41, 16),
(104, '', 1, 42, 11),
(105, '', 3, 42, 14),
(106, '', 1, 42, 16),
(107, '', 4, 42, 21),
(108, '', 2, 43, 11),
(109, '', 1, 43, 13);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relaemplrol`
--

CREATE TABLE `relaemplrol` (
  `RELA_E_R_ID` int(11) NOT NULL,
  `EMPLID` int(11) DEFAULT NULL,
  `ROLEID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relamesaemplpedido`
--

CREATE TABLE `relamesaemplpedido` (
  `RELAID` int(11) NOT NULL,
  `EMPLID` int(11) DEFAULT NULL,
  `MESAID` int(11) DEFAULT NULL,
  `FECHA_HORA` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `relamesaemplpedido`
--

INSERT INTO `relamesaemplpedido` (`RELAID`, `EMPLID`, `MESAID`, `FECHA_HORA`) VALUES
(2, 9, 1, '2020-11-23 18:04:11'),
(3, 11, 2, '2020-11-14 02:11:48'),
(4, 9, 3, '2020-11-23 18:04:13'),
(5, 4, 4, '2020-11-24 18:09:33'),
(6, 4, 5, '2020-11-24 18:09:36'),
(7, 10007, 8, '2020-11-24 18:09:43'),
(8, 10007, 9, '2020-11-24 18:09:47'),
(9, 11, 10, '2020-11-24 18:09:49'),
(10, 9, 11, '2020-11-24 01:19:18'),
(11, 1, 6, '2020-11-24 18:09:41'),
(12, 11, 7, '2020-11-14 02:43:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relarolpermiso`
--

CREATE TABLE `relarolpermiso` (
  `RELA_R_P_ID` int(11) NOT NULL,
  `ROLEID` int(11) DEFAULT NULL,
  `PERMISOID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `relarolpermiso`
--

INSERT INTO `relarolpermiso` (`RELA_R_P_ID`, `ROLEID`, `PERMISOID`) VALUES
(1, 1, 4),
(2, 1, 9),
(3, 2, 1),
(4, 2, 2),
(5, 2, 7),
(6, 2, 11),
(7, 2, 12),
(8, 3, 1),
(9, 3, 2),
(10, 3, 3),
(11, 3, 5),
(12, 3, 6),
(13, 3, 7),
(14, 3, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `ROLEID` int(11) NOT NULL,
  `NOMBRE` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`ROLEID`, `NOMBRE`) VALUES
(1, 'ADM'),
(2, 'MOZO'),
(3, 'CAJERO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_notificacion`
--

CREATE TABLE `tipo_notificacion` (
  `TIPO_NOTI_ID` int(11) NOT NULL,
  `NOMBRE` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo_notificacion`
--

INSERT INTO `tipo_notificacion` (`TIPO_NOTI_ID`, `NOMBRE`) VALUES
(1, 'ASISTENCIA'),
(2, 'CIERRE DE MESA'),
(3, 'APERTURA DE MESA');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auditoria`
--
ALTER TABLE `auditoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `calificacion`
--
ALTER TABLE `calificacion`
  ADD PRIMARY KEY (`CALIFICACIONID`),
  ADD KEY `IXFK_CALIFICACION_PEDIDO` (`PEDIDOID`);

--
-- Indices de la tabla `carrusel`
--
ALTER TABLE `carrusel`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `carta`
--
ALTER TABLE `carta`
  ADD PRIMARY KEY (`PRODID`),
  ADD KEY `IXFK_CARTA_CATEGORIA` (`CATEGORIAID`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`CATEGORIAID`),
  ADD KEY `IXFK_CATEGORIA_CATEGORIA` (`CATEGORIAID`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`EMPLID`),
  ADD KEY `IXFK_Empleado_ROLES_PERMISOS` (`ROLEID`);

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`ESTADOID`);

--
-- Indices de la tabla `mesa`
--
ALTER TABLE `mesa`
  ADD PRIMARY KEY (`MESAID`);

--
-- Indices de la tabla `notificacion`
--
ALTER TABLE `notificacion`
  ADD PRIMARY KEY (`NOTIFICACIONID`),
  ADD KEY `IXFK_NOTIFICACION_ESTADO` (`ESTADOID`),
  ADD KEY `IXFK_NOTIFICACION_PEDIDO` (`PEDIDOID`),
  ADD KEY `IXFK_NOTIFICACION_TIPO_NOTIFICACION` (`TIPO_NOTI_ID`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`PEDIDOID`),
  ADD KEY `IXFK_PEDIDO_RelaMesaEmplPedido` (`RELAID`);

--
-- Indices de la tabla `permiso`
--
ALTER TABLE `permiso`
  ADD PRIMARY KEY (`PERMISOID`);

--
-- Indices de la tabla `relacartapedido`
--
ALTER TABLE `relacartapedido`
  ADD PRIMARY KEY (`RELA_C_P_ID`),
  ADD KEY `IXFK_RelaCartaPedido_CARTA` (`PRODID`),
  ADD KEY `IXFK_RelaCartaPedido_PEDIDO` (`PEDIDOID`);

--
-- Indices de la tabla `relaemplrol`
--
ALTER TABLE `relaemplrol`
  ADD PRIMARY KEY (`RELA_E_R_ID`),
  ADD KEY `IXFK_RelaEmplRol_Empleado` (`EMPLID`),
  ADD KEY `IXFK_RelaEmplRol_ROL` (`ROLEID`);

--
-- Indices de la tabla `relamesaemplpedido`
--
ALTER TABLE `relamesaemplpedido`
  ADD PRIMARY KEY (`RELAID`),
  ADD KEY `IXFK_RelaMesaEmplPedido_Empleado` (`EMPLID`),
  ADD KEY `IXFK_RelaMesaEmplPedido_MESA` (`MESAID`);

--
-- Indices de la tabla `relarolpermiso`
--
ALTER TABLE `relarolpermiso`
  ADD PRIMARY KEY (`RELA_R_P_ID`),
  ADD KEY `IXFK_RelaRolPermiso_PERMISO` (`PERMISOID`),
  ADD KEY `IXFK_RelaRolPermiso_ROLES_PERMISOS` (`ROLEID`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`ROLEID`);

--
-- Indices de la tabla `tipo_notificacion`
--
ALTER TABLE `tipo_notificacion`
  ADD PRIMARY KEY (`TIPO_NOTI_ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auditoria`
--
ALTER TABLE `auditoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=447;

--
-- AUTO_INCREMENT de la tabla `calificacion`
--
ALTER TABLE `calificacion`
  MODIFY `CALIFICACIONID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `carrusel`
--
ALTER TABLE `carrusel`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `carta`
--
ALTER TABLE `carta`
  MODIFY `PRODID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `CATEGORIAID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `EMPLID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10010;

--
-- AUTO_INCREMENT de la tabla `estado`
--
ALTER TABLE `estado`
  MODIFY `ESTADOID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `mesa`
--
ALTER TABLE `mesa`
  MODIFY `MESAID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `notificacion`
--
ALTER TABLE `notificacion`
  MODIFY `NOTIFICACIONID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `PEDIDOID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de la tabla `permiso`
--
ALTER TABLE `permiso`
  MODIFY `PERMISOID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `relacartapedido`
--
ALTER TABLE `relacartapedido`
  MODIFY `RELA_C_P_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT de la tabla `relaemplrol`
--
ALTER TABLE `relaemplrol`
  MODIFY `RELA_E_R_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `relamesaemplpedido`
--
ALTER TABLE `relamesaemplpedido`
  MODIFY `RELAID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `relarolpermiso`
--
ALTER TABLE `relarolpermiso`
  MODIFY `RELA_R_P_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `ROLEID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipo_notificacion`
--
ALTER TABLE `tipo_notificacion`
  MODIFY `TIPO_NOTI_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `calificacion`
--
ALTER TABLE `calificacion`
  ADD CONSTRAINT `FK_CALIFICACION_PEDIDO` FOREIGN KEY (`PEDIDOID`) REFERENCES `pedido` (`PEDIDOID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `carta`
--
ALTER TABLE `carta`
  ADD CONSTRAINT `FK_CARTA_CATEGORIA` FOREIGN KEY (`CATEGORIAID`) REFERENCES `categoria` (`CATEGORIAID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD CONSTRAINT `FK_CATEGORIA_CATEGORIA` FOREIGN KEY (`CATEGORIAID`) REFERENCES `categoria` (`CATEGORIAID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `notificacion`
--
ALTER TABLE `notificacion`
  ADD CONSTRAINT `FK_NOTIFICACION_ESTADO` FOREIGN KEY (`ESTADOID`) REFERENCES `estado` (`ESTADOID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_NOTIFICACION_PEDIDO` FOREIGN KEY (`PEDIDOID`) REFERENCES `pedido` (`PEDIDOID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_NOTIFICACION_TIPO_NOTIFICACION` FOREIGN KEY (`TIPO_NOTI_ID`) REFERENCES `tipo_notificacion` (`TIPO_NOTI_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `relacartapedido`
--
ALTER TABLE `relacartapedido`
  ADD CONSTRAINT `FK_RelaCartaPedido_CARTA` FOREIGN KEY (`PRODID`) REFERENCES `carta` (`PRODID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_RelaCartaPedido_PEDIDO` FOREIGN KEY (`PEDIDOID`) REFERENCES `pedido` (`PEDIDOID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `relaemplrol`
--
ALTER TABLE `relaemplrol`
  ADD CONSTRAINT `FK_RelaEmplRol_Empleado` FOREIGN KEY (`EMPLID`) REFERENCES `empleado` (`EMPLID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_RelaEmplRol_ROL` FOREIGN KEY (`ROLEID`) REFERENCES `rol` (`ROLEID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `relamesaemplpedido`
--
ALTER TABLE `relamesaemplpedido`
  ADD CONSTRAINT `FK_RelaMesaEmplPedido_Empleado` FOREIGN KEY (`EMPLID`) REFERENCES `empleado` (`EMPLID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `relarolpermiso`
--
ALTER TABLE `relarolpermiso`
  ADD CONSTRAINT `FK_RelaRolPermiso_PERMISO` FOREIGN KEY (`PERMISOID`) REFERENCES `permiso` (`PERMISOID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_RelaRolPermiso_ROLES_PERMISOS` FOREIGN KEY (`ROLEID`) REFERENCES `rol` (`ROLEID`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
