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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='La tabla Instalaciones almacenará la información relativa a las instalaciones dentro del gimnasio, describiendo las características de cada una, su tipo y cualquier observación adicional que sea relevante para su gestión.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_instalaciones`
--

LOCK TABLES `tbb_instalaciones` WRITE;
/*!40000 ALTER TABLE `tbb_instalaciones` DISABLE KEYS */;
INSERT INTO `tbb_instalaciones` VALUES (1,'Instalacion ','Maquinas','Ninguna',1,'2025-04-07 17:25:46','2025-04-07 23:26:28'),(2,'Cancha equipada con lo necesario.','Cancha','Sin observaciones.',1,'2025-04-09 23:07:03',NULL),(3,'Alberca equipada con lo necesario.','Alberca','Sin observaciones.',1,'2025-04-09 23:07:03',NULL),(4,'Área de Pesas equipada con lo necesario.','Área de Pesas','Sin observaciones.',0,'2025-04-09 23:07:03',NULL),(5,'Cancha equipada con llardas.','Cancha','Sin observaciones.',1,'2025-04-09 23:07:03',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='La tabla Mantenimiento almacenará la información relacionada con el mantenimiento realizado a los equipos dentro del gimnasio, incluyendo el identificador del equipo, la descripción del mantenimiento, el responsable de la tarea y el costo asociado.';
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
-- Dumping data for table `tbb_usuarios`
--

LOCK TABLES `tbb_usuarios` WRITE;
/*!40000 ALTER TABLE `tbb_usuarios` DISABLE KEYS */;
INSERT INTO `tbb_usuarios` VALUES (1,'Yulissa','yuli@gmail.com','1234','7568920109','Activo','2025-04-07 23:18:53','2025-04-07 23:18:53'),(3,'Gabriela Garcia','gaby@gmail.com','1234','7739453435','Activo','2025-04-07 23:18:53','2025-04-07 23:18:53'),(4,'islas','islas@gmail.com','$2b$12$CXPrbgCbhqYaKBIAPPTdK.GjjNIVbLV1CW0e4tslQkB7sv1/dOhHW','123456789','Activo','2025-04-08 09:51:33','2025-04-08 09:51:33'),(5,'rocio_182','fernando9060@hotmail.com','bf268ac68754e49cb995d8199e0c1cf7bae47f264b8861582a6084cdafe4792f','5503141037','Bloqueado','2025-04-08 05:05:26','2025-04-08 05:05:26'),(6,'arturo_413','daniela6286@mail.com','2327e0ffcd9d8c885eefd64c38c0f7252c0aa53da64d1914e4d697bf59dc2415','5502843074','Activo','2025-04-08 05:05:26','2025-04-08 05:05:26'),(7,'melissa_360','alberto1978@outlook.com','3d3d10c10bb74b34bb99401b1ee6ecec6f7b2d29d95883d8626d73ed9ad1858e','5505993817','Activo','2025-04-08 05:05:27','2025-04-08 05:05:27'),(8,'miguel_795','sofia4534@yahoo.com','5cf275ec2db15f418ba0515a745622b3ac70109304b461359612b660ec3c3ad1','5502306582','Suspendido','2025-04-08 05:05:27','2025-04-08 05:05:27'),(9,'monica_111','manuel6665@mail.com','51fb83e5a30167717ab4c965e8d35de8d9a8d61dd996270c85aecbeb92fc44e4','5508012642','Inactivo','2025-04-08 05:05:27','2025-04-08 05:05:27'),(10,'paula_146','luis686@mail.com','b5398e0996bdbbe7ec002e36eab21772fd45796ba48d5958d56a9b4b295d54a2','5507882881','Bloqueado','2025-04-08 05:05:27','2025-04-08 05:05:27'),(11,'valeria_162','gerardo6904@gmail.com','fefe61023fdafe7786eb7f6a124f3278185c353ef200de5eabaed293866a9ced','5505219926','Suspendido','2025-04-08 05:05:27','2025-04-08 05:05:27'),(12,'ximena_958','adrian6064@hotmail.com','03f91234cadd3143b3f6297dc65eaf106355462f5999cc97ba1e96cbe8228988','5503913471','Bloqueado','2025-04-08 05:05:27','2025-04-08 05:05:27'),(13,'enrique_996','luis1505@yahoo.com','1d52ec91946e2126655086dc70178bcde61cc16cfad511f50869e1b6188c24fc','5504108949','Activo','2025-04-08 05:05:27','2025-04-08 05:05:27'),(14,'roberto_850','julio9607@mail.com','cc27d6a633445b8ddb409e23caa3491a926c066ab14e50b167e221526eb1b019','5501859323','Suspendido','2025-04-08 05:05:27','2025-04-08 05:05:27'),(15,'julio_764','raul1709@hotmail.com','455020872aee94cd11c2005b2aba6760ee81529cb25347ad821a64eb1cf46168','5507574573','Activo','2025-04-08 05:05:27','2025-04-08 05:05:27'),(16,'ivan_189','karla7370@yahoo.com','df97c98b00762d4f04e997099b6c29294bcfadb679659817a54d09916beddb1c','5504921035','Suspendido','2025-04-08 05:05:27','2025-04-08 05:05:27'),(17,'ximena_66','marcela393@outlook.com','39448dced718eb9eaabc887c03985065848dc0a54303cee9a70d79948ffbd987','5500952410','Inactivo','2025-04-08 05:05:27','2025-04-08 05:05:27'),(18,'roberto_233','arturo1107@yahoo.com','838c18986f18e9f243c6dfacaefc498b69ab507c2a162de8fdc5df2c0e8d977b','5508993936','Bloqueado','2025-04-08 05:05:27','2025-04-08 05:05:27'),(19,'carlos_783','manuel3662@mail.com','06cac8761b4bd3643976b773a0f21a4f1056d323be646bf4e49bf25933d9a3be','5501856367','Activo','2025-04-08 05:05:27','2025-04-08 05:05:27'),(20,'paula_680','ximena4412@hotmail.com','6e8dab86806e678df8612bcaa65ccfb834816277e80aa970ae3c945fc78e7214','5509818258','Suspendido','2025-04-08 05:05:27','2025-04-08 05:05:27'),(21,'adrian_637','sofia5305@outlook.com','981837c265c9a11ebd711ede3e68fd19d74e7aa822b2b8a2f9af7e365efff2cf','5508121899','Activo','2025-04-08 05:05:27','2025-04-08 05:05:27'),(22,'manuel_627','raul2368@mail.com','82e3f616e3689bd01798ead6d308ecf87302d46a1862c9cdc5a7a3f0b689de29','5500094440','Activo','2025-04-08 05:05:27','2025-04-08 05:05:27'),(23,'luis_194','renata2747@hotmail.com','79d276887ad3e81a6aca6b859f3bfcb5561a3420abc6a072023e03e658558a23','5507799088','Bloqueado','2025-04-08 05:05:27','2025-04-08 05:05:27'),(24,'valeria_517','camila3229@gmail.com','73937a142601b099572919446e8d9b9d87f4044853a8f2b64b7e47db9efe233e','5501938786','Suspendido','2025-04-08 05:05:27','2025-04-08 05:05:27'),(25,'Bede','bede@gmail.com','$2b$12$gfXsXGnxzxyKvsfn9.Vh.OpCx/4pA8r3rJ/4GxdpSpVxFvzIwcmBa','123456789','Activo','2025-04-08 17:18:58','2025-04-08 17:18:58'),(26,'Espe12','espe@gmail.com','$2b$12$taQTTR.y7c0E9idjv/gu5.pXEtc1Sp1O6qbFzkQwNKA/YXL4IO1Cu','7641081079','Activo','2025-04-09 17:54:07','2025-04-09 17:54:07');
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbi_bitacora`
--

LOCK TABLES `tbi_bitacora` WRITE;
/*!40000 ALTER TABLE `tbi_bitacora` DISABLE KEYS */;
INSERT INTO `tbi_bitacora` VALUES (1,'root@localhost','Create','tbb_usuarios','Se ha registrado un nuevo USUARIO con el ID: 26 \n Nombre de Usuario: Espe12 \n Correo Electrónico: espe@gmail.com \n Número Telefónico: 7641081079 \n Estatus: Activo','2025-04-09 11:54:07','2025-04-09 11:54:07'),(2,'root@localhost','Create','tbc_sucursales','Se ha REGISTRADO una nueva SUCURSAL con ID: 1 \n Nombre: Sucursal 1 \n Dirección: Calle Falsa #893 \n Responsable ID: 10 \n Total Clientes Atendidos: 853 \n Promedio Clientes x Día: 66 \n Capacidad Máxima: 166 \n Total Empleados: 15 \n Horario Disponibilidad: Lunes a Viernes de 6:00 a 22:00 hrs \n Estatus: Inactivo','2025-04-09 22:30:43','2025-04-09 22:30:43'),(3,'root@localhost','Create','tbc_sucursales','Se ha REGISTRADO una nueva SUCURSAL con ID: 2 \n Nombre: Sucursal 2 \n Dirección: Calle Falsa #886 \n Responsable ID: 6 \n Total Clientes Atendidos: 9575 \n Promedio Clientes x Día: 31 \n Capacidad Máxima: 92 \n Total Empleados: 25 \n Horario Disponibilidad: Lunes a Viernes de 6:00 a 22:00 hrs \n Estatus: Inactivo','2025-04-09 22:30:43','2025-04-09 22:30:43'),(4,'root@localhost','Create','tbc_sucursales','Se ha REGISTRADO una nueva SUCURSAL con ID: 3 \n Nombre: Sucursal 3 \n Dirección: Calle Falsa #731 \n Responsable ID: 5 \n Total Clientes Atendidos: 2542 \n Promedio Clientes x Día: 90 \n Capacidad Máxima: 99 \n Total Empleados: 47 \n Horario Disponibilidad: Lunes a Viernes de 6:00 a 22:00 hrs \n Estatus: Inactivo','2025-04-09 22:30:43','2025-04-09 22:30:43'),(5,'root@localhost','Create','tbc_sucursales','Se ha REGISTRADO una nueva SUCURSAL con ID: 4 \n Nombre: Sucursal 4 \n Dirección: Calle Falsa #766 \n Responsable ID: 5 \n Total Clientes Atendidos: 9854 \n Promedio Clientes x Día: 65 \n Capacidad Máxima: 215 \n Total Empleados: 28 \n Horario Disponibilidad: Lunes a Viernes de 6:00 a 22:00 hrs \n Estatus: Activo','2025-04-09 22:30:43','2025-04-09 22:30:43'),(6,'root@localhost','Create','tbc_sucursales','Se ha REGISTRADO una nueva SUCURSAL con ID: 5 \n Nombre: Sucursal 5 \n Dirección: Calle Falsa #836 \n Responsable ID: 7 \n Total Clientes Atendidos: 7095 \n Promedio Clientes x Día: 71 \n Capacidad Máxima: 239 \n Total Empleados: 50 \n Horario Disponibilidad: Lunes a Viernes de 6:00 a 22:00 hrs \n Estatus: Activo','2025-04-09 22:30:43','2025-04-09 22:30:43'),(7,'root@localhost','Create','tbc_sucursales','Se ha REGISTRADO una nueva SUCURSAL con ID: 6 \n Nombre: Sucursal 6 \n Dirección: Calle Falsa #594 \n Responsable ID: 10 \n Total Clientes Atendidos: 1865 \n Promedio Clientes x Día: 104 \n Capacidad Máxima: 87 \n Total Empleados: 9 \n Horario Disponibilidad: Lunes a Viernes de 6:00 a 22:00 hrs \n Estatus: Activo','2025-04-09 22:30:43','2025-04-09 22:30:43'),(8,'root@localhost','Create','tbc_sucursales','Se ha REGISTRADO una nueva SUCURSAL con ID: 7 \n Nombre: Sucursal 7 \n Dirección: Calle Falsa #333 \n Responsable ID: 9 \n Total Clientes Atendidos: 4483 \n Promedio Clientes x Día: 67 \n Capacidad Máxima: 152 \n Total Empleados: 47 \n Horario Disponibilidad: Lunes a Viernes de 6:00 a 22:00 hrs \n Estatus: Activo','2025-04-09 22:30:43','2025-04-09 22:30:43'),(9,'root@localhost','Create','tbc_sucursales','Se ha REGISTRADO una nueva SUCURSAL con ID: 8 \n Nombre: Sucursal 8 \n Dirección: Calle Falsa #153 \n Responsable ID: 6 \n Total Clientes Atendidos: 2023 \n Promedio Clientes x Día: 51 \n Capacidad Máxima: 141 \n Total Empleados: 7 \n Horario Disponibilidad: Lunes a Viernes de 6:00 a 22:00 hrs \n Estatus: Activo','2025-04-09 22:30:43','2025-04-09 22:30:43'),(10,'root@localhost','Create','tbc_sucursales','Se ha REGISTRADO una nueva SUCURSAL con ID: 9 \n Nombre: Sucursal 9 \n Dirección: Calle Falsa #319 \n Responsable ID: 10 \n Total Clientes Atendidos: 5848 \n Promedio Clientes x Día: 29 \n Capacidad Máxima: 96 \n Total Empleados: 33 \n Horario Disponibilidad: Lunes a Viernes de 6:00 a 22:00 hrs \n Estatus: Inactivo','2025-04-09 22:30:43','2025-04-09 22:30:43'),(11,'root@localhost','Create','tbc_sucursales','Se ha REGISTRADO una nueva SUCURSAL con ID: 10 \n Nombre: Sucursal 10 \n Dirección: Calle Falsa #89 \n Responsable ID: 10 \n Total Clientes Atendidos: 5544 \n Promedio Clientes x Día: 97 \n Capacidad Máxima: 195 \n Total Empleados: 5 \n Horario Disponibilidad: Lunes a Viernes de 6:00 a 22:00 hrs \n Estatus: Activo','2025-04-09 22:30:43','2025-04-09 22:30:43'),(12,'root@localhost','Create','tbb_equipamientos','Se ha REGISTRADO un nuevo EQUIPO con ID: 3 \n Nombre: Equipo 1 \n Marca: Marca F \n Modelo: Modelo-58 \n Total Existencias: 4 \n Estatus: Activo','2025-04-09 22:46:17','2025-04-09 22:46:17'),(13,'root@localhost','Create','tbb_equipamientos','Se ha REGISTRADO un nuevo EQUIPO con ID: 4 \n Nombre: Equipo 2 \n Marca: Marca P \n Modelo: Modelo-710 \n Total Existencias: 14 \n Estatus: Activo','2025-04-09 22:46:17','2025-04-09 22:46:17'),(14,'root@localhost','Create','tbb_equipamientos','Se ha REGISTRADO un nuevo EQUIPO con ID: 5 \n Nombre: Equipo 3 \n Marca: Marca B \n Modelo: Modelo-983 \n Total Existencias: 22 \n Estatus: Activo','2025-04-09 22:46:17','2025-04-09 22:46:17'),(15,'root@localhost','Create','tbb_equipamientos','Se ha REGISTRADO un nuevo EQUIPO con ID: 6 \n Nombre: Equipo 4 \n Marca: Marca K \n Modelo: Modelo-880 \n Total Existencias: 7 \n Estatus: Inactivo','2025-04-09 22:46:17','2025-04-09 22:46:17'),(16,'root@localhost','Create','tbb_equipamientos','Se ha REGISTRADO un nuevo EQUIPO con ID: 7 \n Nombre: Equipo 5 \n Marca: Marca P \n Modelo: Modelo-352 \n Total Existencias: 21 \n Estatus: Activo','2025-04-09 22:46:17','2025-04-09 22:46:17'),(17,'root@localhost','Create','tbb_equipamientos','Se ha REGISTRADO un nuevo EQUIPO con ID: 8 \n Nombre: Equipo 6 \n Marca: Marca N \n Modelo: Modelo-634 \n Total Existencias: 30 \n Estatus: Activo','2025-04-09 22:46:17','2025-04-09 22:46:17'),(18,'root@localhost','Create','tbb_equipamientos','Se ha REGISTRADO un nuevo EQUIPO con ID: 9 \n Nombre: Equipo 7 \n Marca: Marca E \n Modelo: Modelo-965 \n Total Existencias: 15 \n Estatus: Inactivo','2025-04-09 22:46:17','2025-04-09 22:46:17'),(19,'root@localhost','Create','tbb_equipamientos','Se ha REGISTRADO un nuevo EQUIPO con ID: 10 \n Nombre: Equipo 8 \n Marca: Marca Q \n Modelo: Modelo-657 \n Total Existencias: 2 \n Estatus: Inactivo','2025-04-09 22:46:17','2025-04-09 22:46:17'),(20,'root@localhost','Create','tbb_equipamientos','Se ha REGISTRADO un nuevo EQUIPO con ID: 11 \n Nombre: Equipo 9 \n Marca: Marca C \n Modelo: Modelo-272 \n Total Existencias: 19 \n Estatus: Inactivo','2025-04-09 22:46:17','2025-04-09 22:46:17'),(21,'root@localhost','Create','tbb_equipamientos','Se ha REGISTRADO un nuevo EQUIPO con ID: 12 \n Nombre: Equipo 10 \n Marca: Marca V \n Modelo: Modelo-239 \n Total Existencias: 1 \n Estatus: Activo','2025-04-09 22:46:17','2025-04-09 22:46:17'),(22,'root@localhost','Create','tbb_equipamientos','Se ha REGISTRADO un nuevo EQUIPO con ID: 13 \n Nombre: Zancadora \n Marca: Marca C \n Modelo: Modelo-970 \n Total Existencias: 1 \n Estatus: Activo','2025-04-09 22:59:02','2025-04-09 22:59:02'),(23,'root@localhost','Create','tbb_equipamientos','Se ha REGISTRADO un nuevo EQUIPO con ID: 14 \n Nombre: Elíptica \n Marca: Marca J \n Modelo: Modelo-951 \n Total Existencias: 63 \n Estatus: Activo','2025-04-09 22:59:02','2025-04-09 22:59:02'),(24,'root@localhost','Create','tbb_equipamientos','Se ha REGISTRADO un nuevo EQUIPO con ID: 15 \n Nombre: Bicicleta Estática \n Marca: Marca H \n Modelo: Modelo-372 \n Total Existencias: 78 \n Estatus: Activo','2025-04-09 22:59:02','2025-04-09 22:59:02'),(25,'root@localhost','Create','tbb_equipamientos','Se ha REGISTRADO un nuevo EQUIPO con ID: 16 \n Nombre: Press Militar \n Marca: Marca L \n Modelo: Modelo-377 \n Total Existencias: 57 \n Estatus: Activo','2025-04-09 22:59:02','2025-04-09 22:59:02'),(26,'root@localhost','Create','tbb_equipamientos','Se ha REGISTRADO un nuevo EQUIPO con ID: 17 \n Nombre: Caminadora \n Marca: Marca G \n Modelo: Modelo-759 \n Total Existencias: 72 \n Estatus: Activo','2025-04-09 22:59:02','2025-04-09 22:59:02'),(27,'root@localhost','Create','tbb_equipamientos','Se ha REGISTRADO un nuevo EQUIPO con ID: 18 \n Nombre: Remo \n Marca: Marca T \n Modelo: Modelo-994 \n Total Existencias: 69 \n Estatus: Activo','2025-04-09 22:59:02','2025-04-09 22:59:02'),(28,'root@localhost','Create','tbb_equipamientos','Se ha REGISTRADO un nuevo EQUIPO con ID: 19 \n Nombre: Elíptica \n Marca: Marca C \n Modelo: Modelo-798 \n Total Existencias: 9 \n Estatus: Activo','2025-04-09 22:59:02','2025-04-09 22:59:02'),(29,'root@localhost','Create','tbb_equipamientos','Se ha REGISTRADO un nuevo EQUIPO con ID: 20 \n Nombre: Máquina de Pecho \n Marca: Marca L \n Modelo: Modelo-151 \n Total Existencias: 85 \n Estatus: Inactivo','2025-04-09 22:59:02','2025-04-09 22:59:02'),(30,'root@localhost','Create','tbb_equipamientos','Se ha REGISTRADO un nuevo EQUIPO con ID: 21 \n Nombre: Zancadora \n Marca: Marca S \n Modelo: Modelo-82 \n Total Existencias: 89 \n Estatus: Inactivo','2025-04-09 22:59:02','2025-04-09 22:59:02'),(31,'root@localhost','Create','tbb_equipamientos','Se ha REGISTRADO un nuevo EQUIPO con ID: 22 \n Nombre: Barras \n Marca: Marca D \n Modelo: Modelo-318 \n Total Existencias: 26 \n Estatus: Inactivo','2025-04-09 22:59:02','2025-04-09 22:59:02'),(32,'root@localhost','Create','tbb_instalaciones','Se ha registrado una nueva INSTALACIÓN con el ID: 2 \n Descripción: Cancha equipada con lo necesario. \n Tipo: Cancha \n Observaciones: Sin observaciones. \n Estatus: 1','2025-04-09 23:07:03','2025-04-09 23:07:03'),(33,'root@localhost','Create','tbb_instalaciones','Se ha registrado una nueva INSTALACIÓN con el ID: 3 \n Descripción: Alberca equipada con lo necesario. \n Tipo: Alberca \n Observaciones: Sin observaciones. \n Estatus: 1','2025-04-09 23:07:03','2025-04-09 23:07:03'),(34,'root@localhost','Create','tbb_instalaciones','Se ha registrado una nueva INSTALACIÓN con el ID: 4 \n Descripción: Área de Pesas equipada con lo necesario. \n Tipo: Área de Pesas \n Observaciones: Sin observaciones. \n Estatus: 0','2025-04-09 23:07:03','2025-04-09 23:07:03'),(35,'root@localhost','Create','tbb_instalaciones','Se ha registrado una nueva INSTALACIÓN con el ID: 5 \n Descripción: Cancha equipada con lo necesario. \n Tipo: Cancha \n Observaciones: Sin observaciones. \n Estatus: 1','2025-04-09 23:07:03','2025-04-09 23:07:03'),(36,'root@localhost','Create','tbb_instalaciones','Se ha registrado una nueva INSTALACIÓN con el ID: 6 \n Descripción: Alberca equipada con lo necesario. \n Tipo: Alberca \n Observaciones: Sin observaciones. \n Estatus: 1','2025-04-09 23:07:03','2025-04-09 23:07:03'),(37,'root@localhost','Update','tbb_instalaciones','Se ha actualizado una INSTALACIÓN con el ID: 6 \n Descripción (Anterior): Alberca equipada con lo necesario. \n Descripción (Nueva): Alberca equipada con camastros. \n Tipo (Anterior): Alberca \n Tipo (Nuevo): Alberca \n Estatus (Anterior): 1 \n Estatus (Nuevo): 1','2025-04-09 23:07:54','2025-04-09 23:07:54'),(38,'root@localhost','Before-Delete','tbb_equipamientos','INTENTO de ELIMINACIÓN del EQUIPO con ID: 22 \n Nombre: Barras , Marca: Marca D , Modelo: Modelo-318 \n Total Existencias: 26','2025-04-09 23:09:57','2025-04-09 23:09:57'),(39,'root@localhost','Delete','tbb_equipamientos','Se ha ELIMINADO un EQUIPO con ID: 22 \n Nombre: Barras , Marca: Marca D , Modelo: Modelo-318 \n Total Existencias: 26 , Estatus: Inactivo','2025-04-09 23:09:57','2025-04-09 23:09:57'),(40,'root@localhost','Before-Delete','tbb_equipamientos','INTENTO de ELIMINACIÓN del EQUIPO con ID: 21 \n Nombre: Zancadora , Marca: Marca S , Modelo: Modelo-82 \n Total Existencias: 89','2025-04-09 23:16:24','2025-04-09 23:16:24'),(41,'root@localhost','Delete','tbb_equipamientos','Se ha ELIMINADO un EQUIPO con ID: 21 \n Nombre: Zancadora , Marca: Marca S , Modelo: Modelo-82 \n Total Existencias: 89 , Estatus: Inactivo','2025-04-09 23:16:24','2025-04-09 23:16:24'),(42,'root@localhost','Delete','tbb_instalaciones','Se ha eliminado una INSTALACIÓN con el ID: 6 \n Descripción: Alberca equipada con camastros. \n Tipo: Alberca \n Observaciones: Sin observaciones. \n Estatus: Inactivo','2025-04-09 23:16:33','2025-04-09 23:16:33'),(43,'root@localhost','Update','tbb_instalaciones','Se ha actualizado una INSTALACIÓN con el ID: 5 \n Descripción (Anterior): Cancha equipada con lo necesario. \n Descripción (Nueva): Cancha equipada con llardas. \n Tipo (Anterior): Cancha \n Tipo (Nuevo): Cancha \n Estatus (Anterior): 1 \n Estatus (Nuevo): 1','2025-04-09 23:17:05','2025-04-09 23:17:05');
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

-- Dump completed on 2025-04-10  0:07:39
