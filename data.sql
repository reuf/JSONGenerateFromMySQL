-- MySQL dump 10.13  Distrib 5.6.12, for Win64 (x86_64)
--
-- Host: localhost    Database: test2
-- ------------------------------------------------------
-- Server version	5.6.14

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
-- Table structure for table `additionalfile`
--

DROP TABLE IF EXISTS `additionalfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `additionalfile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `ext` varchar(10) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `mimeType` varchar(100) DEFAULT NULL,
  `mediaID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=457 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `additionalfile`
--

LOCK TABLES `additionalfile` WRITE;
/*!40000 ALTER TABLE `additionalfile` DISABLE KEYS */;
INSERT INTO `additionalfile` VALUES (456,'sample','avi',404252,'video/x-msvideo',103);
/*!40000 ALTER TABLE `additionalfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `author` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author`
--

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
INSERT INTO `author` VALUES (9,'Peter Jackson','peter.jackson111@gmail.com'),(10,'Janet Freud','janet.freud111@gmail.com'),(11,'Jack Sullivan','jack.sullivan111@gmail.com'),(12,'Samuel Jackson','samuel.jackson111@gmail.com'),(13,'Hans Zimmer','hans.zimmer111@gmail.com'),(14,'Daniel Overeem','daniel.overeem111@gmail.com');
/*!40000 ALTER TABLE `author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `comment` varchar(500) DEFAULT NULL,
  `added` varchar(100) DEFAULT NULL,
  `author` varchar(160) DEFAULT NULL,
  `mediaID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (5,'Funny','This is hillarious and funny','2014-04-03T18:38:18.143Z','10',103),(6,'Not Funny','I think this is dumb.','2014-04-03T18:40:18.143Z','11',104),(7,'Boring','This is rather boring.','2014-04-03T18:40:18.143Z','12',105),(8,'Hahaha','I laughed so much.','2014-04-03T18:40:18.143Z','12',106),(9,'Ok','This is pretty OK to me.','2014-04-03T18:40:18.143Z','11',107),(10,'Not OK','This is not OK with me.','2014-04-03T18:40:18.143Z','13',108),(11,'Possible, but not likely','This might be possible but it is not likely to happen this way.','2014-04-03T18:40:18.143Z','13',109),(12,'Once upon a time','In a land far, far away.','2014-04-03T18:40:18.143Z','13',110),(13,'Rather not','Id rather not do this.','2014-04-03T18:40:18.143Z','14',110),(14,'Feel free to explode','I wanted to explode while watching this','2014-04-03T18:40:18.143Z','9',111),(15,'When all comes to an end','I do not think this can happen.','2014-04-03T18:40:18.143Z','9',112),(16,'Something is up','Not my kind of stuff','2014-04-03T18:40:18.143Z','10',112),(17,'Whats up with this','I do not understand this.','2014-04-03T18:40:18.143Z','10',113),(18,'Do not play with my feelings','I will kick your ass','2014-04-03T18:40:18.143Z','11',114),(19,'Jackass','The guy looks like a jackass.','2014-04-03T18:38:18.143Z','9',103),(20,'Like a woman','He looks like a woman with a beard. New Eurovision on the rise.','2014-04-03T18:38:18.143Z','10',103),(21,'Scarred','I was scarred for a moment. Could be funnier','2014-04-03T18:38:18.143Z','11',103),(22,'Come down','Wow people, calm down its just a cos-play.','2014-04-03T18:38:18.143Z','12',103),(23,'Doesn\'t look like it.','Does not look like a cause play to me.','2014-04-03T18:38:18.143Z','13',103),(24,'Focus on your own life.','If you dont have anything smart to say, I dont understand why are you even watching this video.','2014-04-03T18:38:18.143Z','14',103),(25,'Nice toy','Nice toy, I want one.','2014-04-03T18:38:18.143Z','9',104),(26,'I wish I was younger','I feel I am going to miss out on a lot of things as I am getting older.','2014-04-03T18:38:18.143Z','10',104),(27,'I have one','I have one just like the one in the video.','2014-04-03T18:38:18.143Z','11',104),(28,'From toy to product','Toy prototypes, army products. Thats how it goes.','2014-04-03T18:38:18.143Z','12',104),(29,'Never had legos','I always wanted some, but I never had any.','2014-04-03T18:38:18.143Z','13',104),(30,'More videos','Feel free to add more videos like this.','2014-04-03T18:38:18.143Z','14',104),(31,'This is awesome','This template saved my life many times.','2014-04-03T18:38:18.143Z','9',105),(32,'Zotero','Zotero has capability to switch between different paper styles depending on the conference you are applying for.','2014-04-03T18:38:18.143Z','10',105),(33,'I like APA','I like APA style more than Zotero','2014-04-03T18:38:18.143Z','11',105),(34,'Neither do I','I never liked your puns either.','2014-04-03T18:38:18.143Z','9',106),(35,'I like your puns','I always did and I always will.','2014-04-03T18:38:18.143Z','10',106),(36,'Where did you buy','Where did you buy the piano.','2014-04-03T18:38:18.143Z','9',107),(37,'The color of your nails','I like the color of your nails','2014-04-03T18:38:18.143Z','10',107),(38,'Piano color','I like color of the paino.','2014-04-03T18:38:18.143Z','11',107),(39,'Nobody','I like nobody. Just kidding :).','2014-04-03T18:38:18.143Z','12',107),(40,'Never had piano','I always wanted a piano, but I never had one.','2014-04-03T18:38:18.143Z','13',107),(41,'If only','If only you could play the piano instead of acting dumb.','2014-04-03T18:38:18.143Z','14',107),(42,'Story','Your story sucks.','2014-04-03T18:38:18.143Z','9',108),(43,'I like your story','I always liked how you play it cool.','2014-04-03T18:38:18.143Z','10',108),(44,'Piano color','I like color of the paino.','2014-04-03T18:38:18.143Z','11',108),(45,'Nobody','I like nobody. Just kidding :).','2014-04-03T18:38:18.143Z','12',108),(46,'Never had piano','I always wanted a piano, but I never had one.','2014-04-03T18:38:18.143Z','13',108),(47,'If only','If only you could play the piano instead of acting dumb.','2014-04-03T18:38:18.143Z','14',108),(48,'Dubstep','I like dubstep.','2014-04-03T18:38:18.143Z','9',109),(49,'Techno','I preffer other genres of techno.','2014-04-03T18:38:18.143Z','10',109),(50,'Dubste rocks.','I like Skiller artist.','2014-04-03T18:38:18.143Z','11',109),(51,'I cannot listen to it.','It hurts my ears I cannot listen to it.','2014-04-03T18:38:18.143Z','12',109),(52,'Please give us more.','Give us more music like this. PLeeeeeease.','2014-04-03T18:38:18.143Z','13',109),(53,'More, more.','Give us mooooooore.','2014-04-03T18:38:18.143Z','14',109),(54,'Michael.','Michael looks handsom. You are a happy girl.','2014-04-03T18:38:18.143Z','12',110),(55,'I dont like.','I don\'t like Michale. I never liked him.','2014-04-03T18:38:18.143Z','13',110),(56,'This happend to me','This has happend to me on so many occasions.','2014-04-03T18:38:18.143Z','12',111),(57,'I like to watch when this happens.','I like to watch when something like this happens. I laugh so much, it is hillarious.','2014-04-03T18:38:18.143Z','13',111),(58,'Thank you','I was searching for a guide like this, for ages.','2014-04-03T18:38:18.143Z','12',112),(59,'It is much better now.','I heard the university is much better nowadays.','2014-04-03T18:38:18.143Z','13',113),(60,'My University','I went to this uni. Best time of my life.','2014-04-03T18:38:18.143Z','13',113),(61,'Let it go is great.','I enjoyed the cartoon so much I wish they make a second part.','2014-04-03T18:38:18.143Z','14',114);
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seriesId` int(11) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `added` varchar(200) DEFAULT NULL,
  `updated` varchar(200) DEFAULT NULL,
  `downloads` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `ratings` int(11) DEFAULT NULL,
  `isLinkedMedia` tinyint(1) DEFAULT NULL,
  `link` varchar(1000) DEFAULT NULL,
  `ext` varchar(10) DEFAULT NULL,
  `comments` int(11) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `mimeType` varchar(200) DEFAULT NULL,
  `hasTranscript` tinyint(1) DEFAULT NULL,
  `transcriptExt` varchar(10) DEFAULT NULL,
  `transcriptSize` int(11) DEFAULT NULL,
  `transcriptMimeType` varchar(200) DEFAULT NULL,
  `additionalFiles` int(11) DEFAULT NULL,
  `author` int(11) DEFAULT NULL,
  `summary` varchar(1000) DEFAULT NULL,
  `language` varchar(100) DEFAULT NULL,
  `hasCaptions` tinyint(1) DEFAULT NULL,
  `captionsExt` varchar(10) DEFAULT NULL,
  `captionsRating` int(11) DEFAULT NULL,
  `captionsRatings` int(11) DEFAULT NULL,
  `pulseId` int(11) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (103,0,'Mirror_mirror_on_the_wall.avi','2014-04-03T18:38:18.143Z','2014-04-03T18:38:18.143Z',5,7,12,0,'','avi',2,5,404252,'video/x-msvideo',1,'vob',4252,'text/plain',NULL,9,'Man jumps out of the mirror.','English',1,'cap',7,3,0,'Mirror is shown on the wal. All of a sudden, mirror starts to behave strangely. Man jumps out of the mirror with loud scream in the background.'),(104,1,'Lego_Robot.avi','2014-03-03T18:38:18.143Z','2014-04-03T18:38:18.143Z',1,5,1,0,NULL,'avi',1,NULL,404252,'video/x-msvideo',0,NULL,NULL,NULL,NULL,9,'Lego Robot','English',0,NULL,NULL,NULL,0,'The video represent Lego Robot. Children in the future will have advanced technology toys more and more.'),(105,1,'Template_for_Preparation_of_Papers_for_IEEE_Sponsored_Conferences_Symposia.doc','2014-02-03T18:38:18.143Z','2014-04-03T18:38:18.143Z',1,5,1,0,NULL,'doc',1,NULL,37888,'application/msword',0,NULL,NULL,NULL,NULL,10,'Template for Preparation of Papers for IEEE Sponsored Conferences Symposia','English',0,NULL,NULL,NULL,0,'Template for Preparation of Papers for IEEE Sponsored Conferences Symposia. It is used for all the conferences that accapt papers in IEEE format.'),(106,1,'Frank_doesnt_like_my_puns.flv','2014-02-03T18:38:18.143Z','2014-04-03T18:38:18.143Z',1,5,1,0,NULL,'flv',1,NULL,588306,'video/x-flv',0,NULL,NULL,NULL,NULL,10,'Frank doesnt like my puns','English',0,NULL,NULL,NULL,0,'Frank doesnt like my puns - The girl with the red hair states that the Frank, who is sitting next to her, does not like her puns.'),(107,1,'Lost_Woods_Piano.mov','2014-01-03T18:38:18.143Z','2014-04-03T18:38:18.143Z',1,5,1,0,NULL,'mov',1,NULL,369655,'video/quicktime',0,NULL,NULL,NULL,NULL,11,'Lost Woods Piano','English',0,NULL,NULL,NULL,0,'Lost Woods Piano - Girl with the red hair stripe plays piano rather well.'),(108,1,'Story_of_My_Life.mp3','2014-01-03T18:35:18.143Z','2014-04-03T18:38:18.143Z',1,5,1,0,NULL,'mp3',1,NULL,266657,'audio/mpeg3',0,NULL,NULL,NULL,NULL,11,'Story of My Life','English',0,NULL,NULL,NULL,0,'Story of My Life - This is story of my life and the story of many people\'s lives.'),(109,1,'Why_you_cant_listen_to_dubstep_while_doing_things.mp4','2014-01-03T18:37:18.143Z','2014-04-03T18:38:18.143Z',1,5,1,0,NULL,'mp4',1,NULL,467285,'video/mp4',0,NULL,NULL,NULL,NULL,12,'Why you cant listen to dubstep while doing things','English',0,NULL,NULL,NULL,0,'Why you cant listen to dubstep while doing things - Because it looks pretty stupid and you can hurt yourself.'),(110,1,'Life_With_Michael.mpeg','2014-01-03T18:38:18.143Z','2014-04-03T18:38:18.143Z',1,5,1,0,NULL,'mpeg',1,NULL,376832,'audio/mpeg',0,NULL,NULL,NULL,NULL,12,'Life With Michael','English',0,NULL,NULL,NULL,0,'Life With Michael - sometimes it is fun, sometimes it is boring,but mostly it is dump.'),(111,1,'When_people_get_into_a_song_and_dont_actually_know_the_lyrics.ogg','2014-08-03T18:38:18.143Z','2014-04-03T18:38:18.143Z',1,5,1,0,NULL,'ogg',1,NULL,1276883,'video/ogg',0,NULL,NULL,NULL,NULL,13,'When people get into a song and dont actually know the lyrics','English',0,NULL,NULL,NULL,0,'When people get into a song and dont actually know the lyrics - they look dump. If you don\'t know the lyrics, do not get into the song.'),(112,1,'How_to_compile_a_tex_file_to_a_pdf_file.pdf','2014-09-03T18:38:18.143Z','2014-04-03T18:38:18.143Z',1,5,1,0,NULL,'pdf',1,NULL,54836,'application/pdf',0,NULL,NULL,NULL,NULL,13,'How to compile a tex file to a pdf file','English',0,NULL,NULL,NULL,0,'How to compile a tex file to a pdf file - working with Tex files gives you greater control and the final product looks much more pretty than when done with MS Word.'),(113,1,'University_of_Tennessee_Information.pptx','2014-10-03T18:38:18.143Z','2014-04-03T18:38:18.143Z',1,5,1,0,NULL,'pptx',1,NULL,50293,'application/vnd.openxmlformats-officedocument.presentationml.presentation',0,NULL,NULL,NULL,NULL,14,'University of Tennessee Information','English',0,NULL,NULL,NULL,0,'University of Tennessee Information - This presentation contains all the neccessary information for the University of Tennessee'),(114,1,'Sometimes_you_gotta_Let_It_Go.wav','2014-11-03T18:38:18.143Z','2014-04-03T18:38:18.143Z',1,5,1,0,NULL,'wav',1,NULL,1146960,'audio/x-wav',0,NULL,NULL,NULL,NULL,14,'Sometimes you gotta Let It Go','English',0,NULL,NULL,NULL,0,'Sometimes you gotta Let It Go - Let it Go - Get it? - From the movie Let if Go :)');
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(100) DEFAULT NULL,
  `usageCount` int(11) DEFAULT NULL,
  `mediaID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (15,'fun',13,NULL),(16,'music',2,NULL),(17,'movie',0,NULL),(18,'interestring',5,NULL),(19,'science',4,NULL),(20,'programming',0,NULL);
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_media`
--

DROP TABLE IF EXISTS `tags_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags_media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tagid` int(11) DEFAULT NULL,
  `mediaid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_media`
--

LOCK TABLES `tags_media` WRITE;
/*!40000 ALTER TABLE `tags_media` DISABLE KEYS */;
INSERT INTO `tags_media` VALUES (1,15,103),(2,19,103),(3,15,104),(4,15,105),(5,15,106),(6,15,107),(7,15,108),(8,15,109),(9,15,110),(10,15,111),(11,15,112),(12,15,113),(13,15,114),(14,18,104),(15,19,105),(16,18,106),(17,18,107),(18,16,108),(19,18,109),(20,18,110),(21,15,111),(22,19,112),(23,19,113),(24,16,114);
/*!40000 ALTER TABLE `tags_media` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-11-08 16:55:49
