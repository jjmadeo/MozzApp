-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-11-2020 a las 23:35:28
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
(13, 'ARROZ', 'https://cocina-casera.com/wp-content/uploads/2016/11/hamburguesa-queso-receta.jpg', 1, 122.39, 0),
(14, 'PIZZA', 'https://cocina-casera.com/wp-content/uploads/2016/11/hamburguesa-queso-receta.jpg', 1, 197.39, 0),
(15, 'tira de asado', 'asdsad', 1, 12.32, 1),
(16, 'tira de asado', 'https://cocina-casera.com/wp-content/uploads/2016/11/hamburguesa-queso-receta.jpg', 1, 12.32, 0),
(17, 'sdfsdf', 'sdfsdf', 4, 213, 1),
(18, 'sdfsdf', 'sdfsdf', 4, 213, 1),
(19, 'sdfsdf', 'https://cocina-casera.com/wp-content/uploads/2016/11/hamburguesa-queso-receta.jpg', 4, 213, 0),
(20, 'sadsad', 'asdsad', 3, 213, 1),
(21, 'MILANESA', 'https://cocina-casera.com/wp-content/uploads/2016/11/hamburguesa-queso-receta.jpg', 1, 85.3, 0),
(22, 'sadsadasdjjjjjjjjjjjjj', 'sadsadsa', 3, 123, 1);

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
(1, 'Juan Jose', 'Madeo', 'TM', 'jjmadeo1', '$2y$10$goFAXywwVbZGt/QQxRko5.oR.udRlXP/PiwtrDn/mFO5CemoJvc5.', 1, '0000-00-00 00:00:00'),
(2, 'Prueb', 'Pruebaa', 'TM', 'usio', '$2y$10$goFAXywwVbZGt/QQxRko5.oR.udRlXP/PiwtrDn/mFO5CemoJvc5.', 1, '0000-00-00 00:00:00'),
(3, 'Juan Jose', 'Madeo', 'TM', 'jjmadeo1', '$2y$10$fha56KZ4VH1yMaHXua0Z0O7f7zFZLZ8PQAC4p7.y8D2zDCjYEBWbm', 1, '0000-00-00 00:00:00'),
(4, 'Juan Jose', 'Madeo', 'TM', 'jjmadeo', '$2y$10$21.tOSoBhPdHQb306Au18O2x8MvfGmJKqZJ/bsgVl7nWAWexN8juK', 3, '0000-00-00 00:00:00'),
(6, 'Juan Jose', 'Madeo', 'TM', 'jjmadeo1', '$2y$10$goFAXywwVbZGt/QQxRko5.oR.udRlXP/PiwtrDn/mFO5CemoJvc5.', 1, '0000-00-00 00:00:00'),
(7, 'Juan Jose', 'Madeo', 'TM', 'jjmadeo9', '$2y$10$ct6yCxWL.qLmwjR3A6Ekdus84g9z1WwgGAxfAWUzdlxDlM6a5.Vi2', 1, '0000-00-00 00:00:00'),
(8, 'MILANESA', '', '', '', '', 1, '0000-00-00 00:00:00'),
(9, 'Jose', 'Gomez', 'TT', 'josecg87', '$2y$10$rJWPv2/VCix0yhCeTOwlCut4ZLLCP2N9TNm4YNMABkC6ZpjruzAka', 2, '2020-11-14 02:43:38'),
(10, 'tira de asado', '', '', '', '', 1, '0000-00-00 00:00:00'),
(11, 'JUANJO', 'MADEO', 'TT', 'josecg90', '$2y$10$goFAXywwVbZGt/QQxRko5.oR.udRlXP/PiwtrDn/mFO5CemoJvc5.', 2, '0000-00-00 00:00:00'),
(9999, 'Eliminado', 'Eliminado', 'TT', 'Eliminad', 'asd', 1, '2020-11-14 02:28:16'),
(10000, 'Juan Jose', 'Madeo', 'TM', 'jjmadeo9', '$2y$10$aCyYM2HeRU1.eFLA0nrIc.0Qp/Ta6ttDHagoUC5ochs9y52b2xHNS', 1, '2020-11-14 02:29:13');

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
(2, 'VISTO'),
(3, 'ENVIADO');

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
(38, 25, 1, 2);

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
(25, '2020-11-13 23:19:37', 8, 1838.48, 1);

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
(51, '', 4, 25, 11);

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
(2, 11, 1, '2020-11-14 02:43:51'),
(3, 11, 2, '2020-11-14 02:11:48'),
(4, 11, 3, '2020-11-13 22:49:10'),
(5, 11, 4, '2020-11-14 02:43:25'),
(6, 11, 5, '2020-11-13 04:12:50'),
(7, 11, 8, '2020-11-07 19:14:35'),
(8, 11, 9, '2020-11-14 02:43:29'),
(9, 11, 10, '2020-11-13 04:12:50'),
(10, 11, 11, '2020-11-07 19:14:35'),
(11, 11, 6, '2020-11-14 02:43:34'),
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
-- AUTO_INCREMENT de la tabla `calificacion`
--
ALTER TABLE `calificacion`
  MODIFY `CALIFICACIONID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `carrusel`
--
ALTER TABLE `carrusel`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `carta`
--
ALTER TABLE `carta`
  MODIFY `PRODID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `CATEGORIAID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `EMPLID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10001;

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
  MODIFY `NOTIFICACIONID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `PEDIDOID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `permiso`
--
ALTER TABLE `permiso`
  MODIFY `PERMISOID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `relacartapedido`
--
ALTER TABLE `relacartapedido`
  MODIFY `RELA_C_P_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

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
