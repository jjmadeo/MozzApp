-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-11-2020 a las 00:50:34
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
(446, '2020-11-24 18:26:24', 'Cerrar Sesion', 'Se ah solicitado el cierre de session.', 10009, 3),
(447, '2020-11-24 22:35:08', 'Login', 'Inicio de sesion del usaurio.', 10009, 3),
(448, '2020-11-24 22:35:08', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(449, '2020-11-24 22:35:29', 'ObtenerPedidosMesa', 'Se solicitaron los pedidos de la mesa => undefined', 10009, 3),
(450, '2020-11-24 22:35:45', 'Login', 'Inicio de sesion del usaurio.', 10007, 2),
(451, '2020-11-24 22:35:58', 'Login', 'Inicio de sesion del usaurio.', 10008, 1),
(452, '2020-11-24 22:35:58', 'ObtenerEmpleados', 'Se ha solicitado la lista de empleados', 10008, 1),
(453, '2020-11-24 22:36:06', 'Login', 'Inicio de sesion del usaurio.', 10009, 3),
(454, '2020-11-24 22:36:06', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(455, '2020-11-24 22:36:09', 'ObtenerEmpleados', 'Se ha solicitado la lista de Mozos', 10009, 3),
(456, '2020-11-24 22:36:09', 'ObtenerMesas', 'Se ha solicitado la lista de Mesas', 10009, 3),
(457, '2020-11-24 22:36:18', 'ReasignarMesa', 'Se ah reasignado la mesa 1 al empleado 10007', 10009, 3),
(458, '2020-11-24 22:36:18', 'ObtenerMesas', 'Se ha solicitado la lista de Mesas', 10009, 3),
(459, '2020-11-24 22:36:18', 'ObtenerEmpleados', 'Se ha solicitado la lista de Mozos', 10009, 3),
(460, '2020-11-24 22:36:28', 'Login', 'Inicio de sesion del usaurio.', 10007, 2),
(461, '2020-11-24 22:40:09', 'Cerrar Sesion', 'Se ah solicitado el cierre de session.', 10007, 2),
(462, '2020-11-24 22:40:15', 'Login', 'Inicio de sesion del usaurio.', 10009, 3),
(463, '2020-11-24 22:40:16', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(464, '2020-11-24 22:40:25', 'ObtenerPedidosMesa', 'Se solicitaron los pedidos de la mesa => undefined', 10009, 3),
(465, '2020-11-24 22:40:28', 'ObtenerPedidosMesa', 'Se solicitaron los pedidos de la mesa => undefined', 10009, 3),
(466, '2020-11-24 22:40:31', 'ObtenerPedidosMesa', 'Se solicitaron los pedidos de la mesa => undefined', 10009, 3),
(467, '2020-11-24 22:40:36', 'CerrarMesa', 'Se solicto el cierre de la mesa => 1', 10009, 3),
(468, '2020-11-24 22:40:36', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(469, '2020-11-24 22:40:55', 'ObtenerPedidosMesa', 'Se solicitaron los pedidos de la mesa => undefined', 10009, 3),
(470, '2020-11-24 22:41:53', 'CerrarMesa', 'Se solicto el cierre de la mesa => 8', 10009, 3),
(471, '2020-11-24 22:41:53', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(472, '2020-11-24 22:42:56', 'ObtenerCarta', 'Se ah solicitado la carta.', 10009, 3),
(473, '2020-11-24 22:42:56', 'ObtenerCarrusell', 'Se ah solicitado la carrusell.', 10009, 3),
(474, '2020-11-24 22:43:51', 'AltaItemCarta', 'Se ah agregado un registro en la carta.', 10009, 3),
(475, '2020-11-24 22:43:51', 'ObtenerCarta', 'Se ah solicitado la carta.', 10009, 3),
(476, '2020-11-24 22:43:51', 'ObtenerCarrusell', 'Se ah solicitado la carrusell.', 10009, 3),
(477, '2020-11-24 22:46:13', 'ActualizarItemCarta', 'Se ah actualizado un registro en la carta.', 10009, 3),
(478, '2020-11-24 22:46:13', 'ObtenerCarta', 'Se ah solicitado la carta.', 10009, 3),
(479, '2020-11-24 22:46:13', 'ObtenerCarrusell', 'Se ah solicitado la carrusell.', 10009, 3),
(480, '2020-11-24 22:46:30', 'EliminarItemCarta', 'Se ah Eliminado un registro de la carta.', 10009, 3),
(481, '2020-11-24 22:46:30', 'ObtenerCarta', 'Se ah solicitado la carta.', 10009, 3),
(482, '2020-11-24 22:46:30', 'ObtenerCarrusell', 'Se ah solicitado la carrusell.', 10009, 3),
(483, '2020-11-24 22:46:41', 'ObtenerCarrusell', 'Se ah solicitado la carrusell.', 10009, 3),
(484, '2020-11-24 22:46:41', 'ObtenerCarta', 'Se ah solicitado la carta.', 10009, 3),
(485, '2020-11-24 22:46:45', 'ObtenerMesas', 'Se ha solicitado la lista de Mesas', 10009, 3),
(486, '2020-11-24 22:46:45', 'ObtenerEmpleados', 'Se ha solicitado la lista de Mozos', 10009, 3),
(487, '2020-11-24 22:46:55', 'ActualizarEstadoMesa', 'Se ah modificado  la mesa 1 al estado  0', 10009, 3),
(488, '2020-11-24 22:46:55', 'ObtenerMesas', 'Se ha solicitado la lista de Mesas', 10009, 3),
(489, '2020-11-24 22:46:55', 'ObtenerEmpleados', 'Se ha solicitado la lista de Mozos', 10009, 3),
(490, '2020-11-24 22:46:56', 'ActualizarEstadoMesa', 'Se ah modificado  la mesa 2 al estado  0', 10009, 3),
(491, '2020-11-24 22:46:56', 'ObtenerMesas', 'Se ha solicitado la lista de Mesas', 10009, 3),
(492, '2020-11-24 22:46:56', 'ObtenerEmpleados', 'Se ha solicitado la lista de Mozos', 10009, 3),
(493, '2020-11-24 22:46:57', 'ActualizarEstadoMesa', 'Se ah modificado  la mesa 3 al estado  0', 10009, 3),
(494, '2020-11-24 22:46:57', 'ObtenerMesas', 'Se ha solicitado la lista de Mesas', 10009, 3),
(495, '2020-11-24 22:46:57', 'ObtenerEmpleados', 'Se ha solicitado la lista de Mozos', 10009, 3),
(496, '2020-11-24 22:47:00', 'ActualizarEstadoMesa', 'Se ah modificado  la mesa 1 al estado  1', 10009, 3),
(497, '2020-11-24 22:47:00', 'ObtenerMesas', 'Se ha solicitado la lista de Mesas', 10009, 3),
(498, '2020-11-24 22:47:00', 'ObtenerEmpleados', 'Se ha solicitado la lista de Mozos', 10009, 3),
(499, '2020-11-24 22:47:01', 'ActualizarEstadoMesa', 'Se ah modificado  la mesa 2 al estado  1', 10009, 3),
(500, '2020-11-24 22:47:01', 'ObtenerEmpleados', 'Se ha solicitado la lista de Mozos', 10009, 3),
(501, '2020-11-24 22:47:01', 'ObtenerMesas', 'Se ha solicitado la lista de Mesas', 10009, 3),
(502, '2020-11-24 22:47:02', 'ActualizarEstadoMesa', 'Se ah modificado  la mesa 3 al estado  1', 10009, 3),
(503, '2020-11-24 22:47:02', 'ObtenerMesas', 'Se ha solicitado la lista de Mesas', 10009, 3),
(504, '2020-11-24 22:47:02', 'ObtenerEmpleados', 'Se ha solicitado la lista de Mozos', 10009, 3),
(505, '2020-11-24 22:47:05', 'ReasignarMesa', 'Se ah reasignado la mesa 3 al empleado 1', 10009, 3),
(506, '2020-11-24 22:47:05', 'ObtenerEmpleados', 'Se ha solicitado la lista de Mozos', 10009, 3),
(507, '2020-11-24 22:47:05', 'ObtenerMesas', 'Se ha solicitado la lista de Mesas', 10009, 3),
(508, '2020-11-24 22:47:07', 'ReasignarMesa', 'Se ah reasignado la mesa 5 al empleado 1', 10009, 3),
(509, '2020-11-24 22:47:07', 'ObtenerEmpleados', 'Se ha solicitado la lista de Mozos', 10009, 3),
(510, '2020-11-24 22:47:07', 'ObtenerMesas', 'Se ha solicitado la lista de Mesas', 10009, 3),
(511, '2020-11-24 22:47:13', 'ObtenerCarta', 'Se ah solicitado la carta.', 10009, 3),
(512, '2020-11-24 22:47:13', 'ObtenerCarrusell', 'Se ah solicitado la carrusell.', 10009, 3),
(513, '2020-11-24 22:47:57', 'Login', 'Inicio de sesion del usaurio.', 10008, 1),
(514, '2020-11-24 22:47:57', 'ObtenerEmpleados', 'Se ha solicitado la lista de empleados', 10008, 1),
(515, '2020-11-24 22:48:13', 'ObtenerAuditoria', 'Se ha solicitado la auditoria del sistema.', 10008, 1),
(516, '2020-11-24 22:49:39', 'ObtenerEmpleados', 'Se solicitaron los empleados.', 10008, 1),
(517, '2020-11-24 22:50:15', 'Alta Empleado', 'Se ah dado de alta al empleado.', 10008, 1),
(518, '2020-11-24 22:50:15', 'ObtenerEmpleados', 'Se solicitaron los empleados.', 10008, 1),
(519, '2020-11-24 22:50:40', 'EditarEmpleado', 'Se Edito el empleado11', 10008, 1),
(520, '2020-11-24 22:50:40', 'ObtenerEmpleados', 'Se solicitaron los empleados.', 10008, 1),
(521, '2020-11-24 22:50:57', 'BajaLogicaEmplado', 'Se ha dado de baja el empleado10010', 10008, 1),
(522, '2020-11-24 22:50:57', 'ObtenerEmpleados', 'Se solicitaron los empleados.', 10008, 1),
(523, '2020-11-25 21:55:45', 'Login', 'Inicio de sesion del usaurio.', 10009, 3),
(524, '2020-11-25 21:55:45', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(525, '2020-11-25 21:55:50', 'Cerrar Sesion', 'Se ah solicitado el cierre de session.', 10009, 3),
(526, '2020-11-25 21:56:07', 'Login', 'Inicio de sesion del usaurio.', 10009, 3),
(527, '2020-11-25 21:56:07', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(528, '2020-11-25 21:56:10', 'ObtenerPedidosMesa', 'Se solicitaron los pedidos de la mesa => undefined', 10009, 3),
(529, '2020-11-25 21:56:14', 'ObtenerPedidosMesa', 'Se solicitaron los pedidos de la mesa => undefined', 10009, 3),
(530, '2020-11-25 21:56:15', 'ObtenerPedidosMesa', 'Se solicitaron los pedidos de la mesa => undefined', 10009, 3),
(531, '2020-11-25 21:56:29', 'ObtenerPedidosMesa', 'Se solicitaron los pedidos de la mesa => undefined', 10009, 3),
(532, '2020-11-25 21:56:49', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(533, '2020-11-25 21:56:58', 'ObtenerPedidosMesa', 'Se solicitaron los pedidos de la mesa => undefined', 10009, 3),
(534, '2020-11-25 21:58:04', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(535, '2020-11-25 21:58:13', 'ObtenerPedidosMesa', 'Se solicitaron los pedidos de la mesa => undefined', 10009, 3),
(536, '2020-11-25 21:59:31', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(537, '2020-11-25 21:59:33', 'ObtenerPedidosMesa', 'Se solicitaron los pedidos de la mesa => undefined', 10009, 3),
(538, '2020-11-25 21:59:58', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(539, '2020-11-25 22:00:00', 'ObtenerPedidosMesa', 'Se solicitaron los pedidos de la mesa => undefined', 10009, 3),
(540, '2020-11-25 22:00:03', 'ObtenerPedidosMesa', 'Se solicitaron los pedidos de la mesa => undefined', 10009, 3),
(541, '2020-11-25 22:03:48', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(542, '2020-11-25 22:03:50', 'ObtenerPedidosMesa', 'Se solicitaron los pedidos de la mesa => undefined', 10009, 3),
(543, '2020-11-25 22:06:12', 'ObtenerPedidosMesa', 'Se solicitaron los pedidos de la mesa => undefined', 10009, 3),
(544, '2020-11-25 22:07:37', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(545, '2020-11-25 22:07:38', 'ObtenerPedidosMesa', 'Se solicitaron los pedidos de la mesa => undefined', 10009, 3),
(546, '2020-11-25 22:12:32', 'ObtenerPedidosMesa', 'Se solicitaron los pedidos de la mesa => undefined', 10009, 3),
(547, '2020-11-25 22:12:47', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(548, '2020-11-25 22:12:49', 'ObtenerPedidosMesa', 'Se solicitaron los pedidos de la mesa => undefined', 10009, 3),
(549, '2020-11-25 22:27:36', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(550, '2020-11-25 22:27:41', 'ObtenerPedidosMesa', 'Se solicitaron los pedidos de la mesa => undefined', 10009, 3),
(551, '2020-11-25 22:27:59', 'CerrarMesa', 'Se solicto el cierre de la mesa => 1', 10009, 3),
(552, '2020-11-25 22:27:59', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(553, '2020-11-25 22:28:26', 'Cerrar Sesion', 'Se ah solicitado el cierre de session.', 10009, 3),
(554, '2020-11-25 22:29:10', 'Login', 'Inicio de sesion del usaurio.', 10009, 3),
(555, '2020-11-25 22:29:11', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(556, '2020-11-25 22:29:12', 'ObtenerPedidosMesa', 'Se solicitaron los pedidos de la mesa => undefined', 10009, 3),
(557, '2020-11-25 22:30:26', 'CerrarMesa', 'Se solicto el cierre de la mesa => 1', 10009, 3),
(558, '2020-11-25 22:30:26', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(559, '2020-11-25 22:31:06', 'CerrarMesa', 'Se solicto el cierre de la mesa => 1', 10009, 3),
(560, '2020-11-25 22:31:06', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(561, '2020-11-25 22:33:17', 'CerrarMesa', 'Se solicto el cierre de la mesa => 1', 10009, 3),
(562, '2020-11-25 22:33:17', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(563, '2020-11-25 22:34:53', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(564, '2020-11-25 22:35:35', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(565, '2020-11-25 22:35:37', 'ObtenerPedidosMesa', 'Se solicitaron los pedidos de la mesa => undefined', 10009, 3),
(566, '2020-11-25 22:36:28', 'CerrarMesa', 'Se solicto el cierre de la mesa => 2', 10009, 3),
(567, '2020-11-25 22:36:28', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(568, '2020-11-25 22:42:08', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(569, '2020-11-25 22:42:10', 'ObtenerPedidosMesa', 'Se solicitaron los pedidos de la mesa => undefined', 10009, 3),
(570, '2020-11-25 22:42:12', 'CerrarMesa', 'Se solicto el cierre de la mesa => 2', 10009, 3),
(571, '2020-11-25 22:42:12', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(572, '2020-11-25 22:42:25', 'CerrarMesa', 'Se solicto el cierre de la mesa => 2', 10009, 3),
(573, '2020-11-25 22:42:25', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(574, '2020-11-25 22:43:10', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(575, '2020-11-25 22:43:11', 'ObtenerPedidosMesa', 'Se solicitaron los pedidos de la mesa => undefined', 10009, 3),
(576, '2020-11-25 22:43:26', 'CerrarMesa', 'Se solicto el cierre de la mesa => 2', 10009, 3),
(577, '2020-11-25 22:43:26', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(578, '2020-11-25 22:43:33', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(579, '2020-11-25 22:43:33', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(580, '2020-11-25 22:43:33', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(581, '2020-11-25 22:43:34', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(582, '2020-11-25 22:44:52', 'ObtenerPedidosMesa', 'Se solicitaron los pedidos de la mesa => undefined', 10009, 3),
(583, '2020-11-25 23:11:04', 'CerrarMesa', 'Se solicto el cierre de la mesa => 2', 10009, 3),
(584, '2020-11-25 23:11:04', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(585, '2020-11-25 23:11:16', 'ObtenerPedidosMesa', 'Se solicitaron los pedidos de la mesa => undefined', 10009, 3),
(586, '2020-11-25 23:11:25', 'CerrarMesa', 'Se solicto el cierre de la mesa => 2', 10009, 3),
(587, '2020-11-25 23:11:25', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(588, '2020-11-25 23:18:44', 'Cerrar Sesion', 'Se ah solicitado el cierre de session.', 10009, 3),
(589, '2020-11-25 23:20:45', 'Login', 'Inicio de sesion del usaurio.', 4, 2),
(590, '2020-11-25 23:24:03', 'Login', 'Inicio de sesion del usaurio.', 10007, 2),
(591, '2020-11-25 23:24:16', 'Cerrar Sesion', 'Se ah solicitado el cierre de session.', 10007, 2),
(592, '2020-11-25 23:24:21', 'Login', 'Inicio de sesion del usaurio.', 10007, 2),
(593, '2020-11-25 23:24:42', 'Login', 'Inicio de sesion del usaurio.', 10007, 2),
(594, '2020-11-25 23:57:38', 'Cerrar Sesion', 'Se ah solicitado el cierre de session.', 10007, 2),
(595, '2020-11-25 23:57:50', 'Login', 'Inicio de sesion del usaurio.', 10009, 3),
(596, '2020-11-25 23:57:50', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(597, '2020-11-25 23:59:27', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(598, '2020-11-25 23:59:56', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(599, '2020-11-26 00:03:04', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(600, '2020-11-26 00:03:38', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(601, '2020-11-26 00:04:03', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(602, '2020-11-26 00:05:09', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(603, '2020-11-26 00:05:45', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(604, '2020-11-26 00:06:31', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(605, '2020-11-26 00:07:02', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(606, '2020-11-26 00:07:19', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(607, '2020-11-26 00:07:27', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(608, '2020-11-26 00:07:50', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(609, '2020-11-26 00:08:01', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(610, '2020-11-26 00:08:34', 'Cerrar Sesion', 'Se ah solicitado el cierre de session.', 10009, 3),
(611, '2020-11-26 00:08:58', 'Login', 'Inicio de sesion del usaurio.', 10009, 3),
(612, '2020-11-26 00:08:58', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(613, '2020-11-26 00:09:00', 'ObtenerCarta', 'Se ah solicitado la carta.', 10009, 3),
(614, '2020-11-26 00:09:00', 'ObtenerCarrusell', 'Se ah solicitado la carrusell.', 10009, 3),
(615, '2020-11-26 00:09:01', 'ObtenerMesas', 'Se ha solicitado la lista de Mesas', 10009, 3),
(616, '2020-11-26 00:09:01', 'ObtenerEmpleados', 'Se ha solicitado la lista de Mozos', 10009, 3),
(617, '2020-11-26 00:09:02', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(618, '2020-11-26 00:12:06', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(619, '2020-11-26 00:12:07', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(620, '2020-11-26 00:14:36', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(621, '2020-11-26 00:14:42', 'ObtenerPedidosMesa', 'Se solicitaron los pedidos de la mesa => undefined', 10009, 3),
(622, '2020-11-26 00:15:31', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(623, '2020-11-26 00:16:05', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(624, '2020-11-26 00:16:12', 'ObtenerPedidosMesa', 'Se solicitaron los pedidos de la mesa => undefined', 10009, 3),
(625, '2020-11-26 00:20:18', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(626, '2020-11-26 00:21:36', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(627, '2020-11-26 00:22:02', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(628, '2020-11-26 00:22:08', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(629, '2020-11-26 00:22:16', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(630, '2020-11-26 00:23:15', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(631, '2020-11-26 00:23:36', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(632, '2020-11-26 00:28:41', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(633, '2020-11-26 00:28:48', 'ObtenerPedidosMesa', 'Se solicitaron los pedidos de la mesa => undefined', 10009, 3),
(634, '2020-11-26 00:28:51', 'ObtenerPedidosMesa', 'Se solicitaron los pedidos de la mesa => undefined', 10009, 3),
(635, '2020-11-26 00:32:29', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(636, '2020-11-26 00:32:57', 'ObtenerPedidosMesa', 'Se solicitaron los pedidos de la mesa => undefined', 10009, 3),
(637, '2020-11-26 00:33:00', 'CerrarMesa', 'Se solicto el cierre de la mesa => 1', 10009, 3),
(638, '2020-11-26 00:33:00', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(639, '2020-11-26 00:33:05', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(640, '2020-11-26 01:02:49', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(641, '2020-11-26 01:07:06', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(642, '2020-11-26 01:08:21', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(643, '2020-11-26 01:08:46', 'Login', 'Inicio de sesion del usaurio.', 10007, 2),
(644, '2020-11-26 01:09:07', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(645, '2020-11-26 01:09:10', 'ObtenerPedidosMesa', 'Se solicitaron los pedidos de la mesa => undefined', 10009, 3),
(646, '2020-11-26 01:09:24', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(647, '2020-11-26 01:09:25', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(648, '2020-11-26 01:09:25', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(649, '2020-11-26 01:10:26', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(650, '2020-11-26 01:11:03', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(651, '2020-11-26 01:11:09', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(652, '2020-11-26 01:11:10', 'ObtenerPedidosMesa', 'Se solicitaron los pedidos de la mesa => undefined', 10009, 3),
(653, '2020-11-26 01:11:12', 'CerrarMesa', 'Se solicto el cierre de la mesa => 1', 10009, 3),
(654, '2020-11-26 01:11:12', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(655, '2020-11-26 01:11:14', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(656, '2020-11-26 01:11:14', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(657, '2020-11-26 01:11:14', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(658, '2020-11-26 01:13:20', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(659, '2020-11-26 01:15:02', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(660, '2020-11-26 01:15:59', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(661, '2020-11-26 01:16:39', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(662, '2020-11-26 01:17:01', 'Cerrar Sesion', 'Se ah solicitado el cierre de session.', 10009, 3),
(663, '2020-11-26 01:17:31', 'Login', 'Inicio de sesion del usaurio.', 4, 2),
(664, '2020-11-26 01:17:34', 'Cerrar Sesion', 'Se ah solicitado el cierre de session.', 4, 2),
(665, '2020-11-26 01:17:39', 'Login', 'Inicio de sesion del usaurio.', 10009, 3),
(666, '2020-11-26 01:17:39', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(667, '2020-11-26 01:17:41', 'ObtenerPedidosMesa', 'Se solicitaron los pedidos de la mesa => undefined', 10009, 3),
(668, '2020-11-26 01:17:57', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(669, '2020-11-26 01:17:59', 'ObtenerPedidosMesa', 'Se solicitaron los pedidos de la mesa => undefined', 10009, 3),
(670, '2020-11-26 01:18:01', 'CerrarMesa', 'Se solicto el cierre de la mesa => 1', 10009, 3),
(671, '2020-11-26 01:18:01', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(672, '2020-11-26 01:18:03', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(673, '2020-11-26 01:19:25', 'Cerrar Sesion', 'Se ah solicitado el cierre de session.', 10009, 3),
(674, '2020-11-26 01:28:24', 'Cerrar Sesion', 'Se ah solicitado el cierre de session.', 10007, 2),
(675, '2020-11-26 02:37:56', 'Login', 'Inicio de sesion del usaurio.', 10008, 1),
(676, '2020-11-26 02:37:56', 'ObtenerEmpleados', 'Se ha solicitado la lista de empleados', 10008, 1),
(677, '2020-11-26 02:37:57', 'ObtenerAuditoria', 'Se ha solicitado la auditoria del sistema.', 10008, 1),
(678, '2020-11-26 02:37:58', 'ObtenerEmpleados', 'Se solicitaron los empleados.', 10008, 1),
(679, '2020-11-26 02:41:14', 'ObtenerEmpleados', 'Se solicitaron los empleados.', 10008, 1),
(680, '2020-11-26 02:41:19', 'ObtenerEmpleados', 'Se solicitaron los empleados.', 10008, 1),
(681, '2020-11-26 02:41:50', 'ObtenerEmpleados', 'Se solicitaron los empleados.', 10008, 1),
(682, '2020-11-26 02:42:09', 'ObtenerEmpleados', 'Se solicitaron los empleados.', 10008, 1),
(683, '2020-11-26 02:42:19', 'ObtenerEmpleados', 'Se solicitaron los empleados.', 10008, 1),
(684, '2020-11-26 02:42:23', 'ObtenerEmpleados', 'Se solicitaron los empleados.', 10008, 1),
(685, '2020-11-26 02:47:13', 'ObtenerEmpleados', 'Se solicitaron los empleados.', 10008, 1),
(686, '2020-11-26 02:47:31', 'ObtenerEmpleados', 'Se solicitaron los empleados.', 10008, 1),
(687, '2020-11-26 03:17:53', 'ObtenerEmpleados', 'Se solicitaron los empleados.', 10008, 1),
(688, '2020-11-26 03:20:00', 'ObtenerEmpleados', 'Se solicitaron los empleados.', 10008, 1),
(689, '2020-11-26 03:20:46', 'ObtenerEmpleados', 'Se solicitaron los empleados.', 10008, 1),
(690, '2020-11-26 03:21:41', 'ObtenerEmpleados', 'Se solicitaron los empleados.', 10008, 1),
(691, '2020-11-26 03:21:48', 'ObtenerEmpleados', 'Se solicitaron los empleados.', 10008, 1),
(692, '2020-11-26 03:24:02', 'ObtenerEmpleados', 'Se solicitaron los empleados.', 10008, 1),
(693, '2020-11-26 03:24:12', 'ObtenerEmpleados', 'Se solicitaron los empleados.', 10008, 1),
(694, '2020-11-26 03:26:04', 'EditarEmpleado', 'Se Edito el empleado10009', 10008, 1),
(695, '2020-11-26 03:26:04', 'ObtenerEmpleados', 'Se solicitaron los empleados.', 10008, 1),
(696, '2020-11-26 03:27:11', 'Cerrar Sesion', 'Se ah solicitado el cierre de session.', 10008, 1),
(697, '2020-11-26 13:40:44', 'Login', 'Inicio de sesion del usaurio.', 10009, 3),
(698, '2020-11-26 13:40:44', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(699, '2020-11-26 13:40:47', 'ObtenerCarrusell', 'Se ah solicitado la carrusell.', 10009, 3),
(700, '2020-11-26 13:40:47', 'ObtenerCarta', 'Se ah solicitado la carta.', 10009, 3),
(701, '2020-11-26 13:40:48', 'ObtenerEmpleados', 'Se ha solicitado la lista de Mozos', 10009, 3),
(702, '2020-11-26 13:40:48', 'ObtenerMesas', 'Se ha solicitado la lista de Mesas', 10009, 3),
(703, '2020-11-26 13:44:02', 'ObtenerEmpleados', 'Se ha solicitado la lista de Mozos', 10009, 3),
(704, '2020-11-26 13:44:02', 'ObtenerMesas', 'Se ha solicitado la lista de Mesas', 10009, 3),
(705, '2020-11-26 13:44:13', 'ObtenerEmpleados', 'Se ha solicitado la lista de Mozos', 10009, 3),
(706, '2020-11-26 13:44:13', 'ObtenerMesas', 'Se ha solicitado la lista de Mesas', 10009, 3),
(707, '2020-11-26 13:45:40', 'ObtenerEmpleados', 'Se ha solicitado la lista de Mozos', 10009, 3),
(708, '2020-11-26 13:45:40', 'ObtenerMesas', 'Se ha solicitado la lista de Mesas', 10009, 3),
(709, '2020-11-26 13:49:02', 'ObtenerEmpleados', 'Se ha solicitado la lista de Mozos', 10009, 3),
(710, '2020-11-26 13:49:02', 'ObtenerMesas', 'Se ha solicitado la lista de Mesas', 10009, 3),
(711, '2020-11-26 13:49:53', 'ObtenerMesas', 'Se ha solicitado la lista de Mesas', 10009, 3),
(712, '2020-11-26 13:49:53', 'ObtenerEmpleados', 'Se ha solicitado la lista de Mozos', 10009, 3),
(713, '2020-11-26 13:53:30', 'ObtenerEmpleados', 'Se ha solicitado la lista de Mozos', 10009, 3),
(714, '2020-11-26 13:53:30', 'ObtenerMesas', 'Se ha solicitado la lista de Mesas', 10009, 3),
(715, '2020-11-26 13:56:44', 'ObtenerEmpleados', 'Se ha solicitado la lista de Mozos', 10009, 3),
(716, '2020-11-26 13:56:44', 'ObtenerMesas', 'Se ha solicitado la lista de Mesas', 10009, 3),
(717, '2020-11-26 13:57:33', 'ObtenerEmpleados', 'Se ha solicitado la lista de Mozos', 10009, 3),
(718, '2020-11-26 13:57:33', 'ObtenerMesas', 'Se ha solicitado la lista de Mesas', 10009, 3),
(719, '2020-11-26 13:59:07', 'ObtenerEmpleados', 'Se ha solicitado la lista de Mozos', 10009, 3),
(720, '2020-11-26 13:59:07', 'ObtenerMesas', 'Se ha solicitado la lista de Mesas', 10009, 3),
(721, '2020-11-26 14:04:50', 'ObtenerEmpleados', 'Se ha solicitado la lista de Mozos', 10009, 3),
(722, '2020-11-26 14:04:50', 'ObtenerMesas', 'Se ha solicitado la lista de Mesas', 10009, 3),
(723, '2020-11-26 14:06:22', 'ObtenerMesas', 'Se ha solicitado la lista de Mesas', 10009, 3),
(724, '2020-11-26 14:06:22', 'ObtenerEmpleados', 'Se ha solicitado la lista de Mozos', 10009, 3),
(725, '2020-11-26 14:08:16', 'ObtenerEmpleados', 'Se ha solicitado la lista de Mozos', 10009, 3),
(726, '2020-11-26 14:08:16', 'ObtenerMesas', 'Se ha solicitado la lista de Mesas', 10009, 3),
(727, '2020-11-26 14:12:05', 'ObtenerEmpleados', 'Se ha solicitado la lista de Mozos', 10009, 3),
(728, '2020-11-26 14:12:05', 'ObtenerMesas', 'Se ha solicitado la lista de Mesas', 10009, 3),
(729, '2020-11-26 14:13:14', 'ObtenerEmpleados', 'Se ha solicitado la lista de Mozos', 10009, 3),
(730, '2020-11-26 14:13:14', 'ObtenerMesas', 'Se ha solicitado la lista de Mesas', 10009, 3),
(731, '2020-11-26 14:13:17', 'ObtenerEmpleados', 'Se ha solicitado la lista de Mozos', 10009, 3),
(732, '2020-11-26 14:13:17', 'ObtenerMesas', 'Se ha solicitado la lista de Mesas', 10009, 3),
(733, '2020-11-26 14:13:46', 'ObtenerEmpleados', 'Se ha solicitado la lista de Mozos', 10009, 3),
(734, '2020-11-26 14:13:46', 'ObtenerMesas', 'Se ha solicitado la lista de Mesas', 10009, 3),
(735, '2020-11-26 14:54:11', 'Login', 'Inicio de sesion del usaurio.', 10009, 3),
(736, '2020-11-26 14:54:11', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(737, '2020-11-26 14:54:12', 'ObtenerEmpleados', 'Se ha solicitado la lista de Mozos', 10009, 3),
(738, '2020-11-26 14:54:13', 'ObtenerMesas', 'Se ha solicitado la lista de Mesas', 10009, 3),
(739, '2020-11-26 14:55:25', 'ObtenerEmpleados', 'Se ha solicitado la lista de Mozos', 10009, 3),
(740, '2020-11-26 14:55:26', 'ObtenerMesas', 'Se ha solicitado la lista de Mesas', 10009, 3),
(741, '2020-11-26 14:55:34', 'ObtenerEmpleados', 'Se ha solicitado la lista de Mozos', 10009, 3),
(742, '2020-11-26 14:55:34', 'ObtenerMesas', 'Se ha solicitado la lista de Mesas', 10009, 3),
(743, '2020-11-26 15:09:52', 'ObtenerEmpleados', 'Se ha solicitado la lista de Mozos', 10009, 3),
(744, '2020-11-26 15:09:54', 'ObtenerMesas', 'Se ha solicitado la lista de Mesas', 10009, 3),
(745, '2020-11-26 15:10:35', 'ObtenerEmpleados', 'Se ha solicitado la lista de Mozos', 10009, 3),
(746, '2020-11-26 15:10:35', 'ObtenerMesas', 'Se ha solicitado la lista de Mesas', 10009, 3),
(747, '2020-11-26 15:11:02', 'ObtenerEmpleados', 'Se ha solicitado la lista de Mozos', 10009, 3),
(748, '2020-11-26 15:11:02', 'ObtenerMesas', 'Se ha solicitado la lista de Mesas', 10009, 3),
(749, '2020-11-26 15:54:44', 'ObtenerEmpleados', 'Se ha solicitado la lista de Mozos', 10009, 3),
(750, '2020-11-26 15:54:45', 'ObtenerMesas', 'Se ha solicitado la lista de Mesas', 10009, 3),
(751, '2020-11-26 17:04:40', 'ObtenerEmpleados', 'Se ha solicitado la lista de Mozos', 10009, 3),
(752, '2020-11-26 17:04:40', 'ObtenerMesas', 'Se ha solicitado la lista de Mesas', 10009, 3),
(753, '2020-11-26 17:07:09', 'ObtenerEmpleados', 'Se ha solicitado la lista de Mozos', 10009, 3),
(754, '2020-11-26 17:07:09', 'ObtenerMesas', 'Se ha solicitado la lista de Mesas', 10009, 3),
(755, '2020-11-26 17:08:12', 'ObtenerEmpleados', 'Se ha solicitado la lista de Mozos', 10009, 3),
(756, '2020-11-26 17:08:12', 'ObtenerMesas', 'Se ha solicitado la lista de Mesas', 10009, 3),
(757, '2020-11-26 17:08:45', 'ObtenerEmpleados', 'Se ha solicitado la lista de Mozos', 10009, 3),
(758, '2020-11-26 17:08:45', 'ObtenerMesas', 'Se ha solicitado la lista de Mesas', 10009, 3),
(759, '2020-11-26 17:08:59', 'ObtenerEmpleados', 'Se ha solicitado la lista de Mozos', 10009, 3),
(760, '2020-11-26 17:08:59', 'ObtenerMesas', 'Se ha solicitado la lista de Mesas', 10009, 3),
(761, '2020-11-26 17:09:09', 'ObtenerMesas', 'Se ha solicitado la lista de Mesas', 10009, 3),
(762, '2020-11-26 17:09:09', 'ObtenerEmpleados', 'Se ha solicitado la lista de Mozos', 10009, 3),
(763, '2020-11-26 17:09:39', 'ObtenerEmpleados', 'Se ha solicitado la lista de Mozos', 10009, 3),
(764, '2020-11-26 17:09:39', 'ObtenerMesas', 'Se ha solicitado la lista de Mesas', 10009, 3),
(765, '2020-11-26 17:10:59', 'ObtenerEmpleados', 'Se ha solicitado la lista de Mozos', 10009, 3),
(766, '2020-11-26 17:10:59', 'ObtenerMesas', 'Se ha solicitado la lista de Mesas', 10009, 3),
(767, '2020-11-26 17:11:25', 'ObtenerCarta', 'Se ah solicitado la carta.', 10009, 3),
(768, '2020-11-26 17:11:25', 'ObtenerCarrusell', 'Se ah solicitado la carrusell.', 10009, 3),
(769, '2020-11-26 17:11:29', 'ObtenerEmpleados', 'Se ha solicitado la lista de Mozos', 10009, 3),
(770, '2020-11-26 17:11:29', 'ObtenerMesas', 'Se ha solicitado la lista de Mesas', 10009, 3),
(771, '2020-11-26 17:11:33', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(772, '2020-11-26 17:11:37', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(773, '2020-11-26 17:11:44', 'ObtenerEmpleados', 'Se ha solicitado la lista de Mozos', 10009, 3),
(774, '2020-11-26 17:11:44', 'ObtenerMesas', 'Se ha solicitado la lista de Mesas', 10009, 3),
(775, '2020-11-26 17:12:27', 'ObtenerEmpleados', 'Se ha solicitado la lista de Mozos', 10009, 3),
(776, '2020-11-26 17:12:27', 'ObtenerMesas', 'Se ha solicitado la lista de Mesas', 10009, 3),
(777, '2020-11-26 17:15:26', 'ObtenerEmpleados', 'Se ha solicitado la lista de Mozos', 10009, 3),
(778, '2020-11-26 17:15:28', 'ObtenerMesas', 'Se ha solicitado la lista de Mesas', 10009, 3),
(779, '2020-11-26 17:15:47', 'ObtenerEmpleados', 'Se ha solicitado la lista de Mozos', 10009, 3),
(780, '2020-11-26 17:15:47', 'ObtenerMesas', 'Se ha solicitado la lista de Mesas', 10009, 3),
(781, '2020-11-26 17:18:14', 'ObtenerEmpleados', 'Se ha solicitado la lista de Mozos', 10009, 3),
(782, '2020-11-26 17:18:14', 'ObtenerMesas', 'Se ha solicitado la lista de Mesas', 10009, 3),
(783, '2020-11-26 17:18:35', 'ObtenerEmpleados', 'Se ha solicitado la lista de Mozos', 10009, 3),
(784, '2020-11-26 17:18:35', 'ObtenerMesas', 'Se ha solicitado la lista de Mesas', 10009, 3),
(785, '2020-11-26 17:18:49', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(786, '2020-11-26 17:18:51', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(787, '2020-11-26 17:19:09', 'ObtenerCarta', 'Se ah solicitado la carta.', 10009, 3),
(788, '2020-11-26 17:19:09', 'ObtenerCarrusell', 'Se ah solicitado la carrusell.', 10009, 3),
(789, '2020-11-26 17:19:37', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(790, '2020-11-27 13:14:06', 'Login', 'Inicio de sesion del usaurio.', 10009, 3),
(791, '2020-11-27 13:14:07', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(792, '2020-11-27 13:22:14', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(793, '2020-11-27 17:31:28', 'Cerrar Sesion', 'Se ah solicitado el cierre de session.', 10009, 3),
(794, '2020-11-27 20:32:43', 'Login', 'Inicio de sesion del usaurio.', 4, 2),
(795, '2020-11-27 21:11:55', 'Login', 'Inicio de sesion del usaurio.', 10007, 2),
(796, '2020-11-27 22:04:56', 'Cerrar Sesion', 'Se ah solicitado el cierre de session.', 10007, 2),
(797, '2020-11-27 22:05:16', 'Login', 'Inicio de sesion del usaurio.', 10009, 3),
(798, '2020-11-27 22:05:16', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(799, '2020-11-27 22:05:18', 'ObtenerPedidosMesa', 'Se solicitaron los pedidos de la mesa => undefined', 10009, 3),
(800, '2020-11-27 22:05:39', 'ObtenerPedidosMesa', 'Se solicitaron los pedidos de la mesa => undefined', 10009, 3),
(801, '2020-11-27 22:05:45', 'CerrarMesa', 'Se solicto el cierre de la mesa => 1', 10009, 3),
(802, '2020-11-27 22:05:45', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(803, '2020-11-27 22:05:53', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(804, '2020-11-27 22:05:58', 'ObtenerCarta', 'Se ah solicitado la carta.', 10009, 3),
(805, '2020-11-27 22:05:58', 'ObtenerCarrusell', 'Se ah solicitado la carrusell.', 10009, 3),
(806, '2020-11-27 22:07:09', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(807, '2020-11-27 22:07:13', 'ObtenerCarta', 'Se ah solicitado la carta.', 10009, 3),
(808, '2020-11-27 22:07:13', 'ObtenerCarrusell', 'Se ah solicitado la carrusell.', 10009, 3),
(809, '2020-11-27 22:07:42', 'AltaItemCarta', 'Se ah agregado un registro en la carta.', 10009, 3),
(810, '2020-11-27 22:07:43', 'ObtenerCarrusell', 'Se ah solicitado la carrusell.', 10009, 3),
(811, '2020-11-27 22:07:43', 'ObtenerCarta', 'Se ah solicitado la carta.', 10009, 3),
(812, '2020-11-27 22:08:20', 'ActualizarItemCarta', 'Se ah actualizado un registro en la carta.', 10009, 3),
(813, '2020-11-27 22:08:20', 'ObtenerCarta', 'Se ah solicitado la carta.', 10009, 3),
(814, '2020-11-27 22:08:20', 'ObtenerCarrusell', 'Se ah solicitado la carrusell.', 10009, 3),
(815, '2020-11-27 22:08:39', 'EliminarItemCarta', 'Se ah Eliminado un registro de la carta.', 10009, 3),
(816, '2020-11-27 22:08:39', 'ObtenerCarta', 'Se ah solicitado la carta.', 10009, 3),
(817, '2020-11-27 22:08:39', 'ObtenerCarrusell', 'Se ah solicitado la carrusell.', 10009, 3),
(818, '2020-11-27 22:09:23', 'AñadirItemCarrusellPrincipal', 'Se ah agregado un registro en El Carrusel', 10009, 3),
(819, '2020-11-27 22:09:23', 'ObtenerCarrusell', 'Se ah solicitado la carrusell.', 10009, 3),
(820, '2020-11-27 22:09:23', 'ObtenerCarta', 'Se ah solicitado la carta.', 10009, 3),
(821, '2020-11-27 22:09:36', 'EliminarItemCarrusel', 'Se ah Eliminado un registro del carrusel.', 10009, 3),
(822, '2020-11-27 22:09:37', 'ObtenerCarta', 'Se ah solicitado la carta.', 10009, 3),
(823, '2020-11-27 22:09:37', 'ObtenerCarrusell', 'Se ah solicitado la carrusell.', 10009, 3),
(824, '2020-11-27 22:10:06', 'ObtenerEmpleados', 'Se ha solicitado la lista de Mozos', 10009, 3),
(825, '2020-11-27 22:10:06', 'ObtenerMesas', 'Se ha solicitado la lista de Mesas', 10009, 3),
(826, '2020-11-27 22:10:14', 'ReasignarMesa', 'Se ah reasignado la mesa 1 al empleado 4', 10009, 3),
(827, '2020-11-27 22:10:14', 'ObtenerEmpleados', 'Se ha solicitado la lista de Mozos', 10009, 3),
(828, '2020-11-27 22:10:29', 'ReasignarMesa', 'Se ah reasignado la mesa 3 al empleado 9', 10009, 3),
(829, '2020-11-27 22:10:29', 'ObtenerEmpleados', 'Se ha solicitado la lista de Mozos', 10009, 3),
(830, '2020-11-27 22:10:29', 'ObtenerMesas', 'Se ha solicitado la lista de Mesas', 10009, 3),
(831, '2020-11-27 22:10:34', 'ReasignarMesa', 'Se ah reasignado la mesa 1 al empleado 1', 10009, 3),
(832, '2020-11-27 22:10:34', 'ObtenerEmpleados', 'Se ha solicitado la lista de Mozos', 10009, 3),
(833, '2020-11-27 22:10:34', 'ObtenerMesas', 'Se ha solicitado la lista de Mesas', 10009, 3),
(834, '2020-11-27 22:10:43', 'ReasignarMesa', 'Se ah reasignado la mesa 5 al empleado 10007', 10009, 3),
(835, '2020-11-27 22:10:43', 'ObtenerEmpleados', 'Se ha solicitado la lista de Mozos', 10009, 3),
(836, '2020-11-27 22:10:43', 'ObtenerMesas', 'Se ha solicitado la lista de Mesas', 10009, 3),
(837, '2020-11-27 22:11:11', 'ActualizarEstadoMesa', 'Se ah modificado  la mesa 1 al estado  0', 10009, 3),
(838, '2020-11-27 22:11:11', 'ObtenerEmpleados', 'Se ha solicitado la lista de Mozos', 10009, 3),
(839, '2020-11-27 22:11:30', 'ObtenerEmpleados', 'Se ha solicitado la lista de Mozos', 10009, 3),
(840, '2020-11-27 22:11:30', 'ObtenerMesas', 'Se ha solicitado la lista de Mesas', 10009, 3),
(841, '2020-11-27 22:11:34', 'ActualizarEstadoMesa', 'Se ah modificado  la mesa 1 al estado  1', 10009, 3),
(842, '2020-11-27 22:11:34', 'ObtenerEmpleados', 'Se ha solicitado la lista de Mozos', 10009, 3),
(843, '2020-11-27 22:11:34', 'ObtenerMesas', 'Se ha solicitado la lista de Mesas', 10009, 3),
(844, '2020-11-27 22:11:44', 'ActualizarEstadoMesa', 'Se ah modificado  la mesa 2 al estado  0', 10009, 3),
(845, '2020-11-27 22:11:44', 'ObtenerEmpleados', 'Se ha solicitado la lista de Mozos', 10009, 3),
(846, '2020-11-27 22:11:44', 'ObtenerMesas', 'Se ha solicitado la lista de Mesas', 10009, 3),
(847, '2020-11-27 22:11:56', 'ActualizarEstadoMesa', 'Se ah modificado  la mesa 2 al estado  1', 10009, 3),
(848, '2020-11-27 22:11:56', 'ObtenerEmpleados', 'Se ha solicitado la lista de Mozos', 10009, 3),
(849, '2020-11-27 22:11:57', 'ObtenerMesas', 'Se ha solicitado la lista de Mesas', 10009, 3),
(850, '2020-11-27 22:12:47', 'Cerrar Sesion', 'Se ah solicitado el cierre de session.', 10009, 3),
(851, '2020-11-27 22:13:05', 'Login', 'Inicio de sesion del usaurio.', 10008, 1),
(852, '2020-11-27 22:13:05', 'ObtenerEmpleados', 'Se ha solicitado la lista de empleados', 10008, 1),
(853, '2020-11-27 22:13:47', 'ObtenerAuditoria', 'Se ha solicitado la auditoria del sistema.', 10008, 1),
(854, '2020-11-27 22:14:21', 'ObtenerEmpleados', 'Se solicitaron los empleados.', 10008, 1),
(855, '2020-11-27 22:14:54', 'Alta Empleado', 'Se ah dado de alta al empleado.', 10008, 1),
(856, '2020-11-27 22:14:54', 'ObtenerEmpleados', 'Se solicitaron los empleados.', 10008, 1),
(857, '2020-11-27 22:15:38', 'EditarEmpleado', 'Se Edito el empleado10011', 10008, 1),
(858, '2020-11-27 22:15:38', 'ObtenerEmpleados', 'Se solicitaron los empleados.', 10008, 1),
(859, '2020-11-27 22:16:09', 'EditarEmpleado', 'Se Edito el empleado4', 10008, 1),
(860, '2020-11-27 22:16:10', 'ObtenerEmpleados', 'Se solicitaron los empleados.', 10008, 1),
(861, '2020-11-27 22:16:27', 'BajaLogicaEmplado', 'Se ha dado de baja el empleado10011', 10008, 1),
(862, '2020-11-27 22:16:27', 'ObtenerEmpleados', 'Se solicitaron los empleados.', 10008, 1),
(863, '2020-11-27 22:17:28', 'Cerrar Sesion', 'Se ah solicitado el cierre de session.', 10008, 1),
(864, '2020-11-27 22:17:40', 'Login', 'Inicio de sesion del usaurio.', 10008, 1),
(865, '2020-11-27 22:17:41', 'ObtenerEmpleados', 'Se ha solicitado la lista de empleados', 10008, 1),
(866, '2020-11-27 22:17:44', 'ObtenerEmpleados', 'Se solicitaron los empleados.', 10008, 1),
(867, '2020-11-27 22:19:17', 'Login', 'Inicio de sesion del usaurio.', 10007, 2),
(868, '2020-11-27 22:19:22', 'Cerrar Sesion', 'Se ah solicitado el cierre de session.', 10007, 2),
(869, '2020-11-27 22:19:30', 'Login', 'Inicio de sesion del usaurio.', 10009, 3),
(870, '2020-11-27 22:19:30', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(871, '2020-11-27 22:19:33', 'ObtenerPedidosMesa', 'Se solicitaron los pedidos de la mesa => undefined', 10009, 3),
(872, '2020-11-27 22:24:51', 'Login', 'Inicio de sesion del usaurio.', 10009, 3),
(873, '2020-11-27 22:24:51', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(874, '2020-11-27 22:31:47', 'ObtenerPedidosMesa', 'Se solicitaron los pedidos de la mesa => undefined', 10009, 3),
(875, '2020-11-27 22:31:49', 'CerrarMesa', 'Se solicto el cierre de la mesa => 2', 10009, 3),
(876, '2020-11-27 22:31:49', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(877, '2020-11-27 22:31:51', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(878, '2020-11-27 23:32:46', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(879, '2020-11-27 23:32:50', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(880, '2020-11-27 23:32:51', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(881, '2020-11-27 23:32:51', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(882, '2020-11-27 23:32:51', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(883, '2020-11-27 23:32:51', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(884, '2020-11-27 23:32:51', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(885, '2020-11-27 23:32:51', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(886, '2020-11-27 23:32:52', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(887, '2020-11-27 23:32:52', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(888, '2020-11-27 23:32:52', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(889, '2020-11-27 23:34:31', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(890, '2020-11-27 23:34:31', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(891, '2020-11-27 23:34:31', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(892, '2020-11-27 23:34:32', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(893, '2020-11-27 23:34:32', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(894, '2020-11-27 23:34:32', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3),
(895, '2020-11-27 23:34:32', 'ObtenerMesas', 'Se solicito la lista de mesas.', 10009, 3);

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
(11, 'SUPREMA', 'https://cocina-casera.com/wp-content/uploads/2016/11/hamburguesa-queso-receta.jpg', 2, 459.62, 0),
(12, 'SUSHI', 'https://cocina-casera.com/wp-content/uploads/2016/11/hamburguesa-queso-receta.jpg', 1, 758.64, 1),
(13, 'ARROz con papa', 'https://cocina-casera.com/wp-content/uploads/2016/11/hamburguesa-queso-receta.jpg', 4, 12, 0),
(14, 'PIZZA', 'https://cocina-casera.com/wp-content/uploads/2016/11/hamburguesa-queso-receta.jpg', 1, 197.39, 0),
(15, 'tira de asado', 'asdsad', 1, 12.32, 1),
(16, 'tira de asado', 'https://cocina-casera.com/wp-content/uploads/2016/11/hamburguesa-queso-receta.jpg', 1, 12.32, 0),
(17, 'sdfsdf', 'sdfsdf', 4, 213, 1),
(18, 'sdfsdf', 'sdfsdf', 4, 213, 1),
(19, 'sdfsdf', 'https://cocina-casera.com/wp-content/uploads/2016/11/hamburguesa-queso-receta.jpg', 4, 213, 1),
(20, 'sadsad', 'asdsad', 3, 213, 1),
(21, 'MILANESA', 'https://cocina-casera.com/wp-content/uploads/2016/11/hamburguesa-queso-receta.jpg', 4, 85.3, 0),
(22, 'sadsadasdjjjjjjjjjjjjj', 'sadsadsa', 3, 123, 1),
(23, 'Ã±oquis fritos', 'asdasd', 2, 500, 1),
(24, 'juegoasdasdsad', 'asd', 1, 500, 1),
(25, 'HAMBURG', 'https://cocina-casera.com/wp-content/uploads/2016/11/hamburguesa-queso-receta.jpg', 2, 50, 1),
(26, 'papas', 'asd', 2, 65, 1),
(27, 'costillar  XXL', 'https://cocina-casera.com/wp-content/uploads/2016/11/hamburguesa-queso-receta.jpg', 4, 500, 1);

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
-- Estructura de tabla para la tabla `configuracion`
--

CREATE TABLE `configuracion` (
  `tabla` varchar(100) NOT NULL,
  `clave` varchar(100) NOT NULL,
  `valor` varchar(500) NOT NULL,
  `fecha_actualizacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `configuracion`
--

INSERT INTO `configuracion` (`tabla`, `clave`, `valor`, `fecha_actualizacion`) VALUES
('PUBLIC_URL', 'carruselGET', 'Carrusell con methodGet', '2020-11-27 18:47:24'),
('PUBLIC_URL', 'mesa/:GET', 'Obtener mesa', '2020-11-27 18:54:52'),
('PUBLIC_URL', 'carrusel:GET', 'Obtener carrusel', '2020-11-27 19:03:05'),
('PUBLIC_URL', 'carta:GET', 'Obtener carta', '2020-11-27 19:04:06'),
('PUBLIC_URL', 'cartacategorias:GET', 'Obtener carta', '2020-11-27 19:05:26'),
('PUBLIC_URL', 'AltaPedidoMesa:POST', 'Alta de pedido Cliente.', '2020-11-27 19:07:10'),
('PUBLIC_URL', 'altaNotificacion:POST', 'Alta notificacion.', '2020-11-27 19:07:53'),
('PUBLIC_URL', 'altaNotificacion:POST', 'Alta notificacion.', '2020-11-27 19:08:52'),
('PUBLIC_URL', 'login:POST', 'loguin usuario.', '2020-11-27 21:07:08'),
('PUBLIC_URL', 'cerrarSesion:POST', 'Cerrar Session.', '2020-11-27 22:04:53');

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
  `BAJA` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `token` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`EMPLID`, `EMPLNOMB`, `EMPLAPLL`, `EMPLTURN`, `EMPLUSUA`, `EMPLCLAV`, `ROLEID`, `BAJA`, `token`) VALUES
(1, 'Juan Jose', 'Madeo', 'TM', 'jjmadeo1', '$2y$10$goFAXywwVbZGt/QQxRko5.oR.udRlXP/PiwtrDn/mFO5CemoJvc5.', 2, '0000-00-00 00:00:00', NULL),
(4, 'Juan Jose ALFA', 'Madeo', 'TM', 'jjmadeo', '$2y$10$Ez9yTEAMj.QaRrtkqKBWMeinuRQeF.bM8UQcNb.7S11UMgLD1eRSW', 2, '0000-00-00 00:00:00', '136c74263f24e0dbed2b52331e1add6d60db627ed7ee69c69a0967083998c253bc0db46448aa5fa8b9834b57f620f2184d6832efbab47dbad447a298d0c37bfd'),
(7, 'Juan Jose', 'Madeo', 'TM', 'jjmadeo9', '$2y$10$ct6yCxWL.qLmwjR3A6Ekdus84g9z1WwgGAxfAWUzdlxDlM6a5.Vi2', 1, '2020-11-24 18:07:25', NULL),
(9, 'Jose', 'Gomez', 'TT', 'josecg87', '$2y$10$rJWPv2/VCix0yhCeTOwlCut4ZLLCP2N9TNm4YNMABkC6ZpjruzAka', 2, '0000-00-00 00:00:00', NULL),
(11, 'JUANJO gonzalez', 'MADEO', 'TT', 'josecg90', '$2y$10$goFAXywwVbZGt/QQxRko5.oR.udRlXP/PiwtrDn/mFO5CemoJvc5.', 2, '0000-00-00 00:00:00', NULL),
(10007, 'Test Mozo', 'Mozo', 'TT', 'mozo', '$2y$10$OHCT0Nkgrz5o4VHuCKma.ekY1QWNZmTMB0Ne2i3Km7fkDSGLFFo9e', 2, '0000-00-00 00:00:00', '2725410756ca05858db45d164da8222b1403e5ddc16d51d21629b1e2559df039a3278b90e617b5724c83d00cfd6e04cbfcb2288c280dd8ec0449ce4fb73f7487'),
(10008, 'Prueba ADM', 'ADM', 'TT', 'adm', '$2y$10$j/A7h49/gcDFG7snH2233O3nIx7O93a//3F8u1ocq9YmJITjE78Ga', 1, '0000-00-00 00:00:00', 'db2fc8909dc1af077e2a34de2876407931b972a4dd1c2316a29ae54038a9f83ed6ae9e59afe99ead28d0889aa5ed7a4b60de1c7c190a93cabb8b358916cbf309'),
(10009, 'Cajeross', 'Cajero Prueba', 'TT', 'cajero', '$2y$10$kePsUtrUItkEIP/vbODSBemcRcKVkGr5tM6Hrd/e6c34I7QaI5Gkm', 3, '0000-00-00 00:00:00', 'd46973b5e674a07b64de0e975cd60365712f789d4b84ede89b91dfebf21ed3fa6f1314745fd6da09e575fc19d675c27d50fbb0b8b950d86eae07213630556864'),
(10010, 'nicolas', 'garrido', 'TT', 'ggarrido', '$2y$10$njDOdbjtOPebSQGe4UCyU.x3E6vBViofD1/qa0MO3ioTkfEYg5PAe', 1, '2020-11-24 22:50:57', NULL),
(10011, 'Florencia sadasd', 'Rosasco', 'TT', 'frosasco', '$2y$10$ev.bO5Kg9WSJVJ8KIUilRul.McS2PCOmoI8tEQvfegmgdfieXg1ca', 1, '2020-11-27 22:16:27', NULL);

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
  `HABILITADA` tinyint(4) NOT NULL,
  `QR` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `mesa`
--

INSERT INTO `mesa` (`MESAID`, `OCUPADA`, `HABILITADA`, `QR`) VALUES
(1, 0, 1, 'iVBORw0KGgoAAAANSUhEUgAAAG8AAABvAQMAAADYCwwjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAABHUlEQVQ4jdXUsa2EMAwG4B+lSAcLRGKNdFkJFgiwAKyULmtEygJHlyLCz+hOp1fhtGchpK9Asp0/AL9YA9Fq64RMlET2ULsdz6hWNNDlFXVy+ShNPEq+0MotYNJthDpiWv41+UCed7eZn+/4D+TqSK06fZf5wIEyRSylzrGFZrK0u3H/dPXELqrLjlvhESCyRwVqR3RpmQBRyRTUy8rsLTpeO4x/L1ZgvlyaQ/Lvrh55f6g5Wmp3DSz00vBWnUFmr423tIIDk2RCnWWkUOcCmRpDqXxSCzXwPsp8aeKpRd4BKDxCGqJMTuxBaY58FyCSR1id4lAN1ECXeeH+zkAbLV3W9LqJRxm3YOAayP8c1N4Zr2Xe95c36fgt8/fqD0yY0NfD9+mKAAAAAElFTkSuQmCC'),
(2, 0, 1, 'iVBORw0KGgoAAAANSUhEUgAAAG8AAABvAQMAAADYCwwjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAABGUlEQVQ4jdXTsa3EIAwG4D+ioAsLRMoadKyULMAlC5CV6FgDiQWSjgLh57tIp1cF2rPSfEUk/8YGfrEU0abLgkQUmxwhnJ6vIDZ00KQNZTHpyF08cjrRy90Dso8QR4ivf00+kPM6nfj7xn8g10Bik/E7zAcqShTwymUNbY6yLJqcmd3dZINi0/OeOQI6yK9ZBqIq2xy8uHIiL07dQ1hgwWQ/XT0ThvPG1Ud7T+eRI3gsvFrCmQ4asQdYLS7fpvJYPW3ghYlN8r8nZvJlzWhTx8EXRdOLeiiqTlVSNbHJd2OZI0QV2nxvrIxr4FtAk3wLOwleKkUdNIkHbkGU+wiqehplJ+fdTzAd5Pv1ZTSTlW3e91sNObT5e/UHPLfRDbdTCAsAAAAASUVORK5CYII='),
(3, 0, 1, 'iVBORw0KGgoAAAANSUhEUgAAAG8AAABvAQMAAADYCwwjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAABJklEQVQ4jdXUMa6EIBAG4CEUdHgBEq9Bx5V2L+DCBfRKdFyDhAusHYVx3u9usu81z7FdQ6KfiTr8MhB94zEwp8wzaeYq0pKOoT29jnSBoS2d56CXfomJR+Z2kdHr3ehLJJ2ym/4UeULMd/YN4zP9Ex53Oqdef8P8n7jeg059jF6mYndDMnlccxVJ1JbsHn2jIFNlmgzOnAqJHEpDLCpvN1NFKmRitjs7lWWS59mgsHEPMi3hB/FS9MokUpUxBh09vlVFkt8mxM5tJ5nWj0+P+vVaZGKaqhy1USCR1mDFIh/eSeYr+e1RqjVV5LFi0WgFQyZ6AS25cLXvqs4ZGpo3EvP7WYmInYu7F7rC2btHbp9t5IyoqtCQnSokEvM99oSAl1SR33f8AJCa5DPvR+RRAAAAAElFTkSuQmCC'),
(4, 0, 1, 'iVBORw0KGgoAAAANSUhEUgAAAG8AAABvAQMAAADYCwwjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAABHUlEQVQ4jdXUsY3DMAwF0G+oUGctICBrqNNK9gKKs4CykjqtIUALJJ0KwTzadwiuMtWGcPMMGOAnSAPfWIZoc31BJSoiZ6jobu+sNgzQ1w198fXZhvhs9YVRPhKCHiPUM5f7vyYvyHmjq/x84l+QayK16fIZ5gUNVcq4t75mmeCZO4r+Fs+urmnyMfZH4wgQCV1m9Ilo1zJNU9QqJfVyMqdsTcICG86urmlIvamsqYS/4Vxxdlg0p1DRy4SnqBGceieZ/G1wtIEXpsgE571R6muDTG2n1g3ZOw0QNaLumnZfRJ5vuLFissxjY31ZM98CRHKEB28LiqEB8kkSAojaGBPtzs56iMfGJgs/wOOf02dvg5b5e7877wBkfl/9AAqu0DtSdK6rAAAAAElFTkSuQmCC'),
(5, 0, 1, 'iVBORw0KGgoAAAANSUhEUgAAAG8AAABvAQMAAADYCwwjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAABI0lEQVQ4jdXUsa2DMBAG4ENXuHMWQGINOq8UFnjgBeyV3HkNS14gdC4Q/zsSKXnN42hjIcFnyfh+64DoG8cN8AmBGCgqLfHi6mPkhS7Q1dgQHMd2iR4DUC9ykV0MXyKxT/3PnyJPKHnDWOV6xz/hMdPgW/kc5v+U592xb8MyXmDq73IyaVhTUdmlKhHmtpHTKWvJyB0+k8oONVDp0nY3RWfbprxN6Luk8yZJpQHSsDuddixzQ8y8glTeco3gZZS9ikopfsrsUXfSac2AJPXzmnV2khTSXT05UmkdP2QLg510Pme2ORdrisqjY02NkjrrlG8hJkQU+6rqnO55kgS81mr0YOR+ynSFgfo51fdv5IzEwR1922VSKXmPf4KTlxSV3zd+AQXS84EN3YheAAAAAElFTkSuQmCC'),
(6, 0, 1, 'iVBORw0KGgoAAAANSUhEUgAAAG8AAABvAQMAAADYCwwjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAABJElEQVQ4jdXUMa7DIAwAUEce2MgFkLgGG1dKL9CEC4QrsXENJC7QbAwo/q4q9XdpzFoUKXlIJtjBAfjFMROFRDsgURGpATdfHw43GKCvsdHuMbYhBrIH1UFuDh8KhwgYkrl/bPKCnO/uKl/v9C/4nGkUWvkv5nfy8+kxNLs5mdr1hSuT7JGKTKiUzNo6eJlzNoviO4UMIsFbLsuU+qKKSA1dq34jMyWZE9mQK6dw+gE2/kAUMx4EIgE4CjfH7yoyVblz2ameIFM7ezrePx5ZJpdlzpy1AQ8iOXZzBRSdIPM54/uai1ZFJJ/YyF3DxcwyuRd24JmiX7u6JvcvcdcQvWIlhoyUzS3DCGMza6ofv5HvBIwEczJTBpHPfPn4eV6kiPy98QfXHuVl9vHaIQAAAABJRU5ErkJggg=='),
(7, 0, 1, 'iVBORw0KGgoAAAANSUhEUgAAAG8AAABvAQMAAADYCwwjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAABI0lEQVQ4jdXUu42EMBAG4EETODMNWKINZ27ptoEDNwAtOXMbltwAZA4Q/w270t4lx5CuZQSfJTzjJ9Enlh6ICTMxUFRa4inU1fNENxjq0jAHXtotRgxAvcnJ82r4Foljct9/krygjHf2Vep7+Bc8WxpiK7+T+T/l+wgc2zB5nVYemZk0bKmoJMknubHtFHT2abdG3oiZVFozHFS6tH+ZorIDkdkfcF26wVzP1UzDEXRaL1GwZN5AKvtc18CTl1hFJQWJxRH1IJ2W6tYkf96yzq6VMUujk05UWv9cSoODdD5nfh9zsaaoPHesHLQsVaechZmwoNhXVtcMdTZyaoDXvxojGNk9Mt3h7N2Y6vsauSLxAtm3rsukUsZ73glBOikqP6/8AMBH66R8xlxrAAAAAElFTkSuQmCC'),
(8, 0, 1, 'iVBORw0KGgoAAAANSUhEUgAAAG8AAABvAQMAAADYCwwjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAABIklEQVQ4jdXUwY2FIBAG4DFz4IYNmNgGN1paK3jQALbEjTZIaGC9cTD+O+5L3tvLOl4fIdHPBJgZAaJPbCMQMxIxUFVa4uDbt+NAN+jb2pE8r/0WI+YN7SaD42T4FoljnuyfIC8o+SbXpL/Sv+D5pSP2+i7m/5T3w3Psc3A6yVWSyuR5y1XliDOFR9/J6xzKTkaeiIVUjuUsy5D3L1NVDjLE7AumIeu0bj5MkxQOr3NAXTLWwhtIpUQlmyo4WauqHPq0FI5oB+m0htElft6KThkrKVuayJNKa+YkSxgcpPP3n+6PUq2pKs8dK5Us0nXKWUgOK6p9RnVN3+SIBQKeYzUGzyhST7rDRNMjt9c1ckXiFTTms54qJd/zTvAySVX5ee0HU8jcwglvqyUAAAAASUVORK5CYII='),
(9, 0, 1, 'iVBORw0KGgoAAAANSUhEUgAAAG8AAABvAQMAAADYCwwjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAABI0lEQVQ4jdXUMW6EMBAF0EFTuPNewBLXcOcrLRfI2heAK7nzNSz5AktHgfgZkiibJozbtSzBo4D59hiidxw3IGXMxEBVaYljaE/PkToY2rJhDrxsXUwYgdbJ6Hk23EXilJ39U+QFJe/sm8zf+Bc8n2xIW30t5v+U+yNw2sbodRK5u6xMHtdcVQ7ljPDYdgodzO7DyBWpkE7wQXXI+91Uldbv1uwT3JA7SE1aRSIcoYNBNghL4RWkUoqPgaOXb1WVUryVZUc7SKcNeHqpn9eic8g0FQniKJBKa0ZInxgcpPPslrI/SrWmqpSOXUr7mjrlLMyykqj2u6prygZBTg3wE19hNIzipkI9XKRjc3v9Ri5IvIBu2Q2FVJ55pf2CvKSqfL/xCeaH4S3u81JrAAAAAElFTkSuQmCC'),
(10, 0, 1, 'iVBORw0KGgoAAAANSUhEUgAAAG8AAABvAQMAAADYCwwjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAABIklEQVQ4jdXTMa6DMAwAUFcZvJELVMo1snEluAClFwhXyuZrWMoFYMuA8DctaqePWRsx8CxFseMY4BeXF5kkCDkRNtmAS6hBN8IFtuWZw1TdVC9xRG5iuciERbK7RNAfreKb5Am13hSLfp/yT7hH8r1r+XuZ/9PXMNHatWFDNtlETYwHdOMV4l5CarmvNiHy0JaFyvxO65Ra71LDjHDLbPJG8KhhjNChTcD9qQx49OicnlZf7wPs222Kdn/ttUGRTULUjdxFmcimz2EDmTEcT+WUgKueJQR9BZOe3AxhyaIRk++zErDPbFJ79CQYoCSwuc+vlhzZv7IyqPNLa0+yfYb9lGPk5kjf5pQloSzENnV+qWwIHYDJfX71Juv9Udnk760/1dzjzUzUb0cAAAAASUVORK5CYII='),
(11, 0, 1, 'iVBORw0KGgoAAAANSUhEUgAAAG8AAABvAQMAAADYCwwjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAABGklEQVQ4jdXTsa3EIAwG4P9EQQcLIGUNOlZ6WYBcFkhWomMNJBZIOooofr6LdLoqpj1kKfkq2xgDv3gs0ZzUhkpURBqoNZcpqyc6GOpMQKhr6+KaEdHLpz/+dB+hFj/QV5E35H4XXzk+7d/wfQ7oz/8dLVVqHMeYZRqNKXEjw3IVeUubK+XyaNwCRBq4kdRMdOoOBh4o56qbl2kTxkYbXLyquqXxPKNhTyVeVd1Tl0c6jFdLkPlI9UQ9vdqTTJvd1Phb51REcoqZypSOsUFm4BeoVnITdRC0E6KmMxSR71x0+mKzTH6xaxr2zLsAkbwLvDgGxVIHX5vLl0nUurh4RO+M7uJKPFOH0EHe38Dhopb52t+AGGiBzN87/6Vu2Op1tIP/AAAAAElFTkSuQmCC');

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
(65, 43, 1, 3),
(66, 44, 2, 3),
(67, 45, 1, 3),
(68, 44, 1, 1),
(69, 44, 1, 2),
(70, 46, 1, 3),
(71, 47, 1, 3),
(72, 48, 1, 3),
(73, 49, 1, 3),
(74, 50, 1, 3),
(75, 51, 1, 4),
(76, 52, 1, 3),
(77, 52, 1, 4),
(78, 53, 2, 3),
(79, 53, 1, 4),
(80, 54, 2, 3),
(81, 54, 2, 1),
(82, 54, 2, 2),
(83, 54, 2, 4),
(84, 54, 2, 4),
(85, 55, 1, 3),
(86, 55, 1, 1),
(87, 55, 1, 2);

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
(43, '2020-11-24 18:26:20', 6, 931.24, 1),
(44, '2020-11-24 22:40:36', 2, 693.01, 1),
(45, '2020-11-24 22:41:53', 7, 766.63, 1),
(46, '2020-11-25 22:27:59', 2, 1414.86, 1),
(47, '2020-11-25 22:33:17', 2, 364.406, 1),
(48, '2020-11-25 22:36:28', 3, 1827.74, 1),
(49, '2020-11-25 22:42:25', 3, 1402.86, 1),
(50, '2020-11-25 23:11:25', 3, 2269.26, 1),
(51, '2020-11-26 00:33:00', 2, 915.04, 1),
(52, '2020-11-26 01:11:12', 2, 1874.48, 1),
(53, '2020-11-26 01:18:01', 2, 1338.02, 1),
(54, '2020-11-27 22:05:45', 2, 12.32, 1),
(55, '2020-11-27 22:31:49', 3, 419.42, 1);

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
(109, '', 1, 43, 13),
(110, '', 1, 44, 11),
(111, '', 3, 44, 13),
(112, '', 1, 44, 14),
(113, '', 1, 45, 11),
(114, '', 1, 45, 13),
(115, '', 1, 45, 14),
(116, '', 1, 45, 16),
(117, '', 1, 45, 21),
(118, '', 3, 46, 11),
(119, '', 3, 46, 13),
(120, '', 1, 47, 11),
(121, '', 2, 47, 13),
(122, '', 3, 47, 16),
(123, '', 3, 48, 11),
(124, '', 3, 48, 13),
(125, '', 2, 48, 14),
(126, '', 3, 49, 11),
(127, '', 2, 49, 13),
(128, '', 4, 50, 11),
(129, '', 3, 50, 13),
(130, '', 2, 50, 14),
(131, '', 1, 51, 11),
(132, '', 3, 51, 13),
(133, '', 2, 51, 14),
(134, '', 2, 51, 16),
(135, '', 4, 52, 11),
(136, '', 3, 52, 13),
(137, '', 2, 53, 11),
(138, '', 2, 53, 13),
(139, '', 2, 53, 14),
(140, '', 1, 54, 16),
(141, '', 2, 55, 14),
(142, '', 2, 55, 16);

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
(2, 1, 1, '2020-11-27 22:10:34'),
(3, 11, 2, '2020-11-14 02:11:48'),
(4, 9, 3, '2020-11-27 22:10:29'),
(5, 4, 4, '2020-11-24 18:09:33'),
(6, 10007, 5, '2020-11-27 22:10:43'),
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
(3, 'APERTURA DE MESA'),
(4, 'SOLICITUD COBRO ');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=896;

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
  MODIFY `PRODID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `CATEGORIAID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `EMPLID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10012;

--
-- AUTO_INCREMENT de la tabla `estado`
--
ALTER TABLE `estado`
  MODIFY `ESTADOID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `mesa`
--
ALTER TABLE `mesa`
  MODIFY `MESAID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `notificacion`
--
ALTER TABLE `notificacion`
  MODIFY `NOTIFICACIONID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `PEDIDOID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de la tabla `permiso`
--
ALTER TABLE `permiso`
  MODIFY `PERMISOID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `relacartapedido`
--
ALTER TABLE `relacartapedido`
  MODIFY `RELA_C_P_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

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
  MODIFY `TIPO_NOTI_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
