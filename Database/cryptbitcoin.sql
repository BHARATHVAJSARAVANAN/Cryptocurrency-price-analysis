CREATE DATABASE  IF NOT EXISTS `cryptbitcoin` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `cryptbitcoin`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: cryptbitcoin
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `agentbuyedtransactions`
--

DROP TABLE IF EXISTS `agentbuyedtransactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agentbuyedtransactions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `agentName` varchar(100) NOT NULL,
  `agentemail` varchar(100) NOT NULL,
  `currencyname` varchar(100) NOT NULL,
  `currentprice` float NOT NULL,
  `quantity` int NOT NULL,
  `payableammount` float NOT NULL,
  `cardnumber` varchar(40) NOT NULL,
  `nameoncard` varchar(100) NOT NULL,
  `cardexpiry` varchar(100) NOT NULL,
  `cvv` int NOT NULL,
  `cdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agentbuyedtransactions`
--

LOCK TABLES `agentbuyedtransactions` WRITE;
/*!40000 ALTER TABLE `agentbuyedtransactions` DISABLE KEYS */;
INSERT INTO `agentbuyedtransactions` VALUES (1,'agent1','agent1@gmail.com','Bitcoin',94963.2,50,4748160,'1234567891234567','agent1','2026-01',123,'2024-11-26 12:46:19'),(2,'agent1','agent1@gmail.com','Bitcoin',94248,234,22054000,'7894561278945678','agent1','2030-07',464,'2024-11-26 17:35:36'),(3,'agent2','agent2@gmail.com','Ethereum',3468.4,300,1040520,'2547895745627894','agent2','2027-07',589,'2024-11-26 17:38:18'),(4,'agent3','agent3@gmail.com','Ethereum',3468.4,350,1213940,'4578945621546','agent3','2026-04',457,'2024-11-26 17:44:35'),(5,'agent3','agent3@gmail.com','Ethereum',3468.4,350,1213940,'4578945621546','agent3','2026-04',457,'2024-11-26 17:45:01'),(6,'agent4','agent4@gmail.com','Ripple',1.4544,500,727.2,'120578940321','agent4','2028-12',542,'2024-11-26 17:50:27'),(7,'agent5','agent5@gmail.com','Bitcoin',94248,674,63523200,'124802475478','agent5','2030-07',457,'2024-11-26 17:52:08'),(14,'agent6','agent6@gmail.com','Litecoin',89.88,450,40446,'547865237945','agent6','2028-08',459,'2024-11-26 20:03:43');
/*!40000 ALTER TABLE `agentbuyedtransactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agentregister`
--

DROP TABLE IF EXISTS `agentregister`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agentregister` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `pswd` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `pan` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `cryptcurrency` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `authkey` varchar(100) NOT NULL,
  `cdate` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agentregister`
--

LOCK TABLES `agentregister` WRITE;
/*!40000 ALTER TABLE `agentregister` DISABLE KEYS */;
INSERT INTO `agentregister` VALUES (1,'agent1@gmail.com','12345678','agent1','7834567890','jdk34jn34m','Andhra Pradesh','Krishna','Bitcoin','activated','6wXaPzNM','2024-11-26 10:54:34'),(2,'agent2@gmail.com','12345678','agent2','6578945612','jfee892fh2','Andhra Pradesh','Prakasam','Ethereum','activated','Nr9ktTvn','2024-11-26 14:36:05'),(3,'agent3@gmail.com','12345678','agent3','958456248','jdm902nh87','Tamil Nadu','Chennai','Ethereum','activated','zA4zaHSN','2024-11-26 14:40:55'),(4,'agent4@gmail.com','12345678','agent4','9856423751','i92ohn46j3','Telangana','Hyderabad','Ripple','activated','Lg4DjPLA','2024-11-26 14:41:37'),(5,'agent5@gmail.com','12345678','agent5','6354789456','o57hfj2802','Andhra Pradesh','Guntur','Bitcoin','activated','NecDJMSN','2024-11-26 14:42:21'),(11,'agent6@gmail.com','12345678','agent6','9852461258','oj24jh533n','Andhra Pradesh','Vishakhapatnam','Litecoin','activated','hNEsZ4nB','2024-11-26 20:00:14');
/*!40000 ALTER TABLE `agentregister` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agentscryptoquantity`
--

DROP TABLE IF EXISTS `agentscryptoquantity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agentscryptoquantity` (
  `currencyname` varchar(100) NOT NULL,
  `useremail` varchar(100) NOT NULL,
  `quantity` int DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `currencyname` (`currencyname`,`useremail`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agentscryptoquantity`
--

LOCK TABLES `agentscryptoquantity` WRITE;
/*!40000 ALTER TABLE `agentscryptoquantity` DISABLE KEYS */;
INSERT INTO `agentscryptoquantity` VALUES ('Bitcoin','agent1@gmail.com',254,1),('Ethereum','agent2@gmail.com',190,2),('Ethereum','agent3@gmail.com',371,3),('Ripple','agent4@gmail.com',222,4),('Bitcoin','agent5@gmail.com',434,5),('Litecoin','agent6@gmail.com',425,11);
/*!40000 ALTER TABLE `agentscryptoquantity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blockchainledger`
--

DROP TABLE IF EXISTS `blockchainledger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blockchainledger` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customeremail` varchar(100) NOT NULL,
  `agentemail` varchar(100) NOT NULL,
  `currencyname` varchar(100) NOT NULL,
  `quantity` int DEFAULT NULL,
  `paidammout` float NOT NULL,
  `blockchainmoney` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blockchainledger`
--

LOCK TABLES `blockchainledger` WRITE;
/*!40000 ALTER TABLE `blockchainledger` DISABLE KEYS */;
INSERT INTO `blockchainledger` VALUES (1,'user1@gmail.com','agent1@gmail.com','Bitcoin',20,2117680,243533),(2,'user2@gmail.com','agent5@gmail.com','Bitcoin',240,25220800,2900390),(3,'user3@gmail.com','agent4@gmail.com','Ripple',278,450.82,51.8443),(4,'user4@gmail.com','agent2@gmail.com','Ethereum',110,425399,48920.9),(5,'user5@gmail.com','agent3@gmail.com','Ethereum',329,1272330,146318),(6,'user1@gmail.com','agent1@gmail.com','Bitcoin',10,1058840,121767),(15,'user2@gmail.com','agent6@gmail.com','Litecoin',25,2505.4,288.121);
/*!40000 ALTER TABLE `blockchainledger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencychnagetable`
--

DROP TABLE IF EXISTS `currencychnagetable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currencychnagetable` (
  `id` int NOT NULL AUTO_INCREMENT,
  `currencyname` varchar(100) NOT NULL,
  `conversionRate` float NOT NULL,
  `newCurrencyValue` float NOT NULL,
  `originalCurrencyValue` float NOT NULL,
  `chnageValue` float NOT NULL,
  `profitorloss` varchar(50) NOT NULL,
  `changedate` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `currencyname` (`currencyname`,`changedate`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencychnagetable`
--

LOCK TABLES `currencychnagetable` WRITE;
/*!40000 ALTER TABLE `currencychnagetable` DISABLE KEYS */;
INSERT INTO `currencychnagetable` VALUES (1,'Bitcoin',1,94248,90000,94248,'Gain','2024-11-26 20:57:47'),(2,'Ethereum',1,3468.4,3450,3468.4,'Gain','2024-11-26 21:00:48'),(3,'Ripple',1,1.4544,1.5,1.4544,'Gain','2024-11-26 21:00:54');
/*!40000 ALTER TABLE `currencychnagetable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencyrate`
--

DROP TABLE IF EXISTS `currencyrate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currencyrate` (
  `currencytype` varchar(100) NOT NULL,
  `doller` float NOT NULL,
  `rupee` float NOT NULL,
  `originalprice` float NOT NULL,
  PRIMARY KEY (`currencytype`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencyrate`
--

LOCK TABLES `currencyrate` WRITE;
/*!40000 ALTER TABLE `currencyrate` DISABLE KEYS */;
INSERT INTO `currencyrate` VALUES ('Bitcoin',94248,7953470,90000),('Ethereum',3468.4,287548,3450),('Litecoin',89.88,7624.42,75),('Ripple',1.4544,121.2,1.5);
/*!40000 ALTER TABLE `currencyrate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customercontaincoins`
--

DROP TABLE IF EXISTS `customercontaincoins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customercontaincoins` (
  `id` int NOT NULL AUTO_INCREMENT,
  `currencyName` varchar(100) NOT NULL,
  `customeremail` varchar(100) NOT NULL,
  `quantity` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `currencyName` (`currencyName`,`customeremail`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customercontaincoins`
--

LOCK TABLES `customercontaincoins` WRITE;
/*!40000 ALTER TABLE `customercontaincoins` DISABLE KEYS */;
INSERT INTO `customercontaincoins` VALUES (1,'Bitcoin','lx160cm@gmail.com',7),(2,'Etherum','lx160cm@gmail.com',15),(3,'Ripple','nilamsairam@gmail.com',150),(4,'Etherum','nilamsairam@gmail.com',25),(5,'Bitcoin','nilamsairam@gmail.com',25),(6,'Bitcoin','user1@gmail.com',30),(7,'Bitcoin','user2@gmail.com',240),(8,'Ripple','user3@gmail.com',278),(9,'Ethereum','user4@gmail.com',110),(10,'Ethereum','user5@gmail.com',329),(11,'Litecoin','user2@gmail.com',25);
/*!40000 ALTER TABLE `customercontaincoins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-11-26 21:15:51.909814'),(2,'auth','0001_initial','2024-11-26 21:15:52.649120'),(3,'admin','0001_initial','2024-11-26 21:15:52.822680'),(4,'admin','0002_logentry_remove_auto_add','2024-11-26 21:15:52.843030'),(5,'admin','0003_logentry_add_action_flag_choices','2024-11-26 21:15:52.851802');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('0gwdzb8ap4rj0hxsbl6xuydh72tgh5yq','NDhkY2IxMmQyMmRjYWRlZjc3NTMzZjVlZjEzZmI3YzEyZGUwZmZlYTp7ImlkIjoyLCJsb2dnZWRhZ2VudCI6IlRpdmFyaSBLaGFuIiwiZW1haWwiOiJ0aXZhcmlqaGFkaGF2MjNAZ21haWwuY29tIn0=','2019-10-17 09:10:34'),('33n6obgf3kyza6ttk3zbrkrkknid69i3','ZmQxZWNkNjJhMzBlYTJjN2FiYTI3OGE5OTI4MjRiOWMxZGIzMGE5Zjp7ImlkIjoxLCJsb2dnZWRhZ2VudCI6IlRpdmFyaSBLaGFuIiwiZW1haWwiOiJseDE2MGNtQGdtYWlsLmNvbSIsImxvZ2dlZHVzZXIiOiJBbGV4IEhhbGVzIn0=','2019-10-17 09:15:15'),('56wz2ltmyp7fe9qi8u9cwbhbu4jy89ul','YTk2NTQ5YjBmY2U2YWNhZGJjMmEyMjhiMDliYmEzMWI4OTk5MDc1Zjp7ImlkIjoxLCJsb2dnZWR1c2VyIjoiQWxleCBIYWxlcyIsImVtYWlsIjoibHgxNjBjbUBnbWFpbC5jb20ifQ==','2019-10-17 06:26:44'),('7i27n6yha4dcgb63z5grh92oe5m4k9ui','.eJyrVspMUbIy01HKyU9PT00pLU4tUrJSAlGGSjpKqbmJmTlAfmJ6al6JoUM6iKuXnJ-rBFMPloArUKoFAASoGiU:1tFtEB:YJxf-vE7IhOadnOmEOGhgguEWtNYsGwM9t5NIeYL-t4','2024-12-10 10:55:32'),('b4l5tvstjcfwe37vtuxuw1yqr8y4kvam','.eJyrVspMUbIy1FHKyU9PT00pLU4tUrJSAlGGSjpKqbmJmTkwvkM6iKeXnJ-rVAsA7wsSIQ:1tGOAY:aerNqPsNg0CuPHe4W4brpGOdP6fwuhdnQebzwXSeMUM','2024-12-11 19:57:50'),('hedsh2jnl0ektfi3gw14mgg8zd4wgs6w','.eJyrVspMUbIy1FHKyU9PT01JTE_NK1GyUgLThko6Sqm5iZk5QIHS4tQiQ4d0EE8vOT9XCaYBJA6TVqoFAOiCGdA:1tGeEK:t1RmgdZvRrwbUoFQH5wEv0vA40GVAo-NnYpPfXJs4E4','2024-12-12 13:06:49'),('i47t19fuu11w7hewhmfmkjdj9k9221x4','ODBjOGI3MjRhNjYxYjgzNmVlZTlhNTFkMDJlMjJiNzc4Mjk1M2NkOTp7ImlkIjo1LCJsb2dnZWR1c2VyIjoic2FiYXJpIiwiZW1haWwiOiJiaGFyZ2F2LnBvZGlsYUBnbWFpbC5jb20iLCJsb2dnZWRhZ2VudCI6ImJoYXJnYXYifQ==','2019-10-17 08:58:08'),('y3cmma9ayumuhjjd6r7v7ct98skasys3','YTk2NTQ5YjBmY2U2YWNhZGJjMmEyMjhiMDliYmEzMWI4OTk5MDc1Zjp7ImlkIjoxLCJsb2dnZWR1c2VyIjoiQWxleCBIYWxlcyIsImVtYWlsIjoibHgxNjBjbUBnbWFpbC5jb20ifQ==','2019-10-15 12:00:26');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userbuyingcryptomodel`
--

DROP TABLE IF EXISTS `userbuyingcryptomodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userbuyingcryptomodel` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customername` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `currencyname` varchar(100) NOT NULL,
  `quantity` int DEFAULT NULL,
  `agentemail` varchar(100) NOT NULL,
  `singlecoingamount` float NOT NULL,
  `payableammount` float NOT NULL,
  `cardnumber` varchar(100) NOT NULL,
  `nameoncard` varchar(100) NOT NULL,
  `cardexpiry` varchar(100) NOT NULL,
  `cvv` int DEFAULT NULL,
  `cdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userbuyingcryptomodel`
--

LOCK TABLES `userbuyingcryptomodel` WRITE;
/*!40000 ALTER TABLE `userbuyingcryptomodel` DISABLE KEYS */;
INSERT INTO `userbuyingcryptomodel` VALUES (1,'user1','user1@gmail.com','Bitcoin',10,'agent1@gmail.com',105884,1058840,'9874563210123456','user1','2028-08',456,'2024-11-26 12:49:55'),(2,'user1','user1@gmail.com','Bitcoin',20,'agent1@gmail.com',105884,2117680,'1234567890123456','User1','2028-12',234,'2024-11-26 14:26:29'),(3,'user2','user2@gmail.com','Bitcoin',240,'agent5@gmail.com',105087,25220800,'5789456248754526','user2','2027-08',245,'2024-11-26 17:56:56'),(4,'user3','user3@gmail.com','Ripple',278,'agent4@gmail.com',1.62,450.82,'452387951245','user3','2026-10',125,'2024-11-26 17:59:56'),(5,'user4','user4@gmail.com','Ethereum',110,'agent2@gmail.com',3867.27,425399,'857236970215','user4','2032-05',564,'2024-11-26 18:01:58'),(6,'user5','user5@gmail.com','Ethereum',329,'agent3@gmail.com',3867.27,1272330,'785423648952','User5','2028-08',457,'2024-11-26 18:03:16'),(15,'user2','user2@gmail.com','Litecoin',25,'agent6@gmail.com',100.22,2505.4,'567894562145','user2','2031-08',784,'2024-11-26 20:05:39');
/*!40000 ALTER TABLE `userbuyingcryptomodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userregister`
--

DROP TABLE IF EXISTS `userregister`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userregister` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `pswd` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `pan` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `authkey` varchar(100) NOT NULL,
  `cdate` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userregister`
--

LOCK TABLES `userregister` WRITE;
/*!40000 ALTER TABLE `userregister` DISABLE KEYS */;
INSERT INTO `userregister` VALUES (1,'user1@gmail.com','12345678','user1','7894561230','hme134hj56','Andhra Pradesh','Krishna','activated','IPQ7VSl7','2024-11-26 10:51:46'),(2,'user2@gmail.com','12345678','user2','9645632478','kdl390jfn5','Telangana','Nizamabad','activated','2nPA9pvs','2024-11-26 14:52:54'),(3,'user3@gmail.com','12345678','user3','6845213756','ufj3905hj3','Andhra Pradesh','Prakasam','activated','Khm01edO','2024-11-26 14:54:06'),(4,'user4@gmail.com','12345678','user4','9756423158','js23fk456m','Tamil Nadu','Chennai','activated','hczr8ZE8','2024-11-26 14:54:40'),(5,'user5@gmail.com','12345678','user5','6845624792','K34NF0M56K','Andhra Pradesh','Anantapur','activated','jfbZdabP','2024-11-26 14:55:34');
/*!40000 ALTER TABLE `userregister` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-28 18:57:43
