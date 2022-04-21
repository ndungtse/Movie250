-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: movies
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `genre` varchar(50) DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `other` varchar(30) DEFAULT NULL,
  `Link` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,'https://i0.wp.com/ravemotionpictures.com/wp-content/uploads/2022/03/The-Batman-Digital-Release-Date.jpeg?w=1980&ssl=1','Batman 2022','action',NULL,'trending',NULL,NULL),(2,'https://static1.colliderimages.com/wordpress/wp-content/uploads/2022/01/fistful-of-vengeance-social-featured.jpg?q=50&fit=contain&w=750&h=375&dpr=1.5','Fistful of Vengeance','action',NULL,NULL,NULL,NULL),(3,'https://whatsondisneyplus.com/wp-content/uploads/2021/12/ice-age-buck-1.jpg','The Ice Age Adventures of Buck Wild','animation',NULL,'trending',NULL,NULL),(4,'https://www.dreamworks.com/storage/cms-uploads/the-bad-guys-gallery-6.jpg','The Bad guys','animation',NULL,'coming soon',NULL,NULL),(5,'https://deadline.com/wp-content/uploads/2022/02/Dog.jpg?crop=0px%2C0px%2C3000px%2C1682px&resize=681%2C383','Dog','comedy',NULL,'trending',NULL,'https://www.youtube.com/watch?v=V4tAtp-TyzQ'),(6,'https://static1.colliderimages.com/wordpress/wp-content/uploads/2022/02/jackass-forever-character-guide.jpg?q=50&fit=contain&w=750&h=375&dpr=1.5','Jackass Forever','comedy',NULL,'trending',NULL,'https://www.youtube.com/watch?v=FNq-QT2Jpng'),(7,'https://i0.wp.com/ravemotionpictures.com/wp-content/uploads/2022/01/The-Ant-Man-and-The-Wasp-Quantumania.jpg?w=1507&ssl=1','Ant-man and the Wasp 3','adventure',NULL,'coming soon',NULL,NULL),(8,'https://images5.alphacoders.com/113/thumbbig-1136181.webp','Justice Society: World War II','adventure',NULL,'trending',NULL,NULL),(9,'https://images.indianexpress.com/2020/10/Beats-Of-Radhe-Shyam-1200.jpg','Radhe Shyam','romance',NULL,'coming soon',NULL,NULL),(10,'https://bingeddata.s3.amazonaws.com/uploads/2022/01/The-Royal-Treatment-3.jpg','The Royal Treatment','romance',NULL,'trending',NULL,NULL),(11,'https://www.filmyt.com/wp-content/uploads/2021/08/thor-love-and-thunder-2022-660x330.jpg','Thor: love and thunder','action',NULL,'coming soon',NULL,NULL),(12,'https://www.denofgeek.com/wp-content/uploads/2012/08/exp2-main-1.jpg?resize=640%2C380','Expendables 2','action',NULL,'old',NULL,NULL),(13,'https://i0.wp.com/thescoove.africa/wp-content/uploads/2021/04/Netflix-Red-Notice-Youtube.jpg?resize=810%2C466&ssl=1','Red Notice','action',NULL,NULL,'popular',NULL),(14,'http://oeonline.org/wp-content/uploads/2019/03/Five-Feet-Apart-1280x640-750x400.jpg','Five feet apart','romance',NULL,NULL,'popular',NULL),(15,'https://cdn.mos.cms.futurecdn.net/yBbEW7hX2k5qK35PkeDqFV-1024-80.jpg.webp','Titanic','romance',NULL,'old',NULL,NULL),(16,'https://imgsrv2.voi.id/kcXU47hyOq7Wp_KxjEgHibcIqPgXcBG-kPWcRY4utRU/auto/1200/675/sm/1/bG9jYWw6Ly8vcHVibGlzaGVycy8yOTMzNC8yMDIxMDEyODEzMjMtbWFpbi5jcm9wcGVkXzE2MTE4MTUwMzguanBn.jpg','Rumble','animation',NULL,NULL,'popular',NULL),(17,'https://www.intofilm.org/intofilm-production/1341/scaledcropped/970x546/resources/1341/brave-ep-disney.jpg','Brave','animation',NULL,'old',NULL,NULL),(18,'https://www.denofgeek.com/wp-content/uploads/2022/03/The-Batman-vs-The-Dark-Knight-with-Robert-Pattinson-and-Christian-Bale.jpg?resize=768%2C432','The Dark Knights','adventure',NULL,'old',NULL,NULL),(19,'https://cdn.mos.cms.futurecdn.net/fM7oKQDCKpgMuobZpFwRgK-1024-80.jpg.webp','Free guy','adventure',NULL,NULL,'popular','https://play.google.com/store/movies/details?id=K-8GoRdw3ow.P'),(20,'https://static1.colliderimages.com/wordpress/wp-content/uploads/2022/01/Everything-We-Know-So-Far-About-The-Lost-City.jpg?q=50&fit=contain&w=750&h=375&dpr=1.5','The lost city','comedy',NULL,'coming soon',NULL,'https://www.youtube.com/watch?v=nfKO9rYDmE8'),(21,'https://static1.colliderimages.com/wordpress/wp-content/uploads/2021/11/central-intelligence-social.jpg?q=50&fit=contain&w=750&h=375&dpr=1.5','The Central Intelligence','comedy',NULL,NULL,'popular','https://www.primevideo.com/dp/amzn1.dv.gti.e6b86a3c-52ff-c98a-3bf8-7b7492b73392?autoplay=1&ref_=atv_cf_strg_wb'),(22,'https://images-na.ssl-images-amazon.com/images/I/51rD0pUmufL._SY412_BO1,204,203,200_.jpg','SuperBad','comedy',NULL,'old',NULL,'https://play.google.com/store/movies/details?id=T5PwUtWE03Y');
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` longtext,
  `writer` varchar(255) DEFAULT NULL,
  `Related_image` varchar(255) DEFAULT NULL,
  `Link` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'Doctor Strange In The Multiverse Of Madness Producer Responds To Professor X And Illuminati Rumours_ Exclusive','In the wake of Spider-Man: No Way Home, it’s hard to know what’s real anymore. For months and months, Tom Holland, Andrew Garfield and Tobey Maguire all flat-out denied that the previous Peter Parkers would turn up in Jon Watts’ third MCU Spider-flick. But despite their many straight-faced protestations, it turned out – spoiler warning, but come on, you’ve seen it already right?','ndahiro v.pappi','https://cdn.onebauer.media/one/media/622c/85fe/8d5d/eb32/89bd/772c/doctor-strange-header-excl.jpg?format=jpg&quality=80&width=600&ratio=16-9&resize=aspectfill','https://www.empireonline.com/movies/news/doctor-strange-multiverse-of-madness-professor-x-illuminati-rumours-exclusive/'),(2,'Shawn Levy Directing Deadpool 3','This is news that exists in duality – it\'s both surprising and not at all shocking to report that Free Guy and The Adam Project director Shawn Levy will team up for a third time with those films\' star Ryan Reynolds to make Deadpool 3. It\'s not a shock that the pair – who have formed a clear friendship and healthy working relationship – would look to collaborate again.','eric fab','https://cdn.onebauer.media/one/media/622b/d962/5c2c/f132/88c0/b029/levy-reynolds.jpg?format=jpg&quality=80&width=600&ratio=16-9&resize=aspectfill','https://www.empireonline.com/movies/news/shawn-levy-directing-deadpool-3/'),(3,'Samuel L. Jackson Fires Back at Filmmakers Slamming Marvel Movies','Marvel movie mainstay Samuel L. Jackson had a fiery response to filmmakers criticizing superhero films. Don\'t tell Samuel L. Jackson that Marvel movies aren\'t cinema. In recent years, superhero movies have come under fire from filmmakers like Martin Scorsese, Ridley Scott, and Roland Emmerich, all of whom had negative things to say about the genre and its impact on Hollywood. The situation came up while Jackson was a guest on The View, and the actor brushed off their criticism by suggesting that directors criticizing superhero mo vies are in actuality just upset that their own films aren\'t performing as well.','Phil Peter','https://static1.moviewebimages.com/wordpress/wp-content/uploads/2022/02/Samuel.jpg?q=50&fit=contain&w=1500&h=&dpr=1.5','https://movieweb.com/samuel-l-jackson-marvel-movies-fires-back/'),(4,'Florence Pugh In Talks For Dune: Part Two','Able to flit between the worlds of massive franchise filmmaking (Black Widow) and indie movie land (Midsommar, Little Women) with ease, Florence Pugh is now in talks for another giant role. If the deal works out, she\'ll play Princess Irulan, daughter of Emperor Shaddam IV in Dune: Part Two. Before you start cheering the notion of a Little Women reunion between Pugh and Timothée Chalamet, The Hollywood Reporter cautions that the actor is waiting to see the script before any final decision.','YagoTv','https://cdn.onebauer.media/one/media/6227/ce2e/92ff/e998/1efa/7c84/florence-pugh.jpg?format=jpg&quality=80&width=600&ratio=16-9&resize=aspectfill','https://www.empireonline.com/movies/news/florence-pugh-in-talks-for-dune-part-two/');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-20 13:37:05
