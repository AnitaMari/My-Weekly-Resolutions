-- DROP TABLE IF EXISTS `days`;

CREATE TABLE `days` (
  `id` int NOT NULL,
  `day` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) 
-- ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
-- THIS LINE ABOVE WAS AFTER THE LAST CLOSING ) BUT I REMOVED IT BECAUSE I THINK IT'S NOT NECESSARY.

--
-- Dumping data for table `days`
--

-- LOCK TABLES `days` WRITE;

INSERT INTO `days` VALUES (1,'Monday'),(2,'Tuesday'),(3,'Wednesday'),(4,'Thursday'),(5,'Friday'),(6,'Saturday'),(7,'Sunday');

-- UNLOCK TABLES;

--
-- Table structure for table `resolutions`
--

-- DROP TABLE IF EXISTS `resolutions`;

CREATE TABLE `resolutions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `day_id` int NOT NULL,
  `text` varchar(150) DEFAULT NULL,
  `complete` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `day_id` (`day_id`),
  CONSTRAINT `resolutions_ibfk_1` FOREIGN KEY (`day_id`) REFERENCES `days` (`id`)
) 
-- ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
-- THIS LINE ABOVE WAS AFTER THE LAST CLOSING ) BUT I REMOVED IT BECAUSE I THINK IT'S NOT NECESSARY. AND THAT CONSTRAINT THING IS WEIRD TOO.


-- "THIS WAS HERE, I DON'T KNOW IF I NEED IT:"
-- LOCK TABLES `resolutions` WRITE; 

INSERT INTO `resolutions` VALUES (31,1,'FRENCH: Read one chapter of a book.',0),(32,2,'FRENCH: Listen to a podcast.',1),(33,3,'EXERCISE: Walk 6 kms.',1),(34,4,'FRENCH: Complete a lesson on Busuu.',0),(35,5,'EXERCISE: Walk 6 kms.',0),(36,6,'FRENCH: Speak for one hour with my French friend (in French).',0),(39,1,'EAT HEALTHY: Eat 3 pieces of fruit.',0),(40,3,'EAT HEALTHY: Eat a salad.',0),(43,6,'EXERCISE: Do 5 pull-ups',1);

-- UNLOCK TABLES;

-- IF THIS ABOVE DOESN'T WORK, BELOW ARE MY TABLES. TRY TO COPY AND PASTE THEM IN YOUR DATABASE IN MYSQL. GOOD LUCK!

-- create table days (
--     -> id INT NOT NULL PRIMARY KEY,
--     -> day VARCHAR(15)
--     -> );


-- mysql> describe days;
-- +-------+-------------+------+-----+---------+-------+
-- | Field | Type        | Null | Key | Default | Extra |
-- +-------+-------------+------+-----+---------+-------+
-- | id    | int         | NO   | PRI | NULL    |       |
-- | day   | varchar(15) | YES  |     | NULL    |       |
-- +-------+-------------+------+-----+---------+-------+
-- 2 rows in set (0.01 sec)

-- mysql> INSERT INTO days (id, day)
--     -> VALUES
--     -> (1, "Monday"),
--     -> (2, "Tuesday"),
--     -> (3, "Wednesday"),
--     -> (4, "Thursday"),
--     -> (5, "Friday"),
--     -> (6, "Saturday"),
--     -> (7, "Sunday");
-- Query OK, 7 rows affected (0.08 sec)
-- Records: 7  Duplicates: 0  Warnings: 0

-- mysql> select * from days;
-- +----+-----------+
-- | id | day       |
-- +----+-----------+
-- |  1 | Monday    |
-- |  2 | Tuesday   |
-- |  3 | Wednesday |
-- |  4 | Thursday  |
-- |  5 | Friday    |
-- |  6 | Saturday  |
-- |  7 | Sunday    |
-- +----+-----------+
-- 7 rows in set (0.00 sec)


-- l> create table resolutions (
--     -> id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
--     -> day_id INT NOT NULL,	
--     -> FOREIGN KEY (day_id) REFERENCES days(id),
--     -> text VARCHAR(150),
--     -> complete BOOLEAN
-- );

-- mysql> use resolutions3;
-- Database changed
-- mysql> select * from resolutions;
-- +----+--------+---------------------------------------------------------------+----------+
-- | id | day_id | text                                                          | complete |
-- +----+--------+---------------------------------------------------------------+----------+
-- | 31 |      1 | FRENCH: Read one chapter of a book.                           |        0 |
-- | 32 |      2 | FRENCH: Listen to a podcast.                                  |        1 |
-- | 33 |      3 | EXERCISE: Walk 6 kms.                                         |        1 |
-- | 34 |      4 | FRENCH: Complete a lesson on Busuu.                           |        0 |
-- | 35 |      5 | EXERCISE: Walk 6 kms.                                         |        0 |
-- | 36 |      6 | FRENCH: Speak for one hour with my French friend (in French). |        0 |
-- | 39 |      1 | EAT HEALTHY: Eat 3 pieces of fruit.                           |        0 |
-- | 40 |      3 | EAT HEALTHY: Eat a salad.                                     |        0 |
-- | 43 |      6 | EXERCISE: Do 5 pull-ups                                       |        1 |
-- +----+--------+---------------------------------------------------------------+----------+
-- 9 rows in set (0.01 sec)
