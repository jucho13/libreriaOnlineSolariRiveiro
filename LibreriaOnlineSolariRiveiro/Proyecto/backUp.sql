-- backUp de mi base de datos my_new_proyect

-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: my_new_proyect
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Dumping data for table `autor`
--

LOCK TABLES `autor` WRITE;
/*!40000 ALTER TABLE `autor` DISABLE KEYS */;
INSERT INTO `autor` VALUES (1,'2019-06-11','Argentina'),(2,'2020-02-15','España'),(3,'2018-11-27','México'),(4,'2022-07-04','Estados Unidos'),(5,'2021-09-30','Brasil'),(6,'2023-01-18','Francia'),(7,'2020-12-01','Italia'),(8,'2022-03-22','Alemania'),(9,'2021-05-09','Chile'),(10,'2023-06-02','Canadá');
/*!40000 ALTER TABLE `autor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,0,'Carlos','Zambrano','Peru','2012-12-11'),(2,0,'Ruben','Venegas','Bolivia','2015-11-01'),(3,0,'Carlos','Bianchi','Francia','2012-10-11'),(4,0,'Pedro','Aznar','Chile','2015-02-21'),(5,0,'Dario','Pong','China','2017-05-13'),(6,1,'Carlos','Lopez','Uruguay','2011-10-03'),(7,0,'Esteban','Artero','Francia','2022-04-04'),(8,0,'Pedro','Pascal','Argentina','2022-11-11'),(9,0,'Dario','Loperfido','Peru','2012-10-11'),(10,0,'Cesar','Bueno','Bolivia','2012-05-11'),(11,0,'Julian','Zarate','Argentina','2019-06-11');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `compras`
--

LOCK TABLES `compras` WRITE;
/*!40000 ALTER TABLE `compras` DISABLE KEYS */;
INSERT INTO `compras` VALUES (1,3,5,8,2,6,49.99,'2022-05-15','EFT'),(2,1,7,4,3,9,29.99,'2022-09-02','CDNI'),(3,2,9,6,5,1,19.99,'2022-07-18','MP'),(4,5,8,2,1,4,39.99,'2022-11-30','TRANSF'),(5,4,2,1,9,10,59.99,'2022-08-25','TC'),(6,10,6,9,7,3,14.99,'2022-06-11','TD'),(7,9,4,5,6,2,24.99,'2022-12-05','EFT'),(8,7,1,3,10,5,34.99,'2022-10-20','CDNI'),(9,8,3,10,4,8,44.99,'2022-07-29','MP'),(10,6,10,7,8,7,54.99,'2022-09-14','TRANSF'),(11,4,3,5,3,8,1222.2,'2012-10-04','MP'),(12,1,1,9,4,5,22.2,'2011-11-11','TRANS'),(13,6,4,1,2,1,64.2,'2017-10-23','CDNI'),(14,7,2,5,2,3,232.2,'2012-12-04','MP'),(15,2,5,6,1,4,122.23,'2023-02-12','CDNI');
/*!40000 ALTER TABLE `compras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `editorial`
--

LOCK TABLES `editorial` WRITE;
/*!40000 ALTER TABLE `editorial` DISABLE KEYS */;
INSERT INTO `editorial` VALUES (1,'Editorial XYZ','Argentina',0),(2,'Editorial ABC','Brasil',0),(3,'Editorial QWERTY','Chile',0),(4,'Editorial 123','México',1),(5,'Editorial Random','España',0),(6,'Editorial Libros Rápidos','Francia',0),(7,'Editorial Bestseller','Italia',0),(8,'Editorial Letras Grandes','Alemania',0),(9,'Editorial Books Unlimited','Estados Unidos',0),(10,'Editorial Bookworm','Canadá',0);
/*!40000 ALTER TABLE `editorial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `genero`
--

LOCK TABLES `genero` WRITE;
/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
INSERT INTO `genero` VALUES (1,'Acción'),(2,'Aventura'),(3,'Comedia'),(4,'Drama'),(5,'Ciencia ficción'),(6,'Romance'),(7,'Terror'),(8,'Fantasía'),(9,'Suspense'),(10,'Documental');
/*!40000 ALTER TABLE `genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `logbitacora`
--

LOCK TABLES `logbitacora` WRITE;
/*!40000 ALTER TABLE `logbitacora` DISABLE KEYS */;
INSERT INTO `logbitacora` VALUES (14,'root@localhost',232.2,'2023-06-19 00:04:07'),(15,'root@localhost',122.23,'2023-06-19 20:21:18');
/*!40000 ALTER TABLE `logbitacora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'2022-05-27',78.95,3,'El secreto de la montaña',0),(2,'2023-01-15',55.2,6,'El laberinto de los sueños',1),(3,'2021-09-10',109.99,2,'El poder de la imaginación',0),(4,'2022-11-03',45.5,1,'El jardín de las mariposas',0),(5,'2023-06-08',67.8,8,'El susurro de la noche',0),(6,'2022-07-19',92.75,9,'El último adiós',0),(7,'2021-12-05',34.99,5,'El vuelo de la mariposa',0),(8,'2023-02-28',79.99,7,'El eco de la montaña',0),(9,'2021-06-21',28.5,10,'El amanecer dorado',0),(10,'2022-09-14',63.25,4,'La sombra del pasado',0);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `sitio`
--

LOCK TABLES `sitio` WRITE;
/*!40000 ALTER TABLE `sitio` DISABLE KEYS */;
INSERT INTO `sitio` VALUES (1,'E-Commerce Store 1','Argentina','ecommercestore1.com',1),(2,'Online Shop 2','Brasil','onlineshop2.com',0),(3,'Digital Marketplace','Chile','digitalmarketplace.com',0),(4,'eShop Plus','México','eshopplus.com',0),(5,'Global Online Mart','España','globalonlinemart.com',0),(6,'Webstore Express','Francia','webstoreexpress.com',0),(7,'Virtual Mall','Italia','virtualmall.com',0),(8,'Online Outlet','Alemania','onlineoutlet.com',0),(9,'eCommerce Hub','Estados Unidos','ecommercehub.com',0),(10,'eShop Pro','Canadá','eshoppro.com',0);
/*!40000 ALTER TABLE `sitio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `votos`
--

LOCK TABLES `votos` WRITE;
/*!40000 ALTER TABLE `votos` DISABLE KEYS */;
INSERT INTO `votos` VALUES (1,3,5,8),(2,1,7,4),(3,2,9,6),(4,5,8,2),(5,4,2,1),(6,10,6,9),(7,9,4,5),(8,7,1,3),(9,8,3,10),(10,6,10,7),(11,3,9,2),(12,3,10,3),(13,2,0,7);
/*!40000 ALTER TABLE `votos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-19 19:25:23
