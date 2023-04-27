CREATE DATABASE  IF NOT EXISTS `imdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `imdb`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: imdb
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `actor_skills`
--

DROP TABLE IF EXISTS `actor_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actor_skills` (
  `No` int NOT NULL,
  `actorId` int NOT NULL,
  `skill_id` int NOT NULL,
  PRIMARY KEY (`No`),
  KEY `actorId_idx` (`actorId`),
  KEY `skill_id_idx` (`skill_id`),
  CONSTRAINT `actorId` FOREIGN KEY (`actorId`) REFERENCES `actors` (`actor_id`),
  CONSTRAINT `skill_id` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`skill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actor_skills`
--

LOCK TABLES `actor_skills` WRITE;
/*!40000 ALTER TABLE `actor_skills` DISABLE KEYS */;
INSERT INTO `actor_skills` VALUES (1,1,1),(2,2,2),(3,2,5),(4,3,4),(5,4,1),(6,4,5),(7,4,4),(8,5,5),(9,6,2),(10,7,1);
/*!40000 ALTER TABLE `actor_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actors`
--

DROP TABLE IF EXISTS `actors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actors` (
  `actor_id` int NOT NULL,
  `actor_name` varchar(45) NOT NULL,
  `actor_age` int NOT NULL,
  PRIMARY KEY (`actor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actors`
--

LOCK TABLES `actors` WRITE;
/*!40000 ALTER TABLE `actors` DISABLE KEYS */;
INSERT INTO `actors` VALUES (1,'sam worthington ',46),(2,'zoe saldana',44),(3,'vin diesel',55),(4,'jason statham',55),(5,'robert downey jr',58),(6,'daniel craig',55),(7,'christain bale',49);
/*!40000 ALTER TABLE `actors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genres` (
  `genre_id` int NOT NULL,
  `genre_name` varchar(45) NOT NULL,
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (101,'Action'),(102,'Adventure'),(103,'Comedy'),(104,'Musical'),(105,'Thriller'),(106,'Horror'),(107,'Animation'),(108,'Biography'),(109,'Drama'),(110,'Crime');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie` (
  `movie_id` int NOT NULL,
  `movie_name` varchar(45) NOT NULL,
  `movie_year` int NOT NULL,
  PRIMARY KEY (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES (1,'Avatar',2009),(2,'Minions',2015),(3,'Furious 7',2015),(4,'Jurassic World',2015),(5,'Iron Man 3',2013),(6,'Skyfall',2012),(7,'Toy Story 3',2010),(8,'The Dark Knight Rises',2012);
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_cast`
--

DROP TABLE IF EXISTS `movie_cast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_cast` (
  `No` int NOT NULL,
  `movie_id_cast` int NOT NULL,
  `actor_id` int NOT NULL,
  PRIMARY KEY (`No`),
  KEY `movie_id_cast_idx` (`movie_id_cast`),
  KEY `actor_id_idx` (`actor_id`),
  CONSTRAINT `actor_id` FOREIGN KEY (`actor_id`) REFERENCES `actors` (`actor_id`),
  CONSTRAINT `movie_id_cast` FOREIGN KEY (`movie_id_cast`) REFERENCES `movie` (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_cast`
--

LOCK TABLES `movie_cast` WRITE;
/*!40000 ALTER TABLE `movie_cast` DISABLE KEYS */;
INSERT INTO `movie_cast` VALUES (1,1,1),(2,1,2),(3,3,3),(4,3,4),(5,5,5),(6,6,6),(7,8,7);
/*!40000 ALTER TABLE `movie_cast` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_genres`
--

DROP TABLE IF EXISTS `movie_genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_genres` (
  `No` int NOT NULL,
  `movie_id_` int NOT NULL,
  `genre_id` int NOT NULL,
  PRIMARY KEY (`No`),
  KEY `movie_id_idx` (`movie_id_`),
  KEY `genre_id_idx` (`genre_id`),
  CONSTRAINT `genre_id` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`genre_id`),
  CONSTRAINT `movie_id_` FOREIGN KEY (`movie_id_`) REFERENCES `movie` (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_genres`
--

LOCK TABLES `movie_genres` WRITE;
/*!40000 ALTER TABLE `movie_genres` DISABLE KEYS */;
INSERT INTO `movie_genres` VALUES (1,1,101),(2,1,102),(3,2,107),(4,3,101),(5,4,102),(6,4,105),(7,5,101),(8,6,101),(9,7,107),(10,8,107);
/*!40000 ALTER TABLE `movie_genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_media`
--

DROP TABLE IF EXISTS `movie_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_media` (
  `No` int NOT NULL,
  `movieid` int NOT NULL,
  `media_link` varchar(45) NOT NULL,
  PRIMARY KEY (`No`),
  KEY `movieid_idx` (`movieid`),
  CONSTRAINT `movieid` FOREIGN KEY (`movieid`) REFERENCES `movie` (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_media`
--

LOCK TABLES `movie_media` WRITE;
/*!40000 ALTER TABLE `movie_media` DISABLE KEYS */;
INSERT INTO `movie_media` VALUES (1,1,'link'),(2,1,'link'),(3,2,'link'),(4,3,'link'),(5,4,'link'),(6,4,'link'),(7,7,'link'),(8,6,'link'),(9,8,'link'),(10,4,'link'),(11,5,'link'),(12,5,'link'),(13,6,'link');
/*!40000 ALTER TABLE `movie_media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `review_id` int NOT NULL,
  `user_id` char(4) NOT NULL,
  `movie_id` int NOT NULL,
  `review` varchar(100) NOT NULL,
  PRIMARY KEY (`review_id`),
  KEY `movie_id_idx` (`movie_id`),
  KEY `user_id_idx` (`user_id`),
  CONSTRAINT `movie_id` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`),
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,'ABC1',8,'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),(2,'ABC2',4,'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),(3,'ABC3',4,'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),(4,'ABC3',5,'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),(5,'ABC5',2,'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),(6,'ABC8',1,'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),(7,'ABC7',7,'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),(8,'ABC6',6,'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),(9,'ABC7',1,'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),(10,'ABC4',3,'Lorem Ipsum is simply dummy text of the printing and typesetting industry.');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skills` (
  `skill_id` int NOT NULL,
  `skill_name` varchar(45) NOT NULL,
  PRIMARY KEY (`skill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills`
--

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
INSERT INTO `skills` VALUES (1,'Dancing'),(2,'Singing'),(3,'Stunt'),(4,'Theatre'),(5,'Screenplay');
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` char(4) NOT NULL,
  `user_name` varchar(45) NOT NULL,
  `age` int NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('ABC1','John',20),('ABC2','Raj',55),('ABC3','Mike',41),('ABC4','Mohan',66),('ABC5','Jin woo',23),('ABC6','Ralf',25),('ABC7','Mick',28),('ABC8','Yuki',45);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-27 20:39:39
