CREATE DATABASE  IF NOT EXISTS `gym` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `gym`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: gym
-- ------------------------------------------------------
-- Server version	8.0.41

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbb_equipamientos`
--

DROP TABLE IF EXISTS `tbb_equipamientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_equipamientos` (
  `Id` int NOT NULL AUTO_INCREMENT COMMENT 'Descripción: Atributo identificador númerico auto incremental que distingue de manera única al equipamiento. \nNaturaleza: Cuantitativo\nDominio: Enteros positivos \nComposición: 1{0-9}',
  `Nombre` varchar(100) NOT NULL COMMENT 'Descripción: Es el nombre que describe el equipo.\nNaturaleza: Cualitativo\nDominio: Cadena de texto, vocales con tilde, espacios separados \nComposición: 0{A-Z|a-z|0-9| |}100',
  `Marca` varchar(100) DEFAULT NULL COMMENT 'Descripción: Marca o fabricante del equipo. Indica la marca comercial que produce el equipo.\nNaturaleza: Cualitativo\nDominio: Cadena de texto, vocales con tilde, espacios separados\nComposición: 0{A-Z|a-z|0-9| |}50',
  `Modelo` varchar(100) DEFAULT NULL COMMENT 'Descripción: Se refiere al modelo específico que el fabricante ha asignado a dicho equipo.\nNaturaleza: Cualitativo\nDominio:  Cadena de texto, vocales con tilde, espacios separados\nComposición: 0{A-Z|a-z|0-9| |-|_}50',
  `Fotografia` text COMMENT 'Descripción: URL o ruta de la imagen que representa el equipo. Se utiliza para mostrar la imagen del equipo en la interfaz del sistema.\nNaturaleza: Cualitativo\nDominio:Caracteres Alfanumericos, mas la extension permitida de imagenes como .jpg, .png, etc.\nComposicion:\nNombre_Archivo = 0{A-z|0-9}96\nExtension_Archivo = 0{A-z}4\nFotografia = Nombre_Archivo+''-''+Extension_Archivo',
  `Estatus` tinyint(1) NOT NULL COMMENT 'Descripcion: Dato de Auditoria que define el estatus actual del registro, siendo 0 para un datos no activos y 1 para datos activos para uso en el sistema\nNaturaleza: Cuantativo\nDominio: Booleano\nComposicion: [0|1]',
  `Total_Existencias` int DEFAULT NULL COMMENT 'Descripción: Número de unidades disponibles de ese equipo en el inventario.\nNaturaleza: Cuantitativo\nDominio: Caracteres numéricos\nComposición: 0{0-9}10',
  `Fecha_Registro` datetime NOT NULL COMMENT 'Descripcion: Dato de Auditoria que documenta la fecha y hora de creacion del registro.\nNaturaleza: Cuantitativo\nDominio: Numeros Enteros Positivos imitados por el calendario y limites de mes y/o año bisiesto.\nComposicion:\nAño = 4{0-9}4\nMes =  [01|02|...|12]\nDia =  [01|02|..|31]\nHora = [00|01|...|23]\nMinutos = [00|01|...|59]\nSeguntodos = [00|01|...|59]\nFecha_Registro= Año+''-''+Mes+''-''+Dia+''-''+Hora+''-''+Munutos+''-''+Segundos',
  `Fecha_Actualizacion` datetime DEFAULT NULL COMMENT 'Descripcion: Dato de Auditoria que documenta la fecha y hora de la ultima modificacion del registro\nNaturaleza: Cuantitativo\nDominio: Numeros Enteros Positivos imitados por el calendario y limites de mes y/o año bisiesto.\nComposicion:\nAño = 4{0-9}4\nMes =  [01|02|...|12]\nDia =  [01|02|..|31]\nHora = [00|01|...|23]\nMinutos = [00|01|...|59]\nSeguntodos = [00|01|...|59]\nFecha_Actualizacion = Año+''-''+Mes+''-''+Dia+''-''+Hora+''-''+Munutos+''-''+Segundos',
  PRIMARY KEY (`Id`),
  KEY `ix_tbb_equipamientos_Id` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='La tabla Equipamiento almacenará la información detallada sobre los equipos registrados en el sistema, incluyendo su nombre, marca, modelo, estado y otras características relevantes como la fotografía y las fechas de registro y actualización.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbb_instalaciones`
--

DROP TABLE IF EXISTS `tbb_instalaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_instalaciones` (
  `Id` int NOT NULL AUTO_INCREMENT COMMENT 'Descripcion: Atributo identificador numero auto incremental que distingue de manera unica a la instalacion. \nNaturaleza: Cuantitativo\nDominio: Enteos positivos\nComposicion: 1{0-9}',
  `Descripcion` longtext COMMENT 'Descripción: Descripción breve de la instalación. Puede ser el nombre o una breve explicación sobre la instalación, como "Sala de pesas", "Área de cardio", "Piscina", etc.\nNaturaleza: Cualitativo\nDominio: Caracteres alfanuméricos, vocales con tilde, espacios separados.\nComposición: 0{A-Z|a-z|0-9| |}100',
  `Tipo` varchar(50) DEFAULT NULL COMMENT 'Descripción: Tipo de instalación. Indica el tipo o categoría de la instalación, como "Gimnasio", "Área de descanso", "Vestidores".\nNaturaleza: Cualitativo\nDominio:Cadena de texto, vocales con tilde, espacios separados.\nComposición: 0{A-Z|a-z|0-9| |}50\n\n',
  `Observaciones` varchar(100) DEFAULT NULL COMMENT 'Descripción: Información adicional relevante sobre la instalación. Puede incluir detalles como el estado actual, notas de mantenimiento o restricciones de uso.\nNaturaleza: Cualitativo\nDominio: Cadena de texto, puede incluir letras, números, espacios y caracteres especiales.\nComposición: 0{A-Z|a-z|0-9| |,|.|-|_|;|}255',
  `Estatus` tinyint(1) DEFAULT NULL COMMENT 'Descripcion: Dato de Auditoria que define el estatus actual del regitro, siendo 0 para un datos no activos y 1 para datos activos para uso en el sistema.\nNaturaleza: Cuantativo\nDominio: Booleano\nComposicion: [0|1]',
  `Fecha_Registro` datetime NOT NULL COMMENT 'Descripcion: Dato de Auditoria que documenta la fecha y hora de creacion del registro.\nNaturaleza: Cuantitativo\nDominio: Numeros Enteros Positivos imitados por el calendario y limites de mes y/o año bisiesto.\nComposicion:\nAño = 4{0-9}4\nMes =  [01|02|...|12]\nDia =  [01|02|..|31]\nHora = [00|01|...|23]\nMinutos = [00|01|...|59]\nSeguntodos = [00|01|...|59]\nFecha_Registro= Año+''-''+Mes+''-''+Dia+''-''+Hora+''-''+Munutos+''-''+Segundos',
  `Fecha_Actualizacion` datetime DEFAULT NULL COMMENT 'Descripcion: Dato de Auditoria que documenta la fecha y hora de la ultima modificacion del registro.\nNaturaleza: Cuantitativo\nDominio: Numeros Enteros Positivos imitados por el calendario y limites de mes y/o año bisiesto.\nComposicion:\nAño = 4{0-9}4\nMes =  [01|02|...|12]\nDia =  [01|02|..|31]\nHora = [00|01|...|23]\nMinutos = [00|01|...|59]\nSeguntodos = [00|01|...|59]\nFecha_Actualizacion = Año+''-''+Mes+''-''+Dia+''-''+Hora+''-''+Munutos+''-''+Segundos',
  PRIMARY KEY (`Id`),
  KEY `ix_tbb_instalaciones_Id` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='La tabla Instalaciones almacenará la información relativa a las instalaciones dentro del gimnasio, describiendo las características de cada una, su tipo y cualquier observación adicional que sea relevante para su gestión.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbb_mantenimiento`
--

DROP TABLE IF EXISTS `tbb_mantenimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_mantenimiento` (
  `Id` int NOT NULL AUTO_INCREMENT COMMENT 'Descripcion: Atributo identificador numero auto incremental que distingue de manera unica el numero de mantenimiento realizado. \nNaturaleza: Cuantitativo\nDominio: Enteos positivos\nComposicion: 1{0-9}',
  `Id_equipamiento` int NOT NULL COMMENT 'Descripción: Identificador único del equipo que recibió el mantenimiento. Se refiere al equipo registrado previamente.\nNaturaleza: Cuantitativo\nDominio: Entero\nComposición: 1{0-9}10',
  `Descripcion` varchar(100) NOT NULL COMMENT 'Descripción: Descripción detallada del mantenimiento realizado. Puede incluir detalles como la reparación, mantenimiento preventivo o cualquier acción realizada sobre el equipo.\nNaturaleza: Cualitativo\nDominio: Cadena de texto, puede incluir letras, números y espacios.\nComposición: 0{A-Z|a-z|0-9| |,|.|-|;}255',
  `Responsable` varchar(100) NOT NULL COMMENT 'Descripción: Nombre de la persona o empresa encargada de realizar el mantenimiento del equipo. Puede ser un técnico interno o externo.\nNaturaleza: Cualitativo\nDominio: Cadena de texto, puede incluir letras, números y espacios.\nComposición: 0{A-Z|a-z|0-9| |,|.|-}100',
  `Costo` int NOT NULL COMMENT 'Descripción: Costo total del mantenimiento realizado sobre el equipo. Este valor es el precio asociado al servicio de mantenimiento, ya sea por piezas de repuesto, mano de obra, etc.\nNaturaleza: Cuantitativo\nDominio: Numérico, representado en moneda (por ejemplo, en pesos o dólares).\nComposición: 0{0-9|.|}10',
  `Estatus` tinyint(1) DEFAULT NULL COMMENT 'Descripcion: Dato de Auditoria que define el estatus actual del regitro, siendo 0 para un datos no activos y 1 para datos activos para uso en el sistema.\nNaturaleza: Cuantativo\nDominio: Booleano\nComposicion: [0|1]',
  `Fecha_mantenimiento` datetime NOT NULL COMMENT 'Descripcion: Dato de Auditoria que documenta la fecha y hora para realizar el mantenimiento.\nNaturaleza: Cuantitativo\nDominio: Numeros Enteros Positivos imitados por el calendario y limites de mes y/o año bisiesto.\nComposicion:\nAño = 4{0-9}4\nMes =  [01|02|...|12]\nDia =  [01|02|..|31]\nHora = [00|01|...|23]\nMinutos = [00|01|...|59]\nSeguntodos = [00|01|...|59]\nFecha_Registro= Año+''-''+Mes+''-''+Dia+''-''+Hora+''-''+Munutos+''-''+Segundos',
  `Fecha_Actualizacion` datetime NOT NULL COMMENT 'Descripcion: Dato de Auditoria que documenta la fecha y hora de la ultima modificacion del registro del mantenimiento.\nNaturaleza: Cuantitativo\nDominio: Numeros Enteros Positivos imitados por el calendario y limites de mes y/o año bisiesto.\nComposicion:\nAño = 4{0-9}4\nMes =  [01|02|...|12]\nDia =  [01|02|..|31]\nHora = [00|01|...|23]\nMinutos = [00|01|...|59]\nSeguntodos = [00|01|...|59]\nFecha_Actualizacion = Año+''-''+Mes+''-''+Dia+''-''+Hora+''-''+Munutos+''-''+Segundos',
  PRIMARY KEY (`Id`),
  KEY `ix_tbb_mantenimiento_Id` (`Id`),
  KEY `tbb_mantenimiento_ibfk_1` (`Id_equipamiento`),
  CONSTRAINT `tbb_mantenimiento_ibfk_1` FOREIGN KEY (`Id_equipamiento`) REFERENCES `tbb_equipamientos` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='La tabla Mantenimiento almacenará la información relacionada con el mantenimiento realizado a los equipos dentro del gimnasio, incluyendo el identificador del equipo, la descripción del mantenimiento, el responsable de la tarea y el costo asociado.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbb_usuarios`
--

DROP TABLE IF EXISTS `tbb_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_usuarios` (
  `ID` int NOT NULL AUTO_INCREMENT COMMENT 'Descripcion: Atributo identificador numero auto incremental que distingue de manera unica a la instalacion. \nNaturaleza: Cuantitativo\nDominio: Enteos positivos\nComposicion: 1{0-9}',
  `Nombre_Usuario` varchar(60) NOT NULL COMMENT 'Descripción: Nombre único asignado al usuario para su identificación en el sistema. Es utilizado para acceder al sistema y realizar operaciones dentro del mismo.\nNaturaleza: Cualitativo\nDominio: Cadena de texto, solo caracteres alfanuméricos y sin espacios.\nComposición: 1{A-Z|a-z|0-9}30',
  `Correo_Electronico` varchar(100) NOT NULL COMMENT 'Descripción: Dirección de correo electrónico asociada al usuario, que se utiliza para notificaciones, recuperación de contraseña y otras comunicaciones del sistema.\nNaturaleza: Cualitativo\nDominio: Cadena de texto que sigue el formato estándar de correo electrónico.\nComposición: 1{A-Z|a-z|0-9|.|-|_} + "@" + 1{A-Z|a-z|0-9|.|-} + "." + 1{A-Z|a-z|0-9}50',
  `Contrasena` varchar(100) NOT NULL COMMENT 'Descripción: Contraseña asociada al nombre de usuario para autenticar al usuario en el sistema.\\nNaturaleza: Cualitativo\\nDominio: Cadena de texto, puede incluir letras, números y caracteres especiales.\\nComposición: 6{A-Z|a-z|0-9|!|@|#|$|%|^|&|*|(|)}100',
  `Numero_Telefonico_Movil` varchar(20) DEFAULT NULL COMMENT 'Descripción: Número de teléfono móvil del usuario, utilizado para comunicaciones directas o como método de recuperación de cuenta.\nNaturaleza: Cuantitativo\nDominio: Cadena numérica, puede incluir el prefijo de país y el número de teléfono.\nComposición: 10{0-9}15 ',
  `Estatus` enum('Activo','Inactivo','Bloqueado','Suspendido') NOT NULL COMMENT 'Descripción: Indica el estado actual del usuario en el sistema.\nNaturaleza: Cualitativo\nDominio: Enum (predefinido, valores posibles: ''Activo'', ''Inactivo'', ''Bloqueado'', ''Suspendido'')\nComposición: ENUM(''Activo'', ''Inactivo'', ''Bloqueado'', ''Suspendido'')',
  `Fecha_Registro` datetime DEFAULT NULL COMMENT 'Descripcion: Dato de Auditoria que documenta la fecha y hora de creacion del registro.\nNaturaleza: Cuantitativo\nDominio: Numeros Enteros Positivos imitados por el calendario y limites de mes y/o año bisiesto.\nComposicion:\nAño = 4{0-9}4\nMes =  [01|02|...|12]\nDia =  [01|02|..|31]\nHora = [00|01|...|23]\nMinutos = [00|01|...|59]\nSeguntodos = [00|01|...|59]\nFecha_Registro= Año+''-''+Mes+''-''+Dia+''-''+Hora+''-''+Munutos+''-''+Segundos',
  `Fecha_Actualizacion` datetime DEFAULT NULL COMMENT 'Descripcion: Dato de Auditoria que documenta la fecha y hora de la ultima modificacion del registro.\nNaturaleza: Cuantitativo\nDominio: Numeros Enteros Positivos imitados por el calendario y limites de mes y/o año bisiesto.\nComposicion:\nAño = 4{0-9}4\nMes =  [01|02|...|12]\nDia =  [01|02|..|31]\nHora = [00|01|...|23]\nMinutos = [00|01|...|59]\nSeguntodos = [00|01|...|59]\nFecha_Actualizacion = Año+''-''+Mes+''-''+Dia+''-''+Hora+''-''+Munutos+''-''+Segundos',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Correo_Electronico` (`Correo_Electronico`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='La tabla Usuarios almacenará información sobre los usuarios registrados en el sistema, incluyendo su nombre de usuario, correo electrónico, contraseña, número de teléfono móvil y estatus actual.\n\n';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbc_sucursales`
--

DROP TABLE IF EXISTS `tbc_sucursales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbc_sucursales` (
  `Id` int NOT NULL AUTO_INCREMENT COMMENT 'Descripcion: Atributo identificador numero auto incremental que distingue de manera unica a la sucursal. \nNaturaleza: Cuantitativo\nDominio: Enteos positivos\nComposicion: 1{0-9}',
  `Nombre` varchar(60) DEFAULT NULL COMMENT 'Descripción: Nombre de la sucursal, utilizado para identificar la sucursal dentro del sistema.\nNaturaleza: Cualitativo\nDominio: Cadena de texto, puede incluir letras, números y espacios.\nComposición: 1{A-Z|a-z|0-9| |}100',
  `Direccion` varchar(150) DEFAULT NULL COMMENT 'Descripción: Dirección física de la sucursal, que incluye calle, número, colonia, ciudad, código postal y demás detalles para identificar la ubicación de la sucursal.\nNaturaleza: Cualitativo\nDominio: Cadena de texto, puede incluir letras, números, espacios, y algunos caracteres especiales como comas, puntos y guiones.\nComposición: 1{A-Z|a-z|0-9| |,|.|-|}200',
  `Responsable_Id` int DEFAULT NULL COMMENT 'Descripción: Identificador del responsable de la sucursal. Hace referencia al usuario responsable que gestiona la sucursal.\nNaturaleza: Cuantitativo\nDominio: Entero.\nComposición: 1{0-9}11',
  `Total_Clientes_Atendidos` int DEFAULT NULL COMMENT 'Descripción: Total de clientes atendidos por la sucursal, utilizado para calcular el volumen de atención en la sucursal.\nNaturaleza: Cuantitativo\nDominio: Número entero positivo.\nComposición: 1{0-9}10',
  `Promedio_Clientes_X_Dia` int DEFAULT NULL COMMENT 'Descripción: Promedio de clientes atendidos por día en la sucursal, basado en el total de clientes atendidos y los días de operación.\nNaturaleza: Cuantitativo\nDominio: Número decimal.\nComposición: 1{0-9}5{.}{0-9}2',
  `Capacidad_Maxima` int DEFAULT NULL COMMENT 'Descripción: Número máximo de clientes que la sucursal puede atender al mismo tiempo, basado en el espacio disponible y los recursos de la sucursal.\nNaturaleza: Cuantitativo\nDominio: Número entero positivo.\nComposición: 1{0-9}5',
  `Total_Empleados` int DEFAULT NULL COMMENT 'Descripción: Total de empleados asignados a la sucursal, incluidos aquellos que trabajan de manera directa y en áreas relacionadas.\nNaturaleza: Cuantitativo\nDominio: Número entero positivo.\nComposición: 1{0-9}3',
  `Horario_Disponibilidad` longtext COMMENT 'Descripción: Horario de operación de la sucursal, indicando los días de la semana y las horas en las que está disponible para atención.\nNaturaleza: Cualitativo\nDominio: Cadena de texto con la estructura de días y horas.\nComposición: 1{A-Z|a-z|0-9| |,|:|-|}100',
  `Estatus` tinyint(1) DEFAULT NULL COMMENT 'Descripcion: Dato de Auditoria que define el estatus actual del regitro, siendo 0 para un datos no activos y 1 para datos activos para uso en el sistema.\nNaturaleza: Cuantativo\nDominio: Booleano\nComposicion: [0|1]',
  `Fecha_Registro` datetime NOT NULL COMMENT 'Descripcion: Dato de Auditoria que documenta la fecha y hora de creacion del registro.\nNaturaleza: Cuantitativo\nDominio: Numeros Enteros Positivos imitados por el calendario y limites de mes y/o año bisiesto.\nComposicion:\nAño = 4{0-9}4\nMes =  [01|02|...|12]\nDia =  [01|02|..|31]\nHora = [00|01|...|23]\nMinutos = [00|01|...|59]\nSeguntodos = [00|01|...|59]\nFecha_Registro= Año+''-''+Mes+''-''+Dia+''-''+Hora+''-''+Munutos+''-''+Segundos',
  `Fecha_Actualizacion` datetime DEFAULT NULL COMMENT 'Descripcion: Dato de Auditoria que documenta la fecha y hora de la ultima modificacion del registro.\nNaturaleza: Cuantitativo\nDominio: Numeros Enteros Positivos imitados por el calendario y limites de mes y/o año bisiesto.\nComposicion:\nAño = 4{0-9}4\nMes =  [01|02|...|12]\nDia =  [01|02|..|31]\nHora = [00|01|...|23]\nMinutos = [00|01|...|59]\nSeguntodos = [00|01|...|59]\nFecha_Actualizacion = Año+''-''+Mes+''-''+Dia+''-''+Hora+''-''+Munutos+''-''+Segundos',
  PRIMARY KEY (`Id`),
  KEY `ix_tbc_sucursales_Id` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='La tabla Sucursales almacenará información acerca de las sucursales de la empresa, incluyendo el nombre de la sucursal, su dirección, el responsable de la sucursal, estadísticas de clientes atendidos, empleados y la capacidad máxima de la sucursal.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbi_bitacora`
--

DROP TABLE IF EXISTS `tbi_bitacora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbi_bitacora` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Usuario` varchar(100) DEFAULT NULL,
  `Operacion` varchar(20) DEFAULT NULL,
  `Tabla` varchar(100) DEFAULT NULL,
  `Descripcion` text,
  `Fecha_Registro` datetime DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Actualizacion` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-10  0:08:17
