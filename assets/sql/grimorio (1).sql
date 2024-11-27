-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 27-11-2024 a las 17:16:24
-- Versión del servidor: 8.3.0
-- Versión de PHP: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `grimorio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `almacen_alquiler`
--

DROP TABLE IF EXISTS `almacen_alquiler`;
CREATE TABLE IF NOT EXISTS `almacen_alquiler` (
  `id_alquiler` int NOT NULL AUTO_INCREMENT,
  `nombre_item` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `registro` text NOT NULL,
  `id_categoria_alquiler` int NOT NULL,
  PRIMARY KEY (`id_alquiler`),
  KEY `id_categoria_alquiler` (`id_categoria_alquiler`)
) ENGINE=MyISAM AUTO_INCREMENT=1028 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `almacen_alquiler`
--

INSERT INTO `almacen_alquiler` (`id_alquiler`, `nombre_item`, `registro`, `id_categoria_alquiler`) VALUES
(1002, 'arco metalico ', 'cantidad 1, este fue comprado', 101),
(1001, 'manpara', 'cantidad 2, color dorado, uno fabricado el otro fue comprado', 101),
(1003, 'mesas metalicas', 'cantidad 3, cada una es de tamaño diferente, color dorado y tapa dorada', 101),
(1004, 'cilindros de madera', 'cantidad 3, cada una es de tamaño diferente, color blanco', 101),
(1005, 'tapas rojas', 'cantidad 10, fabricadas', 102),
(1006, 'tapas azules', 'cantidad 10, fabricadas ', 102),
(1007, 'manteles blancos', 'cantidad 20, fabricadas ', 102),
(1008, 'bandeja azul', 'cantidad 2, compradas', 103),
(1009, 'bandeja roja', 'cantidad 2, compradas', 103),
(1010, 'platos de plastico', 'cantidad 10, compradas', 103),
(1011, 'copas de vino plásticas', 'cantidad 15, compradas', 103),
(1012, 'baritas harry poter ', 'cantidad 2, fabricadas ', 104),
(1013, 'sombrero selecionador harrypoter', 'cantidad 1, fabricado', 104),
(1014, 'libros temática harry poter', 'cantidad 2, fabricado', 104),
(1015, 'panda icopor ', 'cantidad 1, fabricado', 104),
(1016, 'jaulas de ave', 'cantidad 3, son de tamaños diferentes, comprado', 105),
(1017, 'fuente de chocolate ', 'cantidad 1, comprado', 105),
(1018, 'soporte de dulces', 'cantidad 2, comprado', 105),
(1019, 'guacales grandes', 'cantidad 4, fabricados ', 105),
(1020, 'guacales pequeños', 'cantidad 3, son de tamaños diferentes,  fabricados ', 105),
(1021, 'globos r12 blancos ', 'cantidad 2 bolsas', 105),
(1022, 'globos r12 negros ', 'cantidad 2 bolsas', 105),
(1023, 'globos r12 azules', 'cantidad 2 bolsas', 105),
(1024, 'globos r12 morados', 'cantidad 2 bolsas', 105),
(1025, 'globos r12 verdes', 'cantidad 2 bolsas', 105);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_alquiler`
--

DROP TABLE IF EXISTS `categoria_alquiler`;
CREATE TABLE IF NOT EXISTS `categoria_alquiler` (
  `id_categoria_alquiler` int NOT NULL AUTO_INCREMENT,
  `nombre_categoria` varchar(150) NOT NULL,
  PRIMARY KEY (`id_categoria_alquiler`)
) ENGINE=MyISAM AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `categoria_alquiler`
--

INSERT INTO `categoria_alquiler` (`id_categoria_alquiler`, `nombre_categoria`) VALUES
(101, 'inmobiliaria'),
(102, 'lenceria'),
(103, 'menaje'),
(104, 'decoracion artesanal'),
(105, 'elementos de decoracion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_catering`
--

DROP TABLE IF EXISTS `categoria_catering`;
CREATE TABLE IF NOT EXISTS `categoria_catering` (
  `id_categoria_catering` int NOT NULL AUTO_INCREMENT,
  `nombre_categoria` varchar(150) NOT NULL,
  PRIMARY KEY (`id_categoria_catering`)
) ENGINE=MyISAM AUTO_INCREMENT=205 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `categoria_catering`
--

INSERT INTO `categoria_catering` (`id_categoria_catering`, `nombre_categoria`) VALUES
(201, 'postre'),
(202, 'plato fuerte'),
(203, 'coctel'),
(204, 'cobertura');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `check_in`
--

DROP TABLE IF EXISTS `check_in`;
CREATE TABLE IF NOT EXISTS `check_in` (
  `id_check_in` int NOT NULL AUTO_INCREMENT,
  `id_contrato` int DEFAULT NULL,
  PRIMARY KEY (`id_check_in`),
  KEY `id_contrato` (`id_contrato`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

DROP TABLE IF EXISTS `cliente`;
CREATE TABLE IF NOT EXISTS `cliente` (
  `id_cliente` int NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `telefono` varchar(11) DEFAULT NULL,
  `email` varchar(150) NOT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nombre`, `telefono`, `email`) VALUES
(1098765432, 'Sir Pepe', '3001234567', 'sirpepe@gmail.com'),
(2087654321, 'Pepe Neidt', '3102345678', 'pepeneidto@gmail.com'),
(2147483647, 'Pepe J', '3203456789', 'pepej@gmail.com'),
(1087654321, 'Pepe Carlos', '3004567890', 'pepecarlos@gmail.com'),
(1198765432, 'Pepito', '3105678901', 'pepito@gmail.com'),
(1118765432, 'Pepe de la cruz', '3206789012', 'pepedelacruz@gmail.com'),
(1218765432, 'Pepe Lucho', '3007890123', 'pepelucho@gmail.com'),
(1212765432, 'Pepelín', '3108901234', 'pepelin@gmail.com'),
(1211765432, 'Don Pepe', '3209012345', 'donpepe@gmail.com'),
(1231765432, 'Pepón', '3000123456', 'pepon@gmail.com'),
(1231765332, 'Pepe López', '3101234567', 'pepelopez@gmail.com'),
(1931765332, 'Pepito Pérez', '3202345678', 'pepitoperez@gmail.com'),
(1981765332, 'Pepiño', '3003456789', 'pepino@gmail.com'),
(1981265332, 'Pepe Rojas', '3104567890', 'peperojas@gmail.com'),
(1981235332, 'Pepe Torres', '3205678901', 'pepetorres@gmail.com'),
(1981235352, 'Pepe González', '3006789012', 'pepegonzalez@gmail.com'),
(1987235352, 'Pepillo', '3107890123', 'pepillo@gmail.com'),
(1846235352, 'Pepe Ramírez', '3208901234', 'peperamirez@gmail.com'),
(1846275352, 'Pepe Montes', '3009012345', 'pepemontes@gmail.com'),
(1846276352, 'Pepe Reyes', '3100123456', 'pepereyes@gmail.com'),
(1841276352, 'Pepe Pérez', '3201234567', 'pepeperez@gmail.com'),
(1234567890, 'Pepe Fernández', '3001234567', 'pepefernandez@gmail.com'),
(1449876543, 'Pepe Muñoz', '3002345678', 'pepemunoz@gmail.com'),
(1439876543, 'Pepe Herrera', '3103456789', 'pepecarrera@gmail.com'),
(1429876543, 'Pepe Villegas', '3204567890', 'pepevillegas@gmail.com'),
(1419876543, 'Pepe García', '3005678901', 'pepegarcia@gmail.com'),
(1234567891, 'Pepe González', '3002345678', 'pepegonzalez@gmail.com'),
(1234567892, 'Pepe Martínez', '3003456789', 'pepemartinez@gmail.com'),
(1234567893, 'Pepe Castillo', '3004567890', 'pepecastillo@gmail.com'),
(1234567894, 'Pepe Ortiz', '3005678901', 'pepeortiz@gmail.com'),
(1234567895, 'Pepe Ramírez', '3006789012', 'peperamirez@gmail.com'),
(1234567896, 'Pepe Soto', '3007890123', 'pepesoto@gmail.com'),
(1234567897, 'Pepe Vargas', '3008901234', 'pepevargas@gmail.com'),
(1234567898, 'Pepe Mendoza', '3009012345', 'pepemendoza@gmail.com'),
(1234567899, 'Pepe Morales', '3101234567', 'pepemorales@gmail.com'),
(1244567890, 'Pepe Rivas', '3102345678', 'peperivas@gmail.com'),
(1244567891, 'Pepe Núñez', '3103456789', 'pepenunez@gmail.com'),
(1244567892, 'Pepe Castillo', '3104567890', 'pepecastillo@gmail.com'),
(1244567893, 'Pepe Guzmán', '3105678901', 'pepeguzman@gmail.com'),
(1244567894, 'Pepe Cruz', '3106789012', 'pepecruz@gmail.com'),
(1244567895, 'Pepe Herrera', '3107890123', 'pepeherrera@gmail.com'),
(1244567896, 'Pepe Montes', '3108901234', 'pepemontes@gmail.com'),
(1244567897, 'Pepe Blanco', '3109012345', 'pepeblanco@gmail.com'),
(1244567898, 'Pepe Flores', '3201234567', 'pepeflores@gmail.com'),
(1244567899, 'Pepe Escobar', '3202345678', 'pepeescobar@gmail.com'),
(1254567890, 'Pepe Franco', '3203456789', 'pepefranco@gmail.com'),
(1254567891, 'Pepe Ruiz', '3204567890', 'peperuiz@gmail.com'),
(1254567892, 'Pepe Hernández', '3205678901', 'pepehernandez@gmail.com'),
(1254567893, 'Pepe Méndez', '3206789012', 'pepemendez@gmail.com'),
(1254567894, 'Pepe Castro', '3207890123', 'pepecastro@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contrato_alquiler`
--

DROP TABLE IF EXISTS `contrato_alquiler`;
CREATE TABLE IF NOT EXISTS `contrato_alquiler` (
  `id_contrato` int NOT NULL AUTO_INCREMENT,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `terminos_condiciones` text NOT NULL,
  `id_cliente` int DEFAULT NULL,
  PRIMARY KEY (`id_contrato`),
  KEY `id_cliente` (`id_cliente`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generador_orden_pedido`
--

DROP TABLE IF EXISTS `generador_orden_pedido`;
CREATE TABLE IF NOT EXISTS `generador_orden_pedido` (
  `id_orden_pedido` int NOT NULL AUTO_INCREMENT,
  `valor` int NOT NULL,
  `fecha` date NOT NULL,
  `tipo_servicio` varchar(100) NOT NULL,
  `items_alquiler` int NOT NULL,
  `id_cliente` int DEFAULT NULL,
  PRIMARY KEY (`id_orden_pedido`),
  KEY `id_cliente` (`id_cliente`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lista_items_contrato`
--

DROP TABLE IF EXISTS `lista_items_contrato`;
CREATE TABLE IF NOT EXISTS `lista_items_contrato` (
  `id_alquiler` int NOT NULL,
  `id_contrato` int NOT NULL,
  PRIMARY KEY (`id_alquiler`,`id_contrato`),
  KEY `id_contrato` (`id_contrato`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lista_items_orden`
--

DROP TABLE IF EXISTS `lista_items_orden`;
CREATE TABLE IF NOT EXISTS `lista_items_orden` (
  `id_alquiler` int NOT NULL,
  `id_orden_pedido` int NOT NULL,
  PRIMARY KEY (`id_alquiler`,`id_orden_pedido`),
  KEY `id_orden_pedido` (`id_orden_pedido`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `repositorio_catering`
--

DROP TABLE IF EXISTS `repositorio_catering`;
CREATE TABLE IF NOT EXISTS `repositorio_catering` (
  `id_repositorio_catering` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `receta` text NOT NULL,
  `id_categoria_catering` int DEFAULT NULL,
  PRIMARY KEY (`id_repositorio_catering`),
  KEY `id_categoria_catering` (`id_categoria_catering`)
) ENGINE=MyISAM AUTO_INCREMENT=2027 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `repositorio_catering`
--

INSERT INTO `repositorio_catering` (`id_repositorio_catering`, `nombre`, `receta`, `id_categoria_catering`) VALUES
(2005, 'mini donas', 'Ingredientes:\r\n2 tazas de harina de trigo\r\n\r\n1/2 taza de azúcar\r\n\r\n1 cucharadita de polvo de hornear\r\n\r\n1/2 cucharadita de bicarbonato de sodio\r\n\r\n1/2 cucharadita de sal\r\n\r\n1/2 taza de leche\r\n\r\n1/4 taza de mantequilla derretida\r\n\r\n2 huevos\r\n\r\n1 cucharadita de extracto de vainilla\r\n\r\nInstrucciones:\r\nPrecalienta el horno a 175°C (350°F) y engrasa un molde para mini donas.\r\n\r\nEn un tazón grande, mezcla la harina, el azúcar, el polvo de hornear, el bicarbonato y la sal.\r\n\r\nEn otro tazón, bate la leche, la mantequilla derretida, los huevos y la vainilla.\r\n\r\nAñade los ingredientes húmedos a los secos y mezcla hasta que estén bien combinados.\r\n\r\nLlena los moldes para mini donas hasta la mitad con la masa.\r\n\r\nHornea durante 10-12 minutos o hasta que las mini donas estén doradas y al insertar un palillo, este salga limpio.\r\n\r\nDeja enfriar las mini donas en el molde durante unos minutos antes de pasarlas a una rejilla para que se enfríen completamente.', 201),
(2001, 'wuafles de fresa', 'Ingredientes:\r\n1 taza de harina\r\n\r\n1 cucharada de azúcar\r\n\r\n1 cucharadita de polvo para hornear\r\n\r\n1 pizca de sal\r\n\r\n1 huevo\r\n\r\n3/4 taza de leche\r\n\r\n2 cucharadas de mantequilla derretida\r\n\r\nFresas frescas\r\n\r\nSirope o miel (opcional)\r\n\r\nInstrucciones:\r\nMezcla los ingredientes secos: En un bol, combina la harina, el azúcar, el polvo para hornear y la sal.\r\n\r\nAñade los ingredientes líquidos: Agrega el huevo, la leche y la mantequilla derretida. Mezcla bien hasta obtener una masa homogénea.\r\n\r\nCocina los waffles: Vierte la masa en la waflera caliente y cocina hasta que estén dorados y crujientes.\r\n\r\nDecora: Sirve los waffles con fresas frescas por encima y añade sirope o miel al gusto.', 201),
(2002, 'wuafles de arándano ', 'Ingredientes:\r\n1 taza de harina\r\n\r\n1 cucharada de azúcar\r\n\r\n1 cucharadita de polvo para hornear\r\n\r\n1 pizca de sal\r\n\r\n1 huevo\r\n\r\n3/4 taza de leche\r\n\r\n2 cucharadas de mantequilla derretida\r\n\r\narándanos frescos\r\n\r\nSirope o miel (opcional)\r\n\r\nInstrucciones:\r\nMezcla los ingredientes secos: En un bol, combina la harina, el azúcar, el polvo para hornear y la sal.\r\n\r\nAñade los ingredientes líquidos: Agrega el huevo, la leche y la mantequilla derretida. Mezcla bien hasta obtener una masa homogénea.\r\n\r\nCocina los waffles: Vierte la masa en la waflera caliente y cocina hasta que estén dorados y crujientes.\r\n\r\nDecora: Sirve los waffles con arándanos frescos por encima y añade sirope o miel al gusto.', 201),
(2003, 'wuafles de arándano ', 'Ingredientes:\r\n1 taza de harina\r\n\r\n1 cucharada de azúcar\r\n\r\n1 cucharadita de polvo para hornear\r\n\r\n1 pizca de sal\r\n\r\n1 huevo\r\n\r\n3/4 taza de leche\r\n\r\n2 cucharadas de mantequilla derretida\r\n\r\narándanos frescos\r\n\r\nSirope o miel (opcional)\r\n\r\nInstrucciones:\r\nMezcla los ingredientes secos: En un bol, combina la harina, el azúcar, el polvo para hornear y la sal.\r\n\r\nAñade los ingredientes líquidos: Agrega el huevo, la leche y la mantequilla derretida. Mezcla bien hasta obtener una masa homogénea.\r\n\r\nCocina los waffles: Vierte la masa en la waflera caliente y cocina hasta que estén dorados y crujientes.\r\n\r\nDecora: Sirve los waffles con arándanos frescos por encima y añade sirope o miel al gusto.', 201),
(2004, 'wuafles de banano', 'Ingredientes:\r\n1 taza de harina\r\n\r\n1 cucharada de azúcar\r\n\r\n1 cucharadita de polvo para hornear\r\n\r\n1 pizca de sal\r\n\r\n1 huevo\r\n\r\n3/4 taza de leche\r\n\r\n2 cucharadas de mantequilla derretida\r\n\r\nbananos frescos\r\n\r\nSirope o miel (opcional)\r\n\r\nInstrucciones:\r\nMezcla los ingredientes secos: En un bol, combina la harina, el azúcar, el polvo para hornear y la sal.\r\n\r\nAñade los ingredientes líquidos: Agrega el huevo, la leche y la mantequilla derretida. Mezcla bien hasta obtener una masa homogénea.\r\n\r\nCocina los waffles: Vierte la masa en la waflera caliente y cocina hasta que estén dorados y crujientes.\r\n\r\nDecora: Sirve los waffles con bananos frescos por encima y añade sirope o miel al gusto.', 201),
(2006, 'muffins de naranja ', 'Ingredientes:\r\n2 tazas de harina de trigo\r\n\r\n1/2 taza de azúcar\r\n\r\n1 cucharadita de polvo de hornear\r\n\r\n1/2 cucharadita de bicarbonato de sodio\r\n\r\n1/2 cucharadita de sal\r\n\r\n1/2 taza de leche\r\n\r\n1/4 taza de mantequilla derretida\r\n\r\n2 huevos\r\n\r\n1 cucharadita de extracto de vainilla\r\nralladura de naranja\r\n\r\nOpcional: 1 taza de ingredientes adicionales como arándanos, chispas de chocolate, nueces, etc.\r\n\r\nInstrucciones:\r\nPrecalienta el horno a 175°C (350°F) y prepara una bandeja para muffins con capacillos o engrásala.\r\n\r\nEn un tazón grande, mezcla la harina, el azúcar, el polvo de hornear, el bicarbonato y la sal.\r\n\r\nEn otro tazón, bate la leche, la mantequilla derretida, los huevos y la vainilla.\r\n\r\nAñade la ralladura de naranja \r\n\r\nAñade los ingredientes húmedos a los secos y mezcla hasta que estén bien combinados. Si estás usando ingredientes adicionales, incorpóralos ahora.\r\n\r\nLlena los moldes para muffins hasta tres cuartos con la mezcla.\r\n\r\nHornea durante 18-20 minutos o hasta que los muffins estén dorados y al insertar un palillo, este salga limpio.\r\n\r\nDeja enfriar los muffins en el molde durante unos minutos antes de pasarlos a una rejilla para que se enfríen completamente.', 201),
(2007, 'muffins de brownie', 'Ingredientes:\r\n2 tazas de harina de trigo\r\n\r\n1/2 taza de azúcar\r\n\r\n1 cucharadita de polvo de hornear\r\n\r\n1/2 cucharadita de bicarbonato de sodio\r\n\r\n1/2 cucharadita de sal\r\n\r\n1/2 taza de leche\r\n\r\n1/4 taza de mantequilla derretida\r\n\r\n2 huevos\r\n\r\n1 cucharadita de extracto de vainilla\r\nralladura de naranja\r\n\r\ncacao en polvo \r\n\r\nOpcional: 1 taza de ingredientes adicionales como arándanos, chispas de chocolate, nueces, etc.\r\n\r\nInstrucciones:\r\nPrecalienta el horno a 175°C (350°F) y prepara una bandeja para muffins con capacillos o engrásala.\r\n\r\nEn un tazón grande, mezcla la harina, el azúcar, el polvo de hornear, el bicarbonato y la sal.\r\n\r\nEn otro tazón, bate la leche, la mantequilla derretida, los huevos y la vainilla.\r\n\r\nAñade cacao en polvo \r\n\r\nAñade los ingredientes húmedos a los secos y mezcla hasta que estén bien combinados. Si estás usando ingredientes adicionales, incorpóralos ahora.\r\n\r\nLlena los moldes para muffins hasta tres cuartos con la mezcla.\r\n\r\nHornea durante 18-20 minutos o hasta que los muffins estén dorados y al insertar un palillo, este salga limpio.\r\n\r\nDeja enfriar los muffins en el molde durante unos minutos antes de pasarlos a una rejilla para que se enfríen completamente.', 201),
(2008, 'cubertura de chocolate', 'Ingredientes:\r\n1 taza de azúcar glas\r\n\r\n2 cucharadas de cacao en polvo sin azúcar\r\n\r\n2 cucharadas de mantequilla derretida\r\n\r\n2-3 cucharadas de leche\r\n\r\n1/2 cucharadita de extracto de vainilla\r\n\r\nInstrucciones:\r\nEn un tazón mediano, tamiza el azúcar glas y el cacao en polvo para evitar grumos.\r\n\r\nAñade la mantequilla derretida y mezcla bien.\r\n\r\nAgrega la leche, una cucharada a la vez, hasta obtener la consistencia deseada. Debe ser lo suficientemente espesa para quedarse en los muffins, pero lo suficientemente líquida para extenderse fácilmente.\r\n\r\nAñade el extracto de vainilla y mezcla hasta que esté completamente incorporado.\r\n\r\nUsa una cuchara o un cuchillo de mantequilla para cubrir los muffins enfriados con la cobertura de chocolate.\r\n\r\nDeja reposar a temperatura ambiente hasta que la cobertura se endurezca un poco.', 204),
(2009, 'cubertura de vainilla ', 'Ingredientes:\r\n1 taza de azúcar glas\r\n\r\n2-3 cucharadas de leche\r\n\r\n1 cucharadita de extracto de vainilla\r\n\r\n1 cucharada de mantequilla (opcional)\r\n\r\nInstrucciones:\r\nEn un tazón mediano, tamiza el azúcar glas para evitar grumos.\r\n\r\nAgrega el extracto de vainilla y la leche, una cucharada a la vez, mezclando bien después de cada adición. Si prefieres una cobertura más rica, puedes añadir la mantequilla derretida en este paso.\r\n\r\nMezcla hasta obtener una consistencia suave y homogénea. Si es necesario, puedes ajustar la cantidad de leche para lograr la consistencia deseada.\r\n\r\nUna vez que los muffins estén completamente enfriados, cubre cada uno con la cobertura de vainilla usando una cuchara o un cuchillo de mantequilla.\r\n\r\nDeja reposar a temperatura ambiente hasta que la cobertura se endurezca un poco.', 204),
(2010, 'cubertura de frutos rojos', 'Ingredientes:\r\n1 taza de frutos rojos frescos o congelados (fresas, frambuesas, arándanos, moras)\r\n\r\n1/4 taza de azúcar\r\n\r\n2 cucharadas de agua\r\n\r\n1 cucharadita de jugo de limón\r\n\r\n1 cucharada de maicena\r\n\r\n2 cucharadas de agua adicional\r\n\r\nInstrucciones:\r\nEn una cacerola mediana, combina los frutos rojos, el azúcar, las 2 cucharadas de agua y el jugo de limón. Cocina a fuego medio, revolviendo ocasionalmente, hasta que los frutos se ablanden y suelten su jugo (aproximadamente 5-7 minutos).\r\n\r\nEn un tazón pequeño, mezcla la maicena con las 2 cucharadas de agua adicional hasta que esté completamente disuelta.\r\n\r\nAgrega la mezcla de maicena a la cacerola con los frutos rojos y cocina, revolviendo constantemente, hasta que la mezcla espese (aproximadamente 2-3 minutos).\r\n\r\nRetira la cacerola del fuego y deja enfriar la cobertura a temperatura ambiente.\r\n\r\nUna vez que la cobertura esté fría, puedes extenderla sobre tus muffins con una cuchara o una espátula.', 204),
(2011, 'cubertura de frutos amarillos', 'Ingredientes:\r\n1 taza de mango o durazno (melocotón) frescos o congelados, cortados en trozos\r\n\r\n1/4 taza de azúcar\r\n\r\n2 cucharadas de agua\r\n\r\n1 cucharadita de jugo de limón\r\n\r\n1 cucharada de maicena\r\n\r\n2 cucharadas de agua adicional\r\n\r\nInstrucciones:\r\nEn una cacerola mediana, combina los trozos de mango o durazno, el azúcar, las 2 cucharadas de agua y el jugo de limón. Cocina a fuego medio, revolviendo ocasionalmente, hasta que la fruta se ablande y suelte su jugo (aproximadamente 5-7 minutos).\r\n\r\nEn un tazón pequeño, mezcla la maicena con las 2 cucharadas de agua adicional hasta que esté completamente disuelta.\r\n\r\nAgrega la mezcla de maicena a la cacerola con los frutos amarillos y cocina, revolviendo constantemente, hasta que la mezcla espese (aproximadamente 2-3 minutos).\r\n\r\nRetira la cacerola del fuego y deja enfriar la cobertura a temperatura ambiente.\r\n\r\nUna vez que la cobertura esté fría, puedes extenderla sobre tus muffins con una cuchara o una espátula.', 204),
(2012, 'cubertura de fresa', 'Ingredientes:\r\n1 taza de fresas frescas o congeladas, cortadas en trozos\r\n\r\n1/4 taza de azúcar\r\n\r\n2 cucharadas de agua\r\n\r\n1 cucharadita de jugo de limón\r\n\r\n1 cucharada de maicena\r\n\r\n2 cucharadas de agua adicional\r\n\r\nInstrucciones:\r\nEn una cacerola mediana, combina las fresas, el azúcar, las 2 cucharadas de agua y el jugo de limón. Cocina a fuego medio, revolviendo ocasionalmente, hasta que las fresas se ablanden y suelten su jugo (aproximadamente 5-7 minutos).\r\n\r\nEn un tazón pequeño, mezcla la maicena con las 2 cucharadas de agua adicional hasta que esté completamente disuelta.\r\n\r\nAgrega la mezcla de maicena a la cacerola con las fresas y cocina, revolviendo constantemente, hasta que la mezcla espese (aproximadamente 2-3 minutos).\r\n\r\nRetira la cacerola del fuego y deja enfriar la cobertura a temperatura ambiente.\r\n\r\nUna vez que la cobertura esté fría, puedes extenderla sobre tus muffins con una cuchara o una espátula.', 204),
(2013, 'brownie', 'Ingredientes:\r\n1/2 taza de mantequilla (113 gramos)\r\n\r\n1 taza de azúcar (200 gramos)\r\n\r\n2 huevos\r\n\r\n1 cucharadita de extracto de vainilla\r\n\r\n1/3 taza de cacao en polvo (30 gramos)\r\n\r\n1/2 taza de harina de trigo (60 gramos)\r\n\r\n1/4 cucharadita de sal\r\n\r\n1/4 cucharadita de polvo de hornear\r\n\r\nInstrucciones:\r\nPrecalienta el horno a 175°C (350°F) y engrasa un molde cuadrado de aproximadamente 20 cm (8 pulgadas).\r\n\r\nEn un tazón grande, derrite la mantequilla. Puedes hacerlo en el microondas o en una cacerola a fuego lento.\r\n\r\nAñade el azúcar, los huevos y el extracto de vainilla a la mantequilla derretida y mezcla bien.\r\n\r\nIncorpora el cacao en polvo, la harina, la sal y el polvo de hornear. Mezcla hasta que todo esté bien combinado.\r\n\r\nVierte la mezcla en el molde engrasado y distribúyela de manera uniforme.\r\n\r\nHornea durante 20-25 minutos o hasta que un palillo insertado en el centro salga limpio.\r\n\r\nDeja enfriar los brownies en el molde antes de cortarlos en cuadrados y servir.', 201),
(2014, 'sandwich de pollo con queso crema', 'Ingredientes:\r\n1 pechuga de pollo cocida y desmenuzada\r\n\r\n4 cucharadas de queso crema\r\n\r\n2 cucharadas de mayonesa\r\n\r\n1 cucharadita de mostaza de Dijon (opcional)\r\n\r\nSal y pimienta al gusto\r\n\r\nHojas de lechuga\r\n\r\nRodajas de tomate\r\n\r\nPan de tu elección (baguette, ciabatta, integral, etc.)\r\n\r\nInstrucciones:\r\nEn un tazón, mezcla el queso crema, la mayonesa y la mostaza de Dijon hasta obtener una mezcla suave y homogénea.\r\n\r\nAñade el pollo desmenuzado a la mezcla de queso crema y mezcla bien para que el pollo quede bien cubierto.\r\n\r\nSazona con sal y pimienta al gusto.\r\n\r\nAbre el pan y coloca una capa de lechuga y rodajas de tomate.\r\n\r\nAñade la mezcla de pollo con queso crema sobre las verduras.\r\n\r\nCierra el sándwich con la otra mitad del pan.', 202),
(2015, 'pollo a la naranja ', 'Ingredientes:\r\n4 pechugas de pollo deshuesadas y sin piel\r\n\r\nSal y pimienta al gusto\r\n\r\n1 cucharada de aceite de oliva\r\n\r\n1/2 taza de jugo de naranja natural\r\n\r\nRalladura de 1 naranja\r\n\r\n2 cucharadas de miel\r\n\r\n2 cucharadas de salsa de soja\r\n\r\n1 diente de ajo picado\r\n\r\n1 cucharadita de jengibre rallado (opcional)\r\n\r\n1 cucharada de maicena disuelta en 2 cucharadas de agua\r\n\r\nInstrucciones:\r\nSazona las pechugas de pollo con sal y pimienta.\r\n\r\nEn una sartén grande, calienta el aceite de oliva a fuego medio-alto. Añade las pechugas de pollo y cocina hasta que estén doradas y cocidas por completo (aproximadamente 5-7 minutos por cada lado). Retira el pollo de la sartén y reserva.\r\n\r\nEn la misma sartén, añade el jugo de naranja, la ralladura de naranja, la miel, la salsa de soja, el ajo y el jengibre. Cocina a fuego medio, revolviendo ocasionalmente, hasta que la mezcla empiece a hervir.\r\n\r\nReduce el fuego a bajo y añade la maicena disuelta en agua. Cocina, revolviendo constantemente, hasta que la salsa espese (aproximadamente 2-3 minutos).\r\n\r\n', 202),
(2016, 'pasta alfredo', 'Ingredientes:\r\n400 gramos de pasta (fettuccine, linguine o tu pasta favorita)\r\n\r\n1 taza de crema de leche (nata)\r\n\r\n1/2 taza de mantequilla\r\n\r\n1 taza de queso parmesano rallado\r\n\r\n2 dientes de ajo picados\r\n\r\nSal y pimienta al gusto\r\n\r\nPerejil fresco picado (opcional, para decorar)\r\n\r\nInstrucciones:\r\nCocina la pasta según las instrucciones del paquete. Escurre y reserva.\r\n\r\nEn una sartén grande, derrite la mantequilla a fuego medio. Añade el ajo picado y cocina hasta que esté fragante, aproximadamente 1 minuto.\r\n\r\nAñade la crema de leche a la sartén y lleva a ebullición a fuego lento. Cocina por unos 5 minutos, revolviendo ocasionalmente, hasta que la mezcla espese un poco.\r\n\r\nReduce el fuego a bajo y añade el queso parmesano rallado. Revuelve constantemente hasta que el queso se derrita y la salsa esté suave.\r\n\r\nSazona con sal y pimienta al gusto.\r\n\r\nAñade la pasta cocida a la sartén y mezcla bien para que quede cubierta con la salsa Alfredo.\r\n\r\nSirve la pasta caliente, decorada con perejil fresco picado si lo deseas.\r\n\r\n', 202),
(2017, 'pasta a la boloñesa', 'Ingredientes:\r\n400 gramos de pasta (espagueti, tagliatelle, o la que prefieras)\r\n\r\n500 gramos de carne molida (res o mezcla de res y cerdo)\r\n\r\n1 cebolla picada\r\n\r\n2 dientes de ajo picados\r\n\r\n2 zanahorias picadas\r\n\r\n2 ramas de apio picadas\r\n\r\n800 gramos de tomates triturados (enlatados o frescos)\r\n\r\n1/2 taza de vino tinto (opcional)\r\n\r\n1 taza de caldo de carne\r\n\r\n2 cucharadas de pasta de tomate\r\n\r\n1 hoja de laurel\r\n\r\nSal y pimienta al gusto\r\n\r\nAceite de oliva\r\n\r\nQueso parmesano rallado (opcional, para servir)\r\n\r\nPerejil fresco picado (opcional, para decorar)\r\n\r\nInstrucciones:\r\nEn una sartén grande, calienta un poco de aceite de oliva a fuego medio-alto. Añade la cebolla, el ajo, las zanahorias y el apio, y cocina hasta que estén tiernos y dorados (aproximadamente 5-7 minutos).\r\n\r\nAgrega la carne molida a la sartén y cocina hasta que esté bien dorada, desmenuzándola con una cuchara de madera.\r\n\r\nSi usas vino tinto, añádelo a la sartén y cocina hasta que se haya evaporado en su mayor parte.\r\n\r\nIncorpora los tomates triturados, la pasta de tomate, el caldo de carne y la hoja de laurel. Sazona con sal y pimienta al gusto.\r\n\r\nReduce el fuego a bajo y deja que la salsa se cocine a fuego lento durante al menos 1 hora, removiendo de vez en cuando. Cuanto más tiempo puedas dejarla cocinar, mejor será el sabor.\r\n\r\nMientras tanto, cocina la pasta según las instrucciones del paquete. Escúrrela y resérvala.\r\n\r\nRetira la hoja de laurel de la salsa boloñesa y ajusta la sazón si es necesario.\r\n\r\nSirve la pasta con la salsa boloñesa por encima y, si deseas, espolvorea con queso parmesano rallado y perejil fresco.\r\n', 202),
(2018, 'pasta carbonara ', 'Ingredientes:\r\n400 gramos de pasta (espagueti o fettuccine son buenas opciones)\r\n\r\n150 gramos de panceta o tocino, cortado en cubos pequeños\r\n\r\n2 huevos grandes\r\n\r\n1 taza de queso parmesano rallado\r\n\r\n2 dientes de ajo picados (opcional)\r\n\r\nSal y pimienta al gusto\r\n\r\nPerejil fresco picado (opcional, para decorar)\r\n\r\nInstrucciones:\r\nCocina la pasta según las instrucciones del paquete hasta que esté al dente. Escurre y reserva, guardando una taza del agua de cocción.\r\n\r\nMientras se cocina la pasta, en una sartén grande, cocina la panceta o el tocino a fuego medio-alto hasta que esté crujiente. Si usas ajo, añádelo a la sartén y cocina por un minuto más. Retira la sartén del fuego.\r\n\r\nEn un tazón grande, bate los huevos y mezcla con el queso parmesano rallado.\r\n\r\nAñade la pasta caliente a la sartén con la panceta, y mezcla bien para cubrir la pasta con la grasa del tocino.\r\n\r\nVierte la mezcla de huevo y queso sobre la pasta caliente, revolviendo rápidamente para que el huevo se cocine ligeramente con el calor de la pasta, creando una salsa cremosa. Si la salsa parece demasiado espesa, añade un poco del agua de cocción de la pasta que reservaste.\r\n\r\nSazona con sal y pimienta al gusto.\r\n\r\nSirve la pasta carbonara inmediatamente, decorada con perejil fresco picado si lo deseas.', 202),
(2019, 'Margarita Clásica', 'Ingredientes:\r\n60 ml de tequila\r\n\r\n30 ml de licor de naranja (Cointreau o Triple Sec)\r\n\r\n30 ml de jugo de lima fresco\r\n\r\nSal para escarchar el borde del vaso\r\n\r\nRodaja de lima para decorar\r\n\r\nHielo\r\n\r\nInstrucciones:\r\nEscarcha el borde de un vaso con sal. Para ello, frota una rodaja de lima alrededor del borde y luego sumérgelo en un plato con sal.\r\n\r\nLlena una coctelera con hielo y añade el tequila, el licor de naranja y el jugo de lima.\r\n\r\nAgita bien la coctelera hasta que esté bien frío.\r\n\r\nCuela la mezcla en el vaso preparado con hielo fresco.\r\n\r\nDecora con una rodaja de lima.', 203),
(2020, 'Mojito', 'Ingredientes:\r\n60 ml de ron blanco\r\n\r\n1 lima cortada en cuatro\r\n\r\n2 cucharaditas de azúcar\r\n\r\nHojas de menta fresca\r\n\r\nAgua con gas o soda\r\n\r\nHielo\r\n\r\nInstrucciones:\r\nEn un vaso alto, coloca las rodajas de lima, el azúcar y unas hojas de menta.\r\n\r\nMachaca los ingredientes suavemente para liberar los sabores.\r\n\r\nLlena el vaso con hielo.\r\n\r\nAñade el ron y completa con agua con gas o soda.\r\n\r\nRevuelve suavemente y decora con una ramita de menta.', 203),
(2021, 'Cosmopolitan', 'Ingredientes:\r\n45 ml de vodka\r\n\r\n30 ml de licor de naranja (Cointreau o Triple Sec)\r\n\r\n15 ml de jugo de lima fresco\r\n\r\n30 ml de jugo de arándano\r\n\r\nRodaja de lima o cáscara de naranja para decorar\r\n\r\nHielo\r\n\r\nInstrucciones:\r\nLlena una coctelera con hielo y añade el vodka, el licor de naranja, el jugo de lima y el jugo de arándano.\r\n\r\nAgita bien la coctelera hasta que esté bien fría.\r\n\r\nCuela la mezcla en una copa de cóctel.\r\n\r\nDecora con una rodaja de lima o una cáscara de naranja.', 203),
(2022, 'Piña Colada', 'Ingredientes:\r\n90 ml de ron blanco\r\n\r\n60 ml de crema de coco\r\n\r\n60 ml de jugo de piña\r\n\r\nRodaja de piña y cereza para decorar\r\n\r\nHielo\r\n\r\nInstrucciones:\r\nLlena una licuadora con hielo, ron blanco, crema de coco y jugo de piña.\r\n\r\nLicúa hasta que la mezcla esté suave y bien combinada.\r\n\r\nVierte en un vaso alto.\r\n\r\nDecora con una rodaja de piña y una cereza.', 203),
(2023, 'Caipirinha', 'Ingredientes:\r\n1 lima cortada en ocho\r\n\r\n2 cucharaditas de azúcar\r\n\r\n60 ml de cachaça\r\n\r\nHielo\r\n\r\nInstrucciones:\r\nEn un vaso bajo, coloca las rodajas de lima y el azúcar.\r\n\r\nMachaca los ingredientes para liberar el jugo de la lima y disolver el azúcar.\r\n\r\nLlena el vaso con hielo.\r\n\r\nAñade la cachaça y revuelve bien.', 203),
(2024, 'Daiquiri', 'Ingredientes:\r\n60 ml de ron blanco\r\n\r\n30 ml de jugo de lima fresco\r\n\r\n15 ml de jarabe de azúcar (simple syrup)\r\n\r\nRodaja de lima para decorar\r\n\r\nHielo\r\n\r\nInstrucciones:\r\nLlena una coctelera con hielo y añade el ron blanco, el jugo de lima y el jarabe de azúcar.\r\n\r\nAgita bien la coctelera hasta que esté bien fría.\r\n\r\nCuela la mezcla en una copa de cóctel.\r\n\r\nDecora con una rodaja de lima.', 203),
(2025, 'Aperol Spritz', 'Ingredientes:\r\n60 ml de Aperol\r\n\r\n90 ml de Prosecco\r\n\r\nUn chorrito de agua con gas\r\n\r\nRodaja de naranja para decorar\r\n\r\nHielo\r\n\r\nInstrucciones:\r\nLlena un vaso con hielo.\r\n\r\nAñade el Aperol y el Prosecco.\r\n\r\nCompleta con un chorrito de agua con gas.\r\n\r\nDecora con una rodaja de naranja.', 203);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
