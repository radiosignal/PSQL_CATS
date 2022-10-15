DROP TABLE users
--1. Create table Users
CREATE TABLE users(
id SERIAL PRIMARY KEY,
	nick_name VARCHAR (56) NOT NULL,
	email VARCHAR(120) NOT NULL UNIQUE, 
	passwords VARCHAR(90) NOT NULL UNIQUE,
	user_id INT,
	created_at TIMESTAMP	
);

--Data for table Users
INSERT INTO users (nick_name,email,passwords,user_id,created_at)
VALUES
  ('Lucius','non.dui.nec@hotmail.com','ipsum',38,'2022-08-16 19:07:50'),
  ('Hiroko','curabitur@protonmail.org','Sed',77,'2022-04-17 03:21:54'),
  ('Ray','aliquam.ornare@aol.org','ornare',33,'2023-06-19 01:39:32'),
  ('Timothy','semper.pretium@hotmail.couk','Mauris',64,'2021-10-27 02:01:36'),
  ('Abraham','sed.congue.elit@icloud.net','faucibus',58,'2022-06-13 01:52:42'),
  ('Yardley','eu.tellus@protonmail.org','sed',57,'2022-11-17 22:23:16'),
  ('Hadassah','tempus@protonmail.com','ultrices',2,'2021-11-25 17:18:24'),
  ('Noah','et.magnis@icloud.com','dolor.',87,'2023-05-21 04:05:20'),
  ('Aladdin','curabitur.dictum@icloud.com','sit',38,'2021-10-16 20:32:43'),
  ('Lamar','odio@protonmail.ca','enim',35,'2023-07-03 08:13:01');
INSERT INTO users (nick_name,email,passwords,user_id,created_at)
VALUES
  ('Lester','aliquam.auctor.velit@yahoo.couk','id,',24,'2023-02-04 03:06:47'),
  ('Rama','rutrum.fusce.dolor@hotmail.net','convallis',2,'2022-08-12 15:46:48'),
  ('Echo','accumsan@outlook.net','quis',78,'2022-11-02 08:41:37'),
  ('May','quis@google.net','rhoncus.',35,'2022-04-14 01:21:29'),
  ('Davis','nec@hotmail.com','semper',14,'2022-10-27 21:53:16'),
  ('Blaze','aliquam.auctor.velit@yahoo.org','Nam',15,'2022-03-21 06:37:02'),
  ('Rylee','adipiscing.lobortis@icloud.ca','dolor',22,'2021-11-15 22:13:25'),
  ('Buckminster','at@protonmail.couk','et',53,'2023-07-05 15:29:29'),
  ('Basil','ipsum@icloud.org','Nullam',77,'2022-03-29 03:49:05'),
  ('Paloma','auctor.nunc@outlook.ca','Class',16,'2022-01-18 15:13:17');
INSERT INTO users (nick_name,email,passwords,user_id,created_at)
VALUES
  ('Ross','massa.lobortis@google.edu','Donec',12,'2023-09-03 16:14:22'),
  ('Kasimir','faucibus@aol.net','magna,',98,'2022-12-27 12:49:35'),
  ('Grant','enim@google.net','erat',51,'2023-07-27 06:48:30'),
  ('Ezra','quam.dignissim@protonmail.ca','ut,',61,'2022-12-24 22:09:45'),
  ('Amal','fusce.fermentum.fermentum@protonmail.edu','morbi',82,'2022-05-01 05:50:18'),
  ('Malcolm','a.tortor@hotmail.com','esta,',17,'2022-12-20 23:59:58'),
  ('Jocelyn','sem@hotmail.ca','nec',92,'2023-01-27 13:13:35'),
  ('Stuart','nulla.eget@hotmail.com','est,',42,'2023-07-07 11:16:10'),
  ('Ishmael','venenatis.a@hotmail.com','arcu',54,'2022-09-22 18:05:01'),
  ('Irma','non.luctus.sit@outlook.couk','enim,',87,'2021-10-01 09:08:19');
INSERT INTO users (nick_name,email,passwords,user_id,created_at)
VALUES
  ('Colby','cum.sociis.natoque@outlook.edu','neque.',50,'2023-03-13 06:18:12'),
  ('Lewis','enim@protonmail.org','faucibusa',33,'2022-09-02 03:45:33'),
  ('Lee','nullam.vitae.diam@icloud.couk','velit.',42,'2023-05-03 01:49:08'),
  ('Marvin','turpis.aliquam@outlook.org','dis',99,'2022-01-02 06:52:24'),
  ('Ivory','pharetra.quisque.ac@outlook.edu','erat.',77,'2023-09-05 18:50:15'),
  ('Hashim','magna.lorem@icloud.net','hendrerit.',8,'2023-05-08 20:52:13'),
  ('Stuart','nulla.tincidunt@protonmail.ca','Seds',71,'2022-12-08 08:56:06'),
  ('Josiah','turpis.nulla@aol.ca','nibh.',71,'2022-04-27 02:10:38'),
  ('Beck','eu.nulla.at@aol.org','seda,',7,'2022-10-30 07:25:17'),
  ('Mechelle','non@protonmail.couk','dolorm',7,'2022-06-27 18:21:31');
INSERT INTO users (nick_name,email,passwords,user_id,created_at)
VALUES
  ('Pandora','ut@hotmail.ca','augue,',48,'2023-07-01 13:45:53'),
  ('Kelsey','odio@hotmail.couk','enimas',30,'2021-10-22 05:50:41'),
  ('Brooke','enim.sed.nulla@icloud.org','habitant',24,'2022-09-17 17:19:13'),
  ('Pamela','natoque.penatibus@outlook.net','pharetra,',89,'2021-09-24 08:42:20'),
  ('Ariana','pretium.et.rutrum@hotmail.net','a',14,'2021-09-30 22:15:26'),
  ('Leah','aliquam.enim@protonmail.net','Morbi',66,'2023-02-22 05:41:18'),
  ('Claudia','nulla.at.sem@hotmail.ca','idd,',22,'2022-09-01 23:04:21'),
  ('Avram','vulputate.nisi.sem@yahoo.couk','dictum',26,'2023-01-21 18:41:41'),
  ('Molly','aliquet.odio.etiam@aol.org','urna.',87,'2021-10-21 16:45:23'),
  ('Henry','arcu.imperdiet.ullamcorper@yahoo.ca','Donecv',73,'2023-02-14 13:24:45');
INSERT INTO users (nick_name,email,passwords,user_id,created_at)
VALUES
  ('Quynn','imperdiet.erat@outlook.com','seddd',21,'2022-01-12 14:23:13'),
  ('Jackson','ornare.elit@aol.com','Nunc',32,'2021-10-12 20:03:45'),
  ('Paki','ut.lacus@google.edu','dui.',86,'2022-05-26 03:18:20'),
  ('Diana','tristique.pharetra@outlook.couk','est.',33,'2023-04-14 10:43:29'),
  ('Portia','euismod.ac@aol.couk','orci,',97,'2023-02-17 05:22:50'),
  ('Aurelia','primis.in@protonmail.net','Pellentesque',59,'2023-09-12 22:10:36'),
  ('Bernard','lorem@icloud.org','id',6,'2021-12-15 09:06:22'),
  ('Ezekiel','et.libero.proin@yahoo.com','Cum',39,'2023-05-17 07:28:19'),
  ('Unity','nonummy.fusce.fermentum@protonmail.ca','nascetur',78,'2022-11-30 08:32:07'),
  ('Olivia','imperdiet.ullamcorper@aol.org','Proin',10,'2023-04-10 03:58:50');
INSERT INTO users (nick_name,email,passwords,user_id,created_at)
VALUES
  ('Hu','eu.nulla.at@icloud.ca','libero.',98,'2023-06-20 08:52:02'),
  ('Tanner','fermentum.fermentum.arcu@yahoo.com','fringilla',39,'2022-03-11 09:54:13'),
  ('Elliott','sit@yahoo.ca','urna.fg',43,'2022-12-04 18:03:27'),
  ('Yuli','at.velit.cras@protonmail.org','Aliquam',70,'2023-04-20 10:59:27'),
  ('Yeo','morbi@aol.com','elit',63,'2022-07-22 03:14:09'),
  ('Cyrus','taciti.sociosqu@yahoo.ca','lacinia',2,'2022-02-11 20:35:49'),
  ('Aurelia','est.mollis@hotmail.net','eratsa',23,'2022-01-05 20:03:24'),
  ('Jamal','fringilla.est@protonmail.couk','feugiat',45,'2022-08-02 10:40:29'),
  ('Medge','magna.praesent.interdum@aol.org','luctus',62,'2023-02-15 01:31:18'),
  ('Levi','ac.arcu@google.edu','libeross.',90,'2023-02-19 04:56:15');
INSERT INTO users (nick_name,email,passwords,user_id,created_at)
VALUES
  ('Gregory','et.malesuada@google.ca','dolocdr',39,'2022-09-21 19:36:48'),
  ('Brandon','augue@google.ca','etdfg',30,'2023-02-10 22:25:31'),
  ('Marsden','odio.nam.interdum@protonmail.couk','utiy',69,'2022-12-16 18:11:27'),
  ('Elton','aliquam.nec@google.org','velit',37,'2022-07-07 09:25:04'),
  ('Bruno','auctor.mauris@google.edu','lectus4,',82,'2023-04-28 03:09:08'),
  ('Rhona','egestas.a@protonmail.couk','interdum',17,'2023-07-02 02:09:46'),
  ('Simone','ultrices.vivamus@aol.edu','nisl',15,'2022-06-05 15:24:05'),
  ('Lars','vitae.nibh@icloud.org','egestas,',59,'2022-09-06 09:11:22'),
  ('Chava','quis.pede.praesent@icloud.edu','etk.',92,'2022-11-05 01:32:00'),
  ('Lamar','hendrerit@outlook.edu','luctusxdf',70,'2023-05-28 00:37:12');
INSERT INTO users (nick_name,email,passwords,user_id,created_at)
VALUES
  ('Orlando','at@icloud.org','lacinia2.',49,'2022-04-07 20:23:05'),
  ('Upton','iaculis.lacus@google.org','dictumetw',34,'2022-12-16 03:38:14'),
  ('Leonard','purus.ac@hotmail.edu','ridiculus',82,'2022-08-08 18:28:08'),
  ('Orlando','arcu.sed@protonmail.couk','etlyu',11,'2023-09-09 15:56:19'),
  ('Thaddeus','adipiscing@yahoo.couk','massa7',33,'2023-06-15 10:12:37'),
  ('Zorita','vel.arcu@aol.ca','nisi.',35,'2023-01-04 20:56:34'),
  ('Yuli','non@hotmail.edu','rhoncus',43,'2023-03-15 01:40:49'),
  ('Dillon','ullamcorper.magna@google.ca','euly122,',61,'2023-05-25 13:14:46'),
  ('Tamara','nullam.feugiat.placerat@google.com','felisly89',12,'2022-02-22 12:33:48'),
  ('Erasmus','venenatis.lacus.etiam@yahoo.ca','eulylk,',48,'2023-07-10 22:52:43');
INSERT INTO users (nick_name,email,passwords,user_id,created_at)
VALUES
  ('Ryan','elit.erat@google.com','AeneanD',31,'2021-10-21 03:20:53'),
  ('Malcolm','purus.nullam.scelerisque@outlook.org','enimsf.',5,'2023-01-18 23:34:37'),
  ('Bernard','molestie.orci@protonmail.com','nullazL.',95,'2021-11-25 13:07:53'),
  ('Thomas','iaculis@icloud.net','ac',71,'2023-09-05 06:30:56'),
  ('Elijah','donec.consectetuer@google.net','convallisZ',58,'2021-12-24 23:56:38'),
  ('Arthur','nisi.a@hotmail.edu','egetTEH,',69,'2021-11-30 07:55:20'),
  ('Martin','tristique.ac@aol.org','faucibusH',74,'2022-09-10 20:15:35'),
  ('Leonard','adipiscing.mauris@aol.net','miRY',26,'2023-05-26 06:21:12'),
  ('Quyn','tempor.bibendum.donec@google.com','felisNRY',47,'2022-07-12 22:54:23'),
  ('Amaya','sem.molestie@google.org','lobortis',25,'2022-06-22 03:42:23');

  --2. Create table Car

CREATE TABLE car(
id SERIAL PRIMARY KEY,
  body_id INT,
  weapon_id INT, 
  wheels_id INT,
  tool_id INT,
  upgrade_kit_id INT  
);

--Data for table Car
INSERT INTO car (body_id,weapon_id,wheels_id,tool_id,upgrade_kit_id)
VALUES
  (26,59,83,32,24),
  (24,39,1,47,64),
  (79,9,49,52,10),
  (69,29,47,63,75),
  (25,8,33,61,75),
  (88,24,10,72,41),
  (48,33,30,71,46),
  (77,15,75,10,19),
  (63,56,13,31,19),
  (50,20,82,95,55);
INSERT INTO car (body_id,weapon_id,wheels_id,tool_id,upgrade_kit_id)
VALUES
  (87,3,92,4,53),
  (62,85,44,48,10),
  (25,5,32,72,40),
  (8,60,77,52,92),
  (21,96,30,15,27),
  (54,6,69,48,83),
  (90,97,64,65,3),
  (38,98,52,76,42),
  (26,12,21,9,1),
  (16,58,44,71,83);
INSERT INTO car (body_id,weapon_id,wheels_id,tool_id,upgrade_kit_id)
VALUES
  (1,73,22,24,14),
  (63,58,24,90,31),
  (23,5,11,2,61),
  (34,99,46,99,99),
  (53,81,86,39,75),
  (46,72,56,19,66),
  (20,65,68,7,88),
  (92,64,47,48,86),
  (33,14,47,9,11),
  (75,48,80,10,53);
INSERT INTO car (body_id,weapon_id,wheels_id,tool_id,upgrade_kit_id)
VALUES
  (89,49,54,18,56),
  (80,40,0,29,97),
  (27,91,78,30,16),
  (22,36,85,75,20),
  (34,51,13,55,14),
  (44,74,45,89,73),
  (77,4,98,74,90),
  (7,98,57,2,75),
  (26,1,4,29,84),
  (87,21,91,56,64);
INSERT INTO car (body_id,weapon_id,wheels_id,tool_id,upgrade_kit_id)
VALUES
  (37,67,75,60,50),
  (82,87,12,31,63),
  (53,67,30,51,57),
  (14,92,87,86,38),
  (76,34,10,98,30),
  (63,22,30,93,37),
  (72,27,88,59,42),
  (50,68,59,6,40),
  (22,56,92,28,23),
  (74,34,84,15,72);
INSERT INTO car (body_id,weapon_id,wheels_id,tool_id,upgrade_kit_id)
VALUES
  (32,56,21,94,35),
  (53,62,35,33,43),
  (20,13,45,19,14),
  (22,21,53,83,9),
  (96,58,65,47,96),
  (38,97,49,15,92),
  (57,43,17,95,93),
  (97,93,37,91,47),
  (2,13,41,22,56),
  (33,78,93,31,21);
INSERT INTO car (body_id,weapon_id,wheels_id,tool_id,upgrade_kit_id)
VALUES
  (96,98,64,26,1),
  (100,56,44,51,43),
  (17,80,74,31,81),
  (39,76,51,20,33),
  (4,55,34,39,47),
  (3,82,48,42,92),
  (76,54,90,71,50),
  (33,20,45,59,82),
  (72,2,8,21,37),
  (12,89,39,93,67);
INSERT INTO car (body_id,weapon_id,wheels_id,tool_id,upgrade_kit_id)
VALUES
  (34,90,43,52,44),
  (43,74,68,11,3),
  (46,13,42,65,88),
  (36,70,4,84,41),
  (72,70,50,86,13),
  (51,2,70,94,63),
  (86,1,36,84,40),
  (65,49,58,97,96),
  (67,28,42,23,73),
  (70,13,47,38,94);
INSERT INTO car (body_id,weapon_id,wheels_id,tool_id,upgrade_kit_id)
VALUES
  (77,45,73,74,26),
  (85,78,37,29,89),
  (41,28,0,62,57),
  (51,24,52,0,82),
  (45,55,62,64,91),
  (68,96,47,36,65),
  (23,8,31,85,33),
  (42,27,56,28,70),
  (19,83,91,6,72),
  (49,17,75,70,98);
INSERT INTO car (body_id,weapon_id,wheels_id,tool_id,upgrade_kit_id)
VALUES
  (69,60,38,53,43),
  (86,67,96,16,26),
  (57,13,95,49,20),
  (8,38,65,13,36),
  (70,20,35,9,6),
  (23,94,69,92,88),
  (44,83,7,84,54),
  (51,91,2,85,35),
  (96,21,33,52,79),
  (41,29,22,55,52);

  --3. Create table Body
CREATE TABLE body(
id SERIAL PRIMARY KEY,
  body_name VARCHAR (30) NOT NULL,
  energy INT,
  health INT,
  weapon_slots INT,
  tools_slots INT,
  wheels_slots INT
  );
--Data for table Body
INSERT INTO body (body_name,energy,health,weapon_slots,tools_slots,wheels_slots)
VALUES
  ('Diamond',12,282,3,1,3),
  ('Titan',25,865,3,3,3),
  ('Sneaky',1,878,2,2,2),
  ('Sneaky',30,708,3,2,0),
  ('Whale',14,444,1,2,1),
  ('Surfer',6,473,3,3,1),
  ('Surfer',10,600,2,2,2),
  ('Classic',29,929,0,2,2),
  ('Boulder',16,162,2,1,3),
  ('Classic',20,961,3,1,2);
INSERT INTO body (body_name,energy,health,weapon_slots,tools_slots,wheels_slots)
VALUES
  ('Diamond',6,865,1,1,2),
  ('Pyramid',28,752,3,2,0),
  ('Sneaky',29,939,2,1,2),
  ('Surfer',5,936,0,0,2),
  ('Classic',16,938,0,2,1),
  ('Pyramid',11,375,1,1,3),
  ('Boulder',21,725,0,2,0),
  ('Surfer',13,702,2,2,2),
  ('Diamond',26,249,3,1,3),
  ('Sneaky',30,911,1,1,3);
INSERT INTO body (body_name,energy,health,weapon_slots,tools_slots,wheels_slots)
VALUES
  ('Titan',10,151,2,1,2),
  ('Classic',2,643,1,3,2),
  ('Titan',4,139,2,3,3),
  ('Pyramid',3,133,3,1,3),
  ('Diamond',25,313,3,0,1),
  ('Classic',22,69,0,0,1),
  ('Classic',25,936,2,2,1),
  ('Whale',18,913,3,2,1),
  ('Diamond',5,69,1,1,1),
  ('Titan',18,779,3,0,0);
INSERT INTO body (body_name,energy,health,weapon_slots,tools_slots,wheels_slots)
VALUES
  ('Pyramid',2,555,2,2,1),
  ('Titan',16,240,2,1,2),
  ('Classic',15,796,0,2,2),
  ('Surfer',13,224,1,1,1),
  ('Whale',11,484,1,0,1),
  ('Titan',23,89,2,2,1),
  ('Surfer',22,257,1,1,2),
  ('Sneaky',10,584,2,2,3),
  ('Diamond',16,340,1,1,1),
  ('Diamond',27,518,3,2,2);
INSERT INTO body (body_name,energy,health,weapon_slots,tools_slots,wheels_slots)
VALUES
  ('Surfer',18,636,3,0,1),
  ('Titan',11,93,2,2,0),
  ('Diamond',25,891,1,1,3),
  ('Surfer',12,847,1,3,0),
  ('Surfer',29,510,0,1,2),
  ('Whale',18,313,0,0,1),
  ('Titan',5,770,1,2,0),
  ('Titan',1,180,2,1,0),
  ('Titan',24,244,0,2,1),
  ('Titan',13,471,0,2,2);
INSERT INTO body (body_name,energy,health,weapon_slots,tools_slots,wheels_slots)
VALUES
  ('Diamond',5,854,0,2,1),
  ('Surfer',27,893,3,2,2),
  ('Whale',28,477,3,2,1),
  ('Pyramid',6,210,0,1,1),
  ('Classic',13,758,0,2,0),
  ('Surfer',25,3,1,2,2),
  ('Titan',5,634,0,2,2),
  ('Titan',22,679,3,0,1),
  ('Classic',5,812,3,1,0),
  ('Classic',29,140,1,0,2);
INSERT INTO body (body_name,energy,health,weapon_slots,tools_slots,wheels_slots)
VALUES
  ('Whale',15,25,1,1,1),
  ('Pyramid',29,704,3,3,0),
  ('Whale',1,802,0,1,2),
  ('Surfer',22,512,2,1,2),
  ('Boulder',6,13,2,0,2),
  ('Pyramid',29,243,2,2,1),
  ('Whale',5,353,2,0,2),
  ('Titan',24,221,2,0,1),
  ('Pyramid',28,879,3,2,1),
  ('Sneaky',16,243,0,1,2);
INSERT INTO body (body_name,energy,health,weapon_slots,tools_slots,wheels_slots)
VALUES
  ('Whale',7,220,2,1,2),
  ('Whale',8,62,0,1,3),
  ('Surfer',14,521,3,0,2),
  ('Sneaky',5,465,1,0,1),
  ('Boulder',22,845,1,2,0),
  ('Pyramid',22,249,3,1,3),
  ('Sneaky',3,119,3,1,1),
  ('Titan',14,42,1,1,2),
  ('Surfer',7,233,1,1,1),
  ('Diamond',17,218,3,3,0);
INSERT INTO body (body_name,energy,health,weapon_slots,tools_slots,wheels_slots)
VALUES
  ('Classic',0,102,1,2,2),
  ('Whale',16,436,2,1,3),
  ('Pyramid',7,159,2,2,1),
  ('Whale',12,864,3,2,2),
  ('Pyramid',21,956,3,1,2),
  ('Sneaky',14,581,1,2,1),
  ('Pyramid',12,926,1,3,1),
  ('Boulder',13,630,1,1,0),
  ('Boulder',11,496,1,1,2),
  ('Diamond',7,9,1,1,3);
INSERT INTO body (body_name,energy,health,weapon_slots,tools_slots,wheels_slots)
VALUES
  ('Boulder',10,879,1,3,3),
  ('Titan',17,168,2,2,2),
  ('Sneaky',5,69,0,2,0),
  ('Boulder',26,350,2,3,1),
  ('Pyramid',26,794,3,2,0),
  ('Surfer',4,800,2,3,0),
  ('Classic',20,496,3,3,1),
  ('Classic',22,369,3,3,2),
  ('Pyramid',4,669,3,3,2),
  ('Titan',9,195,2,2,1);

    --4. Create table Weapon
  DROP TABLE weapon
CREATE TABLE weapon(
id SERIAL PRIMARY KEY,
  weapon_name VARCHAR (30) NOT NULL,
  energy INT,
  atack INT,
  weapon_level INT
  );
  
  --Data for table Weapon
  INSERT INTO weapon (weapon_name,energy,atack,weapon_level)
VALUES
  ('Shutgun',30,43313,0),
  ('Lazer',18,36891,2),
  ('Minigun',5,50465,4),
  ('Double_rocket',10,44533,1),
  ('Shutgun',29,43187,3),
  ('Lazer',22,22873,1),
  ('Drill',27,31814,7),
  ('Saw',17,16229,4),
  ('Minigun',6,49143,8),
  ('Lazer',6,3231,1);
INSERT INTO weapon (weapon_name,energy,atack,weapon_level)
VALUES
  ('Rocket',19,99723,9),
  ('Lazer',14,21250,8),
  ('Minigun',16,80957,0),
  ('Drill',10,91059,7),
  ('Lazer',30,2563,6),
  ('Saw',1,70105,6),
  ('Saw',27,48245,7),
  ('Minigun',1,65330,10),
  ('Double_rocket',12,59735,2),
  ('Lazer',0,54534,1);
INSERT INTO weapon (weapon_name,energy,atack,weapon_level)
VALUES
  ('Drill',18,12880,4),
  ('Blade',7,88042,4),
  ('Minigun',4,5758,5),
  ('Shutgun',9,50868,2),
  ('Shutgun',13,74452,6),
  ('Rocket',20,85630,3),
  ('Rocket',16,17208,3),
  ('Blade',19,49136,0),
  ('Rocket',24,14943,8),
  ('Shutgun',17,17307,9);
INSERT INTO weapon (weapon_name,energy,atack,weapon_level)
VALUES
  ('Minigun',16,22489,1),
  ('Drill',20,77264,5),
  ('Saw',25,10108,9),
  ('Double_rocket',26,75348,6),
  ('Saw',24,78117,3),
  ('Drill',22,3866,7),
  ('Double_rocket',7,55388,9),
  ('Double_rocket',25,57111,1),
  ('Drill',28,53743,0),
  ('Drill',18,24553,9);
INSERT INTO weapon (weapon_name,energy,atack,weapon_level)
VALUES
  ('Blade',4,45206,2),
  ('Minigun',15,67246,8),
  ('Drill',12,79560,0),
  ('Minigun',20,29713,2),
  ('Saw',8,34452,3),
  ('Lazer',9,65790,1),
  ('Blade',24,84089,1),
  ('Minigun',24,65078,3),
  ('Lazer',28,91932,5),
  ('Saw',0,81100,6);
INSERT INTO weapon (weapon_name,energy,atack,weapon_level)
VALUES
  ('Saw',8,16522,2),
  ('Drill',10,3462,7),
  ('Saw',19,57730,7),
  ('Blade',0,62598,3),
  ('Lazer',20,50813,7),
  ('Saw',1,33950,8),
  ('Double_rocket',10,39962,8),
  ('Saw',1,52378,8),
  ('Minigun',4,45864,6),
  ('Drill',1,99746,6);
INSERT INTO weapon (weapon_name,energy,atack,weapon_level)
VALUES
  ('Rocket',17,64643,2),
  ('Saw',3,23666,1),
  ('Lazer',1,65462,8),
  ('Saw',4,28784,4),
  ('Shutgun',12,27952,1),
  ('Double_rocket',7,54449,7),
  ('Saw',2,40352,5),
  ('Blade',8,60827,4),
  ('Saw',19,70491,3),
  ('Shutgun',1,27941,8);
INSERT INTO weapon (weapon_name,energy,atack,weapon_level)
VALUES
  ('Double_rocket',15,69114,8),
  ('Minigun',8,19298,2),
  ('Drill',28,47067,7),
  ('Minigun',14,99592,6),
  ('Double_rocket',14,7171,6),
  ('Drill',6,23356,9),
  ('Saw',10,35659,5),
  ('Lazer',16,76139,3),
  ('Double_rocket',10,30033,7),
  ('Saw',27,74487,0);
INSERT INTO weapon (weapon_name,energy,atack,weapon_level)
VALUES
  ('Shutgun',16,37978,8),
  ('Double_rocket',8,96726,2),
  ('Double_rocket',4,41358,2),
  ('Drill',28,50150,1),
  ('Minigun',24,46822,10),
  ('Minigun',25,24918,2),
  ('Shutgun',8,65435,2),
  ('Double_rocket',28,68895,10),
  ('Double_rocket',11,16777,6),
  ('Double_rocket',23,18551,5);
INSERT INTO weapon (weapon_name,energy,atack,weapon_level)
VALUES
  ('Double_rocket',26,80882,2),
  ('Rocket',22,93408,3),
  ('Double_rocket',10,29063,10),
  ('Double_rocket',16,95052,6),
  ('Shutgun',6,59857,4),
  ('Rocket',4,65219,7),
  ('Lazer',30,71072,7),
  ('Double_rocket',20,3136,6),
  ('Shutgun',28,2683,9),
  ('Rocket',20,87327,10);

  CREATE TABLE wheels(
id SERIAL PRIMARY KEY,
  wheel_name VARCHAR (30) NOT NULL, 
  energy INT,
  health INT,
  wheel_level INT
  );
  
  --Data fo table Wheels
  
  INSERT INTO wheels (wheel_name,energy,health,wheel_level)
VALUES
  ('Sticky_roller',10,39714,6),
  ('Sticky_roller',9,67175,3),
  ('Tyre',4,28664,2),
  ('Tyre',3,25631,8),
  ('Knob',9,98314,8),
  ('Roller',8,62813,6),
  ('Roller',3,42059,3),
  ('Tyre',1,45552,0),
  ('Scuter',2,65717,9),
  ('Sticky_roller',1,42717,7);
INSERT INTO wheels (wheel_name,energy,health,wheel_level)
VALUES
  ('Sticky_roller',7,17396,9),
  ('Tyre',10,49906,9),
  ('Bigfoot',1,90445,6),
  ('Sticky_tyre',2,99016,1),
  ('Sticky_roller',3,89611,9),
  ('Sticky_tyre',9,87521,10),
  ('Bigfoot',8,28671,3),
  ('Scuter',1,95785,1),
  ('Sticky_roller',9,14269,2),
  ('Scuter',3,29810,9);
INSERT INTO wheels (wheel_name,energy,health,wheel_level)
VALUES
  ('Scuter',7,71242,9),
  ('Bigfoot',2,14883,9),
  ('Bigfoot',4,68771,3),
  ('Sticky_roller',10,73767,4),
  ('Sticky_roller',10,45916,4),
  ('Scuter',2,62055,3),
  ('Knob',1,62221,10),
  ('Tyre',5,62214,5),
  ('Sticky_roller',4,25720,4),
  ('Bigfoot',7,79280,5);
INSERT INTO wheels (wheel_name,energy,health,wheel_level)
VALUES
  ('Bigfoot',10,68788,5),
  ('Knob',5,4373,6),
  ('Tyre',4,63099,4),
  ('Bigfoot',10,97129,5),
  ('Tyre',7,61324,10),
  ('Sticky_tyre',4,99040,2),
  ('Sticky_roller',3,84628,4),
  ('Tyre',6,51794,8),
  ('Roller',2,68635,7),
  ('Roller',5,49731,4);
INSERT INTO wheels (wheel_name,energy,health,wheel_level)
VALUES
  ('Tyre',2,29052,8),
  ('Roller',0,49048,9),
  ('Tyre',6,13563,7),
  ('Sticky_tyre',5,8617,5),
  ('Bigfoot',6,98994,9),
  ('Sticky_roller',6,7676,4),
  ('Bigfoot',8,46336,4),
  ('Tyre',6,29752,7),
  ('Sticky_tyre',8,38627,0),
  ('Sticky_roller',5,22359,4);
INSERT INTO wheels (wheel_name,energy,health,wheel_level)
VALUES
  ('Scuter',10,42023,8),
  ('Roller',2,46014,0),
  ('Sticky_roller',9,2463,3),
  ('Roller',1,52312,8),
  ('Tyre',4,92332,5),
  ('Bigfoot',9,66248,2),
  ('Knob',6,65059,4),
  ('Bigfoot',6,5703,8),
  ('Knob',3,4558,3),
  ('Bigfoot',6,78169,3);
INSERT INTO wheels (wheel_name,energy,health,wheel_level)
VALUES
  ('Scuter',2,33611,7),
  ('Sticky_tyre',3,86172,6),
  ('Bigfoot',6,54722,2),
  ('Bigfoot',7,10130,8),
  ('Tyre',8,19554,5),
  ('Sticky_roller',4,95018,0),
  ('Scuter',5,98950,1),
  ('Roller',1,48329,2),
  ('Sticky_roller',2,99867,7),
  ('Knob',1,90889,1);
INSERT INTO wheels (wheel_name,energy,health,wheel_level)
VALUES
  ('Roller',3,40143,5),
  ('Roller',7,61934,3),
  ('Sticky_roller',1,64333,7),
  ('Bigfoot',3,14899,7),
  ('Tyre',0,3761,8),
  ('Sticky_tyre',3,87450,8),
  ('Tyre',3,40116,8),
  ('Knob',3,25171,4),
  ('Knob',1,67813,3),
  ('Bigfoot',7,9011,2);
INSERT INTO wheels (wheel_name,energy,health,wheel_level)
VALUES
  ('Sticky_tyre',9,93770,3),
  ('Sticky_roller',4,64488,1),
  ('Roller',9,98433,5),
  ('Knob',2,57629,4),
  ('Sticky_roller',9,41737,7),
  ('Knob',1,39713,5),
  ('Sticky_tyre',4,95361,10),
  ('Sticky_roller',9,74099,5),
  ('Tyre',7,50763,1),
  ('Scuter',2,59838,8);
INSERT INTO wheels (wheel_name,energy,health,wheel_level)
VALUES
  ('Sticky_roller',3,40598,4),
  ('Scuter',0,98509,8),
  ('Bigfoot',6,10972,5),
  ('Roller',8,88142,1),
  ('Sticky_tyre',6,25355,5),
  ('Knob',10,19776,7),
  ('Tyre',1,48914,4),
  ('Tyre',6,29076,3),
  ('Roller',5,12313,4),
  ('Tyre',7,38095,8);

  --6. Create table Tools
CREATE TABLE tools(
id SERIAL PRIMARY KEY,
  tool_name VARCHAR (30) NOT NULL,
  energy INT,
  health INT,
  tool_level INT
  );
  --Data for table Tools
  
  INSERT INTO tools (tool_name,energy,health,tool_level)
VALUES
  ('Lifter',10,93663,3),
  ('Lifter',5,97706,8),
  ('Forklift',6,80946,1),
  ('Reverse',8,60276,6),
  ('Repulse',2,60141,3),
  ('Lifter',2,74391,5),
  ('Lifter',8,29968,6),
  ('Booster',5,45152,8),
  ('Lifter',1,59149,5),
  ('Lifter',9,55841,0);
INSERT INTO tools (tool_name,energy,health,tool_level)
VALUES
  ('Repulse',9,41627,6),
  ('Repulse',8,49128,1),
  ('First_aid_kit',3,36384,3),
  ('Repulse',9,57773,6),
  ('Harpoon',4,8719,10),
  ('Reverse',9,42488,7),
  ('Repulse',8,95026,8),
  ('Lifter',3,40442,2),
  ('Repulse',0,27698,7),
  ('Forklift',2,58476,7);
INSERT INTO tools (tool_name,energy,health,tool_level)
VALUES
  ('First_aid_kit',9,72369,5),
  ('Lifter',7,51625,9),
  ('Harpoon',6,13112,4),
  ('First_aid_kit',10,7559,4),
  ('Forklift',10,51502,5),
  ('Harpoon',9,26983,6),
  ('Booster',3,99354,4),
  ('Booster',0,42213,1),
  ('Booster',7,93825,8),
  ('First_aid_kit',9,96514,3);
INSERT INTO tools (tool_name,energy,health,tool_level)
VALUES
  ('First_aid_kit',1,38699,9),
  ('Forklift',6,81405,6),
  ('Harpoon',7,81247,9),
  ('Repulse',10,39841,5),
  ('First_aid_kit',6,9842,2),
  ('Harpoon',7,34758,3),
  ('Lifter',7,66967,1),
  ('Harpoon',8,68610,7),
  ('Reverse',9,74637,9),
  ('Lifter',3,2686,7);
INSERT INTO tools (tool_name,energy,health,tool_level)
VALUES
  ('Booster',7,48658,1),
  ('Reverse',1,50413,8),
  ('Forklift',1,65492,4),
  ('Forklift',5,58815,2),
  ('First_aid_kit',5,39139,6),
  ('Repulse',7,58734,1),
  ('Forklift',6,60330,7),
  ('Reverse',4,86093,1),
  ('Forklift',3,2045,8),
  ('Harpoon',8,1740,1);
INSERT INTO tools (tool_name,energy,health,tool_level)
VALUES
  ('Lifter',3,71998,2),
  ('Lifter',6,30677,8),
  ('Reverse',9,75663,7),
  ('First_aid_kit',2,30303,10),
  ('Booster',4,64620,0),
  ('Harpoon',10,23554,8),
  ('Forklift',5,67490,0),
  ('Reverse',9,77873,8),
  ('Forklift',9,7548,10),
  ('First_aid_kit',4,67203,6);
INSERT INTO tools (tool_name,energy,health,tool_level)
VALUES
  ('Lifter',2,22621,7),
  ('Booster',5,78100,6),
  ('Forklift',1,71142,6),
  ('Lifter',8,96465,2),
  ('First_aid_kit',1,92741,2),
  ('Lifter',6,58880,9),
  ('Forklift',6,1577,4),
  ('First_aid_kit',8,54571,0),
  ('Booster',2,85979,5),
  ('Lifter',5,1665,6);
INSERT INTO tools (tool_name,energy,health,tool_level)
VALUES
  ('Forklift',6,80019,9),
  ('Repulse',7,94579,7),
  ('Reverse',8,54365,2),
  ('Repulse',4,58717,7),
  ('Repulse',5,64870,10),
  ('First_aid_kit',8,61527,8),
  ('Repulse',2,58786,9),
  ('Reverse',2,27750,1),
  ('Reverse',5,61464,8),
  ('Reverse',3,59488,9);
INSERT INTO tools (tool_name,energy,health,tool_level)
VALUES
  ('Forklift',0,48532,1),
  ('Booster',6,38543,5),
  ('Repulse',7,32975,7),
  ('Reverse',6,11912,4),
  ('Reverse',2,26299,7),
  ('Lifter',8,73241,2),
  ('Booster',2,16745,3),
  ('Booster',3,27178,4),
  ('Forklift',5,9549,4),
  ('Harpoon',9,50718,4);
INSERT INTO tools (tool_name,energy,health,tool_level)
VALUES
  ('Forklift',1,41300,2),
  ('Booster',5,82087,8),
  ('Lifter',9,80305,8),
  ('Harpoon',4,56343,7),
  ('Reverse',3,37801,6),
  ('Lifter',2,67191,10),
  ('Harpoon',3,23527,3),
  ('Booster',6,96630,5),
  ('Forklift',5,29031,4),
  ('Forklift',7,90892,3);

  CREATE TABLE upgrade_kit(
id SERIAL PRIMARY KEY,
  upgrade_kit_name_id VARCHAR (30) NOT NULL,
  power_surplus INT,
  upgrade_kit_level INT
  );
  --Data for table Upgrade_kit
  INSERT INTO upgrade_kit (upgrade_kit_name_id,power_surplus,upgrade_kit_level)
VALUES
  ('Health_toolbox',678,9),
  ('Energy_toolbox',185,0),
  ('Health_toolbox',800,3),
  ('Atack_toolbox',221,7),
  ('Energy_toolbox',543,3),
  ('Energy_toolbox',608,6),
  ('Energy_toolbox',851,9),
  ('Health_toolbox',808,6),
  ('Atack_toolbox',171,1),
  ('Health_toolbox',662,5);
INSERT INTO upgrade_kit (upgrade_kit_name_id,power_surplus,upgrade_kit_level)
VALUES
  ('Health_toolbox',951,3),
  ('Atack_toolbox',279,3),
  ('Health_toolbox',174,8),
  ('Atack_toolbox',247,9),
  ('Energy_toolbox',519,9),
  ('Energy_toolbox',654,2),
  ('Energy_toolbox',765,4),
  ('Energy_toolbox',375,6),
  ('Atack_toolbox',477,10),
  ('Energy_toolbox',829,4);
INSERT INTO upgrade_kit (upgrade_kit_name_id,power_surplus,upgrade_kit_level)
VALUES
  ('Energy_toolbox',286,5),
  ('Energy_toolbox',694,4),
  ('Health_toolbox',488,0),
  ('Health_toolbox',784,8),
  ('Atack_toolbox',953,9),
  ('Energy_toolbox',88,2),
  ('Energy_toolbox',810,9),
  ('Atack_toolbox',848,1),
  ('Health_toolbox',37,7),
  ('Atack_toolbox',39,9);
INSERT INTO upgrade_kit (upgrade_kit_name_id,power_surplus,upgrade_kit_level)
VALUES
  ('Health_toolbox',611,3),
  ('Atack_toolbox',206,4),
  ('Atack_toolbox',935,2),
  ('Atack_toolbox',709,0),
  ('Health_toolbox',223,1),
  ('Atack_toolbox',199,6),
  ('Atack_toolbox',766,3),
  ('Health_toolbox',398,5),
  ('Health_toolbox',436,6),
  ('Energy_toolbox',849,9);
INSERT INTO upgrade_kit (upgrade_kit_name_id,power_surplus,upgrade_kit_level)
VALUES
  ('Atack_toolbox',540,3),
  ('Atack_toolbox',428,0),
  ('Health_toolbox',376,10),
  ('Energy_toolbox',591,5),
  ('Energy_toolbox',818,8),
  ('Health_toolbox',746,5),
  ('Energy_toolbox',191,5),
  ('Atack_toolbox',158,1),
  ('Atack_toolbox',36,6),
  ('Health_toolbox',503,8);
INSERT INTO upgrade_kit (upgrade_kit_name_id,power_surplus,upgrade_kit_level)
VALUES
  ('Health_toolbox',819,9),
  ('Atack_toolbox',537,9),
  ('Atack_toolbox',730,4),
  ('Energy_toolbox',576,7),
  ('Health_toolbox',930,7),
  ('Health_toolbox',176,3),
  ('Atack_toolbox',630,7),
  ('Energy_toolbox',376,4),
  ('Health_toolbox',675,7),
  ('Atack_toolbox',850,1);
INSERT INTO upgrade_kit (upgrade_kit_name_id,power_surplus,upgrade_kit_level)
VALUES
  ('Health_toolbox',879,6),
  ('Health_toolbox',262,8),
  ('Health_toolbox',792,9),
  ('Energy_toolbox',354,3),
  ('Health_toolbox',124,7),
  ('Health_toolbox',801,5),
  ('Health_toolbox',717,2),
  ('Health_toolbox',164,1),
  ('Health_toolbox',321,6),
  ('Health_toolbox',927,8);
INSERT INTO upgrade_kit (upgrade_kit_name_id,power_surplus,upgrade_kit_level)
VALUES
  ('Atack_toolbox',823,8),
  ('Health_toolbox',783,2),
  ('Atack_toolbox',589,10),
  ('Atack_toolbox',970,3),
  ('Atack_toolbox',698,8),
  ('Health_toolbox',483,5),
  ('Health_toolbox',904,1),
  ('Health_toolbox',694,7),
  ('Atack_toolbox',745,6),
  ('Atack_toolbox',988,4);
INSERT INTO upgrade_kit (upgrade_kit_name_id,power_surplus,upgrade_kit_level)
VALUES
  ('Energy_toolbox',859,3),
  ('Health_toolbox',968,3),
  ('Energy_toolbox',989,1),
  ('Energy_toolbox',973,5),
  ('Health_toolbox',698,6),
  ('Atack_toolbox',186,8),
  ('Health_toolbox',532,3),
  ('Health_toolbox',729,9),
  ('Atack_toolbox',25,4),
  ('Energy_toolbox',449,4);
INSERT INTO upgrade_kit (upgrade_kit_name_id,power_surplus,upgrade_kit_level)
VALUES
  ('Energy_toolbox',166,9),
  ('Health_toolbox',793,3),
  ('Atack_toolbox',940,9),
  ('Energy_toolbox',367,3),
  ('Health_toolbox',143,6),
  ('Health_toolbox',141,10),
  ('Atack_toolbox',426,2),
  ('Energy_toolbox',472,6),
  ('Health_toolbox',307,9),
  ('Atack_toolbox',131,0);


--8. Create table Pilot
CREATE TABLE pilot(
id SERIAL ,
  name_id VARCHAR (30) NOT NULL ,
  status_id int ,
  cap INT,
  garment INT,
  face INT,
  PRIMARY KEY (id, status_id)
  );
  
--Data for table Pilot
INSERT INTO pilot (name_id,status_id,cap,garment,face)
VALUES
  ('Clare',1,96,34,98),
  ('Ella',1,9,59,60),
  ('Donna',1,14,86,1),
  ('Amena',2,50,1,94),
  ('Gay',2,65,3,98),
  ('Penelope',1,49,99,100),
  ('Ivan',2,59,67,54),
  ('Kevin',2,83,57,8),
  ('Lunea',1,17,40,1),
  ('Lenore',1,56,17,23);
INSERT INTO pilot (name_id,status_id,cap,garment,face)
VALUES
  ('Jordan',2,77,45,10),
  ('Ginger',2,28,69,73),
  ('Kim',2,95,71,53),
  ('Bryar',2,48,39,19),
  ('Colleen',2,67,80,1),
  ('Jenette',2,18,76,73),
  ('Paki',2,44,10,70),
  ('Isadora',2,19,59,5),
  ('Kelsey',2,19,1,17),
  ('Quon',1,46,79,88);
INSERT INTO pilot (name_id,status_id,cap,garment,face)
VALUES
  ('Alyssa',1,69,97,30),
  ('Sonya',1,30,71,75),
  ('Hannah',1,4,4,92),
  ('Quemby',1,31,44,24),
  ('Micah',1,62,57,26),
  ('Stewart',1,6,95,98),
  ('Oliver',2,32,8,27),
  ('Herrod',2,91,2,57),
  ('Benedict',1,2,59,75),
  ('Grady',1,47,80,56);
INSERT INTO pilot (name_id,status_id,cap,garment,face)
VALUES
  ('Cruz',2,92,79,4),
  ('Laith',2,30,58,12),
  ('Nicholas',1,2,61,10),
  ('Elizabeth',1,56,23,42),
  ('Chaim',1,5,85,69),
  ('Susan',2,64,30,66),
  ('Haviva',1,24,96,36),
  ('Keefe',2,11,99,84),
  ('Iris',2,26,62,54),
  ('Emmanuel',1,37,35,44);
INSERT INTO pilot (name_id,status_id,cap,garment,face)
VALUES
  ('Hector',2,98,71,94),
  ('Harlan',1,91,19,16),
  ('Halla',2,76,47,96),
  ('Arthur',2,45,34,76),
  ('Illana',1,32,6,49),
  ('Rinah',2,92,93,35),
  ('Bo',2,2,53,29),
  ('Samson',2,44,73,96),
  ('Baxter',1,67,5,39),
  ('Jolene',2,22,87,8);
INSERT INTO pilot (name_id,status_id,cap,garment,face)
VALUES
  ('Cameran',2,49,90,98),
  ('Audra',2,56,69,41),
  ('Oliver',2,89,51,72),
  ('Caleb',2,80,27,91),
  ('Constance',2,50,93,31),
  ('Zena',1,33,90,37),
  ('Tashya',1,10,68,77),
  ('Sasha',1,23,62,84),
  ('Keith',1,16,98,39),
  ('Gabriel',1,62,17,47);
INSERT INTO pilot (name_id,status_id,cap,garment,face)
VALUES
  ('Cheryl',2,64,48,2),
  ('Fleur',2,76,56,8),
  ('Tamekah',2,20,19,45),
  ('Alfonso',2,73,5,14),
  ('Stone',1,8,68,34),
  ('Harper',1,17,38,68),
  ('Mara',2,63,53,50),
  ('George',1,74,51,63),
  ('Gisela',1,83,84,86),
  ('Tucker',2,56,66,92);
INSERT INTO pilot (name_id,status_id,cap,garment,face)
VALUES
  ('Alisa',2,69,70,30),
  ('Ella',1,24,89,89),
  ('Myles',2,17,90,4),
  ('Whilemina',2,37,21,72),
  ('Madeline',1,24,0,42),
  ('Axel',1,68,47,36),
  ('Hiram',2,40,30,16),
  ('Belle',1,99,33,38),
  ('Ivor',1,76,100,32),
  ('Dustin',2,41,16,47);
INSERT INTO pilot (name_id,status_id,cap,garment,face)
VALUES
  ('Holmes',2,44,20,42),
  ('Alana',2,93,24,18),
  ('Malcolm',1,9,54,86),
  ('Kermit',1,37,48,43),
  ('Kirsten',1,68,15,67),
  ('Ifeoma',2,27,65,39),
  ('Kelly',1,88,23,18),
  ('Celeste',1,83,99,71),
  ('Cara',1,92,55,58),
  ('Stacy',2,35,62,85);
INSERT INTO pilot (name_id,status_id,cap,garment,face)
VALUES
  ('Levi',1,94,70,62),
  ('Holmes',2,12,32,77),
  ('Sydney',1,35,65,51),
  ('Jessica',2,89,73,63),
  ('Madonna',2,46,36,30),
  ('Buckminster',1,42,43,79),
  ('Noel',2,38,12,68),
  ('TaShya',1,99,79,14),
  ('Ayanna',1,96,46,51),
  ('Malik',1,5,11,9);


  --9. Create table Co_Pilot
CREATE TABLE co_pilot(
id SERIAL PRIMARY KEY,
  name_id VARCHAR (30) NOT NULL,
  co_pilot_level INT,
  skils INT
  );
  
--Data for table Co_Pilot
INSERT INTO co_pilot (name_id,co_pilot_level,skils)
VALUES
  ('Kermit',7,802),
  ('Louis',42,625),
  ('Summer',4,508),
  ('Wilma',56,424),
  ('Palmer',2,486),
  ('Jenette',44,562),
  ('Nomlanga',53,928),
  ('Amena',55,210),
  ('Graham',45,49),
  ('Shay',43,110);
INSERT INTO co_pilot (name_id,co_pilot_level,skils)
VALUES
  ('Delilah',55,66),
  ('Clarke',39,576),
  ('Vernon',27,186),
  ('Kadeem',1,930),
  ('Natalie',38,707),
  ('Quemby',10,530),
  ('Len',17,451),
  ('Maia',19,855),
  ('Devin',59,420),
  ('Serena',13,39);
INSERT INTO co_pilot (name_id,co_pilot_level,skils)
VALUES
  ('Ori',39,587),
  ('Neil',49,86),
  ('Neil',28,399),
  ('Anjolie',43,576),
  ('Risa',36,836),
  ('Jesse',54,108),
  ('Rooney',59,484),
  ('Adrienne',16,741),
  ('Justina',11,843),
  ('Brent',56,323);
INSERT INTO co_pilot (name_id,co_pilot_level,skils)
VALUES
  ('Jasper',10,448),
  ('Brett',0,537),
  ('Addison',48,765),
  ('Oliver',52,717),
  ('Xavier',2,487),
  ('Xandra',8,394),
  ('Ashton',13,774),
  ('Adam',13,274),
  ('Priscilla',48,471),
  ('Rinah',51,535);
INSERT INTO co_pilot (name_id,co_pilot_level,skils)
VALUES
  ('Leslie',57,567),
  ('Howard',43,901),
  ('Dante',54,254),
  ('Ulla',14,847),
  ('Keane',10,380),
  ('Victor',3,319),
  ('Drew',33,377),
  ('Neil',38,7),
  ('Matthew',40,420),
  ('Kylynn',55,547);
INSERT INTO co_pilot (name_id,co_pilot_level,skils)
VALUES
  ('Katelyn',55,384),
  ('Alisa',26,319),
  ('Patricia',54,645),
  ('Nicholas',53,431),
  ('Jane',32,752),
  ('Colette',46,35),
  ('Neve',12,143),
  ('Madaline',9,534),
  ('Madaline',49,608),
  ('Lester',54,138);
INSERT INTO co_pilot (name_id,co_pilot_level,skils)
VALUES
  ('Marvin',17,865),
  ('Alana',7,707),
  ('Ruth',11,710),
  ('Yoko',24,794),
  ('Risa',58,179),
  ('Plato',56,662),
  ('Petra',38,192),
  ('Brandon',55,54),
  ('Tarik',11,21),
  ('Aristotle',2,801);
INSERT INTO co_pilot (name_id,co_pilot_level,skils)
VALUES
  ('Ruth',1,401),
  ('Summer',36,649),
  ('Chastity',25,36),
  ('Buffy',3,875),
  ('Karina',21,542),
  ('Amery',43,865),
  ('Gabriel',17,90),
  ('Gannon',33,515),
  ('Reese',23,808),
  ('Garrison',42,568);
INSERT INTO co_pilot (name_id,co_pilot_level,skils)
VALUES
  ('Mohammad',28,549),
  ('Jaden',2,128),
  ('Jackson',22,150),
  ('Cathleen',24,452),
  ('Irene',26,118),
  ('Holmes',59,708),
  ('Laith',0,994),
  ('Jescie',26,490),
  ('Libby',40,802),
  ('Noelle',1,489);
INSERT INTO co_pilot (name_id,co_pilot_level,skils)
VALUES
  ('Tashya',59,770),
  ('Uriah',50,442),
  ('Cooper',42,208),
  ('Sybill',23,127),
  ('Reese',30,627),
  ('Quyn',33,904),
  ('Libby',46,296),
  ('Wang',13,846),
  ('Martena',56,648),
  ('Gavin',20,211);

--10. Create table Championship
CREATE TABLE championship(
id SERIAL PRIMARY KEY,
  championship_name VARCHAR (30) NOT NULL,
  championship_level_name VARCHAR (30) NOT NULL,
  user_rate_id INT,
  started_at TIMESTAMP
  );
  
  --Data for table Championship
  
  INSERT INTO championship (championship_name,championship_level_name,user_rate_id,started_at)
VALUES
  ('Halla','carbon',4,'2023-01-20 01:11:08'),
  ('Erica','wooden',14,'2023-07-09 16:01:06'),
  ('Dai','military',2,'2023-01-10 07:46:44'),
  ('Flynn','military',8,'2023-04-03 12:36:07'),
  ('Delilah','carbon',4,'2023-04-09 16:02:21'),
  ('Laura','golden',14,'2022-12-11 08:56:32'),
  ('Mia','military',2,'2021-10-19 18:35:11'),
  ('Jennifer','wooden',14,'2023-04-01 10:29:58'),
  ('Sandra','carbon',8,'2023-09-14 22:32:12'),
  ('Abbot','golden',2,'2023-02-11 06:03:27');
INSERT INTO championship (championship_name,championship_level_name,user_rate_id,started_at)
VALUES
  ('Giacomo','carbon',3,'2022-12-22 20:50:23'),
  ('Elizabeth','wooden',5,'2021-12-28 06:06:39'),
  ('Francis','carbon',14,'2023-08-25 05:10:13'),
  ('Charity','wooden',4,'2022-10-12 17:34:14'),
  ('Orla','wooden',14,'2023-01-12 16:41:07'),
  ('Abdul','golden',11,'2022-10-26 04:43:18'),
  ('Bryar','metall',4,'2022-09-07 01:31:02'),
  ('Phelan','wooden',2,'2021-11-04 08:46:26'),
  ('Fritz','metall',12,'2021-12-31 10:46:17'),
  ('Melvin','metall',3,'2021-11-19 02:03:52');
INSERT INTO championship (championship_name,championship_level_name,user_rate_id,started_at)
VALUES
  ('Brock','metall',3,'2022-12-03 07:37:12'),
  ('Rebekah','wooden',11,'2023-02-26 23:59:38'),
  ('Colette','wooden',12,'2022-01-06 15:40:56'),
  ('Cade','metall',2,'2023-01-18 05:37:05'),
  ('Indira','golden',6,'2022-11-27 10:20:14'),
  ('Yuli','military',8,'2022-07-17 03:04:43'),
  ('Fritz','wooden',1,'2022-01-29 19:27:39'),
  ('Lucius','wooden',13,'2022-03-07 07:19:39'),
  ('Brynn','wooden',8,'2022-08-15 18:44:27'),
  ('Brody','golden',5,'2023-07-28 13:33:37');
INSERT INTO championship (championship_name,championship_level_name,user_rate_id,started_at)
VALUES
  ('Chaney','golden',7,'2022-11-27 12:10:07'),
  ('Ursa','carbon',5,'2023-03-01 06:17:36'),
  ('Baker','metall',2,'2022-04-13 01:12:21'),
  ('Bevis','golden',1,'2023-09-19 06:07:42'),
  ('Jena','military',14,'2022-02-11 01:12:36'),
  ('Alfonso','military',4,'2023-08-25 19:31:06'),
  ('Audra','wooden',6,'2023-05-06 13:15:47'),
  ('Philip','golden',10,'2023-08-09 09:33:18'),
  ('Abraham','military',12,'2022-01-19 18:40:21'),
  ('Orlando','carbon',12,'2022-03-17 07:02:51');
INSERT INTO championship (championship_name,championship_level_name,user_rate_id,started_at)
VALUES
  ('Herman','military',11,'2022-02-01 04:22:13'),
  ('Kyle','military',5,'2022-02-28 00:50:29'),
  ('Amity','military',9,'2022-03-30 14:47:03'),
  ('Odysseus','golden',11,'2022-05-16 17:08:04'),
  ('George','metall',7,'2023-02-03 14:35:52'),
  ('Barclay','carbon',11,'2023-03-12 15:00:30'),
  ('Sopoline','military',9,'2022-10-04 21:26:43'),
  ('Price','golden',3,'2022-10-12 05:27:06'),
  ('Jane','wooden',4,'2022-06-14 15:08:17'),
  ('Ocean','military',12,'2023-09-19 09:52:53');
INSERT INTO championship (championship_name,championship_level_name,user_rate_id,started_at)
VALUES
  ('Ifeoma','wooden',4,'2023-07-15 07:19:10'),
  ('Urielle','military',14,'2022-05-04 10:12:40'),
  ('Emily','wooden',8,'2022-05-14 13:10:01'),
  ('Tarik','wooden',5,'2022-11-25 12:42:57'),
  ('Honorato','golden',7,'2021-10-05 09:28:10'),
  ('Randall','wooden',11,'2022-12-15 16:19:19'),
  ('Moana','golden',3,'2022-10-25 22:40:50'),
  ('Chantale','golden',12,'2023-03-21 00:39:07'),
  ('Moana','military',14,'2021-10-18 05:16:57'),
  ('Hyacinth','metall',1,'2023-05-15 00:58:58');
INSERT INTO championship (championship_name,championship_level_name,user_rate_id,started_at)
VALUES
  ('Joshua','wooden',11,'2023-07-31 20:53:34'),
  ('TaShya','carbon',9,'2022-10-11 01:02:51'),
  ('Abraham','carbon',14,'2022-12-10 19:16:01'),
  ('Cynthia','golden',7,'2023-05-24 15:55:51'),
  ('Fuller','golden',1,'2022-07-05 09:49:17'),
  ('Orson','carbon',10,'2021-11-25 11:54:56'),
  ('Virginia','carbon',1,'2023-01-17 11:12:24'),
  ('Lunea','metall',14,'2023-01-23 17:32:19'),
  ('Christopher','carbon',14,'2023-03-30 16:08:41'),
  ('Seth','military',12,'2023-03-09 23:23:25');
INSERT INTO championship (championship_name,championship_level_name,user_rate_id,started_at)
VALUES
  ('Richard','wooden',5,'2022-11-26 14:09:11'),
  ('Claire','military',11,'2022-05-26 14:46:42'),
  ('Petra','carbon',5,'2021-09-27 20:47:06'),
  ('Deirdre','golden',6,'2021-10-29 12:51:54'),
  ('Ella','golden',1,'2022-05-20 23:42:05'),
  ('Cade','carbon',14,'2023-05-23 07:06:47'),
  ('Kylynn','carbon',5,'2022-12-29 00:09:29'),
  ('Nayda','metall',5,'2023-08-15 18:11:00'),
  ('Xavier','wooden',13,'2022-09-08 18:15:59'),
  ('Forrest','wooden',4,'2022-12-06 04:48:30');
INSERT INTO championship (championship_name,championship_level_name,user_rate_id,started_at)
VALUES
  ('Stone','metall',13,'2023-06-27 04:39:47'),
  ('Lev','wooden',12,'2022-04-13 23:48:13'),
  ('Honorato','carbon',7,'2022-11-28 23:59:53'),
  ('Amelia','wooden',3,'2021-11-02 20:15:57'),
  ('Stephanie','golden',10,'2022-06-18 11:17:16'),
  ('Maggy','wooden',9,'2022-07-26 14:34:32'),
  ('Shelley','metall',8,'2022-03-14 16:42:32'),
  ('Hillary','golden',3,'2023-08-16 16:13:19'),
  ('Chancellor','golden',14,'2023-01-10 07:42:17'),
  ('Vaughan','carbon',6,'2022-04-10 17:01:31');
INSERT INTO championship (championship_name,championship_level_name,user_rate_id,started_at)
VALUES
  ('Burton','golden',4,'2022-08-17 02:17:11'),
  ('Branden','metall',9,'2023-02-22 08:51:47'),
  ('Lance','golden',12,'2023-06-01 00:36:28'),
  ('Jacob','metall',4,'2022-12-09 11:53:12'),
  ('Kiona','wooden',11,'2021-10-31 14:58:53'),
  ('Chloe','military',12,'2023-07-20 15:06:42'),
  ('Eve','carbon',9,'2022-11-09 16:48:02'),
  ('Eaton','wooden',9,'2022-10-11 23:54:33'),
  ('Leigh','metall',13,'2022-10-02 11:44:27'),
  ('Brenda','military',10,'2022-04-06 01:18:56');



-- --11. Create table Championship_statuses 
CREATE TABLE championship_statuses (
id SERIAL ,
status_name VARCHAR(30) UNIQUE,
  status_id int UNIQUE,
  PRIMARY KEY(id,status_id )
);  
  --Add Data for table championship_statuses
  
  INSERT INTO championship_statuses (status_name,status_id)
VALUES
  ('win',2),
  ('loss',1),
 
