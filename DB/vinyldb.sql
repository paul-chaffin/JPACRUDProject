-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema vinyldb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `vinyldb` ;

-- -----------------------------------------------------
-- Schema vinyldb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `vinyldb` DEFAULT CHARACTER SET utf8 ;
USE `vinyldb` ;

-- -----------------------------------------------------
-- Table `album`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `album` ;

CREATE TABLE IF NOT EXISTS `album` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(100) NOT NULL,
  `artist` VARCHAR(100) NOT NULL,
  `label` VARCHAR(45) NOT NULL,
  `format` VARCHAR(45) NOT NULL,
  `release_year` INT NOT NULL,
  `catalog_no` VARCHAR(45) NOT NULL,
  `genre` VARCHAR(45) NOT NULL,
  `style` VARCHAR(45) NOT NULL,
  `release_id` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS vinyluser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'vinyluser'@'localhost' IDENTIFIED BY 'spin';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'vinyluser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `album`
-- -----------------------------------------------------
START TRANSACTION;
USE `vinyldb`;
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (1, 'Siamese Dream', 'Smashing Pumpkins', 'Virgin', '2xLP, 180g', 2011, '5099967928910', 'Rock', 'Alternative', '16779627');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (2, 'Abhorrent Rapture', 'Witch Vomit', '20 Buck Spin', '12\" EP', 2021, 'SPIN145', 'Rock', 'Death Metal', '20219728');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (3, 'As Long As You Are', 'Future Islands', '4AD', 'LP', 2020, '4AD0270LPE', 'Electronic', 'Indie Rock', '16035897');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (4, 'Synchronicity', 'The Police', 'A&M Records', 'LP', 1983, 'A&M SP-3735', 'Rock', 'New Wave', '10554362');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (5, 'The Grand Illusion', 'Styx', 'A&M Records', 'LP', 1977, 'SP-4637', 'Rock', 'Classic Rock', '15643467');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (6, 'Ocean By Ocean', 'The Boxer Rebellion', 'Absentee Recordings', 'LP', 2016, 'TBR020VL', 'Rock', 'Indie Rock', '8453065');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (7, 'Reign In Blood', 'Slayer', 'American Recordings', 'CD', 2007, '88697128822', 'Rock', 'Thrash', '1951850');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (8, 'Let It Be', 'The Beatles', 'Apple Records', 'LP', 1970, 'AR 34001', 'Rock', 'Pop Rock', '4786344');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (9, 'Charli', 'Charli XCX', 'Asylum Records', '2xLP', 2019, '190295409579', 'Electronic', 'Hyperpop', '14123560');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (10, 'Evil Friends', 'Portugal. The Man', 'Atlantic', 'LP, 180g', 2013, '535125-1', 'Rock', 'Psychedelic Rock', '4625539');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (11, 'No Jacket Required', 'Phil Collins', 'Atlantic', 'LP', 1985, '81240-1', 'Electronic', 'Synthpop', '4214323');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (12, 'Golden Daze', 'Golden Daze', 'Autumn Tone Records', 'LP', 2016, '80706-1', 'Rock', 'Alternative', '8154124');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (13, 'Simpatico', 'Golden Daze', 'Autumn Tone Records', 'LP', 2019, '80711-1', 'Rock', 'Alternative', '13298235');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (14, 'The Weight That You Buried', 'Knuckle Puck', 'Bad Timing Records', '12\" EP', 2014, 'BTR-008', 'Rock', 'Pop Punk', '6303513');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (15, 'While I Stay Secluded', 'Knuckle Puck', 'Bad Timing Records', '12\" EP', 2017, 'BTR-012', 'Rock', 'Pop Punk', '6303683');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (16, 'Somersault', 'Beach Fossils', 'Bayonet Records', 'LP', 2017, 'BR-014', 'Rock', 'Indie Rock', '10420419');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (17, 'Prying Eyes', 'Cruel Hand', 'Bridge Nine Records', 'CD', 2008, 'B9R:103', 'Rock', 'Hardcore', '1531701');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (18, 'Out Of Touch', 'Brothertiger', 'Brothertiger Music', 'LP', 2015, '2', 'Electronic', 'Chillwave', '8793722');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (19, 'Clean.', 'WHORES.', 'Brutal Panda Records', 'LP', 2013, 'BPR 20', 'Rock', 'Sludge Metal', '5272021');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (20, 'Sgt. Pepper\'s Lonely Hearts Club Band', 'The Beatles', 'Capitol Records', 'LP', 1967, 'SMAS 2653', 'Rock', 'Pop Rock', '4180609');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (21, 'Protean Threat', 'Thee Oh Sees', 'Castle Face', 'LP', 2020, 'CF-129', 'Rock', 'Garage Rock', '15892878');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (22, 'Crypt Of Ice', 'Frozen Soul', 'Century Media', 'LP', 2020, '19439781741', 'Rock', 'Death Metal', '16934502');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (23, 'A Slice Of Heaven', 'Carousel Kings', 'CI Records', 'CD', 2012, 'CI064', 'Rock', 'Pop Punk', '6603812');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (24, 'Isolation', 'Harms Way', 'Closed Casket Activities', 'LP', 2011, 'CCA020', 'Rock', 'Hardcore', '5384583');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (25, 'Born Into Debt, We All Owe A Death', 'Cruel Hand', 'Closed Casket Activities', '7\"', 2013, 'CCA028', 'Rock', 'Hardcore', '5509109');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (26, 'Splinters From An Ever-Changing Face', 'END', 'Closed Casket Activities', 'LP', 2020, 'CCA074', 'Rock', 'Extreme Hardcore', '15441758');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (27, 'An Unexpected Reality', 'Gatecreeper', 'Closed Casket Activities', '12\" EP', 2021, 'CCA084', 'Rock', 'Death Metal', '17074473');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (28, 'The Wall', 'Pink Floyd', 'Columbia', '2xLP', 1979, '36183', 'Rock', 'Psychedelic Rock', '5051412');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (29, 'Burning Desire To Draw Last Breath / Demolition Of Human Construct', 'Gulch', 'Creator-Destructor Records', '10\"', 2020, 'CD056', 'Rock', 'Hardcore', '14840306');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (30, 'Opening Fire: 2008-2014', 'Power Trip', 'Dark Operative Records', 'LP', 2020, 'OPS011-1', 'Rock', 'Thrash', '15657685');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (31, 'Hornet\'s Nest', 'Power Trip', 'Dark Operative Records', '7\" Flexi', 2019, 'OPS020', 'Rock', 'Thrash', '14416706');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (32, 'A Patient Man', 'Cult Leader', 'Deathwish', 'LP', 2018, 'DW208v', 'Rock', 'Doom, Hardcore', '14793775');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (33, 'All We Love We Leave Behind', 'Converge', 'Deathwish, Epitaph', '2xLP, 180g', 2012, 'DW139', 'Rock', 'Hardcore', '4114109');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (34, 'Axe To Fall', 'Converge', 'Deathwish, Epitaph', 'LP', 2010, 'DW198', 'Rock', 'Hardcore', '2722097');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (35, 'The Dusk In Us', 'Converge', 'Deathwish, Epitaph', 'LP', 2017, 'none', 'Rock', 'Hardcore', '1260765');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (36, 'Reign In Blood', 'Slayer', 'Def Jam Recordings', 'LP', 1986, 'GHS 24131', 'Rock', 'Thrash', '377521');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (37, 'Odelay', 'Beck', 'Bong Load Records', 'CD', 1996, 'DGCD-24823', 'Rock', 'Alternative', '2668845');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (38, 'AM', 'Arctic Monkeys', 'Domino', 'LP', 2013, 'WIGLP317', 'Rock', 'Indie Rock', '4904158');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (39, 'Sleep\'s Holy Mountain', 'Sleep', 'Earache', 'LP', 2021, 'MOSH079FDR', 'Rock', 'Doom Metal', '18273832');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (40, 'A Night At The Opera', 'Queen', 'Elektra', 'LP', 1975, '7E-1053', 'Rock', 'Prog Rock', '8081368');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (41, 'Master Of Puppets', 'Metallica', 'Elektra', 'LP', 1986, '60439-1', 'Rock', 'Thrash', '1549636');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (42, 'Queen II', 'Queen', 'Elektra', 'LP', 1974, 'EKS-75082', 'Rock', 'Classic Rock', '1825364');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (43, 'Let\'s Dance', 'David Bowie', 'EMI America', 'LP', 1983, 'SO-17093', 'Rock', 'Pop Rock', '12118381');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (44, 'Specter Of War', 'Creeping Death', 'Entertainment One', 'LP', 2019, 'EOM-LP-46075', 'Rock', 'Death Metal', '13285837');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (45, 'Gold.', 'WHORES.', 'eOne', 'LP', 2018, 'EOM-LP-6396', 'Rock', 'Sludge Metal', '12023297');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (46, 'The Battle Of Los Angeles', 'Rage Against The Machine', 'Epic', 'CD', 1999, 'EK 69630', 'Rock', 'Funk Metal', '368159');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (47, 'Boston', 'Boston', 'Epic', 'LP', 1977, 'JE 34188', 'Rock', 'Classic Rock', '1581600');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (48, 'The Money Store', 'Death Grips', 'Epic', 'LP', 2012, '88691963511', 'Hip Hop', 'Experimental, Hardcore', '3555784');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (49, 'Ex Lives', 'Every Time I Die', 'Epitaph', 'LP', 2012, '87155-1', 'Rock', 'Hardcore', '4120993');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (50, 'Ex Lives', 'Every Time I Die', 'Epitaph', 'CD', 2012, '87190-2', 'Rock', 'Hardcore', '3667791');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (51, 'From Parts Unknown', 'Every Time I Die', 'Epitaph', 'LP', 2014, '87328-1', 'Rock', 'Hardcore', '5877764');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (52, 'Low Teens', 'Every Time I Die', 'Epitaph', 'LP', 2016, '87411-1', 'Rock', 'Hardcore', '9084292');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (53, 'Radical', 'Every Time I Die', 'Epitaph', 'LP', 2021, '87747-1', 'Rock', 'Hardcore', '20998978');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (54, 'Creedence Clearwater Revival', 'Creedence Clearwater Revival', 'Fantasy', 'LP', 1968, '8382', 'Rock', 'Southern Rock', '1344932');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (55, 'Stareside', 'Billow Observatory', 'Felte', 'LP', 2022, 'FLT-067', 'Electronic', 'Ambient', '22830701');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (56, 'Gutter Phenomenon', 'Every Time I Die', 'Ferret Music', 'CD', 2006, 'F067', 'Rock', 'Hardcore', '3806026');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (57, 'Zombie EP', 'The Devil Wears Prada', 'Ferret Music', '10\"', 2010, 'F138-1', 'Rock', 'Metalcore', '2687018');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (58, 'Dead Throne', 'The Devil Wears Prada', 'Ferret Music', 'LP', 2011, 'F143-1', 'Rock', 'Metalcore', '3543440');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (59, 'Infest The Rats\' Nest', 'King Gizzard And The Lizard Wizard', 'Flightless', 'LP', 2021, 'FLT-053', 'Rock', 'Thrash', '18068548');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (60, 'Fishing For Fishies', 'King Gizzard And The Lizard Wizard', 'Flightless', 'LP', 2019, 'FLT-048', 'Rock', 'Psychedelic Rock', '13539769');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (61, 'Ethereal Suffering In The Light Of God', 'WEEPING', 'Frozen Screams Imprint', '12\" EP', 2021, 'FSI-015', 'Rock', 'Death Metal', '19694632');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (62, 'Hell Is Here Now', 'Homewrecker', 'Good Fight Music', 'LP', 2018, 'GFM069', 'Rock', 'Death Metal', '12083307');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (63, 'The Dark Side Of The Moon', 'Pink Floyd', 'Harvest', 'LP', 1973, 'SMAS-11163', 'Rock', 'Prog Rock', '367104');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (64, 'Wish You Were Here', 'Pink Floyd', 'Pink Floyd Records', 'LP, 180g', 2016, 'PFRLP9', 'Rock', 'Prog Rock', '14474203');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (65, 'Futures', 'Jimmy Eat World', 'Interscope Records', '2xLP, 140g', 2015, 'B0023655-01', 'Rock', 'Alternative', '16254973');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (66, 'Battle Born', 'The Killers', 'Island Records', 'CD', 2012, 'B0017294-02', 'Rock', 'Glam Rock', '3884382');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (67, 'Sleep Deprivation', 'Mortality Rate', 'Isolation Records', 'LP', 2020, 'ISO024', 'Rock', 'Hardcore', '15693746');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (68, '22, A Million', 'Bon Iver', 'Jagjaguwar', 'LP', 2016, 'JAG300', 'Electronic', 'Indie Rock', '9118910');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (69, 'Northeastern Deprivation', 'Vomit Forth', 'Maggot Stomp', 'LP', 2020, 'MAG38', 'Rock', 'Death Metal', '20693695');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (70, 'Piles Of Festering Decomposition', '200 Stab Wounds', 'Maggot Stomp', '12\' EP', 2020, 'MAG49', 'Rock', 'Death Metal', '17645740');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (71, 'Celestial Putridity', 'Inoculation', 'Maggot Stomp', 'LP', 2021, 'MAG62', 'Rock', 'Death Metal', '20200516');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (72, 'Goodbye Yellow Brick Road', 'Elton John', 'MCA Records', '2xLP', 1973, 'MCA2-10003', 'Rock', 'Pop Rock', '13723225');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (73, 'The Parallax: Hypersleep Dialogues', 'Between The Buried And Me', 'Metal Blade Records', '12\" EP', 2011, '3984 14999', 'Rock', 'Death Metal', '2847408');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (74, 'Hell Awaits', 'Slayer', 'Metal Blade Records', 'CD', 2004, '3984-14031-2', 'Rock', 'Thrash', '2697344');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (75, 'The Parallax II: Future Sequence', 'Between The Buried And Me', 'Metal Blade Records', '2xLP', 2012, '3984-15148-1', 'Rock', 'Death Metal', '3937482');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (76, 'Aim And Ignite', 'Fun.', 'Nettwerk', '2xLP', 2010, '067003084710', 'Rock', 'Pop Rock', '2489871');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (77, 'Attack & Release', 'The Black Keys', 'Nonesuch', 'LP', 2008, '292476-1', 'Rock', 'Blues Rock', '3523996');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (78, 'Blond', 'Frank Ocean', 'Not On Label (Frank Ocean)', '2xLP', 2018, 'B01KRKL6R8', 'Hip Hop', 'Experimental', '12520979');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (79, 'Calm Black Water', 'REZN', 'Not On Label (REZN)', 'LP', 2018, 'FWR002', 'Rock', 'Stoner Metal', '17309656');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (80, 'Chaotic Divine', 'REZN', 'Not On Label (REZN)', 'LP', 2020, 'FWR003', 'Rock', 'Stoner Metal', '16039896');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (81, 'The Fragile', 'Nine Inch Nails', 'Nothing Records', '2xCD', 1999, '0694904732', 'Rock', 'Industrial', '3002647');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (82, 'The Downward Spiral', 'Nine Inch Nails', 'Nothing Records', 'CD', 1994, '92346-2', 'Rock', 'Industrial', '847868');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (83, 'I Don\'t Want To Know You', 'NAILS', 'Nuclear Blast', '7\"', 2019, 'NB 4787-4', 'Rock', 'Powerviolence', '13739937');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (84, 'You Will Never Be One Of Us', 'NAILS', 'Nuclear Blast', 'LP', 2016, 'NB 3383-1', 'Rock', 'Powerviolence', '8706530');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (85, 'Technicolor Blind', 'Tennis System', 'Papercup Music', 'LP', 2014, 'PCM0011', 'Rock', 'Shoegaze', '8334191');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (86, 'Lesions Of A Different Kind', 'Undeath', 'Prosthetic Records', 'LP', 2020, 'PROS104441', 'Rock', 'Death Metal', '16110427');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (87, 'Under Soil And Dirt', 'The Story So Far', 'Pure Noise Records', 'LP', 2015, 'PNE 112', 'Rock', 'Pop Punk', '6668281');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (88, 'What You Don\'t See', 'The Story So Far', 'Pure Noise Records', 'LP', 2013, 'PNE 127', 'Rock', 'Pop Punk', '4402144');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (89, 'Songs Of', 'The Story So Far', 'Pure Noise Records', '10\"', 2014, 'PNE 148', 'Rock', 'Pop Punk', '5859614');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (90, 'The Story So Far', 'The Story So Far', 'Pure Noise Records', 'LP', 2015, 'PNE 168', 'Rock', 'Pop Punk', '6996909');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (91, 'Laugh Tracks', 'Knocked Loose', 'Pure Noise Records', 'LP', 2016, 'PNE 192', 'Rock', 'Hardcore', '8895680');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (92, 'Reckoning', 'Rotting Out', 'Pure Noise Records', '12\"', 2015, 'PNE 166', 'Rock', 'Hardcore', '6622234');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (93, 'Pull The Thorns From Your Heart', 'Senses Fail', 'Pure Noise Records', 'LP', 2015, 'PNE 171', 'Rock', 'Post Hardcore', '7154026');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (94, 'Pop Culture', 'Knocked Loose', 'Pure Noise Records', '12\"', 2016, 'PNE 187', 'Rock', 'Hardcore', '8413510');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (95, 'A Different Shade Of Blue', 'Knocked Loose', 'Pure Noise Records', 'LP', 2019, 'PNE 247', 'Rock', 'Hardcore', '14090625');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (96, 'No One Goes To Heaven', 'Left Behind', 'Pure Noise Records', 'LP', 2019, 'PNE 259', 'Rock', 'Hardcore', '14482992');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (97, 'A Tear In The Fabric Of Life', 'Knocked Loose', 'Pure Noise Records', 'LP', 2021, 'PNE 313', 'Rock', 'Hardcore', '21509077');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (98, 'At.Long.Last.A$AP', 'A$AP Rocky', 'RCA Records', 'CD', 2015, '8843077752', 'Hip Hop', 'Cloud Rap', '7057871');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (99, 'Hunky Dory', 'David Bowie', 'RCA Victor', 'LP', 1971, 'LSP-4623', 'Rock', 'Glam', '5040232');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (100, 'The Rise And Fall Of Ziggy Stardust And The Spiders From Mars', 'David Bowie', 'RCA Victor', 'LP', 1972, 'LSP-4702', 'Rock', 'Glam', '422477');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (101, 'Machine Violence', 'REALIZE', 'Relapse Records', 'LP', 2020, 'RR7469', 'Rock', 'Industrial Metal', '15950605');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (102, 'Deserted', 'Gatecreeper', 'Relapse Records', 'LP', 2020, 'RR7435', 'Rock', 'Death Metal', '15919450');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (103, 'Electric Ladyland', 'The Jimi Hendrix Experience', 'Repirse Records', '2xLP', 1968, '2RS6307', 'Rock', 'Psychedelic Rock', '399579');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (104, 'California Cursed', 'DRAIN', 'Revelation Records', 'LP', 2020, 'REV182', 'Rock', 'Hardcore', '15781310');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (105, 'Copacetic', 'Knuckle Puck', 'Rise Records', 'LP', 2015, 'RISE 278-1', 'Rock', 'Pop Punk', '7486447');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (106, 'Shapeshifter', 'Knuckle Puck', 'Rise Records', 'LP', 2017, 'RISE 389-1', 'Rock', 'Pop Punk', '10965975');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (107, 'CHRISTFUCKER', 'portrayal of guilt', 'Run For Cover Records', 'LP', 2021, 'RFC231LP-C7', 'Rock', 'Black Metal, Noise', '21452224');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (108, 'Major', 'Fang Island', 'Sargent House', 'LP', 2012, 'SH078', 'Rock', 'Math Rock', '3755507');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (109, 'Fang Island', 'Fang Island', 'Sargent House', 'LP', 2010, 'SH040', 'Rock', 'Math Rock', '2379428');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (110, 'Lords Of Death', 'Temple Of Void', 'Shadow Kingdom Records', 'LP', 2017, 'SKR127LP', 'Rock', 'Death Metal', '15038111');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (111, 'More Songs About Buildings And Food', 'Talking Heads', 'Sire', 'LP', 1978, 'SRK6058NP', 'Rock', 'New Wave', '1107589');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (112, 'Manifest Decimation', 'Power Trip', 'Southern Lord', 'LP', 2018, 'LORD 175', 'Rock', 'Thrash', '11852334');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (113, 'Unsilent Death', 'NAILS', 'Southern Lord', 'LP', 2020, 'LORD 127', 'Rock', 'Powerviolence', '17508955');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (114, 'Obscene Humanity', 'NAILS', 'Southern Lord', '7\"', 2012, 'LORD 151', 'Rock', 'Powerviolence', '4134543');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (115, 'Slaves Beyond Death', 'Black Breath', 'Southern Lord', '2xLP', 2015, 'LORD208', 'Rock', 'Death Metal', '7822529');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (116, 'Nightmare Logic', 'Power Trip', 'Southern Lord', 'LP', 2017, 'LORD236', 'Rock', 'Thrash', '9847327');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (117, 'Abandon All Life', 'NAILS', 'Southern Lord', 'LP', 2018, 'LORD172', 'Rock', 'Powerviolence', '11925021');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (118, 'Helplessness Blues', 'Fleet Foxes', 'Sub Pop', '2xLP', 2011, 'SP 888', 'Rock', 'Folk', '2856645');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (119, 'Depression Cherry', 'Beach House', 'Sub Pop', 'LP', 2015, 'SP1122', 'Pop', 'Dream Pop', '7396928');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (120, 'Pure Comedy', 'Father John Misty', 'Sub Pop', '2x:LP', 2017, 'SP1200', 'Rock', 'Indie Rock', '10059497');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (121, 'Gutter Phenomenon', 'Every Time I Die', 'Suburban Home Records', 'LP', 2008, 'SH73-1', 'Rock', 'Hardcore', '3092686');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (122, 'See You On The Horizon', 'Various', 'Sunreturn', 'LP', 2022, 'none', 'Rock', 'Alternative', '22705232');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (123, 'Purple Rain', 'Prince And The Revolution', 'The Prince Estate', 'LP', 2021, 'RCV1547450', 'Funk', 'Minneapolis Sound', '20944321');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (124, 'No Love Deep Webb', 'Death Grips', 'Third Worlds', 'LP', 2020, '2537531776', 'Hip Hop', 'Experimental, Hardcore', '16204190');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (125, 'Good To Feel', 'Candy', 'Triple B Records', '12\"', 2020, 'TBR-094', 'Rock', 'Hardcore', '17030637');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (126, 'Excalibur', 'Mindforce', 'Triple B Records', '12\"', 2019, 'TBR-095', 'Rock', 'Hardcore, Thrash', '13959170');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (127, 'The Grand Descent', 'Fuming Mouth', 'Triple B Records', 'LP', 2019, 'TBR-101', 'Rock', 'Death Metal', '14417514');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (128, 'Mindforce / Dead Heat', 'Mindforce / Dead Heat', 'Triple B Records', '12\"', 2021, 'TBR-140', 'Rock', 'Hardcore', '18317041');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (129, 'Pretty Hate Machine', 'Nine Inch Nails', 'TVT Records', 'CD', 1989, 'TVT 2610', 'Rock', 'Industrial', '145796');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (130, 'Swift Minds Of The Darkside', 'Queensway', 'Unbeaten Records', 'LP', 2017, 'UBR010', 'Rock', 'Hardcore', '21738448');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (131, 'Cold Side Of Reality', 'Purgatory', 'Unbeaten Records', 'LP', 2018, 'UBR013', 'Rock', 'Hardcore', '12904356');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (132, 'Wake The Dead', 'Comeback Kid', 'Victory Records', 'LP', 2005, 'VR246', 'Rock', 'Hardcore', '902698');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (133, 'Alaska', 'Between The Buried And Me', 'Victory Records', '2xLP', 2009, 'VR262', 'Rock', 'Death Metal', '2129917');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (134, 'Colors', 'Between The Buried And Me', 'Victory Records', '2xLP', 2007, 'VR351', 'Rock', 'Death Metal', '1668088');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (135, 'The Great Misdirect', 'Between The Buried And Me', 'Victory Records', '2xLP', 2013, 'VR533', 'Rock', 'Death Metal', '4854494');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (136, 'Mud Slide Slim And The Blue Horizon', 'James Taylor', 'Warner Bros. Records', 'LP', 1971, 'BS 2561', 'Rock', 'Folk', '597426');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (137, 'Summer Breeze', 'Seals & Crofts', 'Warner Bros. Records', 'LP', 1973, 'BS 2629', 'Rock', 'Soft Rock', '16003709');
INSERT INTO `album` (`id`, `title`, `artist`, `label`, `format`, `release_year`, `catalog_no`, `genre`, `style`, `release_id`) VALUES (138, 'Sweet Baby James', 'James Taylor', 'Warner Bros. Records', 'LP', 1970, 'WS 1843', 'Rock', 'Folk', '7899476');

COMMIT;

