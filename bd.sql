-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Апр 21 2022 г., 11:26
-- Версия сервера: 10.4.22-MariaDB
-- Версия PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `123`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(10) NOT NULL,
  `name_categories` varchar(100) DEFAULT NULL,
  `parent_categories` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `cities`
--

CREATE TABLE `cities` (
  `id` int(10) NOT NULL,
  `name_city` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `cities`
--

INSERT INTO `cities` (`id`, `name_city`) VALUES
(1, 'Tomsk'),
(2, 'Krasnoyarsk'),
(3, 'Moscow');

-- --------------------------------------------------------

--
-- Структура таблицы `companies`
--

CREATE TABLE `companies` (
  `id` int(10) NOT NULL,
  `name_company` varchar(100) DEFAULT NULL,
  `director` varchar(100) DEFAULT NULL,
  `INN` varchar(35) DEFAULT NULL,
  `OGRN` varchar(30) DEFAULT NULL,
  `adress` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `companies`
--

INSERT INTO `companies` (`id`, `name_company`, `director`, `INN`, `OGRN`, `adress`) VALUES
(1, 'Gazprom', 'Elizabeth J Reasoner', '400625079284', '2167296795796', '1024 Lincoln Street,  Penns Neck'),
(2, 'Roskosmos', 'Stephen R Martinez', '326502542915', '9105434176124', '1914 Lincoln Street, Princeton'),
(3, 'Digitalworld', 'Roberta P Trowbridge', '908330620308', '6018372965066', '4205 Byrd Lane Albuquerque'),
(4, 'Skyct', 'Junior C Negri', '7564260656803', '60183729650661', '3955 Stratford Drive Honolulu'),
(5, 'Virtualpiece', 'Timothy G Stanley', '431406598778', '2152284911634', '2682 Thunder Road San Jose');

-- --------------------------------------------------------

--
-- Структура таблицы `gender`
--

CREATE TABLE `gender` (
  `id` tinyint(1) NOT NULL,
  `rus` varchar(10) NOT NULL,
  `eng` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `gender`
--

INSERT INTO `gender` (`id`, `rus`, `eng`) VALUES
(1, 'Мужcкой', 'male'),
(2, 'Женский', 'female');

-- --------------------------------------------------------

--
-- Структура таблицы `project`
--

CREATE TABLE `project` (
  `id` int(10) NOT NULL,
  `name_project` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `tag`
--

CREATE TABLE `tag` (
  `id` int(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `color` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `tasks`
--

CREATE TABLE `tasks` (
  `id` int(10) NOT NULL,
  `name_task` varchar(100) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `surname` varchar(100) DEFAULT NULL,
  `patronymic` varchar(100) DEFAULT NULL,
  `birth_day` datetime DEFAULT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `company` int(10) DEFAULT NULL,
  `job` varchar(100) DEFAULT NULL,
  `street` varchar(50) DEFAULT NULL,
  `city` int(10) DEFAULT NULL,
  `telephone` varchar(15) DEFAULT NULL,
  `age` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `patronymic`, `birth_day`, `gender`, `email`, `company`, `job`, `street`, `city`, `telephone`, `age`) VALUES
(1, 'Gladys', 'B', 'Currey', '1984-04-05 00:00:00', 1, 'moises2009@yahoo.com', 1, 'Neurodiagnostic Technologist', '4461 Coulter Lane', 1, '8043326466', 30),
(2, 'Flora', 'F', 'Brown', '1960-07-11 00:00:00', 2, 'marcel.ankundi@hotmail.com', 2, 'Psychiatric Technician', '2602 Rose Avenue', 2, '5043132023', 24),
(3, 'Joseph', 'C', 'McCrary', '1953-07-12 00:00:00', 1, 'kaleb_bland2@yahoo.com', 1, 'Art Director', '4677 Walnut Hill Drive', 3, '513-256-1880', 64),
(4, 'Leo', 'H', 'Malone', '1973-04-12 00:00:00', 1, 'judd.stiedema@gmail.com', 2, 'Financial Clerk, All Other', '4659 Cherry Tree Drive', 2, '9043068535', 44),
(5, 'Eunice', 'K', 'Tulley', '1957-05-19 00:00:00', 2, 'ashly_goyet@gmail.com', 1, 'Recycling and Reclamation Worker', '38 North Bend River Road', 2, '6068260781', 59),
(6, 'Dana', 'D', 'Harden', '1964-05-07 00:00:00', 2, 'edmund_davi1@hotmail.com', 4, 'Police Detective', '648 Perry Street', 2, '8107437113', 33),
(7, 'Wade', 'L', 'Weber', '1952-02-12 00:00:00', 2, 'ivory1983@yahoo.com', 3, 'Marine Engineer', '651 Peaceful Lane', 3, '2164889205', 46),
(8, 'Mary', 'M', 'Montalvo', '1968-11-19 00:00:00', 2, 'dorothea.macgyv@hotmail.com', 4, 'Education Administrator, All Other', '4017 Hickory Street', 2, '8017772770', 53),
(9, 'Brian', 'A', 'Harris', '1986-03-18 00:00:00', 1, 'zackary1987@hotmail.com', 3, 'Refractory Materials Repairer, Except Brickmason', '2976 Oak Ridge Drive', 1, '', 51),
(10, 'Della', 'R', 'Gore', '1994-04-11 00:00:00', 1, 'sidney_watsi@gmail.com', 4, 'Police Detective', '4298 Cambridge Place', 1, '4105375394', 45),
(11, 'Charles', 'S', 'Hensley', '1983-08-15 00:00:00', 1, 'christina.roh@gmail.com', 3, 'Precision Agriculture Technician', '3854 Owen Lane', 1, '2318990469', 75),
(12, 'David', 'A', 'Dowler', '1975-09-07 00:00:00', 1, 'nia1990@hotmail.com', 4, 'Drilling and Boring Machine Tool Setter, Operator, and Tender, Metal and Plastic', '2525 Lost Creek Road', 1, '6109880906', 54),
(13, 'Israel', 'K', 'Wetherell', '1971-06-26 00:00:00', 1, 'maverick2007@gmail.com', 5, 'Network and Computer Systems Administrator', '1053 Oak Drive', 1, '5186253111', 65),
(14, 'Tabitha', 'P', 'Richmond', '1982-09-24 00:00:00', 1, 'gayle_romague@hotmail.com', 5, 'Embalmer', '2993 Lakeland Terrace', 1, '7343196063', 48),
(15, 'Florence', 'B', 'Cutshall', '1997-04-01 00:00:00', 1, 'rosalyn1990@yahoo.com', 5, 'First-Line Supervisors of Farming, Fishing, and Forestry Worker', '2202 Prospect Valley Road', 1, '3109876338', 67),
(16, 'Eleanor', 'W', 'Williams', '1994-03-26 00:00:00', 2, 'clemmie1983@hotmail.com', 4, 'Microsystems Engineer', ' 1648 Francis Mine', 1, '530-273-1518', 28),
(17, 'Dorothy', 'B', 'Jaquez', '1967-09-13 00:00:00', 2, 'lawrence.oconn@yahoo.com', 3, 'Millwright', ' 3514 Lindale Avenue', 3, '510-520-7216', 55),
(18, 'Dreama', 'J', 'Willcox', '1954-11-26 00:00:00', 2, 'edwina_schill@gmail.com', 4, 'Microsystems Engineer', ' 2171 Honeysuckle Lane', 2, '850-267-1367', 67),
(19, 'Debbie', 'R', 'Snell', '1956-11-03 00:00:00', 2, 'zaria2009@gmail.com', 1, 'Soil and Plant Scientist', ' 2477 Scheuvront Drive', 3, '303-522-3116', 66),
(20, 'Anthony', 'M', 'Johnson', '1988-08-06 00:00:00', 1, 'travis1977@yahoo.com', 2, 'Telecommunications Engineering Specialist', '3593 Post Avenue', 1, '218-924-9268', 34),
(21, 'Tim', 'С', 'Rogers', '1983-09-10 00:00:00', 1, 'makenzie1975@yahoo.com', 3, 'Nursery and Greenhouse Manager', '274 Glory Road', 1, '931-705-5412', 39),
(22, 'Elizabeth', 'F', 'Elizabeth ', '1985-08-16 00:00:00', 2, 'hilda1973@gmail.com', 5, 'Command and Control Center Officer', '265 Retreat Avenue', 3, '205-327-0849', 37),
(23, 'Jorge', 'S', 'Madden ', '1976-08-27 00:00:00', 1, 'ebba.kupha6@yahoo.com', 1, 'Insurance Sales Agent', '4023 Hog Camp Road', 1, '708-503-2151', 45),
(24, 'Eric', 'C', 'Lee', '1944-10-11 00:00:00', 1, 'estell_dani@yahoo.com', 3, 'Red Baron Electronics', '3038 Anthony Avenue', 1, '325-762-4399', 78),
(25, 'Wesley', 'M', 'Dyeк', '1979-01-08 00:00:00', 1, 'raymundo1999@yahoo.com', 2, 'Control and Valve Installer and Repairer, Except Mechanical Door', '4766 Wiseman Street', 3, '865-417-4950', 43),
(26, 'Amber', 'L', 'Thomas', '1983-08-06 00:00:00', 2, 'virginie.moriet@yahoo.com', 2, 'Funeral Attendant', '2075 Sugar Camp Road', 1, '507-581-6610', 39),
(27, 'George ', 'A', 'Benitez', '1987-11-12 00:00:00', 1, 'novella1981@gmail.com', 1, 'Editor', '600 Worthington Drive', 3, '972-632-8532', 35),
(28, 'Ty ', 'A', 'Dic', '1992-01-21 00:00:00', 1, 'candace1991@gmail.com', 5, 'Travel Agent', ' 955 Irish Lane', 1, '608-778-2054', 30),
(29, 'Julie ', 'G', 'McNulty', '1985-06-10 00:00:00', 2, 'sadye.con4@yahoo.com', 2, 'Transportation Engineer', ' 4257 Anthony Avenue', 2, '901-486-8949', 36),
(30, 'Mike ', 'S', 'Hruska', '1998-10-14 00:00:00', 1, 'oleta.spore1@gmail.com', 4, 'Personal Care and Service Worker, All Other', '2744 Woodridge Lane', 3, '901-270-9532', 23),
(31, 'Jordan', 'L', 'Monico', '1971-09-06 00:00:00', 1, 'kayley1987@yahoo.com', 3, 'Textile Knitting and Weaving Machine Setter, Operator, and Tender', '704 Stoney Lonesome Road', 2, '570-390-4498', 50),
(32, 'Hana', 'S', 'Lasater', '1987-05-08 00:00:00', 2, 'ciara2006@yahoo.com', 4, 'First-Line Supervisors of Farming, Fishing, and Forestry Worker', '4412 Oakridge Lane', 3, '469-916-7368', 35),
(33, 'Michael', 'L', 'Crockett', '1983-12-06 00:00:00', 2, 'newton_cruicks@gmail.com', 4, 'Information and Record Clerk, All Other', '4865 Timber Oak Drive', 3, '4865 Timber Oak', 38),
(34, 'Amelia', 'L', 'Taylor', '1977-08-06 00:00:00', 2, 'burley2014@yahoo.com', 2, 'Clinical Nurse Specialist', '3928 Green Acres Road', 2, '252-469-2835', 44),
(35, 'Christopher', 'A', 'Moris', '1986-12-06 00:00:00', 2, 'orville1985@yahoo.com', 3, 'Amusement and Recreation Attendant', '890 Everette Alley', 3, '954-744-6629', 36),
(36, 'Robert', 'G', 'Castillo', '1993-08-15 00:00:00', 1, 'carmine1992@yahoo.com', 4, 'Electrical Engineer', 'Electrical Engineer', 3, '571-219-6360', 29),
(37, 'Nicholas', 'C', 'Regan', '1974-12-16 00:00:00', 1, 'wilhelmin9@yahoo.com', 5, 'Radar and Sonar Technician', '2263 Scenic Way', 2, '217-735-4489', 48),
(38, 'Burton', 'G', 'Patel', '1986-01-22 00:00:00', 1, 'haley.laki1@gmail.com', 2, 'Manufacturing Production Technician', '354 Raintree Boulevard', 3, '763-795-1313', 36),
(39, 'Dwight', 'E', 'Williams', '1968-05-25 00:00:00', 1, 'alanis.nade4@yahoo.com', 4, 'Sustainability Specialist', '867 Wolf Pen Road', 2, '650-408-1714', 53),
(40, 'Jerome', 'R', 'Turner', '1971-06-06 00:00:00', 1, 'letha_balistre@gmail.com', 1, 'Data Entry Keyer', '4885 August Lane', 3, '318-426-5318', 50),
(41, 'Carmela', 'C', 'Navarette', '1955-09-06 00:00:00', 2, 'estevan_tro@hotmail.com', 3, 'Epidemiologist', '1230 Randall Drive', 1, '808-845-6267', 66),
(42, 'Josh', 'A', 'McDowell', '1975-12-26 00:00:00', 1, 'ephraim2006@yahoo.com', 2, 'Hunter and Trapper', '1478 Clay Street', 2, '317-392-1806', 46),
(43, 'Karin', 'S', 'Good', '1991-11-06 00:00:00', 2, 'hobart.stiedema@gmail.com', 3, 'Health Technologist and Technician, All Other', '1563 Hornor Avenue', 3, '1563 Hornor Ave', 30),
(44, 'Larry', 'V', 'Larry ', '1972-05-23 00:00:00', 1, 'brock1987@yahoo.com', 4, 'Epidemiologist', '1371 Godfrey Road', 2, '212-562-9981', 49),
(45, 'Daryl', 'M', 'Linville', '1969-06-06 00:00:00', 1, 'myrl2010@gmail.com', 5, 'Respiratory Therapist', '4112 Confederate Drive', 1, '315-672-2883', 53),
(46, 'Joseph', 'L', 'Jimenez', '1988-12-12 00:00:00', 1, 'minnie1974@yahoo.com', 1, 'Data Entry Keyer', '626 Lynch Street', 3, '920-924-6101', 33),
(47, 'Hazel', 'R', 'Chisholm', '1975-06-06 00:00:00', 2, 'eleonore.gaylo@yahoo.com', 2, 'Heating and Air Conditioning Mechanic and Installer', '964 Freshour Circle', 3, '719-320-5763', 46),
(48, 'Bradley', 'M', 'McCormick', '1981-07-17 00:00:00', 1, 'domenica1989@yahoo.com', 2, 'Political Science Teacher, Postsecondary', '4672 Vesta Drive', 2, '773-697-7851', 40),
(49, 'Shante', 'M', 'Bye', '1986-06-06 00:00:00', 2, 'garrison1987@gmail.com', 3, 'Training and Development Specialist', '4890 Leverton Cove Road', 1, '631-361-3381', 35),
(50, 'Frank', 'S', 'Freed', '1963-07-01 00:00:00', 1, 'hildegard_altenwer@yahoo.com', 3, 'Speech-Language Pathologist', '4885 August Lane', 3, '814-789-3977', 58),
(51, 'Randy', 'M', 'Yerger', '1973-07-11 00:00:00', 1, 'olga1970@yahoo.com', 1, 'Veterinarian', '3646 Bates Brothers Road', 1, '614-310-5721', 48),
(52, 'Ervin', 'B', 'Johnson', '1988-09-01 00:00:00', 1, 'gunnar.oko4@hotmail.com', 2, 'Geological and Petroleum Technician', '2052 Driftwood Road', 3, '408-399-0450', 33),
(53, 'Reid', 'C', 'Russell', '1985-07-25 00:00:00', 1, 'skyla1985@hotmail.com', 3, 'Gaming Change Person and Booth Cashier', ' 3818 My Drive', 2, '347-282-5394', 36),
(54, 'Alice', 'J', 'Clack', '1957-07-18 00:00:00', 2, 'timmy1997@hotmail.com', 4, 'Architecture Teacher, Postsecondary', '2525 Gateway Road', 2, '503-234-3548', 64),
(55, 'Roger', 'E', 'Otis', '1974-12-01 00:00:00', 1, 'delores1991@gmail.com', 5, 'Pipelayer', '3328 Foley Street', 1, '954-644-6859', 48),
(56, 'Robert', 'C', 'Meister', '1989-09-12 00:00:00', 1, 'vivienne.wintheis@gmail.com', 2, 'Fashion Designer', '3689 Charter Street', 3, '913-669-3203', 32),
(57, 'George ', 'L', 'Martin', '1996-10-29 00:00:00', 1, 'edison1979@hotmail.com', 1, 'Acute Care Nurse', '2080 Weekley Street', 3, '210-315-2781', 26),
(58, 'Betty', 'J', 'Kleinschmidt', '1969-07-19 00:00:00', 2, 'amely1999@hotmail.com', 5, 'Architectural and Civil Drafter', '3546 Crim Lane', 2, '3546 Crim Lane', 52),
(59, 'Tiffany', 'N', 'Johnson', '1982-07-06 00:00:00', 2, 'kathryn.oconn@hotmail.com', 5, 'Public Relation and Fundraising Manager', '507-754-1022', 3, '507-754-1022', 40),
(60, 'Raymond', 'M', 'Duckworth', '1970-05-15 00:00:00', 1, 'zion1986@yahoo.com', 2, 'Painter, Transportation Equipment', '452 Rocky Road', 3, '215-671-5350', 51),
(61, 'Leroy', 's', 'Hinson', '1969-08-15 00:00:00', 1, 'linnea1998@hotmail.com', 1, 'Special Education Teacher, Middle School', '4906 Rebecca Street', 1, '847-707-7544', 53),
(62, 'Donna', 'J', 'Alaniz', '1965-03-15 00:00:00', 2, 'sigmund_dani@gmail.com', 2, 'Orthodontist', '4499 Quilly Lane', 2, '614-468-7640', 56),
(63, 'Kevin', 'K', 'Kevin ', '1955-09-15 00:00:00', 1, 'percival1987@hotmail.com', 3, 'Hazardous Materials Removal Worker', '2628 Maxwell Farm Road', 3, '530-896-6419', 67),
(64, 'Virgil', 'G', 'Blackburn', '1989-05-15 00:00:00', 2, 'zelda.franec@hotmail.com', 4, 'Dietetic Technician', '4098 Lady Bug Drive', 3, '718-961-5114', 32),
(65, 'Jacqueline', 'H', 'Laporte', '1956-09-23 00:00:00', 2, 'robert2005@gmail.com', 5, 'Control and Valve Installer and Repairer, Except Mechanical Door', '4358 Mercer Street', 2, '715-642-3454', 65),
(66, 'Sachiko', 'T', 'Rybicki', '1978-07-05 00:00:00', 2, 'derek1988@hotmail.com', 5, 'Military Enlisted Tactical Operation and Air/Weapons Specialist and Crew Member, All Other', '4385 White River Way', 1, '801-489-1503', 43),
(67, 'Tamra', 'Y', 'Beard', '1984-12-15 00:00:00', 2, 'ari_dickins@yahoo.com', 4, 'Chemical Technician', '141 Linda Street', 2, '267-873-6363', 38),
(68, 'Christopher', 'E', 'Hill', '1972-12-07 00:00:00', 1, 'daniela.lebsa@gmail.com', 3, 'Life Scientist, All Other', '472 Seth Street', 3, '225-518-7689', 49),
(69, 'Brian', 'R', 'Dewitt', '1978-10-01 00:00:00', 1, 'franco_wals7@hotmail.com', 2, 'Nurse Anesthetist', '243 Dola Mine Road', 1, '818-868-8190', 43),
(70, 'Jeanette', 'Z', 'Easley', '1972-08-19 00:00:00', 2, 'muriel_crem@yahoo.com', 1, 'Coin, Vending, and Amusement Machine Servicer and Repairer', '1696 Corpening Drive', 1, '248-372-1372', 49),
(71, 'Mary', 'O', 'Dillon', '1988-10-15 00:00:00', 2, 'viviane1992@gmail.com', 3, 'Printing Press Operator', '1352 Koontz Lane', 1, '818-752-7079', 33),
(72, 'Kristen', 'P', 'Martindale', '1970-05-21 00:00:00', 2, 'demarcus_lark@yahoo.com', 3, 'Earth Driller, Except Oil and Ga', '1845 Beech Street', 1, '925-776-8482', 51),
(73, 'Sylvia', 'G', 'Gonzales', '1996-12-25 00:00:00', 2, 'will_lehne0@yahoo.com', 3, 'Talent Director', '4150 Tavern Place', 1, '304-267-0033', 25),
(74, 'Christopher', 'H', 'Macdonald', '1991-10-12 00:00:00', 1, 'iliana.fram3@yahoo.com', 1, 'Heating and Air Conditioning Mechanic and Installer', '2960 Linden Avenue', 2, '2960 Linden Ave', 30),
(75, 'Louella ', 'Q', 'Pelchat', '1966-10-01 00:00:00', 2, 'royal1994@gmail.com', 1, 'Community Health Worker', '3385 Parrill Court', 2, '219-575-0286', 56),
(76, 'Luciano ', 'E', 'Hathaway', '1984-04-29 00:00:00', 1, 'ian_hyatt1983@gmail.com', 1, 'Data Warehousing Specialist', '1673 Maud Street', 2, '302-777-7112', 37),
(77, 'Marianna', 'A', 'Chaisson', '1973-05-01 00:00:00', 2, 'erling.hauc8@hotmail.com', 1, 'Rolling Machine Setter, Operator, and Tender, Metal and Plastic', 'Rolling Machine Setter, Operator, and Tender, Meta', 3, '617-991-9360', 48),
(78, 'Maxine', 'B', 'Thompson', '1989-12-03 00:00:00', 2, 'obie1998@yahoo.com', 1, 'Child, Family, and School Social Worker', '2810 Hillhaven Drive', 3, '323-885-2828', 33),
(79, 'Mary', 'C', 'Athey', '1983-10-21 00:00:00', 2, 'kendall.renn@gmail.com', 2, 'Food Science Technician', '4175 Deer Ridge Drive', 3, '973-562-3361', 38),
(80, 'Karen', 'F', 'Williams', '1963-11-23 00:00:00', 2, 'marilie2007@gmail.com', 2, 'Metal-Refining Furnace Operator and Tender', '1811 Ingram Street', 3, '937-508-2857', 58),
(81, 'Denny ', 'A', 'Blair', '1994-08-23 00:00:00', 1, 'adrien2013@yahoo.com', 5, 'Transportation Engineer', '653 Pursglove Court', 3, '937-263-7517', 28),
(82, 'Sidney ', 'B', 'Stanley', '1986-10-15 00:00:00', 1, 'clare_torph2@yahoo.com', 5, 'Hospitalist', '1373 Apple Lane', 3, '308-995-5184', 35),
(83, 'Paul', 'J', 'Brown', '1948-11-15 00:00:00', 1, 'tomas_sanfo@yahoo.com', 5, 'Drafter, All Other', '2978 Green Street', 3, '615-582-4779', 74),
(84, 'David', 'F', 'Hall', '1990-12-10 00:00:00', 1, 'lulu.nieno7@yahoo.com', 5, 'Recreational Vehicle Service Technician', '1882 Coulter Lane', 2, '804-221-7398', 31),
(85, 'Matthew', 'W', 'Parker', '1990-05-23 00:00:00', 1, 'brooks_koep5@hotmail.com', 4, 'Optometrist', '2081 Westfall Avenue', 2, '505-896-6604', 31),
(86, 'Sheryl', 'C', 'Smith', '1992-06-27 00:00:00', 1, 'itzel_luettg@gmail.com', 4, 'Photographer', '2580 Sunny Day Drive', 2, '714-785-3076', 33),
(87, 'Roland ', 'T', 'Levy', '1970-11-26 00:00:00', 1, 'oral_baile7@gmail.com', 4, 'Aircraft Launch and Recovery Specialist', '4881 Midway Road', 1, '479-649-6946', 52),
(88, 'Georgia', 'Y', 'Brooks', '1975-11-06 00:00:00', 2, 'elenor.breitenbe@hotmail.com', 4, 'Rehabilitation Counselor', '836 Farland Street', 1, '774-203-1435', 46),
(89, 'Melvin', 'O', 'Patten', '1961-08-16 00:00:00', 1, 'raphael_rayn@yahoo.com', 1, 'Healthcare Practitioner and Technical Worker, All Other', '1583 Horizon Circle', 1, '253-484-5008', 61),
(90, 'Rosa ', 'P', 'Bradford', '1993-07-01 00:00:00', 2, 'reggie_fei7@hotmail.com', 1, 'Forest Fire Inspector and Prevention Specialist', '1955 Doctors Drive', 3, '310-529-5431', 28),
(91, 'Cathy', 'O', 'Travis', '1978-07-29 00:00:00', 2, 'amy1979@gmail.com', 3, 'Mechanical Door Repairer', '4294 Chipmunk Lane', 3, '207-824-2954', 43),
(92, 'Miguel', 'W', 'Rodriguez', '1988-05-24 00:00:00', 1, 'amya2015@hotmail.com', 2, 'Agricultural Worker, All Other', '453 Stutler Lane', 3, '814-459-7748', 33),
(93, 'Sandra', 'A', 'Rawlinson', '1982-05-19 00:00:00', 2, 'rhoda1984@hotmail.com', 1, 'Electronics Engineer, Except Computer', '1734 Holden Street', 2, '619-248-5416', 40),
(94, 'Floyd', 'C', 'Grove', '1952-11-21 00:00:00', 1, 'velma.damor9@yahoo.com', 4, 'Economics Teacher, Postsecondary', '3780 Coventry Court', 2, '228-218-7742', 69),
(95, 'Frank', 'K', 'Spencer', '1980-09-15 00:00:00', 1, 'jaren_goyet@yahoo.com', 4, 'Mail Clerk and Mail Machine Operator, Except Postal Service', '4275 Lewis Street', 1, '630-925-2390', 42),
(96, 'Thomas', 'S', 'Banks', '1969-07-18 00:00:00', 1, 'susana_gulgows@yahoo.com', 5, 'Robotics Technician', '962 Orchard Street', 1, '952-895-1436', 53),
(97, 'Robert', 'V', 'Dwyer', '1983-06-24 00:00:00', 1, 'noe.beaha2@hotmail.com', 5, 'Radio, Cellular, and Tower Equipment Installer and Repairer', '1833 Waldeck Street', 2, '817-404-1161', 38),
(98, 'Barry', 'B', 'Morrow', '1968-03-01 00:00:00', 1, 'precious2005@gmail.com', 5, 'Financial Specialist, All Other', '3397 Corpening Drive', 2, '248-455-4199', 53),
(99, 'Lisa', 'F', 'Todd', '2001-07-01 00:00:00', 2, 'van_bergnau9@yahoo.com', 5, 'Electrical and Electronic Engineering Technician', '1550 Church Street', 3, '718-472-1175', 21),
(100, 'Michael', 'P', 'Stpierre', '1963-11-06 00:00:00', 1, 'creola.mark0@gmail.com', 5, 'Geological Sample Test Technician', '3206 Pooh Bear Lane', 3, '864-699-9407', 58);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `INN` (`INN`),
  ADD UNIQUE KEY `OGRN` (`OGRN`);

--
-- Индексы таблицы `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `telephone` (`telephone`),
  ADD UNIQUE KEY `name` (`name`,`surname`,`patronymic`,`birth_day`,`street`,`city`),
  ADD KEY `companies` (`company`),
  ADD KEY `gender` (`gender`),
  ADD KEY `city` (`city`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `gender`
--
ALTER TABLE `gender`
  MODIFY `id` tinyint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `project`
--
ALTER TABLE `project`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `tag`
--
ALTER TABLE `tag`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `city` FOREIGN KEY (`city`) REFERENCES `cities` (`id`),
  ADD CONSTRAINT `companies` FOREIGN KEY (`company`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `gender` FOREIGN KEY (`gender`) REFERENCES `gender` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
