-- MySQL dump 10.16  Distrib 10.1.21-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: localhost
-- ------------------------------------------------------
-- Server version	10.1.21-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `proyecto`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `proyecto` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `proyecto`;

--
-- Table structure for table `clases`
--

DROP TABLE IF EXISTS `clases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clases` (
  `class` varchar(15) NOT NULL,
  `phylum` varchar(15) NOT NULL,
  PRIMARY KEY (`class`),
  KEY `phylum` (`phylum`),
  CONSTRAINT `clases_ibfk_1` FOREIGN KEY (`phylum`) REFERENCES `filos` (`phylum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clases`
--

LOCK TABLES `clases` WRITE;
/*!40000 ALTER TABLE `clases` DISABLE KEYS */;
/*!40000 ALTER TABLE `clases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `distribuciones`
--

DROP TABLE IF EXISTS `distribuciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `distribuciones` (
  `id` varchar(6) NOT NULL,
  `all_fullnames` varchar(2100) NOT NULL,
  `all_isocodes` varchar(600) NOT NULL,
  `native_fullnames` varchar(2000) DEFAULT NULL,
  `introduced` varchar(2000) DEFAULT NULL,
  `introduced_q` varchar(500) DEFAULT NULL,
  `reintroduced` varchar(600) DEFAULT NULL,
  `extinct` varchar(400) DEFAULT NULL,
  `extinct_q` varchar(400) DEFAULT NULL,
  `uncertain` varchar(400) DEFAULT NULL,
  KEY `id` (`id`),
  CONSTRAINT `distribuciones_ibfk_1` FOREIGN KEY (`id`) REFERENCES `especies` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distribuciones`
--

LOCK TABLES `distribuciones` WRITE;
/*!40000 ALTER TABLE `distribuciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `distribuciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `especies`
--

DROP TABLE IF EXISTS `especies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `especies` (
  `id` varchar(6) NOT NULL,
  `nom_especie` varchar(20) NOT NULL,
  `genus` varchar(20) NOT NULL,
  `nom_cientifico` varchar(40) NOT NULL,
  `author` varchar(75) DEFAULT NULL,
  `rank` varchar(12) NOT NULL,
  `listing` varchar(35) DEFAULT NULL,
  `listed_under` varchar(35) NOT NULL,
  `full_note` varchar(310) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `genus` (`genus`),
  CONSTRAINT `especies_ibfk_1` FOREIGN KEY (`genus`) REFERENCES `generos` (`genus`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especies`
--

LOCK TABLES `especies` WRITE;
/*!40000 ALTER TABLE `especies` DISABLE KEYS */;
/*!40000 ALTER TABLE `especies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `familias`
--

DROP TABLE IF EXISTS `familias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `familias` (
  `family` varchar(20) NOT NULL,
  `orders` varchar(20) NOT NULL,
  PRIMARY KEY (`family`),
  KEY `orders` (`orders`),
  CONSTRAINT `familias_ibfk_1` FOREIGN KEY (`orders`) REFERENCES `ordenes` (`orders`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `familias`
--

LOCK TABLES `familias` WRITE;
/*!40000 ALTER TABLE `familias` DISABLE KEYS */;
/*!40000 ALTER TABLE `familias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filos`
--

DROP TABLE IF EXISTS `filos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filos` (
  `phylum` varchar(15) NOT NULL,
  `animalia` varchar(10) NOT NULL,
  PRIMARY KEY (`phylum`),
  KEY `animalia` (`animalia`),
  CONSTRAINT `filos_ibfk_1` FOREIGN KEY (`animalia`) REFERENCES `reino` (`animalia`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filos`
--

LOCK TABLES `filos` WRITE;
/*!40000 ALTER TABLE `filos` DISABLE KEYS */;
/*!40000 ALTER TABLE `filos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generos`
--

DROP TABLE IF EXISTS `generos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `generos` (
  `genus` varchar(20) NOT NULL,
  `family` varchar(20) NOT NULL,
  PRIMARY KEY (`genus`),
  KEY `family` (`family`),
  CONSTRAINT `generos_ibfk_1` FOREIGN KEY (`family`) REFERENCES `familias` (`family`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generos`
--

LOCK TABLES `generos` WRITE;
/*!40000 ALTER TABLE `generos` DISABLE KEYS */;
/*!40000 ALTER TABLE `generos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordenes`
--

DROP TABLE IF EXISTS `ordenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ordenes` (
  `orders` varchar(20) NOT NULL,
  `class` varchar(15) NOT NULL,
  PRIMARY KEY (`orders`),
  KEY `class` (`class`),
  CONSTRAINT `ordenes_ibfk_1` FOREIGN KEY (`class`) REFERENCES `clases` (`class`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordenes`
--

LOCK TABLES `ordenes` WRITE;
/*!40000 ALTER TABLE `ordenes` DISABLE KEYS */;
/*!40000 ALTER TABLE `ordenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `party`
--

DROP TABLE IF EXISTS `party`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `party` (
  `id` varchar(6) NOT NULL,
  `party` varchar(15) DEFAULT NULL,
  KEY `id` (`id`),
  CONSTRAINT `party_ibfk_1` FOREIGN KEY (`id`) REFERENCES `especies` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `party`
--

LOCK TABLES `party` WRITE;
/*!40000 ALTER TABLE `party` DISABLE KEYS */;
/*!40000 ALTER TABLE `party` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reino`
--

DROP TABLE IF EXISTS `reino`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reino` (
  `animalia` varchar(10) NOT NULL,
  PRIMARY KEY (`animalia`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reino`
--

LOCK TABLES `reino` WRITE;
/*!40000 ALTER TABLE `reino` DISABLE KEYS */;
/*!40000 ALTER TABLE `reino` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subespecies`
--

DROP TABLE IF EXISTS `subespecies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subespecies` (
  `id` varchar(6) NOT NULL,
  `nom_subespecie` varchar(15) DEFAULT NULL,
  `nom_cientifico` varchar(40) NOT NULL,
  `author` varchar(75) DEFAULT NULL,
  `rank` varchar(12) NOT NULL,
  `listing` varchar(75) DEFAULT NULL,
  `lister_under` varchar(35) NOT NULL,
  `full_note` varchar(310) DEFAULT NULL,
  KEY `id` (`id`),
  CONSTRAINT `subespecies_ibfk_1` FOREIGN KEY (`id`) REFERENCES `especies` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subespecies`
--

LOCK TABLES `subespecies` WRITE;
/*!40000 ALTER TABLE `subespecies` DISABLE KEYS */;
/*!40000 ALTER TABLE `subespecies` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-29 12:53:10
