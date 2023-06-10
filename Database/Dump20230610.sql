-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: trivia
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
-- Table structure for table `trivias`
--

DROP TABLE IF EXISTS `trivias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trivias` (
  `Q_ID` int NOT NULL,
  `Question` varchar(200) DEFAULT NULL,
  `Answer` varchar(200) DEFAULT NULL,
  `CATEGORY` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Q_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trivias`
--

LOCK TABLES `trivias` WRITE;
/*!40000 ALTER TABLE `trivias` DISABLE KEYS */;
INSERT INTO `trivias` VALUES (1,'Which game developed by Epic Games became a worldwide phenomenon with its battle royale mode?','Fortnite','GAMING'),(2,'What is the title of the popular sandbox game that allows players to construct and explore virtual worlds?','Minecraft','GAMING'),(3,'Which game developed by CD Projekt Red faced a controversial release due to numerous technical issues?','Cyberpunk 2077','GAMING'),(4,'Which popular video game series, known for its open-world exploration and intense combat, released its fifth installment in the early 2020s?','The Legend of Zelda: Breath of the Wild','GAMING'),(5,'What is the title of the first-person shooter game developed by Riot Games that gained immense popularity as an esports title?','Valorant','GAMING'),(6,'Which online multiplayer game, developed by InnerSloth, became a viral sensation with its social deduction gameplay?','Among Us','GAMING'),(7,'What is the name of the action-adventure game, developed by Sucker Punch Productions, featuring a samurai protagonist in feudal Japan?','Ghost of Tsushima','GAMING'),(8,'Which game, developed by Naughty Dog, received critical acclaim for its narrative and gameplay, centered around a post-apocalyptic world?','The Last of Us Part II','GAMING'),(9,'What is the title of the online multiplayer game developed by Mediatonic, featuring colorful characters competing in various mini-games?','Fall Guys: Ultimate Knockout','GAMING'),(10,'Which game developed by Square Enix received widespread praise for its stunning visuals, immersive story, and real-time combat system?','Final Fantasy VII Remake','GAMING'),(11,'What is the name of the popular HBO TV series, based on George R.R. Martin\'s novels, known for its complex characters and political intrigue?','Game of Thrones','ENTERTAINMENT'),(12,'Which British actor played the role of Sherlock Holmes in the TV series \'Sherlock\'?','Benedict Cumberbatch','ENTERTAINMENT'),(13,'What is the title of the popular Netflix series about a group of kids encountering supernatural events in their town?','Stranger Things','ENTERTAINMENT'),(14,'Which actress won the Academy Award for Best Actress for her role in \'La La Land\'?','Emma Stone','ENTERTAINMENT'),(15,'What is the name of the band lead by Chris Martin?','Coldplay','ENTERTAINMENT'),(16,'Who is the all-time leading scorer in NBA history?','Kareem Abdul-Jabbar','SPORTS'),(17,'Which country won the 2018 FIFA World Cup?','France','SPORTS'),(18,'Who holds the record for the most home runs in a single MLB season?','Barry Bonds','SPORTS'),(19,'Which tennis player has won the most Grand Slam singles titles?','Roger Federer','SPORTS'),(20,'Who won the Super Bowl in the 2020 NFL season?','Kansas City Chiefs','SPORTS'),(21,'Is Test Successfull?','Yes','OTHERS'),(22,'Is Test Successfull?','Yes',NULL),(23,'Is Test Successfull?','Yes',NULL),(24,'Is Test Successfull?','Yes',NULL),(25,'Is Test Successfull?','Yes','Test');
/*!40000 ALTER TABLE `trivias` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-10 17:30:32
