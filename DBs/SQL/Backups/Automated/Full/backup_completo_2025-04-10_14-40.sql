-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: gym
-- ------------------------------------------------------
-- Server version	8.0.41

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
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
-- Dumping data for table `tbb_equipamientos`
--

LOCK TABLES `tbb_equipamientos` WRITE;
/*!40000 ALTER TABLE `tbb_equipamientos` DISABLE KEYS */;
INSERT INTO `tbb_equipamientos` VALUES (1,'Caminadora','Weslo','6000','',1,2,'2025-04-08 04:24:18','2025-04-08 04:24:50'),(2,'Banda Electrica','Life Fitness','456rt','',1,5,'2025-04-08 17:20:47','2025-04-08 17:20:47'),(3,'Equipo 1','Marca F','Modelo-58','https://fakeimg.pl/250x250/?text=Equipo+1',1,4,'2025-04-09 22:46:17',NULL),(4,'Equipo 2','Marca P','Modelo-710','https://fakeimg.pl/250x250/?text=Equipo+2',1,14,'2025-04-09 22:46:17',NULL),(5,'Equipo 3','Marca B','Modelo-983','https://fakeimg.pl/250x250/?text=Equipo+3',1,22,'2025-04-09 22:46:17',NULL),(6,'Equipo 4','Marca K','Modelo-880','https://fakeimg.pl/250x250/?text=Equipo+4',0,7,'2025-04-09 22:46:17',NULL),(7,'Equipo 5','Marca P','Modelo-352','https://fakeimg.pl/250x250/?text=Equipo+5',1,21,'2025-04-09 22:46:17',NULL),(8,'Equipo 6','Marca N','Modelo-634','https://fakeimg.pl/250x250/?text=Equipo+6',1,30,'2025-04-09 22:46:17',NULL),(9,'Equipo 7','Marca E','Modelo-965','https://fakeimg.pl/250x250/?text=Equipo+7',0,15,'2025-04-09 22:46:17',NULL),(10,'Equipo 8','Marca Q','Modelo-657','https://fakeimg.pl/250x250/?text=Equipo+8',0,2,'2025-04-09 22:46:17',NULL),(11,'Equipo 9','Marca C','Modelo-272','https://fakeimg.pl/250x250/?text=Equipo+9',0,19,'2025-04-09 22:46:17',NULL),(12,'Equipo 10','Marca V','Modelo-239','https://fakeimg.pl/250x250/?text=Equipo+10',1,1,'2025-04-09 22:46:17',NULL),(13,'Zancadora','Marca C','Modelo-970','https://fakeimg.pl/250x250/?text=Equipo+1',1,1,'2025-04-09 22:59:02',NULL),(14,'Elíptica','Marca J','Modelo-951','https://fakeimg.pl/250x250/?text=Equipo+2',1,63,'2025-04-09 22:59:02',NULL),(15,'Bicicleta Estática','Marca H','Modelo-372','https://fakeimg.pl/250x250/?text=Equipo+3',1,78,'2025-04-09 22:59:02',NULL),(16,'Press Militar','Marca L','Modelo-377','https://fakeimg.pl/250x250/?text=Equipo+4',1,57,'2025-04-09 22:59:02',NULL),(17,'Caminadora','Marca G','Modelo-759','https://fakeimg.pl/250x250/?text=Equipo+5',1,72,'2025-04-09 22:59:02',NULL),(18,'Remo','Marca T','Modelo-994','https://fakeimg.pl/250x250/?text=Equipo+6',1,69,'2025-04-09 22:59:02',NULL),(19,'Elíptica','Marca C','Modelo-798','https://fakeimg.pl/250x250/?text=Equipo+7',1,9,'2025-04-09 22:59:02',NULL),(20,'Máquina de Pecho','Marca L','Modelo-151','https://fakeimg.pl/250x250/?text=Equipo+8',0,85,'2025-04-09 22:59:02',NULL);
/*!40000 ALTER TABLE `tbb_equipamientos` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tbb_equipamientos_AFTER_INSERT` AFTER INSERT ON `tbb_equipamientos` FOR EACH ROW BEGIN
    INSERT INTO tbi_bitacora VALUES (
        DEFAULT,
        USER(),
        'Create',
        'tbb_equipamientos',
        CONCAT_WS(" ",
            'Se ha REGISTRADO un nuevo EQUIPO con ID:', NEW.Id, '\n',
            'Nombre:', NEW.Nombre, '\n',
            'Marca:', NEW.Marca, '\n',
            'Modelo:', NEW.Modelo, '\n',
            'Total Existencias:', NEW.Total_Existencias, '\n',
            'Estatus:', IF(NEW.Estatus = 1, 'Activo', 'Inactivo')
        ),
        DEFAULT,
        DEFAULT
    );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tbb_equipamientos_BEFORE_UPDATE` BEFORE UPDATE ON `tbb_equipamientos` FOR EACH ROW BEGIN
    INSERT INTO tbi_bitacora VALUES (
        DEFAULT,
        USER(),
        'Before-Update',
        'tbb_equipamientos',
        CONCAT_WS(" ",
            'INTENTO de ACTUALIZACIÓN del EQUIPO con ID:', OLD.Id, '\n',
            'De Nombre:', OLD.Nombre, ' a ', NEW.Nombre, '\n',
            'De Estatus:', IF(OLD.Estatus = 1, 'Activo', 'Inactivo'), ' a ', IF(NEW.Estatus = 1, 'Activo', 'Inactivo')
        ),
        DEFAULT,
        DEFAULT
    );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tbb_equipamientos_AFTER_UPDATE` AFTER UPDATE ON `tbb_equipamientos` FOR EACH ROW BEGIN
    INSERT INTO tbi_bitacora VALUES (
        DEFAULT,
        USER(),
        'Update',
        'tbb_equipamientos',
        CONCAT_WS(" ",
            'ACTUALIZACIÓN de EQUIPO con ID:', NEW.Id, '\n',
            'Antes -> Nombre:', OLD.Nombre, ', Marca:', OLD.Marca, ', Estatus:', IF(OLD.Estatus = 1, 'Activo', 'Inactivo'), '\n',
            'Después -> Nombre:', NEW.Nombre, ', Marca:', NEW.Marca, ', Estatus:', IF(NEW.Estatus = 1, 'Activo', 'Inactivo')
        ),
        DEFAULT,
        DEFAULT
    );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tbb_equipamientos_BEFORE_DELETE` BEFORE DELETE ON `tbb_equipamientos` FOR EACH ROW BEGIN
    INSERT INTO tbi_bitacora VALUES (
        DEFAULT,
        USER(),
        'Before-Delete',
        'tbb_equipamientos',
        CONCAT_WS(" ",
            'INTENTO de ELIMINACIÓN del EQUIPO con ID:', OLD.Id, '\n',
            'Nombre:', OLD.Nombre, ', Marca:', OLD.Marca, ', Modelo:', OLD.Modelo, '\n',
            'Total Existencias:', OLD.Total_Existencias
        ),
        DEFAULT,
        DEFAULT
    );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tbb_equipamientos_AFTER_DELETE` AFTER DELETE ON `tbb_equipamientos` FOR EACH ROW BEGIN
    INSERT INTO tbi_bitacora VALUES (
        DEFAULT,
        USER(),
        'Delete',
        'tbb_equipamientos',
        CONCAT_WS(" ",
            'Se ha ELIMINADO un EQUIPO con ID:', OLD.Id, '\n',
            'Nombre:', OLD.Nombre, ', Marca:', OLD.Marca, ', Modelo:', OLD.Modelo, '\n',
            'Total Existencias:', OLD.Total_Existencias, ', Estatus:', IF(OLD.Estatus = 1, 'Activo', 'Inactivo')
        ),
        DEFAULT,
        DEFAULT
    );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='La tabla Instalaciones almacenará la información relativa a las instalaciones dentro del gimnasio, describiendo las características de cada una, su tipo y cualquier observación adicional que sea relevante para su gestión.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_instalaciones`
--

LOCK TABLES `tbb_instalaciones` WRITE;
/*!40000 ALTER TABLE `tbb_instalaciones` DISABLE KEYS */;
INSERT INTO `tbb_instalaciones` VALUES (1,'Instalacion ','Maquinas','Ninguna',1,'2025-04-07 17:25:46','2025-04-07 23:26:28'),(2,'Cancha equipada con lo necesario.','Cancha','Sin observaciones.',1,'2025-04-09 23:07:03',NULL),(5,'Cancha equipada con yardas.','Cancha','Sin observaciones.',1,'2025-04-09 23:07:03','2025-04-10 19:35:07'),(7,'Baños de vapor','Baños','Separados por genero',1,'2025-04-10 13:32:38',NULL);
/*!40000 ALTER TABLE `tbb_instalaciones` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tbb_instalaciones_AFTER_INSERT` AFTER INSERT ON `tbb_instalaciones` FOR EACH ROW BEGIN
    DECLARE v_estatus VARCHAR(20) DEFAULT 'Activo';
    
    -- Validar si el estatus es NULL y asignar 'Inactivo' en su lugar
    IF NEW.Estatus IS NULL THEN
        SET v_estatus = 'Inactivo';
    ELSE
        SET v_estatus = NEW.Estatus;
    END IF;

    -- Insertar en la bitácora la información de la nueva instalación
    INSERT INTO tbi_bitacora VALUES (
        DEFAULT,
        USER(),
        'Create',
        'tbb_instalaciones',
        CONCAT_WS(" ",
            'Se ha registrado una nueva INSTALACIÓN con el ID:', NEW.Id, '\n',
            'Descripción:', NEW.Descripcion, '\n',
            'Tipo:', NEW.Tipo, '\n',
            'Observaciones:', NEW.Observaciones, '\n',
            'Estatus:', v_estatus
        ),
        DEFAULT,
        DEFAULT
    );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tbb_instalaciones_AFTER_UPDATE` AFTER UPDATE ON `tbb_instalaciones` FOR EACH ROW BEGIN
    DECLARE v_estatus VARCHAR(20) DEFAULT 'Activo';

    -- Validar si el estatus es NULL y asignar 'Inactivo' en su lugar
    IF NEW.Estatus IS NULL THEN
        SET v_estatus = 'Inactivo';
    ELSE
        SET v_estatus = NEW.Estatus;
    END IF;

    -- Insertar en la bitácora la información de la actualización de la instalación
    INSERT INTO tbi_bitacora VALUES (
        DEFAULT,
        USER(),
        'Update',
        'tbb_instalaciones',
        CONCAT_WS(" ",
            'Se ha actualizado una INSTALACIÓN con el ID:', NEW.Id, '\n',
            'Descripción (Anterior):', OLD.Descripcion, '\n',
            'Descripción (Nueva):', NEW.Descripcion, '\n',
            'Tipo (Anterior):', OLD.Tipo, '\n',
            'Tipo (Nuevo):', NEW.Tipo, '\n',
            'Estatus (Anterior):', OLD.Estatus, '\n',
            'Estatus (Nuevo):', v_estatus
        ),
        DEFAULT,
        DEFAULT
    );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tbb_instalaciones_AFTER_DELETE` AFTER DELETE ON `tbb_instalaciones` FOR EACH ROW BEGIN
    DECLARE v_estatus VARCHAR(20) DEFAULT 'Inactivo';

    -- Insertar en la bitácora la información de la eliminación de la instalación
    INSERT INTO tbi_bitacora VALUES(
		DEFAULT,
        USER(),
        'Delete',
        'tbb_instalaciones',
        CONCAT_WS(" ",
            'Se ha eliminado una INSTALACIÓN con el ID:', OLD.Id, '\n',
            'Descripción:', OLD.Descripcion, '\n',
            'Tipo:', OLD.Tipo, '\n',
            'Observaciones:', OLD.Observaciones, '\n',
            'Estatus:', v_estatus
        ),
        DEFAULT,
        DEFAULT
    );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='La tabla Mantenimiento almacenará la información relacionada con el mantenimiento realizado a los equipos dentro del gimnasio, incluyendo el identificador del equipo, la descripción del mantenimiento, el responsable de la tarea y el costo asociado.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_mantenimiento`
--

LOCK TABLES `tbb_mantenimiento` WRITE;
/*!40000 ALTER TABLE `tbb_mantenimiento` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbb_mantenimiento` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tbb_mantenimiento_AFTER_INSERT` AFTER INSERT ON `tbb_mantenimiento` FOR EACH ROW BEGIN
    DECLARE v_estatus VARCHAR(20);

    -- Validar si el estatus es NULL y asignar texto
    IF NEW.Estatus IS NULL OR NEW.Estatus = 0 THEN
        SET v_estatus = 'Inactivo';
    ELSE
        SET v_estatus = 'Activo';
    END IF;

    -- Insertar en la bitácora
    INSERT INTO tbi_bitacora
    VALUES (
        USER(),
        'Create',
        'tbb_mantenimiento',
        CONCAT_WS('\n',
            'Se ha registrado un nuevo MANTENIMIENTO:',
            CONCAT('ID: ', NEW.Id),
            CONCAT('Id Equipamiento: ', NEW.Id_equipamiento),
            CONCAT('Descripción: ', NEW.Descripcion),
            CONCAT('Responsable: ', NEW.Responsable),
            CONCAT('Costo: ', NEW.Costo),
            CONCAT('Estatus: ', v_estatus)
        ),
        NOW(),
        NULL,
        NULL
    );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tbb_mantenimiento_AFTER_UPDATE` AFTER UPDATE ON `tbb_mantenimiento` FOR EACH ROW BEGIN
    DECLARE v_estatus VARCHAR(20) DEFAULT 'Activo';

    -- Validar si el estatus es NULL y asignar 'Inactivo' en su lugar
    IF NEW.Estatus IS NULL THEN
        SET v_estatus = 'Inactivo';
    ELSE
        SET v_estatus = NEW.Estatus;
    END IF;

    -- Insertar en la bitácora la información de la actualización del mantenimiento
    INSERT INTO tbi_bitacora (usuario, accion, tabla, descripcion, fecha_creacion, fecha_modificacion)
    VALUES (
        USER(),
        'Update',
        'tbb_mantenimiento',
        CONCAT_WS(" ",
            'Se ha actualizado un MANTENIMIENTO con el ID:', NEW.Id, '\n',
            'Id Equipamiento (Anterior):', OLD.Id_equipamiento, '\n',
            'Id Equipamiento (Nuevo):', NEW.Id_equipamiento, '\n',
            'Descripción (Anterior):', OLD.Descripcion, '\n',
            'Descripción (Nueva):', NEW.Descripcion, '\n',
            'Responsable (Anterior):', OLD.Responsable, '\n',
            'Responsable (Nuevo):', NEW.Responsable, '\n',
            'Costo (Anterior):', OLD.Costo, '\n',
            'Costo (Nuevo):', NEW.Costo, '\n',
            'Estatus (Anterior):', OLD.Estatus, '\n',
            'Estatus (Nuevo):', v_estatus
        ),
        DEFAULT,
        DEFAULT
    );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tbb_mantenimiento_AFTER_DELETE` AFTER DELETE ON `tbb_mantenimiento` FOR EACH ROW BEGIN
    DECLARE v_estatus VARCHAR(20) DEFAULT 'Inactivo';

    -- Insertar en la bitácora la información de la eliminación de mantenimiento
    INSERT INTO tbi_bitacora (usuario, accion, tabla, descripcion, fecha_creacion, fecha_modificacion)
    VALUES (
        USER(),
        'Delete',
        'tbb_mantenimiento',
        CONCAT_WS(" ",
            'Se ha eliminado un MANTENIMIENTO con el ID:', OLD.Id, '\n',
            'Id Equipamiento:', OLD.Id_equipamiento, '\n',
            'Descripción:', OLD.Descripcion, '\n',
            'Responsable:', OLD.Responsable, '\n',
            'Costo:', OLD.Costo, '\n',
            'Estatus:', v_estatus
        ),
        DEFAULT,
        DEFAULT
    );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `tbb_productos`
--

DROP TABLE IF EXISTS `tbb_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_productos` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `marca` varchar(100) NOT NULL,
  `cantidad` int DEFAULT NULL,
  `cod_barras` varchar(50) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `presentacion` varchar(100) DEFAULT NULL,
  `precio_actual` decimal(6,2) NOT NULL,
  `fotografia` varchar(100) DEFAULT NULL,
  `estatus` tinyint(1) DEFAULT NULL,
  `fecha_registro` datetime NOT NULL,
  `fecha_actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `cod_barras` (`cod_barras`),
  KEY `ix_tbb_productos_ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_productos`
--

LOCK TABLES `tbb_productos` WRITE;
/*!40000 ALTER TABLE `tbb_productos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbb_productos` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='La tabla Usuarios almacenará información sobre los usuarios registrados en el sistema, incluyendo su nombre de usuario, correo electrónico, contraseña, número de teléfono móvil y estatus actual.\n\n';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_usuarios`
--

LOCK TABLES `tbb_usuarios` WRITE;
/*!40000 ALTER TABLE `tbb_usuarios` DISABLE KEYS */;
INSERT INTO `tbb_usuarios` VALUES (27,'ivan_389','sergio9761@mail.com','5f3618f209efb866d16d8d48d8a7a5f76902aadf924e250a1c5c91eced7bbe5b','5509386506','Bloqueado','2025-04-10 13:22:18','2025-04-10 13:22:18'),(28,'luis_524','patricia5924@mail.com','7a89b20aa83d8222f72bddab92db9dbce1f97f158ce08b29021cbb104e126beb','5509789268','Activo','2025-04-10 13:22:18','2025-04-10 13:22:18'),(29,'alejandra_616','alejandra8518@hotmail.com','378072bb825bd29b856441201068ac05d44bc23e88e684609cd1d3570278e4fb','5506929638','Bloqueado','2025-04-10 13:22:18','2025-04-10 13:22:18'),(30,'hector_950','diego3579@hotmail.com','95bd76aca46e36b148e8775af92cd607066eaa251e0c184ce2849de020c05f73','5505024791','Suspendido','2025-04-10 13:22:18','2025-04-10 13:22:18'),(31,'ricardo_726','manuel5337@gmail.com','cf10b8d1a59605fa827b7d8dd85f14f7f4580b15bcfa169e30f5c0fda8b65aa2','5502396925','Activo','2025-04-10 13:22:18','2025-04-10 13:22:18'),(32,'melissa_468','carlos448@gmail.com','81f673d82bc4f93c884d9750a66c6da226786c2e8f218bbcdbdcc6c0fe786a5b','5500015168','Suspendido','2025-04-10 13:22:18','2025-04-10 13:22:18'),(33,'daniela_348','carmen8089@yahoo.com','9c16b1556a9f6b864315f971b41b8b4f74c0c73b4cc8ce7b761b2fdd71558e56','5505848312','Inactivo','2025-04-10 13:22:18','2025-04-10 13:22:18'),(34,'renata_204','ramon5726@gmail.com','4a86c020b2a80b5f0d077ef50d7d80cd9b47b556c5aa8f999f2205509cdd2bc9','5501175081','Inactivo','2025-04-10 13:22:18','2025-04-10 13:22:18'),(35,'ana_536','roberto7694@outlook.com','b1d84160f80a91c21af3ca137bd0c25c0913cb426d07319fd0eb31953cbd8e06','5506010506','Activo','2025-04-10 13:22:18','2025-04-10 13:22:18'),(36,'hector_297','juan5619@gmail.com','5d5634e802016ad735dad66af3042a5bb12d6b317c4002a29d2d1fa43ec1d50b','5506683772','Suspendido','2025-04-10 13:22:18','2025-04-10 13:22:18'),(37,'manuel_418','raul4566@hotmail.com','0e7343dd157ad9f42a32e4cf6c76737f3bb49cfdab0d231b1f3e27887603ed63','5501468807','Activo','2025-04-10 13:22:18','2025-04-10 13:22:18'),(38,'adrian_731','miguel5736@mail.com','75b1ab2302d95559056fba7ea0bd93563ddb5750c395acc5de53ee1d91235d55','5503565830','Activo','2025-04-10 13:22:18','2025-04-10 13:22:18'),(39,'miguel_651','andrea4721@gmail.com','c12f467a888d91026faec229a80d63a12e1ef34a170578a951cc32b4f226ad00','5501913942','Activo','2025-04-10 13:22:18','2025-04-10 13:22:18'),(40,'karla_356','daniela3907@gmail.com','ab4178a9763704b4170ac4cdf619e0d5bad2ce524aab5c54257c00d34176599b','5508003762','Bloqueado','2025-04-10 13:22:18','2025-04-10 13:22:18'),(41,'adrian_598','esteban2822@mail.com','bb320f866173e8b6c768fe55dc7c4e549484ae9ce13e6fac1a0b038de2059aa3','5500736295','Inactivo','2025-04-10 13:22:18','2025-04-10 13:22:18'),(42,'ivan_45','manuel6909@gmail.com','5aeb134ec8b3556db81dbbb7acc355f7fee42bd206653ad195bdb7f049f6c7b6','5502447356','Activo','2025-04-10 13:22:18','2025-04-10 13:22:18'),(43,'andrea_58','gloria607@mail.com','3bae25351283dd007119b90d9fd31025c9403408c55dfbf6144cd292668b2d7d','5501797035','Inactivo','2025-04-10 13:22:18','2025-04-10 13:22:18'),(44,'carmen_495','carmen7889@mail.com','963bde327008a3afd14c4e2c1b824b3bfc2d42c4e5b513cb07b4d08b6af75f86','5501275638','Bloqueado','2025-04-10 13:22:18','2025-04-10 13:22:18'),(45,'ricardo_390','gloria7851@outlook.com','5ee2b014f45afbf30aaac8bf2f523f459bd6d8b3c87396c82fb5874271be271a','5500656534','Inactivo','2025-04-10 13:22:18','2025-04-10 13:22:18'),(46,'marcela_76','ivan3717@mail.com','7c17affa056589cf8e0434c03ce7ec9b44da0f26dc2d1a1ccf88428ebefe143a','5504855294','Bloqueado','2025-04-10 13:22:18','2025-04-10 13:22:18'),(47,'carmen_394','ricardo4559@hotmail.com','7a04c13238326696b0c76af1b30de14b0c61911307a4e6cfb06bbc77c5b5ccd0','5506464746','Suspendido','2025-04-10 13:22:18','2025-04-10 13:22:18'),(48,'raul_425','elena5854@outlook.com','a36cd268175388a4363380f7c699d22b23f4680fb14da1b1f2948bb70ea6d1ee','5508176187','Inactivo','2025-04-10 13:22:18','2025-04-10 13:22:18'),(49,'alejandra_299','adrian8598@hotmail.com','eee4b540e4859a214896b9b5bc4a7caed2b0a28b97cfc106114975369c1e3df3','5500581892','Bloqueado','2025-04-10 13:22:18','2025-04-10 13:22:18'),(50,'javier_710','roberto2710@gmail.com','aec1bdffc2596a2f1846dc1dbafab6b675e05df0bcc2dfb098a3369c0833101d','5500877543','Inactivo','2025-04-10 13:22:18','2025-04-10 13:22:18'),(51,'paula_645','camila2690@outlook.com','44724d72c1d0e847cfc26ac3c6446a2f5cc6cf181c44a575b979898dab9a125c','5502227720','Activo','2025-04-10 13:22:18','2025-04-10 13:22:18'),(52,'arturo_768','sergio4602@outlook.com','4ba0478dc5e99aa1a00f25b08f63237a1ba3124e459f5faf50512ca5e3a6c0ba','5500675049','Activo','2025-04-10 13:22:18','2025-04-10 13:22:18'),(53,'sofia_497','ana9972@mail.com','d7b02e5377535bd3d44d17948b36ef4be9b49b060807177b53b5e19d2e4bb957','5503493427','Inactivo','2025-04-10 13:22:18','2025-04-10 13:22:18'),(54,'brenda_284','andrea3297@yahoo.com','330483d5f3873bb5d6133d7348c260465bad574e9d9c96c9ec9b858c3813c5a0','5503391611','Bloqueado','2025-04-10 13:22:18','2025-04-10 13:22:18'),(55,'patricia_284','gloria6287@gmail.com','ca5c7ca27a6a2dfdf0f57e232c5335540791ab5012d26d7e125ae1d4896f696c','5509867824','Bloqueado','2025-04-10 13:22:18','2025-04-10 13:22:18'),(56,'carlos_620','renata9655@yahoo.com','59f1670ebd26dc550d2166a793dfbee6d95d6341eb9768cdb228044e3ccc1b2c','5508728249','Bloqueado','2025-04-10 13:22:18','2025-04-10 13:22:18'),(57,'julio_960','jose2845@outlook.com','202cd6f3acff0790c1f025e4e38ec314682915dfa38ef814f55287b3fa3be621','5503039713','Suspendido','2025-04-10 13:22:18','2025-04-10 13:22:18'),(58,'fernando_597','valeria5879@mail.com','58367ca68c6dc20ffa68ce0cde620c71d7b24262de6e857aba81c410d4e0bb00','5500821157','Suspendido','2025-04-10 13:22:18','2025-04-10 13:22:18'),(59,'alejandra_635','javier6054@mail.com','6b6e56dab6da6b0486778431a6d05041bf10c9211d4d91b987608cfaa19a70fc','5501764998','Inactivo','2025-04-10 13:22:18','2025-04-10 13:22:18'),(60,'rocio_660','elena512@mail.com','6e4e6e17f9e402b097330c43542cb7a6ab6d33713115ffb6fc3ed5116ba54930','5506744141','Inactivo','2025-04-10 13:22:18','2025-04-10 13:22:18'),(61,'valeria_937','daniela7654@yahoo.com','a76fddb8f236c0a8373fc717ce3197b0a081350eec65410d20ad22f852593eff','5508888250','Suspendido','2025-04-10 13:22:18','2025-04-10 13:22:18'),(62,'gloria_193','enrique4902@yahoo.com','5d8df8fe5179ec2c935e54c2e68c432de46cb528bae26ba6b4b12aec3dd359f4','5505631992','Suspendido','2025-04-10 13:22:18','2025-04-10 13:22:18'),(63,'pedro_454','sergio1410@outlook.com','83d13f1b4b17605e11ed477a991abc9cb179874c1a2fed68befb5c988660f709','5500151915','Activo','2025-04-10 13:22:18','2025-04-10 13:22:18'),(64,'juan_58','paula3043@gmail.com','a514a6b0141a4346498080daa70d256a37a38ed56580c1e185b9f871fba50259','5506606835','Suspendido','2025-04-10 13:22:18','2025-04-10 13:22:18'),(65,'arturo_790','lucia4035@gmail.com','22f4ad082b6ab74f9f00626889e4580e85fd7a5894a990851f84e72081cd9985','5500598423','Suspendido','2025-04-10 13:22:18','2025-04-10 13:22:18'),(66,'lucia_715','ana6596@gmail.com','af4510ee077f4a9b6dd9a8ab5c3f643fa07b83af85d05ff192a8499731982ae8','5509618558','Inactivo','2025-04-10 13:22:18','2025-04-10 13:22:18'),(67,'ricardo_356','oscar5175@outlook.com','e3133c07d0ea5d904e8b0bce722e6280663f2088433e8a0f568e94f8efb1813d','5509366111','Suspendido','2025-04-10 13:22:18','2025-04-10 13:22:18'),(68,'jose_319','marcela2933@mail.com','860adfd0a5a68f4a143c441b92ef513ac27226baebfe20d9d2cc72b093e00cdd','5509012371','Suspendido','2025-04-10 13:22:18','2025-04-10 13:22:18'),(69,'hector_902','ana9017@outlook.com','d6ce668b5c239196b11cdb100500c726862044653150fdc3d65d091e505148e8','5505422798','Suspendido','2025-04-10 13:22:18','2025-04-10 13:22:18'),(70,'marcela_648','brenda2067@hotmail.com','f1e831233ab7304b31420f6b16b7c23942324dfe2cb55d296efa3c8dd5045c3b','5508209053','Activo','2025-04-10 13:22:18','2025-04-10 13:22:18'),(71,'gerardo_563','miguel9094@yahoo.com','77b3b61b6ade0e54d3a1da16b2e8102e738466ccb42bbfc6a0945f61d1f9a233','5508146020','Bloqueado','2025-04-10 13:22:18','2025-04-10 13:22:18'),(72,'pedro_818','fernando4810@outlook.com','f4c2a6e03d0cb2c015ca159230021c2af8a792bdfa81852f9ad117b46158382c','5501938576','Inactivo','2025-04-10 13:22:18','2025-04-10 13:22:18'),(73,'valeria_607','enrique3650@gmail.com','42bf2413312f41c04df31866772581e1eb3a99900ab79a40b5df4e9e17a45256','5501502091','Suspendido','2025-04-10 13:22:18','2025-04-10 13:22:18'),(74,'alberto_430','roberto3546@mail.com','a613eb67dfb930ece569220e1c2190aa13ada951898546486feb82df7506d979','5507258751','Suspendido','2025-04-10 13:22:18','2025-04-10 13:22:18'),(75,'miguel_733','carmen1154@gmail.com','55b76c67793496008f6a46edd096a9a09a41f188a0b265c805e5dd5c43f83b6a','5503700220','Inactivo','2025-04-10 13:22:18','2025-04-10 13:22:18'),(76,'gloria_695','lucia6769@hotmail.com','5187fe8d278a832ffc0f04dd49281d695447680f862df646376736ff697c857a','5503149484','Inactivo','2025-04-10 13:22:18','2025-04-10 13:22:18'),(77,'Marco Ramirez','marco@gmail.com','$2b$12$h8bm0jwzXE0xOkdZAvMT7ecqqNHuPpi/CYOkOGTAuP8K9G8T.mXjG','7641081079','Activo','2025-04-10 19:24:34','2025-04-10 19:24:34');
/*!40000 ALTER TABLE `tbb_usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tbb_usuarios_AFTER_INSERT` AFTER INSERT ON `tbb_usuarios` FOR EACH ROW BEGIN
    DECLARE v_estatus VARCHAR(20) DEFAULT 'Activo';

    -- Validar si el estatus es NULL y asignar 'Inactivo' en su lugar
    IF NEW.Estatus IS NULL THEN
        SET v_estatus = 'Inactivo';
    ELSE
        SET v_estatus = NEW.Estatus;
    END IF;

    -- Insertar en la bitácora la información del nuevo usuario
    INSERT INTO tbi_bitacora VALUES (
        DEFAULT,
        USER(),
        'Create',
        'tbb_usuarios',
        CONCAT_WS(" ",
            'Se ha registrado un nuevo USUARIO con el ID:', NEW.ID, '\n',
            'Nombre de Usuario:', NEW.Nombre_Usuario, '\n',
            'Correo Electrónico:', NEW.Correo_Electronico, '\n',
            'Número Telefónico:', NEW.Numero_Telefonico_Movil, '\n',
            'Estatus:', v_estatus
        ),
        DEFAULT,
        DEFAULT
    );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tbb_usuarios_BEFORE_UPDATE` BEFORE UPDATE ON `tbb_usuarios` FOR EACH ROW BEGIN
    DECLARE v_estatus_anterior VARCHAR(20);
    DECLARE v_estatus_nuevo VARCHAR(20);

    SET v_estatus_anterior = IFNULL(OLD.Estatus, 'Inactivo');
    SET v_estatus_nuevo = IFNULL(NEW.Estatus, 'Inactivo');

    -- Insertar en la bitácora un registro del intento de actualización
    INSERT INTO tbi_bitacora VALUES (
        DEFAULT,
        USER(),
        'Before-Update',
        'tbb_usuarios',
        CONCAT_WS(" ",
            'INTENTO de ACTUALIZACIÓN del USUARIO con ID:', OLD.ID, '\n',
            'Antes -> Nombre:', OLD.Nombre_Usuario, ', Correo:', OLD.Correo_Electronico, ', Estatus:', v_estatus_anterior, '\n',
            'Después -> Nombre:', NEW.Nombre_Usuario, ', Correo:', NEW.Correo_Electronico, ', Estatus:', v_estatus_nuevo
        ),
        DEFAULT,
        DEFAULT
    );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tbb_usuarios_AFTER_UPDATE` AFTER UPDATE ON `tbb_usuarios` FOR EACH ROW BEGIN
    DECLARE v_estatus_anterior VARCHAR(20);
    DECLARE v_estatus_nuevo VARCHAR(20);

    -- Manejo de valores NULL para el estatus
    SET v_estatus_anterior = IFNULL(OLD.Estatus, 'Inactivo');
    SET v_estatus_nuevo = IFNULL(NEW.Estatus, 'Inactivo');

    -- Insertar en la bitácora la información del cambio
    INSERT INTO tbi_bitacora VALUES (
        DEFAULT,
        USER(),
        'Update',
        'tbb_usuarios',
        CONCAT_WS(" ",
            'Se ha actualizado el USUARIO con el ID:', NEW.ID, '\n',
            'Antes -> Nombre de Usuario:', OLD.Nombre_Usuario, ', Correo:', OLD.Correo_Electronico, ', Teléfono:', OLD.Numero_Telefonico_Movil, ', Estatus:', v_estatus_anterior, '\n',
            'Después -> Nombre de Usuario:', NEW.Nombre_Usuario, ', Correo:', NEW.Correo_Electronico, ', Teléfono:', NEW.Numero_Telefonico_Movil, ', Estatus:', v_estatus_nuevo
        ),
        DEFAULT,
        DEFAULT
    );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tbb_usuarios_BEFORE_DELETE` BEFORE DELETE ON `tbb_usuarios` FOR EACH ROW BEGIN
    DECLARE v_estatus VARCHAR(20);

    SET v_estatus = IFNULL(OLD.Estatus, 'Inactivo');

    -- Insertar en la bitácora un registro del intento de eliminación
    INSERT INTO tbi_bitacora VALUES (
        DEFAULT,
        USER(),
        'Before-Delete',
        'tbb_usuarios',
        CONCAT_WS(" ",
            'INTENTO de ELIMINACIÓN del USUARIO con ID:', OLD.ID, '\n',
            'Nombre de Usuario:', OLD.Nombre_Usuario, '\n',
            'Correo Electrónico:', OLD.Correo_Electronico, '\n',
            'Teléfono:', OLD.Numero_Telefonico_Movil, '\n',
            'Estatus:', v_estatus
        ),
        DEFAULT,
        DEFAULT
    );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tbb_usuarios_AFTER_DELETE` AFTER DELETE ON `tbb_usuarios` FOR EACH ROW BEGIN
    DECLARE v_estatus VARCHAR(20);

    SET v_estatus = IFNULL(OLD.Estatus, 'Inactivo');

    -- Insertar en la bitácora la información del usuario eliminado
    INSERT INTO tbi_bitacora VALUES (
        DEFAULT,
        USER(),
        'Delete',
        'tbb_usuarios',
        CONCAT_WS(" ",
            'Se ha ELIMINADO el USUARIO con el ID:', OLD.ID, '\n',
            'Nombre de Usuario:', OLD.Nombre_Usuario, '\n',
            'Correo Electrónico:', OLD.Correo_Electronico, '\n',
            'Número Telefónico:', OLD.Numero_Telefonico_Movil, '\n',
            'Estatus:', v_estatus
        ),
        DEFAULT,
        DEFAULT
    );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

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
-- Dumping data for table `tbc_sucursales`
--

LOCK TABLES `tbc_sucursales` WRITE;
/*!40000 ALTER TABLE `tbc_sucursales` DISABLE KEYS */;
INSERT INTO `tbc_sucursales` VALUES (1,'Sucursal 1','Calle Falsa #893',10,853,66,166,15,'Lunes a Viernes de 6:00 a 22:00 hrs',0,'2025-04-09 22:30:43',NULL),(2,'Sucursal 2','Calle Falsa #886',6,9575,31,92,25,'Lunes a Viernes de 6:00 a 22:00 hrs',0,'2025-04-09 22:30:43',NULL),(3,'Sucursal 3','Calle Falsa #731',5,2542,90,99,47,'Lunes a Viernes de 6:00 a 22:00 hrs',0,'2025-04-09 22:30:43',NULL),(4,'Sucursal 4','Calle Falsa #766',5,9854,65,215,28,'Lunes a Viernes de 6:00 a 22:00 hrs',1,'2025-04-09 22:30:43',NULL),(5,'Sucursal 5','Calle Falsa #836',7,7095,71,239,50,'Lunes a Viernes de 6:00 a 22:00 hrs',1,'2025-04-09 22:30:43',NULL),(6,'Sucursal 6','Calle Falsa #594',10,1865,104,87,9,'Lunes a Viernes de 6:00 a 22:00 hrs',1,'2025-04-09 22:30:43',NULL),(7,'Sucursal 7','Calle Falsa #333',9,4483,67,152,47,'Lunes a Viernes de 6:00 a 22:00 hrs',1,'2025-04-09 22:30:43',NULL),(8,'Sucursal 8','Calle Falsa #153',6,2023,51,141,7,'Lunes a Viernes de 6:00 a 22:00 hrs',1,'2025-04-09 22:30:43',NULL),(9,'Sucursal 9','Calle Falsa #319',10,5848,29,96,33,'Lunes a Viernes de 6:00 a 22:00 hrs',0,'2025-04-09 22:30:43',NULL),(10,'Sucursal 10','Calle Falsa #89',10,5544,97,195,5,'Lunes a Viernes de 6:00 a 22:00 hrs',1,'2025-04-09 22:30:43',NULL);
/*!40000 ALTER TABLE `tbc_sucursales` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tbc_sucursales_AFTER_INSERT` AFTER INSERT ON `tbc_sucursales` FOR EACH ROW BEGIN
    INSERT INTO tbi_bitacora VALUES (
        DEFAULT,
        USER(),
        'Create',
        'tbc_sucursales',
        CONCAT_WS(" ",
            'Se ha REGISTRADO una nueva SUCURSAL con ID:', NEW.Id, '\n',
            'Nombre:', NEW.Nombre, '\n',
            'Dirección:', NEW.Direccion, '\n',
            'Responsable ID:', NEW.Responsable_Id, '\n',
            'Total Clientes Atendidos:', NEW.Total_Clientes_Atendidos, '\n',
            'Promedio Clientes x Día:', NEW.Promedio_Clientes_X_Dia, '\n',
            'Capacidad Máxima:', NEW.Capacidad_Maxima, '\n',
            'Total Empleados:', NEW.Total_Empleados, '\n',
            'Horario Disponibilidad:', NEW.Horario_Disponibilidad, '\n',
            'Estatus:', IF(NEW.Estatus = 1, 'Activo', 'Inactivo')
        ),
        DEFAULT,
        DEFAULT
    );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tbc_sucursales_AFTER_UPDATE` AFTER UPDATE ON `tbc_sucursales` FOR EACH ROW BEGIN
    INSERT INTO tbi_bitacora VALUES (
        DEFAULT,
        USER(),
        'Update',
        'tbc_sucursales',
        CONCAT_WS(" ",
            'Se ha MODIFICADO la SUCURSAL con ID:', NEW.Id, '\n',
            'Nombre:', NEW.Nombre, '\n',
            'Dirección:', NEW.Direccion, '\n',
            'Responsable ID:', NEW.Responsable_Id, '\n',
            'Total Clientes Atendidos:', NEW.Total_Clientes_Atendidos, '\n',
            'Promedio Clientes x Día:', NEW.Promedio_Clientes_X_Dia, '\n',
            'Capacidad Máxima:', NEW.Capacidad_Maxima, '\n',
            'Total Empleados:', NEW.Total_Empleados, '\n',
            'Horario Disponibilidad:', NEW.Horario_Disponibilidad, '\n',
            'Estatus:', IF(NEW.Estatus = 1, 'Activo', 'Inactivo')
        ),
        DEFAULT,
        DEFAULT
    );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tbc_sucursales_AFTER_DELETE` AFTER DELETE ON `tbc_sucursales` FOR EACH ROW BEGIN
    INSERT INTO tbi_bitacora VALUES (
        DEFAULT,
        USER(),
        'Delete',
        'tbc_sucursales',
        CONCAT_WS(" ",
            'Se ha ELIMINADO la SUCURSAL con ID:', OLD.Id, '\n',
            'Nombre:', OLD.Nombre, '\n',
            'Dirección:', OLD.Direccion, '\n',
            'Responsable ID:', OLD.Responsable_Id, '\n',
            'Total Clientes Atendidos:', OLD.Total_Clientes_Atendidos, '\n',
            'Promedio Clientes x Día:', OLD.Promedio_Clientes_X_Dia, '\n',
            'Capacidad Máxima:', OLD.Capacidad_Maxima, '\n',
            'Total Empleados:', OLD.Total_Empleados, '\n',
            'Horario Disponibilidad:', OLD.Horario_Disponibilidad, '\n',
            'Estatus:', IF(OLD.Estatus = 1, 'Activo', 'Inactivo')
        ),
        DEFAULT,
        DEFAULT
    );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

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
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbi_bitacora`
--

LOCK TABLES `tbi_bitacora` WRITE;
/*!40000 ALTER TABLE `tbi_bitacora` DISABLE KEYS */;
INSERT INTO `tbi_bitacora` VALUES (1,'root@localhost','Create','tbb_usuarios','Se ha registrado un nuevo USUARIO con el ID: 26 \n Nombre de Usuario: Espe12 \n Correo Electrónico: espe@gmail.com \n Número Telefónico: 7641081079 \n Estatus: Activo','2025-04-09 11:54:07','2025-04-09 11:54:07'),(2,'root@localhost','Create','tbc_sucursales','Se ha REGISTRADO una nueva SUCURSAL con ID: 1 \n Nombre: Sucursal 1 \n Dirección: Calle Falsa #893 \n Responsable ID: 10 \n Total Clientes Atendidos: 853 \n Promedio Clientes x Día: 66 \n Capacidad Máxima: 166 \n Total Empleados: 15 \n Horario Disponibilidad: Lunes a Viernes de 6:00 a 22:00 hrs \n Estatus: Inactivo','2025-04-09 22:30:43','2025-04-09 22:30:43'),(3,'root@localhost','Create','tbc_sucursales','Se ha REGISTRADO una nueva SUCURSAL con ID: 2 \n Nombre: Sucursal 2 \n Dirección: Calle Falsa #886 \n Responsable ID: 6 \n Total Clientes Atendidos: 9575 \n Promedio Clientes x Día: 31 \n Capacidad Máxima: 92 \n Total Empleados: 25 \n Horario Disponibilidad: Lunes a Viernes de 6:00 a 22:00 hrs \n Estatus: Inactivo','2025-04-09 22:30:43','2025-04-09 22:30:43'),(4,'root@localhost','Create','tbc_sucursales','Se ha REGISTRADO una nueva SUCURSAL con ID: 3 \n Nombre: Sucursal 3 \n Dirección: Calle Falsa #731 \n Responsable ID: 5 \n Total Clientes Atendidos: 2542 \n Promedio Clientes x Día: 90 \n Capacidad Máxima: 99 \n Total Empleados: 47 \n Horario Disponibilidad: Lunes a Viernes de 6:00 a 22:00 hrs \n Estatus: Inactivo','2025-04-09 22:30:43','2025-04-09 22:30:43'),(5,'root@localhost','Create','tbc_sucursales','Se ha REGISTRADO una nueva SUCURSAL con ID: 4 \n Nombre: Sucursal 4 \n Dirección: Calle Falsa #766 \n Responsable ID: 5 \n Total Clientes Atendidos: 9854 \n Promedio Clientes x Día: 65 \n Capacidad Máxima: 215 \n Total Empleados: 28 \n Horario Disponibilidad: Lunes a Viernes de 6:00 a 22:00 hrs \n Estatus: Activo','2025-04-09 22:30:43','2025-04-09 22:30:43'),(6,'root@localhost','Create','tbc_sucursales','Se ha REGISTRADO una nueva SUCURSAL con ID: 5 \n Nombre: Sucursal 5 \n Dirección: Calle Falsa #836 \n Responsable ID: 7 \n Total Clientes Atendidos: 7095 \n Promedio Clientes x Día: 71 \n Capacidad Máxima: 239 \n Total Empleados: 50 \n Horario Disponibilidad: Lunes a Viernes de 6:00 a 22:00 hrs \n Estatus: Activo','2025-04-09 22:30:43','2025-04-09 22:30:43'),(7,'root@localhost','Create','tbc_sucursales','Se ha REGISTRADO una nueva SUCURSAL con ID: 6 \n Nombre: Sucursal 6 \n Dirección: Calle Falsa #594 \n Responsable ID: 10 \n Total Clientes Atendidos: 1865 \n Promedio Clientes x Día: 104 \n Capacidad Máxima: 87 \n Total Empleados: 9 \n Horario Disponibilidad: Lunes a Viernes de 6:00 a 22:00 hrs \n Estatus: Activo','2025-04-09 22:30:43','2025-04-09 22:30:43'),(8,'root@localhost','Create','tbc_sucursales','Se ha REGISTRADO una nueva SUCURSAL con ID: 7 \n Nombre: Sucursal 7 \n Dirección: Calle Falsa #333 \n Responsable ID: 9 \n Total Clientes Atendidos: 4483 \n Promedio Clientes x Día: 67 \n Capacidad Máxima: 152 \n Total Empleados: 47 \n Horario Disponibilidad: Lunes a Viernes de 6:00 a 22:00 hrs \n Estatus: Activo','2025-04-09 22:30:43','2025-04-09 22:30:43'),(9,'root@localhost','Create','tbc_sucursales','Se ha REGISTRADO una nueva SUCURSAL con ID: 8 \n Nombre: Sucursal 8 \n Dirección: Calle Falsa #153 \n Responsable ID: 6 \n Total Clientes Atendidos: 2023 \n Promedio Clientes x Día: 51 \n Capacidad Máxima: 141 \n Total Empleados: 7 \n Horario Disponibilidad: Lunes a Viernes de 6:00 a 22:00 hrs \n Estatus: Activo','2025-04-09 22:30:43','2025-04-09 22:30:43'),(10,'root@localhost','Create','tbc_sucursales','Se ha REGISTRADO una nueva SUCURSAL con ID: 9 \n Nombre: Sucursal 9 \n Dirección: Calle Falsa #319 \n Responsable ID: 10 \n Total Clientes Atendidos: 5848 \n Promedio Clientes x Día: 29 \n Capacidad Máxima: 96 \n Total Empleados: 33 \n Horario Disponibilidad: Lunes a Viernes de 6:00 a 22:00 hrs \n Estatus: Inactivo','2025-04-09 22:30:43','2025-04-09 22:30:43'),(11,'root@localhost','Create','tbc_sucursales','Se ha REGISTRADO una nueva SUCURSAL con ID: 10 \n Nombre: Sucursal 10 \n Dirección: Calle Falsa #89 \n Responsable ID: 10 \n Total Clientes Atendidos: 5544 \n Promedio Clientes x Día: 97 \n Capacidad Máxima: 195 \n Total Empleados: 5 \n Horario Disponibilidad: Lunes a Viernes de 6:00 a 22:00 hrs \n Estatus: Activo','2025-04-09 22:30:43','2025-04-09 22:30:43'),(12,'root@localhost','Create','tbb_equipamientos','Se ha REGISTRADO un nuevo EQUIPO con ID: 3 \n Nombre: Equipo 1 \n Marca: Marca F \n Modelo: Modelo-58 \n Total Existencias: 4 \n Estatus: Activo','2025-04-09 22:46:17','2025-04-09 22:46:17'),(13,'root@localhost','Create','tbb_equipamientos','Se ha REGISTRADO un nuevo EQUIPO con ID: 4 \n Nombre: Equipo 2 \n Marca: Marca P \n Modelo: Modelo-710 \n Total Existencias: 14 \n Estatus: Activo','2025-04-09 22:46:17','2025-04-09 22:46:17'),(14,'root@localhost','Create','tbb_equipamientos','Se ha REGISTRADO un nuevo EQUIPO con ID: 5 \n Nombre: Equipo 3 \n Marca: Marca B \n Modelo: Modelo-983 \n Total Existencias: 22 \n Estatus: Activo','2025-04-09 22:46:17','2025-04-09 22:46:17'),(15,'root@localhost','Create','tbb_equipamientos','Se ha REGISTRADO un nuevo EQUIPO con ID: 6 \n Nombre: Equipo 4 \n Marca: Marca K \n Modelo: Modelo-880 \n Total Existencias: 7 \n Estatus: Inactivo','2025-04-09 22:46:17','2025-04-09 22:46:17'),(16,'root@localhost','Create','tbb_equipamientos','Se ha REGISTRADO un nuevo EQUIPO con ID: 7 \n Nombre: Equipo 5 \n Marca: Marca P \n Modelo: Modelo-352 \n Total Existencias: 21 \n Estatus: Activo','2025-04-09 22:46:17','2025-04-09 22:46:17'),(17,'root@localhost','Create','tbb_equipamientos','Se ha REGISTRADO un nuevo EQUIPO con ID: 8 \n Nombre: Equipo 6 \n Marca: Marca N \n Modelo: Modelo-634 \n Total Existencias: 30 \n Estatus: Activo','2025-04-09 22:46:17','2025-04-09 22:46:17'),(18,'root@localhost','Create','tbb_equipamientos','Se ha REGISTRADO un nuevo EQUIPO con ID: 9 \n Nombre: Equipo 7 \n Marca: Marca E \n Modelo: Modelo-965 \n Total Existencias: 15 \n Estatus: Inactivo','2025-04-09 22:46:17','2025-04-09 22:46:17'),(19,'root@localhost','Create','tbb_equipamientos','Se ha REGISTRADO un nuevo EQUIPO con ID: 10 \n Nombre: Equipo 8 \n Marca: Marca Q \n Modelo: Modelo-657 \n Total Existencias: 2 \n Estatus: Inactivo','2025-04-09 22:46:17','2025-04-09 22:46:17'),(20,'root@localhost','Create','tbb_equipamientos','Se ha REGISTRADO un nuevo EQUIPO con ID: 11 \n Nombre: Equipo 9 \n Marca: Marca C \n Modelo: Modelo-272 \n Total Existencias: 19 \n Estatus: Inactivo','2025-04-09 22:46:17','2025-04-09 22:46:17'),(21,'root@localhost','Create','tbb_equipamientos','Se ha REGISTRADO un nuevo EQUIPO con ID: 12 \n Nombre: Equipo 10 \n Marca: Marca V \n Modelo: Modelo-239 \n Total Existencias: 1 \n Estatus: Activo','2025-04-09 22:46:17','2025-04-09 22:46:17'),(22,'root@localhost','Create','tbb_equipamientos','Se ha REGISTRADO un nuevo EQUIPO con ID: 13 \n Nombre: Zancadora \n Marca: Marca C \n Modelo: Modelo-970 \n Total Existencias: 1 \n Estatus: Activo','2025-04-09 22:59:02','2025-04-09 22:59:02'),(23,'root@localhost','Create','tbb_equipamientos','Se ha REGISTRADO un nuevo EQUIPO con ID: 14 \n Nombre: Elíptica \n Marca: Marca J \n Modelo: Modelo-951 \n Total Existencias: 63 \n Estatus: Activo','2025-04-09 22:59:02','2025-04-09 22:59:02'),(24,'root@localhost','Create','tbb_equipamientos','Se ha REGISTRADO un nuevo EQUIPO con ID: 15 \n Nombre: Bicicleta Estática \n Marca: Marca H \n Modelo: Modelo-372 \n Total Existencias: 78 \n Estatus: Activo','2025-04-09 22:59:02','2025-04-09 22:59:02'),(25,'root@localhost','Create','tbb_equipamientos','Se ha REGISTRADO un nuevo EQUIPO con ID: 16 \n Nombre: Press Militar \n Marca: Marca L \n Modelo: Modelo-377 \n Total Existencias: 57 \n Estatus: Activo','2025-04-09 22:59:02','2025-04-09 22:59:02'),(26,'root@localhost','Create','tbb_equipamientos','Se ha REGISTRADO un nuevo EQUIPO con ID: 17 \n Nombre: Caminadora \n Marca: Marca G \n Modelo: Modelo-759 \n Total Existencias: 72 \n Estatus: Activo','2025-04-09 22:59:02','2025-04-09 22:59:02'),(27,'root@localhost','Create','tbb_equipamientos','Se ha REGISTRADO un nuevo EQUIPO con ID: 18 \n Nombre: Remo \n Marca: Marca T \n Modelo: Modelo-994 \n Total Existencias: 69 \n Estatus: Activo','2025-04-09 22:59:02','2025-04-09 22:59:02'),(28,'root@localhost','Create','tbb_equipamientos','Se ha REGISTRADO un nuevo EQUIPO con ID: 19 \n Nombre: Elíptica \n Marca: Marca C \n Modelo: Modelo-798 \n Total Existencias: 9 \n Estatus: Activo','2025-04-09 22:59:02','2025-04-09 22:59:02'),(29,'root@localhost','Create','tbb_equipamientos','Se ha REGISTRADO un nuevo EQUIPO con ID: 20 \n Nombre: Máquina de Pecho \n Marca: Marca L \n Modelo: Modelo-151 \n Total Existencias: 85 \n Estatus: Inactivo','2025-04-09 22:59:02','2025-04-09 22:59:02'),(30,'root@localhost','Create','tbb_equipamientos','Se ha REGISTRADO un nuevo EQUIPO con ID: 21 \n Nombre: Zancadora \n Marca: Marca S \n Modelo: Modelo-82 \n Total Existencias: 89 \n Estatus: Inactivo','2025-04-09 22:59:02','2025-04-09 22:59:02'),(31,'root@localhost','Create','tbb_equipamientos','Se ha REGISTRADO un nuevo EQUIPO con ID: 22 \n Nombre: Barras \n Marca: Marca D \n Modelo: Modelo-318 \n Total Existencias: 26 \n Estatus: Inactivo','2025-04-09 22:59:02','2025-04-09 22:59:02'),(32,'root@localhost','Create','tbb_instalaciones','Se ha registrado una nueva INSTALACIÓN con el ID: 2 \n Descripción: Cancha equipada con lo necesario. \n Tipo: Cancha \n Observaciones: Sin observaciones. \n Estatus: 1','2025-04-09 23:07:03','2025-04-09 23:07:03'),(33,'root@localhost','Create','tbb_instalaciones','Se ha registrado una nueva INSTALACIÓN con el ID: 3 \n Descripción: Alberca equipada con lo necesario. \n Tipo: Alberca \n Observaciones: Sin observaciones. \n Estatus: 1','2025-04-09 23:07:03','2025-04-09 23:07:03'),(34,'root@localhost','Create','tbb_instalaciones','Se ha registrado una nueva INSTALACIÓN con el ID: 4 \n Descripción: Área de Pesas equipada con lo necesario. \n Tipo: Área de Pesas \n Observaciones: Sin observaciones. \n Estatus: 0','2025-04-09 23:07:03','2025-04-09 23:07:03'),(35,'root@localhost','Create','tbb_instalaciones','Se ha registrado una nueva INSTALACIÓN con el ID: 5 \n Descripción: Cancha equipada con lo necesario. \n Tipo: Cancha \n Observaciones: Sin observaciones. \n Estatus: 1','2025-04-09 23:07:03','2025-04-09 23:07:03'),(36,'root@localhost','Create','tbb_instalaciones','Se ha registrado una nueva INSTALACIÓN con el ID: 6 \n Descripción: Alberca equipada con lo necesario. \n Tipo: Alberca \n Observaciones: Sin observaciones. \n Estatus: 1','2025-04-09 23:07:03','2025-04-09 23:07:03'),(37,'root@localhost','Update','tbb_instalaciones','Se ha actualizado una INSTALACIÓN con el ID: 6 \n Descripción (Anterior): Alberca equipada con lo necesario. \n Descripción (Nueva): Alberca equipada con camastros. \n Tipo (Anterior): Alberca \n Tipo (Nuevo): Alberca \n Estatus (Anterior): 1 \n Estatus (Nuevo): 1','2025-04-09 23:07:54','2025-04-09 23:07:54'),(38,'root@localhost','Before-Delete','tbb_equipamientos','INTENTO de ELIMINACIÓN del EQUIPO con ID: 22 \n Nombre: Barras , Marca: Marca D , Modelo: Modelo-318 \n Total Existencias: 26','2025-04-09 23:09:57','2025-04-09 23:09:57'),(39,'root@localhost','Delete','tbb_equipamientos','Se ha ELIMINADO un EQUIPO con ID: 22 \n Nombre: Barras , Marca: Marca D , Modelo: Modelo-318 \n Total Existencias: 26 , Estatus: Inactivo','2025-04-09 23:09:57','2025-04-09 23:09:57'),(40,'root@localhost','Before-Delete','tbb_equipamientos','INTENTO de ELIMINACIÓN del EQUIPO con ID: 21 \n Nombre: Zancadora , Marca: Marca S , Modelo: Modelo-82 \n Total Existencias: 89','2025-04-09 23:16:24','2025-04-09 23:16:24'),(41,'root@localhost','Delete','tbb_equipamientos','Se ha ELIMINADO un EQUIPO con ID: 21 \n Nombre: Zancadora , Marca: Marca S , Modelo: Modelo-82 \n Total Existencias: 89 , Estatus: Inactivo','2025-04-09 23:16:24','2025-04-09 23:16:24'),(42,'root@localhost','Delete','tbb_instalaciones','Se ha eliminado una INSTALACIÓN con el ID: 6 \n Descripción: Alberca equipada con camastros. \n Tipo: Alberca \n Observaciones: Sin observaciones. \n Estatus: Inactivo','2025-04-09 23:16:33','2025-04-09 23:16:33'),(43,'root@localhost','Update','tbb_instalaciones','Se ha actualizado una INSTALACIÓN con el ID: 5 \n Descripción (Anterior): Cancha equipada con lo necesario. \n Descripción (Nueva): Cancha equipada con llardas. \n Tipo (Anterior): Cancha \n Tipo (Nuevo): Cancha \n Estatus (Anterior): 1 \n Estatus (Nuevo): 1','2025-04-09 23:17:05','2025-04-09 23:17:05'),(44,'root@localhost','Before-Delete','tbb_usuarios','INTENTO de ELIMINACIÓN del USUARIO con ID: 1 \n Nombre de Usuario: Yulissa \n Correo Electrónico: yuli@gmail.com \n Teléfono: 7568920109 \n Estatus: Activo','2025-04-10 13:15:17','2025-04-10 13:15:17'),(45,'root@localhost','Delete','tbb_usuarios','Se ha ELIMINADO el USUARIO con el ID: 1 \n Nombre de Usuario: Yulissa \n Correo Electrónico: yuli@gmail.com \n Número Telefónico: 7568920109 \n Estatus: Activo','2025-04-10 13:15:17','2025-04-10 13:15:17'),(46,'root@localhost','Before-Delete','tbb_usuarios','INTENTO de ELIMINACIÓN del USUARIO con ID: 3 \n Nombre de Usuario: Gabriela Garcia \n Correo Electrónico: gaby@gmail.com \n Teléfono: 7739453435 \n Estatus: Activo','2025-04-10 13:15:17','2025-04-10 13:15:17'),(47,'root@localhost','Delete','tbb_usuarios','Se ha ELIMINADO el USUARIO con el ID: 3 \n Nombre de Usuario: Gabriela Garcia \n Correo Electrónico: gaby@gmail.com \n Número Telefónico: 7739453435 \n Estatus: Activo','2025-04-10 13:15:17','2025-04-10 13:15:17'),(48,'root@localhost','Before-Delete','tbb_usuarios','INTENTO de ELIMINACIÓN del USUARIO con ID: 4 \n Nombre de Usuario: islas \n Correo Electrónico: islas@gmail.com \n Teléfono: 123456789 \n Estatus: Activo','2025-04-10 13:15:17','2025-04-10 13:15:17'),(49,'root@localhost','Delete','tbb_usuarios','Se ha ELIMINADO el USUARIO con el ID: 4 \n Nombre de Usuario: islas \n Correo Electrónico: islas@gmail.com \n Número Telefónico: 123456789 \n Estatus: Activo','2025-04-10 13:15:17','2025-04-10 13:15:17'),(50,'root@localhost','Before-Delete','tbb_usuarios','INTENTO de ELIMINACIÓN del USUARIO con ID: 5 \n Nombre de Usuario: rocio_182 \n Correo Electrónico: fernando9060@hotmail.com \n Teléfono: 5503141037 \n Estatus: Bloqueado','2025-04-10 13:15:17','2025-04-10 13:15:17'),(51,'root@localhost','Delete','tbb_usuarios','Se ha ELIMINADO el USUARIO con el ID: 5 \n Nombre de Usuario: rocio_182 \n Correo Electrónico: fernando9060@hotmail.com \n Número Telefónico: 5503141037 \n Estatus: Bloqueado','2025-04-10 13:15:17','2025-04-10 13:15:17'),(52,'root@localhost','Before-Delete','tbb_usuarios','INTENTO de ELIMINACIÓN del USUARIO con ID: 6 \n Nombre de Usuario: arturo_413 \n Correo Electrónico: daniela6286@mail.com \n Teléfono: 5502843074 \n Estatus: Activo','2025-04-10 13:15:17','2025-04-10 13:15:17'),(53,'root@localhost','Delete','tbb_usuarios','Se ha ELIMINADO el USUARIO con el ID: 6 \n Nombre de Usuario: arturo_413 \n Correo Electrónico: daniela6286@mail.com \n Número Telefónico: 5502843074 \n Estatus: Activo','2025-04-10 13:15:17','2025-04-10 13:15:17'),(54,'root@localhost','Before-Delete','tbb_usuarios','INTENTO de ELIMINACIÓN del USUARIO con ID: 7 \n Nombre de Usuario: melissa_360 \n Correo Electrónico: alberto1978@outlook.com \n Teléfono: 5505993817 \n Estatus: Activo','2025-04-10 13:15:17','2025-04-10 13:15:17'),(55,'root@localhost','Delete','tbb_usuarios','Se ha ELIMINADO el USUARIO con el ID: 7 \n Nombre de Usuario: melissa_360 \n Correo Electrónico: alberto1978@outlook.com \n Número Telefónico: 5505993817 \n Estatus: Activo','2025-04-10 13:15:17','2025-04-10 13:15:17'),(56,'root@localhost','Before-Delete','tbb_usuarios','INTENTO de ELIMINACIÓN del USUARIO con ID: 8 \n Nombre de Usuario: miguel_795 \n Correo Electrónico: sofia4534@yahoo.com \n Teléfono: 5502306582 \n Estatus: Suspendido','2025-04-10 13:15:17','2025-04-10 13:15:17'),(57,'root@localhost','Delete','tbb_usuarios','Se ha ELIMINADO el USUARIO con el ID: 8 \n Nombre de Usuario: miguel_795 \n Correo Electrónico: sofia4534@yahoo.com \n Número Telefónico: 5502306582 \n Estatus: Suspendido','2025-04-10 13:15:17','2025-04-10 13:15:17'),(58,'root@localhost','Before-Delete','tbb_usuarios','INTENTO de ELIMINACIÓN del USUARIO con ID: 9 \n Nombre de Usuario: monica_111 \n Correo Electrónico: manuel6665@mail.com \n Teléfono: 5508012642 \n Estatus: Inactivo','2025-04-10 13:15:17','2025-04-10 13:15:17'),(59,'root@localhost','Delete','tbb_usuarios','Se ha ELIMINADO el USUARIO con el ID: 9 \n Nombre de Usuario: monica_111 \n Correo Electrónico: manuel6665@mail.com \n Número Telefónico: 5508012642 \n Estatus: Inactivo','2025-04-10 13:15:17','2025-04-10 13:15:17'),(60,'root@localhost','Before-Delete','tbb_usuarios','INTENTO de ELIMINACIÓN del USUARIO con ID: 10 \n Nombre de Usuario: paula_146 \n Correo Electrónico: luis686@mail.com \n Teléfono: 5507882881 \n Estatus: Bloqueado','2025-04-10 13:15:17','2025-04-10 13:15:17'),(61,'root@localhost','Delete','tbb_usuarios','Se ha ELIMINADO el USUARIO con el ID: 10 \n Nombre de Usuario: paula_146 \n Correo Electrónico: luis686@mail.com \n Número Telefónico: 5507882881 \n Estatus: Bloqueado','2025-04-10 13:15:17','2025-04-10 13:15:17'),(62,'root@localhost','Before-Delete','tbb_usuarios','INTENTO de ELIMINACIÓN del USUARIO con ID: 11 \n Nombre de Usuario: valeria_162 \n Correo Electrónico: gerardo6904@gmail.com \n Teléfono: 5505219926 \n Estatus: Suspendido','2025-04-10 13:15:17','2025-04-10 13:15:17'),(63,'root@localhost','Delete','tbb_usuarios','Se ha ELIMINADO el USUARIO con el ID: 11 \n Nombre de Usuario: valeria_162 \n Correo Electrónico: gerardo6904@gmail.com \n Número Telefónico: 5505219926 \n Estatus: Suspendido','2025-04-10 13:15:17','2025-04-10 13:15:17'),(64,'root@localhost','Before-Delete','tbb_usuarios','INTENTO de ELIMINACIÓN del USUARIO con ID: 12 \n Nombre de Usuario: ximena_958 \n Correo Electrónico: adrian6064@hotmail.com \n Teléfono: 5503913471 \n Estatus: Bloqueado','2025-04-10 13:15:17','2025-04-10 13:15:17'),(65,'root@localhost','Delete','tbb_usuarios','Se ha ELIMINADO el USUARIO con el ID: 12 \n Nombre de Usuario: ximena_958 \n Correo Electrónico: adrian6064@hotmail.com \n Número Telefónico: 5503913471 \n Estatus: Bloqueado','2025-04-10 13:15:17','2025-04-10 13:15:17'),(66,'root@localhost','Before-Delete','tbb_usuarios','INTENTO de ELIMINACIÓN del USUARIO con ID: 13 \n Nombre de Usuario: enrique_996 \n Correo Electrónico: luis1505@yahoo.com \n Teléfono: 5504108949 \n Estatus: Activo','2025-04-10 13:15:17','2025-04-10 13:15:17'),(67,'root@localhost','Delete','tbb_usuarios','Se ha ELIMINADO el USUARIO con el ID: 13 \n Nombre de Usuario: enrique_996 \n Correo Electrónico: luis1505@yahoo.com \n Número Telefónico: 5504108949 \n Estatus: Activo','2025-04-10 13:15:17','2025-04-10 13:15:17'),(68,'root@localhost','Before-Delete','tbb_usuarios','INTENTO de ELIMINACIÓN del USUARIO con ID: 14 \n Nombre de Usuario: roberto_850 \n Correo Electrónico: julio9607@mail.com \n Teléfono: 5501859323 \n Estatus: Suspendido','2025-04-10 13:15:17','2025-04-10 13:15:17'),(69,'root@localhost','Delete','tbb_usuarios','Se ha ELIMINADO el USUARIO con el ID: 14 \n Nombre de Usuario: roberto_850 \n Correo Electrónico: julio9607@mail.com \n Número Telefónico: 5501859323 \n Estatus: Suspendido','2025-04-10 13:15:17','2025-04-10 13:15:17'),(70,'root@localhost','Before-Delete','tbb_usuarios','INTENTO de ELIMINACIÓN del USUARIO con ID: 15 \n Nombre de Usuario: julio_764 \n Correo Electrónico: raul1709@hotmail.com \n Teléfono: 5507574573 \n Estatus: Activo','2025-04-10 13:15:17','2025-04-10 13:15:17'),(71,'root@localhost','Delete','tbb_usuarios','Se ha ELIMINADO el USUARIO con el ID: 15 \n Nombre de Usuario: julio_764 \n Correo Electrónico: raul1709@hotmail.com \n Número Telefónico: 5507574573 \n Estatus: Activo','2025-04-10 13:15:17','2025-04-10 13:15:17'),(72,'root@localhost','Before-Delete','tbb_usuarios','INTENTO de ELIMINACIÓN del USUARIO con ID: 16 \n Nombre de Usuario: ivan_189 \n Correo Electrónico: karla7370@yahoo.com \n Teléfono: 5504921035 \n Estatus: Suspendido','2025-04-10 13:15:17','2025-04-10 13:15:17'),(73,'root@localhost','Delete','tbb_usuarios','Se ha ELIMINADO el USUARIO con el ID: 16 \n Nombre de Usuario: ivan_189 \n Correo Electrónico: karla7370@yahoo.com \n Número Telefónico: 5504921035 \n Estatus: Suspendido','2025-04-10 13:15:17','2025-04-10 13:15:17'),(74,'root@localhost','Before-Delete','tbb_usuarios','INTENTO de ELIMINACIÓN del USUARIO con ID: 17 \n Nombre de Usuario: ximena_66 \n Correo Electrónico: marcela393@outlook.com \n Teléfono: 5500952410 \n Estatus: Inactivo','2025-04-10 13:15:17','2025-04-10 13:15:17'),(75,'root@localhost','Delete','tbb_usuarios','Se ha ELIMINADO el USUARIO con el ID: 17 \n Nombre de Usuario: ximena_66 \n Correo Electrónico: marcela393@outlook.com \n Número Telefónico: 5500952410 \n Estatus: Inactivo','2025-04-10 13:15:17','2025-04-10 13:15:17'),(76,'root@localhost','Before-Delete','tbb_usuarios','INTENTO de ELIMINACIÓN del USUARIO con ID: 18 \n Nombre de Usuario: roberto_233 \n Correo Electrónico: arturo1107@yahoo.com \n Teléfono: 5508993936 \n Estatus: Bloqueado','2025-04-10 13:15:17','2025-04-10 13:15:17'),(77,'root@localhost','Delete','tbb_usuarios','Se ha ELIMINADO el USUARIO con el ID: 18 \n Nombre de Usuario: roberto_233 \n Correo Electrónico: arturo1107@yahoo.com \n Número Telefónico: 5508993936 \n Estatus: Bloqueado','2025-04-10 13:15:17','2025-04-10 13:15:17'),(78,'root@localhost','Before-Delete','tbb_usuarios','INTENTO de ELIMINACIÓN del USUARIO con ID: 19 \n Nombre de Usuario: carlos_783 \n Correo Electrónico: manuel3662@mail.com \n Teléfono: 5501856367 \n Estatus: Activo','2025-04-10 13:15:17','2025-04-10 13:15:17'),(79,'root@localhost','Delete','tbb_usuarios','Se ha ELIMINADO el USUARIO con el ID: 19 \n Nombre de Usuario: carlos_783 \n Correo Electrónico: manuel3662@mail.com \n Número Telefónico: 5501856367 \n Estatus: Activo','2025-04-10 13:15:17','2025-04-10 13:15:17'),(80,'root@localhost','Before-Delete','tbb_usuarios','INTENTO de ELIMINACIÓN del USUARIO con ID: 20 \n Nombre de Usuario: paula_680 \n Correo Electrónico: ximena4412@hotmail.com \n Teléfono: 5509818258 \n Estatus: Suspendido','2025-04-10 13:15:17','2025-04-10 13:15:17'),(81,'root@localhost','Delete','tbb_usuarios','Se ha ELIMINADO el USUARIO con el ID: 20 \n Nombre de Usuario: paula_680 \n Correo Electrónico: ximena4412@hotmail.com \n Número Telefónico: 5509818258 \n Estatus: Suspendido','2025-04-10 13:15:17','2025-04-10 13:15:17'),(82,'root@localhost','Before-Delete','tbb_usuarios','INTENTO de ELIMINACIÓN del USUARIO con ID: 21 \n Nombre de Usuario: adrian_637 \n Correo Electrónico: sofia5305@outlook.com \n Teléfono: 5508121899 \n Estatus: Activo','2025-04-10 13:15:17','2025-04-10 13:15:17'),(83,'root@localhost','Delete','tbb_usuarios','Se ha ELIMINADO el USUARIO con el ID: 21 \n Nombre de Usuario: adrian_637 \n Correo Electrónico: sofia5305@outlook.com \n Número Telefónico: 5508121899 \n Estatus: Activo','2025-04-10 13:15:17','2025-04-10 13:15:17'),(84,'root@localhost','Before-Delete','tbb_usuarios','INTENTO de ELIMINACIÓN del USUARIO con ID: 22 \n Nombre de Usuario: manuel_627 \n Correo Electrónico: raul2368@mail.com \n Teléfono: 5500094440 \n Estatus: Activo','2025-04-10 13:15:17','2025-04-10 13:15:17'),(85,'root@localhost','Delete','tbb_usuarios','Se ha ELIMINADO el USUARIO con el ID: 22 \n Nombre de Usuario: manuel_627 \n Correo Electrónico: raul2368@mail.com \n Número Telefónico: 5500094440 \n Estatus: Activo','2025-04-10 13:15:17','2025-04-10 13:15:17'),(86,'root@localhost','Before-Delete','tbb_usuarios','INTENTO de ELIMINACIÓN del USUARIO con ID: 23 \n Nombre de Usuario: luis_194 \n Correo Electrónico: renata2747@hotmail.com \n Teléfono: 5507799088 \n Estatus: Bloqueado','2025-04-10 13:15:17','2025-04-10 13:15:17'),(87,'root@localhost','Delete','tbb_usuarios','Se ha ELIMINADO el USUARIO con el ID: 23 \n Nombre de Usuario: luis_194 \n Correo Electrónico: renata2747@hotmail.com \n Número Telefónico: 5507799088 \n Estatus: Bloqueado','2025-04-10 13:15:17','2025-04-10 13:15:17'),(88,'root@localhost','Before-Delete','tbb_usuarios','INTENTO de ELIMINACIÓN del USUARIO con ID: 24 \n Nombre de Usuario: valeria_517 \n Correo Electrónico: camila3229@gmail.com \n Teléfono: 5501938786 \n Estatus: Suspendido','2025-04-10 13:15:17','2025-04-10 13:15:17'),(89,'root@localhost','Delete','tbb_usuarios','Se ha ELIMINADO el USUARIO con el ID: 24 \n Nombre de Usuario: valeria_517 \n Correo Electrónico: camila3229@gmail.com \n Número Telefónico: 5501938786 \n Estatus: Suspendido','2025-04-10 13:15:17','2025-04-10 13:15:17'),(90,'root@localhost','Before-Delete','tbb_usuarios','INTENTO de ELIMINACIÓN del USUARIO con ID: 25 \n Nombre de Usuario: Bede \n Correo Electrónico: bede@gmail.com \n Teléfono: 123456789 \n Estatus: Activo','2025-04-10 13:15:17','2025-04-10 13:15:17'),(91,'root@localhost','Delete','tbb_usuarios','Se ha ELIMINADO el USUARIO con el ID: 25 \n Nombre de Usuario: Bede \n Correo Electrónico: bede@gmail.com \n Número Telefónico: 123456789 \n Estatus: Activo','2025-04-10 13:15:17','2025-04-10 13:15:17'),(92,'root@localhost','Before-Delete','tbb_usuarios','INTENTO de ELIMINACIÓN del USUARIO con ID: 26 \n Nombre de Usuario: Espe12 \n Correo Electrónico: espe@gmail.com \n Teléfono: 7641081079 \n Estatus: Activo','2025-04-10 13:15:17','2025-04-10 13:15:17'),(93,'root@localhost','Delete','tbb_usuarios','Se ha ELIMINADO el USUARIO con el ID: 26 \n Nombre de Usuario: Espe12 \n Correo Electrónico: espe@gmail.com \n Número Telefónico: 7641081079 \n Estatus: Activo','2025-04-10 13:15:17','2025-04-10 13:15:17'),(94,'root@localhost','Create','tbb_usuarios','Se ha registrado un nuevo USUARIO con el ID: 27 \n Nombre de Usuario: ivan_389 \n Correo Electrónico: sergio9761@mail.com \n Número Telefónico: 5509386506 \n Estatus: Bloqueado','2025-04-10 13:22:18','2025-04-10 13:22:18'),(95,'root@localhost','Create','tbb_usuarios','Se ha registrado un nuevo USUARIO con el ID: 28 \n Nombre de Usuario: luis_524 \n Correo Electrónico: patricia5924@mail.com \n Número Telefónico: 5509789268 \n Estatus: Activo','2025-04-10 13:22:18','2025-04-10 13:22:18'),(96,'root@localhost','Create','tbb_usuarios','Se ha registrado un nuevo USUARIO con el ID: 29 \n Nombre de Usuario: alejandra_616 \n Correo Electrónico: alejandra8518@hotmail.com \n Número Telefónico: 5506929638 \n Estatus: Bloqueado','2025-04-10 13:22:18','2025-04-10 13:22:18'),(97,'root@localhost','Create','tbb_usuarios','Se ha registrado un nuevo USUARIO con el ID: 30 \n Nombre de Usuario: hector_950 \n Correo Electrónico: diego3579@hotmail.com \n Número Telefónico: 5505024791 \n Estatus: Suspendido','2025-04-10 13:22:18','2025-04-10 13:22:18'),(98,'root@localhost','Create','tbb_usuarios','Se ha registrado un nuevo USUARIO con el ID: 31 \n Nombre de Usuario: ricardo_726 \n Correo Electrónico: manuel5337@gmail.com \n Número Telefónico: 5502396925 \n Estatus: Activo','2025-04-10 13:22:18','2025-04-10 13:22:18'),(99,'root@localhost','Create','tbb_usuarios','Se ha registrado un nuevo USUARIO con el ID: 32 \n Nombre de Usuario: melissa_468 \n Correo Electrónico: carlos448@gmail.com \n Número Telefónico: 5500015168 \n Estatus: Suspendido','2025-04-10 13:22:18','2025-04-10 13:22:18'),(100,'root@localhost','Create','tbb_usuarios','Se ha registrado un nuevo USUARIO con el ID: 33 \n Nombre de Usuario: daniela_348 \n Correo Electrónico: carmen8089@yahoo.com \n Número Telefónico: 5505848312 \n Estatus: Inactivo','2025-04-10 13:22:18','2025-04-10 13:22:18'),(101,'root@localhost','Create','tbb_usuarios','Se ha registrado un nuevo USUARIO con el ID: 34 \n Nombre de Usuario: renata_204 \n Correo Electrónico: ramon5726@gmail.com \n Número Telefónico: 5501175081 \n Estatus: Inactivo','2025-04-10 13:22:18','2025-04-10 13:22:18'),(102,'root@localhost','Create','tbb_usuarios','Se ha registrado un nuevo USUARIO con el ID: 35 \n Nombre de Usuario: ana_536 \n Correo Electrónico: roberto7694@outlook.com \n Número Telefónico: 5506010506 \n Estatus: Activo','2025-04-10 13:22:18','2025-04-10 13:22:18'),(103,'root@localhost','Create','tbb_usuarios','Se ha registrado un nuevo USUARIO con el ID: 36 \n Nombre de Usuario: hector_297 \n Correo Electrónico: juan5619@gmail.com \n Número Telefónico: 5506683772 \n Estatus: Suspendido','2025-04-10 13:22:18','2025-04-10 13:22:18'),(104,'root@localhost','Create','tbb_usuarios','Se ha registrado un nuevo USUARIO con el ID: 37 \n Nombre de Usuario: manuel_418 \n Correo Electrónico: raul4566@hotmail.com \n Número Telefónico: 5501468807 \n Estatus: Activo','2025-04-10 13:22:18','2025-04-10 13:22:18'),(105,'root@localhost','Create','tbb_usuarios','Se ha registrado un nuevo USUARIO con el ID: 38 \n Nombre de Usuario: adrian_731 \n Correo Electrónico: miguel5736@mail.com \n Número Telefónico: 5503565830 \n Estatus: Activo','2025-04-10 13:22:18','2025-04-10 13:22:18'),(106,'root@localhost','Create','tbb_usuarios','Se ha registrado un nuevo USUARIO con el ID: 39 \n Nombre de Usuario: miguel_651 \n Correo Electrónico: andrea4721@gmail.com \n Número Telefónico: 5501913942 \n Estatus: Activo','2025-04-10 13:22:18','2025-04-10 13:22:18'),(107,'root@localhost','Create','tbb_usuarios','Se ha registrado un nuevo USUARIO con el ID: 40 \n Nombre de Usuario: karla_356 \n Correo Electrónico: daniela3907@gmail.com \n Número Telefónico: 5508003762 \n Estatus: Bloqueado','2025-04-10 13:22:18','2025-04-10 13:22:18'),(108,'root@localhost','Create','tbb_usuarios','Se ha registrado un nuevo USUARIO con el ID: 41 \n Nombre de Usuario: adrian_598 \n Correo Electrónico: esteban2822@mail.com \n Número Telefónico: 5500736295 \n Estatus: Inactivo','2025-04-10 13:22:18','2025-04-10 13:22:18'),(109,'root@localhost','Create','tbb_usuarios','Se ha registrado un nuevo USUARIO con el ID: 42 \n Nombre de Usuario: ivan_45 \n Correo Electrónico: manuel6909@gmail.com \n Número Telefónico: 5502447356 \n Estatus: Activo','2025-04-10 13:22:18','2025-04-10 13:22:18'),(110,'root@localhost','Create','tbb_usuarios','Se ha registrado un nuevo USUARIO con el ID: 43 \n Nombre de Usuario: andrea_58 \n Correo Electrónico: gloria607@mail.com \n Número Telefónico: 5501797035 \n Estatus: Inactivo','2025-04-10 13:22:18','2025-04-10 13:22:18'),(111,'root@localhost','Create','tbb_usuarios','Se ha registrado un nuevo USUARIO con el ID: 44 \n Nombre de Usuario: carmen_495 \n Correo Electrónico: carmen7889@mail.com \n Número Telefónico: 5501275638 \n Estatus: Bloqueado','2025-04-10 13:22:18','2025-04-10 13:22:18'),(112,'root@localhost','Create','tbb_usuarios','Se ha registrado un nuevo USUARIO con el ID: 45 \n Nombre de Usuario: ricardo_390 \n Correo Electrónico: gloria7851@outlook.com \n Número Telefónico: 5500656534 \n Estatus: Inactivo','2025-04-10 13:22:18','2025-04-10 13:22:18'),(113,'root@localhost','Create','tbb_usuarios','Se ha registrado un nuevo USUARIO con el ID: 46 \n Nombre de Usuario: marcela_76 \n Correo Electrónico: ivan3717@mail.com \n Número Telefónico: 5504855294 \n Estatus: Bloqueado','2025-04-10 13:22:18','2025-04-10 13:22:18'),(114,'root@localhost','Create','tbb_usuarios','Se ha registrado un nuevo USUARIO con el ID: 47 \n Nombre de Usuario: carmen_394 \n Correo Electrónico: ricardo4559@hotmail.com \n Número Telefónico: 5506464746 \n Estatus: Suspendido','2025-04-10 13:22:18','2025-04-10 13:22:18'),(115,'root@localhost','Create','tbb_usuarios','Se ha registrado un nuevo USUARIO con el ID: 48 \n Nombre de Usuario: raul_425 \n Correo Electrónico: elena5854@outlook.com \n Número Telefónico: 5508176187 \n Estatus: Inactivo','2025-04-10 13:22:18','2025-04-10 13:22:18'),(116,'root@localhost','Create','tbb_usuarios','Se ha registrado un nuevo USUARIO con el ID: 49 \n Nombre de Usuario: alejandra_299 \n Correo Electrónico: adrian8598@hotmail.com \n Número Telefónico: 5500581892 \n Estatus: Bloqueado','2025-04-10 13:22:18','2025-04-10 13:22:18'),(117,'root@localhost','Create','tbb_usuarios','Se ha registrado un nuevo USUARIO con el ID: 50 \n Nombre de Usuario: javier_710 \n Correo Electrónico: roberto2710@gmail.com \n Número Telefónico: 5500877543 \n Estatus: Inactivo','2025-04-10 13:22:18','2025-04-10 13:22:18'),(118,'root@localhost','Create','tbb_usuarios','Se ha registrado un nuevo USUARIO con el ID: 51 \n Nombre de Usuario: paula_645 \n Correo Electrónico: camila2690@outlook.com \n Número Telefónico: 5502227720 \n Estatus: Activo','2025-04-10 13:22:18','2025-04-10 13:22:18'),(119,'root@localhost','Create','tbb_usuarios','Se ha registrado un nuevo USUARIO con el ID: 52 \n Nombre de Usuario: arturo_768 \n Correo Electrónico: sergio4602@outlook.com \n Número Telefónico: 5500675049 \n Estatus: Activo','2025-04-10 13:22:18','2025-04-10 13:22:18'),(120,'root@localhost','Create','tbb_usuarios','Se ha registrado un nuevo USUARIO con el ID: 53 \n Nombre de Usuario: sofia_497 \n Correo Electrónico: ana9972@mail.com \n Número Telefónico: 5503493427 \n Estatus: Inactivo','2025-04-10 13:22:18','2025-04-10 13:22:18'),(121,'root@localhost','Create','tbb_usuarios','Se ha registrado un nuevo USUARIO con el ID: 54 \n Nombre de Usuario: brenda_284 \n Correo Electrónico: andrea3297@yahoo.com \n Número Telefónico: 5503391611 \n Estatus: Bloqueado','2025-04-10 13:22:18','2025-04-10 13:22:18'),(122,'root@localhost','Create','tbb_usuarios','Se ha registrado un nuevo USUARIO con el ID: 55 \n Nombre de Usuario: patricia_284 \n Correo Electrónico: gloria6287@gmail.com \n Número Telefónico: 5509867824 \n Estatus: Bloqueado','2025-04-10 13:22:18','2025-04-10 13:22:18'),(123,'root@localhost','Create','tbb_usuarios','Se ha registrado un nuevo USUARIO con el ID: 56 \n Nombre de Usuario: carlos_620 \n Correo Electrónico: renata9655@yahoo.com \n Número Telefónico: 5508728249 \n Estatus: Bloqueado','2025-04-10 13:22:18','2025-04-10 13:22:18'),(124,'root@localhost','Create','tbb_usuarios','Se ha registrado un nuevo USUARIO con el ID: 57 \n Nombre de Usuario: julio_960 \n Correo Electrónico: jose2845@outlook.com \n Número Telefónico: 5503039713 \n Estatus: Suspendido','2025-04-10 13:22:18','2025-04-10 13:22:18'),(125,'root@localhost','Create','tbb_usuarios','Se ha registrado un nuevo USUARIO con el ID: 58 \n Nombre de Usuario: fernando_597 \n Correo Electrónico: valeria5879@mail.com \n Número Telefónico: 5500821157 \n Estatus: Suspendido','2025-04-10 13:22:18','2025-04-10 13:22:18'),(126,'root@localhost','Create','tbb_usuarios','Se ha registrado un nuevo USUARIO con el ID: 59 \n Nombre de Usuario: alejandra_635 \n Correo Electrónico: javier6054@mail.com \n Número Telefónico: 5501764998 \n Estatus: Inactivo','2025-04-10 13:22:18','2025-04-10 13:22:18'),(127,'root@localhost','Create','tbb_usuarios','Se ha registrado un nuevo USUARIO con el ID: 60 \n Nombre de Usuario: rocio_660 \n Correo Electrónico: elena512@mail.com \n Número Telefónico: 5506744141 \n Estatus: Inactivo','2025-04-10 13:22:18','2025-04-10 13:22:18'),(128,'root@localhost','Create','tbb_usuarios','Se ha registrado un nuevo USUARIO con el ID: 61 \n Nombre de Usuario: valeria_937 \n Correo Electrónico: daniela7654@yahoo.com \n Número Telefónico: 5508888250 \n Estatus: Suspendido','2025-04-10 13:22:18','2025-04-10 13:22:18'),(129,'root@localhost','Create','tbb_usuarios','Se ha registrado un nuevo USUARIO con el ID: 62 \n Nombre de Usuario: gloria_193 \n Correo Electrónico: enrique4902@yahoo.com \n Número Telefónico: 5505631992 \n Estatus: Suspendido','2025-04-10 13:22:18','2025-04-10 13:22:18'),(130,'root@localhost','Create','tbb_usuarios','Se ha registrado un nuevo USUARIO con el ID: 63 \n Nombre de Usuario: pedro_454 \n Correo Electrónico: sergio1410@outlook.com \n Número Telefónico: 5500151915 \n Estatus: Activo','2025-04-10 13:22:18','2025-04-10 13:22:18'),(131,'root@localhost','Create','tbb_usuarios','Se ha registrado un nuevo USUARIO con el ID: 64 \n Nombre de Usuario: juan_58 \n Correo Electrónico: paula3043@gmail.com \n Número Telefónico: 5506606835 \n Estatus: Suspendido','2025-04-10 13:22:18','2025-04-10 13:22:18'),(132,'root@localhost','Create','tbb_usuarios','Se ha registrado un nuevo USUARIO con el ID: 65 \n Nombre de Usuario: arturo_790 \n Correo Electrónico: lucia4035@gmail.com \n Número Telefónico: 5500598423 \n Estatus: Suspendido','2025-04-10 13:22:18','2025-04-10 13:22:18'),(133,'root@localhost','Create','tbb_usuarios','Se ha registrado un nuevo USUARIO con el ID: 66 \n Nombre de Usuario: lucia_715 \n Correo Electrónico: ana6596@gmail.com \n Número Telefónico: 5509618558 \n Estatus: Inactivo','2025-04-10 13:22:18','2025-04-10 13:22:18'),(134,'root@localhost','Create','tbb_usuarios','Se ha registrado un nuevo USUARIO con el ID: 67 \n Nombre de Usuario: ricardo_356 \n Correo Electrónico: oscar5175@outlook.com \n Número Telefónico: 5509366111 \n Estatus: Suspendido','2025-04-10 13:22:18','2025-04-10 13:22:18'),(135,'root@localhost','Create','tbb_usuarios','Se ha registrado un nuevo USUARIO con el ID: 68 \n Nombre de Usuario: jose_319 \n Correo Electrónico: marcela2933@mail.com \n Número Telefónico: 5509012371 \n Estatus: Suspendido','2025-04-10 13:22:18','2025-04-10 13:22:18'),(136,'root@localhost','Create','tbb_usuarios','Se ha registrado un nuevo USUARIO con el ID: 69 \n Nombre de Usuario: hector_902 \n Correo Electrónico: ana9017@outlook.com \n Número Telefónico: 5505422798 \n Estatus: Suspendido','2025-04-10 13:22:18','2025-04-10 13:22:18'),(137,'root@localhost','Create','tbb_usuarios','Se ha registrado un nuevo USUARIO con el ID: 70 \n Nombre de Usuario: marcela_648 \n Correo Electrónico: brenda2067@hotmail.com \n Número Telefónico: 5508209053 \n Estatus: Activo','2025-04-10 13:22:18','2025-04-10 13:22:18'),(138,'root@localhost','Create','tbb_usuarios','Se ha registrado un nuevo USUARIO con el ID: 71 \n Nombre de Usuario: gerardo_563 \n Correo Electrónico: miguel9094@yahoo.com \n Número Telefónico: 5508146020 \n Estatus: Bloqueado','2025-04-10 13:22:18','2025-04-10 13:22:18'),(139,'root@localhost','Create','tbb_usuarios','Se ha registrado un nuevo USUARIO con el ID: 72 \n Nombre de Usuario: pedro_818 \n Correo Electrónico: fernando4810@outlook.com \n Número Telefónico: 5501938576 \n Estatus: Inactivo','2025-04-10 13:22:18','2025-04-10 13:22:18'),(140,'root@localhost','Create','tbb_usuarios','Se ha registrado un nuevo USUARIO con el ID: 73 \n Nombre de Usuario: valeria_607 \n Correo Electrónico: enrique3650@gmail.com \n Número Telefónico: 5501502091 \n Estatus: Suspendido','2025-04-10 13:22:18','2025-04-10 13:22:18'),(141,'root@localhost','Create','tbb_usuarios','Se ha registrado un nuevo USUARIO con el ID: 74 \n Nombre de Usuario: alberto_430 \n Correo Electrónico: roberto3546@mail.com \n Número Telefónico: 5507258751 \n Estatus: Suspendido','2025-04-10 13:22:18','2025-04-10 13:22:18'),(142,'root@localhost','Create','tbb_usuarios','Se ha registrado un nuevo USUARIO con el ID: 75 \n Nombre de Usuario: miguel_733 \n Correo Electrónico: carmen1154@gmail.com \n Número Telefónico: 5503700220 \n Estatus: Inactivo','2025-04-10 13:22:18','2025-04-10 13:22:18'),(143,'root@localhost','Create','tbb_usuarios','Se ha registrado un nuevo USUARIO con el ID: 76 \n Nombre de Usuario: gloria_695 \n Correo Electrónico: lucia6769@hotmail.com \n Número Telefónico: 5503149484 \n Estatus: Inactivo','2025-04-10 13:22:18','2025-04-10 13:22:18'),(144,'root@localhost','Create','tbb_usuarios','Se ha registrado un nuevo USUARIO con el ID: 77 \n Nombre de Usuario: Marco Ramirez \n Correo Electrónico: marco@gmail.com \n Número Telefónico: 7641081079 \n Estatus: Activo','2025-04-10 13:24:34','2025-04-10 13:24:34'),(145,'root@localhost','Create','tbb_instalaciones','Se ha registrado una nueva INSTALACIÓN con el ID: 7 \n Descripción: Baños de vapor \n Tipo: Baños \n Observaciones: Separados por genero \n Estatus: 1','2025-04-10 13:32:38','2025-04-10 13:32:38'),(146,'root@localhost','Update','tbb_instalaciones','Se ha actualizado una INSTALACIÓN con el ID: 5 \n Descripción (Anterior): Cancha equipada con llardas. \n Descripción (Nueva): Cancha equipada con yardas. \n Tipo (Anterior): Cancha \n Tipo (Nuevo): Cancha \n Estatus (Anterior): 1 \n Estatus (Nuevo): 1','2025-04-10 13:35:06','2025-04-10 13:35:06'),(147,'root@localhost','Delete','tbb_instalaciones','Se ha eliminado una INSTALACIÓN con el ID: 4 \n Descripción: Área de Pesas equipada con lo necesario. \n Tipo: Área de Pesas \n Observaciones: Sin observaciones. \n Estatus: Inactivo','2025-04-10 13:35:28','2025-04-10 13:35:28'),(148,'root@localhost','Delete','tbb_instalaciones','Se ha eliminado una INSTALACIÓN con el ID: 3 \n Descripción: Alberca equipada con lo necesario. \n Tipo: Alberca \n Observaciones: Sin observaciones. \n Estatus: Inactivo','2025-04-10 13:36:04','2025-04-10 13:36:04');
/*!40000 ALTER TABLE `tbi_bitacora` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-10 14:40:38
