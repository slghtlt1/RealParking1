CREATE TABLE Tichete (
    ID int not null ,
    Data date,
    primary key (ID)
);

CREATE TABLE InforTichet(
    IDTichet INT NOT NULL,
    NrInmatriculare VARCHAR(255) NULL,
    OraIntrare DATETIME NULL,
    Foreign Key(IDTichet) References Tichete(ID)
);

CREATE TABLE InforParcare(
    IDLocuri INT NOT NULL,
    nrLocuriDisponibile INT NULL,
    nrMasiniInParcare INT NULL,
    Foreign Key(IDLocuri) References Tichete(ID)
);

// de jos ii ce mi-a exportat WorkBanch



-- MySQL dump 10.13  Distrib 8.0.21, for macos10.15 (x86_64)
--
-- Host: 127.0.0.1    Database: AutonomParking
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `InforParcare`
--

DROP TABLE IF EXISTS `InforParcare`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `InforParcare` (
  `IDLocuri` int NOT NULL AUTO_INCREMENT,
  `nrLocuriDisponibile` int DEFAULT NULL,
  `nrMasiniInParcare` int DEFAULT NULL,
  PRIMARY KEY (`IDLocuri`),
  CONSTRAINT `inforparcare_ibfk_1` FOREIGN KEY (`IDLocuri`) REFERENCES `Tichete` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `InforParcare`
--

LOCK TABLES `InforParcare` WRITE;
/*!40000 ALTER TABLE `InforParcare` DISABLE KEYS */;
/*!40000 ALTER TABLE `InforParcare` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-17 22:29:07

