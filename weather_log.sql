-- MariaDB dump 10.19  Distrib 10.7.3-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: tokyo_weather
-- ------------------------------------------------------
-- Server version	10.7.3-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `weather_log`
--

DROP TABLE IF EXISTS `weather_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weather_log` (
  `date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `temperature` double DEFAULT NULL,
  `pressure` double DEFAULT NULL,
  `humidity` double DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weather_log`
--

LOCK TABLES `weather_log` WRITE;
/*!40000 ALTER TABLE `weather_log` DISABLE KEYS */;
INSERT INTO `weather_log` VALUES
('2022:03:10','14:16:56',286.4,1021,36,'broken clouds');
/*!40000 ALTER TABLE `weather_log` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;-- MariaDB dump 10.19  Distrib 10.7.3-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: tokyo_weather
-- ------------------------------------------------------
-- Server version	10.7.3-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `weather_log`
--

DROP TABLE IF EXISTS `weather_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weather_log` (
  `date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `temperature` double DEFAULT NULL,
  `pressure` double DEFAULT NULL,
  `humidity` double DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weather_log`
--

LOCK TABLES `weather_log` WRITE;
/*!40000 ALTER TABLE `weather_log` DISABLE KEYS */;
INSERT INTO `weather_log` VALUES
('2022:03:10','14:16:56',286.4,1021,36,'broken clouds'),
('2022:03:10','15:00:01',286.81,1020,36,'broken clouds'),
('2022:03:10','21:00:01',283.03,1022,60,'few clouds'),
('2022:03:12','06:00:02',282.53,1015,60,'few clouds'),
('2022:03:12','07:00:01',283.22,1016,62,'clear sky'),
('2022:03:12','08:00:01',285.01,1016,60,'clear sky'),
('2022:03:12','09:00:02',286.63,1016,54,'clear sky'),
('2022:03:12','11:00:02',290.39,1016,38,'clear sky'),
('2022:03:12','12:00:01',291.49,1015,34,'few clouds'),
('2022:03:12','13:00:01',292.12,1015,35,'few clouds'),
('2022:03:12','14:00:02',292.16,1014,35,'clear sky'),
('2022:03:12','15:00:01',293.68,1014,30,'clear sky'),
('2022:03:12','16:00:04',293.53,1014,27,'clear sky'),
('2022:03:12','17:00:08',292.33,1014,32,'clear sky'),
('2022:03:12','18:00:01',290.91,1015,33,'clear sky'),
('2022:03:12','19:00:01',290.06,1016,34,'clear sky'),
('2022:03:12','20:00:01',289.1,1017,40,'few clouds'),
('2022:03:12','21:00:01',288.17,1017,46,'few clouds'),
('2022:03:12','22:00:01',287.41,1018,50,'few clouds'),
('2022:03:12','23:00:01',286.43,1018,55,'few clouds'),
('2022:03:13','00:00:01',285.91,1018,62,'scattered clouds'),
('2022:03:13','01:00:01',285.19,1017,66,'few clouds'),
('2022:03:13','02:00:03',285.06,1018,69,'broken clouds'),
('2022:03:13','03:00:01',284.24,1018,79,'broken clouds'),
('2022:03:13','04:00:05',283.99,1017,78,'broken clouds'),
('2022:03:13','05:00:02',283.74,1019,71,'broken clouds'),
('2022:03:13','08:00:01',284.56,1019,61,'broken clouds'),
('2022:03:13','09:00:02',285.45,1019,56,'broken clouds'),
('2022:03:13','11:00:01',288.6,1018,53,'broken clouds'),
('2022:03:13','12:00:02',289.24,1017,52,'broken clouds'),
('2022:03:13','13:00:01',290.71,1016,49,'broken clouds'),
('2022:03:13','14:00:05',290.71,1015,52,'broken clouds'),
('2022:03:13','15:00:01',291.52,1015,52,'clear sky'),
('2022:03:13','16:00:02',291.88,1013,58,'broken clouds'),
('2022:03:13','17:00:01',291.5,1013,61,'broken clouds'),
('2022:03:13','18:00:02',291.53,1013,55,'broken clouds'),
('2022:03:13','19:00:01',291.15,1013,57,'broken clouds'),
('2022:03:13','20:00:01',290.76,1013,63,'broken clouds'),
('2022:03:13','21:00:02',290.47,1013,64,'broken clouds'),
('2022:03:13','22:00:01',290.25,1013,64,'broken clouds'),
('2022:03:13','23:00:01',290.17,1012,64,'broken clouds'),
('2022:03:14','00:00:01',289.61,1011,66,'light rain'),
('2022:03:14','01:00:02',289.11,1011,67,'broken clouds'),
('2022:03:14','02:00:01',289.21,1010,71,'broken clouds'),
('2022:03:14','03:00:01',289.4,1009,74,'moderate rain'),
('2022:03:14','04:00:02',289.98,1008,71,'broken clouds'),
('2022:03:14','05:00:07',290.03,1010,72,'light rain'),
('2022:03:14','06:00:02',287.93,1011,70,'light intensity shower rain'),
('2022:03:14','07:00:01',287.11,1009,86,'mist'),
('2022:03:14','10:00:01',291.53,1010,74,'scattered clouds'),
('2022:03:14','11:00:02',294.08,1010,59,'few clouds'),
('2022:03:14','12:00:01',295.38,1010,53,'few clouds'),
('2022:03:14','13:00:01',296.41,1009,48,'clear sky'),
('2022:03:14','14:00:01',295.86,1009,49,'clear sky'),
('2022:03:14','15:00:01',296.19,1009,46,'clear sky'),
('2022:03:14','16:00:01',295.81,1008,46,'clear sky'),
('2022:03:14','17:00:01',294.48,1008,52,'few clouds'),
('2022:03:14','18:00:01',292.74,1008,62,'broken clouds'),
('2022:03:14','19:00:01',288.77,1010,70,'broken clouds'),
('2022:03:14','20:00:02',286.02,1011,73,'broken clouds'),
('2022:03:15','12:00:01',287.08,1006,68,'broken clouds'),
('2022:03:15','13:00:01',289.07,1005,64,'scattered clouds'),
('2022:03:15','14:00:02',290.54,1005,60,'few clouds'),
('2022:03:16','05:00:11',285.17,1013,56,'broken clouds'),
('2022:03:16','06:00:01',284.94,1014,61,'broken clouds'),
('2022:03:16','07:00:01',284.89,1014,58,'broken clouds'),
('2022:03:16','08:00:01',285.19,1015,58,'broken clouds'),
('2022:03:16','09:00:02',285.94,1016,54,'broken clouds'),
('2022:03:16','10:00:01',287.45,1015,54,'broken clouds');
/*!40000 ALTER TABLE `weather_log` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-15 21:25:14


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-09 23:24:36
