-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2021 at 04:33 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `evaluacion_docente`
--

-- --------------------------------------------------------

--
-- Table structure for table `cursos`
--

CREATE TABLE `cursos` (
  `id_curso` int(3) NOT NULL,
  `semestre` int(2) DEFAULT NULL,
  `grupo` varchar(1) DEFAULT NULL,
  `carrera` varchar(2) DEFAULT NULL,
  `turno` varchar(10) DEFAULT NULL,
  `curso` varchar(100) DEFAULT NULL,
  `modulo` int(1) DEFAULT NULL,
  `docente` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cursos`
--

INSERT INTO `cursos` (`id_curso`, `semestre`, `grupo`, `carrera`, `turno`, `curso`, `modulo`, `docente`) VALUES
(1, 1, '', 'LA', 'SABATINO', 'GLOBALIZACIÓN Y DESARROLLO ECONÓMICO', 1, 'ABEL NOÉ BETANCOURT DEL ÁNGEL'),
(2, 6, '', 'LA', 'DOMINGO', 'ADMINISTRACIÓN ESTRATÉGICA', 1, 'ABEL NOÉ BETANCOURT DEL ÁNGEL'),
(3, 7, '', 'LA', 'SABATINO', 'ADMINISTRACIÓN FINANCIERA', 1, 'ABEL NOÉ BETANCOURT DEL ÁNGEL'),
(4, 8, '', 'LA', 'SABATINO', 'DESARROLLO DE EMPRENDEDORES', 1, 'AHMAAN HORACIO MAGAÑA RAMÍREZ'),
(5, 4, '', 'II', 'SABATINO', 'REDACCIÓN AVANZADA', 1, 'ALHELI DURAZO VÁZQUEZ'),
(6, 1, 'A', 'LE', 'MATUTINO', 'DESARROLLO PERSONAL', 1, 'ANA LUISA CHÁVEZ GARCÍA'),
(7, 4, 'A', 'LM', 'MATUTINO', 'HABILIDADES DEL PENSAMIENTO', 1, 'ANA LUISA CHÁVEZ GARCÍA'),
(8, 7, 'A', 'LE', 'VESPETINO', 'PSICOTÉCNICA LABORAL', 1, 'ANA LUISA CHÁVEZ GARCÍA'),
(9, 7, '', 'LE', 'SABATINO', 'PSICOTÉCNICA LABORAL', 1, 'ANA LUISA CHÁVEZ GARCÍA'),
(10, 7, '', 'II', 'SABATINO', 'PSICOLOGÍA ORGANIZACIONAL', 1, 'ANA LUISA CHÁVEZ GARCÍA'),
(11, 4, 'A', 'LE', 'MATUTINO', 'ESTADÍSTICA I', 1, 'ANTONIO ISAAC JUÁREZ DURÁN'),
(12, 6, '', 'LE', 'DOMINGO', 'HABILIDADES PARA LA INVESTIGACIÓN', 1, 'AZUCENA GONZALEZ GARCÍA'),
(13, 8, '', 'LD', 'SABATINO', 'PROCESAL MERCANTIL', 1, 'BEATRIZ MADRIGAL LUCERO'),
(14, 3, '', 'LA', 'SABATINO', 'ADMINISTRACIÓN DE MERCADOTÉCNIA', 1, 'BIBIANA ESPINOZA HERNÁNDEZ'),
(15, 4, 'A', 'LA', 'MATUTINO', 'ADMINISTRACIÓN DE RECURSOS HUMANOS', 1, 'BIBIANA ESPINOZA HERNÁNDEZ'),
(16, 6, '', 'LE', 'DOMINGO', 'DISEÑO CURRICULAR II', 1, 'BRENDA VERONICA PALACIOS RODRÍGUEZ'),
(17, 1, '', 'LA', 'SABATINO', 'GLOBALIZACIÓN Y DESARROLLO ECONÓMICO', 1, 'CHRISTIAN EDUARDO VEGA GALVÁN'),
(18, 7, '', 'LD', 'SABATINO', 'DEDRECHO AGRARIO', 1, 'CHRISTIAN JAVIER GARRIDO RAMÍREZ'),
(19, 8, '', 'LD', 'SABATINO', 'DERECHO INTERNACIONAL PRIVADO', 1, 'CHRISTIAN JAVIER GARRIDO RAMÍREZ'),
(20, 4, '', 'LE', 'SABATINO', 'PROBLEMAS DE APRENDIZAJE', 1, 'CLAUDIA IVONE MENDOZA SÁNCHEZ'),
(21, 7, '', 'LC', 'SABATINO', 'SEGURIDAD PRIVADA', 1, 'DANIELA CATALINA CARPIO DE LA TOBA'),
(22, 8, '', 'LC', 'SABATINO', 'ARGUMENTACIÓN JURÍDICA', 1, 'DANIELA CATALINA CARPIO DE LA TOBA'),
(23, 1, '', 'II', 'SABATINO', 'GESTIÓN DE LA INFORMACIÓN', 1, 'DIANA RAMÍREZ GUTIÉRREZ'),
(24, 1, 'A', 'LD', 'MATUTINO', 'HISTORIA DEL DERECHO MEXICANO', 1, 'EFRAIN MARTÍNEZ AVIÑA'),
(25, 1, '', 'LC', 'SABATINO', 'INTRODUCCIÓN A LAS CIENCIAS JURÍDICAS', 1, 'EFRAIN MARTÍNEZ AVIÑA'),
(26, 7, '', 'LD', 'SABATINO', 'DERECHO REGISTRAL', 1, 'EFRAIN MARTÍNEZ AVIÑA'),
(27, 8, '', 'LD', 'SABATINO', 'PROCESAL ADMINISTRATIVO', 1, 'EFRAIN MARTÍNEZ AVIÑA'),
(28, 1, 'A', 'LE', 'MATUTINO', 'HISTORIA DE LA EDUCACIÓN', 1, 'ELVIA CLARA CHEQUER GUIJARRO'),
(29, 1, 'A', 'LN', 'MATUTINO', 'ÉTICA', 1, 'ELVIA CLARA CHEQUER GUIJARRO'),
(30, 7, 'A', 'LE', 'VESPETINO', 'PRÁCTICA Y OBSERVACIÓN ESCOLAR I', 1, 'ELVIA CLARA CHEQUER GUIJARRO'),
(31, 7, '', 'LE', 'SABATINO', 'PRÁCTICA Y OBSERVACIÓN ESCOLAR I', 1, 'ELVIA CLARA CHEQUER GUIJARRO'),
(32, 4, '', 'LE', 'SABATINO', 'ESTADÍSTICA I', 1, 'ERICK PAUL CALIXTO SÁNCHEZ'),
(33, 1, 'A', 'LD', 'VESPETINO', 'INTRODUCCIÓN A LA CIENCIA JURÍDICA', 1, 'FRANCISCO JAVIER DOMÍNGUEZ NIEBLA'),
(34, 4, '', 'LC', 'SABATINO', 'DERECHO PENAL III', 1, 'FRANCISCO JAVIER DOMÍNGUEZ NIEBLA'),
(35, 6, '', 'LC', 'DOMINGO', 'PROCESAL PENAL', 1, 'FRANCISCO JAVIER DOMÍNGUEZ NIEBLA'),
(36, 7, '', 'LC', 'SABATINO', 'AMPARO II', 1, 'FRANCISCO JAVIER DOMÍNGUEZ NIEBLA'),
(37, 8, '', 'LC', 'SABATINO', 'DELINCUENCIA ASOCIADA', 1, 'FRANCISCO JAVIER DOMÍNGUEZ NIEBLA'),
(38, 4, 'A', 'LD', 'MATUTINO', 'DERECHO CONSTITUCIONAL', 1, 'GABRIELA LETICIA PERALTA GARCÍA'),
(39, 1, '', 'II', 'SABATINO', 'INSTRODUCCIÓN A LA INGENIERÍA INDUSTRIAL', 1, 'IGNACIO AGUSTIN FRANCO ALUCANO'),
(40, 4, '', 'II', 'SABATINO', 'MANUFACTURA DE MATERIALES', 1, 'IGNACIO AGUSTIN FRANCO ALUCANO'),
(41, 3, '', 'LA', 'SABATINO', 'SER HUMANO Y MEDIO HAMBIENTE', 1, 'JESÚS REGALADO AGUILAR'),
(42, 6, '', 'LE', 'DOMINGO', 'SOFTWARE EDUCATIVO', 1, 'JESÚS REGALADO AGUILAR'),
(43, 4, 'A', 'LD', 'MATUTINO', 'DERECHO ADMINISTRATIVO I', 1, 'KARLA BOJORQUEZ GODINEZ'),
(44, 4, '', 'LA', 'SABATINO', 'ADMINISTRACIÓN DE RECURSOS HUMANOS', 1, 'KARLA RAMÍREZ BARÓN'),
(45, 1, '', 'LA', 'SABATINO', 'ADMINISTRACIÓN', 1, 'LETICIA ESPINOZA MARTÍNEZ'),
(46, 4, '', 'LA', 'SABATINO', 'ADMINISTRACIÓN DE PYMES Y FRANQUICIAS', 1, 'LETICIA ESPINOZA MARTÍNEZ'),
(47, 7, '', 'LA', 'SABATINO', 'ADMINISTRACIÓN DE PROYECTOS', 1, 'LETICIA ESPINOZA MARTÍNEZ'),
(48, 1, 'A', 'LA', 'SABATINO', 'CONTABILIDAD FINANCIERA I', 1, 'LIZBETH SARAÍ ÁLVAREZ SÁNCHEZ'),
(49, 4, '', 'LA', 'SABATINO', 'COSTOS', 1, 'LIZBETH SARAÍ ÁLVAREZ SÁNCHEZ'),
(50, 6, '', 'LA', 'DOMINGO', 'LEGISLACIÓN FISCAL INTERNACIONAL', 1, 'LIZBETH SARAÍ ÁLVAREZ SÁNCHEZ'),
(51, 7, 'A', 'LA', 'MATUTINO', 'LEY ADUANERA II', 1, 'LIZBETH SARAÍ ÁLVAREZ SÁNCHEZ'),
(52, 4, 'A', 'LC', 'MATUTINO', 'TEORÍAS DE LA PERSONALIDAD', 1, 'LUCERO LÓPEZ CASTILLO'),
(53, 4, 'A', 'LE', 'MATUTINO', 'PSICOTÉCNICA PEDAGÓGICA', 1, 'LUCERO LÓPEZ CASTILLO'),
(54, 4, '', 'LC', 'SABATINO', 'TEORÍAS DE LA PERSONALIDAD', 1, 'LUCERO LÓPEZ CASTILLO'),
(55, 7, '', 'LC', 'SABATINO', 'EVALUACIÓN CRIMINOLÓGICA', 1, 'LUCERO LÓPEZ CASTILLO'),
(56, 8, '', 'LC', 'SABATINO', 'EVALUACIÓN PSICOLÓGICA', 1, 'LUCERO LÓPEZ CASTILLO'),
(57, 1, 'B', 'LC', 'MATUTINO', 'INTRODUCCIÓN A LAS CIENCIAS JURÍDICAS', 1, 'LUIS GUILLERMO IBARRA ARMENTA'),
(58, 1, '', 'II', 'SABATINO', 'FUNDAMENTOS MATEMÁTICOS PARA LA INGENIERÍA', 1, 'MIGUEL ÁNGEL LÓPEZ LUVIANO'),
(59, 7, '', 'II', 'SABATINO', 'INFERENCIA ESTADÍSTICA', 1, 'MIGUEL ÁNGEL LÓPEZ LUVIANO'),
(60, 1, 'A', 'LN', 'MATUTINO', 'COMUNICACIÓN', 1, 'NATALIA MIRANDA LÓPEZ'),
(61, 4, 'A', 'LM', 'MATUTINO', 'HISTORIA DE LOS MEDIOS AUDIOVISUALES', 1, 'NATALIA MIRANDA LÓPEZ'),
(62, 1, 'A', 'LC', 'MATUTINO', 'CRIMINALÍSTICA GENERAL', 1, 'NORMANDO CALDERÓN ZATARAIN'),
(63, 1, 'B', 'LC', 'MATUTINO', 'CRIMINALÍSTICA GENERAL', 1, 'NORMANDO CALDERÓN ZATARAIN'),
(64, 1, '', 'LC', 'SABATINO', 'CRIMINALÍSTICA GENERAL', 1, 'NORMANDO CALDERÓN ZATARAIN'),
(65, 4, '', 'LC', 'SABATINO', 'BALÍSTICA Y FOTOGRAFÍA FORENSE', 1, 'NORMANDO CALDERÓN ZATARAIN'),
(66, 6, '', 'LC', 'DOMINGO', 'DACTILOSCOPÍA Y GRAFOSCOPÍA', 1, 'NORMANDO CALDERÓN ZATARAIN'),
(67, 1, 'A', 'LD', 'VESPETINO', 'HISTORIA DEL DERECHO MEXICANO', 1, 'OSCAR RICARDO TAPIA BARCENA'),
(68, 1, 'A', 'LA', 'SABATINO', 'LEXICOLOGÍA JURÍDICA', 1, 'OSCAR RICARDO TAPIA BARCENA'),
(69, 1, '', 'LA', 'SABATINO', 'LEXICOLOGÍA JURÍDICA', 1, 'OSCAR RICARDO TAPIA BARCENA'),
(70, 7, '', 'LD', 'SABATINO', 'DERECHO INTERNACIONAL PÚBLICO', 1, 'OSCAR RICARDO TAPIA BARCENA'),
(71, 8, '', 'LA', 'SABATINO', 'MEDIOS ALTERNATIVOS Y SOLUCIÓN DE CONFLICTOS', 1, 'PAOLA ANAHÍ SANDOVAL NAVARRO'),
(72, 4, 'A', 'LA', 'MATUTINO', 'ADMINISTRACIÓN DE PYMES Y FRANQUICIAS', 1, 'PEDRO GARCÍA DÁVILA'),
(73, 8, '', 'LA', 'SABATINO', 'LECCIÓN DE LIDERAZGO', 1, 'PEDRO GARCÍA DÁVILA'),
(74, 4, 'A', 'LC', 'MATUTINO', 'BALÍSTICA Y FOTOGRAFÍA FORENSE', 1, 'RICARDO LARA SALAZAR'),
(75, 4, '', 'II', 'SABATINO', 'ELECTRCIDAD Y MAGNETISMO', 1, 'RODOLFO RENÉ FERNANDEZ RANGEL'),
(76, 1, 'A', 'LA', 'SABATINO', 'ADMINISTRACIÓN', 1, 'RUBÉN ROSAS RAMÍREZ'),
(77, 1, '', 'LA', 'SABATINO', 'ADMINISTRACIÓN', 1, 'RUBÉN ROSAS RAMÍREZ'),
(78, 6, '', 'LA', 'DOMINGO', 'DESARROLLO DE PROVEEDORES', 1, 'RUBÉN ROSAS RAMÍREZ'),
(79, 7, '', 'II', 'SABATINO', 'MODELO DE OPERACIONES I', 1, 'SERGIO ALONSO HERNÁNDEZ CASTILLO'),
(80, 3, '', 'LA', 'SABATINO', 'ANÁLISIS FINANCIERO', 1, 'SERGIO MARTÍNEZ AVIÑA'),
(81, 7, 'A', 'LA', 'MATUTINO', 'AUDITORÍA Y CONSULTORÍA ADMINISTRATIVA', 1, 'SERGIO MARTÍNEZ AVIÑA'),
(82, 7, '', 'LA', 'SABATINO', 'AUDITORÍA Y CONSULTORÍA ADMINISTRATIVA', 1, 'SERGIO MARTÍNEZ AVIÑA'),
(83, 4, '', 'LE', 'SABATINO', 'DIDÁCTICA I', 1, 'SUSANA GÓMEZ SÁNCHEZ'),
(84, 7, '', 'LE', 'SABATINO', 'ORIENTACIÓN EDUCATIVA Y TUTORÍA II', 1, 'SUSANA GÓMEZ SÁNCHEZ'),
(85, 1, 'A', 'LC', 'MATUTINO', 'INTRODUCCIÓN A LAS CIENCIAS JURÍDICAS', 1, 'VICENTE DÍAZ ORTÍZ'),
(86, 1, 'A', 'LD', 'MATUTINO', 'DERECHOR ROMANO I', 1, 'VICENTE DÍAZ ORTÍZ'),
(87, 1, '', 'LA', 'SABATINO', 'LEXICOLOGÍA JURÍDICA', 1, 'VICENTE DÍAZ ORTÍZ');

-- --------------------------------------------------------

--
-- Table structure for table `docentes`
--

CREATE TABLE `docentes` (
  `id_docentes` int(3) NOT NULL,
  `Docente` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `curso` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Cuestionario_resuelto` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `estudiantes`
--

CREATE TABLE `estudiantes` (
  `id_estudiante` int(4) NOT NULL,
  `nombre_completo` varchar(100) DEFAULT NULL,
  `usuario` varchar(21) DEFAULT NULL,
  `password` varchar(21) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `campus` varchar(3) DEFAULT NULL,
  `carrera` varchar(2) DEFAULT NULL,
  `status_curso1` tinyint(1) NOT NULL,
  `id_curso_1` int(3) DEFAULT NULL,
  `status_curso2` tinyint(1) NOT NULL,
  `id_curso_2` int(3) DEFAULT NULL,
  `status_curso3` tinyint(1) NOT NULL,
  `id_curso_3` int(3) DEFAULT NULL,
  `status_servicios` tinyint(1) NOT NULL,
  `status_instalaciones` tinyint(1) NOT NULL,
  `cuatrimestre` int(2) DEFAULT NULL,
  `turno` varchar(1) DEFAULT NULL,
  `grupo` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `estudiantes`
--

INSERT INTO `estudiantes` (`id_estudiante`, `nombre_completo`, `usuario`, `password`, `email`, `campus`, `carrera`, `status_curso1`, `id_curso_1`, `status_curso2`, `id_curso_2`, `status_curso3`, `id_curso_3`, `status_servicios`, `status_instalaciones`, `cuatrimestre`, `turno`, `grupo`) VALUES
(1, 'MARIA FERNANDA ARIAS GARCIA', 'maria.arias', '#Laeylm20001', 'alumno.maria.arias@universidaddeensenada.edu.mx', 'ENS', 'LA', 1, 1, 0, 2, 0, 0, 0, 0, 4, 'M', 'A'),
(2, 'ERIKA ENCINES GONZALEZ', 'erika.encines', '#Laeylm20003', 'alumno.erika.encines@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 1, 0, 2, 0, 0, 0, 0, 4, 'M', 'A'),
(3, 'JOSE ANTONIO FERRER SANDOVAL', 'jose.ferrer', '#Laeylm20004', 'alumno.jose.ferrer@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 1, 0, 2, 0, 0, 0, 0, 4, 'M', 'A'),
(4, 'FERNANDO GAMA BARRERA', 'fernando.gama', '#Laeylm20005', 'alumno.fernando.gama@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 1, 0, 2, 0, 0, 0, 0, 4, 'M', 'A'),
(5, 'JAZAEL GUADALUPE GUILLEN GARCIA', 'jazael.guillen', '#Laeylm20007', 'alumno.jazael.guillen@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 1, 0, 2, 0, 0, 0, 0, 4, 'M', 'A'),
(6, 'ATANIEL GUTIERREZ LOZANO', 'ataniel.gutierrez', '#Laeylm20008', 'alumno.ataniel.gutierrez@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 1, 0, 2, 0, 0, 0, 0, 4, 'M', 'A'),
(7, 'ANAKAREN CRUZ MICHEL LUNA', 'anakaren.michel', '#Laeylm20013', 'alumno.anakaren.michel@universidaddeensenada.edu.mx', 'ENS', 'LA', 1, 1, 0, 2, 0, 5, 0, 0, 4, 'M', 'A'),
(8, 'JESUS CRISTOBAL OSUNA HERNANDEZ', 'jesus.osuna', '#Laeylm20014', 'alumno.jesus.osuna@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 1, 0, 2, 0, 0, 0, 0, 4, 'M', 'A'),
(9, 'OLIVER FERNANDO PEÑA RODRIGUEZ', 'oliver.pena', '#Laeylm20015', 'alumno.oliver.pena@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 1, 0, 2, 0, 0, 0, 0, 4, 'M', 'A'),
(10, 'ITZELA MARITZA SOTO CARDENAS', 'itzela.soto', '#Laeylm20017', 'alumno.itzela.soto@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 1, 0, 2, 0, 0, 0, 0, 4, 'M', 'A'),
(11, 'BERENICE VAZQUEZ CARLOS', 'berenice.vazquez', '#Laeylm20018', 'alumno.berenice.vazquez@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 1, 0, 2, 0, 0, 0, 0, 4, 'M', 'A'),
(12, 'LIZETE CORRAL CORRAL', 'lizete.corral', '#Laeylm19001', 'alumno.lizete.corral@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 3, 0, 4, 0, 0, 0, 0, 7, 'M', 'A'),
(13, 'GERARDO ADRIAN FLORES PEINADO', 'gerardo.flores', '#Laeylm19002', 'alumno.gerardo.flores@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 3, 0, 4, 0, 0, 0, 0, 7, 'M', 'A'),
(14, 'NARALHY ADILEN IÑIGUEZ GUIDO', 'naralhy.iniguez', '#Laeylm19003', 'alumno.naralhy.iniguez@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 3, 0, 4, 0, 0, 0, 0, 7, 'M', 'A'),
(15, 'JORGE MANUEL LOPEZ MEZA', 'jorge.lopez', '#Laeylm19004', 'alumno.jorge.lopez@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 3, 0, 4, 0, 0, 0, 0, 7, 'M', 'A'),
(16, 'YESSICA VIVIANA MUÑOZ AGUNDEZ', 'yessica.munoz', '#Laeylm19005', 'alumno.yessica.munoz@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 3, 0, 4, 0, 0, 0, 0, 7, 'M', 'A'),
(17, 'JOSE ANTONIO ORDUÑA BELTRAN', 'jose.orduna', '#Laeylm19006', 'alumno.jose.orduna@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 3, 0, 4, 0, 0, 0, 0, 7, 'M', 'A'),
(18, 'MARIA DOLORES RANGEL ARAMBULA', 'maria.rangel', '#Laeylm190s7', 'alumno.maria.rangel@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 3, 0, 4, 0, 0, 0, 0, 7, 'M', 'A'),
(19, 'CRISTAL RUBIO GUTIERREZ', 'cristal.rubio', '#Laeylm19008', 'alumno.cristal.rubio@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 3, 0, 4, 0, 0, 0, 0, 7, 'M', 'A'),
(20, 'CLAUDIA DENISSE BERNAL CASTILLO', 'claudia.bernal', '#ENSLCCLBE21i', 'alumno.claudia.bernal@universidaddeensenada.edu.mx', 'ENS', 'LC', 0, 5, 0, 6, 0, 0, 0, 0, 1, 'M', 'A'),
(21, 'LESLY NALLELY CARDENAZ BARAJAS', 'lesly.cardenaz', '#ENSLCLECA21n', 'alumno.lesly.cardenaz@universidaddeensenada.edu.mx', 'ENS', 'LC', 0, 5, 0, 6, 0, 0, 0, 0, 1, 'M', 'A'),
(22, 'EDGRIT MERARI CESENA GARCIA', 'edgrit.cesena', '#ENSLCEDCE21n', 'alumno.edgrit.cesena@universidaddeensenada.edu.mx', 'ENS', 'LC', 0, 5, 0, 6, 0, 0, 0, 0, 1, 'M', 'A'),
(23, 'JUAN DAVID CONTRERAS NOLASCO', 'juan.contreras', '#ENSLCJUCO21m', 'alumno.juan.contreras@universidaddeensenada.edu.mx', 'ENS', 'LC', 0, 5, 0, 6, 0, 0, 0, 0, 1, 'M', 'A'),
(24, 'FERNANDO ISAI CORTES PEREZ', 'fernando.cortes', '#ENSLCFECO21w', 'alumno.fernando.cortes@universidaddeensenada.edu.mx', 'ENS', 'LC', 0, 5, 0, 6, 0, 0, 0, 0, 1, 'M', 'A'),
(25, 'AZENETH CRUZ CIGARROA', 'azeneth.cruz', '#ENSLCAZCR21s', 'alumno.azeneth.cruz@universidaddeensenada.edu.mx', 'ENS', 'LC', 0, 5, 0, 6, 0, 0, 0, 0, 1, 'M', 'A'),
(26, 'DULCE ADRIANA DELGADO HERNANDEZ', 'dulce.delgado', '#ENSLCDUDE21t', 'alumno.dulce.delgado@universidaddeensenada.edu.mx', 'ENS', 'LC', 0, 5, 0, 6, 0, 0, 0, 0, 1, 'M', 'A'),
(27, 'OLIVIER FAVELA COLIN', 'olivier.favela', '#ENSLCOLFA21j', 'alumno.olivier.favela@universidaddeensenada.edu.mx', 'ENS', 'LC', 0, 5, 0, 6, 0, 0, 0, 0, 1, 'M', 'A'),
(28, 'HUGO ANTONIO HERNANDEZ LOMELI', 'hugo.hernandez', '#ENSLCHUHE21x', 'alumno.hugo.hernandez@universidaddeensenada.edu.mx', 'ENS', 'LC', 0, 5, 0, 6, 0, 0, 0, 0, 1, 'M', 'A'),
(29, 'TERESA HERNANDEZ MORALES', 'teresa.hernandez', '#ENSLCTEHE21o', 'alumno.teresa.hernandez@universidaddeensenada.edu.mx', 'ENS', 'LC', 0, 5, 0, 6, 0, 0, 0, 0, 1, 'M', 'A'),
(30, 'SELENA HERNANDEZ RAMIREZ', 'selena.hernandez', '#ENSLCSEHE21w', 'alumno.selena.hernandez@universidaddeensenada.edu.mx', 'ENS', 'LC', 0, 5, 0, 6, 0, 0, 0, 0, 1, 'M', 'A'),
(31, 'ALFREDO PACHECO GARCIA', 'alfredo.pacheco', '#ENSLCALPA21e', 'alumno.alfredo.pacheco@universidaddeensenada.edu.mx', 'ENS', 'LC', 0, 7, 0, 8, 0, 0, 0, 0, 1, 'M', 'B'),
(32, 'YOALI HANNIL PEREZ MURILLO', 'yoali.perez', '#ENSLCYOPE21e', 'alumno.yoali.perez@universidaddeensenada.edu.mx', 'ENS', 'LC', 0, 7, 0, 8, 0, 0, 0, 0, 1, 'M', 'B'),
(33, 'FERNANDA RODRIGUEZ HERMOSILLO', 'fernanda.rodriguez', '#ENSLCFERO21f', 'alumno.fernanda.rodriguez@universidaddeensenada.edu.mx', 'ENS', 'LC', 0, 7, 0, 8, 0, 0, 0, 0, 1, 'M', 'B'),
(34, 'YURITZY YAMILETH ROSAS CONTRERAS', 'yuritzy.rosas', '#ENSLCYURO21j', 'alumno.yuritzy.rosas@universidaddeensenada.edu.mx', 'ENS', 'LC', 0, 7, 0, 8, 0, 0, 0, 0, 1, 'M', 'B'),
(35, 'JENNIFER SANCHEZ FUENTES', 'jennifer.sanchez', '#ENSLCJESA21i', 'alumno.jennifer.sanchez@universidaddeensenada.edu.mx', 'ENS', 'LC', 0, 7, 0, 8, 0, 0, 0, 0, 1, 'M', 'B'),
(36, 'KAREN PAOLA SANCHEZ SICAIROS', 'karen.sanchez', '#ENSLCKASA21f', 'alumno.karen.sanchez@universidaddeensenada.edu.mx', 'ENS', 'LC', 0, 7, 0, 8, 0, 0, 0, 0, 1, 'M', 'B'),
(37, 'GUSTAVO TETLALMATZI PEREZ', 'gustavo.tetlalmatzi', '#ENSLCGUTE21h', 'alumno.gustavo.tetlalmatzi@universidaddeensenada.edu.mx', 'ENS', 'LC', 0, 7, 0, 8, 0, 0, 0, 0, 1, 'M', 'B'),
(38, 'GLORIA AMAIRANI GUTIERREZ MOLDRANO', 'ggutierrez', '#ENSLCGLGU21e', 'alumno.ggutierrez@universidaddeensenada.edu.mx', 'ENS', 'LC', 0, 7, 0, 8, 0, 0, 0, 0, 1, 'M', 'B'),
(39, 'ALONDRA JACKELINE ANGULO RUIZ', 'alondra.angulo', '#Lcm20001', 'alumno.alondra.angulo@universidaddeensenada.edu.mx', 'ENS', 'LC', 0, 9, 0, 10, 0, 0, 0, 0, 4, 'M', 'A'),
(40, 'ROXANA MELANI CADENA HERNANDEZ', 'roxana.cadena', '#Lcm20003', 'alumno.roxana.cadena@universidaddeensenada.edu.mx', 'ENS', 'LC', 0, 9, 0, 10, 0, 0, 0, 0, 4, 'M', 'A'),
(41, 'RONNY CAMACHO CASTRO', 'ronny.camacho', '#Lcm20004', 'alumno.ronny.camacho@universidaddeensenada.edu.mx', 'ENS', 'LC', 0, 9, 0, 10, 0, 0, 0, 0, 4, 'M', 'A'),
(42, 'VICTOR MANUEL GOMEZ RAIGOZA', 'victor.gomez', '#Lcm20006', 'alumno.victor.gomez@universidaddeensenada.edu.mx', 'ENS', 'LC', 0, 9, 0, 10, 0, 0, 0, 0, 4, 'M', 'A'),
(43, 'JAVIER ADRIAN GUTIERREZ FLORES', 'javier.gutierrez', '#Lcm20007', 'alumno.javier.gutierrez@universidaddeensenada.edu.mx', 'ENS', 'LC', 0, 9, 0, 10, 0, 0, 0, 0, 4, 'M', 'A'),
(44, 'RICARDO IBARRA GARCIA', 'ricardo.ibarra', '#Lcm20009', 'alumno.ricardo.ibarra@universidaddeensenada.edu.mx', 'ENS', 'LC', 0, 9, 0, 10, 0, 0, 0, 0, 4, 'M', 'A'),
(45, 'YANET IRAIZ VELASCO RUIZ', 'yanet.velasco', '#Lcm20016', 'alumno.yanet.velasco@universidaddeensenada.edu.mx', 'ENS', 'LC', 0, 9, 0, 10, 0, 0, 0, 0, 4, 'M', 'A'),
(46, 'ADILENE VILLAVICENCIO VILLA', 'adilene.villavicencio', '#Lcm20018', 'alumno.adilene.villavicencio@universidaddeensenada.edu.mx', 'ENS', 'LC', 0, 9, 0, 10, 0, 0, 0, 0, 4, 'M', 'A'),
(47, 'KARLA LIZBETH ACHOY VALDEZ', 'karla.achoy', '#ENSLEKAAC21f', 'alumno.karla.achoy@universidaddeensenada.edu.mx', 'ENS', 'LE', 0, 11, 0, 12, 0, 0, 0, 0, 1, 'M', 'A'),
(48, 'MARBELLA ARENIVAR RIOS', 'marbella.arenivar', '#ENSLEMAAR21e', 'alumno.marbella.arenivar@universidaddeensenada.edu.mx', 'ENS', 'LE', 0, 11, 0, 12, 0, 0, 0, 0, 1, 'M', 'A'),
(49, 'MELANY BECERRA AVILA', 'melany.becerra', '#ENSLEMEBE21c', 'alumno.melany.becerra@universidaddeensenada.edu.mx', 'ENS', 'LE', 0, 11, 0, 12, 0, 0, 0, 0, 1, 'M', 'A'),
(50, 'SAMAI CRUZ DE LA TOBA', 'samai.cruz', '#ENSLELACR21a', 'alumno.samai.cruz@universidaddeensenada.edu.mx', 'ENS', 'LE', 0, 11, 0, 12, 0, 0, 0, 0, 1, 'M', 'A'),
(51, 'RUBEN ISSAC DIAZ FIERROS', 'ruben.diaz', '#ENSLERUDI21q', 'alumno.ruben.diaz@universidaddeensenada.edu.mx', 'ENS', 'LE', 0, 11, 0, 12, 0, 0, 0, 0, 1, 'M', 'A'),
(52, 'CRISTABEL GALAVIZ NEGRETE', 'cristabel.galaviz', '#ENSLECRGA21e', 'alumno.cristabel.galaviz@universidaddeensenada.edu.mx', 'ENS', 'LE', 0, 11, 0, 12, 0, 0, 0, 0, 1, 'M', 'A'),
(53, 'SAHARY GUADALUPE GARIBO NORIEGA', 'sahary.garibo', '#ENSLESAGA21u', 'alumno.sahary.garibo@universidaddeensenada.edu.mx', 'ENS', 'LE', 0, 11, 0, 12, 0, 0, 0, 0, 1, 'M', 'A'),
(54, 'DAFNE GISELL LUNA JIMENEZ', 'dafne.luna', '#ENSLEDALU21y', 'alumno.dafne.luna@universidaddeensenada.edu.mx', 'ENS', 'LE', 0, 11, 0, 12, 0, 0, 0, 0, 1, 'M', 'A'),
(55, 'ADRIANA SELENE MERAZ CALZADA', 'adriana.meraz', '#ENSLEADME21w', 'alumno.adriana.meraz@universidaddeensenada.edu.mx', 'ENS', 'LE', 0, 11, 0, 12, 0, 0, 0, 0, 1, 'M', 'A'),
(56, 'DANIA NAITSIRIHC OROZCO GALARZA', 'dania.orozco', '#ENSLEDAOR21d', 'alumno.dania.orozco@universidaddeensenada.edu.mx', 'ENS', 'LE', 0, 11, 0, 12, 0, 0, 0, 0, 1, 'M', 'A'),
(57, 'ITZAMN MOCTEZUMA PACHECO LARIOS', 'itzamn.pacheco', '#ENSLEITME21r', 'alumno.itzamn.pacheco@universidaddeensenada.edu.mx', 'ENS', 'LE', 0, 11, 0, 12, 0, 0, 0, 0, 1, 'M', 'A'),
(58, 'VIVIANA VANESSA RIVERO FLORES', 'viviana.rivero', '#ENSLEVIRI21r', 'alumno.viviana.rivero@universidaddeensenada.edu.mx', 'ENS', 'LE', 0, 11, 0, 12, 0, 0, 0, 0, 1, 'M', 'A'),
(59, 'ANGELES IRIDIAN RODELO MEDINA', 'angeles.rodelo', '#ENSLEANRO21c', 'alumno.angeles.rodelo@universidaddeensenada.edu.mx', 'ENS', 'LE', 0, 11, 0, 12, 0, 0, 0, 0, 1, 'M', 'A'),
(60, 'DANIELA ABIGAIL SAMANIEGO CASTANEDA', 'daniela.samaniego', '#ENSLEDASA21c', 'alumno.daniela.samaniego@universidaddeensenada.edu.mx', 'ENS', 'LE', 0, 11, 0, 12, 0, 0, 0, 0, 1, 'M', 'A'),
(61, 'CLAUDIA PAULINA SAVALA RADILLA', 'claudia.savala', '#ENSLECLSA21s', 'alumno.claudia.savala@universidaddeensenada.edu.mx', 'ENS', 'LE', 0, 11, 0, 12, 0, 0, 0, 0, 1, 'M', 'A'),
(62, 'TRIANA ISELA ACUÑA ORTEGA', 'triana.acuna', '#Lcem20001', 'alumno.triana.acuna@universidaddeensenada.edu.mx', 'ENS', 'LE', 0, 13, 0, 14, 0, 0, 0, 0, 4, 'M', 'A'),
(63, 'ALONDRA GUADALUPE FISCHER LOPEZ', 'alondra.fischer', '#Lcem20003', 'alumno.alondra.fischer@universidaddeensenada.edu.mx', 'ENS', 'LE', 0, 13, 0, 14, 0, 0, 0, 0, 4, 'M', 'A'),
(64, 'MIRIAM LETICIA MARIN COTA', 'miriam.marin', '#Lcem20004', 'alumno.miriam.marin@universidaddeensenada.edu.mx', 'ENS', 'LE', 0, 13, 0, 14, 0, 0, 0, 0, 4, 'M', 'A'),
(65, 'ERIK GIOVANI MARTINEZ NOYOLA', 'erik.martinez', '#Lcem20005', 'alumno.erik.martinez@universidaddeensenada.edu.mx', 'ENS', 'LE', 0, 13, 0, 14, 0, 0, 0, 0, 4, 'M', 'A'),
(66, 'ESMERALDA QUEZADA SANCHEZ', 'esmeralda.quezada', '#Lcem20007', 'alumno.esmeralda.quezada@universidaddeensenada.edu.mx', 'ENS', 'LE', 0, 13, 0, 14, 0, 0, 0, 0, 4, 'M', 'A'),
(67, 'JOSE MANUEL RAMIREZ ZEPEDA', 'jose.ramirez', '#Lcem200s8', 'alumno.jose.ramirez@universidaddeensenada.edu.mx', 'ENS', 'LE', 0, 13, 0, 14, 0, 0, 0, 0, 4, 'M', 'A'),
(68, 'ANA LIDIA RIVERA SALOMON', 'ana.rivera', '#Lcem20009', 'alumno.ana.rivera@universidaddeensenada.edu.mx', 'ENS', 'LE', 0, 13, 0, 14, 0, 0, 0, 0, 4, 'M', 'A'),
(69, 'YANNYA MICHELLE ROJAS OLACHEA', 'yannya.rojas', '#Lcem20011', 'alumno.yannya.rojas@universidaddeensenada.edu.mx', 'ENS', 'LE', 0, 13, 0, 14, 0, 0, 0, 0, 4, 'M', 'A'),
(70, 'MANUEL SALVADOR TOVAR MENDOZA', 'manuel.tovar', '#Lcem19006', 'alumno.manuel.tovar@universidaddeensenada.edu.mx', 'ENS', 'LE', 0, 13, 0, 14, 0, 0, 0, 0, 4, 'M', 'A'),
(71, 'GRECIA MARIA AGUIRRE GUTIERREZ', 'grecia.aguirre', '#ENSLDGRAG21h', 'alumno.grecia.aguirre@universidaddeensenada.edu.mx', 'ENS', 'LD', 0, 15, 0, 16, 0, 0, 0, 0, 1, 'M', 'A'),
(72, 'DENISSE ANADELY CISNEROS GUTIERREZ', 'denisse.cisneros', '#ENSLDDECI21u', 'alumno.denisse.cisneros@universidaddeensenada.edu.mx', 'ENS', 'LD', 0, 15, 0, 16, 0, 0, 0, 0, 1, 'M', 'A'),
(73, 'GERARDO DE LA GARZA DEL TORO', 'gdelagarza', '#ENSLDGEDE21j', 'alumno.gdelagarza@universidaddeensenada.edu.mx', 'ENS', 'LD', 0, 15, 0, 16, 0, 0, 0, 0, 1, 'M', 'A'),
(74, 'SAYRA ARELY FLORES RODRIGUEZ', 'sayra.flores', '#ENSLDSAFL21y', 'alumno.sayra.flores@universidaddeensenada.edu.mx', 'ENS', 'LD', 0, 15, 0, 16, 0, 0, 0, 0, 1, 'M', 'A'),
(75, 'RUTH LUCERO HERNANDEZ PACHECO', 'ruth.hernandez', '#ENSLDRUHE21g', 'alumno.ruth.hernandez@universidaddeensenada.edu.mx', 'ENS', 'LD', 0, 15, 0, 16, 0, 0, 0, 0, 1, 'M', 'A'),
(76, 'DEISY NOEMI JUAREZ AVALOS', 'deisy.juarez', '#ENSLDDEJU21h', 'alumno.deisy.juarez@universidaddeensenada.edu.mx', 'ENS', 'LD', 0, 15, 0, 16, 0, 0, 0, 0, 1, 'M', 'A'),
(77, 'MIGUEL URIEL TORRES AGUIRRE', 'miguel.torres', '#ENSLDMITO21l', 'alumno.miguel.torres@universidaddeensenada.edu.mx', 'ENS', 'LD', 0, 15, 0, 16, 0, 0, 0, 0, 1, 'M', 'A'),
(78, 'VALERIA VILLALOBOS MARTINEZ', 'valeria.villalobos', '#ENSLDVAVI21r', 'alumno.valeria.villabos@universidaddeensenada.edu.mx', 'ENS', 'LD', 0, 15, 0, 16, 0, 0, 0, 0, 1, 'M', 'A'),
(79, 'YAICHI VIZCARRA KONISHI', 'yaichi.vizcarra', '#ENSLDYAVI21a', 'alumno.yaichi.vizcarra@universidaddeensenada.edu.mx', 'ENS', 'LD', 0, 15, 0, 16, 0, 0, 0, 0, 1, 'M', 'A'),
(80, 'MAYRA ESTHER AGUILAR GONZALEZ', 'mayra.aguilar', '#Ldm20001', 'alumno.mayra.aguilar@universidaddeensenada.edu.mx', 'ENS', 'LD', 0, 17, 0, 18, 0, 0, 0, 0, 4, 'M', 'A'),
(81, 'ALEJANDRO CAMARENA ARCE', 'alejandro.camarena', '#Ldm20003', 'alumno.alejandro.camarena@universidaddeensenada.edu.mx', 'ENS', 'LD', 0, 17, 0, 18, 0, 0, 0, 0, 4, 'M', 'A'),
(82, 'CARLOS ANTONIO CID MURILLO', 'carlos.cid', '#Ldm20005', 'alumno.carlos.cid@universidaddeensenada.edu.mx', 'ENS', 'LD', 0, 17, 0, 18, 0, 0, 0, 0, 4, 'M', 'A'),
(83, 'JESUS ELEAZAR COTA ORNELAS', 'jesus.cota', '#Ldm19004', 'alumno.jesus.cota@universidaddeensenada.edu.mx', 'ENS', 'LD', 0, 17, 0, 18, 0, 0, 0, 0, 4, 'M', 'A'),
(84, 'BLANCA ESTELA CRUZ RIOS', 'blanca.cruz', '#Lds20003', 'alumno.blanca.cruz@universidaddeensenada.edu.mx', 'ENS', 'LD', 0, 17, 0, 18, 0, 0, 0, 0, 4, 'M', 'A'),
(85, 'YADZURI ITZEL FLORES PEREZ', 'yadzuri.flores', '#Ldm20006', 'alumno.yadzuri.flores@universidaddeensenada.edu.mx', 'ENS', 'LD', 0, 17, 0, 18, 0, 0, 0, 0, 4, 'M', 'A'),
(86, 'CARMEN ADILENE GARCIA ARELLANO', 'carmen.garcia', '#Ldm20007', 'alumno.carmen.garcia@universidaddeensenada.edu.mx', 'ENS', 'LD', 0, 17, 0, 18, 0, 0, 0, 0, 4, 'M', 'A'),
(87, 'IVAN GARRIDO TOLEDO', 'ivan.garrido', '#Ldm20008', 'alumno.ivan.garrido@universidaddeensenada.edu.mx', 'ENS', 'LD', 0, 17, 0, 18, 0, 0, 0, 0, 4, 'M', 'A'),
(88, 'LIZMIN JOHANA MEDINA MEDRANO', 'lizmin.medina', '#Lds20005', 'alumno.lizmin.medina@universidaddeensenada.edu.mx', 'ENS', 'LD', 0, 17, 0, 18, 0, 0, 0, 0, 4, 'M', 'A'),
(89, 'EDUARDO JOVANI MEDINA MEJIA', 'eduardo.medina', '#Ldm19006', 'alumno.eduardo.medina@universidaddeensenada.edu.mx', 'ENS', 'LD', 0, 17, 0, 18, 0, 0, 0, 0, 4, 'M', 'A'),
(90, 'YESIKA ITZEL ORTEGA KALYTKA', 'yesika.ortega', '#Ldm20009', 'alumno.yesika.ortega@universidaddeensenada.edu.mx', 'ENS', 'LD', 0, 17, 0, 18, 0, 0, 0, 0, 4, 'M', 'A'),
(91, 'VALERIA GUADALUPE PALACIO ALVAREZ', 'valeria.palacio', '#Ldm20010', 'alumno.valeria.palacio@universidaddeensenada.edu.mx', 'ENS', 'LD', 0, 17, 0, 18, 0, 0, 0, 0, 4, 'M', 'A'),
(92, 'ADRIANA VANESSA PRADO RAMIREZ', 'adriana.prado', '#Ldm20011', 'alumno.adriana.prado@universidaddeensenada.edu.mx', 'ENS', 'LD', 0, 17, 0, 18, 0, 0, 0, 0, 4, 'M', 'A'),
(93, 'ANGEL ROSALIO SANCHEZ VILLALOBOS', 'angel.sanchez', '#Ldm20012', 'alumno.angel.sanchez@universidaddeensenada.edu.mx', 'ENS', 'LD', 0, 17, 0, 18, 0, 0, 0, 0, 4, 'M', 'A'),
(94, 'FERNANDA GUADALUPE SANDOVAL ORTIZ', 'fernanda.sandoval', '#Lds20007', 'alumno.fernanda.sandoval@universidaddeensenada.edu.mx', 'ENS', 'LD', 0, 17, 0, 18, 0, 0, 0, 0, 4, 'M', 'A'),
(95, 'ZULEMA TORRES ARREOLA', 'zulema.torres', '#Ldm20013', 'alumno.zulema.torres@universidaddeensenada.edu.mx', 'ENS', 'LD', 0, 17, 0, 18, 0, 0, 0, 0, 4, 'M', 'A'),
(96, 'JORGE JESUS VEGA ZAVALA', 'jorge.vega', '#Ldm20014', 'alumno.jorge.vega@universidaddeensenada.edu.mx', 'ENS', 'LD', 0, 17, 0, 18, 0, 0, 0, 0, 4, 'M', 'A'),
(97, 'JAQUELINE ARAUJO REVELES', 'jaqueline.araujo', '#ENSLNJAAR21x', 'alumno.jaqueline.araujo@universidaddeensenada.edu.mx', 'ENS', 'LN', 0, 19, 0, 20, 0, 0, 0, 0, 1, 'M', 'A'),
(98, 'EDUARDO JOSEMIR BAUTISTA LIZAOLA', 'eduardo.bautista', '#ENSLNEDBA21t', 'alumno.eduardo.bautista@universidaddeensenada.edu.mx', 'ENS', 'LN', 0, 19, 0, 20, 0, 0, 0, 0, 1, 'M', 'A'),
(99, 'FEIVEL JOUVENEL BORGES SANCHEZ', 'feivel.borges', '#Ldm20002', 'alumno.feivel.borges@universidaddeensenada.edu.mx', 'ENS', 'LN', 0, 19, 0, 20, 0, 0, 0, 0, 1, 'M', 'A'),
(100, 'JUAN CARLOS COTA VAZQUEZ', 'juan.cota', '#ENSLNJUCO21p', 'alumno.juan.cota@universidaddeensenada.edu.mx', 'ENS', 'LN', 0, 19, 0, 20, 0, 0, 0, 0, 1, 'M', 'A'),
(101, 'CECILIA MARIA GAYTAN VEGA', 'cecilia.gaytan', '#ENSLNCEGA21n', 'alumno.cecilia.gaytan@universidaddeensenada.edu.mx', 'ENS', 'LN', 0, 19, 0, 20, 0, 0, 0, 0, 1, 'M', 'A'),
(102, 'ITZEL LAMARQUE ABOITE', 'itzel.lamarque', '#ENSLAITLA21i', 'alumno.itzel.lamarque@universidaddeensenada.edu.mx', 'ENS', 'LN', 0, 19, 0, 20, 0, 0, 0, 0, 1, 'M', 'A'),
(103, 'KETHZYA NAOMI MICHEL GARCIA', 'kethzya.michel', '#ENSLNKEMI21g', 'alumno.kethzya.michel@universidaddeensenada.edu.mx', 'ENS', 'LN', 0, 19, 0, 20, 0, 0, 0, 0, 1, 'M', 'A'),
(104, 'ANGEL DAVID OCHOA ACEVES', 'angel.ochoa', '#ENSLNANOC21s', 'alumno.angel.ochoa@universidaddeensenada.edu.mx', 'ENS', 'LN', 0, 19, 0, 20, 0, 0, 0, 0, 1, 'M', 'A'),
(105, 'ARELY GUADALUPE RAMOS ROSAS', 'arely.ramos', '#ENSLNARRA21r', 'alumno.arely.ramos@universidaddeensenada.edu.mx', 'ENS', 'LN', 0, 19, 0, 20, 0, 0, 0, 0, 1, 'M', 'A'),
(106, 'MARIANA SALEM SANTIAGO ESTUDILLO', 'mariana.santiago', '#ENSLNMASA21l', 'alumno.mariana.santiago@universidaddeensenada.edu.mx', 'ENS', 'LN', 0, 19, 0, 20, 0, 0, 0, 0, 1, 'M', 'A'),
(107, 'CHRISTIAN MICHAEL RUBIO TRIGUEROS GONZALEZ', 'ctrigueros', '#ENSLNCRTR21z', 'alumno.ctrigueros@universidaddeensenada.edu.mx', 'ENS', 'LN', 0, 19, 0, 20, 0, 0, 0, 0, 1, 'M', 'A'),
(108, 'JAZMIN ARACELY FLORES TRUJILLO', 'jazmin.flores', '#ENSLMJAFL21d', 'alumno.jazmin.flores@universidaddeensenada.edu.mx', 'ENS', 'LM', 0, 21, 0, 22, 0, 0, 0, 0, 1, 'M', 'A'),
(109, 'LEONARDO MONTOYA GODINEZ', 'leonardo.montoya', '#ENSLMLEMO21g', 'alumno.leonardo.montoya@universidaddeensenada.edu.mx', 'ENS', 'LM', 0, 21, 0, 22, 0, 0, 0, 0, 1, 'M', 'A'),
(110, 'PAUL ALFREDO MONTOYA GODINEZ', 'pmontoya', '#ENSLMPAMO21d', 'alumno.pmontoya@universidaddeensenada.edu.mx', 'ENS', 'LM', 0, 21, 0, 22, 0, 0, 0, 0, 1, 'M', 'A'),
(111, 'ALBERTO NAVARRO MUNOZ', 'alberto.navarro', '#ENSLMALNA21h', 'alumno.alberto.navarro@universidaddeensenada.edu.mx', 'ENS', 'LM', 0, 21, 0, 22, 0, 0, 0, 0, 1, 'M', 'A'),
(112, 'CARLOS ALBERTO ARCE FALCON', 'carlos.arce', '#ENSLECAAR18t', 'alumno.carlos.arce@universidaddeensenada.edu.mx', 'ENS', 'LE', 0, 23, 0, 24, 0, 0, 0, 0, 7, 'V', 'A'),
(113, 'MIGUEL DAVID AYALA PAREDES', 'miguel.ayala', '#ENSLEMIAY18y', 'alumno.miguel.ayala@universidaddeensenada.edu.mx', 'ENS', 'LE', 0, 23, 0, 24, 0, 0, 0, 0, 7, 'V', 'A'),
(114, 'ANTONIO CASAS ORTEGA', 'antonio.casas', '#ENSLEANCA18f', 'alumno.antonio.casas@universidaddeensenada.edu.mx', 'ENS', 'LE', 0, 23, 0, 24, 0, 0, 0, 0, 7, 'V', 'A'),
(115, 'SEBASTIAN DETRELL BUENROSTRO', 'sebatian.detrell', '#ENSLESEDE18p', 'alumno.sebastian.detrell@universidaddeensenada.edu.mx', 'ENS', 'LE', 0, 23, 0, 24, 0, 0, 0, 0, 7, 'V', 'A'),
(116, 'KAREN GARCIA CASTRO', 'kgarcia', '#ENSLEKAGA18x', 'alumno.karen.garcia@universidaddeensenada.edu.mx', 'ENS', 'LE', 0, 23, 0, 24, 0, 0, 0, 0, 7, 'V', 'A'),
(117, 'ROSALBA GARCIA DEL ANGEL', 'rosalba.garcia', '#ENSLEROGA18u', 'alumno.rosalba.garcia@universidaddeensenada.edu.mx', 'ENS', 'LE', 0, 23, 0, 24, 0, 0, 0, 0, 7, 'V', 'A'),
(118, 'DANIEL LOPEZ MARTINEZ', 'dlopez', '#ENSLEDALO18q', 'alumno.dlopez@universidaddeensenada.edu.mx', 'ENS', 'LE', 0, 23, 0, 24, 0, 0, 0, 0, 7, 'V', 'A'),
(119, 'EDGARDO ANTONIO MANRIQUEZ MEZA', 'edgardo.manriquez', '#ENSLEEDMA18x', 'alumno.edgardo.manriquez@universidaddeensenada.edu.mx', 'ENS', 'LE', 0, 23, 0, 24, 0, 0, 0, 0, 7, 'V', 'A'),
(120, 'ALEXIA LIZETH SALAS SANCHEZ', 'alexia.salas', '#ENSLEALSA18e', 'alumno.alexia.salas@universidaddeensenada.edu.mx', 'ENS', 'LE', 0, 23, 0, 24, 0, 0, 0, 0, 7, 'V', 'A'),
(121, 'CARLOS RAFAEL SUAREZ TAMAYO', 'carlos.suarez', '#ENSLECASU18r', 'alumno.carlos.suarez@universidaddeensenada.edu.mx', 'ENS', 'LE', 0, 23, 0, 24, 0, 0, 0, 0, 7, 'V', 'A'),
(122, 'VANIA MARIELA SUAREZ TAMAYO', 'vania.suarez', '#ENSLEVASU18s', 'alumno.vania.suarez@universidaddeensenada.edu.mx', 'ENS', 'LE', 0, 23, 0, 24, 0, 0, 0, 0, 7, 'V', 'A'),
(123, 'KATIA GISSEL AGUIRRE MEJIA', 'katia.aguirre', '#ENSLDKAAG21z', 'alumno.katia.aguirre@universidaddeensenada.edu.mx', 'ENS', 'LD', 0, 25, 0, 26, 0, 0, 0, 0, 1, 'V', 'A'),
(124, 'BRYAN ANTONIO ALCARAZ WILLIS', 'bryan.alcaraz', '#ENSLDBRAL21c', 'alumno.bryan.alcaraz@universidaddeensenada.edu.mx', 'ENS', 'LD', 0, 25, 0, 26, 0, 0, 0, 0, 1, 'V', 'A'),
(125, 'MARIO ENRIQUE BARRIOS SUAREZ', 'mario.barrios', '#LD21MABAx', 'alumno.mario.barrios@universidaddeensenada.edu.mx', 'ENS', 'LD', 0, 25, 0, 26, 0, 0, 0, 0, 1, 'V', 'A'),
(126, 'MANUEL ENRIQUE CAMACHO AGUILAR', 'manuel.camacho', '#ENSLDMACA21h', 'alumno.manuel.camacho@universidaddeensenada.edu.mx', 'ENS', 'LD', 0, 25, 0, 26, 0, 0, 0, 0, 1, 'V', 'A'),
(127, 'ROMAN CERVANTES CASILLAS', 'roman.cervantes', '#LD21ROCEe', 'alumno.roman.cervantes@universidaddeensenada.edu.mx', 'ENS', 'LD', 0, 25, 0, 26, 0, 0, 0, 0, 1, 'V', 'A'),
(128, 'LUISA GUADALUPE LIZARDI CASTELLANOS', 'luisa.lizardi', '#LD21LULIr', 'alumno.luisa.lizardi@universidaddeensenada.edu.mx', 'ENS', 'LD', 0, 25, 0, 26, 0, 0, 0, 0, 1, 'V', 'A'),
(129, 'BRENDA CAROLINA MARTINEZ TAPIA', 'brenda.martinez', '#ENSLDBRMA21n', 'alumno.brenda.martinez@universidaddeensenada.edu.mx', 'ENS', 'LD', 0, 25, 0, 26, 0, 0, 0, 0, 1, 'V', 'A'),
(130, 'ENOC OCEGUERA FIERRO', 'enoc.oceguera', '#LD21ENOCf', 'alumno.enoc.oceguera@universidaddeensenada.edu.mx', 'ENS', 'LD', 0, 25, 0, 26, 0, 0, 0, 0, 1, 'V', 'A'),
(131, 'MARIA GUADALUPE ORTEGA GONZALEZ', 'ma.ortega', '#LD21MAORh', 'alumno.ma.ortega@universidaddeensenada.edu.mx', 'ENS', 'LD', 0, 25, 0, 26, 0, 0, 0, 0, 1, 'V', 'A'),
(132, 'IVONE PEREZ GUERRERO', 'ivone.perez', '#LD21IVPEj', 'alumno.ivone.perez@universidaddeensenada.edu.mx', 'ENS', 'LD', 0, 25, 0, 26, 0, 0, 0, 0, 1, 'V', 'A'),
(133, 'ALEYDI RUBI RAMOS GUTIERREZ', 'aleydi.ramos', '#LD21ALRAy', 'alumno.aleydi.ramos@universidaddeensenada.edu.mx', 'ENS', 'LD', 0, 25, 0, 26, 0, 0, 0, 0, 1, 'V', 'A'),
(134, 'SILVIA ROMAN FLORES', 'silvia.roman', '#LD21SIROb', 'alumno.silvia.roman@universidaddeensenada.edu.mx', 'ENS', 'LD', 0, 25, 0, 26, 0, 0, 0, 0, 1, 'V', 'A'),
(135, 'DIANA IRIS ALVARADO ULLOA', 'diana.alvarado', '#ENSLADIAL21i', 'alumno.diana.alvarado@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 27, 0, 28, 0, 29, 0, 0, 1, 'S', 'A'),
(136, 'SHENNEY VIRIDIANA ARCE GUZMAN', 'shenney.arce', '#ENSLASHAR21c', 'alumno.shenney.arce@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 27, 0, 28, 0, 29, 0, 0, 1, 'S', 'A'),
(137, 'SOLANGEL ATONDO LAGUNA', 'solangel.atondo', '#Laeyls21001', 'alumno.solangel.atondo@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 27, 0, 28, 0, 29, 0, 0, 1, 'S', 'A'),
(138, 'BRAYAN BARRAZA AGUIRRE', 'brayan.barraza', '#ENSLABRBA21c', 'alumno.brayan.barraza@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 27, 0, 28, 0, 29, 0, 0, 1, 'S', 'A'),
(139, 'ALFREDO CASTRO CASTRO', 'alfredo.castro', '#ENSLAALCA21x', 'alumno.alfredo.castro@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 27, 0, 28, 0, 29, 0, 0, 1, 'S', 'A'),
(140, 'BRENDA CERVANTES VALDOVINOS', 'brenda.cervantes', '#ENSLABRCE21f', 'alumno.brenda.cervantes@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 27, 0, 28, 0, 29, 0, 0, 1, 'S', 'A'),
(141, 'JULENNY LIZBETH COTA FELIX', 'julenny.cota', '#ENSLAJUCO21f', 'alumno.julenny.cota@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 27, 0, 28, 0, 29, 0, 0, 1, 'S', 'A'),
(142, 'OSCAR YAHIR GARCIA MENDOZA', 'oscar.garcia', '#ENSLAOSGA21g', 'alumno.oscar.garcia@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 27, 0, 28, 0, 29, 0, 0, 1, 'S', 'A'),
(143, 'ANTONIO GOMEZ HOLLMAN', 'antonio.gomez', '#ENSLAANGO21a', 'alumno.antonio.gomez@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 27, 0, 28, 0, 29, 0, 0, 1, 'S', 'A'),
(144, 'EDGAR IVAN HERNANDEZ ANGUIANO', 'eivan.hernandez', '#ENSLAEDHE21h', 'alumno.eivan.hernandez@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 27, 0, 28, 0, 29, 0, 0, 1, 'S', 'A'),
(145, 'CAROLINA HERNANDEZ FLORES', 'carolina.hernandez', '#ENSLACAHE21t', 'alumno.carolina.hernandez@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 27, 0, 28, 0, 29, 0, 0, 1, 'S', 'A'),
(146, 'JESSICA ESMERALDA HERNANDEZ TORRES', 'jessica.hernandez', '#ENSLAJEHE21w', 'alumno.jessica.hernandez@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 30, 0, 31, 0, 32, 0, 0, 1, 'S', 'B'),
(147, 'REBECA LOPEZ JUAREZ', 'rebeca.lopez', '#ENSLARELO21w', 'alumno.rebeca.lopez@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 30, 0, 31, 0, 32, 0, 0, 1, 'S', 'B'),
(148, 'LUIS ROBERTO MARQUEZ GARCIA', 'luis.marquez', '#ENSLALUMA21s', 'alumno.luis.marquez@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 30, 0, 31, 0, 32, 0, 0, 1, 'S', 'B'),
(149, 'BALTAZAR MARTINEZ VIDAL', 'baltazar.martinez', '#ENSLABAMA21x', 'alumno.baltazar.martinez@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 30, 0, 31, 0, 32, 0, 0, 1, 'S', 'B'),
(150, 'DIANA GIOVANNA MENESES GRANADOS', 'diana.meneses', '#ENSLADIME21x', 'alumno.diana.meneses@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 30, 0, 31, 0, 32, 0, 0, 1, 'S', 'B'),
(151, 'FERNANDO MONTANO GAMBOA', 'fmontano', '#ENSLAFEMO21q', 'alumno.fmontano@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 30, 0, 31, 0, 32, 0, 0, 1, 'S', 'B'),
(152, 'GRACIELA MUÑOZ MENDOZA', 'graciela.munozm', '#Laeyls21009', 'alumno.graciela.munozm@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 30, 0, 31, 0, 32, 0, 0, 1, 'S', 'B'),
(153, 'PERLA VERONICA NOYOLA MARTINEZ', 'perla.noyola', '#ENSLAPENO21h', 'alumno.perla.noyola@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 30, 0, 31, 0, 32, 0, 0, 1, 'S', 'B'),
(154, 'DARALLA DIANEY ORDUNO RUIZ', 'daralla.orduno', '#ENSLADAOR21m', 'alumno.daralla.orduno@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 30, 0, 31, 0, 32, 0, 0, 1, 'S', 'B'),
(155, 'IRAIS ORTEGA HERRERA', 'irais.ortega', '#ENSLAIROR21e', 'alumno.irais.ortega@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 30, 0, 31, 0, 32, 0, 0, 1, 'S', 'B'),
(156, 'AARON GUADALUPE OSUNA AGUILAR', 'aaron.osuna', '#ENSLAAAOS21w', 'alumno.aaron.osuna@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 30, 0, 31, 0, 32, 0, 0, 1, 'S', 'B'),
(157, 'BERTHA NOHEMI RIVERA OLIVA', 'bertha.rivera', '#ENSLABERI21w', 'alumno.bertha.rivera@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 0, 0, 31, 0, 0, 0, 0, 1, 'S', 'B'),
(158, 'EMMANUEL RAMIREZ RAMIREZ', 'emmanuel.ramirez', '#ENSLAEMRA21b', 'alumno.emmanuel.ramirez@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 33, 0, 34, 0, 35, 0, 0, 1, 'S', 'C'),
(159, 'JOSE ALBERTO REMBAO LORONA', 'jose.rembao', '#ENSLAJORE21h', 'alumno.jose.rembao@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 33, 0, 34, 0, 35, 0, 0, 1, 'S', 'C'),
(160, 'CAREN PAULINA RENDON GUZMAN', 'caren.rendon', '#ENSLACARE21b', 'alumno.caren.rendon@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 33, 0, 34, 0, 35, 0, 0, 1, 'S', 'C'),
(161, 'ALMA DANELIA RIVERA ALONSO', 'alma.rivera', '#ENSLAALRI21a', 'alumno.alma.rivera@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 33, 0, 34, 0, 35, 0, 0, 1, 'S', 'C'),
(162, 'DANIELA SALVADOR LIZAOLA', 'daniela.salvador', '#ENSLADASA21y', 'alumno.daniela.salvador@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 33, 0, 34, 0, 35, 0, 0, 1, 'S', 'C'),
(163, 'ELBA YATENSI TEPOLE MURGUI', 'elba.tepole', '#ENSLAELTE21w', 'alumno.elba.tepole@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 33, 0, 34, 0, 35, 0, 0, 1, 'S', 'C'),
(164, 'MARIA GUADALUPE VALVERDE RODRIGUEZ', 'maria.valverde', '#ENSLAMAVA21e', 'alumno.maria.valverde@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 33, 0, 34, 0, 35, 0, 0, 1, 'S', 'C'),
(165, 'NATALIA MARLEN VERDUGO CAMACHO', 'natalia.verdugo', '#ENSLANAVE21v', 'alumno.natalia.verdugo@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 33, 0, 34, 0, 35, 0, 0, 1, 'S', 'C'),
(166, 'SHEILA AMERICA VILLA RODRIGUEZ', 'sheila.villa', '#ENSLASHVI21x', 'alumno.sheila.villa@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 33, 0, 34, 0, 35, 0, 0, 1, 'S', 'C'),
(167, 'VICTORIA VILLARREAL CESENA', 'victoria.villarreal', '#ENSLNVIVI21g', 'alumno.victoria.villarreal@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 33, 0, 34, 0, 35, 0, 0, 1, 'S', 'C'),
(168, 'ENRIQUE FIGUEROA GUTIERREZ', 'enrique.figueroa', '#Laeyls20005', 'alumno.enrique.figueroa@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 36, 0, 37, 0, 38, 0, 0, 3, 'S', 'A'),
(169, 'ANGEL RAFAEL GONZALEZ MORENO', 'angelr.gonzalez', '#Laeyls21004', 'alumno.angelr.gonzalez@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 36, 0, 37, 0, 38, 0, 0, 3, 'S', 'A'),
(170, 'DALI ADRIAN PAZ GONZALEZ', 'dali.paz', '#Liid20005', 'alumno.dali.paz@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 36, 0, 37, 0, 38, 0, 0, 3, 'S', 'A'),
(171, 'JOSE EMMANUEL ROSALES SANCHEZ', 'emmanuel.rosales', '#Laeyls21011', 'alumno.emmanuel.rosales@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 36, 0, 0, 0, 38, 0, 0, 3, 'S', 'A'),
(172, 'REBECA ALVAREZ YEPIZ', 'rebeca.alvarez', '#Laeyls20003', 'alumno.rebeca.alvarez@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 39, 0, 40, 0, 41, 0, 0, 4, 'S', 'A'),
(173, 'CHRISTIAN LUNA VILLAGRANA', 'christian.luna', '#Laeyls20008', 'alumno.christian.luna@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 39, 0, 40, 0, 41, 0, 0, 4, 'S', 'A'),
(174, 'ALMA GABRIELA OLIVA GONZALEZ', 'alma.oliva', '#Laeyls20010', 'alumno.alma.oliva@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 39, 0, 40, 0, 41, 0, 0, 4, 'S', 'A'),
(175, 'OSCAR HONORIO PASILLAS MIRANDA', 'oscar.pasillas', '#Laeyls20011', 'alumno.oscar.pasillas@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 39, 0, 40, 0, 41, 0, 0, 4, 'S', 'A'),
(176, 'JAQUELINE EDITH RAMIREZ GARCIA', 'jaqueline.ramirez', '#Laeyls20012', 'alumno.jaqueline.ramirez@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 39, 0, 40, 0, 41, 0, 0, 4, 'S', 'A'),
(177, 'TANIA LIZBETH REZA MEDINA', 'tania.reza', '#Laeyls20014', 'alumno.tania.reza@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 39, 0, 40, 0, 41, 0, 0, 4, 'S', 'A'),
(178, 'ROCIO GUADALUPE SANDOVAL MUÑOZ', 'rocio.sandoval', '#Laeylm20016', 'alumno.rocio.sandoval@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 39, 0, 40, 0, 41, 0, 0, 4, 'S', 'A'),
(179, 'VALVERDE GONZALEZ JONATHAN EFRAIN', 'jonathan.valverde', '#Laeyls19013', 'alumno.jonathan.valverde@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 39, 0, 40, 0, 41, 0, 0, 4, 'S', 'A'),
(180, 'SANDRA LUZ CAYETANO OLEA', 'sandra.cayetano', '#Laeyld19004', 'alumno.sandra.cayetano@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 0, 0, 40, 0, 41, 0, 0, 4, 'S', 'A'),
(181, 'ESMERALDA VASQUEZ FLORES', 'esmeralda.vasquez', '#Laeyls19012', 'alumno.esmeralda.vasquez@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 0, 0, 40, 0, 0, 0, 0, 4, 'S', 'A'),
(182, 'CARLOS BRANDON LARA VELAZQUEZ', 'carlos.lara', '#Laeyld19006', 'alumno.carlos.lara@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 0, 0, 0, 0, 41, 0, 0, 4, 'S', 'A'),
(183, 'LESLIE AMANCIO JIMENEZ', 'leslie.amancio', '#Laeyld19001', 'alumno.leslie.amancio@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 42, 0, 43, 0, 44, 0, 0, 6, 'D', 'A'),
(184, 'TOMAS BARAJAS BALTAZAR', 'tomas.barajas', '#Laeyld19002', 'alumno.tomas.barajas@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 42, 0, 43, 0, 44, 0, 0, 6, 'D', 'A'),
(185, 'MARIA TRINIDAD CASTILLO ORTEGA', 'maria.castillo', '#Laeyld19003', 'alumno.maria.castillo@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 42, 0, 43, 0, 44, 0, 0, 6, 'D', 'A'),
(186, 'SANDRA LUZ CAYETANO OLEA', 'sandra.cayetano', '#Laeyld19004', 'alumno.sandra.cayetano@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 42, 0, 43, 0, 44, 0, 0, 6, 'D', 'A'),
(187, 'JANELY JAQUELINE CORRALES CASTILLO', 'janely.corrales', '#Laeyld19005', 'alumno.janely.corrales@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 42, 0, 43, 0, 44, 0, 0, 6, 'D', 'A'),
(188, 'STEPHANIE HILARY NAJERA AGUIRRE', 'stephanie.najera', '#Laeyld19009', 'alumno.stephanie.najera@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 42, 0, 43, 0, 44, 0, 0, 6, 'D', 'A'),
(189, 'VERONICA OLMOS DURAN', 'veronica.olmos', '#Laeyld19011', 'alumno.veronica.olmos@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 42, 0, 43, 0, 44, 0, 0, 6, 'D', 'A'),
(190, 'KENIA PATRICIA ORTEGA SOLAIZA', 'kenia.ortega', '#Laeyld19012', 'alumno.kenia.ortega@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 42, 0, 43, 0, 44, 0, 0, 6, 'D', 'A'),
(191, 'MARIA DOLORES SALCIDO SALINAS', 'maria.salcido', '#Laeyld19014', 'alumno.maria.salcido@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 42, 0, 43, 0, 44, 0, 0, 6, 'D', 'A'),
(192, 'ARTURO SERRANO MORENO', 'arturo.serrano', '#Laeyld19015', 'alumno.arturo.serrano@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 42, 0, 43, 0, 44, 0, 0, 6, 'D', 'A'),
(193, 'ALEXANDRA VELAZQUEZ RUIZ', 'alexandra.velazquez', '#Laeyld19016', 'alumno.alexandra.velazquez@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 42, 0, 43, 0, 44, 0, 0, 6, 'D', 'A'),
(194, 'SALOME VILLARREAL ZAPIEN', 'salome.villarreal', '#Laeyld19017', 'alumno.salome.villarreal@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 42, 0, 43, 0, 44, 0, 0, 6, 'D', 'A'),
(195, 'SERGIO DANIEL MEJIA MARCIAL', 'sergio.mejia', '#Laeyls18003', 'alumno.sergio.mejia@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 0, 0, 43, 0, 44, 0, 0, 6, 'D', 'A'),
(196, 'EVA BIO LOPEZ', 'eva.bio', '#Laeyls19001', 'alumno.eva.bio@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 45, 0, 46, 0, 47, 0, 0, 7, 'S', 'A'),
(197, 'LUZ ESTELA BOLAÑOS PEREZ', 'luz.bolanos', '#Laeyls19002', 'alumno.estela.bolanos@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 45, 0, 46, 0, 47, 0, 0, 7, 'S', 'A'),
(198, 'MAGDALENA ROSALINA CARLOS GARRIDO', 'magdalena.carlos', '#Laeyls19003', 'alumno.magdalena.carlos@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 45, 0, 46, 0, 47, 0, 0, 7, 'S', 'A'),
(199, 'JOEL NEHEMIAS CORTEZ LOPEZ', 'joel.cortez', '#Laeyls19004', 'alumno.joel.cortez@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 45, 0, 46, 0, 47, 0, 0, 7, 'S', 'A'),
(200, 'ISAAC EBENESER FLORES MORALES', 'isaac.flores', '#Laeyls19006', 'alumno.isaac.flores@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 45, 0, 46, 0, 47, 0, 0, 7, 'S', 'A'),
(201, 'ILEANA BERENICE FRANCO LOZANO', 'ileana.franco', '#Laeyls19007', 'alumno.ileana.franco@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 45, 0, 46, 0, 47, 0, 0, 7, 'S', 'A'),
(202, 'SHAIRA AHOLIBAMA GARCIA RAMIREZ', 'shaira.garcia', '#Laeyls19008', 'alumno.shaira.garcia@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 45, 0, 46, 0, 47, 0, 0, 7, 'S', 'A'),
(203, 'LEIDY GARCIA SOFIO', 'leidy.garcia', '#Laeyls19009', 'alumno.leidy.garcia@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 45, 0, 46, 0, 47, 0, 0, 7, 'S', 'A'),
(204, 'ESPERANZA LUCERO LOMAS', 'esperanza.lucero', '#Laeyls18002', 'alumno.esperanza.lucero@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 45, 0, 46, 0, 47, 0, 0, 7, 'S', 'A'),
(205, 'CINTHYA LIZETTE ROCHA MARTINEZ', 'cinthya.rocha', '#Laeyls19010', 'alumno.cinthya.rocha@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 45, 0, 46, 0, 47, 0, 0, 7, 'S', 'A'),
(206, 'JUAN MANUEL VARGAS PEREZ', 'juan.vargas', '#Laeyls19011', 'alumno.juan.vargas@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 45, 0, 46, 0, 47, 0, 0, 7, 'S', 'A'),
(207, 'ANA KAREN VELASCO GONZALEZ', 'ana.velasco', '#Laeyls18025', 'alumno.ana.velasco@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 0, 0, 46, 0, 47, 0, 0, 7, 'S', 'A'),
(208, 'CYNTHIA NAYELI ARMENTA RIOS', 'cynthia.armenta', '#Laeyls18001', 'alumno.cynthia.armenta@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 48, 0, 49, 0, 50, 0, 0, 8, 'S', 'A'),
(209, 'ADRIAN MARTIN CARRILLO CASTRO', 'adrian.carrillo', '#Laeylm18001', 'alumno.adrian.carrillo@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 48, 0, 49, 0, 50, 0, 0, 8, 'S', 'A'),
(210, 'ANGEL EMMANUEL GONZALEZ LUNA', 'angel.gonzalez', '#LAeylm18002', 'alumno.angel.gonzalez@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 48, 0, 49, 0, 50, 0, 0, 8, 'S', 'A'),
(211, 'EDGAR MOISES HERNANDEZ NAVARRO', 'edgar.hernandez', '#Laeylm18003', 'alumno.edgar.hernandez@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 48, 0, 49, 0, 50, 0, 0, 8, 'S', 'A'),
(212, 'ANA KAREN HERNANDEZ GUERRERO', 'ana.hernandez', '#Laeylm18004', 'alumno.ana.hernandez@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 48, 0, 49, 0, 50, 0, 0, 8, 'S', 'A'),
(213, 'CALEP AARON NERIZ RIOS', 'calep.neriz', '#Laeyls18005', 'alumno.calep.neriz@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 48, 0, 49, 0, 50, 0, 0, 8, 'S', 'A'),
(214, 'ARLETTE GUADALUPE PUENTE GARCIA', 'arlette.puente', '#Laeyls18006', 'alumno.arlette.puente@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 48, 0, 49, 0, 50, 0, 0, 8, 'S', 'A'),
(215, 'BRENDA ELIZABETH REYES CHAIREZ', 'brenda.reyes', '#Laeyls18007', 'alumno.brenda.reyes@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 48, 0, 49, 0, 50, 0, 0, 8, 'S', 'A'),
(216, 'MARIBEL ROJAS HUERTA', 'maribel.rojas', '#Laeylm18005', 'alumno.maribel.rojas@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 48, 0, 49, 0, 50, 0, 0, 8, 'S', 'A'),
(217, 'EDWING ADAN TORRES CEBRERO', 'edwing.torres', '#Laeyls18008', 'alumno.edwing.torres@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 48, 0, 49, 0, 50, 0, 0, 8, 'S', 'A'),
(218, 'LUIS RICARDO TREJO MIRANDA', 'luis.trejo', '#Laeyls18009', 'alumno.luis.trejo@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 48, 0, 49, 0, 50, 0, 0, 8, 'S', 'A'),
(219, 'MARICRUZ VALENZUELA ELIZALDE', 'maricruz.valenzuela', '#Laeyls18010', 'alumno.maricruz.valenzuela@universidaddeensenada.edu.mx', 'ENS', 'LA', 0, 48, 0, 49, 0, 50, 0, 0, 8, 'S', 'A'),
(220, 'ELIZABETH MARLIN BROCK GONZALEZ', 'elizabeth.brock', '#ENSLCELBR21l', 'alumno.elizabeth.brock@universidaddeensenada.edu.mx', 'ENS', 'LC', 0, 51, 0, 52, 0, 0, 0, 0, 1, 'S', 'A'),
(221, 'FERNANDA YARAMY DIAZ GONZALEZ', 'fernanda.diaz', '#ENSLCYADI21e', 'alumno.fernanda.diaz@universidaddeensenada.edu.mx', 'ENS', 'LC', 0, 51, 0, 52, 0, 0, 0, 0, 1, 'S', 'A'),
(222, 'EUNICE HERNANDEZ MARTINEZ', 'eunice.hernandez', '#ENSLCEUHE21q', 'alumno.eunice.hernandez@universidaddeensenada.edu.mx', 'ENS', 'LC', 0, 51, 0, 52, 0, 0, 0, 0, 1, 'S', 'A'),
(223, 'RICARDO IBARRA GARCIA', 'ricardo.ibarra', '#Lcm20009', 'alumno.ricardo.ibarra@universidaddeensenada.edu.mx', 'ENS', 'LC', 0, 51, 0, 52, 0, 0, 0, 0, 1, 'S', 'A'),
(224, 'ARELY MIRANDA ROBLES', 'arely.miranda', '#ENSLCARMI21f', 'alumno.arely.miranda@universidaddeensenada.edu.mx', 'ENS', 'LC', 0, 51, 0, 52, 0, 0, 0, 0, 1, 'S', 'A'),
(225, 'MELANIE VANESSA NUNEZ CERVANTES', 'melanie.nunez', '#ENSLCMENU21x', 'alumno.melanie.nunez@universidaddeensenada.edu.mx', 'ENS', 'LC', 0, 51, 0, 52, 0, 0, 0, 0, 1, 'S', 'A'),
(226, 'MIYAKI YAOLI SHIMABUKO HERNANDEZ', 'miyaki.shimabuko', '#ENSLCMISH21e', 'alumno.miyaki.shimabuko@universidaddeensenada.edu.mx', 'ENS', 'LC', 0, 51, 0, 52, 0, 0, 0, 0, 1, 'S', 'A'),
(227, 'ELIHU FELIPE SOSA CERVANTES', 'elihu.sosa', '#ENSLCELSO21g', 'alumno.elihu.sosa@universidaddeensenada.edu.mx', 'ENS', 'LC', 0, 51, 0, 52, 0, 0, 0, 0, 1, 'S', 'A'),
(228, 'GLORIA MAGALI AVILA SIFUENTES', 'gloria.avila', '#Lcs20001', 'alumno.gloria.avila@universidaddeensenada.edu.mx', 'ENS', 'LC', 0, 53, 0, 54, 0, 55, 0, 0, 4, 'S', 'A'),
(229, 'JAMIN BAÑUELOS SUAREZ', 'jamin.banuelos', '#Lcs20002', 'alumno.jamin.banuelos@universidaddeensenada.edu.mx', 'ENS', 'LC', 0, 53, 0, 54, 0, 55, 0, 0, 4, 'S', 'A'),
(230, 'SANTIAGO JAVIER BELTRAN RAMIREZ', 'santiago.beltran', '#Lcm20002', 'alumno.santiago.beltran@universidaddeensenada.edu.mx', 'ENS', 'LC', 0, 53, 0, 54, 0, 55, 0, 0, 4, 'S', 'A'),
(231, 'BEATRIZ VIVIANA DIAZ HERNANDEZ', 'beatriz.diaz', '#Lcs21001', 'alumno.beatriz.diaz@universidaddeensenada.edu.mx', 'ENS', 'LC', 0, 53, 0, 54, 0, 55, 0, 0, 4, 'S', 'A'),
(232, 'RAUL ALEXIS ESTRADA RAMIREZ', 'raul.estrada', '#Lcs20004', 'alumno.raul.estrada@universidaddeensenada.edu.mx', 'ENS', 'LC', 0, 53, 0, 54, 0, 55, 0, 0, 4, 'S', 'A'),
(233, 'ISMAEL ADAN FLORES TORRES', 'ismael.flores', '#Lcs20005', 'alumno.ismael.flores@universidaddeensenada.edu.mx', 'ENS', 'LC', 0, 53, 0, 54, 0, 55, 0, 0, 4, 'S', 'A'),
(234, 'MIGUEL ANGEL GOMEZ BORQUEZ', 'miguel.gomez', '#Lcs20007', 'alumno.miguel.gomez@universidaddeensenada.edu.mx', 'ENS', 'LC', 0, 53, 0, 54, 0, 55, 0, 0, 4, 'S', 'A'),
(235, 'KAREN DANALEE LOPEZ CASTRO', 'karen.lopez', '#Lcs19009', 'alumno.karen.lopez@universidaddeensenada.edu.mx', 'ENS', 'LC', 0, 53, 0, 54, 0, 55, 0, 0, 4, 'S', 'A'),
(236, 'KARELY KRISTAL RAMOS GUTIERREZ', 'karely.ramos', '#Lcs19016', 'alumno.karely.ramos@universidaddeensenada.edu.mx', 'ENS', 'LC', 0, 53, 0, 54, 0, 55, 0, 0, 4, 'S', 'A'),
(237, 'PERLA YAJAIRA GALO CARRILLO', 'perla.galo', '#Lcd20002', 'alumno.perla.galo@universidaddeensenada.edu.mx', 'ENS', 'LC', 0, 49, 0, 56, 0, 57, 0, 0, 6, 'D', 'A'),
(238, 'KENYA IRADAL VILLARREAL CESEÑA', 'kenya.villarreal', '#Lcd20003', 'alumno.kenya.villarreal@universidaddeensenada.edu.mx', 'ENS', 'LC', 0, 49, 0, 56, 0, 57, 0, 0, 6, 'D', 'A'),
(239, 'ELISEO SANTANA BENITO', 'eliseo.santana', '#Lcm18014', 'alumno.eliseo.santana@universidaddeensenada.edu.mx', 'ENS', 'LC', 0, 0, 0, 62, 0, 57, 0, 0, 6, 'D', 'A'),
(240, 'JOSE ANTONIO ARREDONDO DE LEON', 'jose.arredondo', '#Lcs18001', 'alumno.jose.arredondo@universidaddeensenada.edu.mx', 'ENS', 'LC', 0, 58, 0, 59, 0, 60, 0, 0, 7, 'S', 'A'),
(241, 'SALVADOR AVILA BAUTISTA', 'salvador.avila', '#Lcs19001', 'alumno.salvador.avila@universidaddeensenada.edu.mx', 'ENS', 'LC', 0, 58, 0, 59, 0, 60, 0, 0, 7, 'S', 'A'),
(242, 'ALEX BENJAMIN BORQUEZ AGUIRRE', 'alex.borquez', '#Lcs19002', 'alumno.alex.borquez@universidaddeensenada.edu.mx', 'ENS', 'LC', 0, 58, 0, 59, 0, 60, 0, 0, 7, 'S', 'A'),
(243, 'RENE JAVIER CAZARES LOPEZ', 'rene.cazares', '#Lcs19004', 'alumno.rene.cazares@universidaddeensenada.edu.mx', 'ENS', 'LC', 0, 58, 0, 59, 0, 60, 0, 0, 7, 'S', 'A'),
(244, 'GABRIEL GARCIA MARTINEZ', 'gabriel.garcia', '#Lcs19006', 'alumno.gabriel.garcia@universidaddeensenada.edu.mx', 'ENS', 'LC', 0, 58, 0, 59, 0, 60, 0, 0, 7, 'S', 'A'),
(245, 'JACQUELINE HERAS LEYVA', 'jacqueline.heras', '#Lcs19007', 'alumno.jacqueline.heras@universidaddeensenada.edu.mx', 'ENS', 'LC', 0, 58, 0, 59, 0, 60, 0, 0, 7, 'S', 'A'),
(246, 'MARISOL ANTONIA JIMENEZ GONZALEZ', 'marisol.jimenez', '#Lcs19008', 'alumno.marisol.jimenez@universidaddeensenada.edu.mx', 'ENS', 'LC', 0, 58, 0, 59, 0, 60, 0, 0, 7, 'S', 'A'),
(247, 'EDGAR EDUARDO MEDINA RAMOS', 'edgar.medina', '#Lcs19011', 'alumno.edgar.medina@universidaddeensenada.edu.mx', 'ENS', 'LC', 0, 58, 0, 59, 0, 60, 0, 0, 7, 'S', 'A'),
(248, 'CHRISTIAN PEREZ OSORIO', 'christian.perez', '#Lcs19012', 'alumno.christian.perez@universidaddeensenada.edu.mx', 'ENS', 'LC', 0, 58, 0, 59, 0, 60, 0, 0, 7, 'S', 'A'),
(249, 'LOURDES PEREZ OSORIO', 'lourdes.perez', '#Lcs19013', 'alumno.lourdes.perez@universidaddeensenada.edu.mx', 'ENS', 'LC', 0, 58, 0, 59, 0, 60, 0, 0, 7, 'S', 'A'),
(250, 'ALEJANDRA PREZA TAPIA', 'alejandra.preza', '#Lcs19014', 'alumno.alejandra.preza@universidaddeensenada.edu.mx', 'ENS', 'LC', 0, 58, 0, 59, 0, 60, 0, 0, 7, 'S', 'A'),
(251, 'REYNA ROSINA BELTRAN ANGULO', 'reyna.beltran', '#Lcs18002', 'alumno.reyna.beltran@universidaddeensenada.edu.mx', 'ENS', 'LC', 0, 61, 0, 62, 0, 63, 0, 0, 8, 'S', 'A'),
(252, 'GABRIELA COTA ESPARZA', 'gabriela.cota', '#Lcs18003', 'alumno.gabriela.cota@universidaddeensenada.edu.mx', 'ENS', 'LC', 0, 61, 0, 62, 0, 63, 0, 0, 8, 'S', 'A'),
(253, 'ANA KAREN GARCIA MARTINEZ', 'ana.garcia', '#Lcs180s4', 'alumno.ana.garcia@universidaddeensenada.edu.mx', 'ENS', 'LC', 0, 61, 0, 62, 0, 63, 0, 0, 8, 'S', 'A'),
(254, 'MICHAEL ARMANDO IBARRA PONCE', 'michael.ibarra', '#Lcs18005', 'alumno.michael.ibarra@universidaddeensenada.edu.mx', 'ENS', 'LC', 0, 61, 0, 62, 0, 63, 0, 0, 8, 'S', 'A'),
(255, 'ANGEL ANDRES LABASTIDA LARA', 'angel.labastida', '#Lcs21002', 'alumno.angel.labastida@universidaddeensenada.edu.mx', 'ENS', 'LC', 0, 61, 0, 62, 0, 63, 0, 0, 8, 'S', 'A'),
(256, 'SUSANA VALENTE BALANZAR', 'susana.valente', '#Lcs18006', 'alumno.susana.valente@universidaddeensenada.edu.mx', 'ENS', 'LC', 0, 61, 0, 62, 0, 63, 0, 0, 8, 'S', 'A'),
(257, 'CLAUDIA CISNEROS GARCIA', 'claudia.cisneros', '#Lces20001', 'alumno.claudia.cisneros@universidaddeensenada.edu.mx', 'ENS', 'LE', 0, 64, 0, 65, 0, 66, 0, 0, 4, 'S', 'A'),
(258, 'MISSAEL ANGEL FLORES MARQUEZ', 'missael.flores', '#Lces20002', 'alumno.missael.flores@universidaddeensenada.edu.mx', 'ENS', 'LE', 0, 64, 0, 65, 0, 66, 0, 0, 4, 'S', 'A'),
(259, 'ANA DELIA LEDESMA CASTRO', 'ana.ledesma', '#Lces20003', 'alumno.ana.ledesma@universidaddeensenada.edu.mx', 'ENS', 'LE', 0, 64, 0, 65, 0, 66, 0, 0, 4, 'S', 'A'),
(260, 'DARELY ANGELICA PAZ GONZALEZ', 'darely.paz', '#Lcem20006', 'alumno.darely.paz@universidaddeensenada.edu.mx', 'ENS', 'LE', 0, 64, 0, 65, 0, 66, 0, 0, 4, 'S', 'A'),
(261, 'JESUS REYES OSORIO', 'jesus.reyes', '#ENSLEJERE21k', 'alumno.jesus.reyes@universidaddeensenada.edu.mx', 'ENS', 'LE', 0, 64, 0, 65, 0, 66, 0, 0, 4, 'S', 'A'),
(262, 'BLANCA ALICIA VIRGEN PANTOJA', 'blanca.virgen', '#Lces20005', 'alumno.blanca.virgen@universidaddeensenada.edu.mx', 'ENS', 'LE', 0, 64, 0, 65, 0, 66, 0, 0, 4, 'S', 'A'),
(263, 'ASTRID DENISSE ZETINA ROSAS', 'astrid.zetina', '#Lces20006', 'alumno.astrid.zetina@universidaddeensenada.edu.mx', 'ENS', 'LE', 0, 64, 0, 65, 0, 66, 0, 0, 4, 'S', 'A'),
(264, 'ZARELA ZETINA ROSAS', 'zarela.zetina', '#Lces20007', 'alumno.zarela.zetina@universidaddeensenada.edu.mx', 'ENS', 'LE', 0, 64, 0, 65, 0, 66, 0, 0, 4, 'S', 'A'),
(265, 'JENNIFER CASTRO HERNANDEZ', 'jennifer.castro', '#Lcem19001', 'alumno.jennifer.castro@universidaddeensenada.edu.mx', 'ENS', 'LE', 0, 67, 0, 68, 0, 69, 0, 0, 6, 'D', 'A'),
(266, 'MARIA CAROLINA CORRAL FEDERICO', 'maria.corral', '#Lces19002', 'alumno.maria.corral@universidaddeensenada.edu.mx', 'ENS', 'LE', 0, 67, 0, 68, 0, 69, 0, 0, 6, 'D', 'A'),
(267, 'KAREN MARIA DIOSDADO LOPEZ', 'karen.diosdado', '#Lces19003', 'alumno.karen.diosdado@universidaddeensenada.edu.mx', 'ENS', 'LE', 0, 67, 0, 68, 0, 69, 0, 0, 6, 'D', 'A'),
(268, 'ICELA PAOLA GUTIERREZ LARA', 'icela.gutierrez', '#Lced19001', 'alumno.icela.gutierrez@universidaddeensenada.edu.mx', 'ENS', 'LE', 0, 67, 0, 68, 0, 69, 0, 0, 6, 'D', 'A'),
(269, 'ANTONIO MARTINEZ SANTOS', 'antonio.martinez', '#Lced19002', 'alumno.antonio.martinez@universidaddeensenada.edu.mx', 'ENS', 'LE', 0, 67, 0, 68, 0, 69, 0, 0, 6, 'D', 'A'),
(270, 'EDY YAZMIN QUEZADA GALINDO', 'edy.quezada', '#Lced19003', 'alumno.edy.quezada@universidaddeensenada.edu.mx', 'ENS', 'LE', 0, 67, 0, 68, 0, 69, 0, 0, 6, 'D', 'A'),
(271, 'FRANCISCA RAMIREZ GONZALEZ', 'francisca.ramirez', '#Lced19004', 'alumno.francisca.ramirez@universidaddeensenada.edu.mx', 'ENS', 'LE', 0, 67, 0, 68, 0, 69, 0, 0, 6, 'D', 'A'),
(272, 'FRANCISCO JAVIER ROMAN PAVIAN', 'francisco.roman', '#Lced19005', 'alumno.francisco.roman@universidaddeensenada.edu.mx', 'ENS', 'LE', 0, 67, 0, 68, 0, 69, 0, 0, 6, 'D', 'A'),
(273, 'MAYRA DANIELA ALAMO CHAVEZ', 'mayra.alamo', '#Lces19001', 'alumno.mayra.alamo@universidaddeensenada.edu.mx', 'ENS', 'LE', 0, 70, 0, 71, 0, 72, 0, 0, 7, 'S', 'A'),
(274, 'OMAR EDUARDO CASTRO LOPEZ', 'omar.castro', '#Lcem19002', 'alumno.omar.castro@universidaddeensenada.edu.mx', 'ENS', 'LE', 0, 70, 0, 71, 0, 72, 0, 0, 7, 'S', 'A'),
(275, 'FABIOLA FRAYRE TORRES', 'fabiola.frayre', '#Lcem19003', 'alumno.fabiola.frayre@universidaddeensenada.edu.mx', 'ENS', 'LE', 0, 70, 0, 71, 0, 72, 0, 0, 7, 'S', 'A'),
(276, 'BRISKALI SARAHI JUAREZ AVALOS', 'briskali.juarez', '#Lces19004', 'alumno.briskali.juarez@universidaddeensenada.edu.mx', 'ENS', 'LE', 0, 70, 0, 71, 0, 72, 0, 0, 7, 'S', 'A'),
(277, 'HERISBET MATLA DURAN', 'herisbet.matla', '#Lces19005', 'alumno.herisbet.matla@universidaddeensenada.edu.mx', 'ENS', 'LE', 0, 70, 0, 71, 0, 72, 0, 0, 7, 'S', 'A'),
(278, 'LESLIE ANGELICA MENDEZ GONZALEZ', 'leslie.mendez', '#Lces19006', 'alumno.leslie.mendez@universidaddeensenada.edu.mx', 'ENS', 'LE', 0, 70, 0, 71, 0, 72, 0, 0, 7, 'S', 'A'),
(279, 'MARIAN KARELI RODARTE GARCIA', 'marian.rodarte', '#Lces19008', 'alumno.marian.rodarte@universidaddeensenada.edu.mx', 'ENS', 'LE', 0, 70, 0, 71, 0, 72, 0, 0, 7, 'S', 'A'),
(280, 'JACQUELINE SOTO ARRIAGA', 'jacqueline.soto', '#Lces19009', 'alumno.jacqueline.soto@universidaddeensenada.edu.mx', 'ENS', 'LE', 0, 70, 0, 71, 0, 72, 0, 0, 7, 'S', 'A'),
(281, 'SOFIA VALERIA SOTO ARRIAGA', 'sofia.soto', '#Lces19010', 'alumno.sofia.soto@universidaddeensenada.edu.mx', 'ENS', 'LE', 0, 70, 0, 71, 0, 72, 0, 0, 7, 'S', 'A'),
(282, 'MANUEL SALVADOR TOVAR MENDOZA', 'manuel.tovar', '#Lcem19006', 'alumno.manuel.tovar@universidaddeensenada.edu.mx', 'ENS', 'LE', 0, 70, 0, 71, 0, 72, 0, 0, 7, 'S', 'A'),
(283, 'LETICIA CARLOS RIVERA', 'leticia.carlos', '#Lces18003', 'alumno.leticia.carlos@universidaddeensenada.edu.mx', 'ENS', 'LE', 0, 70, 0, 0, 0, 0, 0, 0, 7, 'S', 'A'),
(284, 'SALVADOR CERVERA GUZMAN', 'salvador.cervera', '#Ldm19002', 'alumno.salvador.cervera@universidaddeensenada.edu.mx', 'ENS', 'LD', 0, 73, 0, 74, 0, 75, 0, 0, 7, 'S', 'A'),
(285, 'KIMBERLY CONTLA RAMOS', 'kimberly.contla', '#Ldm19003', 'alumno.kimberly.contla@universidaddeensenada.edu.mx', 'ENS', 'LD', 0, 73, 0, 74, 0, 75, 0, 0, 7, 'S', 'A'),
(286, 'XIMENA DE ALBA MARTINEZ GONZALEZ', 'ximena.martinez', '#Lds19001', 'alumno.ximena.martinez@universidaddeensenada.edu.mx', 'ENS', 'LD', 0, 73, 0, 74, 0, 75, 0, 0, 7, 'S', 'A');
INSERT INTO `estudiantes` (`id_estudiante`, `nombre_completo`, `usuario`, `password`, `email`, `campus`, `carrera`, `status_curso1`, `id_curso_1`, `status_curso2`, `id_curso_2`, `status_curso3`, `id_curso_3`, `status_servicios`, `status_instalaciones`, `cuatrimestre`, `turno`, `grupo`) VALUES
(287, 'ESMERALDA PEREZ GAYTAN', 'esmeralda.perez', '#Ldm19009', 'alumno.esmeralda.perez@universidaddeensenada.edu.mx', 'ENS', 'LD', 0, 73, 0, 74, 0, 75, 0, 0, 7, 'S', 'A'),
(288, 'MIRIAM EDITH RODRIGUEZ GONZALEZ', 'miriam.rodriguez', '#Lds19002', 'alumno.miriam.rodriguez@universidaddeensenada.edu.mx', 'ENS', 'LD', 0, 73, 0, 74, 0, 75, 0, 0, 7, 'S', 'A'),
(289, 'SUSANA SARAI RUEDA SANTIAGO', 'susana.rueda', '#Ldsqs19008', 'alumno.susana.rueda@universidaddeensenada.edu.mx', 'ENS', 'LD', 0, 73, 0, 74, 0, 75, 0, 0, 7, 'S', 'A'),
(290, 'J GILDARDO SANCHEZ ALVAREZ', 'gildardo.sanchez', '#Lds19003', 'alumno.gildardo.sanchez@universidaddeensenada.edu.mx', 'ENS', 'LD', 0, 73, 0, 74, 0, 75, 0, 0, 7, 'S', 'A'),
(291, 'JUAN DANIEL VALLE DELGADO', 'juan.valle', '#Lds19006', 'alumno.juan.valle@universidaddeensenada.edu.mx', 'ENS', 'LD', 0, 73, 0, 74, 0, 75, 0, 0, 7, 'S', 'A'),
(292, 'YESENIA ABIGAIL AGUIRRE CORIA', 'yesenia.aguirre', '#Lds18001', 'alumno.yesenia.aguirre@universidaddeensenada.edu.mx', 'ENS', 'LD', 0, 76, 0, 77, 0, 78, 0, 0, 8, 'S', 'A'),
(293, 'JOSE NICOLAS CORTEZ TORREZ', 'jose.cortez', '#Lds180s2', 'alumno.jose.cortez@universidaddeensenada.edu.mx', 'ENS', 'LD', 0, 76, 0, 77, 0, 78, 0, 0, 8, 'S', 'A'),
(294, 'GLORIA ANGELICA FLORES GRANADOS', 'gloria.flores', '#Lds18003', 'alumno.gloria.flores@universidaddeensenada.edu.mx', 'ENS', 'LD', 0, 76, 0, 77, 0, 78, 0, 0, 8, 'S', 'A'),
(295, 'FELIPA GARCIA SANDOVAL', 'felipa.garcia', '#Lds18004', 'alumno.felipa.garcia@universidaddeensenada.edu.mx', 'ENS', 'LD', 0, 76, 0, 77, 0, 78, 0, 0, 8, 'S', 'A'),
(296, 'ALMA RUTH GONZALEZ ARIPEZ', 'alma.gonzalez', '#Lds18005', 'alumno.alma.gonzalez@universidaddeensenada.edu.mx', 'ENS', 'LD', 0, 76, 0, 77, 0, 78, 0, 0, 8, 'S', 'A'),
(297, 'JIMENA JARA QUEZADA LUNA', 'jimena.jara', '#ENSLDJIJA21p', 'alumno.jimena.jara@universidaddeensenada.edu.mx', 'ENS', 'LD', 0, 76, 0, 77, 0, 78, 0, 0, 8, 'S', 'A'),
(298, 'EVELIN DARIANA QUINTERO TRAPERO', 'evelin.quintero', '#Lds18006', 'alumno.evelin.quintero@universidaddeensenada.edu.mx', 'ENS', 'LD', 0, 76, 0, 77, 0, 78, 0, 0, 8, 'S', 'A'),
(299, 'PERLA EVELIN VILLA CERVANTES', 'perla.villa', '#Lds18008', 'alumno.perla.villa@universidaddeensenada.edu.mx', 'ENS', 'LD', 0, 76, 0, 77, 0, 78, 0, 0, 8, 'S', 'A'),
(300, 'WILIAN VILLANUEVA SALIGAN', 'wilian.villanueva', '#Lds18009', 'alumno.wilian.villanueva@universidaddeensenada.edu.mx', 'ENS', 'LD', 0, 76, 0, 77, 0, 78, 0, 0, 8, 'S', 'A'),
(301, 'ARTURO BUCIO ORTIZ', 'arturo.bucio', '#ENSIIARBU21k', 'alumno.arturo.bucio@universidaddeensenada.edu.mx', 'ENS', 'II', 0, 79, 0, 80, 0, 81, 0, 0, 1, 'S', 'A'),
(302, 'JAVIER CARDENAS NARANJO', 'javier.cardenas', '#ENSIIJACA21v', 'alumno.javier.cardenas@universidaddeensenada.edu.mx', 'ENS', 'II', 0, 79, 0, 80, 0, 81, 0, 0, 1, 'S', 'A'),
(303, 'STEPHANY GAETA ACOSTA', 'stephany.gaeta', '#ENSIISTGA21x', 'alumno.stephany.gaeta@universidaddeensenada.edu.mx', 'ENS', 'II', 0, 79, 0, 80, 0, 81, 0, 0, 1, 'S', 'A'),
(304, 'JOEL ABRAHAM GUERRERO VARGAS', 'joel.guerrero', '#ENSIIJOGE21t', 'alumno.joel.guerrero@universidaddeensenada.edu.mx', 'ENS', 'II', 0, 79, 0, 80, 0, 81, 0, 0, 1, 'S', 'A'),
(305, 'CARLOS IVAN LEON VAZQUEZ', 'carlos.leon', '#ENSIICALE21k', 'alumno.carlos.leon@universidaddeensenada.edu.mx', 'ENS', 'II', 0, 79, 0, 80, 0, 81, 0, 0, 1, 'S', 'A'),
(306, 'JESUS MARIANO MARTINEZ MARQUEZ', 'jesus.martinez', '#ENSIIJEMA21r', 'alumno.jesus.martinez@universidaddeensenada.edu.mx', 'ENS', 'II', 0, 79, 0, 80, 0, 81, 0, 0, 1, 'S', 'A'),
(307, 'KARINA ESMERALDA RANGEL CASTILLO', 'karina.rangel', '#ENSIIKARA21n', 'alumno.karina.rangel@universidaddeensenada.edu.mx', 'ENS', 'II', 0, 79, 0, 80, 0, 81, 0, 0, 1, 'S', 'A'),
(308, 'CRISTIAN ADRIAN RENDON CAMACHO', 'cristian.rendon', '#ENSIICRRE21z', 'alumno.cristian.rendon@universidaddeensenada.edu.mx', 'ENS', 'II', 0, 79, 0, 80, 0, 81, 0, 0, 1, 'S', 'A'),
(309, 'ARIADNA GUADALUPE RIVERA PULIDO', 'ariadna.rivera', '#ENSIIARRI21o', 'alumno.ariadna.rivera@universidaddeensenada.edu.mx', 'ENS', 'II', 0, 79, 0, 80, 0, 81, 0, 0, 1, 'S', 'A'),
(310, 'GLADIS ROMO BECERRA', 'gladis.romo', '#ENSIIGLRO21k', 'alumno.gladis.romo@universidaddeensenada.edu.mx', 'ENS', 'II', 0, 79, 0, 80, 0, 81, 0, 0, 1, 'S', 'A'),
(311, 'JOSELIN DEL CARMEN SOLANA HERNANDEZ', 'joselin.solana', '#ENSIIJOSO21l', 'alumno.joselin.solana@universidaddeensenada.edu.mx', 'ENS', 'II', 0, 79, 0, 80, 0, 81, 0, 0, 1, 'S', 'A'),
(312, 'SAUL ERNESTO VERA VALDEZ', 'saul.vera', '#ENSIISAVE21m', 'alumno.saul.vera@universidaddeensenada.edu.mx', 'ENS', 'II', 0, 79, 0, 80, 0, 81, 0, 0, 1, 'S', 'A'),
(313, 'FERNANDA GAMA BARRERA', 'fernanda.gama', '#Liis20002', 'alumno.fernanda.gama@universidaddeensenada.edu.mx', 'ENS', 'II', 0, 82, 0, 83, 0, 84, 0, 0, 4, 'S', 'A'),
(314, 'JESUS GILBERTO HERNANDEZ ROCHA', 'jesus.hernandez', '#Liis20003', 'alumno.jesus.hernandez@universidaddeensenada.edu.mx', 'ENS', 'II', 0, 82, 0, 83, 0, 84, 0, 0, 4, 'S', 'A'),
(315, 'MARCO ANTONIO MUÑOZ PONCE', 'marco.munoz', '#Liis20004', 'alumno.marco.munoz@universidaddeensenada.edu.mx', 'ENS', 'II', 0, 82, 0, 83, 0, 84, 0, 0, 4, 'S', 'A'),
(316, 'ULISES NIEVES PINEDA', 'ulises.nieves', '#Liis19007', 'alumno.ulises.nieves@universidaddeensenada.edu.mx', 'ENS', 'II', 0, 82, 0, 83, 0, 84, 0, 0, 4, 'S', 'A'),
(317, 'CESAR ABRAHAM PERALTA TINOCO', 'cesar.peralta', '#Liis20005', 'alumno.cesar.peralta@universidaddeensenada.edu.mx', 'ENS', 'II', 0, 82, 0, 83, 0, 84, 0, 0, 4, 'S', 'A'),
(318, 'BERNARDO REYES LANDEROS', 'bernardo.reyes', '#Liis20008', 'alumno.bernardo.reyes@universidaddeensenada.edu.mx', 'ENS', 'II', 0, 82, 0, 83, 0, 84, 0, 0, 4, 'S', 'A'),
(319, 'MERARY RAQUEL RUIZ GARCIA', 'merary.ruiz', '#Liis20009', 'alumno.merary.ruiz@universidaddeensenada.edu.mx', 'ENS', 'II', 0, 82, 0, 83, 0, 84, 0, 0, 4, 'S', 'A'),
(320, 'RAMON MIGUEL VALDEZ ACOSTA', 'ramon.valdez', '#Liim20006', 'alumno.ramon.valdez@universidaddeensenada.edu.mx', 'ENS', 'II', 0, 82, 0, 83, 0, 84, 0, 0, 4, 'S', 'A'),
(321, 'CLARISSA ALVARADO DAMIAN', 'clarissa.alvarado', '#Liis19001', 'alumno.clarissa.alvarado@universidaddeensenada.edu.mx', 'ENS', 'II', 0, 85, 0, 86, 0, 87, 0, 0, 7, 'S', 'A'),
(322, 'KAREN NOHEMY COTA QUEZADA', 'karen.cota', '#Liis19004', 'alumno.karen.cota@universidaddeensenada.edu.mx', 'ENS', 'II', 0, 85, 0, 86, 0, 87, 0, 0, 7, 'S', 'A'),
(323, 'LEONARDO ROBERTO ESPINAL MANRIQUEZ', 'leonardo.espinal', '#Liis19005', 'alumno.leonardo.espinal@universidaddeensenada.edu.mx', 'ENS', 'II', 0, 85, 0, 86, 0, 87, 0, 0, 7, 'S', 'A'),
(324, 'FRANCISCO JAVIER LOPEZ RODRIGUEZ', 'francisco.lopez', '#Liis19006', 'alumno.francisco.lopez@universidaddeensenada.edu.mx', 'ENS', 'II', 0, 85, 0, 86, 0, 87, 0, 0, 7, 'S', 'A'),
(325, 'EDUARDO ORTEGA HERNANDEZ', 'eduardo.ortega', '#Liis19008', 'alumno.eduardo.ortega@universidaddeensenada.edu.mx', 'ENS', 'II', 0, 85, 0, 86, 0, 87, 0, 0, 7, 'S', 'A'),
(326, 'CARLOS RUIZ GARCIA', 'carlos.ruiz', '#Liis19010', 'alumno.carlos.ruiz@universidaddeensenada.edu.mx', 'ENS', 'II', 0, 85, 0, 86, 0, 87, 0, 0, 7, 'S', 'A'),
(327, 'RAUL ANTONIO SILVA CONCHA', 'raul.silva', '#Liis19011', 'alumno.raul.silva@universidaddeensenada.edu.mx', 'ENS', 'II', 0, 85, 0, 86, 0, 87, 0, 0, 7, 'S', 'A'),
(328, 'ERICKA JAZMIN ARROYO ORTEGA', 'ericka.arroyo', '#ENSIIERAR21f', 'alumno.ericka.arroyo@universidaddeensenada.edu.mx', 'ENS', 'II', 0, 82, 0, 84, 0, 0, 0, 0, 7, 'S', 'A'),
(329, 'DENIGRIS CITLALI BERNARDO CANSECO', 'denigris.bernardo', '#Lcesqs20002', 'alumno.denigris.bernardo@universidaddeensenada.edu.mx', 'SQ', 'LE', 0, 88, 0, 89, 0, 90, 0, 0, 1, 'S', 'A'),
(330, 'IZARELI CANTON ANTONIO', 'izareli.canton', '#SQLEIZCA21h', 'alumno.izareli.canton@universidaddeensenada.edu.mx', 'SQ', 'LE', 0, 88, 0, 89, 0, 90, 0, 0, 1, 'S', 'A'),
(331, 'AZUCENA CRUZ JUAREZ', 'azucena.cruz', '#SQLEAZCR21b', 'alumno.azucena.cruz@universidaddeensenada.edu.mx', 'SQ', 'LE', 0, 88, 0, 89, 0, 90, 0, 0, 1, 'S', 'A'),
(332, 'LAURA LIZETH CRUZ LOPEZ', 'laura.cruz', '#SQLELACR21t', 'alumno.laura.cruz@universidaddeensenada.edu.mx', 'SQ', 'LE', 0, 88, 0, 89, 0, 90, 0, 0, 1, 'S', 'A'),
(333, 'JAZMIN CRUZ RIVERA', 'jazmin.cruz', '#SQLEJACR21h', 'alumno.jazmin.cruz@universidaddeensenada.edu.mx', 'SQ', 'LE', 0, 88, 0, 89, 0, 90, 0, 0, 1, 'S', 'A'),
(334, 'ADRIAN BAUTISTA GARCIA', 'adrian.bautista', '#SQLEADBA21e', 'alumno.adrian.bautista@universidaddeensenada.edu.mx', 'SQ', 'LE', 0, 88, 0, 89, 0, 90, 0, 0, 1, 'S', 'A'),
(335, 'ALONDRA ASENETH GARCIA SANTIAGO', 'alondra.garcia', '#SQLEALGA21s', 'alumno.alondra.garcia@universidaddeensenada.edu.mx', 'SQ', 'LE', 0, 88, 0, 89, 0, 90, 0, 0, 1, 'S', 'A'),
(336, 'CARMEN MARTINEZ LOPEZ', 'carmen.martinez', '#SQLECAMA21l', 'alumno.carmen.martinez@universidaddeensenada.edu.mx', 'SQ', 'LE', 0, 88, 0, 89, 0, 90, 0, 0, 1, 'S', 'A'),
(337, 'CAROLINA MENDOZA MELO', 'carolina.mendoza', '#SQLECAME21h', 'alumno.carolina.mendoza@universidaddeensenada.edu.mx', 'SQ', 'LE', 0, 88, 0, 89, 0, 90, 0, 0, 1, 'S', 'A'),
(338, 'YOCELY REYES', 'yocely.reyes', '#SQLEYORE21t', 'alumno.yocely.reyes@universidaddeensenada.edu.mx', 'SQ', 'LE', 0, 88, 0, 89, 0, 90, 0, 0, 1, 'S', 'A'),
(339, 'ALEXANDRA RIVERA LUNA', 'alexandra.rivera', '#SQLEALRI21u', 'alumno.alexandra.rivera@universidaddeensenada.edu.mx', 'SQ', 'LE', 0, 88, 0, 89, 0, 90, 0, 0, 1, 'S', 'A'),
(340, 'KENIA GUADALUPE RODRIGUEZ ROBLES', 'kenia.rodriguez', '#SQLEKERO21l', 'alumno.kenia.rodriguez@universidaddeensenada.edu.mx', 'SQ', 'LE', 0, 88, 0, 89, 0, 90, 0, 0, 1, 'S', 'A'),
(341, 'JOANA JUDITH ROSALES BELMAN', 'joana.rosales', '#SQLEJORO21c', 'alumno.joana.rosales@universidaddeensenada.edu.mx', 'SQ', 'LE', 0, 88, 0, 89, 0, 90, 0, 0, 1, 'S', 'A'),
(342, 'ANGELICA SOL KAMIRY SOLANO BELTRAN', 'angelica.solano', '#SQLEANSO21g', 'alumno.angelica.solano@universidaddeensenada.edu.mx', 'SQ', 'LE', 0, 88, 0, 89, 0, 90, 0, 0, 1, 'S', 'A'),
(343, 'ANA LAURA VENEGAS HERNANDEZ', 'ana.venegas', '#Laeylsqm20003', 'alumno.ana.venegas@universidaddeensenada.edu.mx', 'SQ', 'LE', 0, 88, 0, 89, 0, 90, 0, 0, 1, 'S', 'A'),
(344, 'PERLA JANETH VICENTE SANTIAGO', 'perla.vicente', '#SQLEPEVI21k', 'alumno.perla.vicente@universidaddeensenada.edu.mx', 'SQ', 'LE', 0, 88, 0, 89, 0, 90, 0, 0, 1, 'S', 'A'),
(345, 'CARLOS DANIEL CAMPOS LOPEZ', 'cdcampos', '#SQLECACA21f', 'alumno.carlos.campos@universidaddeensenada.edu.mx', 'SQ', 'LE', 0, 91, 0, 92, 0, 93, 0, 0, 1, 'S', 'B'),
(346, 'ESTRELLA ESMERALDA CERVANTES ANSELMO', 'estrella.cervantes', '#SQLEESCE21q', 'alumno.estrella.cervantes@universidaddeensenada.edu.mx', 'SQ', 'LE', 0, 91, 0, 92, 0, 93, 0, 0, 1, 'S', 'B'),
(347, 'VASTI BERENICE CRUZ DE LA CRUZ', 'vasti.cruz', '#SQLELACR21r', 'alumno.vasti.cruz@universidaddeensenada.edu.mx', 'SQ', 'LE', 0, 91, 0, 92, 0, 93, 0, 0, 1, 'S', 'B'),
(348, 'KIMBERLY MARIA DURAN ESCAMILLA', 'kimberly.duran', '#SQLEKIDU21b', 'alumno.kimberly.duran@universidaddeensenada.edu.mx', 'SQ', 'LE', 0, 91, 0, 92, 0, 93, 0, 0, 1, 'S', 'B'),
(349, 'YERALDIN GONZALEZ RUIZ', 'yeraldin.gonzalez', '#SQLEYEGO21y', 'alumno.yeraldin.gonzalez@universidaddeensenada.edu.mx', 'SQ', 'LE', 0, 91, 0, 92, 0, 93, 0, 0, 1, 'S', 'B'),
(350, 'KEVIN JIMENEZ SANCHEZ', 'kevin.jimenez', '#SQLEKEJI21t', 'alumno.kevin.jimenez@universidaddeensenada.edu.mx', 'SQ', 'LE', 0, 91, 0, 92, 0, 93, 0, 0, 1, 'S', 'B'),
(351, 'THAYLIN ARACELI MONTES OCHOA', 'thaylin.montes', '#SQLETHMO21s', 'alumno.thaylin.montes@universidaddeensenada.edu.mx', 'SQ', 'LE', 0, 91, 0, 92, 0, 93, 0, 0, 1, 'S', 'B'),
(352, 'SANTIAGO ABAD PABLO ROSAS', 'santiago.pablo', '#SQLESAPA21b', 'alumno.santiago.pablo@universidaddeensenada.edu.mx', 'SQ', 'LE', 0, 91, 0, 92, 0, 93, 0, 0, 1, 'S', 'B'),
(353, 'FLOR SERENA RAMIREZ CRUZ', 'flor.ramirez', '#SQLEFLRA21c', 'alumno.flor.ramirez@universidaddeensenada.edu.mx', 'SQ', 'LE', 0, 91, 0, 92, 0, 93, 0, 0, 1, 'S', 'B'),
(354, 'JOHANA BIBIANA RUIZ SOTO', 'johana.ruiz', '#SQLEJORU21p', 'alumno.johana.ruiz@universidaddeensenada.edu.mx', 'SQ', 'LE', 0, 91, 0, 92, 0, 93, 0, 0, 1, 'S', 'B'),
(355, 'AYSSEL ANGELINA SANDOVAL ARELLANO', 'ayssel.sandoval', '#SQLEAYSA21l', 'alumno.ayssel.sandoval@universidaddeensenada.edu.mx', 'SQ', 'LE', 0, 91, 0, 92, 0, 93, 0, 0, 1, 'S', 'B'),
(356, 'YASMIN SIMON CARINO', 'yasmin.simon', '#SQLEYASI21e', 'alumno.yasmin.simon@universidaddeensenada.edu.mx', 'SQ', 'LE', 0, 91, 0, 92, 0, 93, 0, 0, 1, 'S', 'B'),
(357, 'GENESIS ADAY VICENTE CARRERA', 'genesis.vicente', '#SQIIGEVI21t', 'alumno.genesis.vicente@universidaddeensenada.edu.mx', 'SQ', 'LE', 0, 91, 0, 92, 0, 93, 0, 0, 1, 'S', 'B'),
(358, 'PASCUAL AMARO REYES', 'pascual.amaro', '#SQIIPAAM21o', 'alumno.pascual.amaro@universidaddeensenada.edu.mx', 'SQ', 'II', 0, 94, 0, 95, 0, 96, 0, 0, 1, 'S', 'A'),
(359, 'ROSA MARIA AREVALO MARQUEZ', 'rosa.arevalo', '#SQIIROAR21g', 'alumno.rosa.arevalo@universidaddeensenada.edu.mx', 'SQ', 'II', 0, 94, 0, 95, 0, 96, 0, 0, 1, 'S', 'A'),
(360, 'ROBERTO CAMPOS NAVA', 'roberto.campos', '#SQIIROCA21z', 'alumno.roberto.campos@universidaddeensenada.edu.mx', 'SQ', 'II', 0, 94, 0, 95, 0, 96, 0, 0, 1, 'S', 'A'),
(361, 'JORGE CASTANEDA VILLAGRANA', 'jorge.castaneda', '#SQIIJOCA21q', 'alumno.jorge.castaneda@universidaddeensenada.edu.mx', 'SQ', 'II', 0, 94, 0, 95, 0, 96, 0, 0, 1, 'S', 'A'),
(362, 'EDITH ADILENE GARCIA FLORES', 'edith.garcia', '#SQIIEDGA21c', 'alumno.edith.garcia@universidaddeensenada.edu.mx', 'SQ', 'II', 0, 94, 0, 95, 0, 96, 0, 0, 1, 'S', 'A'),
(363, 'ALAN LOPEZ PEREZ', 'alan.lopez', '#SQIIALLO21r', 'alumno.alan.lopez@universidaddeensenada.edu.mx', 'SQ', 'II', 0, 94, 0, 95, 0, 96, 0, 0, 1, 'S', 'A'),
(364, 'RAFAEL MARTINEZ JIMENEZ', 'rafael.martinez', '#SQIIRAMA21c', 'alumno.rafael.martinez@universidaddeensenada.edu.mx', 'SQ', 'II', 0, 94, 0, 95, 0, 96, 0, 0, 1, 'S', 'A'),
(365, 'JOSE MANUEL OLIVERA BAUTISTA', 'jose.olivera', '#SQIIJOOL21v', 'alumno.jose.olivera@universidaddeensenada.edu.mx', 'SQ', 'II', 0, 94, 0, 95, 0, 96, 0, 0, 1, 'S', 'A'),
(366, 'ELEAZAR PACHECO NAVA', 'eleazar.pacheco', '#SQIIELPA21f', 'alumno.eleazar.pacheco@universidaddeensenada.edu.mx', 'SQ', 'II', 0, 94, 0, 95, 0, 96, 0, 0, 1, 'S', 'A'),
(367, 'ELIZETH PASTRANA SALAZAR', 'elizeth.pastrana', '#Liisqs20006', 'alumno.elizeth.pastrana@universidaddeensenada.edu.mx', 'SQ', 'II', 0, 94, 0, 95, 0, 96, 0, 0, 1, 'S', 'A'),
(368, 'JUAN CARLOS RAMIREZ SOTO', 'juan.ramirez', '#SQIIJURA21j', 'alumno.juan.ramirez@universidaddeensenada.edu.mx', 'SQ', 'II', 0, 94, 0, 95, 0, 96, 0, 0, 1, 'S', 'A'),
(369, 'MELVIN ALEXIS REYES HERNANDEZ', 'melvin.reyes', '#Liisqm20005', 'alumno.melvin.reyes@universidaddeensenada.edu.mx', 'SQ', 'II', 0, 94, 0, 95, 0, 96, 0, 0, 1, 'S', 'A'),
(370, 'JESUS ROBERTO SANCHEZ ROJAS', 'jsanchezr', '#SQIIJESA21u', 'alumno.jsanchezr@universidaddeensenada.edu.mx', 'SQ', 'II', 0, 94, 0, 95, 0, 96, 0, 0, 1, 'S', 'A'),
(371, 'WENDY GUADALUPE URIAS BELMAN', 'wendy.urias', '#SQIIWEUR21v', 'alumno.wendy.urias@universidaddeensenada.edu.mx', 'SQ', 'II', 0, 94, 0, 0, 0, 0, 0, 0, 1, 'S', 'A'),
(372, 'PEDRO ARENAS LOPEZ SAINZ', 'pedro.arenas', '#SQLAPEAR21n', 'alumno.pedro.arenas@universidaddeensenada.edu.mx', 'SQ', 'LA', 0, 97, 0, 98, 0, 99, 0, 0, 1, 'S', 'A'),
(373, 'RAMIRO CASTILLO AHUMADA', 'ramiro.castillo', '#SQLARACA21z', 'alumno.ramiro.castillo@universidaddeensenada.edu.mx', 'SQ', 'LA', 0, 97, 0, 98, 0, 99, 0, 0, 1, 'S', 'A'),
(374, 'ELOY DOLORES DE LA CRUZ', 'eloy.dolores', '#SQLAELDO21q', 'alumno.eloy.dolores@universidaddeensenada.edu.mx', 'SQ', 'LA', 0, 97, 0, 98, 0, 99, 0, 0, 1, 'S', 'A'),
(375, 'PABLO ROBERTO GARCIA VAZQUEZ', 'pablo.garcia', '#SQLAPAGA21m', 'alumno.pablo.garcia@universidaddeensenada.edu.mx', 'SQ', 'LA', 0, 97, 0, 98, 0, 99, 0, 0, 1, 'S', 'A'),
(376, 'EDITH BEATRIZ GONZALEZ ACEVEDO', 'edith.gonzalez', '#SQLAEDGO21e', 'alumno.edith.gonzalez@universidaddeensenada.edu.mx', 'SQ', 'LA', 0, 97, 0, 98, 0, 99, 0, 0, 1, 'S', 'A'),
(377, 'JOB LEON MELING', 'job.leon', '#SQLAJOLE21n', 'alumno.job.leon@universidaddeensenada.edu.mx', 'SQ', 'LA', 0, 97, 0, 98, 0, 99, 0, 0, 1, 'S', 'A'),
(378, 'DANIEL LOPEZ JACINTO', 'daniel.lopez', '#SQLADALO21w', 'alumno.daniel.lopez@universidaddeensenada.edu.mx', 'SQ', 'LA', 0, 97, 0, 98, 0, 99, 0, 0, 1, 'S', 'A'),
(379, 'YARELY NOHEMI LOZANO MARTINEZ', 'yarely.lozano', '#SQLAYALO21y', 'alumno.yarely.lozano@universidaddeensenada.edu.mx', 'SQ', 'LA', 0, 97, 0, 98, 0, 99, 0, 0, 1, 'S', 'A'),
(380, 'MARISOL MARCELINO SANTOS', 'marisol.marcelino', '#SQLAMAMA21s', 'alumno.marisol.marcelino@universidaddeensenada.edu.mx', 'SQ', 'LA', 0, 97, 0, 98, 0, 99, 0, 0, 1, 'S', 'A'),
(381, 'SALVADOR MERINO CAVERO', 'salvador.merino', '#SQLASAME21q', 'alumno.salvador.merino@universidaddeensenada.edu.mx', 'SQ', 'LA', 0, 97, 0, 98, 0, 99, 0, 0, 1, 'S', 'A'),
(382, 'ANGELICA YULISSA RAMIREZ MURILLO', 'angelica.ramirez', '#SQLAANRA21e', 'alumno.angelica.ramirez@universidaddeensenada.edu.mx', 'SQ', 'LA', 0, 97, 0, 98, 0, 99, 0, 0, 1, 'S', 'A'),
(383, 'BEATRIZ BERENICE REYES GASPAR', 'beatriz.reyes', '#SQLABERE21a', 'alumno.beatriz.reyes@universidaddeensenada.edu.mx', 'SQ', 'LA', 0, 97, 0, 98, 0, 99, 0, 0, 1, 'S', 'A'),
(384, 'BRENDA ABIGAIL TAMAYO MENDOZA', 'brenda.tamayo', '#SQLABRTA21e', 'alumno.brenda.tamayo@universidaddeensenada.edu.mx', 'SQ', 'LA', 0, 97, 0, 98, 0, 99, 0, 0, 1, 'S', 'A'),
(385, 'BIANCA CHISNTL TORRES MENDEZ', 'bianca.torres', '#SQLABITO21s', 'alumno.bianca.torres@universidaddeensenada.edu.mx', 'SQ', 'LA', 0, 97, 0, 98, 0, 99, 0, 0, 1, 'S', 'A'),
(386, 'ARMANDO VIDANA PLACENCIA', 'armando.vidana', '#SQLAARVI21j', 'alumno.armando.vidana@universidaddeensenada.edu.mx', 'SQ', 'LA', 0, 97, 0, 98, 0, 99, 0, 0, 1, 'S', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `instalaciones`
--

CREATE TABLE `instalaciones` (
  `id_instalaciones` int(3) NOT NULL,
  `cuestionario` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `servicios`
--

CREATE TABLE `servicios` (
  `id_servicios` int(3) NOT NULL,
  `Cuestionario` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id_curso`);

--
-- Indexes for table `docentes`
--
ALTER TABLE `docentes`
  ADD PRIMARY KEY (`id_docentes`);

--
-- Indexes for table `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`id_estudiante`);

--
-- Indexes for table `instalaciones`
--
ALTER TABLE `instalaciones`
  ADD PRIMARY KEY (`id_instalaciones`);

--
-- Indexes for table `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`id_servicios`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id_curso` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `docentes`
--
ALTER TABLE `docentes`
  MODIFY `id_docentes` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `estudiantes`
--
ALTER TABLE `estudiantes`
  MODIFY `id_estudiante` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=387;

--
-- AUTO_INCREMENT for table `instalaciones`
--
ALTER TABLE `instalaciones`
  MODIFY `id_instalaciones` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `servicios`
--
ALTER TABLE `servicios`
  MODIFY `id_servicios` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
