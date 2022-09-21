-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-09-2022 a las 00:25:28
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sallex`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuracion`
--

CREATE TABLE `configuracion` (
  `configuracion_de_la_cuenta` varchar(50) DEFAULT NULL,
  `tamaño_de_letra` varchar(50) DEFAULT NULL,
  `cambiar_de_idioma` varchar(50) DEFAULT NULL,
  `cambiar_de_cueta` varchar(50) DEFAULT NULL,
  `cerrar_sesion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `iniciar_sesion`
--

CREATE TABLE `iniciar_sesion` (
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) NOT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `telefono` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inicio`
--

CREATE TABLE `inicio` (
  `configuracion` varchar(50) DEFAULT NULL,
  `tiendas` varchar(50) DEFAULT NULL,
  `perfil` varchar(50) DEFAULT NULL,
  `inf_diaria` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE `perfil` (
  `nombre_usuario` varchar(40) DEFAULT NULL,
  `cerrar_sesion` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiendas`
--

CREATE TABLE `tiendas` (
  `nombre_tienda` varchar(50) DEFAULT NULL,
  `producto` varchar(50) DEFAULT NULL,
  `precio` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `iniciar_sesion`
--
ALTER TABLE `iniciar_sesion`
  ADD PRIMARY KEY (`apellido`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
