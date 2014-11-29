-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 29-11-2014 a las 11:15:07
-- Versión del servidor: 5.5.38-0ubuntu0.14.04.1
-- Versión de PHP: 5.5.9-1ubuntu4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `sgbm2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bienmueble`
--

CREATE TABLE IF NOT EXISTS `bienmueble` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` varchar(500) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `clasificacion_id` int(11) NOT NULL,
  `tipo_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `placa_unica` (`codigo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bm_clasificacion`
--

CREATE TABLE IF NOT EXISTS `bm_clasificacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grupo` int(2) NOT NULL,
  `subgrupo` int(2) NOT NULL,
  `seccion` int(2) NOT NULL,
  `nombre` varchar(95) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=34 ;

--
-- Volcado de datos para la tabla `bm_clasificacion`
--

INSERT INTO `bm_clasificacion` (`id`, `grupo`, `subgrupo`, `seccion`, `nombre`, `status`) VALUES
(1, 2, 1, 0, 'Máquinas, muebles y demás equipos de oficina', 1),
(2, 2, 2, 0, 'Mobiliario y enseres de alojamiento', 1),
(3, 2, 3, 0, 'Maquinaria y demás equipos de construcción, campo, industria y taller', 1),
(4, 2, 3, 1, 'Equipo de taller y herramientas de uso general', 1),
(5, 2, 3, 2, 'Maquinaria y equipo de construcción y conservación', 1),
(6, 2, 3, 3, 'Maquinaria y equipo para mantenimiento de automotores', 1),
(7, 2, 3, 4, 'Maquinaria e implementos agrícolas y pecuarios', 1),
(8, 2, 3, 5, 'Maquinaria e implemento de artes gráficas', 1),
(9, 2, 3, 6, 'Maquinaria Industrial', 1),
(10, 2, 4, 0, 'Equipos de Transporte', 1),
(11, 2, 4, 1, 'Vehículos automotores terrestres', 1),
(12, 2, 4, 2, 'Otros vehículos terrestres', 1),
(13, 2, 4, 3, 'Material rodante ferroviario y de cables aéreos', 1),
(14, 2, 4, 4, 'Equipos auxiliares de transporte', 1),
(15, 2, 4, 5, 'Embarcaciones', 1),
(16, 2, 4, 6, 'Aeronaves', 1),
(17, 2, 5, 0, 'Equipos de Telecomunicaciones', 1),
(18, 2, 6, 0, 'Equipos Médico-Quirúrquicos, Dentales y Veterinarios', 1),
(19, 2, 6, 1, 'Equipos Médico-Quirúrquicos y de Veterinaria', 1),
(20, 2, 6, 2, 'Equipos Dentales', 1),
(21, 2, 7, 0, 'Equipos Científicos y de Enseñanza', 1),
(22, 2, 7, 1, 'Equipos Científicos y de Laboratorio', 1),
(23, 2, 7, 2, 'Equipos de Enseñanza, Deporte y Recreación', 1),
(24, 2, 7, 3, 'Elementos de Culto', 1),
(25, 2, 8, 0, 'Colecciones culturales, artísticas e históricas', 1),
(26, 2, 8, 1, 'Biblioteca', 1),
(27, 2, 8, 2, 'Colecciones Científicas', 1),
(28, 2, 8, 3, 'Colecciones Artísticas y Ornamentales', 1),
(29, 2, 8, 4, 'Colecciones Históricas', 1),
(30, 2, 9, 0, 'Armamento y Material de Defensa', 1),
(31, 2, 10, 0, 'Instalaciones Provisionales', 1),
(32, 2, 11, 0, 'Semovientes', 1),
(33, 2, 12, 0, 'Otros elementos', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bm_movimiento`
--

CREATE TABLE IF NOT EXISTS `bm_movimiento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bienmueble_id` int(11) NOT NULL,
  `dependencia_id` int(11) NOT NULL,
  `concepto_id` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bm_tipo`
--

CREATE TABLE IF NOT EXISTS `bm_tipo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(11) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=248 ;

--
-- Volcado de datos para la tabla `bm_tipo`
--

INSERT INTO `bm_tipo` (`id`, `codigo`, `nombre`, `status`) VALUES
(2, 'C00001', 'C.P.U.', 1),
(3, 'C00002', 'TECLADO', 1),
(4, 'C00003', 'MONITOR', 1),
(5, 'C00005', 'PROTECTOR DE PANTALLA', 1),
(6, 'C00004', 'IMPRESORA', 1),
(7, 'C00006', 'MOUSE', 1),
(8, 'C00007', 'DATA SWITCH', 1),
(9, 'C00008', 'SCANNER', 1),
(10, 'C00009', 'REGULADOR DE VOLTAJE', 1),
(11, 'M00001', 'SILLA', 1),
(12, 'M00002', 'GABINETE', 1),
(13, 'E00001', 'SACAPUNTA', 1),
(14, 'E00002', 'CALCULADORA', 1),
(15, 'O00001', 'TELEFONO', 1),
(16, 'E00003', 'ESCRITORIO', 1),
(17, 'E00004', 'ESCAPARATE', 1),
(18, 'M00003', 'TARJETERO', 1),
(19, 'E00005', 'ARCHIVADOR', 1),
(20, 'T00001', 'EXTINTOR', 1),
(21, 'M00004', 'TELEFONERA', 1),
(22, 'M00005', 'BIBLIOTECA', 1),
(23, 'M00006', 'PERSIANA', 1),
(24, 'E00006', 'MAQUINA DE ESCRIBIR', 1),
(25, 'M00007', 'ESTANTE', 1),
(26, 'M00008', 'MESA MECANOGRAFICA', 1),
(27, 'L00001', 'DICCIONARIO', 1),
(28, 'M00009', 'AIRE ACONDICIONADO', 1),
(29, 'E00007', 'FOLIADORA', 1),
(30, 'E00008', 'SELLO', 1),
(31, 'M00010', 'VENTILADOR', 1),
(32, 'M00011', 'MESA', 1),
(33, 'M00012', 'PORTA COPIA', 1),
(34, 'L00002', 'LITOGRAFIA', 1),
(35, 'M00013', 'CUADRO', 1),
(36, 'M00014', 'LAMPARA DE EMERGENCIA', 1),
(37, 'R00001', 'FOTOCOPIADORA', 1),
(38, 'R00002', 'ENCUADERNADORA', 1),
(39, 'M00015', 'GUILLOTINA', 1),
(40, 'M00016', 'REFILADORA', 1),
(41, 'M00020', 'MULTIGRAFO', 1),
(42, 'M00021', 'PRENSA', 1),
(43, 'R00003', 'IMPRESORA DE MATRICES', 1),
(44, 'R00004', 'QUEMA MATRIZ', 1),
(45, 'R00005', 'PROSESADORA DE PLACAS', 1),
(46, 'R00006', 'MULTIGRAFO', 1),
(47, 'R00007', 'MICROFILM', 1),
(48, 'R00008', 'COMPAGINADORA', 1),
(49, 'R00009', 'LECTOR IMPRESO', 1),
(50, 'R00010', 'RIBETADORA DE PLANOS', 1),
(51, 'L00003', 'LECTOR DE MICROFECHADOR', 1),
(52, 'E00009', 'ENGRAPADORA', 1),
(53, 'M00022', 'MESON', 1),
(54, 'M00023', 'MATERO', 1),
(55, 'L00004', 'LIBROS', 1),
(56, 'M00024', 'MOSTRADOR', 1),
(57, 'T00002', 'CAJA DE HERRAMIENTAS', 1),
(58, 'M00025', 'CENICERAS', 1),
(59, 'T00003', 'RELOJ', 1),
(60, 'C00010', 'TERMINAL DE MARCAJES', 1),
(61, 'C00011', 'LECTORAS MAGNETICAS', 1),
(62, 'M00026', 'TANDEN', 1),
(63, 'M00027', 'DIRECTORIO', 1),
(64, 'M00028', 'CAMARA DE CIRCUITO', 1),
(65, 'R00011', 'RETROPROYECTOR', 1),
(66, 'R00012', 'PANTALLA', 1),
(67, 'R00013', 'COPIADORA', 1),
(68, 'M00029', 'PIZARRON', 1),
(69, 'U00001', 'EQUIPOS DE SONIDOS', 1),
(70, 'U00002', 'PEDESTAL', 1),
(71, 'M00030', 'MUEBLES', 1),
(72, 'M00031', 'MATEROS', 1),
(73, 'C00012', 'CENICERO', 1),
(74, 'T00005', 'PANEL DE INSENDIOS', 1),
(75, 'M00032', 'CARRITO CAFETERO', 1),
(76, 'M00033', 'ZORRA DE METAL', 1),
(77, 'M00034', 'EXTRACTOR', 1),
(78, 'M00035', 'CAFETERA', 1),
(79, 'M00036', 'COMPRESOR', 1),
(80, 'M00037', 'BOMBONA PARA GAS', 1),
(81, 'M00038', 'CARRETILLA', 1),
(82, 'M00039', 'DESTRUCTORA DE PAPEL', 1),
(83, 'M00040', 'DOSIFICADOR', 1),
(84, 'B00001', 'ESCALERA', 1),
(85, 'T00006', 'TALADRO', 1),
(86, 'T00008', 'TROMPO ELECTRICO', 1),
(87, 'T00009', 'SOLDADOR ELECTRICO', 1),
(88, 'T00010', 'ESMERIL', 1),
(89, 'T00011', 'ESMERILADORA', 1),
(90, 'T00012', 'PRENSA DE BANCO', 1),
(91, 'T00013', 'SIERRA CALADORA', 1),
(92, 'T00014', 'TARRAJA', 1),
(93, 'E00010', 'AUTO COPY HOLDER', 1),
(94, 'M00041', 'RELOJ FECHADOR', 1),
(95, 'R00014', 'CAMARA FOTOGRAFICA', 1),
(96, 'M00042', 'DISTANCIOMETRO', 1),
(97, 'M00043', 'JUEGO DE HERRAMIENTAS', 1),
(98, 'L00005', 'TEXTOS', 1),
(99, 'M00044', 'GABINETE', 1),
(100, 'M00045', 'NEVERA', 1),
(101, 'M00046', 'CONDENSADOR', 1),
(102, 'M00047', 'DISPENSADOR', 1),
(103, 'C00016', 'CAJA FUERTE ESPECIAL', 1),
(104, 'C00017', 'POWER KIT', 1),
(105, 'M00048', 'CAJON DE BATERIA', 1),
(106, 'C00018', 'TARJETA ELECTRONICA', 1),
(107, 'C00019', 'CINTAS MAGNETICAS', 1),
(108, 'M00049', 'CAJA FUERTE', 1),
(109, 'M00050', 'INTERCOMUNICADOR', 1),
(110, 'M00051', 'BASE', 1),
(111, 'M00052', 'COCINA', 1),
(112, 'T00015', 'JUEGO DE CUBIERTOS', 1),
(113, 'T00016', 'JUEGO DE VAJILLA', 1),
(114, 'O00002', 'MODULO DE COMUNICACION', 1),
(115, 'R00015', 'PLASTIFICADOR', 1),
(116, 'T00017', 'PROTECTOR DE ALFOMBRAS', 1),
(117, 'M00053', 'REPISA', 1),
(118, 'C00020', 'LAMPARA DE MESA', 1),
(119, 'M00054', 'SECUENCIA', 1),
(120, 'M00055', 'AUTO SCANNERS', 1),
(121, 'M00056', 'PLATO NATIONAL', 1),
(122, 'M00057', 'AMPLIFICADOR', 1),
(123, 'M00058', 'BETAMAX', 1),
(124, 'M00059', 'TUNNER', 1),
(125, 'M00060', 'DECK DE CASSETTE', 1),
(126, 'M00061', 'TELEVISOR', 1),
(127, 'M00062', 'ANTENA', 1),
(128, 'M00063', 'CORNETA', 1),
(129, 'M00064', 'ESPEJO', 1),
(130, 'M00065', 'JUEGO DE RECIBO', 1),
(131, 'M00066', 'SECADOR', 1),
(132, 'O00003', 'FAX', 1),
(133, 'O00004', 'CELULAR', 1),
(134, 'M00067', 'LICUADORA', 1),
(135, 'M00068', 'ESTUCHE DE ROTULACIONES', 1),
(136, 'M00069', 'PLANERA', 1),
(137, 'T00018', 'CINTA METRICA', 1),
(138, 'E00011', 'NUMERADORA.', 1),
(139, 'M00070', 'CINTA METRICA', 1),
(140, 'M00071', 'PORTA-PLANOS', 1),
(141, 'M00072', 'PLANERA VERTICAL', 1),
(142, 'M00073', 'ESCLEROMETRO', 1),
(143, 'B00002', 'NIVEL', 1),
(144, 'B00003', 'EQUIPOS', 1),
(145, 'B00004', 'MIRA DE ELEMENTOS', 1),
(146, 'B00005', 'SOMBRILLA', 1),
(147, 'B00006', 'JALONES DESMONTABLES', 1),
(148, 'E00012', 'VIDRIOS', 1),
(149, 'B00007', 'TEODOLITO UNIVERSAL', 1),
(150, 'M00074', 'JUEGO DE AGUJAS', 1),
(151, 'T00019', 'SOMBRILLA PARAR ALECO', 1),
(152, 'T00020', 'JALONES DESMONTABLES', 1),
(153, 'T00021', 'VIDRIO AHUMADO', 1),
(154, 'T00022', 'TEODOLITO UNIVERSAL', 1),
(155, 'T00023', 'PARALELA', 1),
(156, 'M00075', 'PROTECTORA DE CHEQUE', 1),
(157, 'B00008', 'EXPRIMIDOR', 1),
(158, 'B00009', 'BATIDOR', 1),
(159, 'B00010', 'LICUADORA', 1),
(160, 'B00011', 'LAVADORA', 1),
(161, 'B00012', 'HORNO MICROONDA', 1),
(162, 'A00001', 'EXTRACTOR DE AIRE', 1),
(163, 'M00076', 'FILTRO DE AGUA', 1),
(164, 'B00013', 'BANDEJAS', 1),
(165, 'B00014', 'PULIDORA', 1),
(166, 'B00015', 'ASPIRADORA', 1),
(167, 'O00005', 'EQUIPO PORTATIL DE VHF', 1),
(168, 'M00077', 'CAJAS', 1),
(169, 'O00006', 'RADIO TRANSMISOR.', 1),
(170, 'O00007', 'BUSCA PERSONAS', 1),
(171, 'A00002', 'VEHICULOS', 1),
(172, 'A00003', 'GATOS HIDRAULICOS', 1),
(173, 'O00008', 'VIDEO CASSETTE', 1),
(174, 'O00009', 'MICROFONO', 1),
(175, 'T00024', 'PLANIMETRO', 1),
(176, 'T00025', 'LENTES DE FOTOS', 1),
(177, 'T00026', 'JUEGOS DE PLANTILLAS', 1),
(178, 'T00027', 'JUEGOS DE PLUMILLAS', 1),
(179, 'M00078', 'BORRADOR ELECTRICO', 1),
(180, 'T00028', 'REGLA PARALELA', 1),
(181, 'M00079', 'CARRETILLA', 1),
(182, 'E00013', 'IMPRESORA ELECTRICA', 1),
(183, 'O00010', 'MONITOR CIRCUITO CERRADO.', 1),
(184, 'M00080', 'LITERA', 1),
(185, 'M00081', 'TROQUELADORA', 1),
(186, 'O00011', 'DICTAFONO', 1),
(187, 'T00029', 'HERRAMIENTAS', 1),
(188, 'T00030', 'PIPOTES', 1),
(189, 'T00031', 'FLORERO', 1),
(190, 'T00032', 'TERMO', 1),
(191, 'T00033', 'ADORNOS', 1),
(192, 'C00021', 'SOFTWARE', 1),
(193, 'T00034', 'GRABADOR', 1),
(194, 'T00035', 'PERFORADOR', 1),
(195, 'T00036', 'CASCO', 1),
(196, 'C00022', 'PORTA MONITOR', 1),
(197, 'M00082', 'LOCKERS', 1),
(198, 'C00023', 'CONCENTRADOR', 1),
(199, 'T00038', 'PISTOLA DE PINTAR', 1),
(200, 'C00024', 'LINTERNA', 1),
(201, 'T00040', 'SOLDADOR', 1),
(202, 'C00025', 'LICENCIA', 1),
(203, 'U00003', 'ORGANO', 1),
(204, 'T00041', 'AFILADOR PROFESIONAL', 1),
(205, 'T00042', 'TABLAS', 1),
(206, 'C00026', 'UPS', 1),
(207, 'T00043', 'TABLA PARA PARRILLA', 1),
(208, 'T00044', 'AUXILIAR DE PLOMERIA', 1),
(209, 'T00045', 'MALETIN', 1),
(210, 'M00083', 'PERCHERO', 1),
(211, 'C00028', 'TESTER', 1),
(212, 'T00046', 'CDS', 1),
(213, 'R00016', 'QUEMADORA DE CDS', 1),
(214, 'T00047', 'PONCHADORA', 1),
(215, 'B00016', 'FREGADERO', 1),
(216, 'B00017', 'MUEBLE BAÑO MARIA', 1),
(217, 'B00018', 'HORNO', 1),
(218, 'B00019', 'CAMPANA', 1),
(219, 'B00020', 'CALENTADOR', 1),
(220, 'M00084', 'BUTACA', 1),
(221, 'B00021', 'ALFOMBRA', 1),
(222, 'O00012', 'ACCESORIOS', 1),
(223, 'C00029', 'UNIDAD CD R/W', 1),
(224, 'C00030', 'LAPTOP', 1),
(225, 'M00085', 'FILTRO DE AGUA', 1),
(226, 'T00049', 'BATERIA', 1),
(227, 'C00031', 'Diccionario Electronico', 1),
(228, 'C00032', 'SERVIDOR', 1),
(229, 'T00050', 'CARTELERA', 1),
(230, 'T00052', 'BASE PARA BOTELLON DE AGUA', 1),
(231, 'T00053', 'BUZON DE RECLAMOS/SUGERENCIAS', 1),
(232, 'U00004', 'CONSOLA', 1),
(233, 'T00054', 'CANDELABRO', 1),
(234, 'T00055', 'LLAVE DE CRUZ', 1),
(235, 'B00022', 'CAMA', 1),
(236, 'T00056', 'DESTORNILLADOR ELECTRICO', 1),
(237, 'T00057', 'TALADRO', 1),
(238, 'C00034', 'ROUTER', 1),
(239, 'C00035', 'Máquinas, Muebles y demás', 1),
(240, 'A00004', 'MOTOCICLETA', 1),
(241, 'C00036', 'MODEM INTERNET', 1),
(242, 'T00058', 'TENSIOMETRO', 1),
(243, 'R00017', 'TENSIOMETRO', 1),
(244, 'T00059', 'MANDARRIA', 1),
(245, 'B00023', 'ROPERO', 1),
(246, 'E00014', 'ENGRAPADORA INDUSTRIAL', 1),
(247, 'T00060', 'PALA', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dependencia`
--

CREATE TABLE IF NOT EXISTS `dependencia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `sede_id` int(11) NOT NULL,
  `dp_tipo_id` int(3) DEFAULT NULL,
  `nombre` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `nombre_corto` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=40 ;

--
-- Volcado de datos para la tabla `dependencia`
--

INSERT INTO `dependencia` (`id`, `codigo`, `sede_id`, `dp_tipo_id`, `nombre`, `nombre_corto`, `status`) VALUES
(6, '0106', 1, 2, 'Dirección General', 'Dirección General', 1),
(2, '0102', 1, 2, 'Dirección de Auditoría Interna', 'Dirección de Auditoría Interna', 1),
(5, '0105', 1, 2, 'Dirección de Atención Ciudadana', 'Dirección de Atención Ciudadana', 1),
(7, '0107', 1, 2, 'Dirección de Administración', 'Dirección de Administración', 1),
(12, '0112', 1, 2, 'Dirección Gestión Corporativa', 'Dirección Gestión Corporativa', 1),
(16, '0116', 1, 2, 'Dirección de Consultoría Jurídica', 'Dirección de Consultoría Jurídica', 1),
(17, '0117', 1, 2, 'Dirección de Recursos Humanos', 'Dirección de Recursos Humanos', 1),
(22, '0122', 1, 2, 'Dirección de Control Posterior de la Adm. Central y demás Órganos', 'Dirección de Control Posterior de la Adm. Central', 1),
(23, '0123', 1, 2, 'Dirección de Control Posterior de la Adm. Descentralizada', 'Dirección de Ctl. Post. de la Adm. Desc.', 1),
(24, '0124', 1, 2, 'Dirección de Poder Popular', 'Dirección de Poder Popular', 1),
(25, '0125', 1, 2, 'Dirección de Determinación de Responsabilidades', 'Dirección de Det. de Responsabilidades', 1),
(1, '0101', 1, 1, 'Despacho del Contralor Municipal', 'Despacho del Contralor Municipal', 1),
(27, '0103', 1, 3, 'División de Control Posterior', 'División de Control Posterior', 1),
(28, '0104', 1, 3, 'División de Determinación Responsabilidades', 'División de Det. de Responsabilidades', 1),
(29, '0108', 1, 3, 'División de Arch. Corr. y Reproducción', 'División de Arch. Corr. y Reproducción', 1),
(30, '0109', 1, 3, 'División de Bienes Muebles', 'División de Bienes Muebles', 1),
(31, '0110', 1, 3, 'División de Contabilidad y Tesorería', 'División de Contabilidad y Tesorería', 1),
(32, '0111', 1, 3, 'División de Servicios Generales', 'División de Servicios Generales', 1),
(33, '0113', 1, 3, 'División de Informática', 'División de Informática', 1),
(34, '0114', 1, 3, 'División de Organización y Métodos', 'División de Organización y Métodos', 1),
(35, '0115', 1, 3, 'División de Planificación y Presupuesto', 'División de Planificación y Presupuesto', 1),
(36, '0118', 1, 3, 'División Adm. Nómina y Presupuesto', 'División Adm. Nómina y Presupuesto', 1),
(37, '0119', 1, 3, 'División Téc. y Bienestar Social', 'División Téc. y Bienestar Social', 1),
(38, '0120', 1, 3, 'División de Seguridad y Salud Laboral', 'División de Seguridad y Salud Laboral', 1),
(39, '0121', 1, 3, 'División de Relaciones Institucionales', 'División de Relaciones Institucionales', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dp_responsable`
--

CREATE TABLE IF NOT EXISTS `dp_responsable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_ingreso` datetime NOT NULL,
  `fecha_egreso` datetime NOT NULL,
  `dependencia_id` int(11) NOT NULL,
  `persona_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mv_concepto`
--

CREATE TABLE IF NOT EXISTS `mv_concepto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `comcepto` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
