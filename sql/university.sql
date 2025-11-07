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

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department` (
  `dept_name` varchar(20) NOT NULL,
  `building` varchar(15) DEFAULT NULL,
  `budget` decimal(12,2) DEFAULT NULL,
  PRIMARY KEY (`dept_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUE('Biology', 'Watson', '900000.00');
INSERT INTO `department` VALUE ('Comp. Sci.', 'Taylor', '100000.00');
INSERT INTO `department` VALUE ('Elec. Eng.', 'Taylor', '85000.00');
INSERT INTO `department` VALUE ('Finance', 'Painter', '120000.00');
INSERT INTO `department` VALUE ('History', 'Painter', '50000.00');
INSERT INTO `department` VALUE ('Music', 'Packard', '80000.00');
INSERT INTO `department` VALUE ('Physics', 'Watson', '70000.00');
INSERT INTO `department` VALUE ('Art', 'Packard', '100000.00');
INSERT INTO `department` VALUE ('English Lit.', 'Packard', '40000.00');
INSERT INTO `department` VALUE ('Philosophy', 'Packard', '100000.00');
INSERT INTO `department` VALUE ('Political Science', 'Packard', '60000.00');
INSERT INTO `department` VALUE ('Psychology', 'Packard', '80000.00');
INSERT INTO `department` VALUE ('Sociology', 'Packard', '70000.00');
INSERT INTO `department` VALUE ('Theater', 'Packard', '20000.00');
INSERT INTO `department` VALUE ('Chemistry', 'Watson', '30000.00');
INSERT INTO `department` VALUE ('Earth Sci.', 'Watson', '60000.00');
INSERT INTO `department` VALUE ('Env. Sci.', 'Watson', '80000.00');
INSERT INTO `department` VALUE ('Math', 'Watson', '60000.00');
INSERT INTO `department` VALUE ('Business', 'Smith', '60000.00');
INSERT INTO `department` VALUE ('Law', 'Painter', '80000.00');
INSERT INTO `department` VALUE ('Medical', 'Johnson', '20000.00');
INSERT INTO `department` VALUE ('Nursing', 'Johnson', '70000.00');
INSERT INTO `department` VALUE ('Entrepreneur', 'Smith', '80000.00');
INSERT INTO `department` VALUE ('Managerial', 'Smith', '70000.00');
INSERT INTO `department` VALUE ('Dental', 'Smith', '100000.00');
INSERT INTO `department` VALUE ('Pharmacy', 'Smith', '90000.00');
INSERT INTO `department` VALUE ('Veterinary', 'Smith', '80000.00');
INSERT INTO `department` VALUE ('Communication', 'Painter', '70000.00');
INSERT INTO `department` VALUE ('Economics', 'Smith', '80000.00');
INSERT INTO `department` VALUE ('Education', 'Painter', '50000.00');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `classroom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classroom` (
  `building` varchar(15) NOT NULL,
  `room_no` varchar(7) NOT NULL,
  `capacity` decimal(4,0) DEFAULT NULL,
  PRIMARY KEY (`building`,`room_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `classroom` WRITE;
/*!40000 ALTER TABLE `classroom` DISABLE KEYS */;
INSERT INTO `classroom` VALUE ('Packard', '101', '500');
INSERT INTO `classroom` VALUE ('Painter', '514', '10');
INSERT INTO `classroom` VALUE ('Taylor', '3128', '70');
INSERT INTO `classroom` VALUE ('Watson', '110', '30');
INSERT INTO `classroom` VALUE ('Watson', '120', '50');
INSERT INTO `classroom` VALUE ('Smith', '501', '100');
INSERT INTO `classroom` VALUE ('Johnson', '700', '200');
INSERT INTO `classroom` VALUE ('Packard', '102', '250');
INSERT INTO `classroom` VALUE ('Packard', '103', '501');
INSERT INTO `classroom` VALUE ('Painter', '511', '20');
INSERT INTO `classroom` VALUE ('Packard', '104', '270');
INSERT INTO `classroom` VALUE ('Packard', '105', '540');
INSERT INTO `classroom` VALUE ('Taylor', '3129', '40');
INSERT INTO `classroom` VALUE ('Taylor', '3127', '80');
INSERT INTO `classroom` VALUE ('Watson', '130', '100');
INSERT INTO `classroom` VALUE ('Smith', '502', '200');
INSERT INTO `classroom` VALUE ('Smith', '503', '300');
INSERT INTO `classroom` VALUE ('Johnson', '701', '120');
INSERT INTO `classroom` VALUE ('Johnson', '702', '150');
INSERT INTO `classroom` VALUE ('Watson', '140', '140');
INSERT INTO `classroom` VALUE ('Smith', '504', '200');
INSERT INTO `classroom` VALUE ('Taylor', '3126', '50');
INSERT INTO `classroom` VALUE ('Johnson', '703', '101');
INSERT INTO `classroom` VALUE ('Packard', '106', '600');
INSERT INTO `classroom` VALUE ('Smith', '505', '50');
/*!40000 ALTER TABLE `classroom` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `time_slot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time_slot` (
  `time_slot_id` varchar(4) NOT NULL,
  `day` varchar(1) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time DEFAULT NULL,
  PRIMARY KEY (`time_slot_id`,`day`,`start_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `time_slot` WRITE;
/*!40000 ALTER TABLE `time_slot` DISABLE KEYS */;
INSERT INTO `time_slot` VALUE ('A', 'F', '08:00:00', '08:50:00');
INSERT INTO `time_slot` VALUE ('A', 'M', '08:00:00', '08:50:00');
INSERT INTO `time_slot` VALUE ('A', 'W', '08:00:00', '08:50:00');
INSERT INTO `time_slot` VALUE ('B', 'F', '09:00:00', '09:50:00');
INSERT INTO `time_slot` VALUE ('B', 'M', '09:00:00', '09:50:00');
INSERT INTO `time_slot` VALUE ('B', 'W', '09:00:00', '09:50:00');
INSERT INTO `time_slot` VALUE ('C', 'F', '10:00:00', '10:50:00');
INSERT INTO `time_slot` VALUE ('C', 'M', '10:00:00', '10:50:00');
INSERT INTO `time_slot` VALUE ('C', 'W', '10:00:00', '10:50:00');
INSERT INTO `time_slot` VALUE ('D', 'F', '11:00:00', '11:50:00');
INSERT INTO `time_slot` VALUE ('D', 'M', '11:00:00', '11:50:00');
INSERT INTO `time_slot` VALUE ('D', 'W', '11:00:00', '11:50:00');
INSERT INTO `time_slot` VALUE ('E', 'R', '10:30:00', '11:45:00');
INSERT INTO `time_slot` VALUE ('E', 'T', '10:30:00', '11:45:00');
INSERT INTO `time_slot` VALUE ('F', 'R', '14:30:00', '15:45:00');
INSERT INTO `time_slot` VALUE ('F', 'T', '14:30:00', '15:45:00');
INSERT INTO `time_slot` VALUE ('G', 'F', '16:00:00', '16:50:00');
INSERT INTO `time_slot` VALUE ('G', 'M', '16:00:00', '16:50:00');
INSERT INTO `time_slot` VALUE ('G', 'W', '16:00:00', '16:50:00');
INSERT INTO `time_slot` VALUE ('H', 'W', '10:00:00', '12:30:00');
INSERT INTO `time_slot` VALUE ('I', 'F', '11:00:00', '13:30:00');
INSERT INTO `time_slot` VALUE ('J', 'M', '13:00:00', '15:30:00');
INSERT INTO `time_slot` VALUE ('D', 'R', '11:00:00', '11:50:00');
INSERT INTO `time_slot` VALUE ('A', 'T', '08:00:00', '08:50:00');
INSERT INTO `time_slot` VALUE ('B', 'R', '09:00:00', '09:50:00');
/*!40000 ALTER TABLE `time_slot` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `ID` varchar(5) NOT NULL,
  `name` varchar(20) NOT NULL,
  `dept_name` varchar(20) DEFAULT NULL,
  `tot_cred` decimal(3,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `dept_name` (`dept_name`),
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`dept_name`) REFERENCES `department` (`dept_name`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUE ('00128', 'Zhang', 'Comp. Sci.', '102');
INSERT INTO `student` VALUE ('12345', 'Shankar', 'Comp. Sci.', '32');
INSERT INTO `student` VALUE ('19991', 'Brandt', 'History', '80');
INSERT INTO `student` VALUE ('23121', 'Chavez', 'Finance', '110');
INSERT INTO `student` VALUE ('44553', 'Peltier', 'Physics', '56');
INSERT INTO `student` VALUE ('45678', 'Levy', 'Physics', '46');
INSERT INTO `student` VALUE ('54321', 'Williams', 'Comp. Sci.', '54');
INSERT INTO `student` VALUE ('55739', 'Sanchez', 'Music', '38');
INSERT INTO `student` VALUE ('70557', 'Snow', 'Physics', '0');
INSERT INTO `student` VALUE ('76543', 'Brown', 'Comp. Sci.', '58');
INSERT INTO `student` VALUE ('76653', 'Aoi', 'Elec. Eng.', '60');
INSERT INTO `student` VALUE ('98765', 'Bourikas', 'Elec. Eng.', '98');
INSERT INTO `student` VALUE ('98988', 'Tanaka', 'Biology', '120');
INSERT INTO `student` VALUE ('65523', 'Alpha', 'Art', '87');
INSERT INTO `student` VALUE ('67743', 'Beta', 'Art', '76');
INSERT INTO `student` VALUE ('69976', 'Cipher', 'English Lit.', '79');
INSERT INTO `student` VALUE ('87656', 'Charlie', 'Philosophy', '100');
INSERT INTO `student` VALUE ('85464', 'Delta', 'Philosophy', '121');
INSERT INTO `student` VALUE ('87666', 'Epsi', 'Education', '101');
INSERT INTO `student` VALUE ('00123', 'Zoe', 'Education', '110');
INSERT INTO `student` VALUE ('14543', 'Frank', 'Communication', '54');
INSERT INTO `student` VALUE ('22341', 'Glenn', 'English Lit.', '74');
INSERT INTO `student` VALUE ('26764', 'Hailey', 'Nursing', '66');
INSERT INTO `student` VALUE ('36744', 'Ira', 'Law', '99');
INSERT INTO `student` VALUE ('35455', 'Joey', 'Business', '65');
INSERT INTO `student` VALUE ('46764', 'Kathie', 'Nursing', '88');
INSERT INTO `student` VALUE ('56764', 'Lark', 'Dental', '75');
INSERT INTO `student` VALUE ('99765', 'Mona', 'Theater', '101');
INSERT INTO `student` VALUE ('00157', 'Nate', 'Math', '76');
INSERT INTO `student` VALUE ('99881', 'Olive', 'Theater', '88');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `instructor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instructor` (
  `ID` varchar(5) NOT NULL,
  `name` varchar(20) NOT NULL,
  `dept_name` varchar(20) DEFAULT NULL,
  `salary` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `dept_name` (`dept_name`),
  CONSTRAINT `instructor_ibfk_1` FOREIGN KEY (`dept_name`) REFERENCES `department` (`dept_name`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `instructor` WRITE;
/*!40000 ALTER TABLE `instructor` DISABLE KEYS */;
INSERT INTO `instructor` VALUE ('10101', 'Srinivasan', 'Comp. Sci.', '65000.00');
INSERT INTO `instructor` VALUE ('12121', 'Wu', 'Finance', '90000.00');
INSERT INTO `instructor` VALUE ('15151', 'Mozart', 'Music', '40000.00');
INSERT INTO `instructor` VALUE ('22222', 'Einstein', 'Physics', '95000.00');
INSERT INTO `instructor` VALUE ('32343', 'El Said', 'History', '60000.00');
INSERT INTO `instructor` VALUE ('33456', 'Gold', 'Physics', '87000.00');
INSERT INTO `instructor` VALUE ('45565', 'Katz', 'Comp. Sci.', '75000.00');
INSERT INTO `instructor` VALUE ('58583', 'Califieri', 'History', '62000.00');
INSERT INTO `instructor` VALUE ('76543', 'Singh', 'Finance', '80000.00');
INSERT INTO `instructor` VALUE ('76766', 'Crick', 'Biology', '72000.00');
INSERT INTO `instructor` VALUE ('83821', 'Brandt', 'Comp. Sci.', '92000.00');
INSERT INTO `instructor` VALUE ('98345', 'Kim', 'Elec. Eng.', '80000.00');
INSERT INTO `instructor` VALUE ('23232', 'Ki Hajar Dewantara', 'Education', '50000.00');
INSERT INTO `instructor` VALUE ('22422', 'Mas Elon', 'Business', '123000.00');
INSERT INTO `instructor` VALUE ('35432', 'Newton', 'Math', '24000.00');
INSERT INTO `instructor` VALUE ('46565', 'Mul', 'Political Science', '173000.00');
INSERT INTO `instructor` VALUE ('44332', 'Yono', 'Political Science', '18700.00');
INSERT INTO `instructor` VALUE ('55776', 'Socrates', 'Philosophy', '198000.00');
INSERT INTO `instructor` VALUE ('58896', 'Rocky G.', 'Philosophy', '10999.00');
INSERT INTO `instructor` VALUE ('66778', 'Silberschatz', 'Comp. Sci.', '198880.00');
INSERT INTO `instructor` VALUE ('68997', 'Napoleon', 'History', '188992.00');
INSERT INTO `instructor` VALUE ('65543', 'Weber', 'Sociology', '20098.00');
INSERT INTO `instructor` VALUE ('77889', 'Harriet', 'Sociology', '180000.00');
INSERT INTO `instructor` VALUE ('88991', 'Curie', 'Earth Sci.', '25000.00');
INSERT INTO `instructor` VALUE ('89832', 'Carson', 'Earth Sci.', '67000.00');
INSERT INTO `instructor` VALUE ('90432', 'Fleming', 'Pharmacy', '24000.00');
INSERT INTO `instructor` VALUE ('99874', 'Al Gore', 'Env. Sci.', '89888.00');
INSERT INTO `instructor` VALUE ('18881', 'Lasswell', 'Communication', '90999.00');
INSERT INTO `instructor` VALUE ('20029', 'Butler', 'Communication', '100000.00');
INSERT INTO `instructor` VALUE ('37744', 'Youyou', 'Pharmacy', '100100.00');
INSERT INTO `instructor` VALUE ('44556', 'Picasso', 'Art', '198880.00');
INSERT INTO `instructor` VALUE ('56567', 'Shakespeare', 'English Lit.', '299000.00');
INSERT INTO `instructor` VALUE ('66779', 'Mary Ann', 'Nursing', '88777.00');
INSERT INTO `instructor` VALUE ('766554', 'Hotman', 'Law', '150000.00');
/*!40000 ALTER TABLE `instructor` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `advisor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `advisor` (
  `s_ID` varchar(5) NOT NULL,
  `i_ID` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`s_ID`),
  KEY `i_ID` (`i_ID`),
  CONSTRAINT `advisor_ibfk_1` FOREIGN KEY (`i_ID`) REFERENCES `instructor` (`ID`) ON DELETE SET NULL,
  CONSTRAINT `advisor_ibfk_2` FOREIGN KEY (`s_ID`) REFERENCES `student` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `advisor` WRITE;
/*!40000 ALTER TABLE `advisor` DISABLE KEYS */;
INSERT INTO `advisor` VALUE ('12345', '10101');
INSERT INTO `advisor` VALUE ('44553', '22222');
INSERT INTO `advisor` VALUE ('45678', '22222');
INSERT INTO `advisor` VALUE ('00128', '45565');
INSERT INTO `advisor` VALUE ('76543', '45565');
INSERT INTO `advisor` VALUE ('23121', '76543');
INSERT INTO `advisor` VALUE ('98988', '76766');
INSERT INTO `advisor` VALUE ('76653', '98345');
INSERT INTO `advisor` VALUE ('98765', '98345');
INSERT INTO `advisor` VALUE ('19991', '32343');
INSERT INTO `advisor` VALUE ('54321', '10101');
INSERT INTO `advisor` VALUE ('55739', '15151');
INSERT INTO `advisor` VALUE ('70557', '33456');
INSERT INTO `advisor` VALUE ('65523', '44556');
INSERT INTO `advisor` VALUE ('67743', '44556');
INSERT INTO `advisor` VALUE ('69976', '56567');
INSERT INTO `advisor` VALUE ('87656', '55776');
INSERT INTO `advisor` VALUE ('85464', '58896');
INSERT INTO `advisor` VALUE ('87666', '23232');
INSERT INTO `advisor` VALUE ('00123', '23232');
INSERT INTO `advisor` VALUE ('14543', '18881');
INSERT INTO `advisor` VALUE ('22341', '56567');
INSERT INTO `advisor` VALUE ('26764', '66779');
INSERT INTO `advisor` VALUE ('36744', '766554');
INSERT INTO `advisor` VALUE ('35455', '22422');
INSERT INTO `advisor` VALUE ('46764', '90432');
INSERT INTO `advisor` VALUE ('56764', '37744');
INSERT INTO `advisor` VALUE ('99765', '56567');
INSERT INTO `advisor` VALUE ('99881', '56567');
/*!40000 ALTER TABLE `advisor` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course` (
  `course_id` varchar(8) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `dept_name` varchar(20) DEFAULT NULL,
  `credits` decimal(2,0) DEFAULT NULL,
  PRIMARY KEY (`course_id`),
  KEY `dept_name` (`dept_name`),
  CONSTRAINT `course_ibfk_1` FOREIGN KEY (`dept_name`) REFERENCES `department` (`dept_name`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUE ('BIO-101', 'Intro. to Biology', 'Biology', '4');
INSERT INTO `course` VALUE ('BIO-301', 'Genetics', 'Biology', '4');
INSERT INTO `course` VALUE ('BIO-399', 'Computational Biology', 'Biology', '3');
INSERT INTO `course` VALUE ('CS-101', 'Intro. to Computer Science', 'Comp. Sci.', '4');
INSERT INTO `course` VALUE ('CS-190', 'Game Design', 'Comp. Sci.', '4');
INSERT INTO `course` VALUE ('CS-315', 'Robotics', 'Comp. Sci.', '3');
INSERT INTO `course` VALUE ('CS-319', 'Image Processing', 'Comp. Sci.', '3');
INSERT INTO `course` VALUE ('CS-347', 'Database System Concepts', 'Comp. Sci.', '3');
INSERT INTO `course` VALUE ('EE-181', 'Intro. to Digital Systems', 'Comp. Sci.', '3');
INSERT INTO `course` VALUE ('FIN-201', 'Investment Banking', 'Finance', '3');
INSERT INTO `course` VALUE ('HIS-351', 'World History', 'History', '3');
INSERT INTO `course` VALUE ('MU-199', 'Music Video Production', 'Music', '3');
INSERT INTO `course` VALUE ('PHY-101', 'Physical Principles', 'Physics', '4');
INSERT INTO `course` VALUE ('PHY-102', 'Physical Principles II', 'Physics', '4');
INSERT INTO `course` VALUE ('BIO-102', 'General Biology', 'Biology', '2');
INSERT INTO `course` VALUE ('BIO-103', 'Biochemistry', 'Biology', '4');
INSERT INTO `course` VALUE ('CS-202', 'Theory of Computation', 'Comp. Sci.', '2');
INSERT INTO `course` VALUE ('CS-301', 'Artificial Intelligence Foundations', 'Comp. Sci.', '3');
INSERT INTO `course` VALUE ('CS-211', 'Data Structures and Algorithms', 'Comp. Sci.', '3');
INSERT INTO `course` VALUE ('EE-191', 'Electromagnetics', 'Elec. Eng.', '2');
INSERT INTO `course` VALUE ('EE-200', 'Control Systems', 'Elec. Eng.', '3');
INSERT INTO `course` VALUE ('EE-211', 'Circuit Analysis', 'Elec. Eng.', '2');
INSERT INTO `course` VALUE ('FIN-222', 'Derivatives', 'Math', '2');
INSERT INTO `course` VALUE ('FIN-211', 'Corporate Finance', 'Finance', '3');
INSERT INTO `course` VALUE ('FIN-322', 'Financial Market', 'Finance', '3');
INSERT INTO `course` VALUE ('HIS-333', 'Medieval History', 'History', '4');
INSERT INTO `course` VALUE ('HIS-322', 'American History', 'History', '4');
INSERT INTO `course` VALUE ('MU-200', 'Composition', 'Music', '4');
INSERT INTO `course` VALUE ('MU-211', 'Music Theory', 'Music', '3');
INSERT INTO `course` VALUE ('MU-112', 'Music History', 'Music', '2');
INSERT INTO `course` VALUE ('PHY-331', 'Quantum Mechanics', 'Physics', '4');
INSERT INTO `course` VALUE ('PHY-223', 'Electromagnetism', 'Physics', '3');
INSERT INTO `course` VALUE ('PHY-121', 'General Physics', 'Physics', '2');
INSERT INTO `course` VALUE ('ART-332', 'Sculpture', 'Art', '4');
INSERT INTO `course` VALUE ('ART-224', 'Painting', 'Art', '3');
INSERT INTO `course` VALUE ('ART-123', 'Drawing', 'Art', '2');
INSERT INTO `course` VALUE ('ENG-312', 'Literary Theory', 'English Lit.', '4');
INSERT INTO `course` VALUE ('ENG-221', 'Shakespeare', 'English Lit.', '3');
INSERT INTO `course` VALUE ('ENG-112', 'British Literature', 'English Lit.', '2');
INSERT INTO `course` VALUE ('PHI-333', 'Metaphysics', 'Philosophy', '4');
INSERT INTO `course` VALUE ('PHI-221', 'Epistemology', 'Philosophy', '3');
INSERT INTO `course` VALUE ('PHI-111', 'Ethics', 'Philosophy', '2');
INSERT INTO `course` VALUE ('PS-333', 'Political Theory', 'Political Science', '4');
INSERT INTO `course` VALUE ('PS-222', 'International Relations', 'Political Science', '3');
INSERT INTO `course` VALUE ('PS-123', 'Local Government 1', 'Political Science', '2');
INSERT INTO `course` VALUE ('PSY-345', 'Cognitive Psychology', 'Psychology', '4');
INSERT INTO `course` VALUE ('PSY-221', 'Developmental Psychology', 'Psychology', '3');
INSERT INTO `course` VALUE ('PSY-111', 'Abnormal Psychology', 'Psychology', '2');
INSERT INTO `course` VALUE ('SOC-334', 'Social Theory', 'Sociology', '4');
INSERT INTO `course` VALUE ('SOC-221', 'Deviance and Crime', 'Sociology', '3');
INSERT INTO `course` VALUE ('SOC-111', 'Intro. to Sociology', 'Sociology', '2');
INSERT INTO `course` VALUE ('THE-333', 'Directing', 'Theatre', '4');
INSERT INTO `course` VALUE ('THE-221', 'Playwriting', 'Theatre', '3');
INSERT INTO `course` VALUE ('THE-114', 'Acting', 'Theatre', '2');
INSERT INTO `course` VALUE ('CHE-331', 'Physical Chemistry', 'Chemistry', '4');
INSERT INTO `course` VALUE ('CHE-222', 'Organic Chemistry', 'Chemistry', '3');
INSERT INTO `course` VALUE ('CHE-121', 'General Chemistry', 'Chemistry', '2');
INSERT INTO `course` VALUE ('EA-421', 'Geophysics', 'Earth Sci.', '4');
INSERT INTO `course` VALUE ('EA-211', 'Environmental Geology', 'Earth Sci.', '3');
INSERT INTO `course` VALUE ('EA-111', 'Geology', 'Earth Sci.', '2');
INSERT INTO `course` VALUE ('EN-421', 'Climate Change', 'Env. Sci.', '4');
INSERT INTO `course` VALUE ('EN-333', 'Environmental Policy', 'Env. Sci.', '3');
INSERT INTO `course` VALUE ('EN-111', 'Environmental Biology', 'Env. Sci.', '2');
INSERT INTO `course` VALUE ('MA-444', 'Abstract Algebra', 'Math', '4');
INSERT INTO `course` VALUE ('MA-333', 'Real Analysis', 'Math', '3');
INSERT INTO `course` VALUE ('MA-222', 'Calculus', 'Math', '2');
INSERT INTO `course` VALUE ('BUS-456', 'Corporate Finance for Business', 'Business', '4');
INSERT INTO `course` VALUE ('BUS-332', 'Strategic Management', 'Business', '3');
INSERT INTO `course` VALUE ('BUS-221', 'Principles of Business', 'Business', '2');
INSERT INTO `course` VALUE ('LAW-455', 'Constitutional Law', 'Law', '4');
INSERT INTO `course` VALUE ('LAW-222', 'Torts', 'Law', '3');
INSERT INTO `course` VALUE ('LAW-111', 'Contracts', 'Law', '1');
INSERT INTO `course` VALUE ('EC-123', 'Macroeconomics', 'Economics', '1');
INSERT INTO `course` VALUE ('EC-222', 'International Economics', 'Economics', '3');
INSERT INTO `course` VALUE ('EDU-222', 'Curriculum and Instruction', 'Education', '2');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `prereq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prereq` (
  `course_id` varchar(8) NOT NULL,
  `prereq_id` varchar(8) NOT NULL,
  PRIMARY KEY (`course_id`,`prereq_id`),
  KEY `prereq_id` (`prereq_id`),
  CONSTRAINT `prereq_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE CASCADE,
  CONSTRAINT `prereq_ibfk_2` FOREIGN KEY (`prereq_id`) REFERENCES `course` (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `prereq` WRITE;
/*!40000 ALTER TABLE `prereq` DISABLE KEYS */;
INSERT INTO `prereq` VALUE ('BIO-301', 'BIO-101');
INSERT INTO `prereq` VALUE ('BIO-399', 'BIO-101');
INSERT INTO `prereq` VALUE ('CS-190', 'CS-101');
INSERT INTO `prereq` VALUE ('CS-315', 'CS-101');
INSERT INTO `prereq` VALUE ('CS-347', 'CS-101');
INSERT INTO `prereq` VALUE ('EE-181', 'PHY-101');
INSERT INTO `prereq` VALUE ('SOC-334', 'SOC-111');
INSERT INTO `prereq` VALUE ('SOC-334', 'SOC-221');
INSERT INTO `prereq` VALUE ('BIO-102', 'BIO-101');
INSERT INTO `prereq` VALUE ('BIO-399', 'BIO-102');
INSERT INTO `prereq` VALUE ('PHY-223', 'PHY-121');
INSERT INTO `prereq` VALUE ('PHY-331', 'PHY-102');
INSERT INTO `prereq` VALUE ('PHY-331', 'PHY-121');
INSERT INTO `prereq` VALUE ('CHE-331', 'CHE-121');
INSERT INTO `prereq` VALUE ('CHE-222', 'CHE-121');
INSERT INTO `prereq` VALUE ('MA-444', 'MA-222');
INSERT INTO `prereq` VALUE ('MU-200', 'MU-211');
INSERT INTO `prereq` VALUE ('CS-301', 'CS-211');
INSERT INTO `prereq` VALUE ('LAW-455', 'LAW-111');
INSERT INTO `prereq` VALUE ('EC-222', 'EC-123');
INSERT INTO `prereq` VALUE ('BIO-399', 'CS-101');
INSERT INTO `prereq` VALUE ('EA-211', 'EN-111');
INSERT INTO `prereq` VALUE ('CS-211', 'CS-101');
INSERT INTO `prereq` VALUE ('EE-200', 'EE-181');
INSERT INTO `prereq` VALUE ('LAW-222', 'LAW-111');
INSERT INTO `prereq` VALUE ('MA-333', 'MA-222');
INSERT INTO `prereq` VALUE ('EA-321', 'EA-111');
INSERT INTO `prereq` VALUE ('PS-333', 'EN-333');
INSERT INTO `prereq` VALUE ('LAW-455', 'PS-123');
INSERT INTO `prereq` VALUE ('PS-222', 'PS-123');
INSERT INTO `prereq` VALUE ('PHI-221', 'PHI-111');
INSERT INTO `prereq` VALUE ('PHI-333', 'PHI-221');
INSERT INTO `prereq` VALUE ('ENG-221', 'ENG-112');
INSERT INTO `prereq` VALUE ('PHY-102', 'PHY-101');
INSERT INTO `prereq` VALUE ('PSY-345', 'PSY-111');
INSERT INTO `prereq` VALUE ('EA-421', 'PHY-102');
/*!40000 ALTER TABLE `prereq` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `section` (
  `course_id` varchar(8) NOT NULL,
  `sec_id` varchar(8) NOT NULL,
  `semester` varchar(6) NOT NULL,
  `year` decimal(4,0) NOT NULL,
  `building` varchar(15) DEFAULT NULL,
  `room_no` varchar(7) DEFAULT NULL,
  `time_slot_id` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`course_id`,`sec_id`,`semester`,`year`),
  KEY `building` (`building`,`room_no`),
  CONSTRAINT `section_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE CASCADE,
  CONSTRAINT `section_ibfk_2` FOREIGN KEY (`building`, `room_no`) REFERENCES `classroom` (`building`, `room_no`) ON DELETE SET NULL,
  CONSTRAINT `section_ibfk_3` FOREIGN KEY (`time_slot_id`) REFERENCES `time_slot` (`time_slot_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `section` WRITE;
/*!40000 ALTER TABLE `section` DISABLE KEYS */;
INSERT INTO `section` VALUE ('BIO-101', '1', 'Summer', '2009', 'Painter', '514', 'B');
INSERT INTO `section` VALUE ('BIO-301', '1', 'Summer', '2010', 'Painter', '514', 'A');
INSERT INTO `section` VALUE ('CS-101', '1', 'Fall', '2009', 'Packard', '101', 'H');
INSERT INTO `section` VALUE ('CS-101', '1', 'Spring', '2010', 'Packard', '101', 'F');
INSERT INTO `section` VALUE ('CS-190', '1', 'Spring', '2009', 'Taylor', '3128', 'E');
INSERT INTO `section` VALUE ('CS-190', '2', 'Spring', '2009', 'Taylor', '3128', 'A');
INSERT INTO `section` VALUE ('CS-315', '1', 'Spring', '2010', 'Watson', '120', 'D');
INSERT INTO `section` VALUE ('CS-319', '1', 'Spring', '2010', 'Watson', '110', 'B');
INSERT INTO `section` VALUE ('CS-319', '2', 'Spring', '2010', 'Taylor', '3128', 'C');
INSERT INTO `section` VALUE ('CS-347', '1', 'Fall', '2009', 'Taylor', '3128', 'A');
INSERT INTO `section` VALUE ('EE-181', '1', 'Spring', '2009', 'Taylor', '3128', 'C');
INSERT INTO `section` VALUE ('FIN-201', '1', 'Spring', '2010', 'Packard', '101', 'B');
INSERT INTO `section` VALUE ('HIS-351', '1', 'Spring', '2010', 'Painter', '514', 'C');
INSERT INTO `section` VALUE ('MU-199', '1', 'Spring', '2010', 'Packard', '101', 'D');
INSERT INTO `section` VALUE ('PHY-101', '1', 'Fall', '2009', 'Watson', '110', 'A');
INSERT INTO `section` VALUE ('PHY-102', '2', 'Fall', '2012', 'Watson', '110', 'A');
INSERT INTO `section` VALUE ('BIO-102', '1', 'Fall', '2010', 'Smith', '505', 'I');
INSERT INTO `section` VALUE ('BIO-102', '2', 'Fall', '2010', 'Packard', '104', 'B');
INSERT INTO `section` VALUE ('CS-202', '1', 'Spring', '2012', 'Johnson', '703', 'C');
INSERT INTO `section` VALUE ('CS-202', '2', 'Spring', '2012', 'Johnson', '703', 'D');
INSERT INTO `section` VALUE ('EE-200', '1', 'Summer', '2009', 'Taylor', '3126', 'J');
INSERT INTO `section` VALUE ('EE-200', '2', 'Summer', '2009', 'Taylor', '3126', 'F');
INSERT INTO `section` VALUE ('FIN-211', '1', 'Spring', '2009', 'Smith', '504', 'G');
INSERT INTO `section` VALUE ('FIN-211', '1', 'Summer', '2009', 'Smith', '504', 'G');
INSERT INTO `section` VALUE ('PHY-121', '1', 'Fall', '2009', 'Watson', '140', 'G');
INSERT INTO `section` VALUE ('PHY-121', '2', 'Spring', '2010', 'Watson', '140', 'H');
INSERT INTO `section` VALUE ('ART-332', '1', 'Summer', '2012', 'Johnson', '702', 'A');
INSERT INTO `section` VALUE ('EDU-222', '1', 'Fall', '2012', 'Johnson', '701', 'I');
INSERT INTO `section` VALUE ('EC-222', '1', 'Summer', '2012', 'Johnson', '702', 'B');
INSERT INTO `section` VALUE ('PHI-111', '1', 'Spring', '2012', 'Smith', '504', 'C');
INSERT INTO `section` VALUE ('PHI-111', '2', 'Spring', '2012', 'Smith', '504', 'D');
INSERT INTO `section` VALUE ('PS-333', '1', 'Fall', '2010', 'Packard', '103', 'J');
INSERT INTO `section` VALUE ('PS-333', '1', 'Summer', '2010', 'Packard', '103', 'A');
INSERT INTO `section` VALUE ('EN-421', '1', 'Spring', '2011', 'Painter', '514', 'D');
INSERT INTO `section` VALUE ('EN-421', '1', 'Summer', '2012', 'Painter', '514', 'C');
INSERT INTO `section` VALUE ('EN-421', '2', 'Summer', '2012', 'Painter', '514', 'D');
INSERT INTO `section` VALUE ('THE-114', '1', 'Spring', '2015', 'Taylor', '3129', 'A');
INSERT INTO `section` VALUE ('THE-114', '1', 'Summer', '2015', 'Taylor', '3129', 'J');
INSERT INTO `section` VALUE ('EC-222', '1', 'Spring', '2015', 'Taylor', '3129', 'E');
INSERT INTO `section` VALUE ('EA-333', '1', 'Summer', '2013', 'Johnson', '700', 'I');
/*!40000 ALTER TABLE `section` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `takes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `takes` (
  `ID` varchar(5) NOT NULL,
  `course_id` varchar(8) NOT NULL,
  `sec_id` varchar(8) NOT NULL,
  `semester` varchar(6) NOT NULL,
  `year` decimal(4,0) NOT NULL,
  `grade` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`ID`,`course_id`,`sec_id`,`semester`,`year`),
  KEY `course_id` (`course_id`,`sec_id`,`semester`,`year`),
  CONSTRAINT `takes_ibfk_1` FOREIGN KEY (`course_id`, `sec_id`, `semester`, `year`) REFERENCES `section` (`course_id`, `sec_id`, `semester`, `year`) ON DELETE CASCADE,
  CONSTRAINT `takes_ibfk_2` FOREIGN KEY (`ID`) REFERENCES `student` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `takes_ibfk_3` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `takes` WRITE;
/*!40000 ALTER TABLE `takes` DISABLE KEYS */;
INSERT INTO `takes` VALUE ('00128', 'CS-101', '1', 'Fall', '2009', 'A');
INSERT INTO `takes` VALUE ('00128', 'CS-347', '1', 'Fall', '2009', 'A-');
INSERT INTO `takes` VALUE ('12345', 'CS-101', '1', 'Fall', '2009', 'C');
INSERT INTO `takes` VALUE ('12345', 'CS-190', '2', 'Spring', '2009', 'A');
INSERT INTO `takes` VALUE ('12345', 'CS-315', '1', 'Spring', '2010', 'A');
INSERT INTO `takes` VALUE ('12345', 'CS-347', '1', 'Fall', '2009', 'A');
INSERT INTO `takes` VALUE ('19991', 'HIS-351', '1', 'Spring', '2010', 'B');
INSERT INTO `takes` VALUE ('23121', 'FIN-201', '1', 'Spring', '2010', 'C+');
INSERT INTO `takes` VALUE ('44553', 'PHY-101', '1', 'Fall', '2009', 'B-');
INSERT INTO `takes` VALUE ('45678', 'CS-101', '1', 'Fall', '2009', 'F');
INSERT INTO `takes` VALUE ('45678', 'CS-101', '1', 'Spring', '2010', 'B+');
INSERT INTO `takes` VALUE ('45678', 'CS-319', '1', 'Spring', '2010', 'B');
INSERT INTO `takes` VALUE ('54321', 'CS-101', '1', 'Fall', '2009', 'A-');
INSERT INTO `takes` VALUE ('54321', 'CS-190', '2', 'Spring', '2009', 'B+');
INSERT INTO `takes` VALUE ('55739', 'MU-199', '1', 'Spring', '2010', 'A-');
INSERT INTO `takes` VALUE ('76543', 'CS-101', '1', 'Fall', '2009', 'A');
INSERT INTO `takes` VALUE ('76543', 'CS-319', '2', 'Spring', '2010', 'A');
INSERT INTO `takes` VALUE ('76653', 'EE-181', '1', 'Spring', '2009', 'C');
INSERT INTO `takes` VALUE ('98765', 'CS-101', '1', 'Fall', '2009', 'C-');
INSERT INTO `takes` VALUE ('98765', 'CS-315', '1', 'Spring', '2010', 'B');
INSERT INTO `takes` VALUE ('98988', 'BIO-101', '1', 'Summer', '2009', 'A');
INSERT INTO `takes` VALUE ('98988', 'BIO-301', '1', 'Summer', '2010', '');
INSERT INTO `takes` VALUE ('99881', 'THE-114', '1', 'Spring', '2015', '');
INSERT INTO `takes` VALUE ('99881', 'ART-332', '1', 'Summer', '2012', 'C');
INSERT INTO `takes` VALUE ('00123', 'EDU-222', '1', 'Fall', '2012', 'A');
INSERT INTO `takes` VALUE ('00123', 'EC-222', '1', 'Summer', '2012', 'C');
INSERT INTO `takes` VALUE ('65523', 'ART-332', '1', 'Summer', '2012', 'D');
INSERT INTO `takes` VALUE ('65523', 'THE-114', '1', 'Spring', '2015', 'A');
INSERT INTO `takes` VALUE ('65523', 'EDU-222', '1', 'Fall', '2012', 'C');
INSERT INTO `takes` VALUE ('87656', 'PHI-111', '1', 'Spring', '2012', 'A');
INSERT INTO `takes` VALUE ('87656', 'PS-333', '1', 'Fall', '2010', 'C+');
INSERT INTO `takes` VALUE ('00157', 'CS-101', '1', 'Spring', '2010', 'A');
INSERT INTO `takes` VALUE ('87666', 'CS-101', '1', 'Spring', '2010', 'B');
INSERT INTO `takes` VALUE ('87666', 'EDU-222', '1', 'Fall', '2012', 'A+');
INSERT INTO `takes` VALUE ('87666', 'BIO-101', '1', 'Summer', '2009', 'B+');
INSERT INTO `takes` VALUE ('87666', 'PHY-101', '1', 'Fall', '2009', 'A');
INSERT INTO `takes` VALUE ('22341', 'EN-421', '1', 'Spring', '2011', 'C+');
INSERT INTO `takes` VALUE ('22341', 'EN-421', '1', 'Summer', '2012', 'A');
INSERT INTO `takes` VALUE ('85464', 'PHI-111', '2', 'Spring', '2012', 'B+');
INSERT INTO `takes` VALUE ('69976', 'EN-421', '2', 'Summer', '2012', 'A+');
/*!40000 ALTER TABLE `takes` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `teaches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teaches` (
  `ID` varchar(5) NOT NULL,
  `course_id` varchar(8) NOT NULL,
  `sec_id` varchar(8) NOT NULL,
  `semester` varchar(6) NOT NULL,
  `year` decimal(4,0) NOT NULL,
  PRIMARY KEY (`ID`,`course_id`,`sec_id`,`semester`,`year`),
  KEY `course_id` (`course_id`,`sec_id`,`semester`,`year`),
  CONSTRAINT `teaches_ibfk_1` FOREIGN KEY (`course_id`, `sec_id`, `semester`, `year`) REFERENCES `section` (`course_id`, `sec_id`, `semester`, `year`) ON DELETE CASCADE,
  CONSTRAINT `teaches_ibfk_2` FOREIGN KEY (`ID`) REFERENCES `instructor` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `teaches` WRITE;
/*!40000 ALTER TABLE `teaches` DISABLE KEYS */;
INSERT INTO `teaches` VALUE ('76766', 'BIO-101', '1', 'Summer', '2009');
INSERT INTO `teaches` VALUE ('76766', 'BIO-301', '1', 'Summer', '2010');
INSERT INTO `teaches` VALUE ('10101', 'CS-101', '1', 'Fall', '2009');
INSERT INTO `teaches` VALUE ('45565', 'CS-101', '1', 'Spring', '2010');
INSERT INTO `teaches` VALUE ('83821', 'CS-190', '1', 'Spring', '2009');
INSERT INTO `teaches` VALUE ('83821', 'CS-190', '2', 'Spring', '2009');
INSERT INTO `teaches` VALUE ('10101', 'CS-315', '1', 'Spring', '2010');
INSERT INTO `teaches` VALUE ('45565', 'CS-319', '1', 'Spring', '2010');
INSERT INTO `teaches` VALUE ('83821', 'CS-319', '2', 'Spring', '2010');
INSERT INTO `teaches` VALUE ('10101', 'CS-347', '1', 'Fall', '2009');
INSERT INTO `teaches` VALUE ('98345', 'EE-181', '1', 'Spring', '2009');
INSERT INTO `teaches` VALUE ('12121', 'FIN-201', '1', 'Spring', '2010');
INSERT INTO `teaches` VALUE ('32343', 'HIS-351', '1', 'Spring', '2010');
INSERT INTO `teaches` VALUE ('15151', 'MU-199', '1', 'Spring', '2010');
INSERT INTO `teaches` VALUE ('22222', 'PHY-101', '1', 'Fall', '2009');
INSERT INTO `teaches` VALUE ('23232', 'EDU-222', '1', 'Fall', '2012');
INSERT INTO `teaches` VALUE ('22422', 'FIN-211', '1', 'Spring', '2009');
INSERT INTO `teaches` VALUE ('22422', 'FIN-211', '1', 'Summer', '2009');
INSERT INTO `teaches` VALUE ('76766', 'BIO-102', '1', 'Fall', '2010');
INSERT INTO `teaches` VALUE ('76766', 'BIO-102', '2', 'Fall', '2010');
INSERT INTO `teaches` VALUE ('66778', 'CS-202', '1', 'Spring', '2012');
INSERT INTO `teaches` VALUE ('66778', 'CS-202', '2', 'Spring', '2012');
INSERT INTO `teaches` VALUE ('33456', 'PHY-121', '1', 'Fall', '2009');
INSERT INTO `teaches` VALUE ('44556', 'ART-332', '1', 'Summer', '2012');
INSERT INTO `teaches` VALUE ('22422', 'EC-222', '1', 'Summer', '2012');
INSERT INTO `teaches` VALUE ('46565', 'PS-333', '1', 'Fall', '2010');
INSERT INTO `teaches` VALUE ('4432', 'PS-333', '1', 'Summer', '2010');
INSERT INTO `teaches` VALUE ('99874', 'EN-421', '1', 'Spring', '2011');
INSERT INTO `teaches` VALUE ('99874', 'EN-421', '1', 'Summer', '2012');
INSERT INTO `teaches` VALUE ('44556', 'THE-114', '1', 'Spring', '2015');
INSERT INTO `teaches` VALUE ('56567', 'THE-114', '1', 'Summer', '2015');
INSERT INTO `teaches` VALUE ('88991', 'EA-333', '1', 'Summer', '2013');
INSERT INTO `teaches` VALUE ('35432', 'EE-200', '1', 'Summer', '2009');
INSERT INTO `teaches` VALUE ('35432', 'EE-200', '2', 'Summer', '2009');
INSERT INTO `teaches` VALUE ('55776', 'PHI-111', '1', 'Spring', '2012');
/*!40000 ALTER TABLE `teaches` ENABLE KEYS */;
UNLOCK TABLES;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;