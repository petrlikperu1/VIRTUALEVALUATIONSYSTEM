CREATE  DATABASE  mydb6;
use  mydb6;

CREATE TABLE `alternativa` (
  `CODPREG` int(11) NOT NULL,
  `CODALTER` int(11) NOT NULL,
  `NUMALTER` char(1) NOT NULL,
  `CLAVEALTER` varchar(45) DEFAULT NULL,
  `ENUNCIADOALTER` varchar(10000) DEFAULT NULL,
  `IMGALTER` varchar(2000) DEFAULT NULL,
  `ESTADOIMG` char(1) DEFAULT NULL,
  `ESTADOALTER` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `alternativa`
--

INSERT INTO `alternativa` (`CODPREG`, `CODALTER`, `NUMALTER`, `CLAVEALTER`, `ENUNCIADOALTER`, `IMGALTER`, `ESTADOIMG`, `ESTADOALTER`) VALUES
(1, 1, '1', 'A', 'switch-if-else-case-default', '', '', ''),
(1, 2, '2', 'B', 'switch-case- return-default', '', '', ''),
(1, 3, '3', 'C', 'switch-return-continue-default', '', '', ''),
(1, 4, '4', 'D', 'switch-break-if-else-default', '', '', ''),
(1, 5, '5', 'E', 'switch-break-if-else-default', '', '', ''),
(1, 6, '6', 'F', 'switch - case-default-return', NULL, NULL, NULL),
(1, 7, '7', 'G', 'N.A', NULL, NULL, NULL),
(2, 8, '1', 'A', '3333333333333333333333333333333', '', '', ''),
(2, 9, '2', 'B', '3333333333333333333333333333333', '', '', ''),
(2, 10, '3', 'C', '3333333333333333333333333333333', '', '', ''),
(2, 11, '4', 'D', '3333333333333333333333333333333', '', '', ''),
(2, 12, '5', 'E', '3333333333333333333333333333333', '', '', ''),
(2, 13, '6', 'F', '3333333333333333333333333333333', NULL, NULL, NULL),
(2, 14, '7', 'G', '3333333333333333333333333333333', NULL, NULL, NULL),
(3, 15, '1', 'A', '333333333333333333333333333333', '', '', ''),
(3, 16, '2', 'B', '3333333333333333333333333333333', '', '', ''),
(3, 17, '3', 'C', '3333333333333333333333333333333', '', '', ''),
(3, 18, '4', 'D', '3333333333333333333333333333333', '', '', ''),
(3, 19, '5', 'E', '3333333333333333333333333333', '', '', ''),
(4, 20, '1', 'A', 'hhhhhhhhhhhhhhhhhhh', '', '', ''),
(4, 21, '2', 'B', 'bbbbbbbbbbbbbbbbbbbbbbbb', '', '', ''),
(4, 22, '3', 'C', 'cccccccccccccccccccccccccccccc', '', '', ''),
(4, 23, '4', 'D', 'ccccccccccccccccccccccccc', '', '', ''),
(4, 24, '5', 'E', 'ccccccccccccccccccccccccccccccc', '', '', ''),
(4, 25, '6', 'F', 'cccccccccccccccccccc', NULL, NULL, NULL),
(4, 26, '7', 'G', 'N.A', NULL, NULL, NULL),
(5, 27, '1', 'A', 'VFVFF', '', '', ''),
(5, 28, '2', 'B', 'VFVFV', '', '', ''),
(5, 29, '3', 'C', 'FFVFV', '', '', ''),
(5, 30, '4', 'D', 'VFFFV', '', '', ''),
(5, 31, '5', 'E', 'VFFFV', '', '', ''),
(5, 32, '6', 'F', 'VVFVV', NULL, NULL, NULL),
(5, 33, '7', 'G', 'N.A', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `CODALU` int(11) NOT NULL,
  `NOMBALU` varchar(45) DEFAULT NULL,
  `APEPATERALU` varchar(45) DEFAULT NULL,
  `APEMATERALU` varchar(45) DEFAULT NULL,
  `EMAIL` varchar(100) NOT NULL,
  `NROTELEFONO` varchar(50) NOT NULL,
  `DIRECCION` varchar(5000) NOT NULL,
  `USUARIO` varchar(45) DEFAULT NULL,
  `CLAVE` varchar(45) DEFAULT NULL,
  `FOTO` varchar(500) NOT NULL,
  `ESTADO` char(1) NOT NULL,
  `CODCARRERA` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`CODALU`, `NOMBALU`, `APEPATERALU`, `APEMATERALU`, `EMAIL`, `NROTELEFONO`, `DIRECCION`, `USUARIO`, `CLAVE`, `FOTO`, `ESTADO`, `CODCARRERA`) VALUES
(13, 'Antonio', 'Carhuajulca', 'Quispe', 'petrlikperu@gmail.com', '014244188', 'AV DEL  PACIFICO 175  SAN MIGUEL', '199622117', '1234', '/fotos/estudiante/sinfoto.gif', 'A', 1),
(18, 'Issac', 'Calderon', 'Allauca', 'petrlikperu@gmail.com', '014244188', 'AV DEL  PACIFICO 175  SAN MIGUEL', '199622122', '1234', '/fotos/estudiante/sinfoto.gif', 'A', 1),
(23, 'Alvaro', 'Castro', 'Urbina', 'petrlikperu@gmail.com', '014244188', 'AV DEL  PACIFICO 175  SAN MIGUEL', '199622127', '1234', '/fotos/estudiante/sinfoto.gif', 'A', 1),
(31, 'Antonio', 'Cabrera', 'Cabrera', 'petrlikperu@gmail.com', '014244188', 'AV DEL  PACIFICO 175  SAN MIGUEL', '199622135', '1234', '/fotos/estudiante/sinfoto.gif', 'A', 1),
(37, 'Juan', 'Benavides', 'Azabache', 'petrlikperu@gmail.com', '014244188', 'AV DEL  PACIFICO 175  SAN MIGUEL', '199622141', '1234', '/fotos/estudiante/sinfoto.gif', 'A', 1),
(38, 'JUAN', 'VERA', 'CASTILLO', 'Coloca por favor un  Correo Electronico !!', '00000000', 'Coloque la direccion por favor!!!', 'jvera', '*************', 'LLANOS.jpg', 'A', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnoxmateria`
--

CREATE TABLE `alumnoxmateria` (
  `CODMATRICULA` int(11) NOT NULL,
  `CODALU` int(11) NOT NULL,
  `CODCARRERA` int(11) NOT NULL,
  `CODMATERIA` int(11) NOT NULL,
  `FECHAMATRICULA` varchar(45) NOT NULL,
  `CODSEMESTRE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnoxmateriaxprogramacionexam`
--

CREATE TABLE `alumnoxmateriaxprogramacionexam` (
  `CODALUXMATEXPROGXEXAM` int(11) NOT NULL,
  `CODMATRICULA` int(11) NOT NULL,
  `CODALU` int(11) DEFAULT NULL,
  `CODCARRERA` int(11) DEFAULT NULL,
  `CODMATERIA` int(11) DEFAULT NULL,
  `CODPROGEXAMEN` int(11) NOT NULL,
  `CODESTRUCEXAMEN` int(11) DEFAULT NULL,
  `CODPROGHORARIO` int(11) DEFAULT NULL,
  `ESTADO` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `alumnoxmateriaxprogramacionexam`
--

INSERT INTO `alumnoxmateriaxprogramacionexam` (`CODALUXMATEXPROGXEXAM`, `CODMATRICULA`, `CODALU`, `CODCARRERA`, `CODMATERIA`, `CODPROGEXAMEN`, `CODESTRUCEXAMEN`, `CODPROGHORARIO`, `ESTADO`) VALUES
(22, 8, NULL, NULL, NULL, 6, NULL, NULL, 'A'),
(23, 1, NULL, NULL, NULL, 3, NULL, NULL, 'A'),
(24, 1, NULL, NULL, NULL, 5, NULL, NULL, 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ayudas`
--

CREATE TABLE `ayudas` (
  `CODPREG` int(11) NOT NULL,
  `CODAYUDA` int(11) NOT NULL,
  `NUMAYUDA` int(11) NOT NULL,
  `ENUNCIADOAYUDA` varchar(10000) DEFAULT NULL,
  `PENALIDADAYUDA` int(11) DEFAULT NULL,
  `IMGAYUDA` varchar(2000) DEFAULT NULL,
  `ESTADOIMGAYUDA` char(1) DEFAULT NULL,
  `ESTADOAYUDA` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ayudas`
--

INSERT INTO `ayudas` (`CODPREG`, `CODAYUDA`, `NUMAYUDA`, `ENUNCIADOAYUDA`, `PENALIDADAYUDA`, `IMGAYUDA`, `ESTADOIMGAYUDA`, `ESTADOAYUDA`) VALUES
(1, 2, 1, 'Es una  estructura  que  me  permite  manejar  varias opciones una  a  la  vez .Además   cuando  alguna opción no este contemplado , automáticamente  se va a  un depurador.Es una  estructura  muy limpia y  ordenada.', 0, '', 'A', 'A'),
(2, 4, 1, '1-13 , 2-1 , 3-11 , 4-16 , 5-2  , 6-12 ,7-14 , 8-6 , 9-15 ,10-4 , 11-10 ,12-9 , 13-9  , 15-5 ,16-3', 0, '', 'A', 'A'),
(3, 6, 1, 'Los operadores de incremento i++ e i+=1  realizan la misma  función de  contabilizar de uno en  uno. El  default se activa cuando  al determinar una  opción en el switch no se encuentra dentro de la lista de  casos o case. Los tipos de  datos  byte maneja un rango de  -128ª  127, int  maneja un rango de  2*10 a la  nueve. La  clase  Scanner me permite el ingreso de caracteres.  El operador ==  no es lo mismo que el operador =   .', 0, '', 'A', 'A'),
(4, 8, 1, 'Es una  estructura  que  me  permite  manejar  varias opciones una  a  la  vez .Además   cuando  alguna opción no este contemplado , automáticamente  se va a  un depurador.Es una  estructura  muy limpia y  ordenada.', 0, '', 'A', 'A'),
(5, 10, 1, 'Es una  estructura  que  me  permite  manejar  varias opciones una  a  la  vez .Además   cuando  alguna opción no este contemplado , automáticamente  se va a  un depurador.Es una  estructura  muy limpia y  ordenada.', 0, '', 'A', 'A'),
(5, 11, 2, 'FALTA  5555555555555555555555555555555555', 0, '', 'A', 'A'),
(6, 13, 1, 'FALTA TODAVIA', 0, '', 'A', 'A'),
(7, 15, 1, 'FALTA  AYUDA', 0, '', 'A', 'A'),
(8, 17, 1, 'FALTA   COLOCAR  AYUDA', 0, '', 'A', 'A'),
(8, 18, 2, 'FALTA   COLOCAR  AYUDA', 0, '', 'A', 'A'),
(9, 20, 1, 'FALTA  AYUDA', 0, '', 'A', 'A'),
(9, 21, 2, 'FALTA AYUDA', 0, '', 'A', 'A'),
(9, 22, 3, 'FALTA  AYUDA', 0, '', 'A', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreraprofesional`
--

CREATE TABLE `carreraprofesional` (
  `CODCARRERA` int(11) NOT NULL,
  `NOMBCARRERA` varchar(100) DEFAULT NULL,
  `ESTADO` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `carreraprofesional`
--

INSERT INTO `carreraprofesional` (`CODCARRERA`, `NOMBCARRERA`, `ESTADO`) VALUES
(1, 'INGENIERIA DE SISTEMAS Y AUDITORIA INFORMATICA', 'A'),
(2, 'DERECHO', 'A'),
(3, 'PSICOLOGIA', 'A'),
(4, 'INGENIERIA ELECTRONICA', 'A'),
(5, 'INGENIERIA INDUSTRIAL', 'A'),
(6, 'INGENIERIA AMBIENTAL', 'A'),
(7, 'ADMINISTRACION', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `desarrolloexamengenerado`
--

CREATE TABLE `desarrolloexamengenerado` (
  `CODEXAMENGENERADO` int(11) NOT NULL,
  `CODESTRUCEXAMEN` int(11) NOT NULL DEFAULT 0,
  `CODDETAMATRI` int(11) NOT NULL DEFAULT 0,
  `CODMATRICULA` int(11) NOT NULL DEFAULT 0,
  `CODDESARROLLOEXAMGENERADO` int(11) NOT NULL DEFAULT 0,
  `NUMEXAMDESARROLLOGENERADO` int(11) NOT NULL,
  `CODPREG` int(11) NOT NULL,
  `RESPCONTESTADA` varchar(20000) NOT NULL,
  `DESCPUNTAJExPREGEERRADA` decimal(5,2) DEFAULT NULL,
  `DESCPUNTAJExAYUDAUTIL` decimal(5,2) DEFAULT NULL,
  `PUNTAJEPREGUNTA` decimal(5,2) NOT NULL,
  `CAPACIDAD` varchar(100) NOT NULL,
  `TIPOPREG` varchar(100) NOT NULL,
  `ESTADO` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `desarrolloexamengenerado`
--

INSERT INTO `desarrolloexamengenerado` (`CODEXAMENGENERADO`, `CODESTRUCEXAMEN`, `CODDETAMATRI`, `CODMATRICULA`, `CODDESARROLLOEXAMGENERADO`, `NUMEXAMDESARROLLOGENERADO`, `CODPREG`, `RESPCONTESTADA`, `DESCPUNTAJExPREGEERRADA`, `DESCPUNTAJExAYUDAUTIL`, `PUNTAJEPREGUNTA`, `CAPACIDAD`, `TIPOPREG`, `ESTADO`) VALUES
(1, 1, 1, 1, 1, 1, 1, 'A', '0.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(1, 1, 1, 1, 2, 2, 2, 'C', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(1, 1, 1, 1, 3, 3, 3, 'C', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(1, 1, 1, 1, 4, 4, 4, 'B', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(1, 1, 1, 1, 5, 5, 5, 'B', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(1, 1, 1, 1, 6, 6, 6, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(1, 1, 1, 1, 7, 7, 7, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(1, 1, 1, 1, 8, 8, 8, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(1, 1, 1, 1, 9, 9, 9, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(2, 1, 2, 2, 10, 1, 1, 'A', '0.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(2, 1, 2, 2, 11, 2, 2, 'C', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(2, 1, 2, 2, 12, 3, 3, 'C', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(2, 1, 2, 2, 13, 4, 4, 'B', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(2, 1, 2, 2, 14, 5, 5, 'B', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(2, 1, 2, 2, 15, 6, 6, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(2, 1, 2, 2, 16, 7, 7, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(2, 1, 2, 2, 17, 8, 8, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(2, 1, 2, 2, 18, 9, 9, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(3, 1, 3, 3, 19, 1, 1, 'A', '0.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(3, 1, 3, 3, 20, 2, 2, 'C', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(3, 1, 3, 3, 21, 3, 3, 'C', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(3, 1, 3, 3, 22, 4, 4, 'B', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(3, 1, 3, 3, 23, 5, 5, 'B', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(3, 1, 3, 3, 24, 6, 6, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(3, 1, 3, 3, 25, 7, 7, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(3, 1, 3, 3, 26, 8, 8, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(3, 1, 3, 3, 27, 9, 9, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(4, 1, 4, 4, 28, 1, 1, 'A', '0.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(4, 1, 4, 4, 29, 2, 2, 'C', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(4, 1, 4, 4, 30, 3, 3, 'C', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(4, 1, 4, 4, 31, 4, 4, 'B', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(4, 1, 4, 4, 32, 5, 5, 'B', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(4, 1, 4, 4, 33, 6, 6, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(4, 1, 4, 4, 34, 7, 7, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(4, 1, 4, 4, 35, 8, 8, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(4, 1, 4, 4, 36, 9, 9, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(5, 1, 5, 5, 37, 1, 1, 'A', '0.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(5, 1, 5, 5, 38, 2, 2, 'C', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(5, 1, 5, 5, 39, 3, 3, 'C', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(5, 1, 5, 5, 40, 4, 4, 'B', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(5, 1, 5, 5, 41, 5, 5, 'B', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(5, 1, 5, 5, 42, 6, 6, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(5, 1, 5, 5, 43, 7, 7, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(5, 1, 5, 5, 44, 8, 8, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(5, 1, 5, 5, 45, 9, 9, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(6, 1, 6, 6, 46, 1, 1, 'A', '0.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(6, 1, 6, 6, 47, 2, 2, 'C', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(6, 1, 6, 6, 48, 3, 3, 'C', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(6, 1, 6, 6, 49, 4, 4, 'B', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(6, 1, 6, 6, 50, 5, 5, 'B', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(6, 1, 6, 6, 51, 6, 6, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(6, 1, 6, 6, 52, 7, 7, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(6, 1, 6, 6, 53, 8, 8, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(6, 1, 6, 6, 54, 9, 9, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(7, 1, 7, 7, 55, 1, 1, 'A', '0.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(7, 1, 7, 7, 56, 2, 2, 'C', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(7, 1, 7, 7, 57, 3, 3, 'C', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(7, 1, 7, 7, 58, 4, 4, 'B', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(7, 1, 7, 7, 59, 5, 5, 'B', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(7, 1, 7, 7, 60, 6, 6, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(7, 1, 7, 7, 61, 7, 7, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(7, 1, 7, 7, 62, 8, 8, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(7, 1, 7, 7, 63, 9, 9, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(8, 1, 8, 8, 64, 1, 1, 'A', '0.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(8, 1, 8, 8, 65, 2, 2, 'C', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(8, 1, 8, 8, 66, 3, 3, 'C', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(8, 1, 8, 8, 67, 4, 4, 'B', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(8, 1, 8, 8, 68, 5, 5, 'B', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(8, 1, 8, 8, 69, 6, 6, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(8, 1, 8, 8, 70, 7, 7, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(8, 1, 8, 8, 71, 8, 8, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(8, 1, 8, 8, 72, 9, 9, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(9, 1, 9, 9, 73, 1, 1, 'A', '0.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(9, 1, 9, 9, 74, 2, 2, 'C', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(9, 1, 9, 9, 75, 3, 3, 'C', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(9, 1, 9, 9, 76, 4, 4, 'B', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(9, 1, 9, 9, 77, 5, 5, 'B', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A');
INSERT INTO `desarrolloexamengenerado` (`CODEXAMENGENERADO`, `CODESTRUCEXAMEN`, `CODDETAMATRI`, `CODMATRICULA`, `CODDESARROLLOEXAMGENERADO`, `NUMEXAMDESARROLLOGENERADO`, `CODPREG`, `RESPCONTESTADA`, `DESCPUNTAJExPREGEERRADA`, `DESCPUNTAJExAYUDAUTIL`, `PUNTAJEPREGUNTA`, `CAPACIDAD`, `TIPOPREG`, `ESTADO`) VALUES
(9, 1, 9, 9, 78, 6, 6, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(9, 1, 9, 9, 79, 7, 7, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(9, 1, 9, 9, 80, 8, 8, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(9, 1, 9, 9, 81, 9, 9, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(10, 1, 10, 10, 82, 1, 1, 'A', '0.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(10, 1, 10, 10, 83, 2, 2, 'C', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(10, 1, 10, 10, 84, 3, 3, 'C', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(10, 1, 10, 10, 85, 4, 4, 'B', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(10, 1, 10, 10, 86, 5, 5, 'B', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(10, 1, 10, 10, 87, 6, 6, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(10, 1, 10, 10, 88, 7, 7, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(10, 1, 10, 10, 89, 8, 8, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(10, 1, 10, 10, 90, 9, 9, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(11, 1, 11, 11, 91, 1, 1, 'A', '0.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(11, 1, 11, 11, 92, 2, 2, 'C', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(11, 1, 11, 11, 93, 3, 3, 'C', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(11, 1, 11, 11, 94, 4, 4, 'B', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(11, 1, 11, 11, 95, 5, 5, 'B', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(11, 1, 11, 11, 96, 6, 6, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(11, 1, 11, 11, 97, 7, 7, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(11, 1, 11, 11, 98, 8, 8, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(11, 1, 11, 11, 99, 9, 9, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(12, 1, 12, 12, 100, 1, 1, 'A', '0.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(12, 1, 12, 12, 101, 2, 2, 'C', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(12, 1, 12, 12, 102, 3, 3, 'C', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(12, 1, 12, 12, 103, 4, 4, 'B', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(12, 1, 12, 12, 104, 5, 5, 'B', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(12, 1, 12, 12, 105, 6, 6, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(12, 1, 12, 12, 106, 7, 7, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(12, 1, 12, 12, 107, 8, 8, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(12, 1, 12, 12, 108, 9, 9, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(13, 1, 13, 13, 109, 1, 1, 'A', '0.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(13, 1, 13, 13, 110, 2, 2, 'C', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(13, 1, 13, 13, 112, 3, 3, 'C', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(13, 1, 13, 13, 113, 4, 4, 'B', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(13, 1, 13, 13, 114, 5, 5, 'B', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(13, 1, 13, 13, 115, 6, 6, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(13, 1, 13, 13, 116, 7, 7, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(13, 1, 13, 13, 117, 8, 8, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(13, 1, 13, 13, 118, 9, 9, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(14, 1, 14, 14, 119, 1, 1, 'A', '0.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(14, 1, 14, 14, 120, 2, 2, 'C', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(14, 1, 14, 14, 121, 3, 3, 'C', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(14, 1, 14, 14, 122, 4, 4, 'B', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(14, 1, 14, 14, 123, 5, 5, 'B', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(14, 1, 14, 14, 124, 6, 6, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(14, 1, 14, 14, 125, 7, 7, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(14, 1, 14, 14, 126, 8, 8, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(14, 1, 14, 14, 127, 9, 9, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(15, 1, 15, 15, 128, 1, 1, 'A', '0.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(15, 1, 15, 15, 129, 2, 2, 'C', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(15, 1, 15, 15, 130, 3, 3, 'C', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(15, 1, 15, 15, 131, 4, 4, 'B', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(15, 1, 15, 15, 132, 5, 5, 'B', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(15, 1, 15, 15, 133, 6, 6, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(15, 1, 15, 15, 134, 7, 7, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(15, 1, 15, 15, 135, 8, 8, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(15, 1, 15, 15, 136, 9, 9, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(16, 1, 16, 16, 137, 1, 1, 'A', '0.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(16, 1, 16, 16, 138, 2, 2, 'C', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(16, 1, 16, 16, 139, 3, 3, 'C', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(16, 1, 16, 16, 140, 4, 4, 'B', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(16, 1, 16, 16, 141, 5, 5, 'B', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(16, 1, 16, 16, 142, 6, 6, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(16, 1, 16, 16, 143, 7, 7, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(16, 1, 16, 16, 144, 8, 8, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(16, 1, 16, 16, 145, 9, 9, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(17, 1, 17, 17, 146, 1, 1, 'A', '0.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(17, 1, 17, 17, 147, 2, 2, 'C', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(17, 1, 17, 17, 148, 3, 3, 'C', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(17, 1, 17, 17, 149, 4, 4, 'B', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(17, 1, 17, 17, 150, 5, 5, 'B', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A');
INSERT INTO `desarrolloexamengenerado` (`CODEXAMENGENERADO`, `CODESTRUCEXAMEN`, `CODDETAMATRI`, `CODMATRICULA`, `CODDESARROLLOEXAMGENERADO`, `NUMEXAMDESARROLLOGENERADO`, `CODPREG`, `RESPCONTESTADA`, `DESCPUNTAJExPREGEERRADA`, `DESCPUNTAJExAYUDAUTIL`, `PUNTAJEPREGUNTA`, `CAPACIDAD`, `TIPOPREG`, `ESTADO`) VALUES
(17, 1, 17, 17, 151, 6, 6, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(17, 1, 17, 17, 152, 7, 7, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(17, 1, 17, 17, 153, 8, 8, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(17, 1, 17, 17, 154, 9, 9, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(18, 1, 18, 18, 155, 1, 1, 'A', '0.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(18, 1, 18, 18, 156, 2, 2, 'C', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(18, 1, 18, 18, 157, 3, 3, 'C', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(18, 1, 18, 18, 158, 4, 4, 'B', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(18, 1, 18, 18, 159, 5, 5, 'B', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(18, 1, 18, 18, 160, 6, 6, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(18, 1, 18, 18, 161, 7, 7, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(18, 1, 18, 18, 162, 8, 8, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(18, 1, 18, 18, 163, 9, 9, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(19, 1, 19, 19, 164, 1, 1, 'A', '0.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(19, 1, 19, 19, 165, 2, 2, 'C', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(19, 1, 19, 19, 166, 3, 3, 'C', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(19, 1, 19, 19, 167, 4, 4, 'B', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(19, 1, 19, 19, 168, 5, 5, 'B', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(19, 1, 19, 19, 169, 6, 6, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(19, 1, 19, 19, 170, 7, 7, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(19, 1, 19, 19, 171, 8, 8, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(19, 1, 19, 19, 172, 9, 9, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(20, 1, 20, 20, 173, 1, 1, 'A', '0.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(20, 1, 20, 20, 174, 2, 2, 'C', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(20, 1, 20, 20, 175, 3, 3, 'C', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(20, 1, 20, 20, 176, 4, 4, 'B', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(20, 1, 20, 20, 177, 5, 5, 'B', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(20, 1, 20, 20, 178, 6, 6, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(20, 1, 20, 20, 179, 7, 7, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(20, 1, 20, 20, 180, 8, 8, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(20, 1, 20, 20, 181, 9, 9, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(21, 1, 21, 21, 182, 1, 1, 'A', '0.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(21, 1, 21, 21, 183, 2, 2, 'C', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(21, 1, 21, 21, 184, 3, 3, 'C', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(21, 1, 21, 21, 185, 4, 4, 'B', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(21, 1, 21, 21, 186, 5, 5, 'B', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(21, 1, 21, 21, 187, 6, 6, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(21, 1, 21, 21, 188, 7, 7, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(21, 1, 21, 21, 189, 8, 8, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(21, 1, 21, 21, 190, 9, 9, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(22, 1, 22, 22, 191, 1, 1, 'A', '0.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(22, 1, 22, 22, 192, 2, 2, 'C', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(22, 1, 22, 22, 193, 3, 3, 'C', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(22, 1, 22, 22, 194, 4, 4, 'B', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(22, 1, 22, 22, 195, 5, 5, 'B', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(22, 1, 22, 22, 196, 6, 6, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(22, 1, 22, 22, 197, 7, 7, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(22, 1, 22, 22, 198, 8, 8, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(22, 1, 22, 22, 199, 9, 9, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(23, 1, 23, 23, 200, 1, 1, 'A', '0.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(23, 1, 23, 23, 201, 2, 2, 'C', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(23, 1, 23, 23, 202, 3, 3, 'C', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(23, 1, 23, 23, 203, 4, 4, 'B', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(23, 1, 23, 23, 204, 5, 5, 'B', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(23, 1, 23, 23, 205, 6, 6, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(23, 1, 23, 23, 206, 7, 7, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(23, 1, 23, 23, 207, 8, 8, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(23, 1, 23, 23, 208, 9, 9, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(24, 1, 24, 24, 209, 1, 1, 'A', '0.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(24, 1, 24, 24, 210, 2, 2, 'C', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(24, 1, 24, 24, 211, 3, 3, 'C', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(24, 1, 24, 24, 212, 4, 4, 'B', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(24, 1, 24, 24, 213, 5, 5, 'B', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(24, 1, 24, 24, 214, 6, 6, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(24, 1, 24, 24, 215, 7, 7, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(24, 1, 24, 24, 216, 8, 8, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(24, 1, 24, 24, 217, 9, 9, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(25, 1, 25, 25, 218, 1, 1, 'A', '0.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(25, 1, 25, 25, 219, 2, 2, 'C', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(25, 1, 25, 25, 220, 3, 3, 'C', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(25, 1, 25, 25, 221, 4, 4, 'B', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(25, 1, 25, 25, 222, 5, 5, 'B', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A');
INSERT INTO `desarrolloexamengenerado` (`CODEXAMENGENERADO`, `CODESTRUCEXAMEN`, `CODDETAMATRI`, `CODMATRICULA`, `CODDESARROLLOEXAMGENERADO`, `NUMEXAMDESARROLLOGENERADO`, `CODPREG`, `RESPCONTESTADA`, `DESCPUNTAJExPREGEERRADA`, `DESCPUNTAJExAYUDAUTIL`, `PUNTAJEPREGUNTA`, `CAPACIDAD`, `TIPOPREG`, `ESTADO`) VALUES
(25, 1, 25, 25, 223, 6, 6, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(25, 1, 25, 25, 224, 7, 7, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(25, 1, 25, 25, 225, 8, 8, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(25, 1, 25, 25, 226, 9, 9, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(26, 1, 26, 26, 227, 1, 1, 'A', '0.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(26, 1, 26, 26, 228, 2, 2, 'C', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(26, 1, 26, 26, 229, 3, 3, 'C', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(26, 1, 26, 26, 230, 4, 4, 'B', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(26, 1, 26, 26, 231, 5, 5, 'B', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(26, 1, 26, 26, 232, 6, 6, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(26, 1, 26, 26, 233, 7, 7, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(26, 1, 26, 26, 234, 8, 8, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(26, 1, 26, 26, 235, 9, 9, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(27, 1, 27, 27, 236, 1, 1, 'A', '0.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(27, 1, 27, 27, 237, 2, 2, 'C', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(27, 1, 27, 27, 238, 3, 3, 'C', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(27, 1, 27, 27, 239, 4, 4, 'B', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(27, 1, 27, 27, 240, 5, 5, 'B', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(27, 1, 27, 27, 241, 6, 6, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(27, 1, 27, 27, 242, 7, 7, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(27, 1, 27, 27, 243, 8, 8, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(27, 1, 27, 27, 244, 9, 9, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(28, 1, 28, 28, 245, 1, 1, 'A', '0.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(28, 1, 28, 28, 246, 2, 2, 'C', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(28, 1, 28, 28, 247, 3, 3, 'C', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(28, 1, 28, 28, 248, 4, 4, 'B', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(28, 1, 28, 28, 249, 5, 5, 'B', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(28, 1, 28, 28, 250, 6, 6, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(28, 1, 28, 28, 251, 7, 7, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(28, 1, 28, 28, 252, 8, 8, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(28, 1, 28, 28, 253, 9, 9, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(29, 1, 29, 29, 254, 1, 1, 'A', '0.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(29, 1, 29, 29, 255, 2, 2, 'C', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(29, 1, 29, 29, 256, 3, 3, 'C', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(29, 1, 29, 29, 257, 4, 4, 'B', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(29, 1, 29, 29, 258, 5, 5, 'B', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(29, 1, 29, 29, 259, 6, 6, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(29, 1, 29, 29, 260, 7, 7, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(29, 1, 29, 29, 261, 8, 8, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(29, 1, 29, 29, 262, 9, 9, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(30, 1, 30, 30, 263, 1, 1, 'A', '0.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(30, 1, 30, 30, 264, 2, 2, 'C', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(30, 1, 30, 30, 265, 3, 3, 'C', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(30, 1, 30, 30, 266, 4, 4, 'B', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(30, 1, 30, 30, 267, 5, 5, 'B', '-1.00', '-1.00', '5.00', 'CONCEPTUAL', 'SUPERVISADO', 'A'),
(30, 1, 30, 30, 268, 6, 6, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(30, 1, 30, 30, 269, 7, 7, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(30, 1, 30, 30, 270, 8, 8, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A'),
(30, 1, 30, 30, 271, 9, 9, '<p>SELECT &nbsp;T.CODALU,P.CODMATRICULA,P.CODDETAMATRI,M.NOMBMATERIA,Y.NOMBSEMESTRE ,M.CODMATERIA from detallematricula as P&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programacionmateria as N on N.CODPROGRAMAT=P.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;INNER JOIN programarexamen as C ON P.CODPROGRAMAT=C.CODPROGRAMAT&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN materia as M ON N.CODMATERIA=M.CODMATERIA &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN matricula as T ON T.CODMATRICULA=P.CODMATRICULA&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; INNER JOIN semestre as Y ON Y.CODSEMESTRE=T.CODSEMESTRE where &nbsp;T.CODSEMESTRE=2 &nbsp;and &nbsp;M.CODMATERIA=1;</p>', '-1.00', '-1.00', '5.00', 'PROCEDIMENTAL', 'SUPERVISADO', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detaexamengenerado`
--

CREATE TABLE `detaexamengenerado` (
  `CODDETEXAMGENERADO` int(11) NOT NULL,
  `IDNUMEXAMGENERADO` int(11) NOT NULL,
  `CODALUXMATEXPROGXEXAM` int(11) NOT NULL,
  `CODPREG` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalleestructuraexamen`
--

CREATE TABLE `detalleestructuraexamen` (
  `CODESTRUCEXAMEN` int(11) NOT NULL,
  `CODDETAESCTRUCEXA` int(11) NOT NULL,
  `NUMITEM` int(11) NOT NULL,
  `CODCARRERA` int(11) NOT NULL,
  `CODMATERIA` int(11) NOT NULL,
  `CODUNIDAD` int(11) NOT NULL,
  `CODTEMA` int(11) NOT NULL,
  `CODNIVEL` int(11) NOT NULL,
  `CANTPREG` int(11) NOT NULL,
  `PUNTAJEXPREG` decimal(5,2) NOT NULL,
  `TIEMPOXPREG` int(11) NOT NULL,
  `PENALIDADXPREG` decimal(5,2) NOT NULL,
  `PENALIDADAYUDA` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalleestructuraexamenejer`
--

CREATE TABLE `detalleestructuraexamenejer` (
  `CODESTRUCEXAMEN` int(11) NOT NULL,
  `CODESTRUCEXAMENEJER` int(11) NOT NULL,
  `CODDETAESCTRUCEXAEJER` int(11) NOT NULL,
  `NUMITEM` int(11) NOT NULL,
  `CODNIVEL` int(11) NOT NULL,
  `CANTPREG` int(11) NOT NULL,
  `PUNTAJEXPREG` decimal(5,2) NOT NULL,
  `PENALIDADXPREG` decimal(5,2) NOT NULL,
  `PENALIDADAYUDA` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalleexamenautogenerado`
--

CREATE TABLE `detalleexamenautogenerado` (
  `CODDETEXAMENGENERADO` int(11) NOT NULL,
  `CODEXAMENGENERADO` int(11) NOT NULL DEFAULT 0,
  `NUMITEMEXAMENGENERADO` int(11) NOT NULL DEFAULT 0,
  `CODPREG` int(11) DEFAULT NULL,
  `CLAVERESPCORRECTA` varchar(50) DEFAULT NULL,
  `CLAVERESPCONTESTADA` varchar(50) DEFAULT NULL,
  `PUNTAJEPREG` decimal(5,2) DEFAULT NULL,
  `PENALPREGERRADA` decimal(5,2) DEFAULT NULL,
  `PENALTOTALAYUDAS` decimal(5,2) DEFAULT NULL,
  `PUNTAJECALCULADO` decimal(5,2) DEFAULT NULL,
  `ESTADO` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `detalleexamenautogenerado`
--

INSERT INTO `detalleexamenautogenerado` (`CODDETEXAMENGENERADO`, `CODEXAMENGENERADO`, `NUMITEMEXAMENGENERADO`, `CODPREG`, `CLAVERESPCORRECTA`, `CLAVERESPCONTESTADA`, `PUNTAJEPREG`, `PENALPREGERRADA`, `PENALTOTALAYUDAS`, `PUNTAJECALCULADO`, `ESTADO`) VALUES
(1, 1, 1, 1, 'B', NULL, '5.00', '-2.00', '0.00', NULL, 'A'),
(2, 1, 2, 2, 'B', NULL, '5.00', '-2.00', '0.00', NULL, 'A'),
(3, 1, 3, 3, 'B', NULL, '5.00', '-2.00', '0.00', NULL, 'A'),
(4, 1, 4, 4, 'B', NULL, '5.00', '-2.00', '0.00', NULL, 'A'),
(5, 1, 5, 5, 'B', NULL, '5.00', '-2.00', '0.00', NULL, 'A'),
(6, 1, 6, 6, 'B', 'B', '5.00', '-2.00', '-2.00', NULL, 'A'),
(7, 1, 7, 7, 'B', 'C', '5.00', '-2.00', '-2.00', NULL, 'A'),
(8, 1, 8, 8, 'B', 'B', '5.00', '-2.00', '-2.00', NULL, 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallematricula`
--

CREATE TABLE `detallematricula` (
  `CODDETAMATRI` int(11) NOT NULL,
  `CODMATRICULA` int(11) NOT NULL DEFAULT 0,
  `CODPROGRAMAT` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `detallematricula`
--

INSERT INTO `detallematricula` (`CODDETAMATRI`, `CODMATRICULA`, `CODPROGRAMAT`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 1),
(11, 11, 1),
(12, 12, 1),
(13, 13, 1),
(14, 14, 1),
(15, 15, 1),
(16, 16, 1),
(17, 17, 1),
(18, 18, 1),
(19, 19, 1),
(20, 20, 1),
(21, 21, 1),
(22, 22, 1),
(23, 23, 1),
(24, 24, 1),
(25, 25, 1),
(26, 26, 1),
(27, 27, 1),
(28, 28, 1),
(29, 29, 1),
(30, 30, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dia`
--

CREATE TABLE `dia` (
  `CODDIA` int(11) NOT NULL,
  `NOMBDIA` varchar(45) DEFAULT NULL,
  `ESTADO` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `dia`
--

INSERT INTO `dia` (`CODDIA`, `NOMBDIA`, `ESTADO`) VALUES
(1, 'LUNES', 'A'),
(2, 'MARTES', 'A'),
(3, 'MIERCOLES', 'A'),
(4, 'JUEVES', 'I'),
(5, 'VIERNES', 'I'),
(6, 'cccc', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docente`
--

CREATE TABLE `docente` (
  `CODDOCENTE` int(11) NOT NULL,
  `NOMBDOCENTE` varchar(45) DEFAULT NULL,
  `APEPATERDOCENTE` varchar(45) DEFAULT NULL,
  `APEMATERDOCENTE` varchar(45) DEFAULT NULL,
  `EMAIL` varchar(200) NOT NULL,
  `NROTELEFONO` varchar(50) NOT NULL,
  `DIRECCION` varchar(5000) NOT NULL,
  `USUARIO` varchar(45) DEFAULT NULL,
  `CLAVE` varchar(45) DEFAULT NULL,
  `FOTO` varchar(500) DEFAULT NULL,
  `ESTADO` char(1) NOT NULL,
  `CODCARRERA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `docente`
--

INSERT INTO `docente` (`CODDOCENTE`, `NOMBDOCENTE`, `APEPATERDOCENTE`, `APEMATERDOCENTE`, `EMAIL`, `NROTELEFONO`, `DIRECCION`, `USUARIO`, `CLAVE`, `FOTO`, `ESTADO`, `CODCARRERA`) VALUES
(1, 'IVAN', 'PETRLIK', 'AZABACHE', 'correo@gmail.com', '4244188', 'Jr.lloque Yupanqui Nro 863, Jesus Maria , Lima, Peru', 'fex369', 'fex369', 'sinfoto.gif', 'A', 1),
(2, 'ALBERTO', 'MORENO', 'CUEVA', 'correo@gmail.com', '4244188', 'Jr.lloque Yupanqui Nro 863, Jesus Maria , Lima, Peru', 'conejo', '1234', 'sinfoto.gif', 'A', 1),
(3, 'JUAN', 'VERA', 'CASTILLO', 'correo@gmail.com', '4244188', 'Jr.lloque Yupanqui Nro 863, Jesus Maria , Lima, Peru', 'sususu', '1234', 'sinfoto.gif', 'A', 1),
(4, 'xxx', 'xxx', 'xxx', 'Coloca por favor un  Correo Electronico !!', '00000000', 'Coloque la direccion por favor!!!', 'xxx', 'xxxx', 'foto.jpg', 'A', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docentexmateria`
--

CREATE TABLE `docentexmateria` (
  `CODCARRERA` int(11) NOT NULL,
  `CODMATERIA` int(11) NOT NULL,
  `CODDOCENTE` int(11) NOT NULL,
  `CODDOCENXMATERIA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `docentexmateria`
--

INSERT INTO `docentexmateria` (`CODCARRERA`, `CODMATERIA`, `CODDOCENTE`, `CODDOCENXMATERIA`) VALUES
(1, 1, 1, 1),
(1, 1, 1, 11),
(1, 1, 1, 13),
(1, 1, 2, 2),
(1, 1, 3, 12),
(1, 2, 2, 3),
(1, 2, 3, 4),
(1, 3, 3, 5),
(1, 3, 4, 6),
(1, 4, 2, 8),
(1, 4, 4, 7),
(1, 5, 1, 9),
(1, 5, 3, 10),
(3, 7, 2, 14),
(3, 7, 3, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estructuraexamen`
--

CREATE TABLE `estructuraexamen` (
  `CODESTRUCEXAMEN` int(11) NOT NULL,
  `CODSEMESTRE` int(11) NOT NULL,
  `CODCARRERA` int(11) NOT NULL,
  `CODMATERIA` int(11) NOT NULL,
  `CODTIPEXAMEN` int(11) NOT NULL,
  `TOTALPREG` int(11) NOT NULL,
  `Tiempo` int(11) NOT NULL,
  `ESTADO` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estructuraexamen`
--

INSERT INTO `estructuraexamen` (`CODESTRUCEXAMEN`, `CODSEMESTRE`, `CODCARRERA`, `CODMATERIA`, `CODTIPEXAMEN`, `TOTALPREG`, `Tiempo`, `ESTADO`) VALUES
(1, 2, 1, 1, 3, 9, 40, 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estructuraexamenejercitacion`
--

CREATE TABLE `estructuraexamenejercitacion` (
  `CODESTRUCEXAMEN` int(11) NOT NULL,
  `CODESTRUCEXAMENEJER` int(11) NOT NULL,
  `Tiempototal` int(11) NOT NULL,
  `ESTADO` char(1) DEFAULT NULL,
  `TOTALPREG` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estructuraexamenejercitacion`
--

INSERT INTO `estructuraexamenejercitacion` (`CODESTRUCEXAMEN`, `CODESTRUCEXAMENEJER`, `Tiempototal`, `ESTADO`, `TOTALPREG`) VALUES
(1, 1, 50, 'A', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `examenautogenerado`
--

CREATE TABLE `examenautogenerado` (
  `CODEXAMENGENERADO` int(11) NOT NULL,
  `CODESTRUCEXAMEN` int(11) NOT NULL DEFAULT 0,
  `CODDETAMATRI` int(11) NOT NULL DEFAULT 0,
  `CODMATRICULA` int(11) NOT NULL DEFAULT 0,
  `ESTADO` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `examenautogenerado`
--

INSERT INTO `examenautogenerado` (`CODEXAMENGENERADO`, `CODESTRUCEXAMEN`, `CODDETAMATRI`, `CODMATRICULA`, `ESTADO`) VALUES
(1, 1, 1, 1, 'A'),
(1, 2, 1, 1, 'A'),
(2, 1, 2, 2, 'A'),
(3, 1, 3, 3, 'A'),
(4, 1, 4, 4, 'A'),
(5, 1, 5, 5, 'A'),
(6, 1, 6, 6, 'A'),
(7, 1, 7, 7, 'A'),
(8, 1, 8, 8, 'A'),
(9, 1, 9, 9, 'A'),
(10, 1, 10, 10, 'A'),
(11, 1, 11, 11, 'A'),
(12, 1, 12, 12, 'A'),
(13, 1, 13, 13, 'A'),
(14, 1, 14, 14, 'A'),
(15, 1, 15, 15, 'A'),
(16, 1, 16, 16, 'A'),
(17, 1, 17, 17, 'A'),
(18, 1, 18, 18, 'A'),
(19, 1, 19, 19, 'A'),
(20, 1, 20, 20, 'A'),
(21, 1, 21, 21, 'A'),
(22, 1, 22, 22, 'A'),
(23, 1, 23, 23, 'A'),
(24, 1, 24, 24, 'A'),
(25, 1, 25, 25, 'A'),
(26, 1, 26, 26, 'A'),
(27, 1, 27, 27, 'A'),
(28, 1, 28, 28, 'A'),
(29, 1, 29, 29, 'A'),
(30, 1, 30, 30, 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `examengenerado`
--

CREATE TABLE `examengenerado` (
  `IDNUMEXAMGENERADO` int(11) NOT NULL,
  `CODALUXMATEXPROGXEXAM` int(11) NOT NULL,
  `ESTADOEXAMENRENDIDO` char(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horariodelaboratoriodisponibles`
--

CREATE TABLE `horariodelaboratoriodisponibles` (
  `CODHORARIOLAB` int(11) NOT NULL,
  `HORAINICIO` time DEFAULT NULL,
  `HORAFIN` time DEFAULT NULL,
  `CODLAB` int(11) NOT NULL,
  `CODTURNO` int(11) NOT NULL,
  `CODDIA` int(11) NOT NULL,
  `CODSEMESTRE` int(11) NOT NULL,
  `ESTADO` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `horariodelaboratoriodisponibles`
--

INSERT INTO `horariodelaboratoriodisponibles` (`CODHORARIOLAB`, `HORAINICIO`, `HORAFIN`, `CODLAB`, `CODTURNO`, `CODDIA`, `CODSEMESTRE`, `ESTADO`) VALUES
(1, '08:00:00', '10:00:00', 1, 1, 1, 1, 'A'),
(2, '10:00:00', '12:00:00', 1, 1, 1, 1, 'A'),
(3, '14:00:00', '16:00:00', 1, 2, 1, 1, 'A'),
(4, '16:00:00', '18:00:00', 1, 2, 1, 1, 'A'),
(5, '19:00:00', '21:00:00', 1, 3, 1, 1, 'A'),
(6, '08:00:00', '10:00:00', 2, 1, 1, 1, 'A'),
(7, '10:00:00', '12:00:00', 2, 1, 1, 1, 'A'),
(8, '14:00:00', '16:00:00', 2, 2, 1, 1, 'A'),
(9, '16:00:00', '18:00:00', 2, 2, 1, 1, 'A'),
(10, '19:00:00', '21:00:00', 2, 3, 1, 1, 'A'),
(11, '08:00:00', '10:00:00', 3, 1, 1, 1, 'A'),
(12, '10:00:00', '12:00:00', 3, 1, 1, 1, 'A'),
(13, '14:00:00', '16:00:00', 3, 2, 1, 1, 'A'),
(14, '16:00:00', '18:00:00', 3, 2, 1, 1, 'A'),
(15, '19:00:00', '21:00:00', 3, 3, 1, 1, 'A'),
(16, '08:00:00', '10:00:00', 4, 1, 1, 1, 'A'),
(17, '10:00:00', '12:00:00', 4, 1, 1, 1, 'A'),
(18, '14:00:00', '16:00:00', 4, 2, 1, 1, 'A'),
(19, '16:00:00', '18:00:00', 4, 2, 1, 1, 'A'),
(20, '19:00:00', '21:00:00', 4, 3, 1, 1, 'A'),
(21, '08:00:00', '10:00:00', 1, 1, 2, 1, 'A'),
(22, '10:00:00', '12:00:00', 1, 1, 2, 1, 'A'),
(23, '14:00:00', '16:00:00', 1, 2, 2, 1, 'A'),
(24, '16:00:00', '18:00:00', 1, 2, 2, 1, 'A'),
(25, '19:00:00', '21:00:00', 1, 3, 2, 1, 'A'),
(26, '08:00:00', '10:00:00', 2, 1, 2, 1, 'A'),
(27, '10:00:00', '12:00:00', 2, 1, 2, 1, 'A'),
(28, '14:00:00', '16:00:00', 2, 2, 2, 1, 'A'),
(29, '16:00:00', '18:00:00', 2, 2, 2, 1, 'A'),
(30, '19:00:00', '21:00:00', 2, 3, 2, 1, 'A'),
(31, '08:00:00', '10:00:00', 3, 1, 2, 1, 'A'),
(32, '10:00:00', '12:00:00', 3, 1, 2, 1, 'A'),
(33, '14:00:00', '16:00:00', 3, 2, 2, 1, 'A'),
(34, '16:00:00', '18:00:00', 3, 2, 2, 1, 'A'),
(35, '19:00:00', '21:00:00', 3, 3, 2, 1, 'A'),
(36, '08:00:00', '10:00:00', 4, 1, 2, 1, 'A'),
(37, '10:00:00', '12:00:00', 4, 1, 2, 1, 'A'),
(38, '14:00:00', '16:00:00', 4, 2, 2, 1, 'A'),
(39, '16:00:00', '18:00:00', 4, 2, 2, 1, 'A'),
(40, '19:00:00', '21:00:00', 4, 3, 2, 1, 'A'),
(41, '08:00:00', '10:00:00', 1, 1, 3, 1, 'A'),
(42, '10:00:00', '12:00:00', 1, 1, 3, 1, 'A'),
(43, '14:00:00', '16:00:00', 1, 2, 3, 1, 'A'),
(44, '16:00:00', '18:00:00', 1, 2, 3, 1, 'A'),
(45, '19:00:00', '21:00:00', 1, 3, 3, 1, 'A'),
(46, '08:00:00', '10:00:00', 2, 1, 3, 1, 'A'),
(47, '10:00:00', '12:00:00', 2, 1, 3, 1, 'A'),
(48, '14:00:00', '16:00:00', 2, 2, 3, 1, 'A'),
(49, '16:00:00', '18:00:00', 2, 2, 3, 1, 'A'),
(50, '19:00:00', '21:00:00', 2, 3, 3, 1, 'A'),
(51, '08:00:00', '10:00:00', 3, 1, 3, 1, 'A'),
(52, '10:00:00', '12:00:00', 3, 1, 3, 1, 'A'),
(53, '14:00:00', '16:00:00', 3, 2, 3, 1, 'A'),
(54, '16:00:00', '18:00:00', 3, 2, 3, 1, 'A'),
(55, '19:00:00', '21:00:00', 3, 3, 3, 1, 'A'),
(56, '08:00:00', '10:00:00', 4, 1, 3, 1, 'A'),
(57, '10:00:00', '12:00:00', 4, 1, 3, 1, 'A'),
(58, '14:00:00', '16:00:00', 4, 2, 3, 1, 'A'),
(59, '16:00:00', '18:00:00', 4, 2, 3, 1, 'A'),
(60, '19:00:00', '21:00:00', 4, 3, 3, 1, 'A'),
(61, '08:00:00', '10:00:00', 1, 1, 4, 1, 'A'),
(62, '10:00:00', '12:00:00', 1, 1, 4, 1, 'A'),
(63, '14:00:00', '16:00:00', 1, 2, 4, 1, 'A'),
(64, '16:00:00', '18:00:00', 1, 2, 4, 1, 'A'),
(65, '19:00:00', '21:00:00', 1, 3, 4, 1, 'A'),
(66, '08:00:00', '10:00:00', 2, 1, 4, 1, 'A'),
(67, '10:00:00', '12:00:00', 2, 1, 4, 1, 'A'),
(68, '14:00:00', '16:00:00', 2, 2, 4, 1, 'A'),
(69, '16:00:00', '18:00:00', 2, 2, 4, 1, 'A'),
(70, '19:00:00', '21:00:00', 2, 3, 4, 1, 'A'),
(71, '08:00:00', '10:00:00', 3, 1, 4, 1, 'A'),
(72, '10:00:00', '07:00:00', 3, 1, 4, 1, 'A'),
(73, '14:00:00', '16:00:00', 3, 2, 4, 1, 'A'),
(74, '16:00:00', '18:00:00', 3, 2, 4, 1, 'A'),
(75, '19:00:00', '21:00:00', 3, 3, 4, 1, 'A'),
(76, '08:00:00', '10:00:00', 4, 1, 4, 1, 'A'),
(77, '10:00:00', '12:00:00', 4, 1, 4, 1, 'A'),
(78, '14:00:00', '16:00:00', 4, 2, 4, 1, 'A'),
(79, '16:00:00', '18:00:00', 4, 2, 4, 1, 'A'),
(80, '19:00:00', '21:00:00', 4, 3, 4, 1, 'A'),
(81, '08:00:00', '10:00:00', 1, 1, 5, 1, 'A'),
(82, '10:00:00', '12:00:00', 1, 1, 5, 1, 'A'),
(83, '14:00:00', '16:00:00', 1, 2, 5, 1, 'A'),
(84, '16:00:00', '18:00:00', 1, 2, 5, 1, 'A'),
(85, '19:00:00', '21:00:00', 1, 3, 5, 1, 'A'),
(86, '08:00:00', '10:00:00', 2, 1, 5, 1, 'A'),
(87, '10:00:00', '12:00:00', 2, 1, 5, 1, 'A'),
(88, '14:00:00', '16:00:00', 2, 2, 5, 1, 'A'),
(89, '16:00:00', '18:00:00', 2, 2, 5, 1, 'A'),
(90, '19:00:00', '21:00:00', 2, 3, 5, 1, 'A'),
(91, '08:00:00', '10:00:00', 3, 1, 5, 1, 'A'),
(92, '10:00:00', '12:00:00', 3, 1, 5, 1, 'A'),
(93, '14:00:00', '16:00:00', 3, 2, 5, 1, 'A'),
(94, '16:00:00', '18:00:00', 3, 2, 5, 1, 'A'),
(95, '19:00:00', '21:00:00', 3, 3, 5, 1, 'A'),
(96, '08:00:00', '10:00:00', 4, 1, 5, 1, 'A'),
(97, '10:00:00', '12:00:00', 4, 1, 5, 1, 'A'),
(98, '14:00:00', '16:00:00', 4, 2, 5, 1, 'A'),
(99, '16:00:00', '18:00:00', 4, 2, 5, 1, 'A'),
(100, '19:00:00', '21:00:00', 4, 3, 5, 1, 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `laboratorio`
--

CREATE TABLE `laboratorio` (
  `CODLAB` int(11) NOT NULL,
  `DESCRIPLAB` varchar(100) DEFAULT NULL,
  `NROPCSLAB` int(11) DEFAULT NULL,
  `ESTADO` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `laboratorio`
--

INSERT INTO `laboratorio` (`CODLAB`, `DESCRIPLAB`, `NROPCSLAB`, `ESTADO`) VALUES
(1, 'LAB01', 45, 'A'),
(2, 'LAB05', 20, 'A'),
(3, 'LAB 20', 20, 'A'),
(4, 'LAB 21', 45, 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `CODMATERIA` int(11) NOT NULL,
  `NOMBMATERIA` varchar(50) DEFAULT NULL,
  `CODCARRERA` int(11) NOT NULL,
  `ESTADO` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`CODMATERIA`, `NOMBMATERIA`, `CODCARRERA`, `ESTADO`) VALUES
(1, 'Programacion I', 1, 'A'),
(2, 'INGENIERIA DE SISTEMAS Y AUDITORIA INFORMATICA', 1, 'A'),
(3, 'Programacion  II', 1, 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `matricula`
--

CREATE TABLE `matricula` (
  `CODMATRICULA` int(11) NOT NULL,
  `CODALU` int(11) NOT NULL,
  `CODSEMESTRE` int(11) NOT NULL,
  `FECHAMATRICULA` varchar(45) NOT NULL,
  `ESTADO` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `matricula`
--

INSERT INTO `matricula` (`CODMATRICULA`, `CODALU`, `CODSEMESTRE`, `FECHAMATRICULA`, `ESTADO`) VALUES
(1, 1, 2, '10/10/2015', 'A'),
(2, 2, 2, '10/10/2015', 'A'),
(4, 4, 2, '10/10/2015', 'A'),
(5, 5, 2, '10/10/2015', 'A'),
(6, 6, 2, '10/10/2015', 'A'),
(7, 7, 2, '10/10/2015', 'A'),
(8, 8, 2, '10/10/2015', 'A'),
(9, 9, 2, '10/10/2015', 'A'),
(10, 10, 2, '10/10/2015', 'A'),
(11, 11, 2, '10/10/2015', 'A'),
(12, 12, 2, '10/10/2015', 'A'),
(13, 13, 2, '10/10/2015', 'A'),
(14, 14, 2, '10/10/2015', 'A'),
(15, 15, 2, '10/10/2015', 'A'),
(16, 16, 2, '10/10/2015', 'A'),
(17, 17, 2, '10/10/2015', 'A'),
(18, 19, 2, '10/10/2015', 'A'),
(20, 20, 2, '10/10/2015', 'A'),
(21, 22, 2, '10/10/2015', 'A'),
(23, 23, 2, '10/10/2015', 'A'),
(24, 24, 2, '10/10/2015', 'A'),
(25, 25, 2, '10/10/2015', 'A'),
(26, 26, 2, '10/10/2015', 'A'),
(27, 27, 2, '10/10/2015', 'A'),
(28, 28, 2, '10/10/2015', 'A'),
(29, 29, 2, '10/10/2015', 'A'),
(30, 30, 2, '10/10/2015', 'A'),
(31, 31, 2, '10/10/2015', 'A'),
(32, 32, 2, '10/10/2015', 'A'),
(33, 33, 2, '10/10/2015', 'A'),
(34, 34, 2, '10/10/2015', 'A'),
(35, 35, 2, '10/10/2015', 'A'),
(36, 36, 2, '10/10/2015', 'A'),
(37, 37, 2, '10/10/2015', 'A'),
(38, 38, 2, '10/10/2015', 'A'),
(39, 39, 2, '10/10/2015', 'A'),
(40, 40, 2, '10/10/2015', 'A'),
(41, 41, 2, '10/10/2015', 'A'),
(42, 42, 2, '10/10/2015', 'A'),
(43, 43, 2, '10/10/2015', 'A'),
(44, 44, 2, '10/10/2015', 'A'),
(45, 45, 2, '10/10/2015', 'A'),
(46, 46, 2, '10/10/2015', 'A'),
(47, 47, 2, '10/10/2015', 'A'),
(48, 48, 2, '10/10/2015', 'A'),
(49, 49, 2, '10/10/2015', 'A'),
(50, 50, 2, '10/10/2015', 'A'),
(51, 51, 2, '10/10/2015', 'A'),
(52, 52, 2, '10/10/2015', 'A'),
(53, 53, 2, '10/10/2015', 'A'),
(54, 54, 2, '10/10/2015', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `niveldificultad`
--

CREATE TABLE `niveldificultad` (
  `CODNIVEL` int(11) NOT NULL,
  `NOMBNIVEL` varchar(45) DEFAULT NULL,
  `ESTADO` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `niveldificultad`
--

INSERT INTO `niveldificultad` (`CODNIVEL`, `NOMBNIVEL`, `ESTADO`) VALUES
(1, 'FACIL', 'A'),
(2, 'INTERMEDIO', 'A'),
(3, 'DIFICIL', 'I'),
(5, 'dddd', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pregunta`
--

CREATE TABLE `pregunta` (
  `CODPREG` int(11) NOT NULL,
  `ENUNCIADOPREG` varchar(10000) DEFAULT NULL,
  `RESPUESTAOK` varchar(9000) NOT NULL,
  `IMAGENPREG` varchar(2000) DEFAULT NULL,
  `ESTADOIMGPREG` char(1) DEFAULT NULL,
  `ESTADOPREG` char(1) DEFAULT NULL,
  `TIPOPREG` varchar(50) NOT NULL,
  `CAPACIDAD` varchar(50) DEFAULT NULL,
  `CODNIVEL` int(11) NOT NULL,
  `CODSEMESTRE` int(11) NOT NULL,
  `CODCARRERA` int(11) NOT NULL,
  `CODMATERIA` int(11) NOT NULL,
  `CODUNIDTEMA` int(11) NOT NULL,
  `CODTEMA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pregunta`
--

INSERT INTO `pregunta` (`CODPREG`, `ENUNCIADOPREG`, `RESPUESTAOK`, `IMAGENPREG`, `ESTADOIMGPREG`, `ESTADOPREG`, `TIPOPREG`, `CAPACIDAD`, `CODNIVEL`, `CODSEMESTRE`, `CODCARRERA`, `CODMATERIA`, `CODUNIDTEMA`, `CODTEMA`) VALUES
(1, '<p><b>Identificar correctamente&nbsp; el conjunto de palabras reservadas que&nbsp; constituyen la&nbsp; estructura condicional m&uacute;ltiple (switch).</b></p>', 'E', '', '', 'A', 'SUPERVISADO', 'CONCEPTUAL', 1, 2, 1, 1, 2, 7),
(2, '<p>Relacionar&nbsp;&nbsp; &nbsp;las sentencias con su respectiva descripci&oacute;n.</p>  <p>&nbsp;</p>  <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\"> 	<tbody> 		<tr> 			<td style=\"width:40px\"> 			<p>&nbsp;</p> 			</td> 			<td style=\"width:217px\"> 			<p><strong>Sentencia</strong></p> 			</td> 			<td style=\"width:38px\"> 			<p>&nbsp;</p> 			</td> 			<td style=\"width:286px\"> 			<p><strong>Descripci&oacute;n</strong></p>  			<p>&nbsp;</p> 			</td> 		</tr> 		<tr> 			<td style=\"width:40px\"> 			<p>1)</p> 			</td> 			<td style=\"width:217px\"> 			<p>import java.util.Scanner;</p> 			</td> 			<td style=\"width:38px\"> 			<p>1)</p> 			</td> 			<td style=\"width:286px\"> 			<p>Palabra reservada que representa un repositorio de&nbsp; clases.</p> 			</td> 		</tr> 		<tr> 			<td style=\"width:40px\"> 			<p>2)</p> 			</td> 			<td style=\"width:217px\"> 			<p>package</p> 			</td> 			<td style=\"width:38px\"> 			<p>2)</p> 			</td> 			<td style=\"width:286px\"> 			<p>M&eacute;todo principal</p> 			</td> 		</tr> 		<tr> 			<td style=\"width:40px\"> 			<p>3)</p> 			</td> 			<td style=\"width:217px\"> 			<p>default</p> 			</td> 			<td style=\"width:38px\"> 			<p>3)</p> 			</td> 			<td style=\"width:286px\"> 			<p>Es una&nbsp; condicional simple</p> 			</td> 		</tr> 		<tr> 			<td style=\"width:40px\"> 			<p>4)</p> 			</td> 			<td style=\"width:217px\"> 			<p>import&nbsp; javax.swing.*;</p> 			</td> 			<td style=\"width:38px\"> 			<p>4)</p> 			</td> 			<td style=\"width:286px\"> 			<p>Incrementa de uno en&nbsp; uno</p> 			</td> 		</tr> 		<tr> 			<td style=\"width:40px\"> 			<p>5)</p> 			</td> 			<td style=\"width:217px\"> 			<p>public static void main(String x[ ]){&nbsp; }</p> 			</td> 			<td style=\"width:38px\"> 			<p>5)</p> 			</td> 			<td style=\"width:286px\"> 			<p>Es una&nbsp; estructura condicional m&uacute;ltiple</p> 			</td> 		</tr> 		<tr> 			<td style=\"width:40px\"> 			<p>6)</p> 			</td> 			<td style=\"width:217px\"> 			<p>double&nbsp; pi=3.1416;</p>  			<p>int&nbsp;&nbsp; num=(int)pi;</p> 			</td> 			<td style=\"width:38px\"> 			<p>6)</p> 			</td> 			<td style=\"width:286px\"> 			<p>El resultado es 24</p> 			</td> 		</tr> 		<tr> 			<td style=\"width:40px\"> 			<p>7)</p> 			</td> 			<td style=\"width:217px\"> 			<p>short</p> 			</td> 			<td style=\"width:38px\"> 			<p>7)</p> 			</td> 			<td style=\"width:286px\"> 			<p>Iguala dos condiciones</p> 			</td> 		</tr> 		<tr> 			<td style=\"width:40px\"> 			<p>8)</p> 			</td> 			<td style=\"width:217px\"> 			<p>int&nbsp; i=21;</p>  			<p>&nbsp;&nbsp;&nbsp;&nbsp; i++;</p>  			<p>&nbsp;&nbsp;&nbsp;&nbsp; i++;</p>  			<p>&nbsp;&nbsp;&nbsp;&nbsp; i++;</p> 			</td> 			<td style=\"width:38px\"> 			<p>8)</p> 			</td> 			<td style=\"width:286px\"> 			<p>Si&nbsp; la opci&oacute;n(op) vale 5000 entonces no hace&nbsp; nada</p> 			</td> 		</tr> 		<tr> 			<td style=\"width:40px\"> 			<p>9)</p> 			</td> 			<td style=\"width:217px\"> 			<p>long</p> 			</td> 			<td style=\"width:38px\"> 			<p>9)</p> 			</td> 			<td style=\"width:286px\"> 			<p>Asigna de derecha a izquierda.</p> 			</td> 		</tr> 		<tr> 			<td style=\"width:40px\"> 			<p>&nbsp;</p> 			</td> 			<td style=\"width:217px\"> 			<p>&nbsp;</p> 			</td> 			<td style=\"width:38px\"> 			<p>10)</p> 			</td> 			<td style=\"width:286px\"> 			<p>Es una&nbsp; condicional doble</p> 			</td> 		</tr> 		<tr> 			<td style=\"width:40px\"> 			<p>&nbsp;</p> 			</td> 			<td style=\"width:217px\"> 			<p>&nbsp;</p> 			</td> 			<td style=\"width:38px\"> 			<p>11)</p> 			</td> 			<td style=\"width:286px\"> 			<p>Funciona cuando la opci&oacute;n no encuentra un case implementado.</p> 			</td> 		</tr> 		<tr> 			<td style=\"width:40px\"> 			<p>&nbsp;</p> 			</td> 			<td style=\"width:217px\"> 			<p>&nbsp;</p> 			</td> 			<td style=\"width:38px\"> 			<p>12)</p> 			</td> 			<td style=\"width:286px\"> 			<p>Convierte un real a&nbsp; un&nbsp; entero.</p> 			</td> 		</tr> 		<tr> 			<td style=\"width:40px\"> 			<p>&nbsp;</p> 			</td> 			<td style=\"width:217px\"> 			<p>&nbsp;</p> 			</td> 			<td style=\"width:38px\"> 			<p>13)</p> 			</td> 			<td style=\"width:286px\"> 			<p>Paquete que proporciona el ingreso de datos por consola.</p> 			</td> 		</tr> 		<tr> 			<td style=\"width:40px\"> 			<p>&nbsp;</p> 			</td> 			<td style=\"width:217px\"> 			<p>&nbsp;</p> 			</td> 			<td style=\"width:38px\"> 			<p>14)</p> 			</td> 			<td style=\"width:286px\"> 			<p>tipo de dato cuyo rango es de -32768 a&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 32767</p> 			</td> 		</tr> 		<tr> 			<td style=\"width:40px\"> 			<p>&nbsp;</p> 			</td> 			<td style=\"width:217px\"> 			<p>&nbsp;</p> 			</td> 			<td style=\"width:38px\"> 			<p>15)</p> 			</td> 			<td style=\"width:286px\"> 			<p>Tipo de dato entero&nbsp; grande.</p> 			</td> 		</tr> 		<tr> 			<td style=\"width:40px\"> 			<p>&nbsp;</p> 			</td> 			<td style=\"width:217px\"> 			<p>&nbsp;</p> 			</td> 			<td style=\"width:38px\"> 			<p>16)</p> 			</td> 			<td style=\"width:286px\"> 			<p>Paquete que proporciona cajas de dialogo</p> 			</td> 		</tr> 	</tbody> </table>', 'F', '', '', 'A', 'SUPERVISADO', 'CONCEPTUAL', 1, 2, 1, 1, 1, 2),
(3, '<p>Relacionar&nbsp;&nbsp;&nbsp; las sentencias con su respectiva descripci&oacute;n.</p>  <p>&nbsp;</p>  <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\"> 	<tbody> 		<tr> 			<td style=\"width:40px\"> 			<p>&nbsp;</p> 			</td> 			<td style=\"width:217px\"> 			<p><strong>Sentencia</strong></p> 			</td> 			<td style=\"width:38px\"> 			<p>&nbsp;</p> 			</td> 			<td style=\"width:286px\"> 			<p><strong>Descripci&oacute;n</strong></p>  			<p>&nbsp;</p> 			</td> 		</tr> 		<tr> 			<td style=\"width:40px\"> 			<p>1)</p> 			</td> 			<td style=\"width:217px\"> 			<p>i+=1;</p> 			</td> 			<td style=\"width:38px\"> 			<p>1)</p> 			</td> 			<td style=\"width:286px\"> 			<p>Palabra reservada que representa un repositorio de&nbsp; clases.</p> 			</td> 		</tr> 		<tr> 			<td style=\"width:40px\"> 			<p>2)</p> 			</td> 			<td style=\"width:217px\"> 			<p>If(condicion) {&nbsp; } else{&nbsp; }</p> 			</td> 			<td style=\"width:38px\"> 			<p>2)</p> 			</td> 			<td style=\"width:286px\"> 			<p>M&eacute;todo principal</p> 			</td> 		</tr> 		<tr> 			<td style=\"width:40px\"> 			<p>3)</p> 			</td> 			<td style=\"width:217px\"> 			<p>==</p> 			</td> 			<td style=\"width:38px\"> 			<p>3)</p> 			</td> 			<td style=\"width:286px\"> 			<p>Es una&nbsp; condicional simple</p> 			</td> 		</tr> 		<tr> 			<td style=\"width:40px\"> 			<p>4)</p> 			</td> 			<td style=\"width:217px\"> 			<p>=</p> 			</td> 			<td style=\"width:38px\"> 			<p>4)</p> 			</td> 			<td style=\"width:286px\"> 			<p>Incrementa de uno en&nbsp; uno</p> 			</td> 		</tr> 		<tr> 			<td style=\"width:40px\"> 			<p>5)</p> 			</td> 			<td style=\"width:217px\"> 			<p>i+=1 ;</p> 			</td> 			<td style=\"width:38px\"> 			<p>5)</p> 			</td> 			<td style=\"width:286px\"> 			<p>Es una&nbsp; estructura condicional m&uacute;ltiple</p> 			</td> 		</tr> 		<tr> 			<td style=\"width:40px\"> 			<p>6)</p> 			</td> 			<td style=\"width:217px\"> 			<p>swich(op)</p>  			<p>{&nbsp; case 1: {&nbsp; break;}</p>  			<p>&nbsp;&nbsp; case 2:{&nbsp; break;}</p>  			<p>}</p> 			</td> 			<td style=\"width:38px\"> 			<p>6)</p> 			</td> 			<td style=\"width:286px\"> 			<p>El resultado es 24</p> 			</td> 		</tr> 		<tr> 			<td style=\"width:40px\"> 			<p>7)</p> 			</td> 			<td style=\"width:217px\"> 			<p>If(codicion) { }</p> 			</td> 			<td style=\"width:38px\"> 			<p>7)</p> 			</td> 			<td style=\"width:286px\"> 			<p>Iguala dos condiciones</p> 			</td> 		</tr> 		<tr> 			<td style=\"width:40px\"> 			<p>8)</p> 			</td> 			<td style=\"width:217px\"> 			<p>If(con1){&nbsp; }</p>  			<p>else{&nbsp;&nbsp; if(con2) {&nbsp;</p>  			<p>else{&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</p> 			</td> 			<td style=\"width:38px\"> 			<p>8)</p> 			</td> 			<td style=\"width:286px\"> 			<p>Si&nbsp; la opci&oacute;n(op) vale 5000 entonces no hace&nbsp; nada</p> 			</td> 		</tr> 		<tr> 			<td style=\"width:40px\"> 			<p>9)</p> 			</td> 			<td style=\"width:217px\"> 			<p>Import java.io.*;</p> 			</td> 			<td style=\"width:38px\"> 			<p>9)</p> 			</td> 			<td style=\"width:286px\"> 			<p>Asigna de derecha a izquierda.</p> 			</td> 		</tr> 		<tr> 			<td style=\"width:40px\"> 			<p>&nbsp;</p> 			</td> 			<td style=\"width:217px\"> 			<p>&nbsp;</p> 			</td> 			<td style=\"width:38px\"> 			<p>10)</p> 			</td> 			<td style=\"width:286px\"> 			<p>Es una&nbsp; condicional doble</p> 			</td> 		</tr> 		<tr> 			<td style=\"width:40px\"> 			<p>&nbsp;</p> 			</td> 			<td style=\"width:217px\"> 			<p>&nbsp;</p> 			</td> 			<td style=\"width:38px\"> 			<p>11)</p> 			</td> 			<td style=\"width:286px\"> 			<p>Funciona cuando la opci&oacute;n no encuentra un case implementado.</p> 			</td> 		</tr> 		<tr> 			<td style=\"width:40px\"> 			<p>&nbsp;</p> 			</td> 			<td style=\"width:217px\"> 			<p>&nbsp;</p> 			</td> 			<td style=\"width:38px\"> 			<p>12)</p> 			</td> 			<td style=\"width:286px\"> 			<p>Convierte un real a&nbsp; un&nbsp; entero.</p> 			</td> 		</tr> 		<tr> 			<td style=\"width:40px\"> 			<p>&nbsp;</p> 			</td> 			<td style=\"width:217px\"> 			<p>&nbsp;</p> 			</td> 			<td style=\"width:38px\"> 			<p>13)</p> 			</td> 			<td style=\"width:286px\"> 			<p>Paquete que proporciona el ingreso de datos por consola.</p> 			</td> 		</tr> 		<tr> 			<td style=\"width:40px\"> 			<p>&nbsp;</p> 			</td> 			<td style=\"width:217px\"> 			<p>&nbsp;</p> 			</td> 			<td style=\"width:38px\"> 			<p>14)</p> 			</td> 			<td style=\"width:286px\"> 			<p>tipo de dato cuyo rango es de -32768 a&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 32767</p> 			</td> 		</tr> 		<tr> 			<td style=\"width:40px\"> 			<p>&nbsp;</p> 			</td> 			<td style=\"width:217px\"> 			<p>&nbsp;</p> 			</td> 			<td style=\"width:38px\"> 			<p>15)</p> 			</td> 			<td style=\"width:286px\"> 			<p>Tipo de dato entero&nbsp; grande.</p> 			</td> 		</tr> 		<tr> 			<td style=\"width:40px\"> 			<p>&nbsp;</p> 			</td> 			<td style=\"width:217px\"> 			<p>&nbsp;</p> 			</td> 			<td style=\"width:38px\"> 			<p>16)</p> 			</td> 			<td style=\"width:286px\"> 			<p>Paquete que proporciona cajas de dialogo</p> 			</td> 		</tr> 	</tbody> </table>', 'F', '', '', 'A', 'SUPERVISADO', 'CONCEPTUAL', 1, 2, 1, 1, 2, 7),
(4, '<ol> 	<li>Relacionar&nbsp; las sentencias&nbsp; en&nbsp; java&nbsp; con su respectivo concepto&nbsp; a&nbsp; la&nbsp; cual&nbsp; pertenece.</li> 	<li> 	<p>&nbsp;</p>  	<table align=\"right\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:548px\"> 		<tbody> 			<tr> 				<td style=\"width:38px\"> 				<p>&nbsp;</p> 				</td> 				<td style=\"width:215px\"> 				<p><strong>Sentencia en&nbsp; Java</strong></p> 				</td> 				<td style=\"width:31px\"> 				<p>&nbsp;</p> 				</td> 				<td style=\"width:265px\"> 				<p><strong>Concepto o&nbsp; Tipo</strong></p> 				</td> 			</tr> 			<tr> 				<td style=\"width:38px\"> 				<p>1)</p> 				</td> 				<td style=\"width:215px\"> 				<p>&nbsp;! , &amp;&amp;&nbsp; ,&nbsp; ||&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p> 				</td> 				<td style=\"width:31px\"> 				<p>1)</p> 				</td> 				<td style=\"width:265px\"> 				<p>Facilita la lectura de datos en los programas Java.</p> 				</td> 			</tr> 			<tr> 				<td style=\"height:17px; width:38px\"> 				<p>&nbsp;2)</p> 				</td> 				<td style=\"height:17px; width:215px\"> 				<p>float</p>  				<p>&nbsp;</p> 				</td> 				<td style=\"height:17px; width:31px\"> 				<p>2)</p> 				</td> 				<td style=\"height:17px; width:265px\"> 				<p>Condicional simple</p> 				</td> 			</tr> 			<tr> 				<td style=\"height:4px; width:38px\"> 				<p>3)</p> 				</td> 				<td style=\"height:4px; width:215px\"> 				<p>Scanner</p> 				</td> 				<td style=\"height:4px; width:31px\"> 				<p>3)</p> 				</td> 				<td style=\"height:4px; width:265px\"> 				<p>Comentario en varias L&iacute;neas</p> 				</td> 			</tr> 			<tr> 				<td style=\"width:38px\"> 				<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>  				<p>&nbsp;4)</p> 				</td> 				<td style=\"width:215px\"> 				<p>&nbsp;</p>  				<p>System.out.println(&ldquo;hola&rdquo;);</p> 				</td> 				<td style=\"width:31px\"> 				<p>4)</p> 				</td> 				<td style=\"width:265px\"> 				<p>Se encuentra dentro del paquete&nbsp; javax.swing</p> 				</td> 			</tr> 			<tr> 				<td style=\"width:38px\"> 				<p>&nbsp;5)</p> 				</td> 				<td style=\"width:215px\"> 				<p>If(condicion){&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</p>  				<p>&nbsp;</p> 				</td> 				<td style=\"width:31px\"> 				<p>5)</p> 				</td> 				<td style=\"width:265px\"> 				<p>Muestra datos por pantalla</p> 				</td> 			</tr> 			<tr> 				<td style=\"width:38px\"> 				<p>&nbsp;6)</p> 				</td> 				<td style=\"width:215px\"> 				<p>/*&nbsp; es una&nbsp; variable&nbsp; */</p> 				</td> 				<td style=\"width:31px\"> 				<p>6)</p> 				</td> 				<td style=\"width:265px\"> 				<p>Tipo de dato de precisi&oacute;n simple</p> 				</td> 			</tr> 			<tr> 				<td style=\"width:38px\"> 				<p>&nbsp;7)</p> 				</td> 				<td style=\"width:215px\"> 				<p>// este es una variable</p> 				</td> 				<td style=\"width:31px\"> 				<p>7)</p> 				</td> 				<td style=\"width:265px\"> 				<p>Operaciones L&oacute;gicas</p> 				</td> 			</tr> 			<tr> 				<td style=\"width:38px\"> 				<p>8)</p> 				</td> 				<td style=\"width:215px\"> 				<p>&nbsp; JOptionPane</p> 				</td> 				<td style=\"width:31px\"> 				<p>8)</p> 				</td> 				<td style=\"width:265px\"> 				<p>Es un m&eacute;todo de objetos</p> 				</td> 			</tr> 			<tr> 				<td style=\"width:38px\"> 				<p>&nbsp;</p> 				</td> 				<td style=\"width:215px\"> 				<p>&nbsp;</p> 				</td> 				<td style=\"width:31px\"> 				<p>9)</p> 				</td> 				<td style=\"width:265px\"> 				<p>Operaciones Condicionales</p> 				</td> 			</tr> 		</tbody> 	</table> 	</li> </ol>', 'C', '', '', 'A', 'SUPERVISADO', 'CONCEPTUAL', 1, 2, 1, 1, 1, 2),
(5, '<p>Identificar &nbsp;el&nbsp; siguiente&nbsp; programa en&nbsp; Java y d<strong>eterminar&nbsp; Verdadero&nbsp; o Falso de&nbsp; las siguientes &nbsp;Afirmaciones :</strong></p>  <p>&nbsp;</p>  <ul> 	<li>El&nbsp; programa muestra el mensaje &ldquo;CONVIENE EL PROVEEDOR B&rdquo; si es que ingresas por teclado una cantidad igual&nbsp; a&nbsp; 45.</li> 	<li>El&nbsp; programa a nivel de&nbsp; c&oacute;digo&nbsp; tiene&nbsp; implementado 3 condicionales&nbsp; simples.</li> </ul>  <p>&nbsp;</p>  <ul> 	<li>El&nbsp; programa est&aacute;&nbsp; constituido&nbsp; por una&nbsp; variable de entrada representado por&nbsp; cantCad para almacenar en&nbsp; primera&nbsp; instancia el numero como cadena de caracteres y despu&eacute;s convertirlo a&nbsp; entero&nbsp; para almacenarlo en la variable cant.</li> </ul>  <p>&nbsp;</p>  <ul> 	<li>El programa&nbsp; no tiene ning&uacute;n error al ingresar por teclado una palabra alfab&eacute;tica.</li> </ul>  <p>&nbsp;</p>  <ul> 	<li>El&nbsp; programa Muestra el&nbsp; mensaje&nbsp; &ldquo;CONVIENE EL&nbsp; PROVEEDOR B&rdquo; al ingresar&nbsp; por teclado la cantidad igual a&nbsp; 20, pero esto no tiene sentido.</li> </ul>', 'B', '/fotos/Preguntas/PREGUNTA5.png', '', 'A', 'SUPERVISADO', 'CONCEPTUAL', 2, 2, 1, 1, 2, 6),
(6, '<p>Analice &nbsp;el&nbsp; siguiente&nbsp; caso de&nbsp; estudio y determine las&nbsp; variables de&nbsp; Entrada, Salida y las Operaciones&nbsp; centrales.</p>  <p><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Caso de&nbsp; Estudio Trabajador</strong></p>  <p>Ingrese por Teclado el Nombre del Obrero, las horas trabajadas y el Tipo de Actividad (Pintado, Laqueado, Barnizado), por cada hora trabajada se le pagara:</p>  <ol> 	<li>Si el Servicio es Pintado se le pagara s/. 10</li> 	<li>Si el Servicio es Laqueado se le pagara s/. 12</li> 	<li>Si el Servicio es Barnizado se le pagara s/. 14</li> </ol>  <p>Por cada hora extra se le pagara 30% m&aacute;s sobre el pago por hora trabajada, sabiendo que semanalmente trabaja 40 horas. Calcule y visualice El Jornal Semanal que recibir&aacute; el Obrero, el Jornal Extra y el Total del Jornal.</p>  <p>Al responder la&nbsp; pregunta en el&nbsp; &aacute;rea de texto, se deber&aacute; de &nbsp;escribir &nbsp;en&nbsp; c&oacute;digo Java de cada uno de ellos.</p>', '<ol>	<li><strong>Variables Entrada :</strong></li></ol><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; int&nbsp;&nbsp; montoventa ;</p><p><strong>&nbsp; &nbsp; &nbsp; 2. Variables Salida :</strong></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; float&nbsp; comisi&oacute;n,bonificacion &nbsp;;</p><p>&nbsp; &nbsp;&nbsp;<strong>&nbsp;3. Operaciones Centrales :</strong></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; comisi&oacute;n=0.05*montoventa;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; comisi&oacute;n=0.075*montoventa+200 ;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; comision=0.09*montoventa+300 ;</p>', '', '', 'A', 'SUPERVISADO', 'PROCEDIMENTAL', 1, 2, 1, 1, 2, 6),
(7, '<p>&nbsp;Aplicar&nbsp; la estructura condicional m&uacute;ltiple en la&nbsp; construcci&oacute;n de un&nbsp; programa en&nbsp; Java que me permita el ingreso por&nbsp; teclado&nbsp; del n&uacute;mero del d&iacute;a de la&nbsp; semana y mostrar un mensaje&nbsp; de dicho d&iacute;a, por&nbsp; ejemplo se ingresa el n&uacute;mero&nbsp; 1&nbsp; y el&nbsp; programa te muestra &ldquo;Lunes&rdquo;.</p>', '<p><strong>Algoritmo: Calcular Mayor</strong></p>  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Declaraci&oacute;n Variables</strong></p>  <p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Entero&nbsp;&nbsp;&nbsp; n1,n2,mayor</p>  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp; Inicio</strong></p>  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; n1&lt;=34</p>  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; n2&lt;=10</p>  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if(n1&gt;n2) entonces</p>  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; mayor &lt;=&nbsp;n1</p>  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; else</p>  <p>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;mayor &lt;=&nbsp;n2</p>  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; fin_si</p>  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; imprimir(&ldquo;El mayor es : &ldquo; , mayor)</p>  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong> Fin</strong></p>', '', '', 'A', 'SUPERVISADO', 'PROCEDIMENTAL', 1, 2, 1, 1, 2, 7),
(8, '<p>Si se compra 100 unidades&nbsp; o m&aacute;s de un art&iacute;culo se obtiene un descuento del 40%, si se compra desde&nbsp; 26 hasta 99&nbsp; el descuento es de 20%, si se compra desde 10 hasta 25 el descuento es del 12%. Para cantidades menores no hay descuento.</p>  <p>Elabore un&nbsp; programa en&nbsp; Java&nbsp; que permita ingresar el costo unitario del art&iacute;culo y la cantidad de unidades compradas e imprima el monto a pagar.</p>', '<p><br /> package javaapplication1;<br /> &nbsp; &nbsp;import &nbsp;java.util.Scanner;<br /> public &nbsp;class Pregunta8<br /> { &nbsp;<br /> &nbsp; &nbsp; public static void main(String[] args)&nbsp;<br /> &nbsp; &nbsp; {<br /> &nbsp; &nbsp; &nbsp; &nbsp; int &nbsp;n,mega,kilo,bytes;<br /> &nbsp; &nbsp; &nbsp; &nbsp; Scanner &nbsp;sc=new Scanner(System.in);<br /> &nbsp; &nbsp; &nbsp; &nbsp; System.out.println(&quot;Ingrese el Numero en Gigabytes&quot;);<br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;n=sc.nextInt();<br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;mega=1024*n;<br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;kilo=1024*1024*n;<br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;bytes=1024*1024*1024*n;<br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;System.out.println(&quot;el resultado en Megabytes es:&quot;+mega);<br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;System.out.println(&quot;el resultado en Kilobytes es:&quot;+kilo);<br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; System.out.println(&quot;el resultado en bytes es:&quot;+bytes);&nbsp; &nbsp; &nbsp;&nbsp;<br /> &nbsp; &nbsp; }<br /> &nbsp; &nbsp;&nbsp;<br /> }</p>', '', '', 'A', 'SUPERVISADO', 'PROCEDIMENTAL', 2, 2, 1, 1, 1, 3),
(9, '<p>Elabore un&nbsp; programa en Java que permita calcular la Venta de Zapatillas. Ingrese por teclado la Marca de la Zapatilla, la talla a Vender y el n&uacute;mero de pares vendidas. A continuaci&oacute;n se muestra un Cuadro del precio de un par de Zapatillas.</p>  <table border=\"1\" cellpadding=\"0\" cellspacing=\"0\"> 	<tbody> 		<tr> 			<td style=\"width:107px\"> 			<p>Talla\\Marca</p> 			</td> 			<td style=\"width:85px\"> 			<p>Nike</p> 			</td> 			<td style=\"width:96px\"> 			<p>Adidas</p> 			</td> 			<td style=\"width:96px\"> 			<p>Fila</p> 			</td> 		</tr> 		<tr> 			<td style=\"width:107px\"> 			<p>38</p> 			</td> 			<td style=\"width:85px\"> 			<p>150</p> 			</td> 			<td style=\"width:96px\"> 			<p>140</p> 			</td> 			<td style=\"width:96px\"> 			<p>80</p> 			</td> 		</tr> 		<tr> 			<td style=\"width:107px\"> 			<p>40</p> 			</td> 			<td style=\"width:85px\"> 			<p>160</p> 			</td> 			<td style=\"width:96px\"> 			<p>150</p> 			</td> 			<td style=\"width:96px\"> 			<p>85</p> 			</td> 		</tr> 		<tr> 			<td style=\"height:17px; width:107px\"> 			<p>42</p> 			</td> 			<td style=\"height:17px; width:85px\"> 			<p>160</p> 			</td> 			<td style=\"height:17px; width:96px\"> 			<p>150</p> 			</td> 			<td style=\"height:17px; width:96px\"> 			<p>90</p> 			</td> 		</tr> 	</tbody> </table>  <p>&nbsp;</p>  <p>La Venta es el producto del precio del par de Zapatilla por el n&uacute;mero de pares vendidos. De acuerdo al n&uacute;mero de pares vendidas se le aplicara un Descuento tal como se muestra en el Cuadro</p>  <p>&nbsp;</p>  <p>&nbsp;</p>  <table border=\"1\" cellpadding=\"0\" cellspacing=\"0\"> 	<tbody> 		<tr> 			<td style=\"width:144px\"> 			<p>Numero de Pares</p> 			</td> 			<td style=\"width:152px\"> 			<p>Descuento</p> 			</td> 		</tr> 		<tr> 			<td style=\"width:144px\"> 			<p>2 a 5</p> 			</td> 			<td style=\"width:152px\"> 			<p>5% de la Venta</p> 			</td> 		</tr> 		<tr> 			<td style=\"width:144px\"> 			<p>6 a 10</p> 			</td> 			<td style=\"width:152px\"> 			<p>8% de la Venta</p> 			</td> 		</tr> 		<tr> 			<td style=\"width:144px\"> 			<p>11 a 20</p> 			</td> 			<td style=\"width:152px\"> 			<p>10 de la Venta</p> 			</td> 		</tr> 		<tr> 			<td style=\"width:144px\"> 			<p>M&aacute;s de 20</p> 			</td> 			<td style=\"width:152px\"> 			<p>15 de la Venta</p> 			</td> 		</tr> 	</tbody> </table>  <p>&nbsp;</p>  <p>El neto de la Venta es la Diferencia de la Venta y el Descuento, Visualizar la Venta, el Descuento y el Neto de la Venta.</p>', '<p>&nbsp; &nbsp;import &nbsp;java.util.Scanner;<br /> public class Pregunta09<br /> {<br /> &nbsp; &nbsp; public static void main(String[] args)<br /> &nbsp; &nbsp; {<br /> &nbsp; &nbsp; &nbsp; &nbsp; int &nbsp;basico,nrohijos,cargo,bonificacion=0,asignacion=0,remuneracion;<br /> &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br /> &nbsp; &nbsp; &nbsp; &nbsp; Scanner &nbsp;sc=new Scanner(System.in);<br /> &nbsp; &nbsp; &nbsp; &nbsp; System.out.println(&quot;Ingrese Remuneracion :&quot;);<br /> &nbsp; &nbsp; &nbsp; &nbsp; basico=sc.nextInt();<br /> &nbsp; &nbsp; &nbsp; &nbsp;<br /> &nbsp; &nbsp; &nbsp; &nbsp; System.out.println(&quot;Ingrese Numero de Hijos :&quot;);<br /> &nbsp; &nbsp; &nbsp; &nbsp; nrohijos=sc.nextInt();<br /> &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br /> &nbsp; &nbsp; &nbsp; &nbsp; System.out.println(&quot;Ingrese el Cargo Obrero(1),Empleado(2) :&quot;);<br /> &nbsp; &nbsp; &nbsp; &nbsp; cargo=sc.nextInt(); &nbsp; &nbsp; &nbsp; &nbsp;<br /> &nbsp; &nbsp; &nbsp; &nbsp; if(cargo==1)<br /> &nbsp; &nbsp; &nbsp; &nbsp; { &nbsp;bonificacion=100;<br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; if(nrohijos&gt;0)<br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; { asignacion=41*nrohijos; &nbsp;&nbsp;<br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; }<br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; else<br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; { asignacion=0; &nbsp;&nbsp;<br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; } &nbsp;&nbsp;<br /> &nbsp; &nbsp; &nbsp; &nbsp; } &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br /> &nbsp; &nbsp; &nbsp; &nbsp; if(cargo==2)<br /> &nbsp; &nbsp; &nbsp; &nbsp; { &nbsp;bonificacion=120;<br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; if(nrohijos&gt;0)<br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; {<br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;asignacion=41*nrohijos; &nbsp;&nbsp;<br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; }<br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; else<br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; {<br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;asignacion=0; &nbsp;&nbsp;<br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; } &nbsp; &nbsp;<br /> &nbsp; &nbsp; &nbsp; &nbsp; } &nbsp; &nbsp;<br /> &nbsp; &nbsp; &nbsp; &nbsp; remuneracion=basico+bonificacion+asignacion;<br /> &nbsp; &nbsp; &nbsp; &nbsp; System.out.println(&quot;La Remuneracion es:&quot;+remuneracion); &nbsp; &nbsp; &nbsp; &nbsp;<br /> &nbsp; &nbsp; } &nbsp; &nbsp;<br /> }</p>', '', '', 'A', 'SUPERVISADO', 'PROCEDIMENTAL', 3, 2, 1, 1, 2, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programacionexamen`
--

CREATE TABLE `programacionexamen` (
  `CODPROGHORARIO` int(11) NOT NULL,
  `CODPROGEXAMEN` int(11) NOT NULL,
  `CODESTRUCEXAMEN` int(11) NOT NULL,
  `CODHORARIOLAB` int(11) NOT NULL,
  `ESTADO` char(1) NOT NULL,
  `ESTADOEXAMEN` char(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programacionexamenxsupervisor`
--

CREATE TABLE `programacionexamenxsupervisor` (
  `CODPROGEXAMSUPER` int(11) NOT NULL,
  `CODROLXDOCENTE` int(11) DEFAULT NULL,
  `CODDOCENTE` int(11) DEFAULT NULL,
  `CODROL` int(11) DEFAULT NULL,
  `CODPROGEXAMEN` int(11) DEFAULT NULL,
  `CODPROGHORARIO` int(11) DEFAULT NULL,
  `CODESTRUCEXAMEN` int(11) DEFAULT NULL,
  `ESTADO` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programacionmateria`
--

CREATE TABLE `programacionmateria` (
  `CODPROGRAMAT` int(11) NOT NULL,
  `CODDOCENTE` int(11) NOT NULL,
  `CODCARRERA` int(11) NOT NULL,
  `CODMATERIA` int(11) NOT NULL,
  `CODSEMESTRE` int(11) NOT NULL,
  `ESTADO` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `programacionmateria`
--

INSERT INTO `programacionmateria` (`CODPROGRAMAT`, `CODDOCENTE`, `CODCARRERA`, `CODMATERIA`, `CODSEMESTRE`, `ESTADO`) VALUES
(1, 1, 1, 1, 2, 'A'),
(2, 2, 1, 2, 2, 'A'),
(3, 4, 1, 3, 2, 'A'),
(4, 4, 1, 4, 2, 'A'),
(5, 3, 1, 5, 2, 'A'),
(6, 3, 1, 6, 2, 'A'),
(7, 2, 1, 7, 2, 'A'),
(8, 0, 0, 0, 0, 'A'),
(9, 0, 0, 0, 0, 'A'),
(10, 0, 0, 0, 0, 'A'),
(11, 3, 1, 1, 2, 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programarexamen`
--

CREATE TABLE `programarexamen` (
  `CODPROGRAEXA` int(11) NOT NULL,
  `CODPROGRAMAT` int(11) NOT NULL,
  `CODESTRUCEXAMEN` int(11) NOT NULL,
  `FECHAREGISTRO` varchar(45) DEFAULT NULL,
  `FECHAEJECUCION` varchar(45) DEFAULT NULL,
  `HORAINICIO` varchar(20) DEFAULT NULL,
  `DIA` varchar(50) NOT NULL,
  `ESTADO` char(1) NOT NULL,
  `OBSERVACIONES` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `programarexamen`
--

INSERT INTO `programarexamen` (`CODPROGRAEXA`, `CODPROGRAMAT`, `CODESTRUCEXAMEN`, `FECHAREGISTRO`, `FECHAEJECUCION`, `HORAINICIO`, `DIA`, `ESTADO`, `OBSERVACIONES`) VALUES
(1, 1, 1, '25/01/2016', '25/01/2016', '18:00', 'LUNES', 'A', ''),
(2, 2, 2, '25/03/2016', '28/03/2016', '18:00', 'MARTES', 'A', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resultadoevaluacion`
--

CREATE TABLE `resultadoevaluacion` (
  `CODRESUL` int(11) NOT NULL,
  `CODEXAMENGENERADO` int(11) DEFAULT NULL,
  `CODESTRUCEXAMEN` int(11) DEFAULT NULL,
  `CODDETAMATRI` int(11) DEFAULT NULL,
  `CODMATRICULA` int(11) DEFAULT NULL,
  `CODSEMESTRE` int(11) DEFAULT NULL,
  `CODTIPEXAMEN` int(11) NOT NULL,
  `NOTACONCEPTUAL` decimal(5,2) DEFAULT NULL,
  `NOTAPROCEDIMENTAL` decimal(5,2) DEFAULT NULL,
  `NOTAACTITUDINAL` decimal(5,2) DEFAULT NULL,
  `NOTATOTAL` decimal(5,2) NOT NULL,
  `ESTADO` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `resultadoevaluacion`
--

INSERT INTO `resultadoevaluacion` (`CODRESUL`, `CODEXAMENGENERADO`, `CODESTRUCEXAMEN`, `CODDETAMATRI`, `CODMATRICULA`, `CODSEMESTRE`, `CODTIPEXAMEN`, `NOTACONCEPTUAL`, `NOTAPROCEDIMENTAL`, `NOTAACTITUDINAL`, `NOTATOTAL`, `ESTADO`) VALUES
(1, 1, 1, 1, 1, 2, 3, '3.00', '8.00', '2.00', '13.00', 'A'),
(2, 2, 1, 2, 2, 2, 3, '4.00', '8.00', '4.00', '16.00', 'A'),
(3, 3, 1, 3, 3, 2, 3, '4.00', '8.00', '4.00', '16.00', 'A'),
(4, 4, 1, 4, 4, 2, 3, '4.00', '8.00', '4.00', '16.00', 'A'),
(5, 5, 1, 5, 5, 2, 3, '4.00', '8.00', '4.00', '16.00', 'A'),
(6, 6, 1, 6, 6, 2, 3, '4.00', '8.00', '4.00', '16.00', 'A'),
(7, 7, 1, 7, 7, 2, 3, '4.00', '8.00', '4.00', '16.00', 'A'),
(8, 8, 1, 8, 8, 2, 3, '4.00', '8.00', '4.00', '16.00', 'A'),
(9, 9, 1, 9, 9, 2, 3, '4.00', '8.00', '4.00', '16.00', 'A'),
(10, 10, 1, 10, 10, 2, 3, '4.00', '8.00', '4.00', '16.00', 'A'),
(11, 11, 1, 11, 11, 2, 3, '3.00', '8.00', '2.00', '13.00', 'A'),
(12, 12, 1, 12, 12, 2, 3, '4.00', '8.00', '4.00', '16.00', 'A'),
(13, 13, 1, 13, 13, 2, 3, '4.00', '8.00', '4.00', '16.00', 'A'),
(14, 14, 1, 14, 14, 2, 3, '4.00', '8.00', '4.00', '16.00', 'A'),
(15, 15, 1, 15, 15, 2, 3, '4.00', '8.00', '4.00', '16.00', 'A'),
(16, 16, 1, 16, 16, 2, 3, '4.00', '8.00', '4.00', '16.00', 'A'),
(17, 17, 1, 17, 17, 2, 3, '4.00', '8.00', '4.00', '16.00', 'A'),
(18, 18, 1, 18, 18, 2, 3, '4.00', '8.00', '4.00', '16.00', 'A'),
(19, 19, 1, 19, 19, 2, 3, '4.00', '8.00', '4.00', '16.00', 'A'),
(20, 20, 1, 20, 20, 2, 3, '4.00', '8.00', '4.00', '16.00', 'A'),
(21, 21, 1, 21, 21, 2, 3, '3.00', '8.00', '2.00', '13.00', 'A'),
(22, 22, 1, 22, 22, 2, 3, '4.00', '8.00', '4.00', '16.00', 'A'),
(23, 23, 1, 23, 23, 2, 3, '4.00', '8.00', '4.00', '16.00', 'A'),
(24, 24, 1, 24, 24, 2, 3, '4.00', '8.00', '4.00', '16.00', 'A'),
(25, 25, 1, 25, 25, 2, 3, '4.00', '8.00', '4.00', '16.00', 'A'),
(26, 26, 1, 26, 26, 2, 3, '4.00', '8.00', '4.00', '16.00', 'A'),
(27, 27, 1, 27, 27, 2, 3, '4.00', '8.00', '4.00', '16.00', 'A'),
(28, 28, 1, 28, 28, 2, 3, '4.00', '8.00', '4.00', '16.00', 'A'),
(29, 29, 1, 29, 29, 2, 3, '4.00', '8.00', '4.00', '16.00', 'A'),
(30, 30, 1, 30, 30, 2, 3, '4.00', '8.00', '4.00', '16.00', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `CODROL` int(11) NOT NULL,
  `NOMBROL` varchar(45) DEFAULT NULL,
  `ESTADO` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`CODROL`, `NOMBROL`, `ESTADO`) VALUES
(1, 'Administrador', 'A'),
(2, 'Coordinador', 'A'),
(3, 'Docente', 'I');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rolxdocente`
--

CREATE TABLE `rolxdocente` (
  `CODROLXDOCENTE` int(11) NOT NULL,
  `CODDOCENTE` int(11) NOT NULL,
  `CODROL` int(11) NOT NULL,
  `USUARIO` varchar(50) NOT NULL,
  `CLAVE` varchar(50) NOT NULL,
  `ESTADO` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `rolxdocente`
--

INSERT INTO `rolxdocente` (`CODROLXDOCENTE`, `CODDOCENTE`, `CODROL`, `USUARIO`, `CLAVE`, `ESTADO`) VALUES
(1, 1, 1, 'c10061', '12', 'A'),
(2, 2, 2, 'c10062', '123', 'I'),
(3, 3, 3, 'c10063', '1234', 'A'),
(4, 1, 1, 'c10069', '123456', 'A'),
(5, 1, 1, 'c10069', '123456', 'A'),
(6, 1, 1, 'c10069', '123456', 'A'),
(7, 1, 1, 'c10069', '123456', 'A'),
(8, 1, 1, 'c10069', '123456', 'A'),
(9, 1, 1, 'c10069', '123456', 'A'),
(10, 1, 1, 'c10069', '123456', 'A'),
(11, 1, 1, 'c10069', '123456', 'A'),
(12, 1, 1, 'c10069', '123456', 'A'),
(13, 1, 1, 'c10069', '123456', 'A'),
(14, 1, 1, 'c10069', '123456', 'A'),
(15, 1, 1, 'c10069', '123456', 'A'),
(16, 1, 1, 'c10069', '123456', 'A'),
(17, 1, 3, 'c10069', '123', 'A'),
(18, 1, 3, 'c10069', '123', 'A'),
(19, 1, 3, 'c10069', '123', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `semestre`
--

CREATE TABLE `semestre` (
  `CODSEMESTRE` int(11) NOT NULL,
  `NOMBSEMESTRE` varchar(45) DEFAULT NULL,
  `FECHAINICIO` date DEFAULT NULL,
  `FECHAFIN` date DEFAULT NULL,
  `ESTADO` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `semestre`
--

INSERT INTO `semestre` (`CODSEMESTRE`, `NOMBSEMESTRE`, `FECHAINICIO`, `FECHAFIN`, `ESTADO`) VALUES
(1, '2015-I', '2015-01-13', '2015-07-15', 'A'),
(2, '2015-II', '2015-08-01', '2016-10-01', 'A'),
(3, 'xx', '2016-08-12', '2016-08-19', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tema`
--

CREATE TABLE `tema` (
  `CODCARRERA` int(11) NOT NULL,
  `CODMATERIA` int(11) NOT NULL,
  `CODUNIDTEMA` int(11) NOT NULL,
  `CODTEMA` int(11) NOT NULL,
  `NOMBTEMA` varchar(1000) DEFAULT NULL,
  `ESTADO` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tema`
--

INSERT INTO `tema` (`CODCARRERA`, `CODMATERIA`, `CODUNIDTEMA`, `CODTEMA`, `NOMBTEMA`, `ESTADO`) VALUES
(1, 1, 1, 1, 'Introducción general del curso', 'A'),
(1, 1, 1, 2, 'Conceptos básicos de  fundamentos de programación', 'A'),
(1, 1, 1, 3, 'Expresiones, Sentencias y Bloques', 'A'),
(1, 1, 1, 4, 'Sentencias de Control: Estructura condicional ', 'A'),
(1, 1, 2, 5, 'sentencias condicionales IF (condición) Else', 'A'),
(1, 1, 2, 6, 'estructura condicional por anidamiento.       If –else-if', 'A'),
(1, 1, 2, 7, 'La estructura de selección Switch.', 'A'),
(1, 1, 2, 8, 'Operadores de incremento y decremento,Operadores de asignación compleja.,Variables globales,Variables locales,Contadores,Acumuladores.', 'A'),
(1, 5, 3, 9, 'XXXXXXXXXXXXXXXXXXX', 'A'),
(1, 5, 3, 10, 'XXXXXXXXXXXXX', 'A'),
(1, 6, 3, 11, 'XXXXXXXXXX', 'A'),
(1, 6, 3, 12, 'XXXXXXXXXXXXX', 'A'),
(1, 7, 4, 13, 'XXXXXXXXXXXXX', 'A'),
(1, 7, 4, 14, 'XXXXXXXXXXXXXX', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoexamen`
--

CREATE TABLE `tipoexamen` (
  `CODTIPEXAMEN` int(11) NOT NULL,
  `NOMBTIPEXAMEN` varchar(45) DEFAULT NULL,
  `ESTADO` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipoexamen`
--

INSERT INTO `tipoexamen` (`CODTIPEXAMEN`, `NOMBTIPEXAMEN`, `ESTADO`) VALUES
(1, 'EXAMEN PARCIAL', 'A'),
(2, 'EXAMEN FINAL', 'A'),
(3, 'PRIMERA  PRACTICA ', 'A'),
(4, 'zz', 'A'),
(5, 'zzz', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tpersona`
--

CREATE TABLE `tpersona` (
  `codPer` int(11) NOT NULL,
  `nomPer` varchar(30) DEFAULT NULL,
  `apePer` varchar(50) DEFAULT NULL,
  `dniPer` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tpersona`
--

INSERT INTO `tpersona` (`codPer`, `nomPer`, `apePer`, `dniPer`) VALUES
(1, 'ANA', 'MEDINA', '12457896'),
(2, 'PEDRO', 'RUIZ', '6936896'),
(3, 'LUIS', 'MOLINA', '45463896'),
(4, 'LEONARDO', 'MEDINA', '32568974');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turno`
--

CREATE TABLE `turno` (
  `CODTURNO` int(11) NOT NULL,
  `NOMBTURNO` varchar(45) DEFAULT NULL,
  `ESTADO` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `turno`
--

INSERT INTO `turno` (`CODTURNO`, `NOMBTURNO`, `ESTADO`) VALUES
(1, 'MAÃ?ANA', 'A'),
(2, 'TARDE', 'A'),
(3, 'NOCHE', 'I');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidadtematica`
--

CREATE TABLE `unidadtematica` (
  `CODCARRERA` int(11) NOT NULL,
  `CODMATERIA` int(11) NOT NULL,
  `CODUNIDTEMA` int(11) NOT NULL,
  `NOMBUNIDTEMA` varchar(1000) DEFAULT NULL,
  `ESTADO` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `unidadtematica`
--

INSERT INTO `unidadtematica` (`CODCARRERA`, `CODMATERIA`, `CODUNIDTEMA`, `NOMBUNIDTEMA`, `ESTADO`) VALUES
(1, 1, 1, 'UNIDAD I', 'A'),
(1, 1, 2, 'UNIDAD II', 'A'),
(1, 1, 3, 'UNIDAD III', 'A'),
(1, 1, 4, 'UNIDAD IV ', 'A');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alternativa`
--
ALTER TABLE `alternativa`
  ADD PRIMARY KEY (`CODALTER`,`NUMALTER`),
  ADD KEY `fk_ALTERNATIVA_PREGUNTA1_idx` (`CODPREG`);

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`CODALU`),
  ADD KEY `FK_CARRERA3` (`CODCARRERA`);

--
-- Indices de la tabla `alumnoxmateria`
--
ALTER TABLE `alumnoxmateria`
  ADD PRIMARY KEY (`CODMATRICULA`,`CODALU`,`CODMATERIA`,`CODSEMESTRE`),
  ADD KEY `CODALU` (`CODALU`),
  ADD KEY `CODCARRERA` (`CODCARRERA`,`CODMATERIA`),
  ADD KEY `CODSEMESTRE` (`CODSEMESTRE`);

--
-- Indices de la tabla `alumnoxmateriaxprogramacionexam`
--
ALTER TABLE `alumnoxmateriaxprogramacionexam`
  ADD PRIMARY KEY (`CODALUXMATEXPROGXEXAM`),
  ADD KEY `CODMATRICULA` (`CODMATRICULA`,`CODALU`,`CODMATERIA`);

--
-- Indices de la tabla `ayudas`
--
ALTER TABLE `ayudas`
  ADD PRIMARY KEY (`CODAYUDA`),
  ADD KEY `fk_AYUDAS_PREGUNTA1_idx` (`CODPREG`);

--
-- Indices de la tabla `carreraprofesional`
--
ALTER TABLE `carreraprofesional`
  ADD PRIMARY KEY (`CODCARRERA`);

--
-- Indices de la tabla `desarrolloexamengenerado`
--
ALTER TABLE `desarrolloexamengenerado`
  ADD PRIMARY KEY (`CODEXAMENGENERADO`,`CODESTRUCEXAMEN`,`CODDETAMATRI`,`CODMATRICULA`,`CODDESARROLLOEXAMGENERADO`,`NUMEXAMDESARROLLOGENERADO`,`CODPREG`),
  ADD KEY `FK_EXAMENAUTOGENERADO3` (`CODESTRUCEXAMEN`),
  ADD KEY `FK_EXAMENAUTOGENERADO4` (`CODDETAMATRI`,`CODMATRICULA`),
  ADD KEY `FK_PREGUNTA2` (`CODPREG`);

--
-- Indices de la tabla `detaexamengenerado`
--
ALTER TABLE `detaexamengenerado`
  ADD PRIMARY KEY (`CODDETEXAMGENERADO`),
  ADD KEY `IDNUMEXAMGENERADO` (`IDNUMEXAMGENERADO`,`CODALUXMATEXPROGXEXAM`),
  ADD KEY `CODPREG` (`CODPREG`);

--
-- Indices de la tabla `detalleestructuraexamen`
--
ALTER TABLE `detalleestructuraexamen`
  ADD PRIMARY KEY (`CODDETAESCTRUCEXA`,`CODESTRUCEXAMEN`),
  ADD KEY `fk_Detalleestructuraexamen_Estructuraexamen_idx` (`CODESTRUCEXAMEN`),
  ADD KEY `fk_Detalleestructuraexamen_Niveldificultad_idx` (`CODNIVEL`);

--
-- Indices de la tabla `detalleestructuraexamenejer`
--
ALTER TABLE `detalleestructuraexamenejer`
  ADD PRIMARY KEY (`CODESTRUCEXAMEN`,`CODESTRUCEXAMENEJER`,`CODDETAESCTRUCEXAEJER`);

--
-- Indices de la tabla `detalleexamenautogenerado`
--
ALTER TABLE `detalleexamenautogenerado`
  ADD PRIMARY KEY (`CODDETEXAMENGENERADO`,`CODEXAMENGENERADO`,`NUMITEMEXAMENGENERADO`),
  ADD KEY `FK_EXAMENGENERADO11` (`CODEXAMENGENERADO`),
  ADD KEY `FK_PREGUNTA11` (`CODPREG`);

--
-- Indices de la tabla `detallematricula`
--
ALTER TABLE `detallematricula`
  ADD PRIMARY KEY (`CODDETAMATRI`,`CODMATRICULA`),
  ADD KEY `FK_MATRICULA` (`CODMATRICULA`),
  ADD KEY `FK_PROGRAMACIONMATERIA` (`CODPROGRAMAT`);

--
-- Indices de la tabla `dia`
--
ALTER TABLE `dia`
  ADD PRIMARY KEY (`CODDIA`);

--
-- Indices de la tabla `docente`
--
ALTER TABLE `docente`
  ADD PRIMARY KEY (`CODDOCENTE`);

--
-- Indices de la tabla `docentexmateria`
--
ALTER TABLE `docentexmateria`
  ADD PRIMARY KEY (`CODCARRERA`,`CODMATERIA`,`CODDOCENTE`,`CODDOCENXMATERIA`),
  ADD KEY `fk_DOCENTEXMATERIA_DOCENTE1_idx` (`CODDOCENTE`),
  ADD KEY `fk_DOCENTEXMATERIA_MATERIA1_idx` (`CODCARRERA`,`CODMATERIA`);

--
-- Indices de la tabla `estructuraexamen`
--
ALTER TABLE `estructuraexamen`
  ADD PRIMARY KEY (`CODESTRUCEXAMEN`),
  ADD KEY `zzz` (`CODMATERIA`,`CODCARRERA`),
  ADD KEY `fk_Estructuraexamen_Semestre_idx` (`CODSEMESTRE`),
  ADD KEY `fk_Estructuraexamen_Tipoexamen_idx` (`CODTIPEXAMEN`);

--
-- Indices de la tabla `estructuraexamenejercitacion`
--
ALTER TABLE `estructuraexamenejercitacion`
  ADD PRIMARY KEY (`CODESTRUCEXAMEN`,`CODESTRUCEXAMENEJER`);

--
-- Indices de la tabla `examenautogenerado`
--
ALTER TABLE `examenautogenerado`
  ADD PRIMARY KEY (`CODEXAMENGENERADO`,`CODESTRUCEXAMEN`,`CODDETAMATRI`,`CODMATRICULA`),
  ADD KEY `FK_DETALLEMATRI2` (`CODDETAMATRI`,`CODMATRICULA`),
  ADD KEY `FK_ESTRUCTURAEXAMEN2` (`CODESTRUCEXAMEN`);

--
-- Indices de la tabla `examengenerado`
--
ALTER TABLE `examengenerado`
  ADD PRIMARY KEY (`IDNUMEXAMGENERADO`,`CODALUXMATEXPROGXEXAM`),
  ADD KEY `CODALUXMATEXPROGXEXAM` (`CODALUXMATEXPROGXEXAM`);

--
-- Indices de la tabla `horariodelaboratoriodisponibles`
--
ALTER TABLE `horariodelaboratoriodisponibles`
  ADD PRIMARY KEY (`CODHORARIOLAB`),
  ADD KEY `fk_HORARIODELABORATORIO_LABORATORIO1_idx` (`CODLAB`),
  ADD KEY `fk_HORARIODELABORATORIO_TURNO1_idx` (`CODTURNO`),
  ADD KEY `fk_HORARIODELABORATORIO_DIA1_idx` (`CODDIA`),
  ADD KEY `fk_HORARIODELABORATORIO_SEMESTRE1_idx` (`CODSEMESTRE`);

--
-- Indices de la tabla `laboratorio`
--
ALTER TABLE `laboratorio`
  ADD PRIMARY KEY (`CODLAB`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`CODCARRERA`,`CODMATERIA`),
  ADD KEY `fk_MATERIA_CARRERAPROFESIONAL_idx` (`CODCARRERA`);

--
-- Indices de la tabla `matricula`
--
ALTER TABLE `matricula`
  ADD PRIMARY KEY (`CODMATRICULA`),
  ADD KEY `FK_SEMESTRE` (`CODSEMESTRE`),
  ADD KEY `FK_ALUMNO` (`CODALU`);

--
-- Indices de la tabla `niveldificultad`
--
ALTER TABLE `niveldificultad`
  ADD PRIMARY KEY (`CODNIVEL`);

--
-- Indices de la tabla `pregunta`
--
ALTER TABLE `pregunta`
  ADD PRIMARY KEY (`CODPREG`),
  ADD KEY `fk_PREGUNTA_NIVELDIFICULTAD1_idx` (`CODNIVEL`),
  ADD KEY `fk_PREGUNTA_TEMA1_idx` (`CODCARRERA`,`CODMATERIA`,`CODUNIDTEMA`,`CODTEMA`),
  ADD KEY `CODSEMESTRE` (`CODSEMESTRE`);

--
-- Indices de la tabla `programacionexamen`
--
ALTER TABLE `programacionexamen`
  ADD PRIMARY KEY (`CODPROGEXAMEN`,`CODPROGHORARIO`,`CODESTRUCEXAMEN`),
  ADD KEY `fk_Programacionexamen_Horariodelaboratoriodisponibles_idx` (`CODHORARIOLAB`),
  ADD KEY `fk_Programacionexamen_Estructuraexamen_idx` (`CODESTRUCEXAMEN`);

--
-- Indices de la tabla `programacionexamenxsupervisor`
--
ALTER TABLE `programacionexamenxsupervisor`
  ADD PRIMARY KEY (`CODPROGEXAMSUPER`),
  ADD KEY `CODROLXDOCENTE` (`CODROLXDOCENTE`),
  ADD KEY `CODPROGEXAMEN` (`CODPROGEXAMEN`,`CODPROGHORARIO`,`CODESTRUCEXAMEN`);

--
-- Indices de la tabla `programacionmateria`
--
ALTER TABLE `programacionmateria`
  ADD PRIMARY KEY (`CODPROGRAMAT`),
  ADD KEY `FK_DOCENTE1` (`CODDOCENTE`),
  ADD KEY `FK_MATERIA1` (`CODCARRERA`,`CODMATERIA`),
  ADD KEY `FK_SEMESTRE1` (`CODSEMESTRE`);

--
-- Indices de la tabla `programarexamen`
--
ALTER TABLE `programarexamen`
  ADD PRIMARY KEY (`CODPROGRAEXA`,`CODPROGRAMAT`,`CODESTRUCEXAMEN`),
  ADD KEY `FK_PROGRAMACIONMATERIA1` (`CODPROGRAMAT`),
  ADD KEY `FK_ESTRUCTURAEXAMEN1` (`CODESTRUCEXAMEN`),
  ADD KEY `FK_DIA111` (`DIA`);

--
-- Indices de la tabla `resultadoevaluacion`
--
ALTER TABLE `resultadoevaluacion`
  ADD PRIMARY KEY (`CODRESUL`),
  ADD KEY `FK_EXAMENAUTOGENERADO` (`CODEXAMENGENERADO`,`CODESTRUCEXAMEN`,`CODDETAMATRI`,`CODMATRICULA`,`CODTIPEXAMEN`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`CODROL`);

--
-- Indices de la tabla `rolxdocente`
--
ALTER TABLE `rolxdocente`
  ADD PRIMARY KEY (`CODROLXDOCENTE`,`CODDOCENTE`,`CODROL`),
  ADD KEY `fk_ROLXDOCENTE_ROL1_idx` (`CODROL`),
  ADD KEY `fk_ROLXDOCENTE_DOCENTE1_idx` (`CODDOCENTE`);

--
-- Indices de la tabla `semestre`
--
ALTER TABLE `semestre`
  ADD PRIMARY KEY (`CODSEMESTRE`);

--
-- Indices de la tabla `tema`
--
ALTER TABLE `tema`
  ADD PRIMARY KEY (`CODCARRERA`,`CODMATERIA`,`CODUNIDTEMA`,`CODTEMA`),
  ADD KEY `fk_TEMA_UNIDADTEMATICA1_idx` (`CODCARRERA`,`CODMATERIA`,`CODUNIDTEMA`);

--
-- Indices de la tabla `tipoexamen`
--
ALTER TABLE `tipoexamen`
  ADD PRIMARY KEY (`CODTIPEXAMEN`);

--
-- Indices de la tabla `tpersona`
--
ALTER TABLE `tpersona`
  ADD PRIMARY KEY (`codPer`);

--
-- Indices de la tabla `turno`
--
ALTER TABLE `turno`
  ADD PRIMARY KEY (`CODTURNO`);

--
-- Indices de la tabla `unidadtematica`
--
ALTER TABLE `unidadtematica`
  ADD PRIMARY KEY (`CODCARRERA`,`CODMATERIA`,`CODUNIDTEMA`),
  ADD KEY `fk_UNIDADTEMATICA_MATERIA1_idx` (`CODCARRERA`,`CODMATERIA`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnoxmateria`
--
ALTER TABLE `alumnoxmateria`
  MODIFY `CODMATRICULA` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `alumnoxmateriaxprogramacionexam`
--
ALTER TABLE `alumnoxmateriaxprogramacionexam`
  MODIFY `CODALUXMATEXPROGXEXAM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `detaexamengenerado`
--
ALTER TABLE `detaexamengenerado`
  MODIFY `CODDETEXAMGENERADO` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalleestructuraexamen`
--
ALTER TABLE `detalleestructuraexamen`
  MODIFY `CODDETAESCTRUCEXA` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalleexamenautogenerado`
--
ALTER TABLE `detalleexamenautogenerado`
  MODIFY `CODDETEXAMENGENERADO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `detallematricula`
--
ALTER TABLE `detallematricula`
  MODIFY `CODDETAMATRI` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `estructuraexamen`
--
ALTER TABLE `estructuraexamen`
  MODIFY `CODESTRUCEXAMEN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `examenautogenerado`
--
ALTER TABLE `examenautogenerado`
  MODIFY `CODEXAMENGENERADO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `examengenerado`
--
ALTER TABLE `examengenerado`
  MODIFY `IDNUMEXAMGENERADO` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `matricula`
--
ALTER TABLE `matricula`
  MODIFY `CODMATRICULA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT de la tabla `programacionexamen`
--
ALTER TABLE `programacionexamen`
  MODIFY `CODPROGEXAMEN` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `programacionexamenxsupervisor`
--
ALTER TABLE `programacionexamenxsupervisor`
  MODIFY `CODPROGEXAMSUPER` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `programacionmateria`
--
ALTER TABLE `programacionmateria`
  MODIFY `CODPROGRAMAT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `programarexamen`
--
ALTER TABLE `programarexamen`
  MODIFY `CODPROGRAEXA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `resultadoevaluacion`
--
ALTER TABLE `resultadoevaluacion`
  MODIFY `CODRESUL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `tpersona`
--
ALTER TABLE `tpersona`
  MODIFY `codPer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alternativa`
--
ALTER TABLE `alternativa`
  ADD CONSTRAINT `fk_ALTERNATIVA_PREGUNTA1` FOREIGN KEY (`CODPREG`) REFERENCES `pregunta` (`CODPREG`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD CONSTRAINT `FK_CARRERA3` FOREIGN KEY (`CODCARRERA`) REFERENCES `carreraprofesional` (`CODCARRERA`);

--
-- Filtros para la tabla `docente`
--
ALTER TABLE `docente`
  ADD CONSTRAINT `FK_CARRERA10` FOREIGN KEY (`CODCARRERA`) REFERENCES `carreraprofesional` (`CODCARRERA`);


--
-- Filtros para la tabla `rolxdocente`
--
ALTER TABLE `rolxdocente`
  ADD CONSTRAINT `FK_DOCENTE11` FOREIGN KEY (`CODDOCENTE`) REFERENCES `DOCENTE` (`CODDOCENTE`);



--
-- Filtros para la tabla `rol`
--
ALTER TABLE `rolxdocente`
  ADD CONSTRAINT `FK_DOCENTE12` FOREIGN KEY (`CODROL`) REFERENCES `rol` (`CODROL`);


--
-- Filtros para la tabla `alumnoxmateria`
--
ALTER TABLE `alumnoxmateria`
  ADD CONSTRAINT `alumnoxmateria_ibfk_1` FOREIGN KEY (`CODALU`) REFERENCES `alumno` (`CODALU`),
  ADD CONSTRAINT `alumnoxmateria_ibfk_2` FOREIGN KEY (`CODCARRERA`,`CODMATERIA`) REFERENCES `materia` (`CODCARRERA`, `CODMATERIA`),
  ADD CONSTRAINT `alumnoxmateria_ibfk_3` FOREIGN KEY (`CODSEMESTRE`) REFERENCES `semestre` (`CODSEMESTRE`);

--
-- Filtros para la tabla `alumnoxmateriaxprogramacionexam`
--
ALTER TABLE `alumnoxmateriaxprogramacionexam`
  ADD CONSTRAINT `alumnoxmateriaxprogramacionexam_ibfk_1` FOREIGN KEY (`CODMATRICULA`,`CODALU`,`CODMATERIA`) REFERENCES `alumnoxmateria` (`CODMATRICULA`, `CODALU`, `CODMATERIA`);

--
-- Filtros para la tabla `ayudas`
--
ALTER TABLE `ayudas`
  ADD CONSTRAINT `fk_AYUDAS_PREGUNTA1` FOREIGN KEY (`CODPREG`) REFERENCES `pregunta` (`CODPREG`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `detalleestructuraexamenejer`
--
ALTER TABLE `detalleestructuraexamenejer`
  ADD CONSTRAINT `detalleestructuraexamenejer_ibfk_1` FOREIGN KEY (`CODESTRUCEXAMEN`,`CODESTRUCEXAMENEJER`) REFERENCES `estructuraexamenejercitacion` (`CODESTRUCEXAMEN`, `CODESTRUCEXAMENEJER`);

--
-- Filtros para la tabla `estructuraexamenejercitacion`
--
ALTER TABLE `estructuraexamenejercitacion`
  ADD CONSTRAINT `estructuraexamenejercitacion_ibfk_1` FOREIGN KEY (`CODESTRUCEXAMEN`) REFERENCES `estructuraexamen` (`CODESTRUCEXAMEN`);

--
-- Filtros para la tabla `pregunta`
--
ALTER TABLE `pregunta`
  ADD CONSTRAINT `pregunta_ibfk_1` FOREIGN KEY (`CODSEMESTRE`) REFERENCES `semestre` (`CODSEMESTRE`);

--
-- Filtros para la tabla `resultadoevaluacion`
--
ALTER TABLE `resultadoevaluacion`
  ADD CONSTRAINT `FK_EXAMENAUTOGENERADO` FOREIGN KEY (`CODEXAMENGENERADO`,`CODESTRUCEXAMEN`,`CODDETAMATRI`,`CODMATRICULA`) REFERENCES `examenautogenerado` (`CODEXAMENGENERADO`, `CODESTRUCEXAMEN`, `CODDETAMATRI`, `CODMATRICULA`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
