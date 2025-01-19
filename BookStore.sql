-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: bookstore
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authors` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8mb3_unicode_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES (1,'Harper Lee','Harper Lee was an American novelist, known for her 1960 novel To Kill a Mockingbird.','2025-01-14 16:18:44',NULL,NULL),(2,'George Orwell','George Orwell was an English novelist and essayist, journalist and critic, known for his dystopian novels such as 1984 and Animal Farm.','2025-01-14 16:18:44',NULL,NULL),(3,'Jane Austen','Jane Austen was an English novelist known primarily for her six major novels, which interpret, critique and comment upon the British landed gentry at the end of the 18th century.','2025-01-14 16:18:44',NULL,NULL),(4,'F. Scott Fitzgerald','F. Scott Fitzgerald was an American novelist, essayist, screenwriter, and short story writer, widely regarded as one of the greatest American writers of the 20th century.','2025-01-14 16:18:44',NULL,NULL),(5,'Herman Melville','Herman Melville was an American novelist, short story writer, and poet of the American Renaissance period, best known for his novel Moby-Dick.','2025-01-14 16:18:44',NULL,NULL),(6,'Leo Tolstoy','Leo Tolstoy was a Russian writer who is regarded as one of the greatest authors of all time, known for his novels War and Peace and Anna Karenina.','2025-01-14 16:18:44',NULL,NULL),(7,'J.D. Salinger','J.D. Salinger was an American writer best known for his novel The Catcher in the Rye.','2025-01-14 16:18:44',NULL,NULL),(8,'J.R.R. Tolkien','J.R.R. Tolkien was an English writer, poet, philologist, and academic, best known for his high fantasy works The Hobbit and The Lord of the Rings.','2025-01-14 16:18:44',NULL,NULL),(9,'Charlotte Brontë','Charlotte Brontë was an English novelist and poet, the eldest of the three Brontë sisters who survived into adulthood and whose novels became classics of English literature.','2025-01-14 16:18:44',NULL,NULL),(10,'Fyodor Dostoevsky','Fyodor Dostoevsky was a Russian novelist, short story writer, essayist, journalist and philosopher, known for his novels Crime and Punishment and The Brothers Karamazov.','2025-01-14 16:18:44',NULL,NULL),(11,'Aldous Huxley','Aldous Huxley was an English writer and philosopher, author of nearly fifty books, including the dystopian novel Brave New World.','2025-01-14 16:18:44',NULL,NULL),(12,'Emily Brontë','Emily Brontë was an English novelist and poet who is best known for her only novel, Wuthering Heights.','2025-01-14 16:18:44',NULL,NULL),(13,'Homer','Homer is the legendary author to whom the authorship of the Iliad and the Odyssey is attributed.','2025-01-14 16:18:44',NULL,NULL),(14,'James Joyce','James Joyce was an Irish novelist, short story writer, poet, teacher, and literary critic, best known for his landmark work Ulysses.','2025-01-14 16:18:44',NULL,NULL),(15,'Mary Shelley','Mary Shelley was an English novelist who wrote the Gothic novel Frankenstein, also known as The Modern Prometheus.','2025-01-14 16:18:44',NULL,NULL),(16,'Bram Stoker','Bram Stoker was an Irish author, best known for his Gothic novel Dracula.','2025-01-14 16:18:44',NULL,NULL),(17,'Dante Alighieri','Dante Alighieri was an Italian poet, writer, and philosopher, best known for his monumental epic poem La Divina Commedia (The Divine Comedy).','2025-01-14 16:18:44',NULL,NULL),(18,'Victor Hugo','Victor Hugo was a French poet, novelist, and dramatist of the Romantic movement, best known for his works Les Misérables and The Hunchback of Notre-Dame.','2025-01-14 16:18:44',NULL,NULL),(19,'Gabriel Garcia Marquez','Gabriel Garcia Marquez was a Colombian novelist, short-story writer, screenwriter, and journalist, known for his magical realism and novels like One Hundred Years of Solitude.','2025-01-14 16:18:44',NULL,NULL),(20,'Franz Kafka','Franz Kafka was a German-speaking Bohemian novelist and short story writer, widely regarded as one of the major figures of 20th-century literature.','2025-01-14 16:18:44',NULL,NULL),(21,'Albert Camus','Albert Camus was a French philosopher, author, and journalist, known for his works like The Stranger and The Plague.','2025-01-14 16:18:44',NULL,NULL),(22,'Vladimir Nabokov','Vladimir Nabokov was a Russian-American novelist, best known for his novel Lolita.','2025-01-14 16:18:44',NULL,NULL),(23,'Toni Morrison','Toni Morrison was an American novelist, essayist, editor, and professor, known for her novels like Beloved.','2025-01-14 16:18:44',NULL,NULL),(24,'Joseph Conrad','Joseph Conrad was a Polish-British writer regarded as one of the greatest novelists to write in the English language, known for his novel Heart of Darkness.','2025-01-14 16:18:44',NULL,NULL),(25,'John Steinbeck','John Steinbeck was an American author and the 1962 Nobel Prize in Literature winner, best known for his novel The Grapes of Wrath.','2025-01-14 16:18:44',NULL,NULL),(26,'Ernest Hemingway','Ernest Hemingway was an American novelist, short story writer, and journalist, known for works like The Old Man and the Sea.','2025-01-14 16:18:44',NULL,NULL),(27,'William Faulkner','William Faulkner was an American writer and Nobel Prize laureate, known for his novels like The Sound and the Fury.','2025-01-14 16:18:44',NULL,NULL),(28,'Kurt Vonnegut','Kurt Vonnegut was an American writer, known for his satirical and darkly humorous novels, including Slaughterhouse-Five.','2025-01-14 16:18:44',NULL,NULL),(29,'Joseph Heller','Joseph Heller was an American author, best known for his novel Catch-22.','2025-01-14 16:18:44',NULL,NULL),(30,'Virginia Woolf','Virginia Woolf was an English writer, considered one of the most important modernist 20th-century authors and a pioneer in the use of stream of consciousness as a narrative device.','2025-01-14 16:18:44',NULL,NULL),(31,'Anthony Burgess','Anthony Burgess was an English writer and composer, known for his dystopian novel A Clockwork Orange.','2025-01-14 16:18:44',NULL,NULL),(32,'Cormac McCarthy','Cormac McCarthy is an American novelist, playwright, and screenwriter, known for his novels like The Road and No Country for Old Men.','2025-01-14 16:18:44',NULL,NULL),(33,'Paulo Coelho','Paulo Coelho is a Brazilian lyricist and novelist, best known for his novel The Alchemist.','2025-01-14 16:18:44',NULL,NULL),(34,'J.K. Rowling','J.K. Rowling is a British author, best known for writing the Harry Potter fantasy series.','2025-01-14 16:18:44',NULL,NULL),(35,'Dan Brown','Dan Brown is an American author, best known for his thriller novels, including The Da Vinci Code.','2025-01-14 16:18:44',NULL,NULL),(36,'Suzanne Collins','Suzanne Collins is an American television writer and author, best known for her dystopian novel series The Hunger Games.','2025-01-14 16:18:44',NULL,NULL),(37,'Markus Zusak','Markus Zusak is an Australian writer, best known for his novel The Book Thief.','2025-01-14 16:18:44',NULL,NULL),(38,'Yann Martel','Yann Martel is a Canadian author best known for his Man Booker Prize-winning novel Life of Pi.','2025-01-14 16:18:44',NULL,NULL),(39,'Khaled Hosseini','Khaled Hosseini is an Afghan-American novelist and physician, known for his novels like The Kite Runner.','2025-01-14 16:18:44',NULL,NULL),(40,'Miguel de Cervantes','Miguel de Cervantes was a Spanish writer who is widely regarded as the greatest writer in the Spanish language, best known for his novel Don Quixote.','2025-01-14 16:18:44',NULL,NULL),(41,'Charles Dickens','Charles Dickens was an English writer and social critic, known for his novels like Great Expectations and A Tale of Two Cities.','2025-01-14 16:18:44',NULL,NULL),(42,'Oscar Wilde','Oscar Wilde was an Irish poet and playwright, known for his wit and his novel The Picture of Dorian Gray.','2025-01-14 16:18:44',NULL,NULL),(43,'Gustave Flaubert','Gustave Flaubert was a French novelist, regarded as one of the greatest novelists in Western literature, best known for his novel Madame Bovary.','2025-01-14 16:18:44',NULL,NULL),(44,'Mark Twain','Mark Twain was an American writer, humorist, and lecturer, famous for his novels The Adventures of Tom Sawyer and The Adventures of Huckleberry Finn.','2025-01-14 16:36:39',NULL,NULL),(45,'Ray Bradbury','Ray Bradbury was an American author and screenwriter, known for his works of science fiction and fantasy, including Fahrenheit 451.','2025-01-14 16:36:39',NULL,NULL),(46,'Nathaniel Hawthorne','Nathaniel Hawthorne was an American novelist and short story writer, known for his dark romanticism and works like The Scarlet Letter.','2025-01-14 16:36:39',NULL,NULL),(47,'Margaret Mitchell','Margaret Mitchell was an American novelist and journalist, known for her Pulitzer Prize-winning novel Gone with the Wind.','2025-01-14 16:36:39',NULL,NULL),(48,'Stephen King','Stephen King is an American author of horror, supernatural fiction, suspense, crime, science-fiction, and fantasy novels.','2025-01-14 16:36:39',NULL,NULL),(49,'Frank Herbert','Frank Herbert was an American science fiction author, best known for his novel Dune and its sequels.','2025-01-14 16:36:39',NULL,NULL),(50,'Andy Weir','Andy Weir is an American novelist and software engineer, known for his science fiction novel The Martian.','2025-01-14 16:36:39',NULL,NULL),(51,'Neil Gaiman','Neil Gaiman is an English author of short fiction, novels, comic books, graphic novels, audio theatre, and films.','2025-01-14 16:36:39',NULL,NULL),(52,'Patrick Rothfuss','Patrick Rothfuss is an American writer of epic fantasy, known for his series The Kingkiller Chronicle.','2025-01-14 16:36:39',NULL,NULL),(53,'Audrey Niffenegger','Audrey Niffenegger is an American writer, artist and academic, known for her novel The Time Traveler\'s Wife.','2025-01-14 16:36:39',NULL,NULL),(54,'Douglas Adams','Douglas Adams was an English author, scriptwriter, essayist, humorist, satirist and dramatist, known for The Hitchhiker\'s Guide to the Galaxy series.','2025-01-14 16:36:39',NULL,NULL),(55,'Margaret Atwood','Margaret Atwood is a Canadian poet, novelist, literary critic, essayist, teacher, environmental activist, and inventor, known for her works like The Handmaid\'s Tale.','2025-01-14 16:36:39',NULL,NULL),(56,'James Dashner','James Dashner is an American writer of speculative fiction, primarily series for young adults, known for The Maze Runner series.','2025-01-14 16:36:39',NULL,NULL),(57,'John Green','John Green is an American author and YouTube content creator, best known for his young adult fiction novels like The Fault in Our Stars.','2025-01-14 16:36:39',NULL,NULL),(58,'Veronica Roth','Veronica Roth is an American novelist and short story writer, known for her debut novel, Divergent.','2025-01-14 16:36:39',NULL,NULL),(59,'Cassandra Clare','Cassandra Clare is an American author of young adult fiction, known for her series The Mortal Instruments.','2025-01-14 16:36:39',NULL,NULL);
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `author_id` int unsigned DEFAULT NULL,
  `publishers_id` int unsigned DEFAULT NULL,
  `genre` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `price` int DEFAULT NULL,
  `published_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `books_authoe_id_foreign` (`author_id`),
  KEY `books_publisher_id_foreign` (`publishers_id`),
  CONSTRAINT `books_authoe_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`),
  CONSTRAINT `books_publisher_id_foreign` FOREIGN KEY (`publishers_id`) REFERENCES `publishers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'To Kill a Mockingbird',1,1,'Fiction',150,'1960-07-11','2025-01-14 16:32:28',NULL,NULL),(2,'1984',2,2,'Dystopian',120,'1949-06-08','2025-01-14 16:32:28',NULL,NULL),(3,'Pride and Prejudice',3,3,'Romance',100,'1813-01-28','2025-01-14 16:32:28',NULL,NULL),(4,'The Great Gatsby',4,4,'Classic',80,'1925-04-10','2025-01-14 16:32:28',NULL,NULL),(5,'Moby-Dick',5,5,'Adventure',130,'1851-10-18','2025-01-14 16:32:28',NULL,NULL),(6,'War and Peace',6,6,'Historical',200,'1869-01-01','2025-01-14 16:32:28',NULL,NULL),(7,'The Catcher in the Rye',7,7,'Fiction',110,'1951-07-16','2025-01-14 16:32:28',NULL,NULL),(8,'The Lord of the Rings',8,8,'Fantasy',250,'1954-07-29','2025-01-14 16:32:28',NULL,NULL),(9,'Jane Eyre',9,9,'Classic',90,'1847-10-16','2025-01-14 16:32:28',NULL,NULL),(10,'Crime and Punishment',10,1,'Psychological',140,'1866-01-01','2025-01-14 16:32:28',NULL,NULL),(11,'Brave New World',11,2,'Dystopian',115,'1932-01-01','2025-01-14 16:32:28',NULL,NULL),(12,'Wuthering Heights',12,3,'Classic',105,'1847-12-01','2025-01-14 16:32:28',NULL,NULL),(13,'The Odyssey',13,4,'Epic',150,'0000-00-00','2025-01-14 16:32:28',NULL,NULL),(14,'Ulysses',14,5,'Modernist',170,'1922-02-02','2025-01-14 16:32:28',NULL,NULL),(15,'Frankenstein',15,6,'Gothic',85,'1818-01-01','2025-01-14 16:32:28',NULL,NULL),(16,'Dracula',16,7,'Horror',90,'1897-05-26','2025-01-14 16:32:28',NULL,NULL),(17,'The Divine Comedy',17,8,'Epic',210,'1320-01-01','2025-01-14 16:32:28',NULL,NULL),(18,'Les Misérables',18,9,'Historical',190,'1862-01-01','2025-01-14 16:32:28',NULL,NULL),(19,'One Hundred Years of Solitude',19,10,'Magical Realism',160,'1967-06-05','2025-01-14 16:32:28',NULL,NULL),(20,'The Metamorphosis',20,1,'Novella',75,'1915-01-01','2025-01-14 16:32:28',NULL,NULL),(21,'The Stranger',21,2,'Philosophical',100,'1942-01-01','2025-01-14 16:32:28',NULL,NULL),(22,'Lolita',22,3,'Novel',125,'1955-09-15','2025-01-14 16:32:28',NULL,NULL),(23,'Beloved',23,4,'Historical',135,'1987-09-01','2025-01-14 16:32:28',NULL,NULL),(24,'Heart of Darkness',24,5,'Novella',95,'1899-01-01','2025-01-14 16:32:28',NULL,NULL),(25,'The Grapes of Wrath',25,6,'Historical',120,'1939-04-14','2025-01-14 16:32:28',NULL,NULL),(26,'The Sun Also Rises',26,7,'Fiction',110,'1926-10-22','2025-01-14 16:32:28',NULL,NULL),(27,'The Sound and the Fury',27,8,'Modernist',100,'1929-01-01','2025-01-14 16:32:28',NULL,NULL),(28,'Slaughterhouse-Five',28,9,'Science Fiction',140,'1969-01-01','2025-01-14 16:32:28',NULL,NULL),(29,'Catch-22',29,10,'Satire',130,'1961-11-10','2025-01-14 16:32:28',NULL,NULL),(30,'To the Lighthouse',30,1,'Modernist',115,'1927-05-05','2025-01-14 16:32:28',NULL,NULL),(31,'A Clockwork Orange',31,2,'Dystopian',125,'1962-01-01','2025-01-14 16:32:28',NULL,NULL),(32,'The Road',32,3,'Post-Apocalyptic',150,'2006-09-26','2025-01-14 16:32:28',NULL,NULL),(33,'The Alchemist',33,4,'Adventure',90,'1988-01-01','2025-01-14 16:32:28',NULL,NULL),(34,'Harry Potter and the Sorcerer\'s Stone',34,5,'Fantasy',200,'1997-06-26','2025-01-14 16:32:28',NULL,NULL),(35,'The Da Vinci Code',35,6,'Thriller',180,'2003-03-18','2025-01-14 16:32:28',NULL,NULL),(36,'The Hunger Games',36,7,'Dystopian',150,'2008-09-14','2025-01-14 16:32:28',NULL,NULL),(37,'The Book Thief',37,8,'Historical',130,'2005-01-01','2025-01-14 16:32:28',NULL,NULL),(38,'Life of Pi',38,9,'Adventure',120,'2001-09-11','2025-01-14 16:32:28',NULL,NULL),(39,'The Kite Runner',39,10,'Historical',140,'2003-05-29','2025-01-14 16:32:28',NULL,NULL),(40,'Don Quixote',40,1,'Adventure',170,'1605-01-01','2025-01-14 16:32:28',NULL,NULL),(41,'Great Expectations',41,2,'Classic',100,'1861-01-01','2025-01-14 16:32:28',NULL,NULL),(42,'A Tale of Two Cities',41,2,'Historical',115,'1859-01-01','2025-01-14 16:32:28',NULL,NULL),(43,'The Picture of Dorian Gray',42,3,'Gothic',85,'1890-01-01','2025-01-14 16:32:28',NULL,NULL),(44,'Madame Bovary',43,4,'Realist',100,'1857-01-01','2025-01-14 16:32:28',NULL,NULL),(45,'The Adventures of Huckleberry Finn',44,1,'Adventure',140,'1884-12-10','2025-01-14 16:39:28',NULL,NULL),(46,'Sense and Sensibility',3,2,'Romance',130,'1811-01-01','2025-01-14 16:39:28',NULL,NULL),(47,'The Hobbit',8,3,'Fantasy',200,'1937-09-21','2025-01-14 16:39:28',NULL,NULL),(48,'Fahrenheit 451',45,4,'Dystopian',110,'1953-10-19','2025-01-14 16:39:28',NULL,NULL),(49,'The Scarlet Letter',46,5,'Classic',90,'1850-03-16','2025-01-14 16:39:28',NULL,NULL),(50,'A Farewell to Arms',26,6,'War',120,'1929-09-27','2025-01-14 16:39:28',NULL,NULL),(51,'Gone with the Wind',47,7,'Historical',150,'1936-06-30','2025-01-14 16:39:28',NULL,NULL),(52,'Animal Farm',2,8,'Political Satire',100,'1945-08-17','2025-01-14 16:39:28',NULL,NULL),(53,'The Handmaid\'s Tale',55,9,'Dystopian',130,'1985-01-01','2025-01-14 16:39:28',NULL,NULL),(54,'The Hitchhiker\'s Guide to the Galaxy',54,10,'Science Fiction',90,'1979-10-12','2025-01-14 16:39:28',NULL,NULL),(55,'The Shining',48,1,'Horror',180,'1977-01-28','2025-01-14 16:39:28',NULL,NULL),(56,'Catch-22',29,2,'Satire',150,'1961-11-10','2025-01-14 16:39:28',NULL,NULL),(57,'Dune',49,3,'Science Fiction',160,'1965-01-01','2025-01-14 16:39:28',NULL,NULL),(58,'The Martian',50,4,'Science Fiction',140,'2014-02-11','2025-01-14 16:39:28',NULL,NULL),(59,'American Gods',51,5,'Fantasy',160,'2001-06-19','2025-01-14 16:39:28',NULL,NULL),(60,'The Name of the Wind',52,6,'Fantasy',170,'2007-03-27','2025-01-14 16:39:28',NULL,NULL),(61,'The Time Traveler\'s Wife',53,7,'Romance',150,'2003-09-01','2025-01-14 16:39:28',NULL,NULL),(62,'The Road',20,8,'Post-Apocalyptic',130,'2006-09-26','2025-01-14 16:39:28',NULL,NULL),(63,'A Thousand Splendid Suns',39,9,'Drama',140,'2007-05-22','2025-01-14 16:39:28',NULL,NULL),(64,'The Da Vinci Code',35,10,'Mystery',180,'2003-03-18','2025-01-14 16:39:28',NULL,NULL),(65,'Catching Fire',36,1,'Dystopian',120,'2009-09-01','2025-01-14 16:39:28',NULL,NULL),(66,'Mockingjay',36,2,'Dystopian',130,'2010-08-24','2025-01-14 16:39:28',NULL,NULL),(67,'The Fault in Our Stars',57,3,'Romance',110,'2012-01-10','2025-01-14 16:39:28',NULL,NULL),(68,'Looking for Alaska',57,4,'Drama',90,'2005-03-03','2025-01-14 16:39:28',NULL,NULL),(69,'Paper Towns',57,5,'Mystery',120,'2008-10-16','2025-01-14 16:39:28',NULL,NULL),(70,'The Maze Runner',56,6,'Dystopian',110,'2009-10-06','2025-01-14 16:39:28',NULL,NULL),(71,'Divergent',58,7,'Dystopian',130,'2011-04-25','2025-01-14 16:39:28',NULL,NULL),(72,'Insurgent',58,8,'Dystopian',140,'2012-05-01','2025-01-14 16:39:28',NULL,NULL),(73,'Allegiant',58,9,'Dystopian',150,'2013-10-22','2025-01-14 16:39:28',NULL,NULL),(74,'Four: A Divergent Collection',58,10,'Dystopian',140,'2014-07-08','2025-01-14 16:39:28',NULL,NULL),(75,'City of Bones',59,1,'Fantasy',110,'2007-03-27','2025-01-14 16:39:28',NULL,NULL),(76,'City of Ashes',59,2,'Fantasy',120,'2008-03-25','2025-01-14 16:39:28',NULL,NULL),(77,'City of Glass',59,3,'Fantasy',130,'2009-03-24','2025-01-14 16:39:28',NULL,NULL),(78,'City of Fallen Angels',59,4,'Fantasy',140,'2011-04-05','2025-01-14 16:39:28',NULL,NULL),(79,'City of Lost Souls',59,5,'Fantasy',150,'2012-05-08','2025-01-14 16:39:28',NULL,NULL),(80,'City of Heavenly Fire',59,6,'Fantasy',160,'2014-05-27','2025-01-14 16:39:28',NULL,NULL);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8mb3_unicode_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_items` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int unsigned DEFAULT NULL,
  `book_id` int unsigned DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `price` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_items_order_id_foreign` (`order_id`),
  KEY `order_item_book_id_foreign` (`book_id`),
  CONSTRAINT `order_item_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `total_amount` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_customer_id_foreign` (`customer_id`),
  CONSTRAINT `order_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publishers`
--

DROP TABLE IF EXISTS `publishers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publishers` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb3_unicode_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publishers`
--

LOCK TABLES `publishers` WRITE;
/*!40000 ALTER TABLE `publishers` DISABLE KEYS */;
INSERT INTO `publishers` VALUES (1,'Dalili Publishing House','27 Rabaa Investment Bldgs., El Nozha St., Floor 3 Flat 31, 33, Nasr City, Cairo','2025-01-14 16:28:28','2025-01-14 18:51:12',NULL),(2,'A2Z Egypt','30 Atteya El Sawalhy St. Extension Of Makram Ebaid St., Floor 4 Flat 7, 8th District, Nasr City, Cairo','2025-01-14 16:28:28','2025-01-14 18:51:12',NULL),(3,'Al Arabi Publishing & Distributing','60 Kasr El Ainy St., Downtown, Cairo','2025-01-14 16:28:28','2025-01-14 18:51:12',NULL),(4,'Al Dar Al Arabia For Publishing & Distribution','32 Abbas El Akkad St., Floor 5 Flat 9, 6th Zone, Nasr City, Cairo','2025-01-14 16:28:28','2025-01-14 18:51:12',NULL),(5,'Al Falah Library For Publishing & Distribution','37 El Nasr Rd., Extension Of Ramsis 2 St., 6th District, Nasr City, Cairo','2025-01-14 16:28:28','2025-01-14 18:51:12',NULL),(6,'Modern Egypt Publishing','Alexandria, Egypt','2025-01-14 16:28:28','2025-01-14 18:51:12',NULL),(7,'Alexandria Book Center','Alexandria, Egypt','2025-01-14 16:28:28','2025-01-14 18:51:12',NULL),(8,'Al Zahraa for Publishing & Distribution','Alexandria, Egypt','2025-01-14 16:28:28','2025-01-14 18:51:12',NULL),(9,'Egyptian Book Organization','Cairo, Egypt','2025-01-14 16:28:28','2025-01-14 18:51:12',NULL),(10,'Alexandria Library Press','Alexandria, Egypt','2025-01-14 16:28:28','2025-01-14 18:51:12',NULL);
/*!40000 ALTER TABLE `publishers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'bookstore'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-19 17:33:11
