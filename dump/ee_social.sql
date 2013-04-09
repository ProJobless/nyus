# ************************************************************
# Sequel Pro SQL dump
# Version 4004
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.5.29)
# Database: ee_social
# Generation Time: 2013-04-09 15:45:58 -0400
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table exp_accessories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_accessories`;

CREATE TABLE `exp_accessories` (
  `accessory_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(75) NOT NULL DEFAULT '',
  `member_groups` varchar(50) NOT NULL DEFAULT 'all',
  `controllers` text,
  `accessory_version` varchar(12) NOT NULL,
  PRIMARY KEY (`accessory_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_accessories` WRITE;
/*!40000 ALTER TABLE `exp_accessories` DISABLE KEYS */;

INSERT INTO `exp_accessories` (`accessory_id`, `class`, `member_groups`, `controllers`, `accessory_version`)
VALUES
	(1,'Expressionengine_info_acc','1|5','addons_plugins|addons_fieldtypes|admin_system|tools_logs|content_files_modal|myaccount|content_files|tools_communicate|homepage|content_edit|addons_accessories|content_publish|design|content|tools_data|addons|addons_extensions|members|admin_content|addons_modules|tools_utilities|tools','1.0'),
	(2,'Nsm_morphine_theme_acc','1|5','addons|addons_accessories|addons_extensions|addons_fieldtypes|addons_modules|addons_plugins|admin_content|admin_system|content|content_edit|content_files|content_files_modal|content_publish|design|homepage|members|myaccount|tools|tools_communicate|tools_data|tools_logs|tools_utilities','2.0.3');

/*!40000 ALTER TABLE `exp_accessories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_actions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_actions`;

CREATE TABLE `exp_actions` (
  `action_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  PRIMARY KEY (`action_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_actions` WRITE;
/*!40000 ALTER TABLE `exp_actions` DISABLE KEYS */;

INSERT INTO `exp_actions` (`action_id`, `class`, `method`)
VALUES
	(40,'Safecracker','combo_loader'),
	(39,'Safecracker','submit_entry'),
	(3,'Search','do_search'),
	(4,'Channel','insert_new_entry'),
	(5,'Channel','filemanager_endpoint'),
	(6,'Channel','smiley_pop'),
	(7,'Member','registration_form'),
	(8,'Member','register_member'),
	(9,'Member','activate_member'),
	(10,'Member','member_login'),
	(11,'Member','member_logout'),
	(12,'Member','retrieve_password'),
	(13,'Member','reset_password'),
	(14,'Member','send_member_email'),
	(15,'Member','update_un_pw'),
	(16,'Member','member_search'),
	(17,'Member','member_delete'),
	(18,'Rte','get_js'),
	(19,'Friends','edit_group'),
	(20,'Friends','invite_friends'),
	(21,'Friends','message_folder_edit'),
	(22,'Friends','opt_out'),
	(23,'Friends','send_message'),
	(24,'Friends','status_update'),
	(25,'Friends','update'),
	(26,'Friends','insert_group_wall_comment'),
	(27,'Friends','insert_profile_wall_comment'),
	(28,'User','group_edit'),
	(29,'User','edit_profile'),
	(30,'User','reg'),
	(31,'User','reassign_jump'),
	(32,'User','retrieve_password'),
	(33,'User','do_logout'),
	(34,'User','do_search'),
	(35,'User','delete_account'),
	(36,'User','activate_member'),
	(37,'User','retrieve_username'),
	(38,'User','create_key');

/*!40000 ALTER TABLE `exp_actions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_captcha
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_captcha`;

CREATE TABLE `exp_captcha` (
  `captcha_id` bigint(13) unsigned NOT NULL AUTO_INCREMENT,
  `date` int(10) unsigned NOT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `word` varchar(20) NOT NULL,
  PRIMARY KEY (`captcha_id`),
  KEY `word` (`word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_captcha` WRITE;
/*!40000 ALTER TABLE `exp_captcha` DISABLE KEYS */;

INSERT INTO `exp_captcha` (`captcha_id`, `date`, `ip_address`, `word`)
VALUES
	(1312,1365536049,'127.0.0.1','seven24'),
	(1311,1365536049,'127.0.0.1','letters92'),
	(1340,1365536090,'127.0.0.1','figure49'),
	(1339,1365536090,'127.0.0.1','under71'),
	(1338,1365536090,'127.0.0.1','power68'),
	(1337,1365536090,'127.0.0.1','thing16'),
	(1336,1365536090,'127.0.0.1','went39'),
	(1335,1365536090,'127.0.0.1','list48'),
	(1334,1365536090,'127.0.0.1','past86'),
	(1333,1365536090,'127.0.0.1','system15'),
	(1332,1365536090,'127.0.0.1','hundred89'),
	(1331,1365536090,'127.0.0.1','waiting99'),
	(1330,1365536090,'127.0.0.1','knew19'),
	(1329,1365536090,'127.0.0.1','various56'),
	(1328,1365536090,'127.0.0.1','trial65'),
	(1327,1365536090,'127.0.0.1','justice46'),
	(1326,1365536090,'127.0.0.1','record83'),
	(1325,1365536090,'127.0.0.1','shot82'),
	(1324,1365536090,'127.0.0.1','written38'),
	(1323,1365536090,'127.0.0.1','world88'),
	(1322,1365536050,'127.0.0.1','word58'),
	(1321,1365536050,'127.0.0.1','wrong29'),
	(1320,1365536050,'127.0.0.1','market88'),
	(1319,1365536050,'127.0.0.1','way28'),
	(1318,1365536050,'127.0.0.1','letter92'),
	(1317,1365536050,'127.0.0.1','recent15'),
	(1316,1365536050,'127.0.0.1','french83'),
	(1315,1365536050,'127.0.0.1','longer64'),
	(1314,1365536050,'127.0.0.1','brought21'),
	(1313,1365536050,'127.0.0.1','society35'),
	(1289,1365522762,'127.0.0.1','provided82'),
	(1288,1365522761,'127.0.0.1','looking87'),
	(1287,1365522761,'127.0.0.1','schools96'),
	(1286,1365522761,'127.0.0.1','writing36'),
	(1285,1365522761,'127.0.0.1','hot97'),
	(1284,1365522761,'127.0.0.1','moral79'),
	(1283,1365522761,'127.0.0.1','earlier14'),
	(1282,1365522761,'127.0.0.1','sent17'),
	(1281,1365522760,'127.0.0.1','once33'),
	(1280,1365522760,'127.0.0.1','death73'),
	(1279,1365522760,'127.0.0.1','zipper77'),
	(1310,1365536049,'127.0.0.1','analysis45'),
	(1309,1365536049,'127.0.0.1','hands58'),
	(1308,1365536049,'127.0.0.1','result85'),
	(1307,1365536048,'127.0.0.1','sent77'),
	(1306,1365536048,'127.0.0.1','fall17'),
	(1305,1365536048,'127.0.0.1','research45'),
	(1304,1365522764,'127.0.0.1','given46'),
	(1303,1365522764,'127.0.0.1','turn23'),
	(1302,1365522764,'127.0.0.1','air64'),
	(1301,1365522763,'127.0.0.1','public24'),
	(1300,1365522763,'127.0.0.1','place64'),
	(1299,1365522763,'127.0.0.1','letters72'),
	(1298,1365522763,'127.0.0.1','writing31'),
	(1297,1365522763,'127.0.0.1','music79'),
	(1296,1365522763,'127.0.0.1','front61'),
	(1295,1365522763,'127.0.0.1','maybe72'),
	(1294,1365522762,'127.0.0.1','step96'),
	(1293,1365522762,'127.0.0.1','are65'),
	(1292,1365522762,'127.0.0.1','theory72'),
	(1291,1365522762,'127.0.0.1','expect61'),
	(1290,1365522762,'127.0.0.1','anything76'),
	(1271,1365522759,'127.0.0.1','data53'),
	(1270,1365522759,'127.0.0.1','meeting42'),
	(1269,1365522759,'127.0.0.1','section93'),
	(1268,1365522758,'127.0.0.1','former28'),
	(1267,1365522758,'127.0.0.1','woman81'),
	(1266,1365522758,'127.0.0.1','tried72'),
	(1265,1365522757,'127.0.0.1','really46'),
	(1278,1365522760,'127.0.0.1','higher77'),
	(1277,1365522760,'127.0.0.1','able36'),
	(1276,1365522760,'127.0.0.1','become23'),
	(1275,1365522759,'127.0.0.1','through79'),
	(1274,1365522759,'127.0.0.1','consider62'),
	(1273,1365522759,'127.0.0.1','required71'),
	(1272,1365522759,'127.0.0.1','idea43');

/*!40000 ALTER TABLE `exp_captcha` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_categories`;

CREATE TABLE `exp_categories` (
  `cat_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_id` int(6) unsigned NOT NULL,
  `parent_id` int(4) unsigned NOT NULL,
  `cat_name` varchar(100) NOT NULL,
  `cat_url_title` varchar(75) NOT NULL,
  `cat_description` text,
  `cat_image` varchar(120) DEFAULT NULL,
  `cat_order` int(4) unsigned NOT NULL,
  PRIMARY KEY (`cat_id`),
  KEY `group_id` (`group_id`),
  KEY `cat_name` (`cat_name`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_category_field_data
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_category_field_data`;

CREATE TABLE `exp_category_field_data` (
  `cat_id` int(4) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_id` int(4) unsigned NOT NULL,
  PRIMARY KEY (`cat_id`),
  KEY `site_id` (`site_id`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_category_fields
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_category_fields`;

CREATE TABLE `exp_category_fields` (
  `field_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_id` int(4) unsigned NOT NULL,
  `field_name` varchar(32) NOT NULL DEFAULT '',
  `field_label` varchar(50) NOT NULL DEFAULT '',
  `field_type` varchar(12) NOT NULL DEFAULT 'text',
  `field_list_items` text NOT NULL,
  `field_maxl` smallint(3) NOT NULL DEFAULT '128',
  `field_ta_rows` tinyint(2) NOT NULL DEFAULT '8',
  `field_default_fmt` varchar(40) NOT NULL DEFAULT 'none',
  `field_show_fmt` char(1) NOT NULL DEFAULT 'y',
  `field_text_direction` char(3) NOT NULL DEFAULT 'ltr',
  `field_required` char(1) NOT NULL DEFAULT 'n',
  `field_order` int(3) unsigned NOT NULL,
  PRIMARY KEY (`field_id`),
  KEY `site_id` (`site_id`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_category_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_category_groups`;

CREATE TABLE `exp_category_groups` (
  `group_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_name` varchar(50) NOT NULL,
  `sort_order` char(1) NOT NULL DEFAULT 'a',
  `exclude_group` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_html_formatting` char(4) NOT NULL DEFAULT 'all',
  `can_edit_categories` text,
  `can_delete_categories` text,
  PRIMARY KEY (`group_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_category_posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_category_posts`;

CREATE TABLE `exp_category_posts` (
  `entry_id` int(10) unsigned NOT NULL,
  `cat_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`entry_id`,`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_channel_data
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_channel_data`;

CREATE TABLE `exp_channel_data` (
  `entry_id` int(10) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `channel_id` int(4) unsigned NOT NULL,
  `field_id_1` text,
  `field_ft_1` tinytext,
  `field_id_2` float DEFAULT '0',
  `field_ft_2` tinytext,
  `field_id_4` float DEFAULT '0',
  `field_ft_4` tinytext,
  `field_id_5` float DEFAULT '0',
  `field_ft_5` tinytext,
  `field_id_8` text,
  `field_ft_8` tinytext,
  `field_id_9` text,
  `field_ft_9` tinytext,
  `field_id_10` text,
  `field_ft_10` tinytext,
  `field_id_11` text,
  `field_ft_11` tinytext,
  `field_id_12` text,
  `field_ft_12` tinytext,
  `field_id_13` float DEFAULT '0',
  `field_ft_13` tinytext,
  `field_id_14` float DEFAULT '0',
  `field_ft_14` tinytext,
  PRIMARY KEY (`entry_id`),
  KEY `channel_id` (`channel_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_channel_data` WRITE;
/*!40000 ALTER TABLE `exp_channel_data` DISABLE KEYS */;

INSERT INTO `exp_channel_data` (`entry_id`, `site_id`, `channel_id`, `field_id_1`, `field_ft_1`, `field_id_2`, `field_ft_2`, `field_id_4`, `field_ft_4`, `field_id_5`, `field_ft_5`, `field_id_8`, `field_ft_8`, `field_id_9`, `field_ft_9`, `field_id_10`, `field_ft_10`, `field_id_11`, `field_ft_11`, `field_id_12`, `field_ft_12`, `field_id_13`, `field_ft_13`, `field_id_14`, `field_ft_14`)
VALUES
	(1,1,1,'This is a test','none',14,'none',0,'none',0,'none','','xhtml','','none','','none','','none','','none',1,'none',0,'none'),
	(2,1,1,'A sample from other status','none',10,'none',0,'none',0,'none','','xhtml','','none','','none','','none','','none',1,'none',0,'none'),
	(3,1,1,'asdfa fasdf asdf ','none',0,'none',0,'none',0,'none','','xhtml','','none','','none','','none','','none',1,'none',0,'none'),
	(4,1,1,'dfsg sdfg sdfgsdfg','none',16,'none',0,'none',0,'none','','xhtml','','none','','none','','none','','none',1,'none',0,'none'),
	(5,1,1,'well that\'s pretty cool','none',16,'none',0,'none',0,'none','','xhtml','','none','','none','','none','','none',7,'none',0,'none'),
	(6,1,1,'checking','none',16,'none',0,'none',0,'none','','xhtml','','none','','none','','none','','none',1,'none',0,'none'),
	(7,1,1,'One more test','none',16,'none',0,'none',0,'none','','xhtml','','none','','none','','none','','none',1,'none',0,'none'),
	(8,1,1,'Hola Hola','none',15,'none',0,'none',0,'none','','xhtml','','none','','none','','none','','none',1,'none',0,'none'),
	(9,1,1,'Hola Hola','none',13,'none',0,'none',0,'none','','xhtml','','none','','none','','none','','none',1,'none',0,'none'),
	(10,1,1,'Ya paso ahora si','none',13,'none',0,'none',0,'none','','xhtml','','none','','none','','none','','none',1,'none',0,'none'),
	(11,1,1,'aqui voy','none',16,'none',0,'none',0,'none','','xhtml','','none','','none','','none','','none',1,'none',0,'none'),
	(12,1,1,'Write something...Uno mas al tigre','none',13,'none',0,'none',0,'none','','xhtml','','none','','none','','none','','none',1,'none',0,'none'),
	(13,1,1,'testeando a 0','none',7,'none',0,'none',0,'none','','xhtml','','none','','none','','none','','none',1,'none',0,'none'),
	(14,1,1,'Desde y hasta en el perfil','none',15,'none',0,'none',0,'none','','xhtml','','none','','none','','none','','none',1,'none',0,'none'),
	(15,1,1,'mas','none',15,'none',0,'none',0,'none','','xhtml','','none','','none','','none','','none',1,'none',0,'none'),
	(16,1,1,'Write something...sdaif asdklfj kasdfj laksdf;a','none',15,'none',0,'none',0,'none','','xhtml','','none','','none','','none','','none',1,'none',0,'none'),
	(17,1,1,'Write something...kajsd fkajsdfklasdjfl;kflkadfjs ;lasdfj la;kdsfj asdl;kfj al;sdkfj ;alsdkj ','none',15,'none',0,'none',0,'none','','xhtml','','none','','none','','none','','none',1,'none',0,'none'),
	(18,1,1,'asd fkasdfjaklsdjf aklsdjf aklsdjf akjlsdf asdlkj sd','none',14,'none',0,'none',0,'none','','xhtml','','none','','none','','none','','none',1,'none',0,'none'),
	(19,1,1,'mas mas mas mas mas','none',15,'none',0,'none',0,'none','','xhtml','','none','','none','','none','','none',1,'none',0,'none'),
	(20,1,1,'retv sr terst','none',15,'none',0,'none',0,'none','','xhtml','','none','','none','','none','','none',1,'none',0,'none'),
	(21,1,1,'Write something...asdfafsd sd f','none',19,'none',0,NULL,0,NULL,'','xhtml','','none','','none','','none','','none',1,'none',0,'none'),
	(23,1,1,'Write something... probando','none',21,'none',0,NULL,0,NULL,'','xhtml','','none','','none','','none','','none',1,'none',0,'none'),
	(53,1,2,'',NULL,0,NULL,50,'none',1,'none','{filedir_2}vision1.png','xhtml','','none','','none','','none','','none',1,'none',0,'none'),
	(46,1,2,'',NULL,0,NULL,16,'none',1,'none','{filedir_2}idea1.png','xhtml','','none','','none','','none','','none',1,'none',0,'none'),
	(52,1,2,'',NULL,0,NULL,49,'none',1,'none','','xhtml','','none','','none','','none','','none',1,'none',0,'none'),
	(51,1,2,'',NULL,0,NULL,48,'none',1,'none','{filedir_2}vision.png','xhtml','','none','','none','','none','','none',1,'none',0,'none'),
	(50,1,1,'Si se puede','none',46,'none',0,NULL,0,NULL,'',NULL,'','none','','none','','none','','none',1,'none',0,'none'),
	(49,1,2,'',NULL,0,NULL,47,'none',0,'none','','xhtml','{filedir_4}Memo.m4a','none','','none','','none','','none',1,'none',0,'none'),
	(48,1,2,'',NULL,0,NULL,46,'none',1,'none','{filedir_2}movil.png','xhtml','','none','','none','','none','','none',1,'none',0,'none'),
	(47,1,2,'',NULL,0,NULL,45,'none',1,'none','{filedir_2}catalinakulzar.png','xhtml','','none','','none','','none','','none',1,'none',0,'none'),
	(45,1,2,'',NULL,0,NULL,16,'none',1,'none','{filedir_2}lamoutique1.png','xhtml','','none','','none','','none','','none',1,'none',0,'none'),
	(44,1,2,'',NULL,0,NULL,37,'none',1,'none','{filedir_2}ayulogo1.png','xhtml','','none','','none','','none','','none',1,'none',0,'none'),
	(43,1,2,'',NULL,0,NULL,36,'none',1,'none','{filedir_2}catalina2.png','xhtml','','none','','none','','none','','none',1,'none',0,'none'),
	(54,1,3,'',NULL,0,NULL,0,NULL,0,NULL,'',NULL,'','none','','none','To start add the basic information on your profile, and upload a photo in your status wall','none','http://localhost:8888/introductions/index.php?/content/poststatus/1','none',1,'none',0,'none'),
	(55,1,2,'',NULL,0,NULL,51,'none',0,'none','{filedir_2}movil1.png','xhtml','','none','','none','',NULL,'',NULL,1,'none',0,'none'),
	(56,1,1,'Hola companero','none',51,'none',0,NULL,0,NULL,'',NULL,'','none','','none','',NULL,'',NULL,1,'none',0,'none'),
	(57,1,1,'Otro comentario por si acaso','none',51,'none',0,NULL,0,NULL,'',NULL,'','none','','none','',NULL,'',NULL,1,'none',0,'none'),
	(142,1,2,'',NULL,0,NULL,155,'none',0,'none','','none','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(58,1,1,'El audio de los Amigos','none',47,'none',0,NULL,0,NULL,'',NULL,'','none','','none','',NULL,'',NULL,1,'none',0,'none'),
	(59,1,2,'',NULL,0,NULL,52,'none',1,'none','{filedir_2}zazon.png','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(60,1,2,'',NULL,0,NULL,70,'none',0,'none','','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(61,1,2,'',NULL,0,NULL,71,'none',1,'none','','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(62,1,2,'',NULL,0,NULL,72,'none',1,'none','','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(63,1,2,'',NULL,0,NULL,73,'none',0,'none','','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(64,1,2,'',NULL,0,NULL,74,'none',0,'none','','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(65,1,2,'',NULL,0,NULL,75,'none',1,'none','','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(66,1,2,'',NULL,0,NULL,76,'none',0,'none','','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(67,1,2,'',NULL,0,NULL,77,'none',0,'none','','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(68,1,2,'',NULL,0,NULL,78,'none',1,'none','','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(69,1,2,'',NULL,0,NULL,79,'none',0,'none','','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(70,1,2,'',NULL,0,NULL,80,'none',1,'none','{filedir_2}derecha.jpg','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(71,1,2,'',NULL,0,NULL,81,'none',0,'none','','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(72,1,2,'',NULL,0,NULL,82,'none',1,'none','','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(73,1,2,'',NULL,0,NULL,83,'none',0,'none','{filedir_2}media_images','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(74,1,2,'',NULL,0,NULL,84,'none',0,'none','','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(75,1,2,'',NULL,0,NULL,85,'none',0,'none','','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(76,1,2,'',NULL,0,NULL,86,'none',0,'none','','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(77,1,2,'',NULL,0,NULL,87,'none',0,'none','','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(78,1,2,'',NULL,0,NULL,88,'none',1,'none','','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(79,1,2,'',NULL,0,NULL,89,'none',0,'none','','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(80,1,2,'',NULL,0,NULL,90,'none',0,'none','','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(81,1,2,'',NULL,0,NULL,91,'none',0,'none','','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(82,1,2,'',NULL,0,NULL,92,'none',0,'none','','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(83,1,2,'',NULL,0,NULL,93,'none',0,'none','','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(84,1,2,'',NULL,0,NULL,94,'none',0,'none','','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(85,1,2,'',NULL,0,NULL,95,'none',0,'none','','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(86,1,2,'',NULL,0,NULL,96,'none',0,'none','','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(87,1,2,'',NULL,0,NULL,97,'none',0,'none','','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(88,1,2,'',NULL,0,NULL,98,'none',0,'none','','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(89,1,2,'',NULL,0,NULL,99,'none',0,'none','','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(90,1,2,'',NULL,0,NULL,100,'none',1,'none','{filedir_2}mision.png','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(91,1,2,'',NULL,0,NULL,101,'none',0,'none','','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(92,1,2,'',NULL,0,NULL,102,'none',0,'none','','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(93,1,2,'',NULL,0,NULL,103,'none',0,'none','','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(94,1,2,'',NULL,0,NULL,104,'none',0,'none','','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(95,1,2,'',NULL,0,NULL,105,'none',0,'none','','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(96,1,2,'',NULL,0,NULL,106,'none',0,'none','','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(97,1,2,'',NULL,0,NULL,107,'none',0,'none','','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(98,1,2,'',NULL,0,NULL,108,'none',0,'none','','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(99,1,2,'',NULL,0,NULL,109,'none',0,'none','','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(100,1,2,'',NULL,0,NULL,110,'none',0,'none','','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(101,1,2,'',NULL,0,NULL,111,'none',0,'none','','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(102,1,2,'',NULL,0,NULL,112,'none',0,'none','','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(103,1,2,'',NULL,0,NULL,113,'none',0,'none','','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(104,1,2,'',NULL,0,NULL,114,'none',0,'none','','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(105,1,2,'',NULL,0,NULL,115,'none',0,'none','','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(106,1,2,'',NULL,0,NULL,116,'none',0,'none','','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(107,1,2,'',NULL,0,NULL,117,'none',0,'none','','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(108,1,2,'',NULL,0,NULL,118,'none',0,'none','','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(109,1,2,'',NULL,0,NULL,119,'none',0,'none','','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(110,1,2,'',NULL,0,NULL,120,'none',0,'none','','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(111,1,2,'',NULL,0,NULL,121,'none',0,'none','','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(112,1,2,'',NULL,0,NULL,122,'none',0,'none','','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(113,1,2,'',NULL,0,NULL,123,'none',0,'none','','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(114,1,2,'',NULL,0,NULL,124,'none',0,'none','','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(115,1,2,'',NULL,0,NULL,125,'none',0,'none','','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(116,1,2,'',NULL,0,NULL,126,'none',0,'none','','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(117,1,2,'',NULL,0,NULL,127,'none',0,'none','','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(118,1,2,'',NULL,0,NULL,128,'none',0,'none','','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(119,1,2,'',NULL,0,NULL,129,'none',0,'none','','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(120,1,2,'',NULL,0,NULL,130,'none',0,'none','','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(121,1,2,'',NULL,0,NULL,131,'none',0,'none','','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(122,1,2,'',NULL,0,NULL,132,'none',0,'none','','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(123,1,2,'',NULL,0,NULL,134,'none',0,'none','','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(124,1,2,'',NULL,0,NULL,135,'none',1,'none','','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(125,1,2,'',NULL,0,NULL,136,'none',0,'none','','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(126,1,2,'',NULL,0,NULL,138,'none',0,'none','','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(127,1,2,'',NULL,0,NULL,139,'none',0,'none','','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(128,1,2,'',NULL,0,NULL,140,'none',0,'none','','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(129,1,2,'',NULL,0,NULL,141,'none',1,'none','{filedir_2}derecha.jpg','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(130,1,2,'',NULL,0,NULL,142,'none',0,'none','{filedir_2}derecha.jpg','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(131,1,2,'',NULL,0,NULL,143,'none',1,'none','{filedir_2}derecha.jpg','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(132,1,2,'',NULL,0,NULL,144,'none',1,'none','{filedir_2}derecha.jpg','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(133,1,2,'',NULL,0,NULL,145,'none',1,'none','','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(134,1,2,'',NULL,0,NULL,146,'none',1,'none','{filedir_2}izquierda.jpg','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(135,1,2,'',NULL,0,NULL,147,'none',1,'none','{filedir_2}open-text.jpg','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(136,1,2,'',NULL,0,NULL,148,'none',1,'none','{filedir_2}izquierda.jpg','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(137,1,2,'',NULL,0,NULL,149,'none',1,'none','{filedir_2}mision.png','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(138,1,2,'',NULL,0,NULL,150,'none',1,'none','{filedir_2}bgtext1.png','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(139,1,2,'',NULL,0,NULL,151,'none',1,'none','{filedir_2}bgtext2.png','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(140,1,2,'',NULL,0,NULL,152,'none',1,'none','bgtext3.png','xhtml','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(141,1,2,'',NULL,0,NULL,154,'none',0,'none','mision.png','none','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(143,1,2,'',NULL,0,NULL,156,'none',0,'none','','none','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(144,1,2,'',NULL,0,NULL,157,'none',1,'none','lamoutique.jpg','none','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(145,1,2,'',NULL,0,NULL,158,'none',0,'none','','none','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(146,1,2,'',NULL,0,NULL,159,'none',0,'none','','none','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(147,1,2,'',NULL,0,NULL,160,'none',0,'none','','none','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(148,1,2,'',NULL,0,NULL,161,'none',1,'none','idea.png','none','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(149,1,2,'',NULL,0,NULL,162,'none',1,'none','vision.png','none','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(150,1,2,'',NULL,0,NULL,163,'none',1,'none','catalinakulzar.png','none','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(151,1,2,'',NULL,0,NULL,164,'none',1,'none','valores.png','none','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(152,1,2,'',NULL,0,NULL,165,'none',1,'none','catalina.png','none','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(153,1,2,'',NULL,0,NULL,166,'none',1,'none','urgentconntent.png','none','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(154,1,2,'',NULL,0,NULL,167,'none',0,'none','lamoutique.jpg','none','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(155,1,2,'',NULL,0,NULL,168,'none',1,'none','','none','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(156,1,2,'',NULL,0,NULL,169,'none',0,'none','','none','Memo.m4a','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(157,1,2,'',NULL,0,NULL,170,'none',1,'none','','none','Memo.m4a','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(158,1,2,'',NULL,0,NULL,172,'none',1,'none','800px-Ushuaia_paisaje.jpg','none','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(159,1,2,'',NULL,0,NULL,173,'none',1,'none','','none','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(160,1,2,'',NULL,0,NULL,174,'none',0,'none','catalinakulzar.png','none','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(161,1,2,'',NULL,0,NULL,175,'none',0,'none','','none','Example-Change The Way You Kiss Me(Dj Electric Touch Remix) (promodj.com).mp3','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(162,1,2,'',NULL,0,NULL,176,'none',1,'none','lamoutique.png','none','','none','','none','',NULL,'',NULL,0,NULL,0,NULL),
	(163,1,2,'',NULL,0,NULL,177,'none',1,'none','','none','','none','IMG_1465.MOV','none','',NULL,'',NULL,0,NULL,0,NULL),
	(164,1,2,'',NULL,0,NULL,178,'none',1,'none','','none','','none','IMG_1465.MOV','none','',NULL,'',NULL,0,NULL,0,NULL),
	(165,1,2,'',NULL,0,NULL,179,'none',1,'none','','none','','none','IMG_1465.MOV','none','',NULL,'',NULL,0,NULL,0,NULL),
	(166,1,1,'Ahi un comentario','none',179,'none',0,NULL,0,NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,1,'none',0,'none');

/*!40000 ALTER TABLE `exp_channel_data` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_channel_entries_autosave
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_channel_entries_autosave`;

CREATE TABLE `exp_channel_entries_autosave` (
  `entry_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `original_entry_id` int(10) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `channel_id` int(4) unsigned NOT NULL,
  `author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `pentry_id` int(10) NOT NULL DEFAULT '0',
  `forum_topic_id` int(10) unsigned DEFAULT NULL,
  `ip_address` varchar(45) NOT NULL,
  `title` varchar(100) NOT NULL,
  `url_title` varchar(75) NOT NULL,
  `status` varchar(50) NOT NULL,
  `versioning_enabled` char(1) NOT NULL DEFAULT 'n',
  `view_count_one` int(10) unsigned NOT NULL DEFAULT '0',
  `view_count_two` int(10) unsigned NOT NULL DEFAULT '0',
  `view_count_three` int(10) unsigned NOT NULL DEFAULT '0',
  `view_count_four` int(10) unsigned NOT NULL DEFAULT '0',
  `allow_comments` varchar(1) NOT NULL DEFAULT 'y',
  `sticky` varchar(1) NOT NULL DEFAULT 'n',
  `entry_date` int(10) NOT NULL,
  `dst_enabled` varchar(1) NOT NULL DEFAULT 'n',
  `year` char(4) NOT NULL,
  `month` char(2) NOT NULL,
  `day` char(3) NOT NULL,
  `expiration_date` int(10) NOT NULL DEFAULT '0',
  `comment_expiration_date` int(10) NOT NULL DEFAULT '0',
  `edit_date` bigint(14) DEFAULT NULL,
  `recent_comment_date` int(10) DEFAULT NULL,
  `comment_total` int(4) unsigned NOT NULL DEFAULT '0',
  `entry_data` text,
  PRIMARY KEY (`entry_id`),
  KEY `channel_id` (`channel_id`),
  KEY `author_id` (`author_id`),
  KEY `url_title` (`url_title`),
  KEY `status` (`status`),
  KEY `entry_date` (`entry_date`),
  KEY `expiration_date` (`expiration_date`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_channel_fields
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_channel_fields`;

CREATE TABLE `exp_channel_fields` (
  `field_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_id` int(4) unsigned NOT NULL,
  `field_name` varchar(32) NOT NULL,
  `field_label` varchar(50) NOT NULL,
  `field_instructions` text,
  `field_type` varchar(50) NOT NULL DEFAULT 'text',
  `field_list_items` text NOT NULL,
  `field_pre_populate` char(1) NOT NULL DEFAULT 'n',
  `field_pre_channel_id` int(6) unsigned DEFAULT NULL,
  `field_pre_field_id` int(6) unsigned DEFAULT NULL,
  `field_related_to` varchar(12) NOT NULL DEFAULT 'channel',
  `field_related_id` int(6) unsigned NOT NULL DEFAULT '0',
  `field_related_orderby` varchar(12) NOT NULL DEFAULT 'date',
  `field_related_sort` varchar(4) NOT NULL DEFAULT 'desc',
  `field_related_max` smallint(4) NOT NULL DEFAULT '0',
  `field_ta_rows` tinyint(2) DEFAULT '8',
  `field_maxl` smallint(3) DEFAULT NULL,
  `field_required` char(1) NOT NULL DEFAULT 'n',
  `field_text_direction` char(3) NOT NULL DEFAULT 'ltr',
  `field_search` char(1) NOT NULL DEFAULT 'n',
  `field_is_hidden` char(1) NOT NULL DEFAULT 'n',
  `field_fmt` varchar(40) NOT NULL DEFAULT 'xhtml',
  `field_show_fmt` char(1) NOT NULL DEFAULT 'y',
  `field_order` int(3) unsigned NOT NULL,
  `field_content_type` varchar(20) NOT NULL DEFAULT 'any',
  `field_settings` text,
  PRIMARY KEY (`field_id`),
  KEY `group_id` (`group_id`),
  KEY `field_type` (`field_type`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_channel_fields` WRITE;
/*!40000 ALTER TABLE `exp_channel_fields` DISABLE KEYS */;

INSERT INTO `exp_channel_fields` (`field_id`, `site_id`, `group_id`, `field_name`, `field_label`, `field_instructions`, `field_type`, `field_list_items`, `field_pre_populate`, `field_pre_channel_id`, `field_pre_field_id`, `field_related_to`, `field_related_id`, `field_related_orderby`, `field_related_sort`, `field_related_max`, `field_ta_rows`, `field_maxl`, `field_required`, `field_text_direction`, `field_search`, `field_is_hidden`, `field_fmt`, `field_show_fmt`, `field_order`, `field_content_type`, `field_settings`)
VALUES
	(1,1,1,'thepost','Comment ','','text','','0',0,0,'channel',3,'title','desc',0,6,200,'n','ltr','n','n','none','n',1,'any','YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
	(2,1,1,'status_owner','Status ID','','text','','0',0,0,'channel',1,'title','desc',0,6,128,'n','ltr','n','n','none','n',2,'any','YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6NzoibnVtZXJpYyI7czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9'),
	(4,1,2,'status_owner_id','Status Owner ID','','text','','0',0,0,'channel',1,'title','desc',0,6,128,'n','ltr','n','n','none','n',2,'any','YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6NzoibnVtZXJpYyI7czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9'),
	(5,1,2,'question','Question','','text','','0',0,0,'channel',1,'title','desc',0,6,5,'n','ltr','n','n','none','n',3,'any','YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6NzoibnVtZXJpYyI7czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9'),
	(10,1,2,'media_video','Media Video','','text','','0',0,0,'channel',2,'title','desc',0,6,128,'n','ltr','n','n','none','n',5,'any','YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
	(9,1,2,'media_audio','Media Audio','','text','','0',0,0,'channel',2,'title','desc',0,6,128,'n','ltr','n','n','none','y',4,'any','YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
	(8,1,2,'media_images','Media Images','','text','','0',0,0,'channel',2,'title','desc',0,6,128,'n','ltr','n','n','none','y',3,'any','YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
	(11,1,3,'description','Description','','textarea','','0',0,0,'channel',2,'title','desc',0,6,128,'n','ltr','n','n','none','n',1,'any','YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
	(12,1,3,'link','Link Url','','text','','0',0,0,'channel',2,'title','desc',0,6,128,'n','ltr','n','n','none','n',2,'any','YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
	(13,1,1,'comment_author','Comment Author','','text','','0',0,0,'channel',3,'title','desc',0,6,128,'n','ltr','n','n','none','n',3,'any','YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6NzoibnVtZXJpYyI7czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9'),
	(14,1,1,'status_id_owner','Status ID Owner','','text','','0',0,0,'channel',3,'title','desc',0,6,128,'n','ltr','n','n','none','n',4,'any','YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6NzoibnVtZXJpYyI7czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9');

/*!40000 ALTER TABLE `exp_channel_fields` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_channel_member_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_channel_member_groups`;

CREATE TABLE `exp_channel_member_groups` (
  `group_id` smallint(4) unsigned NOT NULL,
  `channel_id` int(6) unsigned NOT NULL,
  PRIMARY KEY (`group_id`,`channel_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_channel_member_groups` WRITE;
/*!40000 ALTER TABLE `exp_channel_member_groups` DISABLE KEYS */;

INSERT INTO `exp_channel_member_groups` (`group_id`, `channel_id`)
VALUES
	(5,1);

/*!40000 ALTER TABLE `exp_channel_member_groups` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_channel_titles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_channel_titles`;

CREATE TABLE `exp_channel_titles` (
  `entry_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `channel_id` int(4) unsigned NOT NULL,
  `author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `pentry_id` int(10) NOT NULL DEFAULT '0',
  `forum_topic_id` int(10) unsigned DEFAULT NULL,
  `ip_address` varchar(45) NOT NULL,
  `title` varchar(100) NOT NULL,
  `url_title` varchar(75) NOT NULL,
  `status` varchar(50) NOT NULL,
  `versioning_enabled` char(1) NOT NULL DEFAULT 'n',
  `view_count_one` int(10) unsigned NOT NULL DEFAULT '0',
  `view_count_two` int(10) unsigned NOT NULL DEFAULT '0',
  `view_count_three` int(10) unsigned NOT NULL DEFAULT '0',
  `view_count_four` int(10) unsigned NOT NULL DEFAULT '0',
  `allow_comments` varchar(1) NOT NULL DEFAULT 'y',
  `sticky` varchar(1) NOT NULL DEFAULT 'n',
  `entry_date` int(10) NOT NULL,
  `dst_enabled` varchar(1) NOT NULL DEFAULT 'n',
  `year` char(4) NOT NULL,
  `month` char(2) NOT NULL,
  `day` char(3) NOT NULL,
  `expiration_date` int(10) NOT NULL DEFAULT '0',
  `comment_expiration_date` int(10) NOT NULL DEFAULT '0',
  `edit_date` bigint(14) DEFAULT NULL,
  `recent_comment_date` int(10) DEFAULT NULL,
  `comment_total` int(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry_id`),
  KEY `channel_id` (`channel_id`),
  KEY `author_id` (`author_id`),
  KEY `url_title` (`url_title`),
  KEY `status` (`status`),
  KEY `entry_date` (`entry_date`),
  KEY `expiration_date` (`expiration_date`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_channel_titles` WRITE;
/*!40000 ALTER TABLE `exp_channel_titles` DISABLE KEYS */;

INSERT INTO `exp_channel_titles` (`entry_id`, `site_id`, `channel_id`, `author_id`, `pentry_id`, `forum_topic_id`, `ip_address`, `title`, `url_title`, `status`, `versioning_enabled`, `view_count_one`, `view_count_two`, `view_count_three`, `view_count_four`, `allow_comments`, `sticky`, `entry_date`, `dst_enabled`, `year`, `month`, `day`, `expiration_date`, `comment_expiration_date`, `edit_date`, `recent_comment_date`, `comment_total`)
VALUES
	(1,1,1,1,0,NULL,'160.39.4.177','a wall post','a-wall-post','open','y',0,0,0,0,'n','n',1364934717,'n','2013','04','02',0,0,20130402153157,0,0),
	(2,1,1,1,0,NULL,'160.39.4.177','a wall post','a-wall-post1','open','y',0,0,0,0,'n','n',1364936199,'n','2013','04','02',0,0,20130402155639,0,0),
	(3,1,1,1,0,NULL,'160.39.4.177','a wall post','a-wall-post2','open','y',0,0,0,0,'y','n',1364938651,'n','2013','04','02',0,0,20130402163731,0,0),
	(4,1,1,1,0,NULL,'50.75.232.238','a wall post','a-wall-post3','open','y',0,0,0,0,'y','n',1365004032,'n','2013','04','03',0,0,20130403104712,0,0),
	(5,1,1,7,0,NULL,'127.0.0.1','a wall post','a-wall-post4','open','y',0,0,0,0,'n','n',1365004130,'n','2013','04','03',0,0,20130406153851,0,0),
	(6,1,1,1,0,NULL,'50.75.232.238','a wall post','a-wall-post5','open','y',0,0,0,0,'y','n',1365004727,'n','2013','04','03',0,0,20130403105847,0,0),
	(7,1,1,1,0,NULL,'216.55.3.234','a wall post','a-wall-post6','open','y',0,0,0,0,'y','n',1365004894,'n','2013','04','03',0,0,20130403110134,0,0),
	(8,1,1,1,0,NULL,'50.75.232.238','a wall post','a-wall-post7','open','y',0,0,0,0,'y','n',1365008158,'n','2013','04','03',0,0,20130403115558,0,0),
	(9,1,1,1,0,NULL,'127.0.0.1','a wall post','a-wall-post8','open','y',0,0,0,0,'y','n',1365038908,'n','2013','04','03',0,0,20130403202828,0,0),
	(10,1,1,1,0,NULL,'127.0.0.1','a wall post','a-wall-post9','open','y',0,0,0,0,'y','n',1365038960,'n','2013','04','03',0,0,20130403202920,0,0),
	(11,1,1,1,0,NULL,'127.0.0.1','a wall post','a-wall-post10','open','y',0,0,0,0,'y','n',1365094011,'n','2013','04','04',0,0,20130404114651,0,0),
	(12,1,1,1,0,NULL,'127.0.0.1','a wall post','a-wall-post11','open','y',0,0,0,0,'y','n',1365094295,'n','2013','04','04',0,0,20130404115135,0,0),
	(13,1,1,1,0,NULL,'127.0.0.1','a wall post','a-wall-post12','open','y',0,0,0,0,'y','n',1365094282,'n','2013','04','04',0,0,20130404115122,0,0),
	(14,1,1,1,0,NULL,'127.0.0.1','a wall post','a-wall-post13','open','y',0,0,0,0,'y','n',1365094539,'n','2013','04','04',0,0,20130404115539,0,0),
	(15,1,1,1,0,NULL,'127.0.0.1','a wall post','a-wall-post14','open','y',0,0,0,0,'y','n',1365094566,'n','2013','04','04',0,0,20130404115606,0,0),
	(16,1,1,1,0,NULL,'127.0.0.1','a wall post','a-wall-post15','open','y',0,0,0,0,'y','n',1365094827,'n','2013','04','04',0,0,20130404120027,0,0),
	(17,1,1,1,0,NULL,'127.0.0.1','a wall post','a-wall-post16','open','y',0,0,0,0,'y','n',1365094858,'n','2013','04','04',0,0,20130404120058,0,0),
	(18,1,1,1,0,NULL,'127.0.0.1','a wall post','a-wall-post17','open','y',0,0,0,0,'y','n',1365094908,'n','2013','04','04',0,0,20130404120148,0,0),
	(19,1,1,1,0,NULL,'127.0.0.1','a wall post','a-wall-post18','open','y',0,0,0,0,'y','n',1365094950,'n','2013','04','04',0,0,20130404120230,0,0),
	(20,1,1,1,0,NULL,'127.0.0.1','a wall post','a-wall-post19','open','y',0,0,0,0,'y','n',1365095056,'n','2013','04','04',0,0,20130404120416,0,0),
	(21,1,1,1,0,NULL,'127.0.0.1','a wall post','a-wall-post20','open','y',0,0,0,0,'y','n',1365101251,'n','2013','04','04',0,0,20130404134731,0,0),
	(60,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements12','open','y',0,0,0,0,'n','n',1365459038,'n','2013','04','08',0,0,20130408171038,0,0),
	(23,1,1,1,0,NULL,'127.0.0.1','a wall post','a-wall-post21','open','y',0,0,0,0,'y','n',1365105276,'n','2013','04','04',0,0,20130404145436,0,0),
	(59,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements11','open','y',0,0,0,0,'y','n',1365351021,'n','2013','04','07',0,0,20130407111021,0,0),
	(58,1,1,1,0,NULL,'127.0.0.1','a wall post','a-wall-post25','open','y',0,0,0,0,'y','n',1365265232,'n','2013','04','06',0,0,20130406112032,0,0),
	(57,1,1,1,0,NULL,'127.0.0.1','a wall post','a-wall-post24','open','y',0,0,0,0,'y','n',1365262863,'n','2013','04','06',0,0,20130406104103,0,0),
	(56,1,1,1,0,NULL,'127.0.0.1','a wall post','a-wall-post23','open','y',0,0,0,0,'y','n',1365261619,'n','2013','04','06',0,0,20130406102019,0,0),
	(55,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements10','open','y',0,0,0,0,'y','n',1365261541,'n','2013','04','06',0,0,20130406101901,0,0),
	(54,1,3,1,0,NULL,'127.0.0.1','Welcome to the Network','welcome-to-the-network','open','y',0,0,0,0,'n','n',1365261262,'n','2013','04','06',0,0,20130406101422,0,0),
	(53,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements9','open','y',0,0,0,0,'y','n',1365176377,'n','2013','04','05',0,0,20130405103937,0,0),
	(52,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements8','open','y',0,0,0,0,'y','n',1365175621,'n','2013','04','05',0,0,20130405102701,0,0),
	(51,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements7','open','y',0,0,0,0,'y','n',1365175598,'n','2013','04','05',0,0,20130405102638,0,0),
	(50,1,1,1,0,NULL,'127.0.0.1','a wall post','a-wall-post22','open','y',0,0,0,0,'y','n',1365174648,'n','2013','04','05',0,0,20130405101048,0,0),
	(49,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements6','open','y',0,0,0,0,'y','n',1365173384,'n','2013','04','05',0,0,20130405094944,0,0),
	(48,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements5','open','y',0,0,0,0,'y','n',1365173208,'n','2013','04','05',0,0,20130405094648,0,0),
	(47,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements4','open','y',0,0,0,0,'y','n',1365173114,'n','2013','04','05',0,0,20130405094514,0,0),
	(46,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements3','open','y',0,0,0,0,'y','n',1365172050,'n','2013','04','05',0,0,20130405092730,0,0),
	(45,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements2','open','y',0,0,0,0,'y','n',1365171060,'n','2013','04','05',0,0,20130405091100,0,0),
	(44,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements1','open','y',0,0,0,0,'y','n',1365114572,'n','2013','04','04',0,0,20130404172932,0,0),
	(43,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements','open','y',0,0,0,0,'y','n',1365114467,'n','2013','04','04',0,0,20130404172747,0,0),
	(61,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements13','open','y',0,0,0,0,'n','n',1365459086,'n','2013','04','08',0,0,20130408171126,0,0),
	(62,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements14','open','y',0,0,0,0,'n','n',1365459166,'n','2013','04','08',0,0,20130408221447,0,0),
	(63,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements15','open','y',0,0,0,0,'n','n',1365463726,'n','2013','04','08',0,0,20130408182846,0,0),
	(64,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements16','open','y',0,0,0,0,'n','n',1365464041,'n','2013','04','08',0,0,20130408183401,0,0),
	(65,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements17','open','y',0,0,0,0,'n','n',1365464055,'n','2013','04','08',0,0,20130408183415,0,0),
	(66,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements18','open','y',0,0,0,0,'n','n',1365464201,'n','2013','04','08',0,0,20130408183641,0,0),
	(67,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements19','open','y',0,0,0,0,'n','n',1365464347,'n','2013','04','08',0,0,20130408183907,0,0),
	(68,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements20','open','y',0,0,0,0,'n','n',1365464359,'n','2013','04','08',0,0,20130408183919,0,0),
	(69,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements21','open','y',0,0,0,0,'n','n',1365464431,'n','2013','04','08',0,0,20130408184031,0,0),
	(70,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements22','open','y',0,0,0,0,'n','n',1365464449,'n','2013','04','08',0,0,20130408184049,0,0),
	(71,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements23','open','y',0,0,0,0,'n','n',1365465833,'n','2013','04','08',0,0,20130408190353,0,0),
	(72,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements24','open','y',0,0,0,0,'n','n',1365465846,'n','2013','04','08',0,0,20130408190406,0,0),
	(73,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements25','open','y',0,0,0,0,'n','n',1365466176,'n','2013','04','08',0,0,20130408190936,0,0),
	(74,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements26','open','y',0,0,0,0,'n','n',1365466211,'n','2013','04','08',0,0,20130408191011,0,0),
	(75,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements27','open','y',0,0,0,0,'n','n',1365466268,'n','2013','04','08',0,0,20130408191108,0,0),
	(76,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements28','open','y',0,0,0,0,'n','n',1365466293,'n','2013','04','08',0,0,20130408191133,0,0),
	(77,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements29','open','y',0,0,0,0,'n','n',1365466312,'n','2013','04','08',0,0,20130408191152,0,0),
	(78,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements30','open','y',0,0,0,0,'n','n',1365466320,'n','2013','04','08',0,0,20130408191200,0,0),
	(79,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements31','open','y',0,0,0,0,'n','n',1365466371,'n','2013','04','08',0,0,20130408191251,0,0),
	(80,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements32','open','y',0,0,0,0,'n','n',1365466882,'n','2013','04','08',0,0,20130408192122,0,0),
	(81,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements33','open','y',0,0,0,0,'n','n',1365468637,'n','2013','04','08',0,0,20130408195037,0,0),
	(82,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements34','open','y',0,0,0,0,'n','n',1365468654,'n','2013','04','08',0,0,20130408195054,0,0),
	(83,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements35','open','y',0,0,0,0,'n','n',1365468861,'n','2013','04','08',0,0,20130408195421,0,0),
	(84,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements36','open','y',0,0,0,0,'n','n',1365468884,'n','2013','04','08',0,0,20130408195444,0,0),
	(85,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements37','open','y',0,0,0,0,'n','n',1365469152,'n','2013','04','08',0,0,20130408195912,0,0),
	(86,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements38','open','y',0,0,0,0,'n','n',1365469162,'n','2013','04','08',0,0,20130408195922,0,0),
	(87,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements39','open','y',0,0,0,0,'n','n',1365469267,'n','2013','04','08',0,0,20130408200107,0,0),
	(88,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements40','open','y',0,0,0,0,'n','n',1365469289,'n','2013','04','08',0,0,20130408200129,0,0),
	(89,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements41','open','y',0,0,0,0,'n','n',1365469442,'n','2013','04','08',0,0,20130408200402,0,0),
	(90,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements42','open','y',0,0,0,0,'n','n',1365469472,'n','2013','04','08',0,0,20130408200432,0,0),
	(91,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements43','open','y',0,0,0,0,'n','n',1365469641,'n','2013','04','08',0,0,20130408200721,0,0),
	(92,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements44','open','y',0,0,0,0,'n','n',1365469793,'n','2013','04','08',0,0,20130408200953,0,0),
	(93,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements45','open','y',0,0,0,0,'n','n',1365469836,'n','2013','04','08',0,0,20130408201036,0,0),
	(94,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements46','open','y',0,0,0,0,'n','n',1365469875,'n','2013','04','08',0,0,20130408201115,0,0),
	(95,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements47','open','y',0,0,0,0,'n','n',1365469917,'n','2013','04','08',0,0,20130408201157,0,0),
	(96,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements48','open','y',0,0,0,0,'n','n',1365469919,'n','2013','04','08',0,0,20130408201159,0,0),
	(97,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements49','open','y',0,0,0,0,'n','n',1365469919,'n','2013','04','08',0,0,20130408201159,0,0),
	(98,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements50','open','y',0,0,0,0,'n','n',1365469942,'n','2013','04','08',0,0,20130408201222,0,0),
	(99,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements51','open','y',0,0,0,0,'n','n',1365469956,'n','2013','04','08',0,0,20130408201236,0,0),
	(100,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements52','open','y',0,0,0,0,'n','n',1365469972,'n','2013','04','08',0,0,20130408201252,0,0),
	(101,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements53','open','y',0,0,0,0,'n','n',1365470007,'n','2013','04','08',0,0,20130408201327,0,0),
	(102,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements54','open','y',0,0,0,0,'n','n',1365470074,'n','2013','04','08',0,0,20130408201434,0,0),
	(103,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements55','open','y',0,0,0,0,'n','n',1365470090,'n','2013','04','08',0,0,20130408201450,0,0),
	(104,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements56','open','y',0,0,0,0,'n','n',1365470132,'n','2013','04','08',0,0,20130408201532,0,0),
	(105,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements57','open','y',0,0,0,0,'n','n',1365470147,'n','2013','04','08',0,0,20130408201547,0,0),
	(106,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements58','open','y',0,0,0,0,'n','n',1365470157,'n','2013','04','08',0,0,20130408201557,0,0),
	(107,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements59','open','y',0,0,0,0,'n','n',1365470180,'n','2013','04','08',0,0,20130408201620,0,0),
	(108,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements60','open','y',0,0,0,0,'n','n',1365470200,'n','2013','04','08',0,0,20130408201640,0,0),
	(109,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements61','open','y',0,0,0,0,'n','n',1365470223,'n','2013','04','08',0,0,20130408201703,0,0),
	(110,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements62','open','y',0,0,0,0,'n','n',1365470364,'n','2013','04','08',0,0,20130408201924,0,0),
	(111,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements63','open','y',0,0,0,0,'n','n',1365470429,'n','2013','04','08',0,0,20130408202029,0,0),
	(112,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements64','open','y',0,0,0,0,'n','n',1365470473,'n','2013','04','08',0,0,20130408202113,0,0),
	(113,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements65','open','y',0,0,0,0,'n','n',1365470480,'n','2013','04','08',0,0,20130408202120,0,0),
	(114,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements66','open','y',0,0,0,0,'n','n',1365470501,'n','2013','04','08',0,0,20130408202141,0,0),
	(115,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements67','open','y',0,0,0,0,'n','n',1365470549,'n','2013','04','08',0,0,20130408202229,0,0),
	(116,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements68','open','y',0,0,0,0,'n','n',1365470735,'n','2013','04','08',0,0,20130408202535,0,0),
	(117,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements69','open','y',0,0,0,0,'n','n',1365470759,'n','2013','04','08',0,0,20130408202559,0,0),
	(118,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements70','open','y',0,0,0,0,'n','n',1365470761,'n','2013','04','08',0,0,20130408202601,0,0),
	(119,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements71','open','y',0,0,0,0,'n','n',1365470777,'n','2013','04','08',0,0,20130408202617,0,0),
	(120,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements72','open','y',0,0,0,0,'n','n',1365470797,'n','2013','04','08',0,0,20130408202637,0,0),
	(121,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements73','open','y',0,0,0,0,'n','n',1365470811,'n','2013','04','08',0,0,20130408202651,0,0),
	(122,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements74','open','y',0,0,0,0,'n','n',1365470820,'n','2013','04','08',0,0,20130408202700,0,0),
	(123,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements75','open','y',0,0,0,0,'n','n',1365470933,'n','2013','04','08',0,0,20130408202853,0,0),
	(124,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements76','open','y',0,0,0,0,'n','n',1365470947,'n','2013','04','08',0,0,20130408202907,0,0),
	(125,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements77','open','y',0,0,0,0,'n','n',1365470976,'n','2013','04','08',0,0,20130408202936,0,0),
	(126,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements78','open','y',0,0,0,0,'n','n',1365471055,'n','2013','04','08',0,0,20130408203055,0,0),
	(127,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements79','open','y',0,0,0,0,'n','n',1365471111,'n','2013','04','08',0,0,20130408203151,0,0),
	(128,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements80','open','y',0,0,0,0,'n','n',1365471215,'n','2013','04','08',0,0,20130408203335,0,0),
	(129,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements81','open','y',0,0,0,0,'n','n',1365471226,'n','2013','04','08',0,0,20130408203346,0,0),
	(130,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements82','open','y',0,0,0,0,'n','n',1365471274,'n','2013','04','08',0,0,20130408203434,0,0),
	(131,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements83','open','y',0,0,0,0,'n','n',1365471306,'n','2013','04','08',0,0,20130408203506,0,0),
	(132,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements84','open','y',0,0,0,0,'n','n',1365471342,'n','2013','04','08',0,0,20130408203542,0,0),
	(133,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements85','open','y',0,0,0,0,'n','n',1365471358,'n','2013','04','08',0,0,20130408203558,0,0),
	(134,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements86','open','y',0,0,0,0,'n','n',1365471385,'n','2013','04','08',0,0,20130408203625,0,0),
	(135,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements87','open','y',0,0,0,0,'n','n',1365471424,'n','2013','04','08',0,0,20130408203704,0,0),
	(136,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements88','open','y',0,0,0,0,'n','n',1365471501,'n','2013','04','08',0,0,20130408203821,0,0),
	(137,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements89','open','y',0,0,0,0,'n','n',1365471532,'n','2013','04','08',0,0,20130408203852,0,0),
	(138,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements90','open','y',0,0,0,0,'n','n',1365471750,'n','2013','04','08',0,0,20130408204230,0,0),
	(139,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements91','open','y',0,0,0,0,'n','n',1365472141,'n','2013','04','08',0,0,20130408204901,0,0),
	(140,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements92','open','y',0,0,0,0,'n','n',1365472250,'n','2013','04','08',0,0,20130409021551,0,0),
	(141,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements93','open','y',0,0,0,0,'n','n',1365473977,'n','2013','04','08',0,0,20130408211937,0,0),
	(142,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements94','open','y',0,0,0,0,'n','n',1365474328,'n','2013','04','08',0,0,20130408212528,0,0),
	(143,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements95','open','y',0,0,0,0,'n','n',1365474329,'n','2013','04','08',0,0,20130408212529,0,0),
	(144,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements96','open','y',0,0,0,0,'n','n',1365474359,'n','2013','04','08',0,0,20130408212559,0,0),
	(145,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements97','open','y',0,0,0,0,'n','n',1365474384,'n','2013','04','08',0,0,20130408212624,0,0),
	(146,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements98','open','y',0,0,0,0,'n','n',1365474412,'n','2013','04','08',0,0,20130408212652,0,0),
	(147,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements99','open','y',0,0,0,0,'n','n',1365474414,'n','2013','04','08',0,0,20130408212654,0,0),
	(148,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements100','open','y',0,0,0,0,'n','n',1365474435,'n','2013','04','08',0,0,20130408212715,0,0),
	(149,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements101','open','y',0,0,0,0,'n','n',1365474548,'n','2013','04','08',0,0,20130408212908,0,0),
	(150,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements102','open','y',0,0,0,0,'n','n',1365474652,'n','2013','04','08',0,0,20130408213052,0,0),
	(151,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements103','open','y',0,0,0,0,'n','n',1365474779,'n','2013','04','08',0,0,20130408213259,0,0),
	(152,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements104','open','y',0,0,0,0,'n','n',1365474867,'n','2013','04','08',0,0,20130408213427,0,0),
	(153,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements105','open','y',0,0,0,0,'n','n',1365474961,'n','2013','04','08',0,0,20130408213601,0,0),
	(154,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements106','open','y',0,0,0,0,'n','n',1365475004,'n','2013','04','08',0,0,20130408213644,0,0),
	(155,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements107','open','y',0,0,0,0,'n','n',1365475181,'n','2013','04','08',0,0,20130408213941,0,0),
	(156,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements108','open','y',0,0,0,0,'n','n',1365475279,'n','2013','04','08',0,0,20130408214119,0,0),
	(157,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements109','open','y',0,0,0,0,'n','n',1365475485,'n','2013','04','08',0,0,20130408214445,0,0),
	(158,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements110','open','y',0,0,0,0,'n','n',1365523098,'n','2013','04','09',0,0,20130409105818,0,0),
	(159,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements111','open','y',0,0,0,0,'n','n',1365525058,'n','2013','04','09',0,0,20130409113058,0,0),
	(160,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements112','open','y',0,0,0,0,'n','n',1365525099,'n','2013','04','09',0,0,20130409113139,0,0),
	(161,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements113','open','y',0,0,0,0,'n','n',1365525139,'n','2013','04','09',0,0,20130409113219,0,0),
	(162,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements114','open','y',0,0,0,0,'n','n',1365526584,'n','2013','04','09',0,0,20130409115624,0,0),
	(163,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements115','open','y',0,0,0,0,'n','n',1365529529,'n','2013','04','09',0,0,20130409124529,0,0),
	(164,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements116','open','y',0,0,0,0,'n','n',1365529567,'n','2013','04','09',0,0,20130409124607,0,0),
	(165,1,2,1,0,NULL,'127.0.0.1','Status Media Elements','status-media-elements117','open','y',0,0,0,0,'n','n',1365529751,'n','2013','04','09',0,0,20130409124911,0,0),
	(166,1,1,1,0,NULL,'127.0.0.1','a wall post','a-wall-post26','open','y',0,0,0,0,'y','n',1365536446,'n','2013','04','09',0,0,20130409144046,0,0);

/*!40000 ALTER TABLE `exp_channel_titles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_channels
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_channels`;

CREATE TABLE `exp_channels` (
  `channel_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `channel_name` varchar(40) NOT NULL,
  `channel_title` varchar(100) NOT NULL,
  `channel_url` varchar(100) NOT NULL,
  `channel_description` varchar(225) DEFAULT NULL,
  `channel_lang` varchar(12) NOT NULL,
  `total_entries` mediumint(8) NOT NULL DEFAULT '0',
  `total_comments` mediumint(8) NOT NULL DEFAULT '0',
  `last_entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_comment_date` int(10) unsigned NOT NULL DEFAULT '0',
  `cat_group` varchar(255) DEFAULT NULL,
  `status_group` int(4) unsigned DEFAULT NULL,
  `deft_status` varchar(50) NOT NULL DEFAULT 'open',
  `field_group` int(4) unsigned DEFAULT NULL,
  `search_excerpt` int(4) unsigned DEFAULT NULL,
  `deft_category` varchar(60) DEFAULT NULL,
  `deft_comments` char(1) NOT NULL DEFAULT 'y',
  `channel_require_membership` char(1) NOT NULL DEFAULT 'y',
  `channel_max_chars` int(5) unsigned DEFAULT NULL,
  `channel_html_formatting` char(4) NOT NULL DEFAULT 'all',
  `channel_allow_img_urls` char(1) NOT NULL DEFAULT 'y',
  `channel_auto_link_urls` char(1) NOT NULL DEFAULT 'n',
  `channel_notify` char(1) NOT NULL DEFAULT 'n',
  `channel_notify_emails` varchar(255) DEFAULT NULL,
  `comment_url` varchar(80) DEFAULT NULL,
  `comment_system_enabled` char(1) NOT NULL DEFAULT 'y',
  `comment_require_membership` char(1) NOT NULL DEFAULT 'n',
  `comment_use_captcha` char(1) NOT NULL DEFAULT 'n',
  `comment_moderate` char(1) NOT NULL DEFAULT 'n',
  `comment_max_chars` int(5) unsigned DEFAULT '5000',
  `comment_timelock` int(5) unsigned NOT NULL DEFAULT '0',
  `comment_require_email` char(1) NOT NULL DEFAULT 'y',
  `comment_text_formatting` char(5) NOT NULL DEFAULT 'xhtml',
  `comment_html_formatting` char(4) NOT NULL DEFAULT 'safe',
  `comment_allow_img_urls` char(1) NOT NULL DEFAULT 'n',
  `comment_auto_link_urls` char(1) NOT NULL DEFAULT 'y',
  `comment_notify` char(1) NOT NULL DEFAULT 'n',
  `comment_notify_authors` char(1) NOT NULL DEFAULT 'n',
  `comment_notify_emails` varchar(255) DEFAULT NULL,
  `comment_expiration` int(4) unsigned NOT NULL DEFAULT '0',
  `search_results_url` varchar(80) DEFAULT NULL,
  `ping_return_url` varchar(80) DEFAULT NULL,
  `show_button_cluster` char(1) NOT NULL DEFAULT 'y',
  `rss_url` varchar(80) DEFAULT NULL,
  `enable_versioning` char(1) NOT NULL DEFAULT 'n',
  `max_revisions` smallint(4) unsigned NOT NULL DEFAULT '10',
  `default_entry_title` varchar(100) DEFAULT NULL,
  `url_title_prefix` varchar(80) DEFAULT NULL,
  `live_look_template` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`channel_id`),
  KEY `cat_group` (`cat_group`),
  KEY `status_group` (`status_group`),
  KEY `field_group` (`field_group`),
  KEY `channel_name` (`channel_name`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_channels` WRITE;
/*!40000 ALTER TABLE `exp_channels` DISABLE KEYS */;

INSERT INTO `exp_channels` (`channel_id`, `site_id`, `channel_name`, `channel_title`, `channel_url`, `channel_description`, `channel_lang`, `total_entries`, `total_comments`, `last_entry_date`, `last_comment_date`, `cat_group`, `status_group`, `deft_status`, `field_group`, `search_excerpt`, `deft_category`, `deft_comments`, `channel_require_membership`, `channel_max_chars`, `channel_html_formatting`, `channel_allow_img_urls`, `channel_auto_link_urls`, `channel_notify`, `channel_notify_emails`, `comment_url`, `comment_system_enabled`, `comment_require_membership`, `comment_use_captcha`, `comment_moderate`, `comment_max_chars`, `comment_timelock`, `comment_require_email`, `comment_text_formatting`, `comment_html_formatting`, `comment_allow_img_urls`, `comment_auto_link_urls`, `comment_notify`, `comment_notify_authors`, `comment_notify_emails`, `comment_expiration`, `search_results_url`, `ping_return_url`, `show_button_cluster`, `rss_url`, `enable_versioning`, `max_revisions`, `default_entry_title`, `url_title_prefix`, `live_look_template`)
VALUES
	(1,1,'wall_posts','Wall Posts','https://shanghai.nyu.edu/2017introductions/',NULL,'en',27,0,1365536446,0,'',1,'open',1,NULL,NULL,'y','y',NULL,'all','y','n','n',NULL,NULL,'y','n','n','n',5000,0,'y','xhtml','safe','n','y','n','n',NULL,0,NULL,NULL,'y',NULL,'n',10,'','',0),
	(2,1,'media','Media','http://localhost:8888/introductions/index.php?',NULL,'en',117,0,1365529567,0,'',1,'open',2,NULL,NULL,'y','y',NULL,'all','y','n','n',NULL,NULL,'y','n','n','n',5000,0,'y','xhtml','safe','n','y','n','n',NULL,0,NULL,NULL,'y',NULL,'n',10,'','',0),
	(3,1,'actions','Actions','http://localhost:8888/introductions/index.php?',NULL,'en',1,0,1365261262,0,'',1,'open',3,NULL,NULL,'y','y',NULL,'all','y','n','n',NULL,NULL,'y','n','n','n',5000,0,'y','xhtml','safe','n','y','n','n',NULL,0,NULL,NULL,'y',NULL,'n',10,'','',0);

/*!40000 ALTER TABLE `exp_channels` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_cp_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_cp_log`;

CREATE TABLE `exp_cp_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `member_id` int(10) unsigned NOT NULL,
  `username` varchar(32) NOT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `act_date` int(10) NOT NULL,
  `action` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_cp_log` WRITE;
/*!40000 ALTER TABLE `exp_cp_log` DISABLE KEYS */;

INSERT INTO `exp_cp_log` (`id`, `site_id`, `member_id`, `username`, `ip_address`, `act_date`, `action`)
VALUES
	(1,1,1,'hmarin','160.39.4.177',1363193341,'Logged in'),
	(2,1,1,'hmarin','160.39.4.177',1363195695,'Logged in'),
	(3,1,1,'hmarin','160.39.4.177',1363205755,'Logged in'),
	(4,1,1,'hmarin','160.39.4.177',1363206015,'Logged in'),
	(5,1,1,'hmarin','160.39.4.177',1363206017,'Logged in'),
	(6,1,1,'hmarin','160.39.4.177',1363208608,'Logged out'),
	(7,1,1,'hmarin','160.39.4.177',1363208613,'Logged in'),
	(8,1,1,'hmarin','160.39.4.177',1363209042,'Logged out'),
	(9,1,1,'hmarin','160.39.4.177',1363209048,'Logged in'),
	(10,1,1,'hmarin','160.39.4.177',1363211048,'Logged out'),
	(11,1,1,'hmarin','160.39.4.177',1363211056,'Logged in'),
	(12,1,1,'hmarin','160.39.4.177',1363215654,'Logged out'),
	(13,1,1,'hmarin','199.106.164.41',1363445203,'Logged in'),
	(14,1,1,'hmarin','199.106.164.41',1363446386,'Logged in'),
	(15,1,1,'hmarin','199.106.164.41',1363446431,'Logged out'),
	(16,1,1,'hmarin','199.106.164.41',1363446438,'Logged in'),
	(17,1,1,'hmarin','199.106.164.41',1363447724,'Logged out'),
	(18,1,1,'hmarin','199.106.164.41',1363447731,'Logged in'),
	(19,1,1,'hmarin','187.191.13.19',1363625860,'Logged in'),
	(20,1,1,'hmarin','187.191.13.19',1363628888,'Logged in'),
	(21,1,1,'hmarin','187.191.13.19',1363628944,'Member profile created:&nbsp;&nbsp;bwhitton'),
	(22,1,1,'hmarin','189.190.203.22',1363928779,'Logged in'),
	(23,1,1,'hmarin','189.190.203.22',1363928811,'Logged out'),
	(24,1,1,'hmarin','189.190.203.22',1363928830,'Logged in'),
	(25,1,1,'hmarin','189.190.203.22',1363928951,'Logged in'),
	(26,1,1,'hmarin','189.190.203.22',1363928963,'Logged in'),
	(27,1,1,'hmarin','189.190.203.22',1363960674,'Logged in'),
	(28,1,1,'hmarin','189.190.203.22',1363962170,'Logged in'),
	(29,1,1,'hmarin','189.190.203.22',1363962722,'Logged in'),
	(30,1,1,'hmarin','189.190.203.22',1363965470,'Logged in'),
	(31,1,1,'hmarin','189.190.203.22',1363965507,'Logged in'),
	(32,1,1,'hmarin','189.190.203.22',1363965546,'Logged in'),
	(33,1,1,'hmarin','189.190.203.22',1363965626,'Logged in'),
	(34,1,1,'hmarin','189.190.203.22',1363965664,'Logged in'),
	(35,1,1,'hmarin','189.190.203.22',1363965817,'Logged in'),
	(36,1,1,'hmarin','189.190.203.22',1363968789,'Member profile created:&nbsp;&nbsp;chris.muro'),
	(37,1,8,'chris.muro','71.237.169.81',1363968851,'Logged in'),
	(38,1,1,'hmarin','160.39.4.177',1364499974,'Logged in'),
	(39,1,1,'hmarin','160.39.4.177',1364501740,'Logged in'),
	(40,1,1,'hmarin','160.39.4.177',1364505324,'Logged in'),
	(41,1,1,'hmarin','160.39.4.177',1364508080,'Logged in'),
	(42,1,1,'hmarin','160.39.4.177',1364511054,'Logged out'),
	(43,1,1,'hmarin','160.39.4.177',1364511059,'Logged in'),
	(44,1,1,'hmarin','70.192.86.54',1364565291,'Logged in'),
	(45,1,1,'hmarin','50.75.232.238',1364566384,'Logged in'),
	(46,1,8,'chris.muro','71.237.169.81',1364591843,'Logged in'),
	(47,1,1,'hmarin','160.39.4.177',1364597985,'Logged in'),
	(48,1,1,'hmarin','160.39.4.177',1364598751,'Member profile created:&nbsp;&nbsp;nicolas'),
	(49,1,8,'chris.muro','71.237.169.81',1364603500,'Logged in'),
	(50,1,8,'chris.muro','71.237.169.81',1364603579,'Logged out'),
	(51,1,1,'hmarin','160.39.4.177',1364657852,'Logged in'),
	(52,1,1,'hmarin','160.39.4.177',1364660256,'Logged in'),
	(53,1,1,'hmarin','160.39.4.177',1364662482,'Logged in'),
	(54,1,1,'hmarin','160.39.4.177',1364663020,'Logged in'),
	(55,1,1,'hmarin','160.39.4.177',1364663021,'Logged in'),
	(56,1,1,'hmarin','160.39.4.177',1364663094,'Logged in'),
	(57,1,1,'hmarin','160.39.4.177',1364665492,'Logged out'),
	(58,1,1,'hmarin','160.39.4.177',1364665502,'Logged in'),
	(59,1,1,'hmarin','160.39.4.177',1364669842,'Logged out'),
	(60,1,1,'hmarin','160.39.4.177',1364669848,'Logged in'),
	(61,1,1,'hmarin','160.39.4.177',1364674603,'Logged out'),
	(62,1,1,'hmarin','160.39.4.177',1364674608,'Logged in'),
	(63,1,1,'hmarin','160.39.4.177',1364678574,'Logged in'),
	(64,1,1,'hmarin','160.39.4.177',1364679489,'Logged out'),
	(65,1,1,'hmarin','160.39.4.177',1364679493,'Logged in'),
	(66,1,1,'hmarin','160.39.4.177',1364682906,'Logged out'),
	(67,1,1,'hmarin','160.39.4.177',1364738403,'Logged in'),
	(68,1,1,'hmarin','160.39.4.177',1364740703,'Logged in'),
	(69,1,8,'chris.muro','71.237.169.81',1364755543,'Logged in'),
	(70,1,8,'chris.muro','71.237.169.81',1364755995,'Logged out'),
	(71,1,8,'chris.muro','71.237.169.81',1364756141,'Logged in'),
	(72,1,8,'chris.muro','71.237.169.81',1364756475,'Logged out'),
	(73,1,8,'chris.muro','71.237.169.81',1364756994,'Logged in'),
	(74,1,8,'chris.muro','71.237.169.81',1364757007,'Logged out'),
	(75,1,8,'chris.muro','71.237.169.81',1364757157,'Logged in'),
	(76,1,8,'chris.muro','71.237.169.81',1364757191,'Logged out'),
	(77,1,8,'chris.muro','71.237.169.81',1364757241,'Logged in'),
	(78,1,8,'chris.muro','71.237.169.81',1364757301,'Logged out'),
	(79,1,8,'chris.muro','71.237.169.81',1364757310,'Logged in'),
	(80,1,8,'chris.muro','71.237.169.81',1364757321,'Logged out'),
	(81,1,8,'chris.muro','71.237.169.81',1364757391,'Logged in'),
	(82,1,8,'chris.muro','71.237.169.81',1364757443,'Logged out'),
	(83,1,8,'chris.muro','71.237.169.81',1364757483,'Logged in'),
	(84,1,8,'chris.muro','71.237.169.81',1364757631,'Logged out'),
	(85,1,8,'chris.muro','71.237.169.81',1364758047,'Logged in'),
	(86,1,8,'chris.muro','71.237.169.81',1364758954,'Logged out'),
	(87,1,8,'chris.muro','71.237.169.81',1364760686,'Logged in'),
	(88,1,8,'chris.muro','71.237.169.81',1364762206,'Logged in'),
	(89,1,1,'hmarin','160.39.4.177',1364765807,'Logged in'),
	(90,1,1,'hmarin','160.39.4.177',1364766765,'Logged in'),
	(91,1,1,'hmarin','160.39.4.177',1364767691,'Logged out'),
	(92,1,1,'hmarin','160.39.4.177',1364767697,'Logged in'),
	(93,1,8,'chris.muro','71.237.169.81',1364778935,'Logged in'),
	(94,1,8,'chris.muro','71.237.169.81',1364779633,'Logged in'),
	(95,1,8,'chris.muro','71.237.169.81',1364779749,'Logged out'),
	(96,1,8,'chris.muro','71.237.169.81',1364783121,'Member profile created:&nbsp;&nbsp;testuser1'),
	(97,1,8,'chris.muro','71.237.169.81',1364790130,'Logged in'),
	(98,1,1,'hmarin','160.39.4.177',1364824788,'Logged in'),
	(99,1,8,'chris.muro','71.237.169.81',1364827967,'Logged in'),
	(100,1,1,'hmarin','160.39.4.177',1364829476,'Logged in'),
	(101,1,1,'hmarin','160.39.4.177',1364847174,'Logged in'),
	(102,1,9,'nicolas','184.144.200.249',1364849920,'Logged in'),
	(103,1,8,'chris.muro','71.237.169.81',1364851054,'Logged in'),
	(104,1,7,'bwhitton','74.108.111.71',1364851260,'Logged in'),
	(105,1,8,'chris.muro','71.237.169.81',1364851608,'Logged out'),
	(106,1,8,'chris.muro','71.237.169.81',1364851714,'Logged in'),
	(107,1,1,'hmarin','160.39.4.177',1364851795,'Logged in'),
	(108,1,1,'hmarin','71.237.169.81',1364851830,'Logged in'),
	(109,1,1,'hmarin','160.39.4.177',1364852259,'Logged out'),
	(110,1,1,'hmarin','160.39.4.177',1364852298,'Logged in'),
	(111,1,8,'chris.muro','71.237.169.81',1364857338,'Logged in'),
	(112,1,7,'bwhitton','74.108.111.71',1364915468,'Logged in'),
	(113,1,8,'chris.muro','71.237.169.81',1364922845,'Logged in'),
	(114,1,8,'chris.muro','71.237.169.81',1364931203,'Logged in'),
	(115,1,1,'hmarin','160.39.4.177',1364931230,'Logged in'),
	(116,1,1,'hmarin','160.39.4.177',1364932601,'Field Group Created:&nbsp;Wall Posts'),
	(117,1,1,'hmarin','160.39.4.177',1364932756,'Channel Created:&nbsp;&nbsp;Wall Posts'),
	(118,1,1,'hmarin','160.39.4.177',1364934472,'Member Group Updated:&nbsp;&nbsp;Members'),
	(119,1,1,'hmarin','160.39.4.177',1364935332,'Member Group Updated:&nbsp;&nbsp;Members'),
	(120,1,1,'hmarin','160.39.4.177',1364935991,'Member Group Updated:&nbsp;&nbsp;Members'),
	(121,1,1,'hmarin','160.39.4.177',1364936593,'Member Group Updated:&nbsp;&nbsp;Members'),
	(122,1,1,'hmarin','160.39.4.177',1364937348,'Member profile created:&nbsp;&nbsp;Anonymus'),
	(123,1,8,'chris.muro','71.237.169.81',1364959740,'Logged in'),
	(124,1,1,'hmarin','216.55.3.234',1365001224,'Logged in'),
	(125,1,8,'chris.muro','71.237.169.81',1365002384,'Logged in'),
	(126,1,7,'bwhitton','216.55.3.234',1365003569,'Logged in'),
	(127,1,7,'bwhitton','216.55.3.234',1365003719,'Logged in'),
	(128,1,1,'hmarin','50.75.232.238',1365004862,'Logged out'),
	(129,1,1,'hmarin','50.75.232.238',1365004892,'Logged in'),
	(130,1,1,'hmarin','50.75.232.238',1365013421,'Logged out'),
	(131,1,1,'hmarin','50.75.232.238',1365013930,'Logged in'),
	(132,1,7,'bwhitton','50.75.232.238',1365014344,'Logged in'),
	(133,1,1,'hmarin','127.0.0.1',1365024832,'Logged in'),
	(134,1,1,'hmarin','127.0.0.1',1365038803,'Logged in'),
	(135,1,1,'hmarin','127.0.0.1',1365041482,'Logged in'),
	(136,1,1,'hmarin','127.0.0.1',1365093972,'Logged in'),
	(137,1,1,'hmarin','127.0.0.1',1365096976,'Field Group Created:&nbsp;Media'),
	(138,1,1,'hmarin','127.0.0.1',1365097421,'Channel Created:&nbsp;&nbsp;Media'),
	(139,1,1,'hmarin','127.0.0.1',1365113870,'Custom Field Deleted:&nbsp;'),
	(140,1,1,'hmarin','127.0.0.1',1365168971,'Logged in'),
	(141,1,1,'hmarin','127.0.0.1',1365215684,'Logged in'),
	(142,1,1,'hmarin','127.0.0.1',1365258080,'Logged in'),
	(143,1,1,'hmarin','127.0.0.1',1365261196,'Field Group Created:&nbsp;Actions'),
	(144,1,1,'hmarin','127.0.0.1',1365261248,'Channel Created:&nbsp;&nbsp;Actions'),
	(145,1,1,'hmarin','127.0.0.1',1365263243,'Field Group Created:&nbsp;Status ID Owner'),
	(146,1,1,'hmarin','127.0.0.1',1365263249,'Field group Deleted:&nbsp;&nbsp;Status ID Owner'),
	(147,1,1,'hmarin','127.0.0.1',1365265457,'Member profile created:&nbsp;&nbsp;hmarin1'),
	(148,1,1,'hmarin','127.0.0.1',1365345044,'Logged in'),
	(149,1,1,'hmarin','127.0.0.1',1365345107,'Logged in'),
	(150,1,1,'hmarin','127.0.0.1',1365371769,'Logged in'),
	(151,1,1,'hmarin','127.0.0.1',1365434151,'Logged in'),
	(152,1,1,'hmarin','127.0.0.1',1365456954,'Logged in'),
	(153,1,1,'hmarin','127.0.0.1',1365463722,'Logged in'),
	(154,1,1,'hmarin','127.0.0.1',1365470837,'Logged out'),
	(155,1,1,'hmarin','127.0.0.1',1365470924,'Logged in'),
	(156,1,1,'hmarin','127.0.0.1',1365471049,'Logged in'),
	(157,1,1,'hmarin','127.0.0.1',1365523067,'Logged in'),
	(158,1,1,'hmarin','127.0.0.1',1365530030,'Logged in'),
	(159,1,1,'hmarin','127.0.0.1',1365531214,'Logged in'),
	(160,1,1,'hmarin','127.0.0.1',1365536315,'Logged in');

/*!40000 ALTER TABLE `exp_cp_log` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_cp_search_index
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_cp_search_index`;

CREATE TABLE `exp_cp_search_index` (
  `search_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `controller` varchar(20) DEFAULT NULL,
  `method` varchar(50) DEFAULT NULL,
  `language` varchar(20) DEFAULT NULL,
  `access` varchar(50) DEFAULT NULL,
  `keywords` text,
  PRIMARY KEY (`search_id`),
  FULLTEXT KEY `keywords` (`keywords`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_developer_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_developer_log`;

CREATE TABLE `exp_developer_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` int(10) unsigned NOT NULL,
  `viewed` char(1) NOT NULL DEFAULT 'n',
  `description` text,
  `function` varchar(100) DEFAULT NULL,
  `line` int(10) unsigned DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `deprecated_since` varchar(10) DEFAULT NULL,
  `use_instead` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_email_cache
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_email_cache`;

CREATE TABLE `exp_email_cache` (
  `cache_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `cache_date` int(10) unsigned NOT NULL DEFAULT '0',
  `total_sent` int(6) unsigned NOT NULL,
  `from_name` varchar(70) NOT NULL,
  `from_email` varchar(70) NOT NULL,
  `recipient` text NOT NULL,
  `cc` text NOT NULL,
  `bcc` text NOT NULL,
  `recipient_array` mediumtext NOT NULL,
  `subject` varchar(120) NOT NULL,
  `message` mediumtext NOT NULL,
  `plaintext_alt` mediumtext NOT NULL,
  `mailinglist` char(1) NOT NULL DEFAULT 'n',
  `mailtype` varchar(6) NOT NULL,
  `text_fmt` varchar(40) NOT NULL,
  `wordwrap` char(1) NOT NULL DEFAULT 'y',
  `priority` char(1) NOT NULL DEFAULT '3',
  PRIMARY KEY (`cache_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_email_cache_mg
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_email_cache_mg`;

CREATE TABLE `exp_email_cache_mg` (
  `cache_id` int(6) unsigned NOT NULL,
  `group_id` smallint(4) NOT NULL,
  PRIMARY KEY (`cache_id`,`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_email_cache_ml
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_email_cache_ml`;

CREATE TABLE `exp_email_cache_ml` (
  `cache_id` int(6) unsigned NOT NULL,
  `list_id` smallint(4) NOT NULL,
  PRIMARY KEY (`cache_id`,`list_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_email_console_cache
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_email_console_cache`;

CREATE TABLE `exp_email_console_cache` (
  `cache_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `cache_date` int(10) unsigned NOT NULL DEFAULT '0',
  `member_id` int(10) unsigned NOT NULL,
  `member_name` varchar(50) NOT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `recipient` varchar(70) NOT NULL,
  `recipient_name` varchar(50) NOT NULL,
  `subject` varchar(120) NOT NULL,
  `message` mediumtext NOT NULL,
  PRIMARY KEY (`cache_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_entry_ping_status
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_entry_ping_status`;

CREATE TABLE `exp_entry_ping_status` (
  `entry_id` int(10) unsigned NOT NULL,
  `ping_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`entry_id`,`ping_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_entry_versioning
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_entry_versioning`;

CREATE TABLE `exp_entry_versioning` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(10) unsigned NOT NULL,
  `channel_id` int(4) unsigned NOT NULL,
  `author_id` int(10) unsigned NOT NULL,
  `version_date` int(10) NOT NULL,
  `version_data` mediumtext NOT NULL,
  PRIMARY KEY (`version_id`),
  KEY `entry_id` (`entry_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_extensions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_extensions`;

CREATE TABLE `exp_extensions` (
  `extension_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(50) NOT NULL DEFAULT '',
  `method` varchar(50) NOT NULL DEFAULT '',
  `hook` varchar(50) NOT NULL DEFAULT '',
  `settings` text NOT NULL,
  `priority` int(2) NOT NULL DEFAULT '10',
  `version` varchar(10) NOT NULL DEFAULT '',
  `enabled` char(1) NOT NULL DEFAULT 'y',
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_extensions` WRITE;
/*!40000 ALTER TABLE `exp_extensions` DISABLE KEYS */;

INSERT INTO `exp_extensions` (`extension_id`, `class`, `method`, `hook`, `settings`, `priority`, `version`, `enabled`)
VALUES
	(26,'Safecracker_ext','form_declaration_modify_data','form_declaration_modify_data','a:4:{s:15:\"override_status\";a:1:{i:1;a:2:{i:2;s:4:\"open\";i:1;s:4:\"open\";}}s:12:\"allow_guests\";a:1:{i:1;a:0:{}}s:20:\"logged_out_member_id\";a:1:{i:1;a:0:{}}s:15:\"require_captcha\";a:1:{i:1;a:0:{}}}',10,'2.1','y'),
	(2,'Rte_ext','myaccount_nav_setup','myaccount_nav_setup','',10,'1.0','y'),
	(3,'Rte_ext','cp_menu_array','cp_menu_array','',10,'1.0','y'),
	(4,'Rte_ext','publish_form_entry_data','publish_form_entry_data','',10,'1.0','y'),
	(7,'Friends_ext','comment_end','insert_comment_end','a:0:{}',10,'1.6.0','y'),
	(8,'Friends_ext','delete_entry','delete_entries_start','a:0:{}',10,'1.6.0','y'),
	(9,'Friends_ext','delete_non_existent_members','cp_members_member_delete_end','a:0:{}',10,'1.6.0','y'),
	(10,'Friends_ext','user_delete_account_end','user_delete_account_end','a:0:{}',10,'1.6.0','y'),
	(11,'Friends_ext','filter_private_search','search_module_alter_sql','a:0:{}',10,'1.6.0','y'),
	(12,'Friends_ext','filter_private_comments','comment_module_alter_entries_sql','a:0:{}',10,'1.6.0','y'),
	(13,'Friends_ext','user_register_referrals','user_register_end','a:0:{}',10,'1.6.0','y'),
	(14,'Friends_ext','member_register_referrals','member_member_register','a:0:{}',10,'1.6.0','y'),
	(15,'Friends_ext','filter_private','channel_module_alter_sql','a:0:{}',10,'1.6.0','y'),
	(16,'Friends_ext','entry_end','entry_submission_end','a:0:{}',10,'1.6.0','y'),
	(17,'User_ext','insert_comment_start','insert_comment_start','',5,'3.4.0','y'),
	(18,'User_ext','insert_rating_start','insert_rating_start','',5,'3.4.0','y'),
	(19,'User_ext','paypalpro_payment_start','paypalpro_payment_start','',5,'3.4.0','y'),
	(20,'User_ext','freeform_module_insert_begin','freeform_module_insert_begin','',5,'3.4.0','y'),
	(21,'User_ext','cp_members_validate_members','cp_members_validate_members','',1,'3.4.0','y'),
	(22,'User_ext','delete_entries_start','delete_entries_start','',5,'3.4.0','y'),
	(23,'Nyu_sso_ext','check_login','member_member_login_start','s:0:\"\";',1,'1.0','y'),
	(24,'Nsm_htaccess_generator_ext','entry_submission_end','entry_submission_end','a:0:{}',10,'1.1.5','y'),
	(25,'Nsm_htaccess_generator_ext','update_template_end','update_template_end','a:0:{}',10,'1.1.5','y');

/*!40000 ALTER TABLE `exp_extensions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_field_formatting
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_field_formatting`;

CREATE TABLE `exp_field_formatting` (
  `formatting_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(10) unsigned NOT NULL,
  `field_fmt` varchar(40) NOT NULL,
  PRIMARY KEY (`formatting_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_field_formatting` WRITE;
/*!40000 ALTER TABLE `exp_field_formatting` DISABLE KEYS */;

INSERT INTO `exp_field_formatting` (`formatting_id`, `field_id`, `field_fmt`)
VALUES
	(1,1,'none'),
	(2,1,'br'),
	(3,1,'xhtml'),
	(4,2,'none'),
	(5,2,'br'),
	(6,2,'xhtml'),
	(30,10,'xhtml'),
	(29,10,'br'),
	(28,10,'none'),
	(10,4,'none'),
	(11,4,'br'),
	(12,4,'xhtml'),
	(13,5,'none'),
	(14,5,'br'),
	(15,5,'xhtml'),
	(27,9,'xhtml'),
	(26,9,'br'),
	(25,9,'none'),
	(24,8,'xhtml'),
	(23,8,'br'),
	(22,8,'none'),
	(31,11,'none'),
	(32,11,'br'),
	(33,11,'xhtml'),
	(34,12,'none'),
	(35,12,'br'),
	(36,12,'xhtml'),
	(37,13,'none'),
	(38,13,'br'),
	(39,13,'xhtml'),
	(40,14,'none'),
	(41,14,'br'),
	(42,14,'xhtml');

/*!40000 ALTER TABLE `exp_field_formatting` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_field_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_field_groups`;

CREATE TABLE `exp_field_groups` (
  `group_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_name` varchar(50) NOT NULL,
  PRIMARY KEY (`group_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_field_groups` WRITE;
/*!40000 ALTER TABLE `exp_field_groups` DISABLE KEYS */;

INSERT INTO `exp_field_groups` (`group_id`, `site_id`, `group_name`)
VALUES
	(1,1,'Wall Posts'),
	(2,1,'Media'),
	(3,1,'Actions');

/*!40000 ALTER TABLE `exp_field_groups` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_fieldtypes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_fieldtypes`;

CREATE TABLE `exp_fieldtypes` (
  `fieldtype_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `version` varchar(12) NOT NULL,
  `settings` text,
  `has_global_settings` char(1) DEFAULT 'n',
  PRIMARY KEY (`fieldtype_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_fieldtypes` WRITE;
/*!40000 ALTER TABLE `exp_fieldtypes` DISABLE KEYS */;

INSERT INTO `exp_fieldtypes` (`fieldtype_id`, `name`, `version`, `settings`, `has_global_settings`)
VALUES
	(1,'select','1.0','YTowOnt9','n'),
	(2,'text','1.0','YTowOnt9','n'),
	(3,'textarea','1.0','YTowOnt9','n'),
	(4,'date','1.0','YTowOnt9','n'),
	(5,'file','1.0','YTowOnt9','n'),
	(6,'multi_select','1.0','YTowOnt9','n'),
	(7,'checkboxes','1.0','YTowOnt9','n'),
	(8,'radio','1.0','YTowOnt9','n'),
	(9,'rel','1.0','YTowOnt9','n'),
	(10,'rte','1.0','YTowOnt9','n'),
	(12,'safecracker_file','2.1','YTowOnt9','n');

/*!40000 ALTER TABLE `exp_fieldtypes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_file_categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_file_categories`;

CREATE TABLE `exp_file_categories` (
  `file_id` int(10) unsigned DEFAULT NULL,
  `cat_id` int(10) unsigned DEFAULT NULL,
  `sort` int(10) unsigned DEFAULT '0',
  `is_cover` char(1) DEFAULT 'n',
  KEY `file_id` (`file_id`),
  KEY `cat_id` (`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_file_dimensions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_file_dimensions`;

CREATE TABLE `exp_file_dimensions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned DEFAULT '1',
  `upload_location_id` int(4) unsigned DEFAULT NULL,
  `title` varchar(255) DEFAULT '',
  `short_name` varchar(255) DEFAULT '',
  `resize_type` varchar(50) DEFAULT '',
  `width` int(10) DEFAULT '0',
  `height` int(10) DEFAULT '0',
  `watermark_id` int(4) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `upload_location_id` (`upload_location_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_file_watermarks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_file_watermarks`;

CREATE TABLE `exp_file_watermarks` (
  `wm_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `wm_name` varchar(80) DEFAULT NULL,
  `wm_type` varchar(10) DEFAULT 'text',
  `wm_image_path` varchar(100) DEFAULT NULL,
  `wm_test_image_path` varchar(100) DEFAULT NULL,
  `wm_use_font` char(1) DEFAULT 'y',
  `wm_font` varchar(30) DEFAULT NULL,
  `wm_font_size` int(3) unsigned DEFAULT NULL,
  `wm_text` varchar(100) DEFAULT NULL,
  `wm_vrt_alignment` varchar(10) DEFAULT 'top',
  `wm_hor_alignment` varchar(10) DEFAULT 'left',
  `wm_padding` int(3) unsigned DEFAULT NULL,
  `wm_opacity` int(3) unsigned DEFAULT NULL,
  `wm_hor_offset` int(4) unsigned DEFAULT NULL,
  `wm_vrt_offset` int(4) unsigned DEFAULT NULL,
  `wm_x_transp` int(4) DEFAULT NULL,
  `wm_y_transp` int(4) DEFAULT NULL,
  `wm_font_color` varchar(7) DEFAULT NULL,
  `wm_use_drop_shadow` char(1) DEFAULT 'y',
  `wm_shadow_distance` int(3) unsigned DEFAULT NULL,
  `wm_shadow_color` varchar(7) DEFAULT NULL,
  PRIMARY KEY (`wm_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_files
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_files`;

CREATE TABLE `exp_files` (
  `file_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned DEFAULT '1',
  `title` varchar(255) DEFAULT NULL,
  `upload_location_id` int(4) unsigned DEFAULT '0',
  `rel_path` varchar(255) DEFAULT NULL,
  `mime_type` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `file_size` int(10) DEFAULT '0',
  `description` text,
  `credit` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `uploaded_by_member_id` int(10) unsigned DEFAULT '0',
  `upload_date` int(10) DEFAULT NULL,
  `modified_by_member_id` int(10) unsigned DEFAULT '0',
  `modified_date` int(10) DEFAULT NULL,
  `file_hw_original` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`file_id`),
  KEY `upload_location_id` (`upload_location_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_files` WRITE;
/*!40000 ALTER TABLE `exp_files` DISABLE KEYS */;

INSERT INTO `exp_files` (`file_id`, `site_id`, `title`, `upload_location_id`, `rel_path`, `mime_type`, `file_name`, `file_size`, `description`, `credit`, `location`, `uploaded_by_member_id`, `upload_date`, `modified_by_member_id`, `modified_date`, `file_hw_original`)
VALUES
	(1,1,'img_1966.mov',1,'/home/social/public_html/images/general-files/img_1966.mov','video/quicktime','img_1966.mov',116992,NULL,NULL,NULL,1,1363966268,1,1363966268,' '),
	(2,1,'img_1966_poster.png',1,'/home/social/public_html/images/general-files/img_1966_poster.png','image/png','img_1966_poster.png',101939,NULL,NULL,NULL,1,1363966552,1,1363966552,'476 270'),
	(3,1,'catalina.png',2,'/Applications/MAMP/htdocs/introductions/images/media_uploads/catalina.png','image/png','catalina.png',143514,NULL,NULL,NULL,1,1365097195,1,1365097195,'165 262'),
	(4,1,'ayulogo.png',2,'/Applications/MAMP/htdocs/introductions/images/media_images/ayulogo.png','image/png','ayulogo.png',67011,NULL,NULL,NULL,1,1365104641,1,1365104641,'200 200'),
	(5,1,'lamoutique.png',4,'/Applications/MAMP/htdocs/introductions/images/media_audio/lamoutique.png','image/png','lamoutique.png',139346,NULL,NULL,NULL,1,1365104651,1,1365104651,'165 262'),
	(6,1,'innovation.png',3,'/Applications/MAMP/htdocs/introductions/images/media_videos/innovation.png','image/png','innovation.png',153293,NULL,NULL,NULL,1,1365104661,1,1365104661,'371 863'),
	(7,1,'idea.png',2,'/Applications/MAMP/htdocs/introductions/images/media_images/idea.png','image/png','idea.png',75295,NULL,NULL,NULL,1,1365105664,1,1365105664,'184 163'),
	(8,1,'valores.png',2,'/Applications/MAMP/htdocs/introductions/images/media_images/valores.png','image/png','valores.png',146483,NULL,NULL,NULL,1,1365113972,1,1365113972,'165 262'),
	(9,1,'catalina1.png',2,'/Applications/MAMP/htdocs/introductions/images/media_images/catalina1.png','image/png','catalina1.png',143514,NULL,NULL,NULL,1,1365114169,1,1365114169,'165 262'),
	(10,1,'lamoutique.png',2,'/Applications/MAMP/htdocs/introductions/images/media_images/lamoutique.png','image/png','lamoutique.png',139346,NULL,NULL,NULL,1,1365114261,1,1365114261,'165 262'),
	(11,1,'catalina2.png',2,'/Applications/MAMP/htdocs/introductions/images/media_images/catalina2.png','image/png','catalina2.png',143514,NULL,NULL,NULL,1,1365114468,1,1365114468,'165 262'),
	(12,1,'ayulogo1.png',2,'/Applications/MAMP/htdocs/introductions/images/media_images/ayulogo1.png','image/png','ayulogo1.png',67011,NULL,NULL,NULL,1,1365114573,1,1365114573,'200 200'),
	(13,1,'lamoutique1.png',2,'/Applications/MAMP/htdocs/introductions/images/media_images/lamoutique1.png','image/png','lamoutique1.png',139346,NULL,NULL,NULL,1,1365171121,1,1365171121,'165 262'),
	(14,1,'idea1.png',2,'/Applications/MAMP/htdocs/introductions/images/media_images/idea1.png','image/png','idea1.png',75295,NULL,NULL,NULL,1,1365172051,1,1365172051,'184 163'),
	(15,1,'ayulogo2.png',2,'/Applications/MAMP/htdocs/introductions/images/media_images/ayulogo2.png','image/png','ayulogo2.png',67011,NULL,NULL,NULL,1,1365172700,1,1365172700,'200 200'),
	(16,1,'catalinakulzar.png',2,'/Applications/MAMP/htdocs/introductions/images/media_images/catalinakulzar.png','image/png','catalinakulzar.png',9533,NULL,NULL,NULL,1,1365173115,1,1365173115,'177 260'),
	(17,1,'movil.png',2,'/Applications/MAMP/htdocs/introductions/images/media_images/movil.png','image/png','movil.png',52613,NULL,NULL,NULL,1,1365173209,1,1365173209,'20 51'),
	(18,1,'Memo.m4a',4,'/Applications/MAMP/htdocs/introductions/images/media_audio/Memo.m4a','audio/m4a','Memo.m4a',1766216,NULL,NULL,NULL,1,1365173385,1,1365173385,' '),
	(19,1,'vision.png',2,'/Applications/MAMP/htdocs/introductions/images/media_images/vision.png','image/png','vision.png',94454,NULL,NULL,NULL,1,1365175599,1,1365175599,'165 262'),
	(20,1,'vision1.png',2,'/Applications/MAMP/htdocs/introductions/images/media_images/vision1.png','image/png','vision1.png',94454,NULL,NULL,NULL,1,1365176378,1,1365176378,'165 262'),
	(21,1,'movil1.png',2,'/Applications/MAMP/htdocs/introductions/images/media_images/movil1.png','image/png','movil1.png',52613,NULL,NULL,NULL,1,1365261602,1,1365261602,'20 51'),
	(22,1,'zazon.png',2,'/Applications/MAMP/htdocs/introductions/images/media_images/zazon.png','image/png','zazon.png',119306,NULL,NULL,NULL,1,1365351022,1,1365351022,'165 262');

/*!40000 ALTER TABLE `exp_files` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_friends
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_friends`;

CREATE TABLE `exp_friends` (
  `entry_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `friend_id` int(10) unsigned NOT NULL DEFAULT '0',
  `referrer_id` int(10) unsigned NOT NULL DEFAULT '0',
  `group_id` varchar(132) NOT NULL DEFAULT '',
  `site_id` smallint(3) unsigned NOT NULL DEFAULT '1',
  `first` varchar(132) NOT NULL DEFAULT '',
  `last` varchar(132) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `edit_date` int(10) unsigned NOT NULL DEFAULT '0',
  `private` char(1) NOT NULL DEFAULT 'n',
  `reciprocal` char(1) NOT NULL DEFAULT 'n',
  `block` char(1) NOT NULL DEFAULT 'n',
  PRIMARY KEY (`entry_id`),
  KEY `member_id` (`member_id`),
  KEY `friend_id` (`friend_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_friends` WRITE;
/*!40000 ALTER TABLE `exp_friends` DISABLE KEYS */;

INSERT INTO `exp_friends` (`entry_id`, `member_id`, `friend_id`, `referrer_id`, `group_id`, `site_id`, `first`, `last`, `email`, `entry_date`, `edit_date`, `private`, `reciprocal`, `block`)
VALUES
	(1,1,3,0,'',1,'','','coloradomarin@gmail.com',1364510055,0,'n','y','n'),
	(2,1,8,0,'',1,'','','christopher@muro.org',1364510333,0,'n','y','n'),
	(3,1,5,0,'',1,'','','Skyler@urgentcontent.com',1364510342,0,'n','y','n'),
	(4,1,4,0,'',1,'','','herman.marin@progresoec.org',1364510596,0,'n','y','n'),
	(5,3,1,0,'',1,'','','herman@urgentcontent.com',1364510864,0,'n','y','n'),
	(6,1,6,0,'',1,'','','herman.marin@ayuinc.com',1364511134,0,'n','y','n'),
	(7,3,6,0,'',1,'','','herman.marin@ayuinc.com',1364511433,0,'n','y','n'),
	(8,3,7,0,'',1,'','','brian@urgentcontent.com',1364511464,0,'n','y','n'),
	(9,3,4,0,'',1,'','','herman.marin@progresoec.org',1364511942,0,'n','y','n'),
	(10,3,8,0,'',1,'','','christopher@muro.org',1364512046,0,'n','y','n'),
	(11,6,3,0,'',1,'','','coloradomarin@gmail.com',1364512150,0,'n','y','n'),
	(12,6,1,0,'',1,'','','herman@urgentcontent.com',1364512230,0,'n','y','n'),
	(13,6,4,0,'',1,'','','herman.marin@progresoec.org',1364512287,0,'n','y','n'),
	(14,6,5,0,'',1,'','','Skyler@urgentcontent.com',1364512303,0,'n','y','n');

/*!40000 ALTER TABLE `exp_friends` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_friends_automations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_friends_automations`;

CREATE TABLE `exp_friends_automations` (
  `automation_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `action` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`automation_id`),
  KEY `site_id` (`site_id`),
  KEY `action` (`action`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_friends_group_comments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_friends_group_comments`;

CREATE TABLE `exp_friends_group_comments` (
  `comment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` int(10) unsigned NOT NULL DEFAULT '0',
  `author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` text,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`comment_id`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_friends_group_entry_posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_friends_group_entry_posts`;

CREATE TABLE `exp_friends_group_entry_posts` (
  `group_id` int(10) unsigned NOT NULL DEFAULT '0',
  `entry_id` int(10) unsigned NOT NULL DEFAULT '0',
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `site_id` smallint(3) unsigned NOT NULL DEFAULT '1',
  `private` char(1) NOT NULL DEFAULT 'n',
  KEY `group_id` (`group_id`),
  KEY `entry_id` (`entry_id`),
  KEY `member_id` (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_friends_group_posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_friends_group_posts`;

CREATE TABLE `exp_friends_group_posts` (
  `post_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` int(10) unsigned NOT NULL DEFAULT '0',
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `site_id` smallint(3) unsigned NOT NULL DEFAULT '1',
  `entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `invite_or_request` varchar(7) NOT NULL DEFAULT '',
  `accepted` char(1) NOT NULL DEFAULT 'n',
  `declined` char(1) NOT NULL DEFAULT 'n',
  `request_accepted` char(1) NOT NULL DEFAULT 'y',
  `request_declined` char(1) NOT NULL DEFAULT 'n',
  `notify_entries` char(1) NOT NULL DEFAULT 'y',
  `notify_comments` char(1) NOT NULL DEFAULT 'y',
  `notify_joins` char(1) NOT NULL DEFAULT 'y',
  `notify_favorites` char(1) NOT NULL DEFAULT 'y',
  `notify_ratings` char(1) NOT NULL DEFAULT 'y',
  PRIMARY KEY (`post_id`),
  KEY `group_id` (`group_id`),
  KEY `member_id` (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_friends_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_friends_groups`;

CREATE TABLE `exp_friends_groups` (
  `group_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `site_id` smallint(3) unsigned NOT NULL DEFAULT '1',
  `name` varchar(132) NOT NULL DEFAULT '',
  `title` varchar(132) NOT NULL DEFAULT '',
  `description` text,
  `entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `edit_date` int(10) unsigned NOT NULL DEFAULT '0',
  `private` char(1) NOT NULL DEFAULT 'n',
  `total_members` int(10) unsigned NOT NULL DEFAULT '0',
  `total_entries` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`group_id`),
  KEY `member_id` (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_friends_hugs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_friends_hugs`;

CREATE TABLE `exp_friends_hugs` (
  `hug_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `friend_id` int(10) unsigned NOT NULL DEFAULT '0',
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `hug_label` varchar(100) NOT NULL DEFAULT '',
  `email_subject` varchar(255) NOT NULL DEFAULT '',
  `email_address` varchar(255) NOT NULL DEFAULT '',
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hug_id`),
  KEY `member_id` (`member_id`),
  KEY `friend_id` (`friend_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_friends_notification_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_friends_notification_log`;

CREATE TABLE `exp_friends_notification_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `total_sent` int(6) unsigned NOT NULL DEFAULT '0',
  `from_name` varchar(70) NOT NULL DEFAULT '',
  `from_email` varchar(70) NOT NULL DEFAULT '',
  `recipient` text,
  `cc` text,
  `bcc` text,
  `recipient_array` mediumtext,
  `subject` varchar(120) NOT NULL DEFAULT '',
  `message` mediumtext,
  `plaintext_alt` mediumtext,
  `mailtype` varchar(6) NOT NULL DEFAULT '',
  `text_fmt` varchar(40) NOT NULL DEFAULT '',
  `wordwrap` char(1) NOT NULL DEFAULT 'y',
  `priority` char(1) NOT NULL DEFAULT '3',
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_friends_notification_log` WRITE;
/*!40000 ALTER TABLE `exp_friends_notification_log` DISABLE KEYS */;

INSERT INTO `exp_friends_notification_log` (`log_id`, `entry_date`, `total_sent`, `from_name`, `from_email`, `recipient`, `cc`, `bcc`, `recipient_array`, `subject`, `message`, `plaintext_alt`, `mailtype`, `text_fmt`, `wordwrap`, `priority`)
VALUES
	(1,1364511134,1,'Herman Marin','herman@urgentcontent.com','herman.marin@ayuinc.com',NULL,NULL,NULL,'Herman Marin added you as a friend!','',NULL,'text','','','3'),
	(2,1364511433,1,'El Colorado','coloradomarin@gmail.com','herman.marin@ayuinc.com',NULL,NULL,NULL,'El Colorado added you as a friend!','',NULL,'text','','','3'),
	(3,1364511464,1,'El Colorado','coloradomarin@gmail.com','brian@urgentcontent.com',NULL,NULL,NULL,'El Colorado added you as a friend!','',NULL,'text','','','3'),
	(4,1364511942,1,'El Colorado','coloradomarin@gmail.com','herman.marin@progresoec.org',NULL,NULL,NULL,'El Colorado added you as a friend!','',NULL,'text','','','3'),
	(5,1364512046,1,'El Colorado','coloradomarin@gmail.com','christopher@muro.org',NULL,NULL,NULL,'El Colorado added you as a friend!','',NULL,'text','','','3'),
	(6,1364512150,1,'Herman Ayu','herman.marin@ayuinc.com','coloradomarin@gmail.com',NULL,NULL,NULL,'Herman Ayu confirmed your friend request!','',NULL,'text','','','3'),
	(7,1364512230,1,'Herman Ayu','herman.marin@ayuinc.com','herman@urgentcontent.com',NULL,NULL,NULL,'Herman Ayu confirmed your friend request!','',NULL,'text','','','3'),
	(8,1364512287,1,'Herman Ayu','herman.marin@ayuinc.com','herman.marin@progresoec.org',NULL,NULL,NULL,'Herman Ayu added you as a friend!','',NULL,'text','','','3'),
	(9,1364512303,1,'Herman Ayu','herman.marin@ayuinc.com','Skyler@urgentcontent.com',NULL,NULL,NULL,'Herman Ayu added you as a friend!','',NULL,'text','','','3');

/*!40000 ALTER TABLE `exp_friends_notification_log` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_friends_params
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_friends_params`;

CREATE TABLE `exp_friends_params` (
  `params_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hash` varchar(25) NOT NULL DEFAULT '',
  `entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text,
  PRIMARY KEY (`params_id`),
  KEY `hash` (`hash`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_friends_params` WRITE;
/*!40000 ALTER TABLE `exp_friends_params` DISABLE KEYS */;

INSERT INTO `exp_friends_params` (`params_id`, `hash`, `entry_date`, `data`)
VALUES
	(881,'',1364927548,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(880,'',1364927548,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(879,'',1364927548,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(878,'',1364927548,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(877,'',1364927548,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(876,'',1364927548,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(875,'',1364927548,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(874,'',1364927548,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(873,'',1364927548,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(872,'',1364927548,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(871,'',1364927548,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(870,'',1364927548,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(869,'',1364927548,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(868,'',1364927548,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(867,'',1364927383,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(866,'',1364927383,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(865,'',1364927383,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(864,'',1364927383,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(863,'',1364927383,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(862,'',1364927383,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(861,'',1364927383,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(860,'',1364927383,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(859,'',1364927383,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(858,'',1364927383,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(857,'',1364927383,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(856,'',1364927383,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(855,'',1364927383,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(854,'',1364927383,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(853,'',1364927370,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(852,'',1364927370,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(851,'',1364927370,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(850,'',1364927370,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(849,'',1364927370,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(848,'',1364927370,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(847,'',1364927370,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(846,'',1364927370,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(845,'',1364927370,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(844,'',1364927370,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(843,'',1364927370,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(842,'',1364927370,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(841,'',1364927370,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(840,'',1364927370,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(839,'',1364927360,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(838,'',1364927360,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(837,'',1364927360,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(836,'',1364927360,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(835,'',1364927360,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(834,'',1364927360,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(833,'',1364927360,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(832,'',1364927360,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(831,'',1364927360,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(830,'',1364927360,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(829,'',1364927360,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(828,'',1364927360,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(827,'',1364927360,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(826,'',1364927360,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(825,'',1364927313,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(824,'',1364927313,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(823,'',1364927313,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(822,'',1364927313,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(821,'',1364927313,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(820,'',1364927313,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(819,'',1364927313,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(818,'',1364927313,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(817,'',1364927313,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(816,'',1364927313,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(815,'',1364927313,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(814,'',1364927313,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(813,'',1364927313,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(812,'',1364927313,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(783,'',1364926545,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(782,'',1364926545,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(781,'',1364926545,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(780,'',1364926545,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(779,'',1364926545,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(778,'',1364926545,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(777,'',1364926545,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(776,'',1364926545,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(775,'',1364926545,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(774,'',1364926545,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(773,'',1364926545,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(772,'',1364926545,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(771,'',1364926545,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(770,'',1364926545,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(811,'',1364927219,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(810,'',1364927219,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(809,'',1364927219,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(808,'',1364927219,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(807,'',1364927219,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(806,'',1364927219,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(805,'',1364927219,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(804,'',1364927219,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(803,'',1364927219,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(802,'',1364927219,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(801,'',1364927219,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(800,'',1364927219,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(799,'',1364927219,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(798,'',1364927219,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(797,'',1364926866,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(796,'',1364926866,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(795,'',1364926866,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(794,'',1364926866,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(793,'',1364926866,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(792,'',1364926866,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(791,'',1364926866,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(790,'',1364926866,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(789,'',1364926866,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(788,'',1364926866,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(787,'',1364926866,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(786,'',1364926866,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(785,'',1364926866,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(784,'',1364926866,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(937,'',1364930281,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(936,'',1364930281,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(935,'',1364930281,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(934,'',1364930281,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(933,'',1364930281,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(932,'',1364930281,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(931,'',1364930281,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(930,'',1364930281,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(929,'',1364930281,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(928,'',1364930281,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(927,'',1364930281,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(926,'',1364930281,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(925,'',1364930281,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(924,'',1364930281,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(923,'',1364930250,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(922,'',1364930250,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(921,'',1364930250,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(920,'',1364930250,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(919,'',1364930250,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(918,'',1364930250,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(917,'',1364930250,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(916,'',1364930250,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(915,'',1364930250,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(914,'',1364930250,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(913,'',1364930250,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(912,'',1364930250,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(911,'',1364930250,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(910,'',1364930250,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(895,'',1364930203,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(894,'',1364930203,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(893,'',1364930203,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(892,'',1364930203,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(891,'',1364930203,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(890,'',1364930203,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(889,'',1364930203,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(888,'',1364930203,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(887,'',1364930203,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(886,'',1364930203,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(885,'',1364930203,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(884,'',1364930203,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(883,'',1364930203,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(882,'',1364930203,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(909,'',1364930232,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(908,'',1364930232,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(907,'',1364930232,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(906,'',1364930232,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(905,'',1364930232,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(904,'',1364930232,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(903,'',1364930232,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(902,'',1364930232,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(901,'',1364930232,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(900,'',1364930232,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(899,'',1364930232,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(898,'',1364930232,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(897,'',1364930232,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(896,'',1364930232,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(979,'',1364931136,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(978,'',1364931136,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(977,'',1364931136,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(976,'',1364931136,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(975,'',1364931136,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(974,'',1364931136,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(973,'',1364931136,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(972,'',1364931136,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(971,'',1364931136,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(970,'',1364931136,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(969,'',1364931136,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(968,'',1364931136,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(967,'',1364931136,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(966,'',1364931136,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(965,'',1364931132,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(964,'',1364931132,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(963,'',1364931132,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(962,'',1364931132,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(961,'',1364931132,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(960,'',1364931132,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(959,'',1364931132,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(958,'',1364931132,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(957,'',1364931132,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(956,'',1364931132,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(955,'',1364931132,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(954,'',1364931132,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(953,'',1364931132,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(952,'',1364931132,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(951,'',1364931105,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(950,'',1364931105,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(949,'',1364931105,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(948,'',1364931105,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(947,'',1364931105,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(946,'',1364931105,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(945,'',1364931105,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(944,'',1364931105,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(943,'',1364931105,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(942,'',1364931105,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(941,'',1364931105,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(940,'',1364931105,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(939,'',1364931105,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}'),
	(938,'',1364931105,'a:6:{s:15:\"require_captcha\";s:2:\"no\";s:10:\"require_ip\";s:0:\"\";s:11:\"ee_required\";s:0:\"\";s:9:\"ee_notify\";s:0:\"\";s:8:\"template\";s:16:\"default_template\";s:18:\"prevent_duplicates\";s:2:\"no\";}');

/*!40000 ALTER TABLE `exp_friends_params` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_friends_preferences
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_friends_preferences`;

CREATE TABLE `exp_friends_preferences` (
  `pref_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `preferences` text,
  PRIMARY KEY (`pref_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_friends_preferences` WRITE;
/*!40000 ALTER TABLE `exp_friends_preferences` DISABLE KEYS */;

INSERT INTO `exp_friends_preferences` (`pref_id`, `site_id`, `preferences`)
VALUES
	(1,1,'YTo2OntzOjE3OiJtYXhfbWVzc2FnZV9jaGFycyI7czozOiIyMDAiO3M6MjI6Im1lc3NhZ2Vfd2FpdGluZ19wZXJpb2QiO3M6MToiMSI7czoxODoibWVzc2FnZV90aHJvdHRsaW5nIjtzOjI6IjEwIjtzOjE3OiJtZXNzYWdlX2RheV9saW1pdCI7czo0OiIzMDAwIjtzOjI2OiJtYXhfcmVjaXBpZW50c19wZXJfbWVzc2FnZSI7czozOiIzMDAiO3M6MTY6Im5vdGlmeV9wYXJzZV9hbGwiO3M6MToibiI7fQ==');

/*!40000 ALTER TABLE `exp_friends_preferences` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_friends_profile_comments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_friends_profile_comments`;

CREATE TABLE `exp_friends_profile_comments` (
  `comment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `friend_id` int(10) unsigned NOT NULL DEFAULT '0',
  `entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` text,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`comment_id`),
  KEY `friend_id` (`friend_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_friends_profile_comments` WRITE;
/*!40000 ALTER TABLE `exp_friends_profile_comments` DISABLE KEYS */;

INSERT INTO `exp_friends_profile_comments` (`comment_id`, `author_id`, `friend_id`, `entry_date`, `comment`, `site_id`)
VALUES
	(1,1,3,1364514636,'como andas Colorado?',1),
	(2,1,6,1364515292,'Como andas Ayu',1),
	(3,6,3,1364515355,'Hola Colorado te dijo Herman marin que todo bien?',1),
	(4,1,6,1364565543,'This is just a text',1),
	(5,1,1,1364669462,'Una mensaje para mi',1),
	(6,3,1,1364669520,'Te mando un abrazo',1),
	(7,1,3,1364669582,'hola amigo',1),
	(8,1,3,1364826182,'This is a comment I have',1);

/*!40000 ALTER TABLE `exp_friends_profile_comments` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_friends_referrals
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_friends_referrals`;

CREATE TABLE `exp_friends_referrals` (
  `referral_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `referrer_id` int(10) unsigned NOT NULL DEFAULT '0',
  `site_id` smallint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`referral_id`),
  KEY `member_id` (`member_id`),
  KEY `referrer_id` (`referrer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_friends_status
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_friends_status`;

CREATE TABLE `exp_friends_status` (
  `status_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0',
  `site_id` smallint(3) unsigned NOT NULL DEFAULT '1',
  `status` varchar(255) NOT NULL DEFAULT '',
  `status_date` int(10) unsigned NOT NULL DEFAULT '0',
  `private` char(1) NOT NULL DEFAULT 'n',
  PRIMARY KEY (`status_id`),
  KEY `member_id` (`member_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_friends_status` WRITE;
/*!40000 ALTER TABLE `exp_friends_status` DISABLE KEYS */;

INSERT INTO `exp_friends_status` (`status_id`, `member_id`, `group_id`, `site_id`, `status`, `status_date`, `private`)
VALUES
	(1,1,1,1,'is thanks for all',1364669999,'n'),
	(2,1,1,1,'si se puede',1364670503,'n'),
	(3,4,5,1,'is Me la estoy pasando muy bien',1364679647,'n'),
	(4,3,5,1,'is Hola Hola',1364679656,'n'),
	(5,1,1,1,'is una raya mas al tigre',1364679667,'n'),
	(6,1,1,1,'Mi mensaje salio al aire ',1364679737,'n'),
	(7,1,1,1,'Una mas',1364679808,'n'),
	(8,3,5,1,'Te llamo luego',1364679830,'n'),
	(9,4,5,1,'Este mensaje es uno nuevo',1364680533,'n'),
	(10,1,1,1,'Este mensaje solo lo ven los demas',1364680611,'n'),
	(11,6,5,1,'Una mensaje de Ayu',1364681152,'n'),
	(12,6,5,1,'is vamos que si se puede',1364691113,'n'),
	(13,8,1,1,'is ',1364756086,'n'),
	(14,1,1,1,'Este es mi mensaje',1364765942,'n'),
	(15,1,1,1,'THinking on how I can fix the Safecracker',1364939129,'y'),
	(16,8,1,1,'is looking at the .htaccess',1365002497,'y'),
	(17,1,1,1,'is thinking what to do now.',1365096292,'n'),
	(18,1,1,1,'Una idea mas de lo que recien cambie',1365096795,'n'),
	(19,1,1,1,'Este es mi estatus desde Mysql',1365096795,'n'),
	(20,1,1,1,'Ultimo status',1365103219,'n'),
	(21,1,1,1,'Uno mas al moneto',1365103821,'n'),
	(22,1,1,1,'Mas Status.',1365105369,'n'),
	(23,1,1,1,'Probando mas y definitivos',1365105477,'n'),
	(24,1,1,1,'Seguimos probando',1365105589,'n'),
	(25,1,1,1,'Tratando',1365105618,'n'),
	(26,1,1,1,'Ojala',1365106029,'n'),
	(27,1,1,1,'boemia',1365106695,'n'),
	(28,1,1,1,'HEre the page',1365110889,'n'),
	(29,1,1,1,'nmfbgfmsd,gbksdf gkjlsdfgh',1365111473,'n'),
	(30,1,1,1,'HEre we go',1365111726,'n'),
	(31,1,1,1,'una vez mas a la busqueda del arreglo',1365112268,'n'),
	(32,1,1,1,'dsa dfgsdfgsdfgsd',1365112381,'n'),
	(33,1,1,1,'lkdfsgj lksdf jglksdfj glsdkf g',1365112472,'n'),
	(34,1,1,1,'ewvwe dfg',1365112600,'n'),
	(35,1,1,1,'I think I finally got this to work.',1365114248,'n'),
	(36,1,1,1,'Herman is finally fixing this.',1365114457,'n'),
	(37,1,1,1,'One more toime',1365114565,'n'),
	(38,1,1,1,'sdfg fd',1365169694,'n'),
	(39,1,1,1,'lakdsjf lkj fdalksj alsdjk fasdlkfj alskdjf aslkdfj a',1365170558,'n'),
	(40,1,1,1,'Anadir una imagen',1365171923,'n'),
	(41,1,1,1,'Esta es una pregunta',1365171996,'n'),
	(42,1,1,1,'Una prueba mas',1365172042,'n'),
	(43,1,1,1,'Ya va la cosa',1365172667,'n'),
	(44,1,1,1,'Ya va la cosa',1365172879,'n'),
	(45,1,1,1,'Hola Hola',1365173015,'n'),
	(46,1,1,1,'Sign on my book',1365173197,'n'),
	(47,1,1,1,'Este es de audio',1365173371,'n'),
	(48,1,1,1,'Una nueva visualizacion',1365175581,'n'),
	(49,1,1,1,'Nueva',1365175620,'n'),
	(50,1,1,1,'buscando',1365176334,'n'),
	(51,1,1,1,'Ready to go',1365261588,'n'),
	(52,1,1,1,'Un Nuevo y ultimo mensaje para todos los que estan en esta red',1365351003,'n'),
	(53,1,1,1,'This is my message',1365437124,'n'),
	(54,1,1,1,'kj fdgjdfs jgjkdfshg ',1365456884,'n'),
	(55,1,1,1,'Quiero hacer una prueba con todo.',1365456981,'n'),
	(65,1,1,1,'Busqueteala',1365457184,'n'),
	(67,1,1,1,'vacilatela bien',1365457234,'n'),
	(63,1,1,1,'intentando salir a  flote',1365457123,'n'),
	(62,1,1,1,'Una nueva pregunta',1365457097,'n'),
	(66,1,1,1,'como',1365457200,'n'),
	(68,1,1,1,'Venga les digo algo',1365457788,'n'),
	(69,1,1,1,'Una nueva manera de buscar y subir cosas',1365459014,'n'),
	(70,1,1,1,'Una nueva manera de buscar y subir cosas',1365459038,'n'),
	(71,1,1,1,'La ultima forms',1365459086,'n'),
	(72,1,1,1,'Esta es subiendo con una foto por el API',1365459173,'n'),
	(73,1,1,1,'',1365463726,'n'),
	(74,1,1,1,'',1365464041,'n'),
	(75,1,1,1,'Hola como estamos',1365464055,'n'),
	(76,1,1,1,'Hola Aqui de nuevo 1',1365464201,'n'),
	(77,1,1,1,'',1365464347,'n'),
	(78,1,1,1,'tell me what 2',1365464359,'n'),
	(79,1,1,1,'',1365464431,'n'),
	(80,1,1,1,'aqui esta ek 3',1365464449,'n'),
	(81,1,1,1,'',1365465833,'n'),
	(82,1,1,1,'Aqui va con todo',1365465846,'n'),
	(83,1,1,1,'',1365466176,'n'),
	(84,1,1,1,'un vez mas',1365466211,'n'),
	(85,1,1,1,'krejh kergh ',1365466268,'n'),
	(86,1,1,1,'krejh kergh ',1365466293,'n'),
	(87,1,1,1,'krejh kergh ',1365466312,'n'),
	(88,1,1,1,'gsdf sg sdf',1365466320,'n'),
	(89,1,1,1,'kjdfhgk jdghs',1365466371,'n'),
	(90,1,1,1,'',1365466882,'n'),
	(91,1,1,1,'',1365468637,'n'),
	(92,1,1,1,'',1365468654,'n'),
	(93,1,1,1,'',1365468861,'n'),
	(94,1,1,1,'',1365468884,'n'),
	(95,1,1,1,'',1365469152,'n'),
	(96,1,1,1,'dsaf asd fasd',1365469162,'n'),
	(97,1,1,1,'dsaf asd fasd',1365469267,'n'),
	(98,1,1,1,'dsaf asd fasd',1365469289,'n'),
	(99,1,1,1,'dsaf asd fasd',1365469442,'n'),
	(100,1,1,1,'gkfds glksdj fglks',1365469472,'n'),
	(101,1,1,1,'',1365469641,'n'),
	(102,1,1,1,'',1365469793,'n'),
	(103,1,1,1,'',1365469836,'n'),
	(104,1,1,1,'',1365469875,'n'),
	(105,1,1,1,'',1365469917,'n'),
	(106,1,1,1,'',1365469919,'n'),
	(107,1,1,1,'',1365469919,'n'),
	(108,1,1,1,'',1365469942,'n'),
	(109,1,1,1,'',1365469956,'n'),
	(110,1,1,1,'',1365469972,'n'),
	(111,1,1,1,'',1365470007,'n'),
	(112,1,1,1,'',1365470074,'n'),
	(113,1,1,1,'',1365470090,'n'),
	(114,1,1,1,'',1365470132,'n'),
	(115,1,1,1,'',1365470147,'n'),
	(116,1,1,1,'',1365470157,'n'),
	(117,1,1,1,'',1365470180,'n'),
	(118,1,1,1,'',1365470200,'n'),
	(119,1,1,1,'',1365470223,'n'),
	(120,1,1,1,'',1365470364,'n'),
	(121,1,1,1,'',1365470429,'n'),
	(122,1,1,1,'',1365470473,'n'),
	(123,1,1,1,'sdafasdf',1365470480,'n'),
	(124,1,1,1,'',1365470501,'n'),
	(125,1,1,1,'',1365470549,'n'),
	(126,1,1,1,'',1365470735,'n'),
	(127,1,1,1,'',1365470759,'n'),
	(128,1,1,1,'',1365470761,'n'),
	(129,1,1,1,'',1365470777,'n'),
	(130,1,1,1,'',1365470797,'n'),
	(131,1,1,1,'',1365470811,'n'),
	(132,1,1,1,'',1365470820,'n'),
	(133,1,1,1,'',1365470897,'n'),
	(134,1,1,1,'',1365470933,'n'),
	(135,1,1,1,'hoal aklsjhdf lsdf',1365470947,'n'),
	(136,1,1,1,'kjfhdskjf jdsf lkjadsg ',1365470976,'n'),
	(137,1,1,1,'kjfhdskjf jdsf lkjadsg ',1365471022,'n'),
	(138,1,1,1,'kjfhdskjf jdsf lkjadsg ',1365471055,'n'),
	(139,1,1,1,'fkdgj lksdfgjl',1365471111,'n'),
	(140,1,1,1,'fkdgj lksdfgjl',1365471215,'n'),
	(141,1,1,1,' sgfdsg sdfg ',1365471226,'n'),
	(142,1,1,1,'lkf dslkgj lskdfjg',1365471274,'n'),
	(143,1,1,1,'wlkerjt wioertoiu erwt',1365471306,'n'),
	(144,1,1,1,'wlkerjt wioertoiu erwt',1365471342,'n'),
	(145,1,1,1,'ajkdsf kasdjfl;kadjsfljasdl;kfj ;alksdfj ;laskd ',1365471358,'n'),
	(146,1,1,1,'dfklgs ldfkjg l;sdfglsgds',1365471385,'n'),
	(147,1,1,1,'la rua',1365471424,'n'),
	(148,1,1,1,'ldk gjlkdfsjglksjdf g;ljs df;lgj s;lkdfgjs;ldfgj ;lsdfj g',1365471501,'n'),
	(149,1,1,1,'lerkjg w;e gjr;lwkegjr l;kwejrg',1365471532,'n'),
	(150,1,1,1,'lkj gslkdfjgklsdj fglksj dfgl;ds flgj s;dlfgj sl;dj fglsk;d gsld fjgsl;dj gsl;dj gsl;dfgj ;lsdj glsdjgs;lkdfj gs;ldfgj sl;dj gs;ld',1365471750,'n'),
	(151,1,1,1,'Busca que busca',1365472141,'n'),
	(152,1,1,1,'jldkf gjkdf gkldfj glk jsdflkgj lksdfj glkds jglkdj fg',1365472245,'n'),
	(153,0,1,1,'',0,'n'),
	(154,1,1,1,'fsdkjg ksdfjhgkjhsfdgkjhlskdfjhg kjsdfg sdfgds',1365473977,'n'),
	(155,1,1,1,'',1365474328,'n'),
	(156,1,1,1,'',1365474329,'n'),
	(157,1,1,1,'one more file',1365474359,'n'),
	(158,1,1,1,'',1365474384,'n'),
	(159,1,1,1,'',1365474412,'n'),
	(160,1,1,1,'',1365474414,'n'),
	(161,1,1,1,'dmgn,kjdfs ngkjs dfgjkhdfs kjh kjhdfg kjh sdfkg sdklfjgklsdg sdfg',1365474435,'n'),
	(162,1,1,1,'kjh gjkfdsh lksd fjgsldfhgkjh asdkjhf asdkjhf asdf sdf asd',1365474548,'n'),
	(163,1,1,1,'iodu foiasduf oaisduf oias dufoiasdu foiasdu faosdifu aosdiuf aoisduf ',1365474652,'n'),
	(164,1,1,1,'kjfdg sdfkjhg sdkfjhg sdfkjllg kljh dfskj gsdfg dfg ',1365474779,'n'),
	(165,1,1,1,'Venga que por fin funciono',1365474867,'n'),
	(166,1,1,1,'Asi si jugamos',1365474961,'n'),
	(167,1,1,1,'lkj fkldalksjdflasdkjf',1365475004,'n'),
	(168,1,1,1,'Ya terminamos las incubaciones de esta manera',1365475181,'n'),
	(169,1,1,1,'Este es un audio file',1365475279,'n'),
	(170,1,1,1,'lfdlkguoiu oi dufgoiu ',1365475485,'n'),
	(171,0,1,1,'Hola mi nombre es Khan',1365523002,'n'),
	(172,1,1,1,'Hola soy Kanh',1365523098,'n'),
	(173,1,1,1,'A question',1365525058,'n'),
	(174,1,1,1,'With a picture huikbhyikhubik',1365525099,'n'),
	(175,1,1,1,'A audio file',1365525139,'n'),
	(176,1,1,1,'El acuerdo de todos',1365526584,'n'),
	(177,1,1,1,'Este es un videito',1365529529,'n'),
	(178,1,1,1,'Este es un videito',1365529567,'n'),
	(179,1,1,1,'Este es un videito',1365529751,'n');

/*!40000 ALTER TABLE `exp_friends_status` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_global_variables
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_global_variables`;

CREATE TABLE `exp_global_variables` (
  `variable_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `variable_name` varchar(50) NOT NULL,
  `variable_data` text NOT NULL,
  PRIMARY KEY (`variable_id`),
  KEY `variable_name` (`variable_name`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_html_buttons
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_html_buttons`;

CREATE TABLE `exp_html_buttons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `member_id` int(10) NOT NULL DEFAULT '0',
  `tag_name` varchar(32) NOT NULL,
  `tag_open` varchar(120) NOT NULL,
  `tag_close` varchar(120) NOT NULL,
  `accesskey` varchar(32) NOT NULL,
  `tag_order` int(3) unsigned NOT NULL,
  `tag_row` char(1) NOT NULL DEFAULT '1',
  `classname` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_html_buttons` WRITE;
/*!40000 ALTER TABLE `exp_html_buttons` DISABLE KEYS */;

INSERT INTO `exp_html_buttons` (`id`, `site_id`, `member_id`, `tag_name`, `tag_open`, `tag_close`, `accesskey`, `tag_order`, `tag_row`, `classname`)
VALUES
	(1,1,0,'b','<strong>','</strong>','b',1,'1','btn_b'),
	(2,1,0,'i','<em>','</em>','i',2,'1','btn_i'),
	(3,1,0,'blockquote','<blockquote>','</blockquote>','q',3,'1','btn_blockquote'),
	(4,1,0,'a','<a href=\"[![Link:!:http://]!]\"(!( title=\"[![Title]!]\")!)>','</a>','a',4,'1','btn_a'),
	(5,1,0,'img','<img src=\"[![Link:!:http://]!]\" alt=\"[![Alternative text]!]\" />','','',5,'1','btn_img');

/*!40000 ALTER TABLE `exp_html_buttons` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_layout_publish
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_layout_publish`;

CREATE TABLE `exp_layout_publish` (
  `layout_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `member_group` int(4) unsigned NOT NULL DEFAULT '0',
  `channel_id` int(4) unsigned NOT NULL DEFAULT '0',
  `field_layout` text,
  PRIMARY KEY (`layout_id`),
  KEY `site_id` (`site_id`),
  KEY `member_group` (`member_group`),
  KEY `channel_id` (`channel_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_member_bulletin_board
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_member_bulletin_board`;

CREATE TABLE `exp_member_bulletin_board` (
  `bulletin_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender_id` int(10) unsigned NOT NULL,
  `bulletin_group` int(8) unsigned NOT NULL,
  `bulletin_date` int(10) unsigned NOT NULL,
  `hash` varchar(10) NOT NULL DEFAULT '',
  `bulletin_expires` int(10) unsigned NOT NULL DEFAULT '0',
  `bulletin_message` text NOT NULL,
  PRIMARY KEY (`bulletin_id`),
  KEY `sender_id` (`sender_id`),
  KEY `hash` (`hash`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_member_data
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_member_data`;

CREATE TABLE `exp_member_data` (
  `member_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_member_data` WRITE;
/*!40000 ALTER TABLE `exp_member_data` DISABLE KEYS */;

INSERT INTO `exp_member_data` (`member_id`)
VALUES
	(1),
	(3),
	(4),
	(5),
	(6),
	(7),
	(8),
	(10),
	(14),
	(15),
	(16),
	(18),
	(22),
	(23);

/*!40000 ALTER TABLE `exp_member_data` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_member_fields
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_member_fields`;

CREATE TABLE `exp_member_fields` (
  `m_field_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `m_field_name` varchar(32) NOT NULL,
  `m_field_label` varchar(50) NOT NULL,
  `m_field_description` text NOT NULL,
  `m_field_type` varchar(12) NOT NULL DEFAULT 'text',
  `m_field_list_items` text NOT NULL,
  `m_field_ta_rows` tinyint(2) DEFAULT '8',
  `m_field_maxl` smallint(3) NOT NULL,
  `m_field_width` varchar(6) NOT NULL,
  `m_field_search` char(1) NOT NULL DEFAULT 'y',
  `m_field_required` char(1) NOT NULL DEFAULT 'n',
  `m_field_public` char(1) NOT NULL DEFAULT 'y',
  `m_field_reg` char(1) NOT NULL DEFAULT 'n',
  `m_field_cp_reg` char(1) NOT NULL DEFAULT 'n',
  `m_field_fmt` char(5) NOT NULL DEFAULT 'none',
  `m_field_order` int(3) unsigned NOT NULL,
  PRIMARY KEY (`m_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_member_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_member_groups`;

CREATE TABLE `exp_member_groups` (
  `group_id` smallint(4) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_title` varchar(100) NOT NULL,
  `group_description` text NOT NULL,
  `is_locked` char(1) NOT NULL DEFAULT 'y',
  `can_view_offline_system` char(1) NOT NULL DEFAULT 'n',
  `can_view_online_system` char(1) NOT NULL DEFAULT 'y',
  `can_access_cp` char(1) NOT NULL DEFAULT 'y',
  `can_access_content` char(1) NOT NULL DEFAULT 'n',
  `can_access_publish` char(1) NOT NULL DEFAULT 'n',
  `can_access_edit` char(1) NOT NULL DEFAULT 'n',
  `can_access_files` char(1) NOT NULL DEFAULT 'n',
  `can_access_fieldtypes` char(1) NOT NULL DEFAULT 'n',
  `can_access_design` char(1) NOT NULL DEFAULT 'n',
  `can_access_addons` char(1) NOT NULL DEFAULT 'n',
  `can_access_modules` char(1) NOT NULL DEFAULT 'n',
  `can_access_extensions` char(1) NOT NULL DEFAULT 'n',
  `can_access_accessories` char(1) NOT NULL DEFAULT 'n',
  `can_access_plugins` char(1) NOT NULL DEFAULT 'n',
  `can_access_members` char(1) NOT NULL DEFAULT 'n',
  `can_access_admin` char(1) NOT NULL DEFAULT 'n',
  `can_access_sys_prefs` char(1) NOT NULL DEFAULT 'n',
  `can_access_content_prefs` char(1) NOT NULL DEFAULT 'n',
  `can_access_tools` char(1) NOT NULL DEFAULT 'n',
  `can_access_comm` char(1) NOT NULL DEFAULT 'n',
  `can_access_utilities` char(1) NOT NULL DEFAULT 'n',
  `can_access_data` char(1) NOT NULL DEFAULT 'n',
  `can_access_logs` char(1) NOT NULL DEFAULT 'n',
  `can_admin_channels` char(1) NOT NULL DEFAULT 'n',
  `can_admin_upload_prefs` char(1) NOT NULL DEFAULT 'n',
  `can_admin_design` char(1) NOT NULL DEFAULT 'n',
  `can_admin_members` char(1) NOT NULL DEFAULT 'n',
  `can_delete_members` char(1) NOT NULL DEFAULT 'n',
  `can_admin_mbr_groups` char(1) NOT NULL DEFAULT 'n',
  `can_admin_mbr_templates` char(1) NOT NULL DEFAULT 'n',
  `can_ban_users` char(1) NOT NULL DEFAULT 'n',
  `can_admin_modules` char(1) NOT NULL DEFAULT 'n',
  `can_admin_templates` char(1) NOT NULL DEFAULT 'n',
  `can_admin_accessories` char(1) NOT NULL DEFAULT 'n',
  `can_edit_categories` char(1) NOT NULL DEFAULT 'n',
  `can_delete_categories` char(1) NOT NULL DEFAULT 'n',
  `can_view_other_entries` char(1) NOT NULL DEFAULT 'n',
  `can_edit_other_entries` char(1) NOT NULL DEFAULT 'n',
  `can_assign_post_authors` char(1) NOT NULL DEFAULT 'n',
  `can_delete_self_entries` char(1) NOT NULL DEFAULT 'n',
  `can_delete_all_entries` char(1) NOT NULL DEFAULT 'n',
  `can_view_other_comments` char(1) NOT NULL DEFAULT 'n',
  `can_edit_own_comments` char(1) NOT NULL DEFAULT 'n',
  `can_delete_own_comments` char(1) NOT NULL DEFAULT 'n',
  `can_edit_all_comments` char(1) NOT NULL DEFAULT 'n',
  `can_delete_all_comments` char(1) NOT NULL DEFAULT 'n',
  `can_moderate_comments` char(1) NOT NULL DEFAULT 'n',
  `can_send_email` char(1) NOT NULL DEFAULT 'n',
  `can_send_cached_email` char(1) NOT NULL DEFAULT 'n',
  `can_email_member_groups` char(1) NOT NULL DEFAULT 'n',
  `can_email_mailinglist` char(1) NOT NULL DEFAULT 'n',
  `can_email_from_profile` char(1) NOT NULL DEFAULT 'n',
  `can_view_profiles` char(1) NOT NULL DEFAULT 'n',
  `can_edit_html_buttons` char(1) NOT NULL DEFAULT 'n',
  `can_delete_self` char(1) NOT NULL DEFAULT 'n',
  `mbr_delete_notify_emails` varchar(255) DEFAULT NULL,
  `can_post_comments` char(1) NOT NULL DEFAULT 'n',
  `exclude_from_moderation` char(1) NOT NULL DEFAULT 'n',
  `can_search` char(1) NOT NULL DEFAULT 'n',
  `search_flood_control` mediumint(5) unsigned NOT NULL,
  `can_send_private_messages` char(1) NOT NULL DEFAULT 'n',
  `prv_msg_send_limit` smallint(5) unsigned NOT NULL DEFAULT '20',
  `prv_msg_storage_limit` smallint(5) unsigned NOT NULL DEFAULT '60',
  `can_attach_in_private_messages` char(1) NOT NULL DEFAULT 'n',
  `can_send_bulletins` char(1) NOT NULL DEFAULT 'n',
  `include_in_authorlist` char(1) NOT NULL DEFAULT 'n',
  `include_in_memberlist` char(1) NOT NULL DEFAULT 'y',
  `include_in_mailinglists` char(1) NOT NULL DEFAULT 'y',
  PRIMARY KEY (`group_id`,`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_member_groups` WRITE;
/*!40000 ALTER TABLE `exp_member_groups` DISABLE KEYS */;

INSERT INTO `exp_member_groups` (`group_id`, `site_id`, `group_title`, `group_description`, `is_locked`, `can_view_offline_system`, `can_view_online_system`, `can_access_cp`, `can_access_content`, `can_access_publish`, `can_access_edit`, `can_access_files`, `can_access_fieldtypes`, `can_access_design`, `can_access_addons`, `can_access_modules`, `can_access_extensions`, `can_access_accessories`, `can_access_plugins`, `can_access_members`, `can_access_admin`, `can_access_sys_prefs`, `can_access_content_prefs`, `can_access_tools`, `can_access_comm`, `can_access_utilities`, `can_access_data`, `can_access_logs`, `can_admin_channels`, `can_admin_upload_prefs`, `can_admin_design`, `can_admin_members`, `can_delete_members`, `can_admin_mbr_groups`, `can_admin_mbr_templates`, `can_ban_users`, `can_admin_modules`, `can_admin_templates`, `can_admin_accessories`, `can_edit_categories`, `can_delete_categories`, `can_view_other_entries`, `can_edit_other_entries`, `can_assign_post_authors`, `can_delete_self_entries`, `can_delete_all_entries`, `can_view_other_comments`, `can_edit_own_comments`, `can_delete_own_comments`, `can_edit_all_comments`, `can_delete_all_comments`, `can_moderate_comments`, `can_send_email`, `can_send_cached_email`, `can_email_member_groups`, `can_email_mailinglist`, `can_email_from_profile`, `can_view_profiles`, `can_edit_html_buttons`, `can_delete_self`, `mbr_delete_notify_emails`, `can_post_comments`, `exclude_from_moderation`, `can_search`, `search_flood_control`, `can_send_private_messages`, `prv_msg_send_limit`, `prv_msg_storage_limit`, `can_attach_in_private_messages`, `can_send_bulletins`, `include_in_authorlist`, `include_in_memberlist`, `include_in_mailinglists`)
VALUES
	(1,1,'Super Admins','','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','','y','y','y',0,'y',20,60,'y','y','y','y','y'),
	(2,1,'Banned','','y','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','','n','n','n',60,'n',20,60,'n','n','n','n','n'),
	(3,1,'Guests','','y','n','y','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','y','n','n','n','n','','y','n','y',15,'n',20,60,'n','n','n','n','n'),
	(4,1,'Pending','','y','n','y','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','y','n','n','n','n','','y','n','y',15,'n',20,60,'n','n','n','n','n'),
	(5,1,'Members','','y','n','y','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','y','y','y','y','y','y','y','y','y','y','y','n','n','n','n','y','y','y','n','','y','y','y',10,'y',20,60,'y','n','n','y','y');

/*!40000 ALTER TABLE `exp_member_groups` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_member_homepage
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_member_homepage`;

CREATE TABLE `exp_member_homepage` (
  `member_id` int(10) unsigned NOT NULL,
  `recent_entries` char(1) NOT NULL DEFAULT 'l',
  `recent_entries_order` int(3) unsigned NOT NULL DEFAULT '0',
  `recent_comments` char(1) NOT NULL DEFAULT 'l',
  `recent_comments_order` int(3) unsigned NOT NULL DEFAULT '0',
  `recent_members` char(1) NOT NULL DEFAULT 'n',
  `recent_members_order` int(3) unsigned NOT NULL DEFAULT '0',
  `site_statistics` char(1) NOT NULL DEFAULT 'r',
  `site_statistics_order` int(3) unsigned NOT NULL DEFAULT '0',
  `member_search_form` char(1) NOT NULL DEFAULT 'n',
  `member_search_form_order` int(3) unsigned NOT NULL DEFAULT '0',
  `notepad` char(1) NOT NULL DEFAULT 'r',
  `notepad_order` int(3) unsigned NOT NULL DEFAULT '0',
  `bulletin_board` char(1) NOT NULL DEFAULT 'r',
  `bulletin_board_order` int(3) unsigned NOT NULL DEFAULT '0',
  `pmachine_news_feed` char(1) NOT NULL DEFAULT 'n',
  `pmachine_news_feed_order` int(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_member_homepage` WRITE;
/*!40000 ALTER TABLE `exp_member_homepage` DISABLE KEYS */;

INSERT INTO `exp_member_homepage` (`member_id`, `recent_entries`, `recent_entries_order`, `recent_comments`, `recent_comments_order`, `recent_members`, `recent_members_order`, `site_statistics`, `site_statistics_order`, `member_search_form`, `member_search_form_order`, `notepad`, `notepad_order`, `bulletin_board`, `bulletin_board_order`, `pmachine_news_feed`, `pmachine_news_feed_order`)
VALUES
	(1,'l',1,'l',2,'n',0,'r',1,'n',0,'r',2,'r',0,'l',0),
	(3,'l',0,'l',0,'n',0,'r',0,'n',0,'r',0,'r',0,'n',0),
	(4,'l',0,'l',0,'n',0,'r',0,'n',0,'r',0,'r',0,'n',0),
	(5,'l',0,'l',0,'n',0,'r',0,'n',0,'r',0,'r',0,'n',0),
	(6,'l',0,'l',0,'n',0,'r',0,'n',0,'r',0,'r',0,'n',0),
	(7,'l',0,'l',0,'n',0,'r',0,'n',0,'r',0,'r',0,'n',0),
	(8,'l',0,'l',0,'n',0,'r',0,'n',0,'r',0,'r',0,'n',0),
	(23,'l',0,'l',0,'n',0,'r',0,'n',0,'r',0,'r',0,'n',0),
	(10,'l',0,'l',0,'n',0,'r',0,'n',0,'r',0,'r',0,'n',0),
	(15,'l',0,'l',0,'n',0,'r',0,'n',0,'r',0,'r',0,'n',0),
	(14,'l',0,'l',0,'n',0,'r',0,'n',0,'r',0,'r',0,'n',0),
	(16,'l',0,'l',0,'n',0,'r',0,'n',0,'r',0,'r',0,'n',0),
	(18,'l',0,'l',0,'n',0,'r',0,'n',0,'r',0,'r',0,'n',0),
	(22,'l',0,'l',0,'n',0,'r',0,'n',0,'r',0,'r',0,'n',0);

/*!40000 ALTER TABLE `exp_member_homepage` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_member_search
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_member_search`;

CREATE TABLE `exp_member_search` (
  `search_id` varchar(32) NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `search_date` int(10) unsigned NOT NULL,
  `keywords` varchar(200) NOT NULL,
  `fields` varchar(200) NOT NULL,
  `member_id` int(10) unsigned NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `total_results` int(8) unsigned NOT NULL,
  `query` text NOT NULL,
  PRIMARY KEY (`search_id`),
  KEY `member_id` (`member_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_members
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_members`;

CREATE TABLE `exp_members` (
  `member_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` smallint(4) NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL,
  `screen_name` varchar(50) NOT NULL,
  `password` varchar(128) NOT NULL,
  `salt` varchar(128) NOT NULL DEFAULT '',
  `unique_id` varchar(40) NOT NULL,
  `crypt_key` varchar(40) DEFAULT NULL,
  `authcode` varchar(10) DEFAULT NULL,
  `email` varchar(72) NOT NULL,
  `url` varchar(150) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `occupation` varchar(80) DEFAULT NULL,
  `interests` varchar(120) DEFAULT NULL,
  `bday_d` int(2) DEFAULT NULL,
  `bday_m` int(2) DEFAULT NULL,
  `bday_y` int(4) DEFAULT NULL,
  `aol_im` varchar(50) DEFAULT NULL,
  `yahoo_im` varchar(50) DEFAULT NULL,
  `msn_im` varchar(50) DEFAULT NULL,
  `icq` varchar(50) DEFAULT NULL,
  `bio` text,
  `signature` text,
  `avatar_filename` varchar(120) DEFAULT NULL,
  `avatar_width` int(4) unsigned DEFAULT NULL,
  `avatar_height` int(4) unsigned DEFAULT NULL,
  `photo_filename` varchar(120) DEFAULT NULL,
  `photo_width` int(4) unsigned DEFAULT NULL,
  `photo_height` int(4) unsigned DEFAULT NULL,
  `sig_img_filename` varchar(120) DEFAULT NULL,
  `sig_img_width` int(4) unsigned DEFAULT NULL,
  `sig_img_height` int(4) unsigned DEFAULT NULL,
  `ignore_list` text,
  `private_messages` int(4) unsigned NOT NULL DEFAULT '0',
  `accept_messages` char(1) NOT NULL DEFAULT 'y',
  `last_view_bulletins` int(10) NOT NULL DEFAULT '0',
  `last_bulletin_date` int(10) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `join_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_visit` int(10) unsigned NOT NULL DEFAULT '0',
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `total_entries` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_comments` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_forum_topics` mediumint(8) NOT NULL DEFAULT '0',
  `total_forum_posts` mediumint(8) NOT NULL DEFAULT '0',
  `friends_group_ratings_notify` char(1) NOT NULL DEFAULT 'y',
  `friends_group_favorites_notify` char(1) NOT NULL DEFAULT 'y',
  `friends_group_joins_notify` char(1) NOT NULL DEFAULT 'y',
  `friends_group_comments_notify` char(1) NOT NULL DEFAULT 'y',
  `friends_group_entries_notify` char(1) NOT NULL DEFAULT 'y',
  `total_friends` int(10) unsigned NOT NULL DEFAULT '0',
  `total_reciprocal_friends` int(10) unsigned NOT NULL DEFAULT '0',
  `total_blocked_friends` int(10) unsigned NOT NULL DEFAULT '0',
  `friends_opt_out` char(1) DEFAULT 'n',
  `friends_groups_private` int(10) unsigned NOT NULL DEFAULT '0',
  `friends_groups_public` int(10) unsigned NOT NULL DEFAULT '0',
  `friends_total_hugs` int(10) unsigned NOT NULL DEFAULT '0',
  `last_entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_comment_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_forum_post_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_email_date` int(10) unsigned NOT NULL DEFAULT '0',
  `in_authorlist` char(1) NOT NULL DEFAULT 'n',
  `accept_admin_email` char(1) NOT NULL DEFAULT 'y',
  `accept_user_email` char(1) NOT NULL DEFAULT 'y',
  `notify_by_default` char(1) NOT NULL DEFAULT 'y',
  `notify_of_pm` char(1) NOT NULL DEFAULT 'y',
  `display_avatars` char(1) NOT NULL DEFAULT 'y',
  `display_signatures` char(1) NOT NULL DEFAULT 'y',
  `parse_smileys` char(1) NOT NULL DEFAULT 'y',
  `smart_notifications` char(1) NOT NULL DEFAULT 'y',
  `language` varchar(50) NOT NULL,
  `timezone` varchar(8) NOT NULL,
  `daylight_savings` char(1) NOT NULL DEFAULT 'n',
  `localization_is_site_default` char(1) NOT NULL DEFAULT 'n',
  `time_format` char(2) NOT NULL DEFAULT 'us',
  `cp_theme` varchar(32) DEFAULT NULL,
  `profile_theme` varchar(32) DEFAULT NULL,
  `forum_theme` varchar(32) DEFAULT NULL,
  `tracker` text,
  `template_size` varchar(2) NOT NULL DEFAULT '20',
  `notepad` text,
  `notepad_size` varchar(2) NOT NULL DEFAULT '18',
  `quick_links` text,
  `quick_tabs` text,
  `show_sidebar` char(1) NOT NULL DEFAULT 'n',
  `pmember_id` int(10) NOT NULL DEFAULT '0',
  `rte_enabled` char(1) NOT NULL DEFAULT 'y',
  `rte_toolset_id` int(10) NOT NULL DEFAULT '0',
  `profile_views` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`member_id`),
  KEY `group_id` (`group_id`),
  KEY `unique_id` (`unique_id`),
  KEY `password` (`password`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_members` WRITE;
/*!40000 ALTER TABLE `exp_members` DISABLE KEYS */;

INSERT INTO `exp_members` (`member_id`, `group_id`, `username`, `screen_name`, `password`, `salt`, `unique_id`, `crypt_key`, `authcode`, `email`, `url`, `location`, `occupation`, `interests`, `bday_d`, `bday_m`, `bday_y`, `aol_im`, `yahoo_im`, `msn_im`, `icq`, `bio`, `signature`, `avatar_filename`, `avatar_width`, `avatar_height`, `photo_filename`, `photo_width`, `photo_height`, `sig_img_filename`, `sig_img_width`, `sig_img_height`, `ignore_list`, `private_messages`, `accept_messages`, `last_view_bulletins`, `last_bulletin_date`, `ip_address`, `join_date`, `last_visit`, `last_activity`, `total_entries`, `total_comments`, `total_forum_topics`, `total_forum_posts`, `friends_group_ratings_notify`, `friends_group_favorites_notify`, `friends_group_joins_notify`, `friends_group_comments_notify`, `friends_group_entries_notify`, `total_friends`, `total_reciprocal_friends`, `total_blocked_friends`, `friends_opt_out`, `friends_groups_private`, `friends_groups_public`, `friends_total_hugs`, `last_entry_date`, `last_comment_date`, `last_forum_post_date`, `last_email_date`, `in_authorlist`, `accept_admin_email`, `accept_user_email`, `notify_by_default`, `notify_of_pm`, `display_avatars`, `display_signatures`, `parse_smileys`, `smart_notifications`, `language`, `timezone`, `daylight_savings`, `localization_is_site_default`, `time_format`, `cp_theme`, `profile_theme`, `forum_theme`, `tracker`, `template_size`, `notepad`, `notepad_size`, `quick_links`, `quick_tabs`, `show_sidebar`, `pmember_id`, `rte_enabled`, `rte_toolset_id`, `profile_views`)
VALUES
	(1,1,'hmarin','Herman Marin','d7e0d0243da7bda153a9924abcf493c32866020e0632522554e7c0b9709a4a2075d2877e4d8b19c44f6317a9a0e2d6120e1cc0e509bbd372de7c7ca70833c307','#!YL{%c?/Wk&\'s.IR_*htTN+?c6j(]SCesh;I%k-7y#3osE`vvQsI\";|SRNK~5~3L~/i3ftgx>#090jVIcYhE*`#tUzt\\Y7n=Zz$1:L1dv(*QnvKk7\"lN>!A4hUH3KU]','a72c5557226218689755f462fafd64cecef7a631','d45f4137b1a361faa7646dee585c2defe5037f9b',NULL,'herman@urgentcontent.com',NULL,'Guayaquil, Ecuador','Paris, France','Music, futbol',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Aqui va la informaasd.f,m,.m,dsafcion de mi perfil',NULL,NULL,NULL,NULL,'photo_1.jpg',400,400,NULL,NULL,NULL,NULL,0,'y',0,0,'160.39.4.177',1363193204,1365475623,1365536315,145,0,0,0,'y','y','y','y','y',5,2,0,'n',0,0,0,1365536447,0,0,0,'n','y','y','y','y','y','n','y','y','english','UM5','n','n','us',NULL,NULL,NULL,NULL,'20',NULL,'18','',NULL,'n',0,'y',0,227),
	(3,5,'coloradomarin','El Colorado','f8cb6a1e0b242fa3d356ce86e61c89efcee4beea417a8ea6382bd6b8c2faaa45e83cd656d83ce8ae1394ff3c36b4ed6e7480452edff6be5b4996654a345c0173','YIn~3fwLEqtbM@Jn(eqKq)t#\"ENsy:q+Je46LPq?c-\\T^*S:_,oZ\'vnv\"6RC^FiZqI@K2X}MhbYcVZ$CP%46%&j6edw{xr4|F2=0`e4U&V]Ol..E%NJ\'rE6fT./|p\\Zg','c533f2f1e4a86538ffdfb46fd0717261983d2022','52d503a9649139523ee167ecb5125871e43aaffb','','coloradomarin@gmail.com','','Lima, Peru','New York','traveling, futbol, music',0,0,0,'','','','','','',NULL,NULL,NULL,'photo_3.jpg',400,400,NULL,NULL,NULL,NULL,0,'y',0,0,'160.39.4.177',1363208756,1364740661,1364769281,0,0,0,0,'y','y','y','y','y',5,2,0,'n',0,0,0,0,0,0,0,'n','y','y','y','y','y','n','y','y','','','n','n','',NULL,NULL,NULL,NULL,'20',NULL,'18',NULL,NULL,'n',0,'y',0,500),
	(4,5,'hermanmarin','Hermancinto','1c4103b8490d390e0defdf7f5f6be96861de98d014e80ab4754a65003aa1d144029f9c73945c4facb4cb5a02722e304e775ee926ce2ce36b8ed90029744224ed','?=sI|{Vf+vXWD\'_G*7BwA5.rtcpn<b?0FzV.vurTpEAz4Z6p:F>H*UFpnK+\",};,~i`F(W${oOv(Z,kQ]j&[ZSl<@tz>aEvhIQkx9DCe_b^<y{z6<0p\'zI.nlO)IHJ*`','29983a1e1a90b7eae0b36e984ede7822bc660cc7','947a11911e23fc51fd0a07a7035a17f4cfe84829','','herman.marin@progresoec.org','','Ecuador','Portoviejo, Ecuador','Music',0,0,0,'','','','','','',NULL,NULL,NULL,'photo_4.jpg',100,100,NULL,NULL,NULL,NULL,0,'y',0,0,'160.39.4.177',1363212237,1363962668,1364680861,0,0,0,0,'y','y','y','y','y',0,0,0,'n',0,0,0,0,0,0,0,'n','y','y','y','y','y','n','y','y','','','n','n','',NULL,NULL,NULL,NULL,'20',NULL,'18',NULL,NULL,'n',0,'y',0,416),
	(5,5,'Skyler','Skyler Gross','e26672ce7cd1dc5fc4489f6294d44fa510aa5cb2a0d660c25ac53e8d3324171bfc7d1b3fe39a4f8445794ce495e96a75dd62a99c267873bb33871356c24345bc','asLJc&;.1+#wW)`[vl(f_}^4kMjfC+]J<k%y\'\\+rJ#>bU`.NYo/@K2|@VDR6R(Fto=&N:>wR5>Ugg\'i\'TEj$\'w>kM`^ZSh:u}))fhWe33=ePt^\\K.DLzh)uFaAI@Ik-H','5cf6fe983aa4a44b332b13f2e72292842424cba1',NULL,'','Skyler@urgentcontent.com','','','','',0,0,0,'','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'50.75.232.238',1363304149,0,0,0,0,0,0,'y','y','y','y','y',0,0,0,'n',0,0,0,0,0,0,0,'n','y','y','y','y','y','n','y','y','','','n','n','',NULL,NULL,NULL,NULL,'20',NULL,'18',NULL,NULL,'n',0,'y',0,62),
	(6,5,'Ayuuser','Herman Ayu','d9ee558c351a6047a1caccb975926a81ad715e63f198aef5d952ad7bbc58eeb09b5f5b45b093132c482b16a641e0c0b265bcbda5ae787bfaeeab7d3e58fe20c4','SX=J%PenpA^HzwVnSd1n}!L<4=Pb,kjV-1NiwmV6U;]+%:;5(9!X;$}07:-O;VgU[!PO(5rBc\\A*i--&#{uk\\vmCXjd(MABk(JUlj2)E=~2)OKsH%=LaE&UQY\'*hh79n','264f8cf3f4e187e53abe070a49c78ba6e79ee5b8','dee5984bce73c8ebfd84792fe1c934ddb20e83c4','','herman.marin@ayuinc.com','','Quito, Ecuador','London, UK','Travel, sky, sing',0,0,0,'','','','','','',NULL,NULL,NULL,'photo_6.jpg',598,800,NULL,NULL,NULL,NULL,0,'y',0,0,'187.191.13.19',1363625828,1364766236,1364829328,0,0,0,0,'y','y','y','y','y',4,2,0,'n',0,0,0,0,0,0,0,'n','y','y','y','y','y','n','y','y','','','n','n','',NULL,NULL,NULL,NULL,'20',NULL,'18',NULL,NULL,'n',0,'y',0,415),
	(7,1,'bwhitton','bwhitton','b877fde611855094149a427dc9125600f42ab29e4536c30c3e6c76dc7bcc9f383014e29202889f7921ed2355e396bbf21c7b074d4ea2c84d3617330cbd27a551','(!+I|FCT(/O5m5Y@Pp#3nn/f2&Dq0t;*3<(;00U5*{!L0D5E\"lF-zKV!u&5<xA8HYdcM/8`oWvVn-aj)pbGh%bz\\UCOD|p_6[`|wER6%q2q4l1k<#.#r9>AEF~}XWxzG','8ceb78642b625d5a94dd54105997c01c92e50332','0ae0ee85a8d7956031715d7269aeb5cbcf76ff27',NULL,'brian@urgentcontent.com','','','','',NULL,NULL,NULL,'','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'187.191.13.19',1363628944,1365004653,1365014906,1,0,0,0,'y','y','y','y','y',0,0,0,'n',0,0,0,1365004172,0,0,0,'n','y','y','y','y','y','n','y','y','english','UM5','n','n','us',NULL,NULL,NULL,NULL,'20',NULL,'18',NULL,NULL,'n',0,'y',0,199),
	(8,1,'chris.muro','chris.muro','ec85316253ef44a2a2271a58d99b939a168d83dc31ceb79a759542ed9fd019ef018e16898a3d342f4e9c628c81bc68060d352a21cc585572535e45caea7e98f0','IksU4OnQg:JsH42F#Ksuk+po8dt$23\'DF<:-/t2;b%^u\'}v*TX[-C;p2081=;OlEHMZ6BqOSnMPusA).g0%)t_IP5mO:OMe{SNB^Dddwpyb)=#-!#QZ&+8Bav]LrSTzG','46e601e27e8afd0dc2e1c1d011ace7fd9a084cf5','88879deffad87101e009678e89c8995846debc02',NULL,'christopher@muro.org','','','','',NULL,NULL,NULL,'','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'189.190.203.22',1363968789,1364961400,1365002907,0,0,0,0,'y','y','y','y','y',0,0,0,'n',0,0,0,0,0,0,0,'n','y','y','y','y','y','n','y','y','english','UM5','n','n','us',NULL,NULL,NULL,NULL,'20',NULL,'18',NULL,NULL,'n',0,'y',0,373),
	(23,5,'Anonymus','Anonymus','d448ece531e5b714875c829ac298504246cf11f9c5cfc77c12ce1ca5cc4399b4bf79f5215d04bcae33a8c94098b4919a67bbf5d648613d0dd625b463108e6319','0y&O],Lws8?2;?EjuhSN(\'Ry=M3d#4ils%W{b\\9^w&GH&k-\'KL*))hj|IfHAW/KwJ}Ph^:NwLL0[e-\\-D|$]^V(MN`(%Lx~F54\'<C1&P1rva2PsCKyp|8=}\\3};ACqQS','34156efbcd8dedfca0ab3fd57746693c48659078','cba740cbc27c7d6373d9853f3961bef55ac5b214',NULL,'Anonymus@shanghai.nyu.edu','','','','',NULL,NULL,NULL,'','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'160.39.4.177',1364937348,0,0,0,0,0,0,'y','y','y','y','y',0,0,0,'n',0,0,0,0,0,0,0,'n','y','y','y','y','y','y','y','y','english','UM5','n','n','us',NULL,NULL,NULL,NULL,'20',NULL,'18',NULL,NULL,'n',0,'y',0,0),
	(10,5,'testuser1','Test User 1','84d83eaca6c8f0d428f66950353866dc6b78092c','<m?L|Vvz%HWQ8t~VRG:ZWf{XBfXrg5WVj./}FgadJ?NS*x|9u&2Ae^n2Fet/Sa?=~q4YIFg=^eM>\'4N\"Mpa!)4i.Q4@a$(~zyJ)kE8G4H!3dk\"$j?/lg]7ReX*!/;Atf','a9aaea443c0d81c082ddfabd8651ed8ed4cd9dee','8437e018900eabc23b7d0bb65927805f55507ac5',NULL,'testuser1@nyu.edu','','','','',NULL,NULL,NULL,'','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'71.237.169.81',1364783121,1364785162,1364789882,0,0,0,0,'y','y','y','y','y',0,0,0,'n',0,0,0,0,0,0,0,'n','y','y','y','y','y','y','y','y','english','UM5','n','n','us',NULL,NULL,NULL,NULL,'20',NULL,'18',NULL,NULL,'n',0,'y',0,3),
	(15,5,'testuser3','testuser3','2703688caaee7ea31f4bf57c8f1de8e5eb74b3007583232a530d7cbd2cd88a80a0a75bf855f0bac0f492779a7feebbe92b80e7a8a095339277524980a9ba49a3','9%Al`B2biwN``7\'#Yv_U[VE*:$a0T%_0Q2dU>zz(xc1`FnA0!#4O.scDDun#2$gM)!CwnG9<W|[hk=Pl+i0l&yr)if6#H-o_2A:;i)-?4e++GV~&C8tfv%z@cGfPG1ff','e36fb2dfb525527b2a0c0997dcb5f0cd93620bde','f724542c663afbc6905036df1145f49f6329fb3b',NULL,'testuser3@nyu.edu',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'0.0.0.0',1364791181,1364791226,1364850889,0,0,0,0,'y','y','y','y','y',0,0,0,'n',0,0,0,0,0,0,0,'n','y','y','y','y','y','y','y','y','english','UM5','n','n','eu',NULL,NULL,NULL,NULL,'20',NULL,'18',NULL,NULL,'n',0,'y',0,2),
	(14,5,'testuser2','testuser2','08cfe7a35ef709c6183648a1903db7fe152c5f1987a258bee007de1f17a0ced9776ce90208f1c33f7e42851805c891be08b3dda84dccb7c74fc620846821e0c6','pRIP94I\'YVyywcN%n\"-#tTYG,lIKt/XL/CGutB42:fD2&.8BdF6jAJmB:iweKm;FdQzX!{-zz[4lFH7yCi@R@Hz!GIKVo4ZYFeC3LSqsYTq&*Z-`_CxagIqSNUd-xL`K','fc8261be0135343a7db7c57b68a5cd7916574cbd','52976a3871082036dc1dbb43f2934fa6bd16f560',NULL,'testuser2@nyu.edu',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'0.0.0.0',1364790843,1364790992,1364850795,0,0,0,0,'y','y','y','y','y',0,0,0,'n',0,0,0,0,0,0,0,'n','y','y','y','y','y','y','y','y','english','UM5','n','n','eu',NULL,NULL,NULL,NULL,'20',NULL,'18',NULL,NULL,'n',0,'y',0,1),
	(16,5,'bew216','bew216','cea514da5621804ca83fe1692d22ac25386cad08','}SE2Efmup`srvh[JCUPJYMa-]xOw/cUQ%L^*gOk:;PMt.g2H)AQ\"[C.Wx1B,yl^4\'bboQwv<Q4+aX>~&w:.\\gIWy@cR]wv6Dgi>;HemQ!QCGHQRM+x=La\\v?`9M|$R8$','707435d4aabec0d1ba416fb0daa94161b64e74e2','22a4426fafd149d13c7838fb0263a3c0a634dc9b',NULL,'bew216@nyu.edu',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'0.0.0.0',1364850349,1364850528,1364850528,0,0,0,0,'y','y','y','y','y',0,0,0,'n',0,0,0,0,0,0,0,'n','y','y','y','y','y','y','y','y','english','UM5','n','n','eu',NULL,NULL,NULL,NULL,'20',NULL,'18',NULL,NULL,'n',0,'y',0,1),
	(18,5,'hm11141','hm11141','a010cf80c4d94dd10718a29d8d0aa6d5257787de88d06ffec64c0de48371aeee7d462865dfe5aec348ec36beb1c89125a8cebe60f79a8cf72d49c5a48fdb719d','KrW:mx>`xK^aq0#{g@Ns17G(jg6a5|<R5BTe6P<-$P\'ar!jl:{,UZyMoRxt62)iimDAd&Sar6`-A_pNqe*h#<5500Y7u=t[+W|aA{0}_Jx,zV1/\"qbx\"Gh/Zguj#nT1\\','45fd6147a6dc2b871426811ba9c16ec619f48be0','f4cefc563df45e00d3ded54146744c3c8aac71d3',NULL,'hm11141@nyu.edu',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'0.0.0.0',1364850585,1364850587,1364850587,0,0,0,0,'y','y','y','y','y',0,0,0,'n',0,0,0,0,0,0,0,'n','y','y','y','y','y','y','y','y','english','UM5','n','n','eu',NULL,NULL,NULL,NULL,'20',NULL,'18',NULL,NULL,'n',0,'y',0,0),
	(22,5,'tst435','tst435','3b8d63d2acd5d90cc2184c53ec87f2214b6a82b425ddce9ae4fd128c2fa0e3df93dd88ad904f430c3884ef33e58e862cb995a95e5487508791f539a9c933d6e7','}U4\\V7`6fu[R5gNU<=}4p=(z:d*NL-|wo|4AH_*B/mQp~}_\"lF>AD0rExwJha[yGj3cG*\"JS=q{O.PfT:(2W.2~Y`p}=hj\'>z!z]\",|q6Hv;qLVLUZ_eC>>#8N5\\b.+d','a4be54bc8406974154a45288b5fdba0a29b2982d','f1d80dc364641eb435e2af51b0ac971cd2c5607f',NULL,'tst435@nyu.edu',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'0.0.0.0',1364923615,1364923621,1364930203,0,0,0,0,'y','y','y','y','y',0,0,0,'n',0,0,0,0,0,0,0,'n','y','y','y','y','y','y','y','y','english','UM5','n','n','eu',NULL,NULL,NULL,NULL,'20',NULL,'18',NULL,NULL,'n',0,'y',0,0);

/*!40000 ALTER TABLE `exp_members` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_message_attachments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_message_attachments`;

CREATE TABLE `exp_message_attachments` (
  `attachment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender_id` int(10) unsigned NOT NULL DEFAULT '0',
  `message_id` int(10) unsigned NOT NULL DEFAULT '0',
  `attachment_name` varchar(50) NOT NULL DEFAULT '',
  `attachment_hash` varchar(40) NOT NULL DEFAULT '',
  `attachment_extension` varchar(20) NOT NULL DEFAULT '',
  `attachment_location` varchar(150) NOT NULL DEFAULT '',
  `attachment_date` int(10) unsigned NOT NULL DEFAULT '0',
  `attachment_size` int(10) unsigned NOT NULL DEFAULT '0',
  `is_temp` char(1) NOT NULL DEFAULT 'y',
  PRIMARY KEY (`attachment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_message_copies
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_message_copies`;

CREATE TABLE `exp_message_copies` (
  `copy_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `message_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sender_id` int(10) unsigned NOT NULL DEFAULT '0',
  `recipient_id` int(10) unsigned NOT NULL DEFAULT '0',
  `message_received` char(1) NOT NULL DEFAULT 'n',
  `message_read` char(1) NOT NULL DEFAULT 'n',
  `message_time_read` int(10) unsigned NOT NULL DEFAULT '0',
  `attachment_downloaded` char(1) NOT NULL DEFAULT 'n',
  `message_folder` int(10) unsigned NOT NULL DEFAULT '1',
  `message_authcode` varchar(10) NOT NULL DEFAULT '',
  `message_deleted` char(1) NOT NULL DEFAULT 'n',
  `message_status` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`copy_id`),
  KEY `message_id` (`message_id`),
  KEY `recipient_id` (`recipient_id`),
  KEY `sender_id` (`sender_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_message_data
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_message_data`;

CREATE TABLE `exp_message_data` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender_id` int(10) unsigned NOT NULL DEFAULT '0',
  `message_date` int(10) unsigned NOT NULL DEFAULT '0',
  `message_subject` varchar(255) NOT NULL DEFAULT '',
  `message_body` text NOT NULL,
  `message_tracking` char(1) NOT NULL DEFAULT 'y',
  `message_attachments` char(1) NOT NULL DEFAULT 'n',
  `message_recipients` varchar(200) NOT NULL DEFAULT '',
  `message_cc` varchar(200) NOT NULL DEFAULT '',
  `message_hide_cc` char(1) NOT NULL DEFAULT 'n',
  `message_sent_copy` char(1) NOT NULL DEFAULT 'n',
  `total_recipients` int(5) unsigned NOT NULL DEFAULT '0',
  `message_status` varchar(25) NOT NULL DEFAULT '',
  PRIMARY KEY (`message_id`),
  KEY `sender_id` (`sender_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_message_folders
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_message_folders`;

CREATE TABLE `exp_message_folders` (
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `folder1_name` varchar(50) NOT NULL DEFAULT 'InBox',
  `folder2_name` varchar(50) NOT NULL DEFAULT 'Sent',
  `folder3_name` varchar(50) NOT NULL DEFAULT '',
  `folder4_name` varchar(50) NOT NULL DEFAULT '',
  `folder5_name` varchar(50) NOT NULL DEFAULT '',
  `folder6_name` varchar(50) NOT NULL DEFAULT '',
  `folder7_name` varchar(50) NOT NULL DEFAULT '',
  `folder8_name` varchar(50) NOT NULL DEFAULT '',
  `folder9_name` varchar(50) NOT NULL DEFAULT '',
  `folder10_name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_message_folders` WRITE;
/*!40000 ALTER TABLE `exp_message_folders` DISABLE KEYS */;

INSERT INTO `exp_message_folders` (`member_id`, `folder1_name`, `folder2_name`, `folder3_name`, `folder4_name`, `folder5_name`, `folder6_name`, `folder7_name`, `folder8_name`, `folder9_name`, `folder10_name`)
VALUES
	(1,'InBox','Sent','','','','','','','','');

/*!40000 ALTER TABLE `exp_message_folders` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_message_listed
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_message_listed`;

CREATE TABLE `exp_message_listed` (
  `listed_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `listed_member` int(10) unsigned NOT NULL DEFAULT '0',
  `listed_description` varchar(100) NOT NULL DEFAULT '',
  `listed_type` varchar(10) NOT NULL DEFAULT 'blocked',
  PRIMARY KEY (`listed_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_module_member_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_module_member_groups`;

CREATE TABLE `exp_module_member_groups` (
  `group_id` smallint(4) unsigned NOT NULL,
  `module_id` mediumint(5) unsigned NOT NULL,
  PRIMARY KEY (`group_id`,`module_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_modules
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_modules`;

CREATE TABLE `exp_modules` (
  `module_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `module_name` varchar(50) NOT NULL,
  `module_version` varchar(12) NOT NULL,
  `has_cp_backend` char(1) NOT NULL DEFAULT 'n',
  `has_publish_fields` char(1) NOT NULL DEFAULT 'n',
  PRIMARY KEY (`module_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_modules` WRITE;
/*!40000 ALTER TABLE `exp_modules` DISABLE KEYS */;

INSERT INTO `exp_modules` (`module_id`, `module_name`, `module_version`, `has_cp_backend`, `has_publish_fields`)
VALUES
	(1,'Emoticon','2.0','n','n'),
	(2,'Jquery','1.0','n','n'),
	(3,'Query','2.0','n','n'),
	(14,'Safecracker','2.1','y','n'),
	(5,'Search','2.2','n','n'),
	(6,'Channel','2.0.1','n','n'),
	(7,'Member','2.1','n','n'),
	(8,'Stats','2.0','n','n'),
	(9,'Rte','1.0','y','n'),
	(10,'Friends','1.6.0','y','n'),
	(11,'Code_pack','1.2.2','y','n'),
	(12,'Mountee','2.2','n','n'),
	(13,'User','3.4.0','y','y');

/*!40000 ALTER TABLE `exp_modules` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_nsm_addon_settings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_nsm_addon_settings`;

CREATE TABLE `exp_nsm_addon_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(5) unsigned NOT NULL DEFAULT '1',
  `addon_id` varchar(255) NOT NULL,
  `settings` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_nsm_addon_settings` WRITE;
/*!40000 ALTER TABLE `exp_nsm_addon_settings` DISABLE KEYS */;

INSERT INTO `exp_nsm_addon_settings` (`id`, `site_id`, `addon_id`, `settings`)
VALUES
	(1,1,'nsm_htaccess_generator','{\"enabled\":\"1\",\"path\":[\"\\/var\\/www\\/html\\/2017introductions\\/.htaccess\"],\"template\":\"# For more awesome .htaccess rules and optimisations\\n# checkout the HTML5 Boilerplate .htaccess files\\n# https:\\/\\/github.com\\/paulirish\\/html5-boilerplate\\/blob\\/master\\/.htaccess\\n\\n# Although highly unlikely, your host may have +FollowSymLinks enabled at the root level,\\n# yet disallow its addition in .htaccess; in which case, \\n# adding +FollowSymLinks will break your setup (probably a 500 error), \\n# so just remove it, and your rules should work fine.\\nOptions +FollowSymlinks\\n\\n# EE 404 page for missing pages\\nErrorDocument 404 \\/index.php\\/{ee:404}\\n\\n# Simple 404 for missing files\\n<FilesMatch \\\"(\\\\.jpe?g|gif|png|bmp|css|js|flv)$\\\">\\n  ErrorDocument 404 \\\"File Not Found\\\"\\n<\\/FilesMatch>\\n\\n# Rewriting will likely already be on, uncomment if it isnt\\n# <IfModule mod_rewrite.c>\\n# RewriteEngine On\\n# RewriteBase \\/\\n# <\\/IfModule>\\n\\n# Block access to \\\"hidden\\\" directories whose names begin with a period. This\\n# includes directories used by version control systems such as Subversion or Git.\\n<IfModule mod_rewrite.c>\\n  RewriteRule \\\"(^|\\/)\\\\.\\\" - [F]\\n<\\/IfModule>\\n\\n# remove the www - Uncomment to activate\\n<IfModule mod_rewrite.c>\\n  RewriteCond %{HTTPS} !=on\\n  RewriteCond %{HTTP_HOST} ^www\\\\.(.+)$ [NC]\\n  RewriteRule ^(.*)$ http:\\/\\/%1\\/$1 [R=301,L]\\n<\\/IfModule>\\n\\n# Remove the trailing slash to paths without an extension\\n# Uncomment to activate\\n# <IfModule mod_rewrite.c>\\n#   RewriteRule ^(.*)\\/$ \\/$1 [R=301,L]\\n# <\\/IfModule>\\n\\n# Remove index.php\\n# Uses the \\\"include method\\\"\\n# http:\\/\\/expressionengine.com\\/wiki\\/Remove_index.php_From_URLs\\/#Include_List_Method\\n# <IfModule mod_rewrite.c>\\nRewriteCond %{QUERY_STRING} !^(ACT=.*)$ [NC]\\nRewriteCond %{REQUEST_URI} !(\\\\.[a-zA-Z0-9]{1,5})$\\nRewriteCond %{REQUEST_FILENAME} !-f\\nRewriteCond %{REQUEST_FILENAME} !-d\\nRewriteCond %{REQUEST_URI} ^\\/({ee:template_groups}{ee:pages}members|P[0-9]{2,8}) [NC]\\nRewriteRule (.*) \\/index.php\\/$1 [L]\"}');

/*!40000 ALTER TABLE `exp_nsm_addon_settings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_online_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_online_users`;

CREATE TABLE `exp_online_users` (
  `online_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `member_id` int(10) NOT NULL DEFAULT '0',
  `in_forum` char(1) NOT NULL DEFAULT 'n',
  `name` varchar(50) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `anon` char(1) NOT NULL,
  PRIMARY KEY (`online_id`),
  KEY `date` (`date`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_online_users` WRITE;
/*!40000 ALTER TABLE `exp_online_users` DISABLE KEYS */;

INSERT INTO `exp_online_users` (`online_id`, `site_id`, `member_id`, `in_forum`, `name`, `ip_address`, `date`, `anon`)
VALUES
	(10579,1,1,'n','Herman Marin','127.0.0.1',1365536447,''),
	(10582,1,0,'n','','127.0.0.1',1365536089,''),
	(10580,1,1,'n','Herman Marin','127.0.0.1',1365536447,''),
	(10581,1,1,'n','Herman Marin','127.0.0.1',1365536447,'');

/*!40000 ALTER TABLE `exp_online_users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_password_lockout
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_password_lockout`;

CREATE TABLE `exp_password_lockout` (
  `lockout_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `login_date` int(10) unsigned NOT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `username` varchar(50) NOT NULL,
  PRIMARY KEY (`lockout_id`),
  KEY `login_date` (`login_date`),
  KEY `ip_address` (`ip_address`),
  KEY `user_agent` (`user_agent`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_ping_servers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_ping_servers`;

CREATE TABLE `exp_ping_servers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `member_id` int(10) NOT NULL DEFAULT '0',
  `server_name` varchar(32) NOT NULL,
  `server_url` varchar(150) NOT NULL,
  `port` varchar(4) NOT NULL DEFAULT '80',
  `ping_protocol` varchar(12) NOT NULL DEFAULT 'xmlrpc',
  `is_default` char(1) NOT NULL DEFAULT 'y',
  `server_order` int(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_relationships
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_relationships`;

CREATE TABLE `exp_relationships` (
  `rel_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `rel_parent_id` int(10) NOT NULL DEFAULT '0',
  `rel_child_id` int(10) NOT NULL DEFAULT '0',
  `rel_type` varchar(12) NOT NULL,
  `rel_data` mediumtext NOT NULL,
  `reverse_rel_data` mediumtext NOT NULL,
  PRIMARY KEY (`rel_id`),
  KEY `rel_parent_id` (`rel_parent_id`),
  KEY `rel_child_id` (`rel_child_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_remember_me
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_remember_me`;

CREATE TABLE `exp_remember_me` (
  `remember_me_id` varchar(40) NOT NULL DEFAULT '0',
  `member_id` int(10) DEFAULT '0',
  `ip_address` varchar(45) DEFAULT '0',
  `user_agent` varchar(120) DEFAULT '',
  `admin_sess` tinyint(1) DEFAULT '0',
  `site_id` int(4) DEFAULT '1',
  `expiration` int(10) DEFAULT '0',
  `last_refresh` int(10) DEFAULT '0',
  PRIMARY KEY (`remember_me_id`),
  KEY `member_id` (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_reset_password
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_reset_password`;

CREATE TABLE `exp_reset_password` (
  `reset_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) unsigned NOT NULL,
  `resetcode` varchar(12) NOT NULL,
  `date` int(10) NOT NULL,
  PRIMARY KEY (`reset_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_reset_password` WRITE;
/*!40000 ALTER TABLE `exp_reset_password` DISABLE KEYS */;

INSERT INTO `exp_reset_password` (`reset_id`, `member_id`, `resetcode`, `date`)
VALUES
	(1,6,'64SxrQ5s',1365265618);

/*!40000 ALTER TABLE `exp_reset_password` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_revision_tracker
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_revision_tracker`;

CREATE TABLE `exp_revision_tracker` (
  `tracker_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(10) unsigned NOT NULL,
  `item_table` varchar(20) NOT NULL,
  `item_field` varchar(20) NOT NULL,
  `item_date` int(10) NOT NULL,
  `item_author_id` int(10) unsigned NOT NULL,
  `item_data` mediumtext NOT NULL,
  PRIMARY KEY (`tracker_id`),
  KEY `item_id` (`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_rte_tools
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_rte_tools`;

CREATE TABLE `exp_rte_tools` (
  `tool_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(75) DEFAULT NULL,
  `class` varchar(75) DEFAULT NULL,
  `enabled` char(1) DEFAULT 'y',
  PRIMARY KEY (`tool_id`),
  KEY `enabled` (`enabled`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_rte_tools` WRITE;
/*!40000 ALTER TABLE `exp_rte_tools` DISABLE KEYS */;

INSERT INTO `exp_rte_tools` (`tool_id`, `name`, `class`, `enabled`)
VALUES
	(1,'Blockquote','Blockquote_rte','y'),
	(2,'Bold','Bold_rte','y'),
	(3,'Headings','Headings_rte','y'),
	(4,'Image','Image_rte','y'),
	(5,'Italic','Italic_rte','y'),
	(6,'Link','Link_rte','y'),
	(7,'Ordered List','Ordered_list_rte','y'),
	(8,'Underline','Underline_rte','y'),
	(9,'Unordered List','Unordered_list_rte','y'),
	(10,'View Source','View_source_rte','y');

/*!40000 ALTER TABLE `exp_rte_tools` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_rte_toolsets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_rte_toolsets`;

CREATE TABLE `exp_rte_toolsets` (
  `toolset_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) DEFAULT '0',
  `name` varchar(100) DEFAULT NULL,
  `tools` text,
  `enabled` char(1) DEFAULT 'y',
  PRIMARY KEY (`toolset_id`),
  KEY `member_id` (`member_id`),
  KEY `enabled` (`enabled`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_rte_toolsets` WRITE;
/*!40000 ALTER TABLE `exp_rte_toolsets` DISABLE KEYS */;

INSERT INTO `exp_rte_toolsets` (`toolset_id`, `member_id`, `name`, `tools`, `enabled`)
VALUES
	(1,0,'Default','3|2|5|1|9|7|6|4|10','y');

/*!40000 ALTER TABLE `exp_rte_toolsets` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_search
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_search`;

CREATE TABLE `exp_search` (
  `search_id` varchar(32) NOT NULL,
  `site_id` int(4) NOT NULL DEFAULT '1',
  `search_date` int(10) NOT NULL,
  `keywords` varchar(60) NOT NULL,
  `member_id` int(10) unsigned NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `total_results` int(6) NOT NULL,
  `per_page` tinyint(3) unsigned NOT NULL,
  `query` mediumtext,
  `custom_fields` mediumtext,
  `result_page` varchar(70) NOT NULL,
  PRIMARY KEY (`search_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_search_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_search_log`;

CREATE TABLE `exp_search_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `member_id` int(10) unsigned NOT NULL,
  `screen_name` varchar(50) NOT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `search_date` int(10) NOT NULL,
  `search_type` varchar(32) NOT NULL,
  `search_terms` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_security_hashes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_security_hashes`;

CREATE TABLE `exp_security_hashes` (
  `hash_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` int(10) unsigned NOT NULL,
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `hash` varchar(40) NOT NULL,
  PRIMARY KEY (`hash_id`),
  KEY `hash` (`hash`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_security_hashes` WRITE;
/*!40000 ALTER TABLE `exp_security_hashes` DISABLE KEYS */;

INSERT INTO `exp_security_hashes` (`hash_id`, `date`, `session_id`, `hash`)
VALUES
	(29687,1365536108,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','149aa67b4c4f9427cfcd989ac6a04cb63cd291be'),
	(29686,1365536108,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','9bd49ba5dd69f0a23908595c9cf7907c651fab73'),
	(29685,1365536108,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','2ebc5119d2a05edbc494c3721ca6884d00cce8b1'),
	(29684,1365536108,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','e75f91039f30088204260f2678dac9a11a7c7652'),
	(29683,1365536108,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','dad00d0c152fa64a837118f77c8a06e34a6f9e4c'),
	(29682,1365536108,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','1a86e9dac8dcb490756abf71a005b31d1ad84adf'),
	(29681,1365536108,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','e758c4a683f950787fc56b3ffe6420743f551066'),
	(29680,1365536108,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','a8c75e9ff3eca5589140470b75c7aa33e17af47e'),
	(29679,1365536108,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','c5ec02e7aeaae0aabb53087ab9b8cc38c2b9818c'),
	(29678,1365536037,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','39d66153760050037bd578d3dad8c5238f06f019'),
	(29677,1365536037,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','4351741e4dda9dacde0f8ed0c20ac746b5014d50'),
	(29676,1365536037,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','396042777368d273fcb12d28cae6d63fef77cf31'),
	(29675,1365536037,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','6719e1f3c1ba8fe181e9e7cbc1ce9adc92441a46'),
	(29674,1365536037,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','71a0c9f594e1b2ff9b72b5ad71997890ca04c6dc'),
	(29673,1365536037,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','3dd0a2575ce9a16638773f04882238595e602c63'),
	(29672,1365536037,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','eabf734f96e514ba04d36a8ab731d5cd4d5395f3'),
	(29671,1365536037,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','f2fad10ca97a8ad8320d58b5cbc0810f6d4024b4'),
	(29670,1365536037,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','274c0b41a2135cb8450cf49f1e8b0c4cf91ed7e5'),
	(29669,1365536037,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','33ddd1468a9882c73421ea63c07df2a5c5dde6a2'),
	(29668,1365536037,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','783b54065e740d2df7ac0a7b6427293f1e1351ea'),
	(29667,1365536000,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','fe28925f684f1e36eeca649099a90d9194dd4187'),
	(29666,1365536000,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','0631825c1b054c5868f7301d3db7379e59c340e3'),
	(29665,1365536000,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','4fadd7417b9dbe88911cc890bdfc1efec5749e18'),
	(29664,1365536000,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','e443a9bc2124f726f907f35b6d474359f049d417'),
	(29663,1365536000,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','3fe6541ea05afdeeab4fbfc3bf5e248aa145d60d'),
	(29662,1365536000,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','6dcefae352c924bca76f4cd0d11a0f9c140e00cc'),
	(29661,1365536000,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','75346767949ecaaf3ec38099efaac303886838ec'),
	(29660,1365536000,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','fa593c996d21ac043d72fbbca194629ff585baf4'),
	(29659,1365536000,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','6c320e3960ecb245b65c4697e8d5bd5941a7ce66'),
	(29658,1365536000,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','e794ebcc187d5ea849660f1cbc85dd81f133c7ca'),
	(29657,1365536000,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','cca580c62d3f834f909b6c10386715bc24e749ba'),
	(29656,1365535984,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','2a8e684ff7c77bbe2f5e00d76251229a46835d28'),
	(29655,1365535984,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','d1298eb8833e7ba541705edecdcec92fbed82eda'),
	(29654,1365535984,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','641d8a1628eb00ecde9f941c6ff3ca0c3bc9f37d'),
	(29653,1365535984,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','e580b9ae717b0ac8e19a1d0b1e274bad34a854c1'),
	(29652,1365535984,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','1b2e9e37921cf799a23080b9e18551bffef7830e'),
	(29651,1365535984,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','021bef1e30d7e7d4df0cac32f85cf50c7e23af4a'),
	(29650,1365535984,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','2b06e97071e6cc418ec190558a42478b3fa60953'),
	(29649,1365535984,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','b76004267e80ac2c352004ff122ddc26f1704e79'),
	(29648,1365535984,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','d7ae736571101968dd7621cccd7049e1c745fe6d'),
	(29647,1365535984,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','dd9668510554229ba2f4b4645078bf1a3726f8d8'),
	(29646,1365535984,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','c2b72fd86e45f1203b7d25b35ee59f08a3d5a46c'),
	(29645,1365535965,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','767a99f9506ca9a4c25cbf1fafda3d308e8e3209'),
	(29644,1365535965,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','924807aafb4a5769edbedf12232f182e39e4ac26'),
	(29643,1365535965,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','169de088da54a0ba6900b2b1e2c7249db9d587c0'),
	(29642,1365535965,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','023b11021956f07d14888d4463790f3b42a31659'),
	(29641,1365535965,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','00614b4ace8ccd839a79bab900bd257aad8e2af4'),
	(29640,1365535965,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','0920a26323056cc16110fd284174414a3883e6e0'),
	(29639,1365535965,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','26eb4a26cb42cf206fa4f426fc1f11f5eec17d4a'),
	(29638,1365535965,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','0162946a1f0975fae2ba7e36c9f56ff9fd72b039'),
	(29637,1365535965,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','eb05e93ff934c54384a84391962d878c84c8f110'),
	(29636,1365535965,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','6a3a707f8ba3210d96537aff6190924fb437911d'),
	(29635,1365535965,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','732587483d1470ede32f172ca87f748ebd715b1f'),
	(29634,1365535944,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','0588c285b698eeff08d08ac98a1228c16bd175b1'),
	(29633,1365535944,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','5000ec37e84a2beffb86ec54350860fb1052eb3e'),
	(29632,1365535944,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','e1fc5cf769b387865319ffcf57f6a9ab72a08a05'),
	(29631,1365535944,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','af1a3cc5dcc6180b956c842888d86c6c639f4f8e'),
	(29628,1365535944,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','d76e3c461dfce7918b62736448cb103d353de10e'),
	(29629,1365535944,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','39547f757e378610f9938305776cf6bb31ae78d6'),
	(29630,1365535944,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','32540f3e80c1ab85c2ba9ccddb4d4b97b5caeb00'),
	(29627,1365535944,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','877ee06c26227b17d3a93f39032d88874f8d131e'),
	(29626,1365535944,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','a980a4835bbef7200f9da50ab569190d3e866fb2'),
	(29625,1365535944,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','ee568dc59a01adce1c43cab4a4d38fa59d6511ea'),
	(29624,1365535944,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','81fd7b95f6c00cc93b7d9fb0179cf0ef8fa981b0'),
	(29623,1365535862,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','7f37b5207dbdd6e28f62c148631dd428fd1f40c2'),
	(29622,1365535862,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','4ab4bb3fdc3e2dc0e84860ce03e8cb7a6f3fd3b1'),
	(29621,1365535862,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','b8b03680ad8d109048b4f0f410c02a1603f423d7'),
	(29620,1365535862,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','0b8464fee63aa6f981f681b8522a84f5fc3a656d'),
	(29619,1365535862,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','118f7a28dab5812c78b807d9f23241fc785c2970'),
	(29618,1365535862,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','7bffe3afe64e77fa1852d7649e031d7aa96fac28'),
	(29617,1365535862,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','f7bc1095b0ff11ddd37cd207276647b136407887'),
	(29616,1365535862,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','063f25698c5ba551e530f462e51e052f2a3518f0'),
	(29615,1365535862,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','c89568b482daeb4fc62749c03061f9668b5a1475'),
	(29614,1365535862,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','881347eb2f73fb6de7e1e6c8c8d332ee73fb22b9'),
	(29613,1365535862,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','4c3457fa234d3f1187d45740a35b8718da01d60b'),
	(29612,1365535834,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','33cb0c1c35ca230a5c2032e0ca2e3846a4640f37'),
	(29611,1365535834,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','baa35d6ab1bd1adba734929398efdc101bab0240'),
	(29610,1365535834,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','c3702265801f0ce99c88d7915b112162e4aee566'),
	(29609,1365535834,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','88e3536dce044d1ee17e8f451d1a0eb6338ec69d'),
	(29608,1365535834,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','b53f63b9494b047ae001a0421669a7773aa7b4c1'),
	(29607,1365535834,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','803b1bbf545f6f7bf6ac11191a7c3181ac8d8dac'),
	(29606,1365535834,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','cd919386cccc705e1d469a4568c1dd5ce6997ffb'),
	(29605,1365535834,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','a0d8f6e26dbe3b12fd81476d22d58b067088ebe2'),
	(29602,1365535834,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','9d1fae26603f217e7cc3b0e2a8763f10fe083a8b'),
	(29603,1365535834,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','d9538a648f5555fa5eefd51cb8781d9d09231ebd'),
	(29604,1365535834,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','e40a87b1401fb2d27bbc6407de24cbeaf29b50f6'),
	(29601,1365535739,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','711de79e9fceac2af81473338a256a3e1f30e06d'),
	(29600,1365535739,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','f09d1b2c8e199e21710d3e5aa3f2ebcf088a264c'),
	(29599,1365535739,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','be60bb65b337ea3f7dafc47f402a256f9bf60fe5'),
	(29598,1365535739,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','bf559cda180155f9cbd48f48a5565dbcc5e53953'),
	(29597,1365535739,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','0aedd0fe7fd3c4a3d1bc12e77d7120d72fcb8796'),
	(29596,1365535739,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','87afecff3efa83b38496afd95aa7a14024eaad9b'),
	(29595,1365535739,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','bb81c0b2724b3ac431ce8b8f189636c8b868c090'),
	(29594,1365535739,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','eaed87f8437d7c30246f8aea6815c7cdcee12252'),
	(29593,1365535739,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','63aca40fea9b0e59613d5f7fa37d6aa86d727e6f'),
	(29592,1365535739,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','c62bcff1d63a6e69cdbc5f3bf2d6cebabc81c30c'),
	(29591,1365535739,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','79630350aa11c54a339e6e686057d472c9baff7e'),
	(29590,1365535722,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','19af567264c70533c6f3251f360ecae5e7b7dfac'),
	(29589,1365535722,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','540594fc0f08658057efe969ce83602bf3dc40de'),
	(29588,1365535722,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','3d808a7cdbee46ca1069b577fe2bac0853dd797d'),
	(29587,1365535722,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','93c52fd5061d4125dc6326797de8ecd03154efd7'),
	(29586,1365535722,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','fdf0853ca7469926bdf0c1f1555f744cb0bd06cb'),
	(29585,1365535722,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','812db3f3fac993b4492477f5820f49b4e23be536'),
	(29584,1365535722,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','164c76e815cf8e8c0e0423d19a9e513856ebd4b2'),
	(29583,1365535722,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','744b9d829ff6fd5437416e7414de65e3984f9fb7'),
	(29582,1365535722,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','08c024cc835232f51328c00f37b2e6141cffc791'),
	(29581,1365535722,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','6590ae6eb516740c9029acf9106fa6cc67d8c26b'),
	(29580,1365535722,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','74d456191b7fed613b143e17f4717bcec70317ac'),
	(29579,1365535681,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','d97017449ec42f62500b8693e826ab48df85fb6b'),
	(29578,1365535681,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','ee3cbe93aca15c97ff669d82ec980834d0611316'),
	(29577,1365535681,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','5cf922fe9e2bbad2db3bead14fff8791f33bb1f5'),
	(29576,1365535681,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','a804942a6ada4b43cb1ce65613b6b06563dd2eaf'),
	(29575,1365535681,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','b71fca9b936576318a92dec65cb83e05f4e701c2'),
	(29574,1365535681,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','c41dab4d0de2bd924db8ceb8215062e5fbca13cc'),
	(29573,1365535681,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','e79c81b64231badf19727f9bb31ec021979b63e3'),
	(29572,1365535681,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','2a18200558ae53f1fff37af8760d5304b3f2d401'),
	(29571,1365535681,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','8cb735426af188428821d497ecb0c37b71a6b45a'),
	(29132,1365531077,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','42ad2dafea6b9645862284cab8e7b3ac3964a470'),
	(29131,1365531077,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','805de017e8dedf1db61fe151ff3fa8a53bb33c6f'),
	(29130,1365531077,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','c4a409bf5351128d65c8845b45461c2b4af8b4cd'),
	(29129,1365531077,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','06c3dce642f02434531743e1acf9b8625381bab0'),
	(29128,1365531077,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','10292a4f6e7e6a890da5bc07c58ccc483ff463f6'),
	(29127,1365531077,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','901e5b20713fe2cdc61d525ce93d31706b058220'),
	(29126,1365531055,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','a80499a00ea7db5b4942e2eb50b90ee3237e7abe'),
	(29125,1365531055,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','5cf1e07f2da029af0c01400bb523f39b2c22ed6f'),
	(29124,1365531055,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','690e4e0318a9162fffa600cb9c69a24c44d3aa34'),
	(29123,1365531055,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','768216d4ab8648f042422713b14b7a5191a4956c'),
	(29122,1365531055,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','9f62c04e2730a0e7a067629db8059a0706764792'),
	(29121,1365531055,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','683df0ca3ed39787d851e0bfc6d7c57b8d94c0fa'),
	(29120,1365531055,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','e53cef2348a0362fda2769474953833aa076673c'),
	(29119,1365531055,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','3ede7c97a4e04c0d9db62a0544b7b297d0ee9a88'),
	(29118,1365531055,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','06ef35329393015d53065f844586ec3a3303690b'),
	(29117,1365531055,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','bb5146fc735ba615676711124d19f9ebcd9bcfa4'),
	(29116,1365531055,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','fbc3d47180f9406e47d406e43a4158e6a838ca4e'),
	(29115,1365531052,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','4fcb29647b11c22594cc5a9a7016a0fa4e645554'),
	(29114,1365531052,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','ce73ecc02ac71ee8ca3275593f8e5eeb6e51521f'),
	(29113,1365531052,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','241937433e68b31064c3efb7537d27c2d9d6e266'),
	(29112,1365531052,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','1a7f258394832179045f9e6f29f3dde4fa8123c0'),
	(29111,1365531052,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','ed346ce1d7a8fc0e9c88b8fd0faf3e32cc647920'),
	(29110,1365531052,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','6650049d2584b3b3c6890b9c04d4fd320314617b'),
	(29109,1365531052,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','c14930e51b8ae924244010de6305a6c7572721f3'),
	(29108,1365531052,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','23deecba2b57229affdfde8b6572446359ef1874'),
	(29107,1365531052,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','b92782fef1d98aac70881c580a71df3402de70bc'),
	(29106,1365531052,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','ff44436c654e5d81d7a609e04daea94040a900b8'),
	(29105,1365531052,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','93ec2a1acfce603f39c9bd115b3d1780d19fefc5'),
	(29104,1365531045,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','b75ad08ad88d2afae766d929a92f709e8b5f8330'),
	(29103,1365531045,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','657d94de125a74c2c0e7f5dee484308054e9058f'),
	(29102,1365531045,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','53d40adabc662c5c4818cc9176003750e1a2dd13'),
	(29101,1365531045,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','97b7b17c844df091ae64f35ae21d3b9123aff3d0'),
	(29100,1365531045,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','d7f679a4bb682d5f4d10a0c507e7afb793a4ad95'),
	(29099,1365531045,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','c8f67e331f10169e7e947de69240304cabb2ba50'),
	(29098,1365531045,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','de49eeb29fd029cd169b733a14928c453aa75253'),
	(29097,1365531045,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','dcc721bf29eada8db60af8cdfa3dfff0c12fb136'),
	(29096,1365531045,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','f9d2af21710da18cf7805e2befdaec2c0017d598'),
	(29095,1365531045,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','7d75873837cf1a05826db6bd478c25e1c42d04d2'),
	(29094,1365531045,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','d6a8053b4cb12ca069f1c1df02acf5448a7a9480'),
	(29093,1365530901,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','89a7464140ad77d3f3bf0cb2190cb15cfcf73d03'),
	(29092,1365530901,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','2352b432805a226c549ee4b2f820f41d2bed0d31'),
	(29091,1365530901,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','21e2b84182afd09d0ef9bd7123cc14e30078a6e1'),
	(29090,1365530901,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','d1052b83351dea813275b1d76fa743747cde3cb8'),
	(29089,1365530901,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','043b704fac62011c348b4a505c6f5fad07491fee'),
	(29088,1365530901,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','556fa4b60ce2ace8a3e900969b441cb3a224a296'),
	(29087,1365530901,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','7ddb6b3944ee3222892d5ab3287616e9c5e80cb0'),
	(29086,1365530901,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','04cf47205d26f2942c06f612908da599dc801cde'),
	(29085,1365530901,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','a88ee6bf5d48da52a1be31b8116dffbb2de8d053'),
	(29084,1365530901,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','997c54921985fc2865a9df574f6227c3176a5f1a'),
	(29083,1365530901,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','b2848f9998a8adb06ddff1e4c8d7c2a63d299cc9'),
	(29082,1365530901,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','8a64e4131497dfce62e2566e8ed9f3a9d1c923e5'),
	(29081,1365530901,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','50868ab2210641c2f1539d0cb0b3baddfe41d9d4'),
	(29080,1365530901,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','08ef7aa2bd01b8e805f1fd9551019e4a750182c0'),
	(29079,1365530901,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','b26658f7c223be47627d0be5d62e4e68f5579670'),
	(29078,1365530901,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','126ec6b131399885848173766b8ffe26273784ac'),
	(29077,1365530901,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','4b6f0daafd3ee3fe9780c396a829c9371d595763'),
	(29076,1365530901,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','59268a139fc6bc9e922ff67de7094b477e60525c'),
	(29075,1365530901,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','e4483b12e1eea2699d1b32337626e7c74d8b070f'),
	(29074,1365530901,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','d5f15ee36e5b405c1e92a2e0d5f5d392b37f7bab'),
	(29073,1365530901,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','b62bee4bae8ef44c838f64b6ae82c12dd0d2b400'),
	(29072,1365530901,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','7ad55d2b4093a83234a9be916475b1dde2c69d28'),
	(29071,1365530901,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','6299b0dc67d9f427eb7fc47166e4c8462bdba9ba'),
	(29070,1365530901,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','5e9bb9c4b9d476c7d295b7164a480662d42d79df'),
	(29069,1365530901,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','a369845b599c6cec6da41568823f62b3cce29817'),
	(29068,1365530901,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','8c9c5dec06c4fcf5d2f4d1aed06abac3ff2e9c73'),
	(29067,1365530901,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','6f7ee04c05e2e141bff545e35d8c9758bf6ea38d'),
	(29066,1365530901,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','dd058e4ff99b19a9145884b6ad8e88b4b3a8daec'),
	(29065,1365530901,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','7f7a3458e240ff73e0689f81499927c7f341bdcc'),
	(29064,1365530901,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','6a616009bcacfb220e95bf2451f83c8be841caeb'),
	(29063,1365530901,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','7eb5453b87f3f61f11eccdb08f72354dfb7c8efd'),
	(29062,1365530901,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','1f50138d06071d9d32f29acdbb46a445085c480d'),
	(29061,1365530901,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','b45586360d543e9823cfebf2f7846f02ed141f81'),
	(29060,1365530901,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','8fb9d48e915307d4d514c2ae2f8ded28faa43745'),
	(29059,1365530901,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','ec236dace90c9d938fce87872c7b35fcb017843f'),
	(29058,1365530901,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','03de1f48d41833befc36b9dfb0a87159a96618d9'),
	(29057,1365530901,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','8307929ec2964c6a7a9bc70652a1918a2f799af5'),
	(29056,1365530901,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','05b8a889d91037a4466862222985c7ec8d167f64'),
	(29055,1365530901,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','02abd6785df9c80c8aae495dea464e5d1c9b9ca0'),
	(29054,1365530901,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','17233516dc7558ad29f4edf7e31887c64996ae1c'),
	(29053,1365530901,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','f8f91bf480134db7e969e189737a92fa789a54c8'),
	(29052,1365530901,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','8d837c006c4d2cf740751a6e171594aa8f8e8ba9'),
	(29051,1365530901,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','0814fac38cfd56df5424c5841859c8bfe47c8ba8'),
	(29050,1365530901,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','a8db33711cb252c85817c21849dc36f31746356e'),
	(29049,1365530901,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','9c54d409ece40eaf62dec03fdfc504122455a217'),
	(29048,1365530896,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','fbdda0424967811f1c36154dfbf611e8fc7500e9'),
	(29047,1365530896,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','dca3ca4b828303e146aaf6e606e01d1a1b2d0f7a'),
	(29046,1365530896,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','88685f26df552341805fe53da3006356eb8c797c'),
	(29045,1365530896,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','7e261c25be6b76003d6efd12d6b515bb9263baf7'),
	(29044,1365530896,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','8a08d53c98d4e2aa2ccbec1fd12ee939a5214159'),
	(29043,1365530896,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','eb4f7c4a825ae74370901bcc37131098626fa01b'),
	(29042,1365530896,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','cc9f5915ea543921fdf72d2ae8e78d2482cb814c'),
	(29041,1365530896,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','e94ab15a01267b054981536aed2a51f3675f370e'),
	(29040,1365530896,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','b541bc07318a9d2981d3f6902f8f2b2e51ff482b'),
	(29039,1365530892,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','3de5d09db8479465a92eacbfcd3c10a915481a01'),
	(29038,1365530892,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','e7060b574bbef595469c1879dcffa4ad567f255f'),
	(29037,1365530892,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','6581e813b7433f7e596523b040f05494e8b47793'),
	(29036,1365530892,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','4663bd3a90c2188b2e1eff4226195b2fcb8f4293'),
	(29035,1365530892,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','dbff4203353fdd6ccbd3f88dca236a3a12ce8013'),
	(29034,1365530892,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','b9c4228830fffc8abcbd0b57dc4c5484751c07c3'),
	(29033,1365530892,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','75e237223d226514b60272f6b37962b4f6deb02b'),
	(29032,1365530892,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','c006949734a0a22f083e4c08d5fb2d2563016967'),
	(29031,1365530892,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','b85fcef155eabba94ada116c794f881d5625b34e'),
	(29030,1365530891,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','d51dbc8e31f615c84d30eda60c482de3681145df'),
	(29029,1365530891,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','7a518d095493d39b747d9dbf4420824526301446'),
	(29028,1365530891,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','ec9988d73d2aa086b903621996946840296548cd'),
	(29019,1365530874,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','3edbcf372c9c26e4744e919cd116dbc806ca9766'),
	(29020,1365530874,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','7becccef40e03e45a138721b682c27b573c90c15'),
	(29021,1365530874,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','a9bdf592a03cd08fccd10320dd2fe0b737b54b45'),
	(29022,1365530891,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','34fd4f0eb6dda0803bc68b8ace559d5675634fb7'),
	(29023,1365530891,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','17ee995cf800b2ca3ff2798ac55efcd33e765b5d'),
	(29024,1365530891,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','f0566c12750bb5e2bccf7b329b234c19c95577b3'),
	(29025,1365530891,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','2ab069ad764232703f4d5fbb1cdf97c3886e11a3'),
	(29026,1365530891,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','254376788bca613e080cdce40b4e03e2cb25d128'),
	(29027,1365530891,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','0db75c3d208d3edaa20063d60bc3d098e3a77a6d'),
	(29570,1365535681,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','adc3895c5711112d18b70545dd4a367bffb73b9c'),
	(29569,1365535681,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','27328cf3eb22226a2dba9fa7995006d4e78ae912'),
	(29568,1365535659,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','78f58f1f7735b0d58b5603630bb2146fab68cb65'),
	(29567,1365535659,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','81d8b3e405757daf986a5e5a4d2b158afc87f8b3'),
	(29566,1365535659,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','e57cef6b03201e89cb62f0a4404148080e2ca36b'),
	(29565,1365535659,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','d5569d423b547f821a9098174372e9ba139fc161'),
	(29564,1365535659,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','db6df6c4923a21586e01ac03c8be5b01524dbf27'),
	(29563,1365535659,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','2630dad7e1db14b4b865d46129084e8e101ddf39'),
	(29562,1365535659,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','22a73e2b1f0cc23144641e133597e58ef830b6da'),
	(29561,1365535659,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','4019a1e419699aa8b41ee6c0fcc11fc161111450'),
	(29560,1365535659,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','6b4a834d7a974fc97dfb9512583de5b0325f1503'),
	(29559,1365535659,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','bf51bbf089eaad308aeec3380c0f8a05e655c7cd'),
	(29558,1365535659,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','794d0e93ae1b3ad82b4e2c34a65740a05ee1aa0f'),
	(29557,1365535633,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','edac7d7e0bdbbcfe1781c26ddadd68342d89dba4'),
	(29556,1365535633,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','f21628d462b7c69324a1de7013b5e61f7986dfb7'),
	(29555,1365535633,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','0b376498b4e7435cc17173ab33828a15021411e9'),
	(29554,1365535633,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','f67597c75c5e2e5d9baf8df29738c70d78b18f27'),
	(29553,1365535633,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','7ae23105252774da8e6bd9d9e61f4574bb9bf833'),
	(29552,1365535633,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','a6a54bd70738405df0f55f4171ac866199ff8f39'),
	(29551,1365535633,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','6b304796ed6031b681be153e8d58c7eed3632558'),
	(29550,1365535633,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','df83b022296a36ca6fb6e6aacefba24107363d71'),
	(29549,1365535633,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','a1308a116200920896038bf4970fcf8230b60bde'),
	(29548,1365535633,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','cfe91362dbacc1d3b36aa203792e3078e5335df9'),
	(29547,1365535633,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','a3a6699135484308a1260784f7dfda8118019182'),
	(29546,1365535568,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','6d96e63104a786149a21401996c2f6c522085dcd'),
	(29545,1365535568,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','d16c902b89e583cac406ada89ab0979835eebbf0'),
	(29544,1365535568,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','d43d589e517168f279d476396cf9ac949125bf7d'),
	(29543,1365535568,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','ba3896d84dc27fa1aa93acc678b97d127902faf7'),
	(29542,1365535568,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','32489c450b568e3a74ee3a88472f9f65a0ef214f'),
	(29541,1365535568,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','6310a75df74e654d210e8fe4e92a2137722b3d32'),
	(29540,1365535568,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','c4829eb4dc297adea150afcba99b423d6b78b34c'),
	(29539,1365535568,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','ae9e945ea85dac9e221888b41a3b181aa18922df'),
	(29538,1365535568,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','7753d6e93ca0b653c37d023167dcc2e4bbae929c'),
	(29537,1365535568,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','8554097346d2739168cbeec0a67c635013a7c2f8'),
	(29536,1365535568,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','5689eb9c6908c2f1b5b0d17b0f5d6c0f0b2ce2bd'),
	(29535,1365535551,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','8ae2d83be7e767140b59a876da28dfb548af9beb'),
	(29534,1365535551,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','ec27bf8a7c824eea680288a1fcda4ae3b23853f0'),
	(29533,1365535551,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','de040035f3363bbbc810a4723415470c658b706e'),
	(29532,1365535551,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','2b4a7c1753065b69cd9047274a13c95b0ee844e4'),
	(29531,1365535551,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','a3bb10bffc18235389ba36f5159799c5fb728fc0'),
	(29530,1365535551,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','cfd40fda265a11664273855dadeb02da9adaaa6f'),
	(29529,1365535551,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','a938be7f21edcc3448f840283d74a7cc34675bb4'),
	(29528,1365535551,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','b63494b3cf9d9c6761ff254173e4ef0d7bd07dfc'),
	(29527,1365535551,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','aab872baf2615369918b51c9449e4e95959c9c44'),
	(29526,1365535551,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','9d78e7dba8ea318b257febefa6de15d30f0c6d47'),
	(29525,1365535551,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','2c4cb244b98737a6848820210f4f24700e17bc80'),
	(29524,1365535529,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','d58f6914a4464354c1440600587a6eed28f30ce3'),
	(29523,1365535529,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','72b69fc53262062e672bbec69e1fe14a2ad5b5fe'),
	(29522,1365535529,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','e43afdcad49ae7dfa2f37d1ab038b9a5dd919898'),
	(29521,1365535529,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','f15b6d7383bf6720242b5c8848e3b81bcc22ac88'),
	(29520,1365535529,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','dae766282405534fdb9ff466f2867aa445f3564f'),
	(29519,1365535529,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','f40c90fb43400814813a14f57293533d86ae280a'),
	(29518,1365535529,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','6fa397f1720dbd25edeba67ab7eb0205429d6349'),
	(29517,1365535529,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','35b8944854b907d8cb3d93f95c30d4c8c9424d5b'),
	(29516,1365535529,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','c2755b7107d367c0f50b7a551a1a358dd9a0168e'),
	(29515,1365535529,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','c6602b66b3ed9360c52a14ee5b4e849a479dad00'),
	(29514,1365535529,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','d53fd664908e9227bd9f8dd9e6537cef87e10781'),
	(29513,1365535525,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','bdcdf9954b9810d0f48b191adac4d564b3d599c4'),
	(29512,1365535525,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','92aa19222787e4a9b12068b2757949dd7c629d08'),
	(29511,1365535525,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','087d56a48e05571b54e5ae3c6e3072d6fbcb93ef'),
	(29510,1365535525,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','bf4ab2c4cb94bcbaad577448741dbd13152baad7'),
	(29509,1365535525,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','1802c221d5144380af7203d04e4ec4a891027ea3'),
	(29508,1365535525,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','be728eab807cbed1a4c0cac9b2f519e3cf9bdf67'),
	(29507,1365535525,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','a636fb9238dd56d5f3a92e969942e980063e3eb7'),
	(29506,1365535525,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','c29baba4272c2ea47100ea2416c8cf7e321d80b5'),
	(29505,1365535525,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','441b15142fff50b0cec9602922652593c976ddf2'),
	(29504,1365535525,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','ba5c55c313169c2b07f06263c2fbb5db01fecba7'),
	(29503,1365535525,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','efd082226353b8d9a5cfab2958ded2ccbe483c79'),
	(29502,1365535481,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','0c46289ce4b14c4506552b61898f4c9f578f329d'),
	(29501,1365535481,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','9ecd7b8591ea0302e7512974a9be10070f29f8c3'),
	(29500,1365535481,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','807311c5f8e355964d1aaed4e4703e92f6d9a72b'),
	(29499,1365535481,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','7924130c7695d9a872f0418f0611f6803538c4e6'),
	(29498,1365535481,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','99b14ed57655aeeecd5354b4663cba30d377e8c9'),
	(29497,1365535481,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','9c642a3918458739390a97f3e1e3a18656af2e41'),
	(29496,1365535481,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','040f8f8e29026892039bae1c3b487886e5126340'),
	(29495,1365535481,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','e7881196b040b39a62f6536945aee640dc28b802'),
	(29494,1365535481,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','040bd80e36f2d5118522bd4d929c63f184607f21'),
	(29493,1365535325,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','9f2f652d88317ffdee9ca5d611f4dba0dc842b6c'),
	(29492,1365535325,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','c6a6b41859bcd19018afbbd20c7b1115f004cbf6'),
	(29491,1365535325,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','ab63ab6b62745ab04e176561c24092feb1651929'),
	(29490,1365535325,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','dd829a487c9e3c5f1292eb94884d8c8c419c0cad'),
	(29489,1365535325,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','4727b4fed724b1532c219d09a0dd89c132cf40b6'),
	(29488,1365535325,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','4c1464f4875dd7429274df0f58d4c0bc999907d9'),
	(29487,1365535325,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','d18bcd51d129465017c841bed8b7c96433fee7bc'),
	(29486,1365535325,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','09a969bb1d6e59e2b278a5a8b4e20fe0b9ab621e'),
	(29485,1365535325,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','31afcc37e5571a8fbb72fe6d7aaad2a4d0961766'),
	(29484,1365535325,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','48ad69f97d9e95a06e1de663023328b66d3ed59e'),
	(29483,1365535325,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','81cce6ff5670e747fb80f2291f7e63709a12c628'),
	(29482,1365535286,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','e95a044df6c174af8ff20d9cd8c1a127b8c6ffcc'),
	(29481,1365535286,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','c31b528ffdb3fe1583670c16fdbcbe7117b7dff1'),
	(29480,1365535286,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','7fd77e8afa8552fa6eb031d4f7eb9a59c83af87b'),
	(29479,1365535286,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','c67633926224130c2dfcabec8fd19a28eb5b459b'),
	(29478,1365535286,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','e699764665dfa95318b765239188fe4b976fb651'),
	(29477,1365535286,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','467e5e9025969c6f9f43b0111aff8bfe4793f9c2'),
	(29476,1365535286,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','6ea154fc83982c1af38af52385a1b4c3ac3cb18c'),
	(29475,1365535286,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','e0f898c0b619456dd48e48897994afa4f64b1dda'),
	(29474,1365535286,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','2bf34443fc65bbdb58cb3a7643958625c12eb93f'),
	(29473,1365535286,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','46c7e06e5e93200e36b9489d6733d627fa3b5cdd'),
	(29472,1365535286,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','269375ac02c45c4ae535dd4141519c6e32f9ee37'),
	(29471,1365534850,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','587719b34a2c149bc9757ff89ba3f2b98487ed97'),
	(29470,1365534850,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','57d6627fb4bbda33deb4f517a12ad004c46d49cb'),
	(29469,1365534850,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','844b1d4b1a697c8be5e8b81e404f6a5ef47d0c34'),
	(29468,1365534850,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','066a25b797aca1936bb5fd56c4edcd6c6acdab71'),
	(29467,1365534850,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','3884792d19e5ada1f4c34d73a48cf27abad10cf1'),
	(29466,1365534850,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','5e6071b64de0f570b69eef6cea49412bbabcd2a2'),
	(29465,1365534850,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','3fc638ec7505b881e3cfa65e6f3865cb358f4c8f'),
	(29464,1365534850,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','133ae8b67cdb907ea1024bf13214ae99edf73b47'),
	(29463,1365534850,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','c1dbc2e6381307321a946a6fc16a475a8030b4c1'),
	(29462,1365534850,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','fa0d028df82ef63038643d8dea573b6dcf02d7a2'),
	(29461,1365534850,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','63585b406512f00c77e0785a0fb2080453d1531c'),
	(29460,1365534836,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','730a30659ae928705de918d0c2775a2c06038855'),
	(29459,1365534836,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','8dfbd93ed988081e14d418c3d622c78f53844578'),
	(29458,1365534836,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','4ffbe7f5468b64d72b221d88e5664df775cee7db'),
	(29457,1365534836,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','2af54e54679841e6d4ce4ad11645dccca718e872'),
	(29456,1365534836,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','e8bd7ae24906c19e5990d92c4067d2040cd0d52d'),
	(29455,1365534836,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','460f3c07f598052aa717e1a9a24b10d2bfaa9fb8'),
	(29454,1365534836,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','5968005a1b1a7212bef9d2bd54b24fc6e52bdcc1'),
	(29453,1365534836,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','84e72818bdc5f5dba7e032544115453ffc72d204'),
	(29452,1365534836,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','fe3a20c03a257a2264e85cf39a1d41af74f3f9c8'),
	(29451,1365534836,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','e311496c636721cfc70d28f49147641996e8cd50'),
	(29450,1365534836,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','4c25a22924f6c354d49dd56b230210c6dcb7c1ef'),
	(29449,1365534818,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','1c2564f58581ba79b4e6a6697ba0c55bc464def9'),
	(29448,1365534818,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','137b71222459035a5e0fe134870b5d459a4d3a5d'),
	(29447,1365534818,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','34a8165247a927132ea77365171292f558900a1a'),
	(29446,1365534818,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','c662c3fdf27c0cbe20c97929344afd9c0a13008e'),
	(29445,1365534818,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','6d744d3e3c1841f95bb21e69406c72f98daeb404'),
	(29444,1365534818,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','14a4fcc070d6ce9ad892ae33ad13e7dc3f319bda'),
	(29443,1365534818,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','48f4ba47475fb80f714a8d6e003c27ec4a29d772'),
	(29442,1365534818,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','67c884ead8cd1a080ccff4c20db03c253a3a7ee6'),
	(29441,1365534818,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','3da37cd20d441c48d07ac9ca76d3e18027c47ecf'),
	(29440,1365534818,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','a18bd4ad01dc3f5b0250d7f26f2c25e1f1297cb5'),
	(29439,1365534818,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','ecc8492efaa1151fee573c0805cb7a3a14036945'),
	(29438,1365534805,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','5e0d663e637acb2c00338ebd97745e7cac8973f2'),
	(29437,1365534805,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','de549356736d0a9b85126a7e4c80651d60e014f7'),
	(29436,1365534805,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','264b29671b0bdaf5f9907a358ce13b787fcd82ae'),
	(29435,1365534805,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','145e6eeb1a14aea81209624e7dcf5e2f1095bb36'),
	(29434,1365534805,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','93c29777aba67d9d51770ce491b69457ef8c7e98'),
	(29433,1365534805,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','b9b04cf9726938ba5c95aa3605f7ca7a796df871'),
	(29432,1365534805,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','470c70d6eb2d3994d75e0690cc66e3c1fcfb68eb'),
	(29431,1365534805,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','f2466cb762ba0554f94981995e10c66999aebe3c'),
	(29430,1365534805,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','416e786e870c4875f3e61663f5c42a1513544fe2'),
	(29429,1365534805,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','c416bc787d124e2571e8c7d10ee656141e8894eb'),
	(29428,1365534805,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','5cbc2da8de2d25b84ccf818eccc7dd0cf0e88d66'),
	(29427,1365534683,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','cf886aa9446a5b8120343c5cb8f927271e7890e0'),
	(29426,1365534683,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','adbcf2b71b16aa248c95f3842163711d6d078f2a'),
	(29425,1365534683,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','4b9109672ecf8aa933326ed49d5409140ddf3671'),
	(29424,1365534683,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','e0b62ab389d4d910009832d7c3025c672467511a'),
	(29423,1365534683,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','97d7d0a19a3208008d3aca63eff55d826de30e2e'),
	(29422,1365534683,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','97761af129dbe6d30aa6639ee084a2ae07b53e67'),
	(29421,1365534683,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','6e9470ebde166772e646b138e4198fb834394738'),
	(29420,1365534683,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','47a53967b1d4ee7f36e5580adccd860676fe55e8'),
	(29419,1365534683,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','89b33ce3fd6d5c87ef2e520ea339e38b3f25763b'),
	(29418,1365534683,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','224ea2230abc0a6dd377225ba74a1320aaf86b2d'),
	(29417,1365534683,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','703521bd69dbec807cc667c3995c2f70ba33430c'),
	(29416,1365534621,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','ebf95214d1672fe2764e2784aebe325bde46b3c2'),
	(29415,1365534621,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','3bdbffb7167133946e575fc05cbe6f00c933c296'),
	(29414,1365534621,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','666f14bcad621a48daae75d038b6376bfa5c214b'),
	(29413,1365534621,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','008eea38e4f85a9901fe67c7be7ef6fcda3a00ad'),
	(29412,1365534621,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','8849752466c677f243e2a04a76d25baba650df35'),
	(29411,1365534621,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','3345fd8027bfa2b5b0965384302639d5c49fc860'),
	(29410,1365534621,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','dedae58234df6ac1609d4048769430690ec89f3a'),
	(29409,1365534621,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','2fc51d41da5ed0d59411df86b372613936508956'),
	(29408,1365534621,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','9c109e0ad50d806cb4621271ab5d279d11693764'),
	(29407,1365534621,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','b8eae037a50f7012e8b7e8a20da1e841dba368f7'),
	(29406,1365534621,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','81400920723b44fb30f9690bc1b259fdc4884876'),
	(29405,1365534582,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','1075ffb052cc07a0dbf04c5568bda68f6952df9f'),
	(29404,1365534582,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','17f64d580478df63c1ab72c534c354494ad628e9'),
	(29403,1365534582,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','4a95206ce87b624d5ff4a64c8ad9ea241c6af307'),
	(29402,1365534582,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','787ab4592c44e4302397ec2ff219e9cf301c8649'),
	(29401,1365534582,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','7a1e083e988d4df4d9ead3cef1269f0ec95aebda'),
	(29400,1365534582,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','1038537a761d0e68dc8bbb5f7b5203293ce99124'),
	(29399,1365534582,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','9c6ecc97d306e11d7f59d1e003f6d84abc4315d3'),
	(29398,1365534582,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','383ec3d5b32333a37de6208f4e9519980bacd0b6'),
	(29397,1365534582,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','f011b60e9f4a342cbc3774931b3be69b9364e7ca'),
	(29396,1365534582,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','5ea773ffb5f87c150b6cf2bad18bc1c55594e822'),
	(29395,1365534582,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','316599beaf2c11d04598115aa16060ad5dc26954'),
	(29394,1365534567,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','b4992e13cf06104e3f30c4ca8b410990de7d2f3c'),
	(29393,1365534567,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','b870395455f208307006706d7fc6785083145c26'),
	(29392,1365534567,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','48f32f88fd5b453b197cfba96d40d6fe2fb2687e'),
	(29391,1365534567,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','52f44591e1a34b8eb9bcb00ab98065e0c2934e91'),
	(29390,1365534567,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','fac9e935f7c671f0206f23483140f9e3e88636b0'),
	(29389,1365534567,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','551cb37a924d89442b2b80db89cd11ac3cbd6f24'),
	(29388,1365534567,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','c69734576ac5572bae7f371f8b365bbe3fe728a1'),
	(29387,1365534567,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','be716a61acd5ed21a63ec48ae781535962ec2478'),
	(29386,1365534567,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','8e063abe542a7db0bd12c085ccc481379aba0963'),
	(29385,1365534567,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','e7840f83680e4269b6f746e792745596be51aaa1'),
	(29384,1365534567,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','bc4e9bd9e6ac61ef61a80de464713bef66a41a49'),
	(29383,1365534562,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','fdc82b301f22e9be37bd1936278f15849213ec0c'),
	(29382,1365534562,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','618f319841f1c96138c27a80e3ecccbeb79176ca'),
	(29381,1365534562,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','7af8365050d44f8aaacf8dddc2ecdfef2d1699af'),
	(29380,1365534562,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','d20f3dfc3293a9231a6053a1007a009ee1e901e0'),
	(29379,1365534562,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','2e2346642dcb03c91c5b7ec5261332956f1df128'),
	(29378,1365534562,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','c2ce56e08e19926ec943c76c54fcfc521d7e65f1'),
	(29377,1365534562,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','17c5aadb3fb1c3c02fc73b9059e876f6448ef2b4'),
	(29376,1365534562,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','d63728a9dec6016f7ddd08d83217f73b262cd852'),
	(29375,1365534562,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','7c9792c0bf393bc55b691862db2093e099e5b496'),
	(29374,1365534562,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','0d635be6fd90ba057b146a14aff2ad4519d946b4'),
	(29373,1365534562,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','7140ddc03cb01cbf6b6bc11edfccdbf7c8e202cc'),
	(29372,1365534466,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','151a1f01177c49bb64adc6290adfbde2256ff353'),
	(29371,1365534466,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','53fc3b3b1e12e637dae836467b240ba933370019'),
	(29370,1365534466,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','f4584c58eb0941f2ef28b81b597d85bfedead019'),
	(29369,1365534466,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','22a73ceb13f76bd0148da7bcd10437c025432244'),
	(29368,1365534466,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','df4785dde998d74b32fd90952914f7fe8984c102'),
	(29367,1365534466,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','87fda649803d6c5d9141cc8ef15a9b94f094a7ce'),
	(29366,1365534466,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','6b51c9bdf964f4b838045e08baa9dcee71183cf4'),
	(29365,1365534466,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','6d81783b212f7959565073a5efff7160a37e9a41'),
	(29364,1365534466,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','a7aca062e0b0670c1ed1db40b9d52848dbef0d87'),
	(29363,1365534466,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','b62b48676391adcd6f8499a433b0257abf503773'),
	(29362,1365534466,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','8409b9935ff052fe5e10fea1120118bc257629ba'),
	(29361,1365534446,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','a81dfff4a41a5f4fd53674a91c9746b18bc6b5e7'),
	(29360,1365534446,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','fd140fe129a715724950e651d03b04e87ef55afc'),
	(29359,1365534446,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','b3e46086fca058401565ad114957235e2a12f3df'),
	(29358,1365534446,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','26410712c781186e4e957dff9e74b49efd232bac'),
	(29357,1365534446,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','f0f73b8d49846a9fdb23de05f6da9a2015dcd500'),
	(29356,1365534446,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','6ea58523b467a814b1e0e4d1431f373086ab5ce7'),
	(29355,1365534446,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','fdf15f7dc9d96b09b893563e24777d054e32cb48'),
	(29354,1365534446,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','53242a4e81a909c92378f84e8f82c164157880fa'),
	(29353,1365534446,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','d56d88b5db3e4f7f4717bac6409bd5b150ed2185'),
	(29352,1365534446,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','a127edbc8de98f563e4d57bff0cb66d78a6cfc0b'),
	(29351,1365534446,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','e4f36e7a82126031ba114a27d29bcc3c60fc1073'),
	(29350,1365534441,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','b189f2a46ff6ffe10b7a8580edc1ea23ad28a302'),
	(29349,1365534441,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','7ccb8b1a3f73374aebb47d4cb0b84904249e35c3'),
	(29348,1365534441,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','1b3d822c77cef065a13a45a8801ae129764c8904'),
	(29347,1365534441,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','7c71530f7d4eebce3b2917e1e215f06d946b2c1c'),
	(29346,1365534441,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','18e1d16c926837d0b39e6a096400c3a9d8b5810d'),
	(29345,1365534441,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','7a587def10db790a21148074045c0e784bb4258c'),
	(29344,1365534441,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','26c725d4c49b9b3ae20408b8b71e59e8bdd3bae0'),
	(29343,1365534441,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','c459a4abd1a4b95e0963c77120dc4ad55d4f1470'),
	(29342,1365534441,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','07b32587ff9503d3216a9286118c0fdbabb4ff02'),
	(29341,1365534441,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','1632738251ff9e0a3d14729e1f4c11be1364ef77'),
	(29340,1365534441,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','cda2a9945c8c1bf907b3597cac5855b9c2ea8672'),
	(29339,1365534216,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','8baa3682e6cff3fe0456ee8bfe0a0d5858911b6a'),
	(29338,1365534216,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','5ce72ad2dfcaae28ac4993acf54eb878bd33290d'),
	(29337,1365534216,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','6245514dc894a9de13263137432348b8bf50aad9'),
	(29336,1365534216,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','7669bdbb7831807034e3a8443ecc19dbaa3a84a6'),
	(29335,1365534216,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','59715a2aa67c6b98eb01c0da4fd9034ea1ad85fb'),
	(29334,1365534216,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','533e7d2ed4b68b2e53ac7f96493392eb00ccc3e2'),
	(29333,1365534216,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','3d17adff5b59bcf7d4f6e0e8cd0ddb15967267ad'),
	(29332,1365534216,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','c0dffa2503dcfc33ab57cbbeb8bf16af8a5b47a8'),
	(29331,1365534216,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','6588be075378f37446905cb2e8c9c0529dd50d01'),
	(29330,1365534216,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','da9f129073db6aa90bf99bfb11bf494d4847fe3c'),
	(29329,1365534216,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','1afe012099f520947c80e7d27f4dd5ce38ee8a95'),
	(29328,1365534213,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','f173b371d66ace0e7f46baa5f90e35b1a91207b9'),
	(29327,1365534213,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','66327422d0f327d40de297299b675d9bb2267d9a'),
	(29326,1365534213,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','d1fb526ba1840464a0fc69b9e47953afd5e09380'),
	(29325,1365534213,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','09df0d60f2a5cccb839611c43af4278a3d2a7cae'),
	(29324,1365534213,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','dc544eb4b3d876ce55b061f059df0e09c8ed21ed'),
	(29323,1365534213,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','9e6c0334f825166a1c0d571472d42c79e7c97cda'),
	(29322,1365534213,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','3737d0a5fe7a573309ee3035f35beb337461c1cf'),
	(29321,1365534213,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','b90ecf6d71d89b0e698834047a6738daed5ae2e9'),
	(29320,1365534213,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','f1ef0dc02a90f6bde9c949a806dfde04971ea9f0'),
	(29319,1365534180,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','bb1c5bf1c7ed221c122773be51c02ec809eaf597'),
	(29318,1365534180,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','4b7a683bb931f281c9fa9c195b88800335c12aba'),
	(29317,1365534180,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','7f803f25481674c4505b192cc6aa1a8adcc7ff5f'),
	(29316,1365534180,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','0300c5218b85d0f39673f4368326ac84600d89d3'),
	(29315,1365534180,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','1e754039c131541697b40ba10d11f0df040c0b4d'),
	(29314,1365534180,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','2e597dea3916023044857b0cb475ec6897ba1cf3'),
	(29313,1365534180,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','7fbec931db98dfd5af90b2ecc8a940688550d6ab'),
	(29312,1365534180,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','737e84e4782411f403143736d0061e4dd6d18ca8'),
	(29311,1365534180,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','6da73bef326aa4cdfde981a3c33634da6bc2847d'),
	(29310,1365534172,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','050ceeff29b916144ca6b04dc0f1ddb4707ab780'),
	(29309,1365534172,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','d8a9aa779bf4b2f7c1ba2886b1c6f4900fac6b2a'),
	(29308,1365534172,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','0916fe03e39a62a66f0facd98574445e37936243'),
	(29307,1365534172,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','9ed7440034eedc0432312c1eac94f5b658b3f6af'),
	(29306,1365534172,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','31b6579b66b2215d10a641df51ded3e7583a1c20'),
	(29305,1365534172,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','289611ae0dd99a41d9dfb579c5afb5b5807358d7'),
	(29304,1365534172,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','3e65ff8855a10851f4f80d4e47d797f09e73301f'),
	(29303,1365534172,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','0dd1d1a6f9bad9c4b822e517caf1d8f0e2f7b011'),
	(29302,1365534172,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','e97ae4f0dd7931c0dd1eb7f76c75a285e4e31cf7'),
	(29301,1365534172,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','f6f6420fc899298b5f7d7ff723d50981e75d0652'),
	(29300,1365534172,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','e6ad680c0a1d96a7a552481b19b4907ed20631bb'),
	(29299,1365534162,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','0f062899427a2ec9f4fe852d0c3581a07730ffa3'),
	(29298,1365534162,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','86a83ab897ca14fffc40fb7ba9a888a07c3a18aa'),
	(29297,1365534162,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','f38216ec67afe09cc60450d3618a1531470d4a4b'),
	(29296,1365534162,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','e9b81d0f53f6a1b371be68bb6e46844644135a1a'),
	(29295,1365534162,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','1ba83e67c858dd2074704ceefff1c362afbfb534'),
	(29294,1365534162,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','375ec094a7c585296feb08eb9f3b34bd26e50d81'),
	(29293,1365534162,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','f317a60f66886b6091ffe808a0f13fcaaac3cc8f'),
	(29292,1365534162,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','9413ca818c4d55091583803697de94652d74377a'),
	(29291,1365534162,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','11867375b5057e346453fe19ed2b88d988b088d7'),
	(29290,1365533687,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','2d4f993c74f8149bcbab1bf726df72b23d97b51f'),
	(29289,1365533687,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','1e6b26575e2a2149bda671548ee0b135340df727'),
	(29288,1365533687,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','c3631e9a0fc260410ea1302cbe31e9a1f53fa0b8'),
	(29287,1365533687,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','ceb3c77a5219e66d3c489ee29b241b6d1f190c1c'),
	(29286,1365533687,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','44422fb185e460658b9bf722a6b30e337a7738f3'),
	(29285,1365533687,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','2d034ac936a1b79b258549ad370b6b47675a7fea'),
	(29284,1365533687,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','ba3202b7ee0c03a5c36a599cdb85807d5733fbf9'),
	(29283,1365533687,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','fcfe929c2a13282b157faeedb7c3ab12d74b2e49'),
	(29282,1365533687,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','94b3f52048bdb78233b18bbc88c9b865fbc25a78'),
	(29281,1365533687,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','60b3bc69fc7b2aa7bbb080c434af8115803a7ead'),
	(29280,1365533687,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','73ae4877a682352f320b61893f405196d4ed3b93'),
	(29279,1365533676,'4d4edaa61de1487e69c51850deebf41e9241592d','8f08d0b2d2de2c4aa1002f970438702167247540'),
	(29278,1365533676,'4d4edaa61de1487e69c51850deebf41e9241592d','4adc1f596a75c5fe9254c688ae649c3e37f5e622'),
	(29018,1365530874,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','d7ddee5d4a773051774baf08070481ad04ca9c13'),
	(29017,1365530874,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','2ae13102efa41c819dca943f16b607d3e539433c'),
	(29016,1365530874,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','bb437046f81993a3f3a316d1c19c403559c1ae60'),
	(29015,1365530874,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','65ada3381a80d94e415e163ccb8e1332aff7a40c'),
	(29014,1365530874,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','d9b34fb9d00e501245887df8e159914381bbe12c'),
	(29012,1365530866,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','ea2a062476b6b00be0f77dfc2cb809f9185c9678'),
	(29013,1365530874,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','bfc38ef91fad2c86134dcb70dac2e6f0334cac71'),
	(29011,1365530866,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','5bdffa601f9e0fbb57554aca04c2769c729531c8'),
	(29010,1365530866,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','6a2e5ad37ba93a16827fc51d0b7fa0f3f8f08b5b'),
	(29009,1365530866,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','19ce62f7d9fcbb783f90e556fe609b6a55be0de1'),
	(29008,1365530866,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','3a58f50a11fb2d0bc9fb6a0dc3daf7a092f86b31'),
	(29007,1365530866,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','040fe2486d3d877474913f3bb4021bc6f1295f47'),
	(29006,1365530866,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','b330febf34c37753a11d16ed96fbfc7d8347a774'),
	(29005,1365530866,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','81d4b60c3133ea305e90d7b2a5bb39bbd0347e23'),
	(29004,1365530866,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','3785cd6454a44fa4fff7b4c2547266e7e6cf348b'),
	(29003,1365530755,'4d4edaa61de1487e69c51850deebf41e9241592d','e3439aef9d6c6844e0404cfe4ddaa366c25aae3b'),
	(29002,1365530755,'4d4edaa61de1487e69c51850deebf41e9241592d','295ff57ebe17b4e08f072c47deb1bb7df000d400'),
	(29001,1365530755,'4d4edaa61de1487e69c51850deebf41e9241592d','5204646154959bdca9000e7fd827a3a18aa64e46'),
	(29000,1365530755,'4d4edaa61de1487e69c51850deebf41e9241592d','85406cafcd9ea6757d6835cd05f192fc31f4a410'),
	(28999,1365530755,'4d4edaa61de1487e69c51850deebf41e9241592d','98c9eb65d3ebd10262ba73c95b597f3afa62f328'),
	(28998,1365530755,'4d4edaa61de1487e69c51850deebf41e9241592d','6b1d8ca8f572a0b6266f0d9443ad8f43e2fb81e7'),
	(28997,1365530755,'4d4edaa61de1487e69c51850deebf41e9241592d','9d238e4d2c2c116c123a05d151b7ae54203ba86b'),
	(28996,1365530755,'4d4edaa61de1487e69c51850deebf41e9241592d','87591172e51bbece039c9b74355b137cf81dbd07'),
	(28995,1365530755,'4d4edaa61de1487e69c51850deebf41e9241592d','3bfbc0187b5b9f80eecfe5ae3fd659b8c01b01b8'),
	(28994,1365530671,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','65da30a19ecd624bbde3593f023d3f5102a246e6'),
	(28993,1365530671,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','ed01378c516f84c7a9f1d9abf8929f12fbc47168'),
	(28992,1365530671,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','61c6b7defe6ac935708264810bdcf99fd1281693'),
	(28991,1365530671,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','3ff861ac478c95a9a0434b1f33fc7ea3020ffee6'),
	(28990,1365530671,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','8d8b1f52c00245a78eeadc286c1a274ae4e6b47e'),
	(28989,1365530671,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','eca0b5c663a41298f43fe357a67e6d2448c044b4'),
	(28988,1365530671,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','ea9ce5a8c9692a8248a6ff3192c344c08fd12ee0'),
	(28987,1365530671,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','e3b91d722041eb87bebbd3c72f8532959c7cd688'),
	(28986,1365530671,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','e858d0b61ec205799d340552d75541b7e1323d13'),
	(28985,1365530645,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','39a9dc94234ac90265cfb63621dd4485d40a0e22'),
	(28984,1365530645,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','7b80594495f97903db5083ede9419ab8482db43e'),
	(28983,1365530645,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','bf6e8f96887dc14b5f00664f49c4cb768e7fc428'),
	(28982,1365530645,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','e301b7f5292ea8b76e4a95d58ba5f8102e3c673e'),
	(28981,1365530645,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','59588413bddf247bf07b379e7231b6fbfd800c9c'),
	(28980,1365530645,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','6f51d3432b38a78faed01a76d0efb7cffb2bfb6a'),
	(28979,1365530645,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','6fd670d8559d5debf3027a173d5ad7959511ee9f'),
	(28978,1365530645,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','5c5edffd3a5a9529a62c1529be8836fb0210518c'),
	(28977,1365530645,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','9cad1230d84eee46c6e6247d5edd008dd9e8c5ad'),
	(28976,1365530633,'4d4edaa61de1487e69c51850deebf41e9241592d','d3abc975b1dc5134401fa13afb55976b68552afb'),
	(28975,1365530633,'4d4edaa61de1487e69c51850deebf41e9241592d','390a95de941c1a83fe6990210cdd794b0a176d82'),
	(28974,1365530633,'4d4edaa61de1487e69c51850deebf41e9241592d','d0504ae0cc8feb1eeaae6b92229f998164338175'),
	(28973,1365530633,'4d4edaa61de1487e69c51850deebf41e9241592d','cdcd4b654aa9745bc843278818d61e8b175f9aff'),
	(28972,1365530633,'4d4edaa61de1487e69c51850deebf41e9241592d','c532e46b5ac90e4a9653c6ee0416e935ad77e751'),
	(28971,1365530633,'4d4edaa61de1487e69c51850deebf41e9241592d','9ff6251b986a0a90412edf37d575974564fe982c'),
	(28970,1365530633,'4d4edaa61de1487e69c51850deebf41e9241592d','5119f3a37afe82d2797da0edd8212e55750845f4'),
	(28969,1365530633,'4d4edaa61de1487e69c51850deebf41e9241592d','5ead8a3fe8a217c07a18a1971947ac9bf50f6210'),
	(28968,1365530633,'4d4edaa61de1487e69c51850deebf41e9241592d','dcf215a074681b55ef75f4f4a4d6f4226da0b488'),
	(28967,1365530559,'4d4edaa61de1487e69c51850deebf41e9241592d','fa001aafe0e7588b1e048c8f197e9854fc48690b'),
	(28966,1365530559,'4d4edaa61de1487e69c51850deebf41e9241592d','f7f676a45ef57e9f7b222c5bec112ff4e53744e4'),
	(28965,1365530559,'4d4edaa61de1487e69c51850deebf41e9241592d','b4f48fce0edc91ff1bdef014264416fbe933f9b1'),
	(28964,1365530559,'4d4edaa61de1487e69c51850deebf41e9241592d','913a3071ff3f62774b06b858d43991be326a7bc9'),
	(28963,1365530559,'4d4edaa61de1487e69c51850deebf41e9241592d','af5d1d389a1a9028e1a73d595b36af357d7e0258'),
	(28962,1365530559,'4d4edaa61de1487e69c51850deebf41e9241592d','fe3b073e124b63532b8cfecb4c4a791f9adbfa76'),
	(28961,1365530559,'4d4edaa61de1487e69c51850deebf41e9241592d','15fafc0ae5e94e5be4a384e8bc09181626050836'),
	(28960,1365530559,'4d4edaa61de1487e69c51850deebf41e9241592d','067dab20d14766efba71338cfa480835530c8e3c'),
	(28959,1365530559,'4d4edaa61de1487e69c51850deebf41e9241592d','0725158b76fc9eceb1f02d8c59c3c49b4e737868'),
	(28958,1365530067,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','8330d7569c1e6882193368596e3cec51e0ac33b4'),
	(28957,1365530067,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','3daa8e0f8c5d2e4c9ee9d6eade64afcc539bd926'),
	(28956,1365530067,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','71cf1f8d1d9c58dd34cce5f6917901d10e3637a9'),
	(28955,1365530067,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','0e2250ee8310fdfbaf1a26f3eb6ae483fe4c1c73'),
	(28954,1365530067,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','cc43e3ce7fceb3c1ad5e7541b48f09ded61d0655'),
	(28953,1365530067,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','e966ff0cb58c9fe739ce343add11f6339ef9e3c2'),
	(28952,1365530067,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','87f0f2ed7c399c7e96d7c0354c3881dd354b697e'),
	(28951,1365530067,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','96c417137ec6dd665d731dddcb7c2ead1dbc2121'),
	(28950,1365530067,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','2ea964c05787e157ba1922101021a6f308efb7ee'),
	(28949,1365530057,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','dec34a4918dcf53add1c082de695953ea58af6de'),
	(28948,1365530057,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','2088c2a4a4536b16dcbb4e52810c43d70d2cb10e'),
	(28947,1365530057,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','803cbcb362cc0d33b76c712061f2b45ba8291017'),
	(28946,1365530057,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','2fc3d2200609d28fe1ae9c9f2f3eb22c3230644a'),
	(28945,1365530057,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','cff140124efccf0963d6a2aa9910859915394f92'),
	(28944,1365530057,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','1e46fdea53d4e4463328cbccc53915fdfc07ec14'),
	(28943,1365530057,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','0bd3e2bfc79f35c89eaeb6de0476c4f21480ca27'),
	(28942,1365530057,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','699d46b69185a3ec48ae7fa65320b2a3ba382f2f'),
	(28941,1365530057,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','03ba72f0698497a220de29a6589d2e14a11142a5'),
	(28940,1365530057,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','9a34af1757ab515f4125f6012afffd5755ffa0ff'),
	(28939,1365530057,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','a9ca090cc83979fedee0db3f70b130769c3939d2'),
	(28938,1365530057,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','1fe402a9eb718822ddd66edf447de0625b1cb74a'),
	(28937,1365530057,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','5bf96704c49ab53a079be0ee78ea4122c3ff93df'),
	(28936,1365530057,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','cc5b23402b23d828fd5f993966e4a8dc701e9789'),
	(28935,1365530057,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','7a9d17790583b02ff5acb795bb2fa7af225e5597'),
	(28934,1365530057,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','da16a010265df10897bcde444644ac3cdb59b76a'),
	(28933,1365530057,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','7a650cbacc5a3a00988b24d9972da1fcae7305e4'),
	(28932,1365530057,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','095186443c033c4005da167a6b368d83c08be645'),
	(28931,1365530045,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','dfefcc0d783888569274065917dd3a1e87f22375'),
	(28930,1365530045,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','00ff72afa13756bf5a39d12948e4afd0bab2a3fa'),
	(28929,1365530045,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','5569e06920d59950741cddb01c713f7cc7c0ac98'),
	(28928,1365530045,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','d7b587a331e686da5659781ffd419eed1da1f043'),
	(28927,1365530045,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','fdeaa85174c6aa9206f417d35381f054381d221f'),
	(28926,1365530045,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','7793678805e506cb3280a94cd61bf1b18136d2dc'),
	(28925,1365530045,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','ea173a3415ee0f73f2dcf1e955280d33f0920437'),
	(28924,1365530045,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','80a57eb2eda48218c2066bd27d36e6be5cc3890d'),
	(28923,1365530045,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','f1502ae908670987a557bade9d612f47a0ad4997'),
	(28922,1365530038,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','d18e0b542fec1b776f0e10d4b032521506dc0784'),
	(28921,1365530038,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','a5454b6f8a6cd099d4cee037f12df2ba10d477f9'),
	(28920,1365530038,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','90ac6cd3f87acb60c3d27d8623067dff072344cd'),
	(28919,1365530038,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','368052d0a5a92253a2f0cabba0686175cf4bbdd8'),
	(28918,1365530038,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','1145e226aa545247deafc7f6d87bec1760e3f5d7'),
	(28917,1365530038,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','09d94ca290ed8f700236d8b6baa9fd4540cdd519'),
	(28916,1365530038,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','85d870ce7e0aabb331a907deb3f02ffc78b098c2'),
	(28915,1365530038,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','1334b2fd471d3aa45240c1c1cd626a73bc018ccb'),
	(28914,1365530038,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','e17ce92eed3dcd14399bca42c6b1bb8e441ef036'),
	(28913,1365530030,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','c2b8c10e631aac1cc1b018812e4fb06ea128a833'),
	(28911,1365530024,'4d4edaa61de1487e69c51850deebf41e9241592d','4b17ce9facd0556e3279c9c814d7f5686e2c3cbe'),
	(28912,1365530030,'0','bddf89981d8391d818ec5c0e46a4447230e8a280'),
	(28909,1365529887,'4d4edaa61de1487e69c51850deebf41e9241592d','bee8ac1cc5640b53d44ba31095f8cdeb9d77ca37'),
	(28908,1365529887,'4d4edaa61de1487e69c51850deebf41e9241592d','fc5c42f5b95fc49142356167eeebbdc097b31c40'),
	(28907,1365529887,'4d4edaa61de1487e69c51850deebf41e9241592d','88df46233d27522cf0c7f125d377955f68dce80d'),
	(28906,1365529887,'4d4edaa61de1487e69c51850deebf41e9241592d','8e8a2ae7dac6438ccd200a5d494393c97e858007'),
	(28905,1365529887,'4d4edaa61de1487e69c51850deebf41e9241592d','a815cf85c510ab9a5c0f8ec2c4759d656e190b56'),
	(28904,1365529887,'4d4edaa61de1487e69c51850deebf41e9241592d','a9808d58db1202ae9d5b7b6c2cc3983f9e196221'),
	(28903,1365529887,'4d4edaa61de1487e69c51850deebf41e9241592d','7ac4c6fc60d3998ac2f12d50815891d28f177b39'),
	(28902,1365529887,'4d4edaa61de1487e69c51850deebf41e9241592d','cf1e82dd2d3dc9ad0e56abe140ed209cb709bd73'),
	(28901,1365529887,'4d4edaa61de1487e69c51850deebf41e9241592d','1db032329963bce439125ad7ba74ad1a4985aa36'),
	(28900,1365529824,'4d4edaa61de1487e69c51850deebf41e9241592d','8be21adb414ef4d0196bfcba0e7c6eabb282824c'),
	(28899,1365529824,'4d4edaa61de1487e69c51850deebf41e9241592d','729254ce418a20cff7712e495572731136bf4a71'),
	(28898,1365529824,'4d4edaa61de1487e69c51850deebf41e9241592d','aef90facc7bd00997aa6890a1dd4d91ed1d968ad'),
	(28897,1365529824,'4d4edaa61de1487e69c51850deebf41e9241592d','bdf81f18f84851fe183e0cd807c34e43ca02416c'),
	(28896,1365529824,'4d4edaa61de1487e69c51850deebf41e9241592d','362f3027b82415af3b8fb36e7e3cea2607f2b386'),
	(28895,1365529824,'4d4edaa61de1487e69c51850deebf41e9241592d','8ebf0e0395e26246345850c891931060c8a99b97'),
	(28894,1365529824,'4d4edaa61de1487e69c51850deebf41e9241592d','3ebb81376ecb7f6b5a3d6dbdbb615d09bbc0ca8b'),
	(28893,1365529824,'4d4edaa61de1487e69c51850deebf41e9241592d','8bb5c0c4dbec7103a3e3b13a81a14dc511ea7ef5'),
	(28892,1365529824,'4d4edaa61de1487e69c51850deebf41e9241592d','079b2211f4f266019f751371d213f90aaa6b235b'),
	(28891,1365529824,'4d4edaa61de1487e69c51850deebf41e9241592d','a7e574186f4297756d62b60670b694a398b4c05e'),
	(28890,1365529824,'4d4edaa61de1487e69c51850deebf41e9241592d','6c2131ce90d0652587fc0aa69f49bedf4f0bbac5'),
	(28889,1365529824,'4d4edaa61de1487e69c51850deebf41e9241592d','f5efad8d1af8571c95a0bd16c447d613e2dfe8ca'),
	(28888,1365529824,'4d4edaa61de1487e69c51850deebf41e9241592d','acb2220351fa95faec6ed334202622acd6fb2383'),
	(28887,1365529824,'4d4edaa61de1487e69c51850deebf41e9241592d','cf7712b64510881dcbd8e516249aaf3ef14a458d'),
	(28886,1365529824,'4d4edaa61de1487e69c51850deebf41e9241592d','a0a91b6d479719e7f222088efa7b7522c3892124'),
	(28885,1365529824,'4d4edaa61de1487e69c51850deebf41e9241592d','96ac3a246519461177f811426d48cb592ed0c388'),
	(28884,1365529824,'4d4edaa61de1487e69c51850deebf41e9241592d','82e40d06b5d61fb477b7c6a305c0246d6000fef6'),
	(28883,1365529824,'4d4edaa61de1487e69c51850deebf41e9241592d','2829a57372165830fb836d9f9ee15b47e9e33a2d'),
	(28882,1365529822,'4d4edaa61de1487e69c51850deebf41e9241592d','16cddffd483b888dc86dfc64f26c103b3b607758'),
	(28881,1365529822,'4d4edaa61de1487e69c51850deebf41e9241592d','04ec73f52c239238c730e103c76b94178b5b0f6e'),
	(28880,1365529822,'4d4edaa61de1487e69c51850deebf41e9241592d','2706d9eb016a97ccc73d855a2b6040e59eda92f3'),
	(28879,1365529822,'4d4edaa61de1487e69c51850deebf41e9241592d','f91250fda0d3ad689f374a583f3dd5d9772d9ed8'),
	(28878,1365529822,'4d4edaa61de1487e69c51850deebf41e9241592d','161bb0fe159d71aa971590f6034f521153ce7b1a'),
	(28877,1365529822,'4d4edaa61de1487e69c51850deebf41e9241592d','fa6a914cb152c28a1848e9cc03535f3cf304e33f'),
	(28876,1365529822,'4d4edaa61de1487e69c51850deebf41e9241592d','92f4271b309dbc946a5f7fd3b01092eca7129162'),
	(28875,1365529822,'4d4edaa61de1487e69c51850deebf41e9241592d','56e3a575302251cac16c67f182469fbec367997f'),
	(28874,1365529822,'4d4edaa61de1487e69c51850deebf41e9241592d','00f074ba3ea389aaafe35fc8e5f22c522880183b'),
	(28873,1365529820,'4d4edaa61de1487e69c51850deebf41e9241592d','fade6d461e79c25dd75411415621e82b2b7ac1d6'),
	(28872,1365529820,'4d4edaa61de1487e69c51850deebf41e9241592d','72dab72e54b29c71f9008ef960a9ad0b10fda0f0'),
	(28871,1365529820,'4d4edaa61de1487e69c51850deebf41e9241592d','5f94bc071b4443e84ac2c59829dd34cc6779cba2'),
	(28870,1365529820,'4d4edaa61de1487e69c51850deebf41e9241592d','bdc99727392960f81cceb410803cf1a29382cded'),
	(28869,1365529820,'4d4edaa61de1487e69c51850deebf41e9241592d','ba63fce7f194944cadd4ab2713d3d16ea706b995'),
	(28868,1365529820,'4d4edaa61de1487e69c51850deebf41e9241592d','27ec1b56fc9d7075c2b3d07e5bea7698aeb7b07f'),
	(28867,1365529820,'4d4edaa61de1487e69c51850deebf41e9241592d','60c70a1a513e8cc4b1de42008f9863364435dffd'),
	(28866,1365529820,'4d4edaa61de1487e69c51850deebf41e9241592d','d1343421d84d48dc51eb0c072f605c978b69318a'),
	(28865,1365529820,'4d4edaa61de1487e69c51850deebf41e9241592d','e7f64b9f87dbef9f0823039d0d719104828fc655'),
	(28864,1365529759,'4d4edaa61de1487e69c51850deebf41e9241592d','d811e8ca6b033553f233a8964343346916ae5730'),
	(28863,1365529759,'4d4edaa61de1487e69c51850deebf41e9241592d','8b5143d8bf2c68db7eb8806880b47a701b1f9dec'),
	(28862,1365529759,'4d4edaa61de1487e69c51850deebf41e9241592d','a384061f890e55aa43cc629fa7d89852e3fd036e'),
	(28861,1365529759,'4d4edaa61de1487e69c51850deebf41e9241592d','17eeaa75481dd6346b2c3acef4c0529256ad95b7'),
	(28860,1365529759,'4d4edaa61de1487e69c51850deebf41e9241592d','4ea1cd0201797d661c337bef3c5ef7e9f8af076f'),
	(28859,1365529759,'4d4edaa61de1487e69c51850deebf41e9241592d','58ef6e6fa363641282890027b959b717e85cde17'),
	(28858,1365529759,'4d4edaa61de1487e69c51850deebf41e9241592d','896854245a45cfed8985ed93eda933ecd6bbeff2'),
	(28857,1365529759,'4d4edaa61de1487e69c51850deebf41e9241592d','d5cf0881e65d42fb83ce8d534da545b8ed0bcf57'),
	(28856,1365529759,'4d4edaa61de1487e69c51850deebf41e9241592d','fa24e6bf5d84bca52aa46d3604154307aa755d79'),
	(28855,1365529758,'4d4edaa61de1487e69c51850deebf41e9241592d','0733866a111109e087ccbd0195304606344f21c8'),
	(28854,1365529758,'4d4edaa61de1487e69c51850deebf41e9241592d','14bf3c7a75660532ae3ca6b82bb6ded13476cb57'),
	(28853,1365529758,'4d4edaa61de1487e69c51850deebf41e9241592d','33d7c203e2e6782f1cbacd82a5216db9f1eb1d4e'),
	(28852,1365529758,'4d4edaa61de1487e69c51850deebf41e9241592d','51c0ff971fd528a05035c31f33f72292a9174953'),
	(28851,1365529758,'4d4edaa61de1487e69c51850deebf41e9241592d','f97026eb7bedb1b937636c3dabef91a88dab7f48'),
	(28850,1365529758,'4d4edaa61de1487e69c51850deebf41e9241592d','e02a47e81308db49b2b08746ad393e1d2b40ac53'),
	(28849,1365529758,'4d4edaa61de1487e69c51850deebf41e9241592d','6c4d352360f0515ddfcd53ca9ac76f125aa20d4d'),
	(28848,1365529758,'4d4edaa61de1487e69c51850deebf41e9241592d','f883c5ca29ae6499b8b714a6f80ebaf1bbd0480c'),
	(28847,1365529758,'4d4edaa61de1487e69c51850deebf41e9241592d','93f49f1afa5d3bf1b72f84204bfd91824a1689d3'),
	(28846,1365529756,'4d4edaa61de1487e69c51850deebf41e9241592d','8b321a48ca4c556ee744d2cd3ac57dfcfa59b3ed'),
	(28845,1365529756,'4d4edaa61de1487e69c51850deebf41e9241592d','eaad2e0d629df82746f3bea604451881db27007b'),
	(28844,1365529756,'4d4edaa61de1487e69c51850deebf41e9241592d','4f2dc5a7fe9c17f14ca744714f83c31625ec07e4'),
	(28843,1365529756,'4d4edaa61de1487e69c51850deebf41e9241592d','598e2b3438633fcdd21118a630c2657359e3653f'),
	(28842,1365529756,'4d4edaa61de1487e69c51850deebf41e9241592d','dfe1574d32898d993dace57105985d406ee555c0'),
	(28841,1365529756,'4d4edaa61de1487e69c51850deebf41e9241592d','dae3d53ce74a8f29c843683166864fd7d42f5203'),
	(28840,1365529756,'4d4edaa61de1487e69c51850deebf41e9241592d','33921c26d4d07540294fc9d3457f5b7aa9afc66b'),
	(28839,1365529756,'4d4edaa61de1487e69c51850deebf41e9241592d','de5870247dd704390695adfeb4336739c8130e95'),
	(28838,1365529756,'4d4edaa61de1487e69c51850deebf41e9241592d','8b9d06fadf464e407ff0dd29b390cc4dc79a850c'),
	(28837,1365529754,'4d4edaa61de1487e69c51850deebf41e9241592d','4943b5f09d5913994436c1fcf4578ce108951c27'),
	(28836,1365529754,'4d4edaa61de1487e69c51850deebf41e9241592d','0e228779d8841f90dfd681856c909984e334fe95'),
	(28835,1365529754,'4d4edaa61de1487e69c51850deebf41e9241592d','c4e6f4b4f9700f7f08f94d858c0ef74056404aeb'),
	(28834,1365529754,'4d4edaa61de1487e69c51850deebf41e9241592d','5a85740019b6a61240cc218ead73e0bd601c4015'),
	(28833,1365529754,'4d4edaa61de1487e69c51850deebf41e9241592d','0baba673c1b2683d77664bf32083e59ece2611ba'),
	(28832,1365529754,'4d4edaa61de1487e69c51850deebf41e9241592d','646ce1d00b7d6d7706e0af7d2d08c479d336874f'),
	(28831,1365529754,'4d4edaa61de1487e69c51850deebf41e9241592d','3ccfb58baff3f3895fb1f257a81ab15123df3b7e'),
	(28830,1365529754,'4d4edaa61de1487e69c51850deebf41e9241592d','2b857a52672ed85d9d434d8ea6e931551cdc4158'),
	(28829,1365529754,'4d4edaa61de1487e69c51850deebf41e9241592d','634594e7cf7d6dcd69381bad307428f537e95961'),
	(29708,1365536447,'20ca3af64a53669dad9e6d72e80dd5a59ae0757b','915908fe6e58a32ea721acbfcc02198113049266'),
	(29707,1365536447,'20ca3af64a53669dad9e6d72e80dd5a59ae0757b','221d453b4c4367adaac017ed833e1f44527f81d0'),
	(29701,1365536447,'20ca3af64a53669dad9e6d72e80dd5a59ae0757b','57176ba3cf83b7ed34e815387df48dd0eadf01e6'),
	(29702,1365536447,'20ca3af64a53669dad9e6d72e80dd5a59ae0757b','5e5650b4968c6700373c62d23637e04fc47b751f'),
	(29703,1365536447,'20ca3af64a53669dad9e6d72e80dd5a59ae0757b','c42a950fbfdacf6786eabfa7d1bb58315af41222'),
	(29704,1365536447,'20ca3af64a53669dad9e6d72e80dd5a59ae0757b','8471f70d56ff2fac6f585a14ebbf9eb4c98a0b4f'),
	(29705,1365536447,'20ca3af64a53669dad9e6d72e80dd5a59ae0757b','7a653de8b5e3eb94fbcefc54c3b8ae13f0e8d18a'),
	(29706,1365536447,'20ca3af64a53669dad9e6d72e80dd5a59ae0757b','651b538a449fa17b63f092d4f764ffe1f0a8aab8'),
	(29189,1365531146,'4d4edaa61de1487e69c51850deebf41e9241592d','0ad39563fb5d9475cd170d10e890143f3cfcbf79'),
	(29186,1365531146,'4d4edaa61de1487e69c51850deebf41e9241592d','3317875e955aa7476d86edc47198d772c77a19f6'),
	(29188,1365531146,'4d4edaa61de1487e69c51850deebf41e9241592d','b4e6a82a3aca62a938cd363c1528f052ad07f64e'),
	(29187,1365531146,'4d4edaa61de1487e69c51850deebf41e9241592d','5aee1fa56d9e5524725a15cedea1ccd189db0680'),
	(29185,1365531146,'4d4edaa61de1487e69c51850deebf41e9241592d','f10b25e7e7bfedfb32b7624f85d245f59ec2b40e'),
	(29184,1365531146,'4d4edaa61de1487e69c51850deebf41e9241592d','ea18f7ab4b62d5447b40b1df323941b638109ff9'),
	(29183,1365531146,'4d4edaa61de1487e69c51850deebf41e9241592d','7e9d52d82963313ab5fcf5d89b08e681ca22dc42'),
	(29182,1365531146,'4d4edaa61de1487e69c51850deebf41e9241592d','e8df8e7b805bf905cca888f961eedfc582ddc290'),
	(29181,1365531112,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','1da87291267b99ac74761a82d76926364bcdb6b5'),
	(29180,1365531112,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','0a161d03baf0c685d3df24b6b382c71f5b14e502'),
	(29179,1365531112,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','200050e71dc2d87844400f93212cde27f5fb9fa2'),
	(29178,1365531112,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','cac9ed601bac72d7e672599a51d1a682aeecad66'),
	(29177,1365531112,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','1b1b2dddae165977c51799f40211853605876a1d'),
	(29176,1365531112,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','e9d55da285f7879bae2832b715157dc683458136'),
	(29175,1365531112,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','8f467fba65188bcbc981850b11c6d62c96f6d4d6'),
	(29174,1365531112,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','240f1793439e7fa9a3b9fedbed45f5774b6cfd0d'),
	(29173,1365531112,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','96bf1757c93a97197da6758cd86441aa3eeac350'),
	(29172,1365531112,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','646b298a46d4f59ba88bd325c7602fde0eb77e54'),
	(29171,1365531112,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','00a7f9b390e82ba855269ec27ae6b4342677b8ab'),
	(29170,1365531112,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','74ace6a52914e88781d0888d405bb6b17f868dcd'),
	(29169,1365531112,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','3c740f04c9343b4cc72234a1c079c4449a0a4334'),
	(29168,1365531112,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','fd5e226a10331c238cd014ef7806eaa0735cb977'),
	(29167,1365531112,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','6c7f3075a8d4b926f0e8dfd89e3b29ee52fdd02c'),
	(29166,1365531112,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','8c87910fa2052372f7d4242ef5a6fb2d5d019025'),
	(29165,1365531112,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','743741504365b6eb842e24a58d4f9ee277cdf399'),
	(29164,1365531112,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','8a6688c55220559ccc9477d4b0fed14cb674192e'),
	(29163,1365531112,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','2a8766f1be7d51fa691bf344161fdc29a0fdd831'),
	(29162,1365531112,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','a4675e9e8c8b81eb076bef06a25de95715380a12'),
	(29161,1365531112,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','c37f89251354f3770679a87456d93fd1aa2d7cd3'),
	(29160,1365531112,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','c661b5ac4d644b8344529b079c12cc84bb83ddce'),
	(29159,1365531109,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','ca4fe1193c0c3d40a9ac7a4d573a12d67e86805f'),
	(29158,1365531109,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','459988c476ed5caaa900d06b7fe1dcdffc60bc6d'),
	(29157,1365531109,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','f968df938a669e41d035e602b368d672819bfb8a'),
	(29156,1365531109,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','fb932cbcd1e6432e86a20216004f0d0f267feb58'),
	(29155,1365531109,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','11c1bbd5ac6066467dd5f6bc9d17d4891fd136bd'),
	(29154,1365531109,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','cfca2e19743bad84e298dc330ec5ec533014de85'),
	(29153,1365531109,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','d9618802bcfb3771ae9386178e295790d4b107b7'),
	(29152,1365531109,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','49f6f6b45d396de8f02b4be75d45fd658c1779ae'),
	(29151,1365531109,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','f1ea17c87dbd4791a26538e21b408227f7ec0795'),
	(29150,1365531109,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','51c801b9b3acdeabc66db03d859c9013d5239aa0'),
	(29149,1365531109,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','0ea5a45017ec51b80186f8d31c1f69fa52ea4bc8'),
	(29148,1365531098,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','05757b6b036aa009fee0bcc3fed0e585da11e51c'),
	(29147,1365531098,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','9c40aa9cd08072afc79e54d2aac02ba25709fe8e'),
	(29146,1365531098,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','3cb6992f813ceb9988b2e6d6ce44e2e6dfe49483'),
	(29145,1365531098,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','4126ec6e5a71a6f2f37184cb0155968b99d91a5a'),
	(29139,1365531098,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','1ec68b78ef093acabde97435d3fbaee5e472ef04'),
	(29140,1365531098,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','a55afd4d44d90ab430a6646a3b2af5e32222e4dd'),
	(29141,1365531098,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','d6d5efebd24f77b44dfa9c2f95bdee75a6749200'),
	(29142,1365531098,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','4a4e117c5c4afb6472b6bbd86154dc255b9e4ea2'),
	(29143,1365531098,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','6f2b7f952010faec699553b93dc79fe104adab91'),
	(29144,1365531098,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','078dad54a2c4f3a179f2f1ba6ad2f519eb1221ad'),
	(29199,1365531153,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','bc9561bd80e01c9a194873172642282369110452'),
	(29198,1365531153,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','a1822627a9be350347e699e874726e0becf7f97a'),
	(29197,1365531153,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','9bd99239a1b4a266c1e50d8d1d147bc4d37c3d2d'),
	(29190,1365531146,'4d4edaa61de1487e69c51850deebf41e9241592d','14a6797e95ea1f7f1e9f1259033dc639dcabe557'),
	(29191,1365531146,'4d4edaa61de1487e69c51850deebf41e9241592d','ebdbbcf6b5f6c2e93dce30eba09eb58076c893b7'),
	(29192,1365531146,'4d4edaa61de1487e69c51850deebf41e9241592d','bb24988b74434390fcf0d5910e3e240049be5534'),
	(29193,1365531153,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','9c9363bcb7cca791020cb98943a0e5a21b84abdb'),
	(29194,1365531153,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','940ff365aaaebacc73081e0d6b6aaa8a7bc18d63'),
	(29195,1365531153,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','2e4959a0f5dbc2eb26e1d9d14cd0ee12e51c6c4e'),
	(29196,1365531153,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','f592b24dd429ff16f584e8f099e46870eec120a8'),
	(29246,1365533069,'4d4edaa61de1487e69c51850deebf41e9241592d','9c81a67a160e85244bd7c6cea05a770a39bab1c2'),
	(29245,1365533069,'4d4edaa61de1487e69c51850deebf41e9241592d','78d83f657e6a8927f94deb27b2f85db870118a41'),
	(29133,1365531077,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','bf96829d8e5fd2b79c43926b265c34f70eb8a236'),
	(29134,1365531077,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','a33a3d0f0598f7a88fbe6c521c726e0db36212cc'),
	(29135,1365531077,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','efaab224da02747fd10149126603f53a1193e145'),
	(29136,1365531077,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','a8642f59b35fea3882eca9801360252884cb2dbb'),
	(29137,1365531077,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','2906911cf96c4a03857d31c59c8cd4277cee7580'),
	(29138,1365531098,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','cd3816a31c689d8a16828e328ff871d8fc9cee53'),
	(29268,1365533450,'4d4edaa61de1487e69c51850deebf41e9241592d','1a71bf1f1444d34c6576eb4eccba55f5cdcb6257'),
	(29267,1365533450,'4d4edaa61de1487e69c51850deebf41e9241592d','9e9eef3ead53b58be45548fa9e1c26f1fd75c213'),
	(29266,1365533450,'4d4edaa61de1487e69c51850deebf41e9241592d','5a0476bc0a6545779f6de7d9522b43b6e70810a8'),
	(29265,1365533450,'4d4edaa61de1487e69c51850deebf41e9241592d','766b8d740215d1822a2caf12315d307bb919daad'),
	(29200,1365531153,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','7c9e46437bdd4a1b8b17717707b72bfae772ce5b'),
	(29201,1365531153,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','8a5a153f4ae71a9717a107d7efa4d0d87c79a702'),
	(29202,1365531153,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','639c97d5f333740f4c8612ba318a163a499411e3'),
	(29203,1365531153,'14bc3213925afdff58bbe09f31a40ac94fc9bab8','33d35c1faf6ab7447024fd405d81d45537084931'),
	(29227,1365533060,'4d4edaa61de1487e69c51850deebf41e9241592d','4874703ff78140b2a7b9249710ec41afc93ec45d'),
	(29228,1365533060,'4d4edaa61de1487e69c51850deebf41e9241592d','5a9736baa9cf6408eb15c470cd31d7b962fb77b4'),
	(29229,1365533060,'4d4edaa61de1487e69c51850deebf41e9241592d','f05b95b9c38623ecd5d6a951c9b8d14f99d2d3a7'),
	(29230,1365533060,'4d4edaa61de1487e69c51850deebf41e9241592d','61e2f36b408ded57b09e578208e0dad7bf629a77'),
	(29231,1365533060,'4d4edaa61de1487e69c51850deebf41e9241592d','2865d94be9808f7a3380b87ac6087e779d4f42b2'),
	(29232,1365533060,'4d4edaa61de1487e69c51850deebf41e9241592d','4913c2b9d10d1287e59fc8990dc1ed3421aac38d'),
	(29233,1365533060,'4d4edaa61de1487e69c51850deebf41e9241592d','7aa27e5b9d4908a38034b1fa9662cd1a56e1c048'),
	(29234,1365533060,'4d4edaa61de1487e69c51850deebf41e9241592d','db408400be5d755e0103b13c9acb3e031cad1c2d'),
	(29235,1365533060,'4d4edaa61de1487e69c51850deebf41e9241592d','166277d99d1fd6dce2cd739e9b6325959b36aee8'),
	(29236,1365533069,'4d4edaa61de1487e69c51850deebf41e9241592d','c889c55726015b771da32a2413d9cbcd81dc6386'),
	(29237,1365533069,'4d4edaa61de1487e69c51850deebf41e9241592d','a6f7272d38434f70207a9be08e6abe9c3849e7ea'),
	(29238,1365533069,'4d4edaa61de1487e69c51850deebf41e9241592d','a592f56b4f56681a571f57e6acd6ff89016c432e'),
	(29239,1365533069,'4d4edaa61de1487e69c51850deebf41e9241592d','99beba35c22f84338cccc7cda90f821ef47ffadf'),
	(29240,1365533069,'4d4edaa61de1487e69c51850deebf41e9241592d','9ef09edcf245a03602b71bc5aea7105510fa283b'),
	(29241,1365533069,'4d4edaa61de1487e69c51850deebf41e9241592d','57f68519df69e287513ac49f9acffc982487c6b0'),
	(29242,1365533069,'4d4edaa61de1487e69c51850deebf41e9241592d','9aee119fa4dc7ca74930ae3dc835a90da585fcf8'),
	(29243,1365533069,'4d4edaa61de1487e69c51850deebf41e9241592d','5a060840521e8dd3be5b72016e0d20f2dc8b4167'),
	(29244,1365533069,'4d4edaa61de1487e69c51850deebf41e9241592d','61c4042d594646a397651d557f734f23a205336f'),
	(29264,1365533450,'4d4edaa61de1487e69c51850deebf41e9241592d','18bf258066b3d211a9450bffc88890987bab5aae'),
	(29263,1365533450,'4d4edaa61de1487e69c51850deebf41e9241592d','2211b723867409013c9b876e4a9b5996a2e898b2'),
	(29262,1365533450,'4d4edaa61de1487e69c51850deebf41e9241592d','29fa041aafa6ecd786f4678ac4a8ef217288cba3'),
	(29261,1365533450,'4d4edaa61de1487e69c51850deebf41e9241592d','0b84c3bca208be0c86670db6e2569dbe251e563d'),
	(29260,1365533450,'4d4edaa61de1487e69c51850deebf41e9241592d','455c98ffae72357f67c5c2f331d3ccc4f87067e6'),
	(29259,1365533450,'4d4edaa61de1487e69c51850deebf41e9241592d','5855b781480664a0ca074d76185a958fb193eaeb'),
	(29258,1365533450,'4d4edaa61de1487e69c51850deebf41e9241592d','edc890020c1d591e5c9855f36a1a35378dc3156a'),
	(29257,1365533303,'4d4edaa61de1487e69c51850deebf41e9241592d','40c9cc34ee4d0225beb2dff4c4b2f0bf11986668'),
	(29256,1365533303,'4d4edaa61de1487e69c51850deebf41e9241592d','07e31df77bedbaf0b68e8c73d7e03e2eeb3bc920'),
	(29255,1365533303,'4d4edaa61de1487e69c51850deebf41e9241592d','8403c2282fd66b7b1b88a65643947f99876cea2f'),
	(29254,1365533303,'4d4edaa61de1487e69c51850deebf41e9241592d','6728f4760fb615f708ca56c5a536cfd79023b854'),
	(29253,1365533303,'4d4edaa61de1487e69c51850deebf41e9241592d','3ab738ba0080721fe4d2616d8dbc8383c976f06f'),
	(29252,1365533303,'4d4edaa61de1487e69c51850deebf41e9241592d','32f1558f831a6e6050d71c1467c5e1064909f3af'),
	(29251,1365533303,'4d4edaa61de1487e69c51850deebf41e9241592d','d39c65f10b70a58c5a7813d6838f87e299fe9b70'),
	(29250,1365533303,'4d4edaa61de1487e69c51850deebf41e9241592d','6c0731849c2679d3c435871ac1c92e98aa71f860'),
	(29249,1365533303,'4d4edaa61de1487e69c51850deebf41e9241592d','e8f895021b0e39d606b50411220bfb74829fe635'),
	(29248,1365533303,'4d4edaa61de1487e69c51850deebf41e9241592d','823c8e1b79010dbfd110dd1d055c5df7dcdd541a'),
	(29247,1365533303,'4d4edaa61de1487e69c51850deebf41e9241592d','861c1c817a7887c05c453d772feb7644f1f6f2d5'),
	(29277,1365533676,'4d4edaa61de1487e69c51850deebf41e9241592d','e290b8377d85519c3e5e7093fbbb51e61a812c0a'),
	(29276,1365533676,'4d4edaa61de1487e69c51850deebf41e9241592d','91a4f66a5cd35f9e974b6a7b71a30f3d7bdf3e57'),
	(29275,1365533676,'4d4edaa61de1487e69c51850deebf41e9241592d','e113914029b185d866885923073d591047b5a249'),
	(29274,1365533676,'4d4edaa61de1487e69c51850deebf41e9241592d','34235e935b16a6f93cb4a8804ed371f05aadde8a'),
	(29273,1365533676,'4d4edaa61de1487e69c51850deebf41e9241592d','1daea99fa41f3f6b9426e8d5771ccd933bba4ec9'),
	(29272,1365533676,'4d4edaa61de1487e69c51850deebf41e9241592d','66ea3c8e2400e449db046e9b1b7f2a69fac05d47'),
	(29271,1365533676,'4d4edaa61de1487e69c51850deebf41e9241592d','c450a72db7417512c471043680cb7c688b00f029'),
	(29270,1365533676,'4d4edaa61de1487e69c51850deebf41e9241592d','6504504a880c8d609e374f0265386710243e2f12'),
	(29269,1365533676,'4d4edaa61de1487e69c51850deebf41e9241592d','68ee4be0a34d3365fcd6b6d9fe5acafa7f49e7d9'),
	(29226,1365533057,'4d4edaa61de1487e69c51850deebf41e9241592d','7fbe0a08ab3564db5b8e127a118009531beb7b22'),
	(29699,1365536432,'20ca3af64a53669dad9e6d72e80dd5a59ae0757b','3efd3015af5e7a7cc20cd8276f4f4a8b0199f023'),
	(29698,1365536432,'20ca3af64a53669dad9e6d72e80dd5a59ae0757b','bad9e035f9e32a52f03a1bf48e2fb7c31a32d859'),
	(29697,1365536432,'20ca3af64a53669dad9e6d72e80dd5a59ae0757b','ac5dbec44fc795e615d4b9f1b8dc417a7f5066fd'),
	(29696,1365536432,'20ca3af64a53669dad9e6d72e80dd5a59ae0757b','85098e3a972e8c630395b6ae39c30465aa496c5c'),
	(29695,1365536432,'20ca3af64a53669dad9e6d72e80dd5a59ae0757b','606a0181d16c69aaceb69f694169cbccd604b1d8'),
	(29694,1365536432,'20ca3af64a53669dad9e6d72e80dd5a59ae0757b','4a618f651b0e9804a1e84dc789c0842cb6886831'),
	(29693,1365536432,'20ca3af64a53669dad9e6d72e80dd5a59ae0757b','b7bb9df332196eadbfac73586126f746da69e458'),
	(29692,1365536432,'20ca3af64a53669dad9e6d72e80dd5a59ae0757b','b16a39a7a2c0124eeb007cab729d679a69b1a094'),
	(29700,1365536447,'20ca3af64a53669dad9e6d72e80dd5a59ae0757b','85775d1beaf597b11b0780451c74e84bbf1e73ac'),
	(29689,1365536315,'0','872282731268bf745517f4f98b4c2a341106fee7'),
	(29690,1365536315,'20ca3af64a53669dad9e6d72e80dd5a59ae0757b','9dfa031249610b81a9f77dd1baacd9c932239410'),
	(29225,1365533057,'4d4edaa61de1487e69c51850deebf41e9241592d','1c891f51043546ba1d95b27d4de5ad271499cc41'),
	(29224,1365533057,'4d4edaa61de1487e69c51850deebf41e9241592d','2eeb6566fda18f2f00239f39d21e2f8aa564b1e5'),
	(29223,1365533057,'4d4edaa61de1487e69c51850deebf41e9241592d','f45ebc18482b226394ee218d6cc73180364d1e61'),
	(29222,1365533057,'4d4edaa61de1487e69c51850deebf41e9241592d','9d9d618835b0643b6e50ec4e836b0f9cbaa9ac83'),
	(29221,1365533057,'4d4edaa61de1487e69c51850deebf41e9241592d','45e1e5977bdca27cada6859bd9a628df6a251555'),
	(29220,1365533057,'4d4edaa61de1487e69c51850deebf41e9241592d','99b6fb0aa27bd61dbc25b62fdc9acbe61b266551'),
	(29219,1365533057,'4d4edaa61de1487e69c51850deebf41e9241592d','d091da7ab47beae11ed833f07d73198920976035'),
	(29218,1365533057,'4d4edaa61de1487e69c51850deebf41e9241592d','5b33abf7a69d5b700e4b784d5e51b3d3a46d751a'),
	(29217,1365533057,'4d4edaa61de1487e69c51850deebf41e9241592d','8991f2af209a15bd39b588da6a0ac8d66ecfa639'),
	(29216,1365533057,'4d4edaa61de1487e69c51850deebf41e9241592d','8205e4dada89838268e88b60a5f2eac235beed10'),
	(29215,1365531225,'ebf93decadad8c23054749de5ece85070b29080a','3eabd9fe57194b2ec8b085282dba59fc4f993382'),
	(29214,1365531225,'ebf93decadad8c23054749de5ece85070b29080a','63e7898d025be2b7142f6910394326e8f40765dc'),
	(29213,1365531225,'ebf93decadad8c23054749de5ece85070b29080a','50e24f19cc04c2c3609366e8ded36931b4d7f1c6'),
	(29212,1365531225,'ebf93decadad8c23054749de5ece85070b29080a','f05cbc04b51e79d5a707c32d78d9ce8c73788308'),
	(29211,1365531225,'ebf93decadad8c23054749de5ece85070b29080a','60b274b4f2702853b9d47f3c2ea06efc99d23724'),
	(29210,1365531225,'ebf93decadad8c23054749de5ece85070b29080a','b52b7b0705e0c3edf3840473b6cd95fa03002d83'),
	(29208,1365531225,'ebf93decadad8c23054749de5ece85070b29080a','bf92925ea1bb43af335b3b698219d161aae0d695'),
	(29209,1365531225,'ebf93decadad8c23054749de5ece85070b29080a','fd7ab13ebb36b198e1097c986d0655293c7e6320'),
	(29207,1365531225,'ebf93decadad8c23054749de5ece85070b29080a','50ab05886e667b17801ff7a3612926a5e64e4822'),
	(29206,1365531214,'ebf93decadad8c23054749de5ece85070b29080a','d28df7b37dfc4cf151ca93e39a8781f40e86d267'),
	(29205,1365531214,'0','23c6d4be7c685fc97de3ee0129eb38b4ad2c51bd');

/*!40000 ALTER TABLE `exp_security_hashes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_sessions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_sessions`;

CREATE TABLE `exp_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `member_id` int(10) NOT NULL DEFAULT '0',
  `admin_sess` tinyint(1) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`session_id`),
  KEY `member_id` (`member_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_sessions` WRITE;
/*!40000 ALTER TABLE `exp_sessions` DISABLE KEYS */;

INSERT INTO `exp_sessions` (`session_id`, `member_id`, `admin_sess`, `ip_address`, `user_agent`, `last_activity`)
VALUES
	('14bc3213925afdff58bbe09f31a40ac94fc9bab8',1,1,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6; rv:10.0.2) Gecko/20100101 Firefox/10.0.2',1365536108),
	('4d4edaa61de1487e69c51850deebf41e9241592d',1,1,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31',1365533676),
	('20ca3af64a53669dad9e6d72e80dd5a59ae0757b',1,1,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31',1365536447),
	('ebf93decadad8c23054749de5ece85070b29080a',1,1,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.58.2 (KHTML, like Gecko) Version/5.1.8 Safari/534.58.2',1365531225);

/*!40000 ALTER TABLE `exp_sessions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_sites
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_sites`;

CREATE TABLE `exp_sites` (
  `site_id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `site_label` varchar(100) NOT NULL DEFAULT '',
  `site_name` varchar(50) NOT NULL DEFAULT '',
  `site_description` text,
  `site_system_preferences` mediumtext NOT NULL,
  `site_mailinglist_preferences` text NOT NULL,
  `site_member_preferences` text NOT NULL,
  `site_template_preferences` text NOT NULL,
  `site_channel_preferences` text NOT NULL,
  `site_bootstrap_checksums` text NOT NULL,
  PRIMARY KEY (`site_id`),
  KEY `site_name` (`site_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_sites` WRITE;
/*!40000 ALTER TABLE `exp_sites` DISABLE KEYS */;

INSERT INTO `exp_sites` (`site_id`, `site_label`, `site_name`, `site_description`, `site_system_preferences`, `site_mailinglist_preferences`, `site_member_preferences`, `site_template_preferences`, `site_channel_preferences`, `site_bootstrap_checksums`)
VALUES
	(1,'Introductions','default_site',NULL,'YTo5Mjp7czoxMDoic2l0ZV9pbmRleCI7czo5OiJpbmRleC5waHAiO3M6ODoic2l0ZV91cmwiO3M6MzY6Imh0dHA6Ly9sb2NhbGhvc3Q6ODg4OC9pbnRyb2R1Y3Rpb25zLyI7czoxNjoidGhlbWVfZm9sZGVyX3VybCI7czo0MzoiaHR0cDovL2xvY2FsaG9zdDo4ODg4L2ludHJvZHVjdGlvbnMvdGhlbWVzLyI7czoxNToid2VibWFzdGVyX2VtYWlsIjtzOjI0OiJoZXJtYW5AdXJnZW50Y29udGVudC5jb20iO3M6MTQ6IndlYm1hc3Rlcl9uYW1lIjtzOjA6IiI7czoyMDoiY2hhbm5lbF9ub21lbmNsYXR1cmUiO3M6NzoiY2hhbm5lbCI7czoxMDoibWF4X2NhY2hlcyI7czozOiIxNTAiO3M6MTE6ImNhcHRjaGFfdXJsIjtzOjU4OiJodHRwOi8vc2hhbmdoYWkubnl1LmVkdS8yMDE3aW50cm9kdWN0aW9ucy9pbWFnZXMvY2FwdGNoYXMvIjtzOjEyOiJjYXB0Y2hhX3BhdGgiO3M6NDg6Ii92YXIvd3d3L2h0bWwvMjAxN2ludHJvZHVjdGlvbnMvaW1hZ2VzL2NhcHRjaGFzLyI7czoxMjoiY2FwdGNoYV9mb250IjtzOjE6InkiO3M6MTI6ImNhcHRjaGFfcmFuZCI7czoxOiJ5IjtzOjIzOiJjYXB0Y2hhX3JlcXVpcmVfbWVtYmVycyI7czoxOiJuIjtzOjE3OiJlbmFibGVfZGJfY2FjaGluZyI7czoxOiJuIjtzOjE4OiJlbmFibGVfc3FsX2NhY2hpbmciO3M6MToibiI7czoxODoiZm9yY2VfcXVlcnlfc3RyaW5nIjtzOjE6InkiO3M6MTM6InNob3dfcHJvZmlsZXIiO3M6MToibiI7czoxODoidGVtcGxhdGVfZGVidWdnaW5nIjtzOjE6Im4iO3M6MTU6ImluY2x1ZGVfc2Vjb25kcyI7czoxOiJuIjtzOjEzOiJjb29raWVfZG9tYWluIjtzOjA6IiI7czoxMToiY29va2llX3BhdGgiO3M6MDoiIjtzOjE3OiJ1c2VyX3Nlc3Npb25fdHlwZSI7czoxOiJjIjtzOjE4OiJhZG1pbl9zZXNzaW9uX3R5cGUiO3M6MjoiY3MiO3M6MjE6ImFsbG93X3VzZXJuYW1lX2NoYW5nZSI7czoxOiJ5IjtzOjE4OiJhbGxvd19tdWx0aV9sb2dpbnMiO3M6MToieSI7czoxNjoicGFzc3dvcmRfbG9ja291dCI7czoxOiJ5IjtzOjI1OiJwYXNzd29yZF9sb2Nrb3V0X2ludGVydmFsIjtzOjE6IjEiO3M6MjA6InJlcXVpcmVfaXBfZm9yX2xvZ2luIjtzOjE6InkiO3M6MjI6InJlcXVpcmVfaXBfZm9yX3Bvc3RpbmciO3M6MToieSI7czoyNDoicmVxdWlyZV9zZWN1cmVfcGFzc3dvcmRzIjtzOjE6Im4iO3M6MTk6ImFsbG93X2RpY3Rpb25hcnlfcHciO3M6MToieSI7czoyMzoibmFtZV9vZl9kaWN0aW9uYXJ5X2ZpbGUiO3M6MDoiIjtzOjE3OiJ4c3NfY2xlYW5fdXBsb2FkcyI7czoxOiJ5IjtzOjE1OiJyZWRpcmVjdF9tZXRob2QiO3M6ODoicmVkaXJlY3QiO3M6OToiZGVmdF9sYW5nIjtzOjc6ImVuZ2xpc2giO3M6ODoieG1sX2xhbmciO3M6MjoiZW4iO3M6MTI6InNlbmRfaGVhZGVycyI7czoxOiJ5IjtzOjExOiJnemlwX291dHB1dCI7czoxOiJuIjtzOjEzOiJsb2dfcmVmZXJyZXJzIjtzOjE6Im4iO3M6MTM6Im1heF9yZWZlcnJlcnMiO3M6MzoiNTAwIjtzOjExOiJ0aW1lX2Zvcm1hdCI7czoyOiJ1cyI7czoxNToic2VydmVyX3RpbWV6b25lIjtzOjM6IlVNNSI7czoxMzoic2VydmVyX29mZnNldCI7czowOiIiO3M6MTY6ImRheWxpZ2h0X3NhdmluZ3MiO3M6MToibiI7czoyMToiZGVmYXVsdF9zaXRlX3RpbWV6b25lIjtzOjA6IiI7czoxNjoiZGVmYXVsdF9zaXRlX2RzdCI7czowOiIiO3M6MTU6Imhvbm9yX2VudHJ5X2RzdCI7czoxOiJ5IjtzOjEzOiJtYWlsX3Byb3RvY29sIjtzOjQ6Im1haWwiO3M6MTE6InNtdHBfc2VydmVyIjtzOjA6IiI7czoxMzoic210cF91c2VybmFtZSI7czowOiIiO3M6MTM6InNtdHBfcGFzc3dvcmQiO3M6MDoiIjtzOjExOiJlbWFpbF9kZWJ1ZyI7czoxOiJuIjtzOjEzOiJlbWFpbF9jaGFyc2V0IjtzOjU6InV0Zi04IjtzOjE1OiJlbWFpbF9iYXRjaG1vZGUiO3M6MToibiI7czoxNjoiZW1haWxfYmF0Y2hfc2l6ZSI7czowOiIiO3M6MTE6Im1haWxfZm9ybWF0IjtzOjU6InBsYWluIjtzOjk6IndvcmRfd3JhcCI7czoxOiJ5IjtzOjIyOiJlbWFpbF9jb25zb2xlX3RpbWVsb2NrIjtzOjE6IjUiO3M6MjI6ImxvZ19lbWFpbF9jb25zb2xlX21zZ3MiO3M6MToieSI7czo4OiJjcF90aGVtZSI7czo3OiJkZWZhdWx0IjtzOjIxOiJlbWFpbF9tb2R1bGVfY2FwdGNoYXMiO3M6MToibiI7czoxNjoibG9nX3NlYXJjaF90ZXJtcyI7czoxOiJ5IjtzOjEyOiJzZWN1cmVfZm9ybXMiO3M6MToieSI7czoxOToiZGVueV9kdXBsaWNhdGVfZGF0YSI7czoxOiJ5IjtzOjI0OiJyZWRpcmVjdF9zdWJtaXR0ZWRfbGlua3MiO3M6MToibiI7czoxNjoiZW5hYmxlX2NlbnNvcmluZyI7czoxOiJuIjtzOjE0OiJjZW5zb3JlZF93b3JkcyI7czowOiIiO3M6MTg6ImNlbnNvcl9yZXBsYWNlbWVudCI7czowOiIiO3M6MTA6ImJhbm5lZF9pcHMiO3M6MDoiIjtzOjEzOiJiYW5uZWRfZW1haWxzIjtzOjA6IiI7czoxNjoiYmFubmVkX3VzZXJuYW1lcyI7czowOiIiO3M6MTk6ImJhbm5lZF9zY3JlZW5fbmFtZXMiO3M6MDoiIjtzOjEwOiJiYW5fYWN0aW9uIjtzOjg6InJlc3RyaWN0IjtzOjExOiJiYW5fbWVzc2FnZSI7czozNDoiVGhpcyBzaXRlIGlzIGN1cnJlbnRseSB1bmF2YWlsYWJsZSI7czoxNToiYmFuX2Rlc3RpbmF0aW9uIjtzOjIxOiJodHRwOi8vd3d3LnlhaG9vLmNvbS8iO3M6MTY6ImVuYWJsZV9lbW90aWNvbnMiO3M6MToieSI7czoxMjoiZW1vdGljb25fdXJsIjtzOjU3OiJodHRwOi8vc2hhbmdoYWkubnl1LmVkdS8yMDE3aW50cm9kdWN0aW9ucy9pbWFnZXMvc21pbGV5cy8iO3M6MTk6InJlY291bnRfYmF0Y2hfdG90YWwiO3M6NDoiMTAwMCI7czoxNzoibmV3X3ZlcnNpb25fY2hlY2siO3M6MToieSI7czoxNzoiZW5hYmxlX3Rocm90dGxpbmciO3M6MToibiI7czoxNzoiYmFuaXNoX21hc2tlZF9pcHMiO3M6MToieSI7czoxNDoibWF4X3BhZ2VfbG9hZHMiO3M6MjoiMTAiO3M6MTM6InRpbWVfaW50ZXJ2YWwiO3M6MToiOCI7czoxMjoibG9ja291dF90aW1lIjtzOjI6IjMwIjtzOjE1OiJiYW5pc2htZW50X3R5cGUiO3M6NzoibWVzc2FnZSI7czoxNDoiYmFuaXNobWVudF91cmwiO3M6MDoiIjtzOjE4OiJiYW5pc2htZW50X21lc3NhZ2UiO3M6NTA6IllvdSBoYXZlIGV4Y2VlZGVkIHRoZSBhbGxvd2VkIHBhZ2UgbG9hZCBmcmVxdWVuY3kuIjtzOjE3OiJlbmFibGVfc2VhcmNoX2xvZyI7czoxOiJ5IjtzOjE5OiJtYXhfbG9nZ2VkX3NlYXJjaGVzIjtzOjM6IjUwMCI7czoxNzoidGhlbWVfZm9sZGVyX3BhdGgiO3M6NDc6Ii9BcHBsaWNhdGlvbnMvTUFNUC9odGRvY3MvaW50cm9kdWN0aW9ucy90aGVtZXMvIjtzOjEwOiJpc19zaXRlX29uIjtzOjE6InkiO3M6MTE6InJ0ZV9lbmFibGVkIjtzOjE6InkiO3M6MjI6InJ0ZV9kZWZhdWx0X3Rvb2xzZXRfaWQiO3M6MToiMSI7fQ==','YTozOntzOjE5OiJtYWlsaW5nbGlzdF9lbmFibGVkIjtzOjE6InkiO3M6MTg6Im1haWxpbmdsaXN0X25vdGlmeSI7czoxOiJuIjtzOjI1OiJtYWlsaW5nbGlzdF9ub3RpZnlfZW1haWxzIjtzOjA6IiI7fQ==','YTo0NDp7czoxMDoidW5fbWluX2xlbiI7czoxOiI0IjtzOjEwOiJwd19taW5fbGVuIjtzOjE6IjUiO3M6MjU6ImFsbG93X21lbWJlcl9yZWdpc3RyYXRpb24iO3M6MToieSI7czoyNToiYWxsb3dfbWVtYmVyX2xvY2FsaXphdGlvbiI7czoxOiJ5IjtzOjE4OiJyZXFfbWJyX2FjdGl2YXRpb24iO3M6NDoibm9uZSI7czoyMzoibmV3X21lbWJlcl9ub3RpZmljYXRpb24iO3M6MToibiI7czoyMzoibWJyX25vdGlmaWNhdGlvbl9lbWFpbHMiO3M6MDoiIjtzOjI0OiJyZXF1aXJlX3Rlcm1zX29mX3NlcnZpY2UiO3M6MToieSI7czoyMjoidXNlX21lbWJlcnNoaXBfY2FwdGNoYSI7czoxOiJuIjtzOjIwOiJkZWZhdWx0X21lbWJlcl9ncm91cCI7czoxOiI1IjtzOjE1OiJwcm9maWxlX3RyaWdnZXIiO3M6NjoibWVtYmVyIjtzOjEyOiJtZW1iZXJfdGhlbWUiO3M6NzoiZGVmYXVsdCI7czoxNDoiZW5hYmxlX2F2YXRhcnMiO3M6MToieSI7czoyMDoiYWxsb3dfYXZhdGFyX3VwbG9hZHMiO3M6MToieSI7czoxMDoiYXZhdGFyX3VybCI7czo1NzoiaHR0cDovL3NoYW5naGFpLm55dS5lZHUvMjAxN2ludHJvZHVjdGlvbnMvaW1hZ2VzL2F2YXRhcnMvIjtzOjExOiJhdmF0YXJfcGF0aCI7czo0NzoiL3Zhci93d3cvaHRtbC8yMDE3aW50cm9kdWN0aW9ucy9pbWFnZXMvYXZhdGFycy8iO3M6MTY6ImF2YXRhcl9tYXhfd2lkdGgiO3M6MzoiMzAwIjtzOjE3OiJhdmF0YXJfbWF4X2hlaWdodCI7czozOiIzMDAiO3M6MTM6ImF2YXRhcl9tYXhfa2IiO3M6MjoiODAiO3M6MTM6ImVuYWJsZV9waG90b3MiO3M6MToieSI7czo5OiJwaG90b191cmwiO3M6NjM6Imh0dHA6Ly9zaGFuZ2hhaS5ueXUuZWR1LzIwMTdpbnRyb2R1Y3Rpb25zL2ltYWdlcy9tZW1iZXJfcGhvdG9zLyI7czoxMDoicGhvdG9fcGF0aCI7czo1MzoiL3Zhci93d3cvaHRtbC8yMDE3aW50cm9kdWN0aW9ucy9pbWFnZXMvbWVtYmVyX3Bob3Rvcy8iO3M6MTU6InBob3RvX21heF93aWR0aCI7czozOiI4MDAiO3M6MTY6InBob3RvX21heF9oZWlnaHQiO3M6MzoiODAwIjtzOjEyOiJwaG90b19tYXhfa2IiO3M6NDoiMzAwMCI7czoxNjoiYWxsb3dfc2lnbmF0dXJlcyI7czoxOiJuIjtzOjEzOiJzaWdfbWF4bGVuZ3RoIjtzOjM6IjUwMCI7czoyMToic2lnX2FsbG93X2ltZ19ob3RsaW5rIjtzOjE6Im4iO3M6MjA6InNpZ19hbGxvd19pbWdfdXBsb2FkIjtzOjE6Im4iO3M6MTE6InNpZ19pbWdfdXJsIjtzOjcxOiJodHRwOi8vc2hhbmdoYWkubnl1LmVkdS8yMDE3aW50cm9kdWN0aW9ucy9pbWFnZXMvc2lnbmF0dXJlX2F0dGFjaG1lbnRzLyI7czoxMjoic2lnX2ltZ19wYXRoIjtzOjYxOiIvdmFyL3d3dy9odG1sLzIwMTdpbnRyb2R1Y3Rpb25zL2ltYWdlcy9zaWduYXR1cmVfYXR0YWNobWVudHMvIjtzOjE3OiJzaWdfaW1nX21heF93aWR0aCI7czozOiI0ODAiO3M6MTg6InNpZ19pbWdfbWF4X2hlaWdodCI7czoyOiI4MCI7czoxNDoic2lnX2ltZ19tYXhfa2IiO3M6MjoiMzAiO3M6MTk6InBydl9tc2dfdXBsb2FkX3BhdGgiO3M6NTQ6Ii92YXIvd3d3L2h0bWwvMjAxN2ludHJvZHVjdGlvbnMvaW1hZ2VzL3BtX2F0dGFjaG1lbnRzLyI7czoyMzoicHJ2X21zZ19tYXhfYXR0YWNobWVudHMiO3M6MToiMyI7czoyMjoicHJ2X21zZ19hdHRhY2hfbWF4c2l6ZSI7czozOiIyNTAiO3M6MjA6InBydl9tc2dfYXR0YWNoX3RvdGFsIjtzOjM6IjEwMCI7czoxOToicHJ2X21zZ19odG1sX2Zvcm1hdCI7czo0OiJzYWZlIjtzOjE4OiJwcnZfbXNnX2F1dG9fbGlua3MiO3M6MToieSI7czoxNzoicHJ2X21zZ19tYXhfY2hhcnMiO3M6NDoiNjAwMCI7czoxOToibWVtYmVybGlzdF9vcmRlcl9ieSI7czoxNzoidG90YWxfZm9ydW1fcG9zdHMiO3M6MjE6Im1lbWJlcmxpc3Rfc29ydF9vcmRlciI7czo0OiJkZXNjIjtzOjIwOiJtZW1iZXJsaXN0X3Jvd19saW1pdCI7czoyOiIyMCI7fQ==','YTo2OntzOjExOiJzdHJpY3RfdXJscyI7czoxOiJuIjtzOjg6InNpdGVfNDA0IjtzOjA6IiI7czoxOToic2F2ZV90bXBsX3JldmlzaW9ucyI7czoxOiJuIjtzOjE4OiJtYXhfdG1wbF9yZXZpc2lvbnMiO3M6MToiNSI7czoxNToic2F2ZV90bXBsX2ZpbGVzIjtzOjE6InkiO3M6MTg6InRtcGxfZmlsZV9iYXNlcGF0aCI7czo0MToiL3Zhci93d3cvaHRtbC8yMDE3aW50cm9kdWN0aW9ucy90ZW1wbGF0ZXMiO30=','YTo5OntzOjIxOiJpbWFnZV9yZXNpemVfcHJvdG9jb2wiO3M6MzoiZ2QyIjtzOjE4OiJpbWFnZV9saWJyYXJ5X3BhdGgiO3M6MDoiIjtzOjE2OiJ0aHVtYm5haWxfcHJlZml4IjtzOjU6InRodW1iIjtzOjE0OiJ3b3JkX3NlcGFyYXRvciI7czo0OiJkYXNoIjtzOjE3OiJ1c2VfY2F0ZWdvcnlfbmFtZSI7czoxOiJuIjtzOjIyOiJyZXNlcnZlZF9jYXRlZ29yeV93b3JkIjtzOjg6ImNhdGVnb3J5IjtzOjIzOiJhdXRvX2NvbnZlcnRfaGlnaF9hc2NpaSI7czoxOiJuIjtzOjIyOiJuZXdfcG9zdHNfY2xlYXJfY2FjaGVzIjtzOjE6InkiO3M6MjM6ImF1dG9fYXNzaWduX2NhdF9wYXJlbnRzIjtzOjE6InkiO30=','YToyOntzOjc6ImVtYWlsZWQiO2E6MDp7fXM6NDk6Ii9BcHBsaWNhdGlvbnMvTUFNUC9odGRvY3MvaW50cm9kdWN0aW9ucy9pbmRleC5waHAiO3M6MzI6ImVlNGNmMThhNmQ3YTZkYTI2ZWViYzAzNDQ3NDE4MjQ3Ijt9');

/*!40000 ALTER TABLE `exp_sites` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_snippets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_snippets`;

CREATE TABLE `exp_snippets` (
  `snippet_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) NOT NULL,
  `snippet_name` varchar(75) NOT NULL,
  `snippet_contents` text,
  PRIMARY KEY (`snippet_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_specialty_templates
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_specialty_templates`;

CREATE TABLE `exp_specialty_templates` (
  `template_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `enable_template` char(1) NOT NULL DEFAULT 'y',
  `template_name` varchar(50) NOT NULL,
  `data_title` varchar(80) NOT NULL,
  `template_data` text NOT NULL,
  PRIMARY KEY (`template_id`),
  KEY `template_name` (`template_name`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_specialty_templates` WRITE;
/*!40000 ALTER TABLE `exp_specialty_templates` DISABLE KEYS */;

INSERT INTO `exp_specialty_templates` (`template_id`, `site_id`, `enable_template`, `template_name`, `data_title`, `template_data`)
VALUES
	(1,1,'y','offline_template','','<html>\r\n<head>\r\n\r\n<title>System Offline</title>\r\n\r\n<style type=\"text/css\">\r\n\r\nbody { \r\nbackground-color:	#ffffff; \r\nmargin:				50px; \r\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\r\nfont-size:			11px;\r\ncolor:				#000;\r\nbackground-color:	#fff;\r\n}\r\n\r\na {\r\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\r\nfont-weight:		bold;\r\nletter-spacing:		.09em;\r\ntext-decoration:	none;\r\ncolor:			  #330099;\r\nbackground-color:	transparent;\r\n}\r\n  \r\na:visited {\r\ncolor:				#330099;\r\nbackground-color:	transparent;\r\n}\r\n\r\na:hover {\r\ncolor:				#000;\r\ntext-decoration:	underline;\r\nbackground-color:	transparent;\r\n}\r\n\r\n#content  {\r\nborder:				#999999 1px solid;\r\npadding:			22px 25px 14px 25px;\r\n}\r\n\r\nh1 {\r\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\r\nfont-weight:		bold;\r\nfont-size:			14px;\r\ncolor:				#000;\r\nmargin-top: 		0;\r\nmargin-bottom:		14px;\r\n}\r\n\r\np {\r\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\r\nfont-size: 			12px;\r\nfont-weight: 		normal;\r\nmargin-top: 		12px;\r\nmargin-bottom: 		14px;\r\ncolor: 				#000;\r\n}\r\n</style>\r\n\r\n</head>\r\n\r\n<body>\r\n\r\n<div id=\"content\">\r\n\r\n<h1>System Offline</h1>\r\n\r\n<p>This site is currently offline</p>\r\n\r\n</div>\r\n\r\n</body>\r\n\r\n</html>'),
	(2,1,'y','message_template','','<html>\r\n<head>\r\n\r\n<title>{title}</title>\r\n\r\n<meta http-equiv=\'content-type\' content=\'text/html; charset={charset}\' />\r\n\r\n{meta_refresh}\r\n\r\n<style type=\"text/css\">\r\n\r\nbody { \r\nbackground-color:	#ffffff; \r\nmargin:				50px; \r\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\r\nfont-size:			11px;\r\ncolor:				#000;\r\nbackground-color:	#fff;\r\n}\r\n\r\na {\r\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\r\nletter-spacing:		.09em;\r\ntext-decoration:	none;\r\ncolor:			  #330099;\r\nbackground-color:	transparent;\r\n}\r\n  \r\na:visited {\r\ncolor:				#330099;\r\nbackground-color:	transparent;\r\n}\r\n\r\na:active {\r\ncolor:				#ccc;\r\nbackground-color:	transparent;\r\n}\r\n\r\na:hover {\r\ncolor:				#000;\r\ntext-decoration:	underline;\r\nbackground-color:	transparent;\r\n}\r\n\r\n#content  {\r\nborder:				#000 1px solid;\r\nbackground-color: 	#DEDFE3;\r\npadding:			22px 25px 14px 25px;\r\n}\r\n\r\nh1 {\r\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\r\nfont-weight:		bold;\r\nfont-size:			14px;\r\ncolor:				#000;\r\nmargin-top: 		0;\r\nmargin-bottom:		14px;\r\n}\r\n\r\np {\r\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\r\nfont-size: 			12px;\r\nfont-weight: 		normal;\r\nmargin-top: 		12px;\r\nmargin-bottom: 		14px;\r\ncolor: 				#000;\r\n}\r\n\r\nul {\r\nmargin-bottom: 		16px;\r\n}\r\n\r\nli {\r\nlist-style:			square;\r\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\r\nfont-size: 			12px;\r\nfont-weight: 		normal;\r\nmargin-top: 		8px;\r\nmargin-bottom: 		8px;\r\ncolor: 				#000;\r\n}\r\n\r\n</style>\r\n\r\n</head>\r\n\r\n<body>\r\n\r\n<div id=\"content\">\r\n\r\n<h1>{heading}</h1>\r\n\r\n{content}\r\n\r\n<p>{link}</p>\r\n\r\n</div>\r\n\r\n</body>\r\n\r\n</html>'),
	(3,1,'y','admin_notify_reg','Notification of new member registration','New member registration site: {site_name}\r\n\r\nScreen name: {name}\r\nUser name: {username}\r\nEmail: {email}\r\n\r\nYour control panel URL: {control_panel_url}'),
	(4,1,'y','admin_notify_entry','A new channel entry has been posted','A new entry has been posted in the following channel:\r\n{channel_name}\r\n\r\nThe title of the entry is:\r\n{entry_title}\r\n\r\nPosted by: {name}\r\nEmail: {email}\r\n\r\nTo read the entry please visit: \r\n{entry_url}\r\n'),
	(5,1,'y','admin_notify_mailinglist','Someone has subscribed to your mailing list','A new mailing list subscription has been accepted.\r\n\r\nEmail Address: {email}\r\nMailing List: {mailing_list}'),
	(6,1,'y','admin_notify_comment','You have just received a comment','You have just received a comment for the following channel:\r\n{channel_name}\r\n\r\nThe title of the entry is:\r\n{entry_title}\r\n\r\nLocated at: \r\n{comment_url}\r\n\r\nPosted by: {name}\r\nEmail: {email}\r\nURL: {url}\r\nLocation: {location}\r\n\r\n{comment}'),
	(7,1,'y','mbr_activation_instructions','Enclosed is your activation code','Thank you for your new member registration.\r\n\r\nTo activate your new account, please visit the following URL:\r\n\r\n{unwrap}{activation_url}{/unwrap}\r\n\r\nThank You!\r\n\r\n{site_name}\r\n\r\n{site_url}'),
	(8,1,'y','forgot_password_instructions','Login information','{name},\r\n\r\nTo reset your password, please go to the following page:\r\n\r\n{reset_url}\r\n\r\nYour password will be automatically reset, and a new password will be emailed to you.\r\n\r\nIf you do not wish to reset your password, ignore this message. It will expire in 24 hours.\r\n\r\n{site_name}\r\n{site_url}'),
	(9,1,'y','reset_password_notification','New Login Information','{name},\r\n\r\nHere is your new login information:\r\n\r\nUsername: {username}\r\nPassword: {password}\r\n\r\n{site_name}\r\n{site_url}'),
	(10,1,'y','validated_member_notify','Your membership account has been activated','{name},\r\n\r\nYour membership account has been activated and is ready for use.\r\n\r\nThank You!\r\n\r\n{site_name}\r\n{site_url}'),
	(11,1,'y','decline_member_validation','Your membership account has been declined','{name},\r\n\r\nWe\'re sorry but our staff has decided not to validate your membership.\r\n\r\n{site_name}\r\n{site_url}'),
	(12,1,'y','mailinglist_activation_instructions','Email Confirmation','Thank you for joining the \"{mailing_list}\" mailing list!\r\n\r\nPlease click the link below to confirm your email.\r\n\r\nIf you do not want to be added to our list, ignore this email.\r\n\r\n{unwrap}{activation_url}{/unwrap}\r\n\r\nThank You!\r\n\r\n{site_name}'),
	(13,1,'y','comment_notification','Someone just responded to your comment','{name_of_commenter} just responded to the entry you subscribed to at:\r\n{channel_name}\r\n\r\nThe title of the entry is:\r\n{entry_title}\r\n\r\nYou can see the comment at the following URL:\r\n{comment_url}\r\n\r\n{comment}\r\n\r\nTo stop receiving notifications for this comment, click here:\r\n{notification_removal_url}'),
	(14,1,'y','comments_opened_notification','New comments have been added','Responses have been added to the entry you subscribed to at:\r\n{channel_name}\r\n\r\nThe title of the entry is:\r\n{entry_title}\r\n\r\nYou can see the comments at the following URL:\r\n{comment_url}\r\n\r\n{comments}\r\n{comment} \r\n{/comments}\r\n\r\nTo stop receiving notifications for this entry, click here:\r\n{notification_removal_url}'),
	(15,1,'y','private_message_notification','Someone has sent you a Private Message','\r\n{recipient_name},\r\n\r\n{sender_name} has just sent you a Private Message titled ‘{message_subject}’.\r\n\r\nYou can see the Private Message by logging in and viewing your inbox at:\r\n{site_url}\r\n\r\nContent:\r\n\r\n{message_content}\r\n\r\nTo stop receiving notifications of Private Messages, turn the option off in your Email Settings.\r\n\r\n{site_name}\r\n{site_url}'),
	(16,1,'y','pm_inbox_full','Your private message mailbox is full','{recipient_name},\r\n\r\n{sender_name} has just attempted to send you a Private Message,\r\nbut your inbox is full, exceeding the maximum of {pm_storage_limit}.\r\n\r\nPlease log in and remove unwanted messages from your inbox at:\r\n{site_url}');

/*!40000 ALTER TABLE `exp_specialty_templates` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_stats
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_stats`;

CREATE TABLE `exp_stats` (
  `stat_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `total_members` mediumint(7) NOT NULL DEFAULT '0',
  `recent_member_id` int(10) NOT NULL DEFAULT '0',
  `recent_member` varchar(50) NOT NULL,
  `total_entries` mediumint(8) NOT NULL DEFAULT '0',
  `total_forum_topics` mediumint(8) NOT NULL DEFAULT '0',
  `total_forum_posts` mediumint(8) NOT NULL DEFAULT '0',
  `total_comments` mediumint(8) NOT NULL DEFAULT '0',
  `last_entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_forum_post_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_comment_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_visitor_date` int(10) unsigned NOT NULL DEFAULT '0',
  `most_visitors` mediumint(7) NOT NULL DEFAULT '0',
  `most_visitor_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_cache_clear` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`stat_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_stats` WRITE;
/*!40000 ALTER TABLE `exp_stats` DISABLE KEYS */;

INSERT INTO `exp_stats` (`stat_id`, `site_id`, `total_members`, `recent_member_id`, `recent_member`, `total_entries`, `total_forum_topics`, `total_forum_posts`, `total_comments`, `last_entry_date`, `last_forum_post_date`, `last_comment_date`, `last_visitor_date`, `most_visitors`, `most_visitor_date`, `last_cache_clear`)
VALUES
	(1,1,14,23,'Anonymus',146,0,0,0,1365536446,0,0,1365536447,146,1364428935,1365629546);

/*!40000 ALTER TABLE `exp_stats` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_status_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_status_groups`;

CREATE TABLE `exp_status_groups` (
  `group_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_name` varchar(50) NOT NULL,
  PRIMARY KEY (`group_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_status_groups` WRITE;
/*!40000 ALTER TABLE `exp_status_groups` DISABLE KEYS */;

INSERT INTO `exp_status_groups` (`group_id`, `site_id`, `group_name`)
VALUES
	(1,1,'Statuses');

/*!40000 ALTER TABLE `exp_status_groups` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_status_no_access
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_status_no_access`;

CREATE TABLE `exp_status_no_access` (
  `status_id` int(6) unsigned NOT NULL,
  `member_group` smallint(4) unsigned NOT NULL,
  PRIMARY KEY (`status_id`,`member_group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_statuses
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_statuses`;

CREATE TABLE `exp_statuses` (
  `status_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_id` int(4) unsigned NOT NULL,
  `status` varchar(50) NOT NULL,
  `status_order` int(3) unsigned NOT NULL,
  `highlight` varchar(30) NOT NULL,
  PRIMARY KEY (`status_id`),
  KEY `group_id` (`group_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_statuses` WRITE;
/*!40000 ALTER TABLE `exp_statuses` DISABLE KEYS */;

INSERT INTO `exp_statuses` (`status_id`, `site_id`, `group_id`, `status`, `status_order`, `highlight`)
VALUES
	(1,1,1,'open',1,'009933'),
	(2,1,1,'closed',2,'990000');

/*!40000 ALTER TABLE `exp_statuses` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_template_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_template_groups`;

CREATE TABLE `exp_template_groups` (
  `group_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_name` varchar(50) NOT NULL,
  `group_order` int(3) unsigned NOT NULL,
  `is_site_default` char(1) NOT NULL DEFAULT 'n',
  PRIMARY KEY (`group_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_template_groups` WRITE;
/*!40000 ALTER TABLE `exp_template_groups` DISABLE KEYS */;

INSERT INTO `exp_template_groups` (`group_id`, `site_id`, `group_name`, `group_order`, `is_site_default`)
VALUES
	(1,1,'content',1,'y'),
	(2,1,'includes',2,'n'),
	(4,1,'access',3,'n'),
	(5,1,'profile',4,'n'),
	(6,1,'error',5,'n'),
	(7,1,'member-list',6,'n'),
	(13,1,'action',8,'n'),
	(12,1,'friends_notifications',9,'n'),
	(14,1,'setup',9,'n');

/*!40000 ALTER TABLE `exp_template_groups` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_template_member_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_template_member_groups`;

CREATE TABLE `exp_template_member_groups` (
  `group_id` smallint(4) unsigned NOT NULL,
  `template_group_id` mediumint(5) unsigned NOT NULL,
  PRIMARY KEY (`group_id`,`template_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_template_no_access
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_template_no_access`;

CREATE TABLE `exp_template_no_access` (
  `template_id` int(6) unsigned NOT NULL,
  `member_group` smallint(4) unsigned NOT NULL,
  PRIMARY KEY (`template_id`,`member_group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_templates
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_templates`;

CREATE TABLE `exp_templates` (
  `template_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_id` int(6) unsigned NOT NULL,
  `template_name` varchar(50) NOT NULL,
  `save_template_file` char(1) NOT NULL DEFAULT 'n',
  `template_type` varchar(16) NOT NULL DEFAULT 'webpage',
  `template_data` mediumtext,
  `template_notes` text,
  `edit_date` int(10) NOT NULL DEFAULT '0',
  `last_author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cache` char(1) NOT NULL DEFAULT 'n',
  `refresh` int(6) unsigned NOT NULL DEFAULT '0',
  `no_auth_bounce` varchar(50) NOT NULL DEFAULT '',
  `enable_http_auth` char(1) NOT NULL DEFAULT 'n',
  `allow_php` char(1) NOT NULL DEFAULT 'n',
  `php_parse_location` char(1) NOT NULL DEFAULT 'o',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`template_id`),
  KEY `group_id` (`group_id`),
  KEY `template_name` (`template_name`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_templates` WRITE;
/*!40000 ALTER TABLE `exp_templates` DISABLE KEYS */;

INSERT INTO `exp_templates` (`template_id`, `site_id`, `group_id`, `template_name`, `save_template_file`, `template_type`, `template_data`, `template_notes`, `edit_date`, `last_author_id`, `cache`, `refresh`, `no_auth_bounce`, `enable_http_auth`, `allow_php`, `php_parse_location`, `hits`)
VALUES
	(1,1,1,'index','y','webpage','{embed=\'includes/header\'}\r\n\r\n<!-- End Header and Nav -->\r\n\r\n    <!-- This has been source ordered to come first in the markup (and on small devices) but to be to the right of the nav on larger screens -->\r\n\r\n        <div class=\"great-wall\">    \r\n	        \r\n	        <!--See all Status-->\r\n	        {embed=\'includes/status-all\'}\r\n        \r\n        </div> <!-- .great-wall -->\r\n        <!-- This is source ordered to be pulled to the left on larger screens -->\r\n        <div class=\"profile-container panel hide-for-small\">\r\n	        {embed=\'includes/sidebar-profile\'}\r\n        </div>\r\n        \r\n    </div> <!-- #main -->\r\n\r\n{embed=\'includes/footer\'}','',1365014435,7,'n',0,'','n','n','o',20855),
	(2,1,2,'index','n','webpage','lll','',1363194805,1,'n',0,'','n','n','o',3),
	(4,1,4,'index','n','webpage','','',1363208891,1,'n',0,'','n','n','o',10),
	(6,1,4,'login','y','webpage','{exp:member:login_form return=\"/profile/index\"}\n<p>\n<label>Username</label><br>\n<input type=\"text\" name=\"username\" value=\"\" maxlength=\"32\" size=\"25\">\n</p>\n\n<p>\n<label>Password</label><br>\n<input type=\"password\" name=\"password\" value=\"\" maxlength=\"32\" size=\"25\">\n</p>\n        \n{if auto_login}\n<p><input type=\"checkbox\" name=\"auto_login\" value=\"1\"> Auto-login on future visits</p>\n{/if}\n\n<p><input type=\"checkbox\" name=\"anon\" value=\"1\" checked=\"checked\"> Show my name in the online users list</p>\n<p><input type=\"submit\" name=\"submit\" value=\"Submit\"></p>\n{/exp:member:login_form}','',1364858166,1,'n',0,'','n','n','o',14),
	(5,1,4,'new-member','y','webpage','{exp:user:register return=\"profile/index\"}\n \n    <p>\n    <label>Email Address:</label><br>\n    <input type=\"text\" name=\"email\" />\n    </p>\n \n    <p>\n    <label>Username:</label><br>\n    <input type=\"text\" name=\"username\" />\n    </p>\n    \n    <p>\n    <label>Name:</label><br>\n    <input type=\"text\" name=\"screen_name\" />\n    </p>\n \n    <p>\n    <label>Password:</label><br>\n    <input type=\"password\" name=\"password\" />\n    </p>\n \n    <p>\n    <label>Confirm Password:</label><br>\n    <input type=\"password\" name=\"password_confirm\" />\n    </p>\n \n    <p>\n    <input type=\"checkbox\" name=\"accept_terms\" value=\"y\" />\n    <label>Accept Terms?</label>\n    </p>\n \n    <p><input type=\"submit\" value=\"Submit\" /></p>\n \n{if no_results} \nYou are currently logged in and not allowed to view this form. \n{/if}\n \n{/exp:user:register}','',1364858172,1,'n',0,'','n','n','o',4),
	(7,1,5,'index','y','webpage','{embed=\'includes/header\'}\n\n\n        <section class=\"full-profile\">\n        <!-- all profiles are contained in .full-profile -->\n            \n            {exp:user:edit dynamic=\"off\" member_id=\"{segment_2}\" override_return=\"profile/index\" return=\"profile/index\"  password_required=\"n\" }\n            <div class=\"profile-header clearfix\">\n                <!-- takes up the left column on larger screens, stacks on smaller screens -->\n                <div class=\"user-img\">\n	                <img src=\"{photo_url}{photo_filename}\" width=\"94\" />\n                </div> <!-- .profile-photo -->\n                <div class=\"name\">\n                    <h4>{screen_name}</h4>\n                    <p><input type=\"submit\" name=\"remove_photo\" value=\"Remove Photo\" /><br>\n	                Upload a New Photo: <input type=\"file\" name=\"photo_filename\" /><br>\n	                </p>\n	                \n                </div> <!-- .name -->\n\n            </div> <!-- .profile-header -->\n   \n            <section class=\"profile-details\">\n                <h4>Living</h4>\n                <table class=\"profile-info\">\n                    <tbody>\n                        <tr>\n                            <th scope=\"rowgroup\">Hometown</th>\n                            <td class=\"data\"><input name=\"location\" value=\"{location}\"></td>\n                        </tr>\n                        \n                        <tr>\n                            <th scope=\"rowgroup\">Current City</th>\n                            <td class=\"data\"><input name=\"occupation\" value=\"{occupation}\"></td>\n                        </tr>\n                    </tbody>\n                </table>\n                <h4>Interests</h4>\n                <a href=\"edit-interests.php\" class=\"edit-btn\" id=\"edit-interests\"  data-icon=\"✎\"><span class=\"visuallyhidden\">Edit Interests</span></a>\n                <div class=\"interests\">\n                    <p><input name=\"interests\" value=\"{interests}\"></p>\n                </div> <!-- .interests -->\n                <div class=\"interests\">\n                	<p><input type=\"submit\" value=\"Update Information\" /></p>\n                </div>\n            </section> <!-- .profile-details takes up the right column on large screens, stacks on smaller screens-->\n        \n        </section> <!-- .full-profile -->\n        {/exp:user:edit}        \n        \n        <section class=\"recent-activity\">\n            <!-- Recent activity. Identical structure to the Great Wall. A .post container contains 1 .post-header div and 1 .content div. 0 or more .comment divs may be nested within .content -->\n            \n            <h3>Your Recent Activity</h3>\n          \n            <!--See profile Status-->\n	        {embed=\'includes/status-profile\'}\n\n            <!-- End Feed Entry -->\n        </section>\n\n\n{embed=\'includes/footer\'}','',1364858219,1,'n',0,'','n','n','o',539),
	(8,1,6,'index','y','webpage','','',1364858243,1,'n',0,'','n','n','o',1),
	(9,1,7,'index','y','webpage','{embed=\'includes/header\'}\n\n<!-- End Header and Nav -->\n\n    <!-- This has been source ordered to come first in the markup (and on small devices) but to be to the right of the nav on larger screens -->\n\n        <section class=\"student-list\">\n            <!-- <div class=\"panel\"> -->\n                <div class=\"row\">\n                <?php $count = 0; ?>\n                {exp:user:users orderby=\"screen_name\" sort=\"asc\" limit=\"25\" paginate=\"bottom\" orderby=\"screen_name\" sort=\"asc\"}\n                    {exp:user:stats}\n                    <div class=\"large-3 columns\">\n                        <a href=\"{path=\'profile\'}/{member_id}\">\n                        {if photo_filename}\n                        	<img src=\"{photo_url}{photo_filename}\">\n                        {if:else}\n                        	<img src=\"http://placehold.it/400x400&text=NO IMAGE\">\n                        {/if}\n                        </a>\n                        <a href=\"{path=\'profile\'}/{member_id}\" class=\"name\">{screen_name}</a>\n                    </div>\n                    {/exp:user:stats}\n                <?php \n                    $count++; \n                    if ($count%4 == 0) {\n                        echo \'</div><div class=\"row\">\';\n                    }\n                ?>\n            \n                    {if user_no_results}\n                    <p>Sorry, no results were found.</p>\n                    {/if}\n                {/exp:user:users}\n                <?php \n                    if ($count%4 != 0) {\n                        echo \'</div>\';\n                    }\n                ?>\n            <!-- </div>  --><!-- .panel -->\n        </section>\n    </div> <!-- #main --> \n{embed=\'includes/footer\'}','',1365171286,1,'n',0,'','n','y','o',130),
	(44,1,1,'question','y','webpage','','',1365345596,1,'n',0,'','n','y','o',20),
	(45,1,2,'status-question','y','webpage','{exp:query sql=\"SELECT status_id, member_id, status, status_date FROM exp_friends_status WHERE site_id =\'1\' ORDER BY status_date DESC limit 10\"}\n{exp:user:stats member_id=\'{member_id}\'}\n<article class=\"post section-container accordion\" data-section=\"accordion\">\n    <div class=\"post-header author\">\n        <div class=\"user-img photo\">\n            <a href=\"{path=\'profile\'}/{member_id}}\">\n                {if photo_filename}\n                <img src=\"{photo_url}{photo_filename}\">\n                {if:else}\n                <img src=\"http://placehold.it/90x90&text=NO IMAGE\">\n                {/if}\n            </a>\n        </div> <!-- .photo -->\n        <div class=\"details info\">\n            <h4><a href=\"{path=\'profile\'}/{member_id}\">{screen_name}</a></h4>\n            <span>{status_date format=\'%F %j, %Y\'}<br>from {occupation}</span>\n        </div> <!-- .info -->\n        {exp:channel:entries channel=\'media\' search:status_owner_id=\'={status_id}\' orderby=\'date\' sort=\'desc\' dynamic=\'no\' limit=\"1\"}\n        {if question}\n        <div class=\"question\"></div>\n        {/if}\n        {/exp:channel:entries} \n    </div><!-- .author -->\n            \n    <div class=\"status post-content\">\n        <p>{status}</p>\n        {exp:channel:entries channel=\'media\' search:status_owner_id=\'={status_id}\' orderby=\'date\' sort=\'desc\' dynamic=\'no\' limit=\"1\"}\n        <div class=\"post-img\">\n	    	<img src=\"{media_images}\" />\n        </div> <!-- .post-img -->   \n        {/exp:channel:entries}     \n    </div> <!-- .post-content -->	\n            \n    <section class=\"comments section\">\n        <div class=\"controls title\">\n            <a href=\"#\" class=\"comment-icon\" rel=\"ignore\">\n                {embed=\'includes/comment-counter\' id_status=\'{status_id}\'} <!-- Counter of Comments -->\n            </a>\n            {embed=\'includes/comments\' id_member=\'{member_id}\' id_status=\'{status_id}\' summary=\'yes\'}\n        </div> <!-- .comment-count -->\n        <div class=\"comment-feed content\">\n            {embed=\'includes/comments\' id_member=\'{member_id}\' id_status=\'{status_id}\'}\n        </div>\n    </section> <!-- .comments -->    \n</article>\n{/exp:user:stats}\n{/exp:query}','',1365345836,1,'n',0,'','n','y','o',6),
	(10,1,7,'profile-view','y','webpage','{embed=\'includes/header\'}\r\n\r\n\r\n{exp:user:stats dynamic=\"off\" member_id=\"{segment_3}\"}\r\n        <section class=\"full-profile\">\r\n        <!-- all profiles are contained in .full-profile -->\r\n            \r\n            <div class=\"profile-header clearfix\">\r\n                <!-- takes up the left column on larger screens, stacks on smaller screens -->\r\n                <div class=\"user-img\">\r\n		            {if photo_filename}\r\n	                	<img src=\"{photo_url}{photo_filename}\">\r\n	                {if:else}\r\n	                	<img src=\"http://placehold.it/300x240&text=[PROFILE]\" />\r\n	                {/if}    \r\n                </div> <!-- .profile-photo -->\r\n                <div class=\"name\">\r\n                    <h4>{screen_name}</h4>\r\n                </div> <!-- .name -->\r\n\r\n            </div> <!-- .profile-header -->\r\n                \r\n            <section class=\"profile-details\">\r\n                <h4>Living</h4>\r\n                <table class=\"profile-info\">\r\n                    <tbody>\r\n                        <tr>\r\n                            <th scope=\"rowgroup\">Hometown</th>\r\n                            <td class=\"data\">{location}</td>\r\n                        </tr>\r\n                        \r\n                        <tr>\r\n                            <th scope=\"rowgroup\">Current City</th>\r\n                            <td class=\"data\">{occupation}</td>\r\n                        </tr>\r\n                    </tbody>\r\n                </table>\r\n                <h4>Interests</h4>\r\n                <div class=\"interests\">\r\n                    <p>{interests}</p>\r\n                </div> <!-- .interests -->\r\n                \r\n                <h4>Status</h4>\r\n            	<div class=\"interests\">\r\n	                {exp:friends:members member_id=\"{segment_3}\"} \r\n					    <p>\r\n					        {if friend == \"y\"}\r\n					            {if friends_reciprocal == \"y\"}\r\n					                (already friends)\r\n					            {if:else}\r\n					                (invited)\r\n					            {/if}\r\n					        {if:else}\r\n					            <a href=\"{path=\'member-list/add\'}/{friends_member_id}/\">\r\n					                Add to Friends\r\n					            </a>\r\n					        {/if}\r\n					    </p>\r\n					{/exp:friends:members} \r\n            	</div>  \r\n            </section> <!-- .profile-details takes up the right column on large screens, stacks on smaller screens-->\r\n        \r\n        </section> <!-- .full-profile -->\r\n{/exp:user:stats}       \r\n        \r\n        <section class=\"recent-activity\">\r\n            <!-- Recent activity. Identical structure to the Great Wall. A .post container contains 1 .post-header div and 1 .content div. 0 or more .comment divs may be nested within .content -->\r\n            \r\n            <h3>Recent Activity</h3>\r\n            \r\n            <!--See profile Status-->\r\n	        {embed=\'includes/status-profile\' id_member=\'{segment_3}\'}\r\n\r\n            <!-- End Feed Entry -->\r\n        </section>\r\n\r\n\r\n{embed=\'includes/footer\'}','',1365014435,7,'n',0,'','n','n','o',285),
	(11,1,2,'header','y','webpage','<!DOCTYPE html>\n<!--[if IE 8]> 				 <html class=\"no-js lt-ie9\" lang=\"en\"> <![endif]-->\n<!--[if gt IE 8]><!--> <html class=\"no-js\" lang=\"en\"> <!--<![endif]-->\n\n    <head>\n        <meta charset=\"utf-8\" />\n        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, user-scalable=no\" />\n        <title>NYU Shanghai-net</title>\n        \n        <link rel=\"stylesheet\" href=\"{site_url}css/normalize.css\" />\n        <link rel=\"stylesheet\" href=\"{site_url}css/screen.css\" />\n        <script src=\"{site_url}js/vendor/custom.modernizr.js\"></script>        \n    </head>\n    <body>\n        <ul id=\"notifications\" class=\"notifications drop\" data-dropdown-content>\n            <li><h4>Notifications</h4></li>\n            <li><a href=\"#\"><img src=\"img/josh-smith_feed_47px.jpg\"><p><span>Josh Smith</span> dolor sit amet, consectetur adipiscing elit.<br><small>6 hours ago from <span></span></small></p></a></li>\n            <li><a href=\"#\"><img src=\"img/juan-marin_feed_47px.jpg\"><p><span>Juan Marin</span> dolor sit amet, consectetur adipiscing elit.<br><small>6 hours ago from <span></span></small></p></a></li>\n        </ul>\n        <ul id=\"actions\" class=\"actions drop\" data-dropdown-content>\n            <li><h4>Actions</h4></li>\n            <li><a href=\"#\"><p>Lorem ipsum dolor sit amet, consectetur\nadipiscing elit.<br><small>6 hours ago from <span></span></small></p></a></li>\n            <li><a href=\"#\"><p>Lorem ipsum dolor sit amet, consectetur\nadipiscing elit.<br><small>6 hours ago from <span></span></small></p></a></li>\n            <li><a href=\"#\"><p>Lorem ipsum dolor sit amet, consectetur\nadipiscing elit.<br><small>6 hours ago from <span></span></small></p></a></li>\n        </ul>\n    	{if segment_1==\'profile\'} \n        <div class=\"outer-wrap profile\" id=\"outer-wrap\">\n        {if:else}\n        <div class=\"outer-wrap\" id=\"outer-wrap\">\n        {/if}\n            \n            <div class=\"page\" id=\"page\">\n            <!-- Header and Nav -->\n                <header class=\"global\" id=\"top\" role=\"banner\">\n\n                    <h1 class=\"visuallyhidden\">NYU Shanghai-Net</h1>\n                    <div class=\"header-left\">\n                        <div class=\"menu\">\n                        {if segment_2==\'profile\'}  \n                            <a href=\"{site_url}\" class=\"back\" data-title=\"BACK\" id=\"back\"><span class=\"visuallyhidden\">Back</span></a>\n                        {if:else}\n                            <a href=\"#nav\" class=\"menu-btn\" data-icon=\"☰\" id=\"menu-btn\"><span class=\"visuallyhidden\">Navigate</span></a>           \n                        {/if}\n                        </div>\n                        \n                        <div class=\"first ribbon\">\n                        {exp:query sql=\"select count(*) as count_comments from `exp_friends_profile_comments` where author_id=\'1\' \"}\n                        {count_comments}\n                            <div class=\"notifications-count\" id=\"notifications-count\"><span>{count_comments}</span></div>\n                            <a href=\"#\" data-dropdown=\"notifications\" class=\"notifications-icon\"></a>\n                        {/exp:query}    \n                        </div>\n                    </div>\n                    <div class=\"header-right\">\n                        <div class=\"second ribbon\">\n                            <div class=\"actions-count\" id=\"actions-count\"><span>99+</span></div>\n                            <a href=\"#\" data-dropdown=\"actions\" class=\"actions-icon\"></a>\n                        </div>\n                        <div class=\"post-icon\">\n                            <a href=\"{path=\'content/poststatus\'}/{logged_in_member_id}\" class=\"post-btn\"  data-icon=\"✎\" id=\"post-btn\"><span class=\"visuallyhidden\">New Post</span></a>\n                        </div>\n                    </div>\n                </header>\n                <nav id=\"nav\" class=\"nav\" role=\"navigation\">\n                    <h3 class=\"name show-for-small\" data-icon=\"','',1365259190,1,'n',0,'','n','y','o',0),
	(12,1,2,'footer','y','webpage','        </div> <!-- #main -->\n      </div> <!-- #page -->\n  </div> <!-- #outer-wrap -->\n        <script>\n            document.write(\'<script src=/2017introductions/js/vendor/\'\n            + (\'__proto__\' in {} ? \'zepto\' : \'jquery\')\n            + \'.js><\\/script>\');\n        </script>\n        <script src=\"/2017introductions/js/foundation/foundation.js\"></script>\n        <script src=\"/2017introductions/js/foundation/foundation.topbar.js\"></script>\n        <script src=\"/2017introductions/js/foundation/foundation.forms.js\"></script>\n        <script src=\"/2017introductions/js/foundation/foundation.dropdown.js\"></script>\n        <script src=\"/2017introductions/js/foundation/foundation.section.js\"></script>\n        \n        <script src=\"/2017introductions/js/jwplayer/jwplayer.js\"></script>\n        \n        <script>\n            $(document).foundation();\n        </script>\n	\n        <script src=\"/2017introductions/js/main-ck.js\"></script>\n\n    </body>\n</html>','',1365014435,7,'n',0,'','n','n','o',0),
	(36,1,13,'index','y','webpage','{embed=\'includes/header\'}\n\n<!-- End Header and Nav -->\n\n    <!-- This has been source ordered to come first in the markup (and on small devices) but to be to the right of the nav on larger screens -->\n\n        <div class=\"great-wall\">\n        \n	        {if logged_out}\n				{embed=\'includes/login\'}\n			{/if}        \n	        \n	        <!--See all Status-->\n	        {embed=\'includes/status-all\'}\n        \n        </div> <!-- .great-wall -->\n        <!-- This is source ordered to be pulled to the left on larger screens -->\n        <div class=\"profile-container panel hide-for-small\">\n	        {embed=\'includes/sidebar-profile\'}\n        </div>\n        \n    </div> <!-- #main -->\n\n{embed=\'includes/footer\'}','',1364857615,8,'n',0,'','n','n','o',0),
	(37,1,13,'test','n','webpage','<!DOCTYPE html>\n<!--[if IE 8]> 				 <html class=\"no-js lt-ie9\" lang=\"en\"> <![endif]-->\n<!--[if gt IE 8]><!--> <html class=\"no-js\" lang=\"en\"> <!--<![endif]-->\n\n    <head>\n        <meta charset=\"utf-8\" />\n        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, user-scalable=no\" />\n        <title>NYU Shanghai-net</title>\n        \n        <!-- link rel=\"stylesheet\" href=\"/2017introductions/css/normalize.css\" / -->\n        <!-- link rel=\"stylesheet\" href=\"/2017introductions/css/screen.css\" / -->\n        <!-- script src=\"/2017introductions/js/vendor/custom.modernizr.js\"></script -->\n	<script type=\'text/javascript\' src=\'//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js\'></script>        \n    </head>\n    <body>\n\n	        {if logged_out}\n				<?php\n				// process SSO\n				$_POST[\'eppn\'] = \'\';\n				// user passed NYU authentication\n				if (isset($_POST[\'eppn\']) ) {\n//&& !empty($_POST[\'eppn\']) ) {\n\n// echo \"<pre>\";\n// print_r($_SERVER);\n// echo \"</pre>\";\n				?>\n{exp:ajax_form class=\"Member\" method=\"member_login\"}\n<div style=\"display:hidden\">\n<form id=\"loginForm\" method=\'post\' action=\'{post_url}\'>\n<input type=\'hidden\' name=\'XID\' value=\'{xid}\' />\n<input type=\'hidden\' name=\'ACT\' value=\'{action_id}\' />\n<input type=\'text\' id=\'username\' name=\'username\' value=\"<?php echo $_POST[\'eppn\']; ?>\" />\n<input type=\'submit\' value=\'Login\' id=\'btnLogin\' />\n</form>\n</div>\n\n<script type=\"text/javascript\">\n$(document).ready(function() {\n	\n	//$(\"#btnLogin\").click(function(){\n	$(\"#loginForm\").submit(function(e){\n		e.preventDefault();	\n		console.log(\'submitted\');\n		$.ajax({\n		  type: \"POST\",\n		  url: \"{post_url}\",\n		  data: $(\"#loginForm\").serializeArray()\n		}).done(function( msg ) {\n		  console.log(msg);\n		});		\n\n	}); // end click\n\nif ($(\'#username\').val() != \'\') {\n	$(\"#btnLogin\").click();\n} \n\n});\n</script>\n{/exp:ajax_form}\n\n<?php\n	\n		}\n?>\n\n		{/if}        \n	        \n</body>\n</html>','',1364854287,0,'n',0,'','n','y','o',0),
	(33,1,2,'status-profile','y','webpage','{exp:query sql=\"SELECT status_id, member_id, status, status_date FROM exp_friends_status WHERE site_id =\'1\' AND member_id=\'{segment_3}\' ORDER BY status_date DESC limit 10\"}\r\n{exp:user:stats member_id=\'{segment_3}\'}\r\n<article class=\"post\" data-section>\r\n    <div class=\"post-header\">\r\n        <div class=\"user-img\">\r\n            <a href=\"/profile/{member_id}\">\r\n            {if photo_filename}\r\n            <img src=\"{photo_url}{photo_filename}\" />\r\n            {if:else}\r\n            <img src=\"/2017introductions/img/imagen.jpg\" />\r\n            {/if}\r\n            </a>\r\n        </div> <!-- .user-img -->\r\n        <div class=\"details\">\r\n            <h4>{screen_name}</h4>\r\n            <span>{status_date format=\'%F %j, %Y\'}<br>from {occupation}</span>\r\n        </div> <!-- .details -->	    \r\n    </div><!-- .post-header -->\r\n            \r\n    <div class=\"status\">\r\n        <p>{status}</p>\r\n    </div> <!-- .content -->	\r\n            \r\n    <section class=\"comments\">\r\n        <div class=\"controls title\">\r\n            <a href=\"#\" class=\"comment-icon\">\r\n	            {embed=\'includes/comment-counter\' id_status=\'{status_id}\'}\r\n            </a>\r\n            <div>\r\n            {embed=\'includes/commets\' id_member=\'{member_id}\' id_status=\'{status_id}\' summary=\'yes\'}\r\n            </div>\r\n        </div> <!-- .comment-count -->\r\n        <div class=\"comment-feed\">\r\n            {embed=\'includes/commets\' id_member=\'{member_id}\' id_status=\'{status_id}\'}\r\n        </div>\r\n    </section> <!-- .comments -->    \r\n</article>\r\n{/exp:user:stats}\r\n{/exp:query}','',1365014435,7,'n',0,'','n','n','o',9),
	(32,1,2,'status-all','y','webpage','{exp:query sql=\"SELECT status_id, member_id, status, status_date FROM exp_friends_status WHERE site_id =\'1\' ORDER BY status_date DESC limit 10\"}\n{exp:user:stats member_id=\'{member_id}\'}\n<article class=\"post section-container accordion\" data-section=\"accordion\">\n    <div class=\"post-header author\">\n        <div class=\"user-img photo\">\n            <a href=\"{path=\'profile\'}/{member_id}}\">\n                {if photo_filename}\n                <img src=\"{photo_url}{photo_filename}\">\n                {if:else}\n                <img src=\"http://placehold.it/90x90&text=NO IMAGE\">\n                {/if}\n            </a>\n        </div> <!-- .photo -->\n        <div class=\"details info\">\n            <h4><a href=\"{path=\'profile\'}/{member_id}\">{screen_name}</a></h4>\n            <span>{status_date format=\'%F %j, %Y\'}<br>from {occupation}</span>\n        </div> <!-- .info -->\n        {exp:channel:entries channel=\'media\' search:status_owner_id=\'={status_id}\' orderby=\'date\' sort=\'desc\' dynamic=\'no\' limit=\"1\"}\n        {if question}\n        <div class=\"question\"></div>\n        {/if}\n        {/exp:channel:entries} \n    </div><!-- .author -->\n            \n    <div class=\"status post-content\">\n        <p>{status}</p>\n        {exp:query sql=\"SELECT field_id_8 from `exp_channel_data` where channel_id=\'2\' and field_id_4=\'{status_id}\' order by entry_id DESC\"}\n        \n        <?php echo $image_filename =explode(\'{filedir_2}\', {field_id_8}); ?>\n        \n        {/exp:query}\n        {exp:channel:entries channel=\'media\' search:status_owner_id=\'={status_id}\' orderby=\'date\' sort=\'desc\' dynamic=\'no\' limit=\"1\"}\n	        {if media_images}\n		        <div class=\"post-img\">\n			    	<img src=\"{media_images}\" />\n		        </div> <!-- .post-img -->\n	        {/if}\n	        \n	        {if media_audio}   \n		        <audio controls>\n				  <source src=\"{media_audio}\" type=\"audio/mpeg\">\n				Your browser does not support the audio element.\n				</audio>\n			{/if}\n			\n	        {if media_video}   \n		        <video width=\"320\" height=\"240\" controls>\n				  <source src=\"{media_video}\" type=\"video/mp4\">\n				Your browser does not support the audio element.\n				</video>\n			{/if}			\n        {/exp:channel:entries}     \n    </div> <!-- .post-content -->	\n            \n    <section class=\"comments section\">\n        <div class=\"controls title\">\n            <a href=\"#\" class=\"comment-icon\" rel=\"ignore\">\n                {embed=\'includes/comment-counter\' id_status=\'{status_id}\'} <!-- Counter of Comments -->\n            </a>\n            {embed=\'includes/comments\' id_member=\'{member_id}\' id_status=\'{status_id}\' summary=\'yes\'}\n        </div> <!-- .comment-count -->\n        <div class=\"comment-feed content\">\n            {embed=\'includes/comments\' id_member=\'{member_id}\' id_status=\'{status_id}\'}\n        </div>\n    </section> <!-- .comments -->    \n</article>\n{/exp:user:stats}\n{/exp:query}','',1365472836,1,'n',0,'','n','y','o',9),
	(35,1,1,'test','y','webpage','<!DOCTYPE html>\n<!--[if IE 8]> 				 <html class=\"no-js lt-ie9\" lang=\"en\"> <![endif]-->\n<!--[if gt IE 8]><!--> <html class=\"no-js\" lang=\"en\"> <!--<![endif]-->\n\n    <head>\n        <meta charset=\"utf-8\" />\n        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, user-scalable=no\" />\n        <title>NYU Shanghai-net</title>\n        \n        <!-- link rel=\"stylesheet\" href=\"/2017introductions/css/normalize.css\" / -->\n        <!-- link rel=\"stylesheet\" href=\"/2017introductions/css/screen.css\" / -->\n        <!-- script src=\"/2017introductions/js/vendor/custom.modernizr.js\"></script -->\n	<script type=\'text/javascript\' src=\'//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js\'></script>        \n    </head>\n    <body>\n\n	        {if logged_out}\n				<?php\n				// process SSO\n				// $_POST[\'eppn\'] = \'\';\n				// user passed NYU authentication\n				if (isset($_SERVER[\'eppn\']) && !empty($_SERVER[\'eppn\']) ) {\n					// ) {\n/*\necho \"<pre>\";\nprint_r($_SERVER);\necho \"</pre>\";\n*/\n				?>\n{exp:ajax_form class=\"Member\" method=\"member_login\"}\n<div style=\"display:hidden\">\n<form id=\"loginForm\" method=\'post\' action=\'{post_url}\'>\n<input type=\'hidden\' name=\'XID\' value=\'{xid}\' />\n<input type=\'hidden\' name=\'ACT\' value=\'{action_id}\' />\n<<<<<<< HEAD\n<input type=\'text\' id=\'username\' name=\'username\' value=\"<?php echo $_SERVER[\'eppn\']; ?>\" />\n=======\n<input type=\'text\' id=\'username\' name=\'username\' value=\"<?php echo $_POST[\'eppn\']; ?>\" />\n>>>>>>> local-ahead\n<input type=\'submit\' value=\'Login\' id=\'btnLogin\' />\n</form>\n</div>\n\n<script type=\"text/javascript\">\n$(document).ready(function() {\n	\n	//$(\"#btnLogin\").click(function(){\n	$(\"#loginForm\").submit(function(e){\n		e.preventDefault();	\n		console.log(\'submitted\');\n		$.ajax({\n		  type: \"POST\",\n		  url: \"{post_url}\",\n		  data: $(\"#loginForm\").serializeArray()\n		}).done(function( msg ) {\n			// take action based on response\n			console.log(msg);\n			 var v = msg.charAt(0);\n			if (v == 0){\n				// go to ERROR page - user not in approved list\n				// window.location();\n			} else if (v == 1){\n				// normal login\n				// window.location({path=\"content\"});\n				\n			} else if (v == 2){\n				// new user created\n				// window.location({path=\"actions\"});\n			} \n		});		\n\n	}); // end click\n\nif ($(\'#username\').val() != \'\') {\n	$(\"#btnLogin\").click();\n} \n\n});\n</script>\n{/exp:ajax_form}\n<?php\n		}\n?>\n\n		{/if}        \n	        \n</body>\n</html>','',1365014435,7,'n',0,'','n','y','o',116),
	(34,1,2,'commets','y','webpage','\r\n{if embed:summary!=\'yes\'}\r\n{exp:safecracker channel=\"wall_posts\" return=\"/2017introductions/content/index\" dynamic=\"no\" safecracker_head=\"no\" secure_action=\"yes\" secure_return=\"yes\"}\r\n<input type=\"hidden\" name=\"title\" id=\"title\" value=\"a wall post\" />\r\n<input type=\"hidden\" name=\"entry_date\" value=\"{entry_date}\" />\r\n<input type=\"hidden\" name=\"author_id\" value=\"{logged_in_member_id}\" />\r\n<input type=\"hidden\" name=\"url_title\" id=\"url_title\" value=\"{url_title}\" />\r\n<input type=\"hidden\" name=\"status_owner\" value=\"{embed:id_status}\" /> \r\n\r\n<input type=\"text\" name=\"thepost\" value=\"Write something...\" style=\"margin-bottom:2px; display:inline\" onfocus=\"if\r\n(this.value==this.defaultValue) this.value=\'\';\">\r\n<input type=\"submit\" name=\"submit\" alt=\"Submit\">\r\n\r\n{/exp:safecracker}\r\n{/if}\r\n\r\n{exp:channel:entries channel=\'wall_posts\' search:status_owner=\'={embed:id_status}\' orderby=\'date\' sort=\'desc\' limit=\'10\' dynamic=\'no\' {if embed:summary!=\'yes\'} limit=\'2\' {if:else} offset=\'2\' {/if}}\r\n<p class=\"comment\">\r\n	{exp:user:stats member_id=\'{author_id}\'}\r\n	<a href=\"/2017introductions/member-list/profile-view/{author_id}\">\r\n	    {if photo_filename}\r\n	    	<img src=\"{photo_url}\" width=\"40\"/>\r\n	    {if:else}\r\n	    	<img src=\"/2017introductions/img/imagen.jpg\"  width=\"40\"/>\r\n	    {/if}\r\n	</a>\r\n    <a href=\"/2017introductions/profile/{author_id}\">{screen_name}</a> <br>{thepost}<br>\r\n    {exp:user:stats}\r\n    <span>{entry_date format=\"%F %j, %Y at %h:%i %a\"}</span>\r\n</p>\r\n{/exp:channel:entries}','',1365014435,7,'n',0,'','n','n','o',0),
	(38,1,1,'postcomment','y','webpage','<p><strong>Post a Comment:</strong></p>\r\n\r\n{exp:safecracker channel=\"wall_posts\" return=\"content/index\" dynamic=\"no\" safecracker_head=\"no\" secure_action=\"yes\" secure_return=\"yes\"}\r\n<input type=\"hidden\" name=\"title\" id=\"title\" value=\"a wall post\" />\r\n<input type=\"hidden\" name=\"entry_date\" value=\"{entry_date}\" />\r\n<input type=\"hidden\" name=\"author_id\" value=\"{logged_in_member_id}\" />\r\n<input type=\"hidden\" name=\"url_title\" id=\"url_title\" value=\"{url_title}\" />\r\n<input type=\"hidden\" name=\"status_owner\" value=\"1\" /> \r\n\r\n<input type=\"text\" name=\"thepost\" value=\"Write something...\" style=\"margin-bottom:2px; display:inline\" onfocus=\"if\r\n(this.value==this.defaultValue) this.value=\'\';\">\r\n<input type=\"submit\" name=\"submit\" alt=\"Submit\">\r\n{/exp:safecracker}','',1365014435,7,'n',0,'','n','n','o',2),
	(39,1,13,'sections','y','webpage','{embed=\'includes/header\'}\n\n<div class=\"row\">\n    <div class=\"small-12 columns\">\n        <div class=\"section-container vertical-nav\" data-section=\"vertical-nav\" style=\"\">\n              <section class=\"section\" style=\"\">\n                <p class=\"title\" style=\"left: 0px;\"><a href=\"#\">Section 1</a></p>\n                <div class=\"content\" style=\"\">\n                  <ul class=\"side-nav\">\n                    <li><a href=\"#\">Link 1</a></li>\n                    <li><a href=\"#\">Link 2</a></li>\n                    <li><a href=\"#\">Link 3</a></li>\n                    <li class=\"divider\"></li>\n                    <li><a href=\"#\">Link 1</a></li>\n                  </ul>\n                </div>\n              </section>\n              <section class=\"section\" style=\"\">\n                <p class=\"title\" style=\"left: 159px;\"><a href=\"#\">Section 2</a></p>\n                <div class=\"content\" style=\"\">\n                  <ul class=\"side-nav\">\n                    <li><a href=\"#\">Link 1</a></li>\n                    <li><a href=\"#\">Link 2</a></li>\n                    <li><a href=\"#\">Link 3</a></li>\n                    <li class=\"divider\"></li>\n                    <li><a href=\"#\">Link 1</a></li>\n                  </ul>\n                </div>\n              </section>\n            </div>\n    </div>\n</div>\n\n{embed=\'includes/footer\'}',NULL,1365007711,1,'n',0,'','n','n','o',0),
	(40,1,2,'comment-counter','y','webpage','{exp:query sql=\"SELECT count(*) as comment_count FROM exp_channel_data where field_id_2=\'{embed:id_status}\' \"}\r\n<span>{comment_count}+</span>\r\n{/exp:query}','',1365014435,7,'n',0,'','n','n','o',0),
	(31,1,2,'sidebar-profile','y','webpage','{exp:user:stats}\n	{if photo_filename}\n		<a href=\"/2017introductions/profile/{member_id}\"><img src=\"{photo_url}{photo_filename}\" /></a>\n	{if:else}\n		<a href=\"/2017introductions/profile/{member_id}\"><img src=\"http://placehold.it/300x240&text=[PROFILE]\" /></a>\n	{/if}\n	<h5><a href=\"/2017introductions/profile/{member_id}\">{screen_name}</a></h5>\n{/exp:user:stats}                ','',1365014435,7,'n',0,'','n','n','o',0),
	(30,1,2,'login','y','webpage','<?php\n/*\nif (isset($_POST[\'eppn\'])) {\n	// SSO values passed - fill in form and auto submit it!\n}\n?>\n\n{exp:ajax_form class=\"Member\" method=\"member_login\"}\n\n<form id=\"loginForm\" method=\'post\' action=\'{post_url}\'>\n<input type=\'hidden\' name=\'XID\' value=\'{xid}\' />\n<input type=\'hidden\' name=\'ACT\' value=\'{action_id}\' />\n<input type=\'text\' name=\'username\' value=\"chris.muro\" />\n<input type=\'password\' name=\'password\' value=\"chris001\" />\n<input type=\'button\' name=\'Login\' id=\'btnLogin\'/>\n</form>\n\n<script type=\'text/javascript\' src=\'//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js\'></script>\n<script type=\"text/javascript\">\n	$(\"#btnLogin\").click(function(){\n		$.post(\'{post_url}\',\n			$(\"#loginForm\").serializeArray(),\n			function(data){\n			// handle response here, parse html, or\n			// json if using my output class mod.\n			window.location = \'/profile/index\';\n		}); // end post\n	}); // end click\n\n</script>\n{/exp:ajax_form}\n\n  <?php \n  */\n?>\n          <article class=\"post\">\n          	<div class=\"content\">\n				<p><strong>Sign In</strong></p>\n				{exp:member:login_form id=\"loginform\" return=\"/profile/index\"}\n				<p>\n				<label>Username</label><br>\n				<input type=\"text\" id=\"username\" name=\"username\" value=\"\" maxlength=\"32\" size=\"25\">\n				</p>\n				\n				<p>\n				<label>Password</label><br>\n				<input type=\"password\" id=\"password\" name=\"password\" value=\"\" maxlength=\"32\" size=\"25\">\n				</p>\n				        \n				{if auto_login}\n				<p><input type=\"checkbox\" name=\"auto_login\" value=\"1\"> Auto-login on future visits</p>\n				{/if}\n				\n				<p><input type=\"checkbox\" name=\"anon\" value=\"1\" checked=\"checked\"> Show my name in the online users list</p>\n				<p><input type=\"submit\" name=\"submit\" value=\"Submit\"></p>\n				{/exp:member:login_form}	\n			</div>	\n        </article>\n\n<?php /* <script type=\'text/javascript\' src=\'//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js\'></script>\n<script type=\"text/javascript\">\n$( document ).ready(function() {\n	$(\'#username\').val(\"chris.muro\");\n	$(\'#password\').val(\"chris001\");\n	$(\'#loginform\').submit();\n});\n</script>\n*/\n?>','',1364858136,1,'n',0,'','n','y','o',0),
	(26,1,7,'add','y','webpage','{embed=\'includes/header\'}\n\n{exp:user:stats}\n    <div class=\"page\">\n        <section class=\"full-profile\">\n        <!-- all profiles are contained in .full-profile -->\n            <div class=\"button-wrapper\">\n                <a href=\"/2017introductions/member-list\">Back to Members List</a>\n            </div> <!-- .button-wrapper; profile details fall below this -->\n            <div class=\"profile-photo\"> <!-- takes up the left column on larger screens, stacks on smaller screens -->\n            	{if photo_filename}\n                <img src=\"{photo_url}{photo_filename}\">\n                {if:else}\n                <img src=\"http://placehold.it/300x240&text=[PROFILE]\" />\n                {/if}\n                \n                {exp:friends:members member_id=\"{segment_3}\"} \n				    <div class=\"name\">\n				    <p>\n				    {friends_screen_name}’s Profile<br>\n				    Email: {friends_email}<br>\n				    Total Entries: {friends_total_entries}<br>\n				    Join Date: {friends_join_date  format=\"%m %d, %Y\"}\n				    </p>\n				    </div>\n				{/exp:friends:members}                \n                \n                \n            </div> <!-- .profile-photo -->\n            \n            <div class=\"profile-details\">\n                \n                <div>\n				{exp:friends:add\n				    notification_request=\"friends_notifications/friend_request\"\n				    notification_confirm=\"friends_notifications/friend_confirm\"\n				    subject_request=\"{friends_inviter_screen_name} added you as a friend!\"\n				    subject_confirm=\"{friends_inviter_screen_name} confirmed your friend request!\"\n				}\n				 \n				    {if success}\n				        <h3>Successful!</h3>\n				    {/if}\n				    {if failure}\n				        <h3>Error!</h3>\n				    {/if}\n				 \n				    <p>{friends_message}</p>\n				 \n				{/exp:friends:add}                \n                \n                </div>\n                \n            </div> <!-- .profile-details takes up the right column on large screens, stacks on smaller screens-->\n        \n        </section> <!-- .full-profile -->\n    \n    </div> <!-- .page -->\n{/exp:user:stats}\n\n{embed=\'includes/footer\'}','',1364858318,1,'n',0,'','n','n','o',10),
	(27,1,12,'index','n','webpage','',NULL,1364510972,0,'n',0,'','n','n','o',0),
	(28,1,12,'friend_request','y','webpage','Hello {friends_invitee_screen_name}!\n \nYou have just received a Friend Request from\n{friends_inviter_screen_name}.\n \nClick the link below to accept this invitation:\n{path=\'friends/add\'}/{friends_inviter_member_id}/','',1364858348,1,'n',0,'','n','n','o',0),
	(29,1,12,'friend_confirm','y','webpage','Hello {friends_invitee_screen_name}!\n \nYou are now friends with {friends_inviter_screen_name}\nbecause they have accepted your invitation.\n \nClick the link below to view their profile:\n{path=\'friends/profile\'}/{friends_inviter_member_id}/','',1364858345,1,'n',0,'','n','n','o',0),
	(41,1,1,'poststatus','y','webpage','{embed=\'includes/header\'}\n\n<section class=\"new-post\">\n	{exp:friends:status_form return=\"content/index\" form_name=\"main_status_form\"}\n		<input type=\"hidden\" name=\"friends_status_private\" id=\"friends_status_private\" value=\"n\" />\n		<button id=\"cancel\" name=\"cancel\" value=\"Cancel\" class=\"cancel\">Cancel</button>\n		<textarea id=\"post\" name=\"friends_status\" placeholder=\"Show, tell, or ask.\" rows=\"8\"></textarea>\n		<input type=\"submit\" value=\"Add Media\" id=\"post\" class=\"post\">\n	{/exp:friends:status_form}\n	\n	{exp:query sql=\"select status_id as last_status_id from `exp_friends_status` where member_id=\'1\' order by status_id DESC limit 1;\"}\n        {last_status_id}\n        <?php $last_status = \'{last_status_id}\'; ?>\n        <?php echo $last_status = $last_status + 1; ?>\n    {/exp:query}\n    \n	{exp:safecracker channel=\"media\" return=\"content/index\" dynamic=\"no\" }\n		<input type=\"hidden\" name=\"title\" id=\"title\" value=\"Status Media Elements\" />\n		<input type=\"hidden\" name=\"entry_date\" value=\"{entry_date}\" />\n		<input type=\"hidden\" name=\"author_id\" value=\"{logged_in_member_id}\" />\n		<input type=\"hidden\" name=\"url_title\" id=\"url_title\" value=\"{url_title}\" />\n		<input type=\"hidden\" name=\"status_owner_media\" value=\"{last_status_id}\" />\n		\n		<div class=\"media\">\n			<div class=\"post-button photo\" id=\"photo\">\n				<a href=\"#\" rel=\"ignore\" data-icon=\"','',1365101868,1,'n',0,'','n','y','o',509),
	(42,1,1,'poststatus_media','y','webpage','dfgfsg','',1365099967,1,'n',0,'','n','y','o',10),
	(43,1,2,'comments','y','webpage','{if embed:summary==\'yes\'}\r\n\r\n{exp:channel:entries channel=\'wall_posts\' search:status_owner=\'={embed:id_status}\' orderby=\'date\' sort=\'desc\' limit=\'1\' dynamic=\'no\'}\r\n\r\n<article class=\"most-recent\">\r\n{exp:user:stats member_id=\'{author_id}\'}\r\n    <h5>Most recent comment by <a href=\"{path=\'member-list/profile-view\'}/{author_id}\">{screen_name}</a></h5>\r\n    <p>{thepost}</p>\r\n    <span>{entry_date format=\"%F %j, %Y at %h:%i %a\"}</span>\r\n{/exp:user:stats}\r\n</article>\r\n{/exp:channel:entries}\r\n\r\n{if:else}\r\n\r\n{exp:channel:entries channel=\'wall_posts\' search:status_owner=\'={embed:id_status}\' orderby=\'date\' sort=\'desc\' dynamic=\'no\'}\r\n\r\n<article class=\"comment\">\r\n    {exp:user:stats member_id=\'{author_id}\'}\r\n    <div class=\"author\">\r\n        <div class=\"photo\">\r\n            <a href=\"{path=\'member-list/profile-view\'}/{author_id}\">\r\n                {if photo_filename}\r\n    	    	<img src=\"{photo_url}\">\r\n        	    {if:else}\r\n                <img src=\"http://placehold.it/40x40&text=NO IMAGE\">\r\n                {/if}\r\n            </a>\r\n        </div> <!-- .photo -->\r\n        <div class=\"info\">\r\n            <h4><a href=\"{path=\'member-list/profile-view\'}/{author_id}\">{screen_name}</a></h4>\r\n            <span>{entry_date format=\"%F %j, %Y at %h:%i %a\"}</span>\r\n        </div> <!-- .info -->	    \r\n    </div><!-- .author -->\r\n            \r\n    <div class=\"post-content\">\r\n        <p>{thepost}</p>\r\n    </div> <!-- .post-content -->	\r\n    {exp:user:stats}\r\n</article>\r\n{/exp:channel:entries}\r\n\r\n{exp:safecracker channel=\"wall_posts\" class=\"comment-form\" return=\"{path=\'content/index\'}\" dynamic=\"no\" safecracker_head=\"no\" secure_action=\"no\" secure_return=\"no\"}\r\n<input type=\"hidden\" name=\"title\" id=\"title\" value=\"a wall post\" />\r\n<input type=\"hidden\" name=\"entry_date\" value=\"{entry_date}\" />\r\n<input type=\"hidden\" name=\"author_id\" value=\"{logged_in_member_id}\" />\r\n<input type=\"hidden\" name=\"url_title\" id=\"url_title\" value=\"{url_title}\" />\r\n<input type=\"hidden\" name=\"status_owner\" value=\"{embed:id_status}\" /> \r\n\r\n<input type=\"text\" name=\"thepost\" placeholder=\"Write something...\">\r\n<input type=\"submit\" name=\"submit\" value=\"Submit\">\r\n\r\n{/exp:safecracker}\r\n\r\n{/if}',NULL,1365108682,1,'n',0,'','n','n','o',0),
	(46,1,14,'index','y','webpage','','',1365525688,1,'n',0,'','n','y','o',5),
	(47,1,14,'step-one','y','webpage','','',1365525675,1,'n',0,'','n','y','o',1),
	(48,1,14,'step-two','y','webpage','','',1365525662,1,'n',0,'','n','y','o',1),
	(49,1,14,'step-two-a','y','webpage','','',1365525648,1,'n',0,'','n','y','o',1),
	(50,1,2,'new-post','y','webpage','<section class=\"new-post\">\n\n	\n	{exp:query sql=\"select status_id, member_id from `exp_friends_status` where member_id=\'{segment_3}\' order by status_date DESC limit 1\"}\n        <?php $status_owner_id=\'{status_id}\'; ?>\n    {/exp:query}\n\n	\n	{if segment_4==\'\'}\n	{exp:friends:status_form return=\"content/poststatus/{logged_in_member_id}/flag\" form_name=\"form1\"}\n	{if:else}\n	{exp:friends:status_form return=\"content/poststatus/{logged_in_member_id}/flag\" form_name=\"form2\"}\n	{/if}\n		<input type=\"hidden\" name=\"friends_status_private\" id=\"friends_status_private\" value=\"n\" />\n		<button id=\"cancel\" name=\"cancel\" value=\"Cancel\" class=\"cancel\">Cancel</button>\n		\n		{if segment_4==\'flag\'}\n		<textarea id=\"post\" name=\"friends_status\" placeholder=\"Show, tell, or ask.\" rows=\"8\">{exp:friends:status limit=\"1\" member_id=\"{logged_in_member_id}\"}{friends_status}{/exp:friends:status}</textarea>\n		{if:else}\n		<textarea id=\"post\" name=\"friends_status\" placeholder=\"Show, tell, or ask.\" rows=\"8\"></textarea>\n		{/if}\n\n		{if segment_4!=\'flag\'}\n		<p>\n			<input type=\"submit\" value=\"Add Media\" id=\"post\" class=\"post\" onclick=\"javascript:first_form()\"> \n			<input type=\"submit\" value=\"Post\" id=\"post\" class=\"post\" onclick=\"javascript:second_form()\">\n		</p>\n		{/if}\n		\n	{/exp:friends:status_form} \n	\n    {if segment_4==\'flag\'}\n    {exp:safecracker channel=\"media\" return=\"content/index\" dynamic=\"yes\" include_jquery=\"yes\"}\n		<input type=\"hidden\" name=\"title\" id=\"title\" value=\"Status Media Elements\" />\n		<input type=\"hidden\" name=\"entry_date\" value=\"{entry_date}\" />\n		<input type=\"hidden\" name=\"author_id\" value=\"{logged_in_member_id}\" />\n		<input type=\"hidden\" name=\"url_title\" id=\"url_title\" value=\"{url_title}\" />\n		<input type=\"hidden\" name=\"status_owner_id\" value=\"<?php echo $status_owner_id; ?>\" />	\n                            <div class=\"media\">\n                                <div class=\"post-button photo\" id=\"photo\">\n                                    <a href=\"#\" rel=\"ignore\" data-icon=\"',NULL,1365526484,1,'n',0,'','n','n','o',0);

/*!40000 ALTER TABLE `exp_templates` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_throttle
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_throttle`;

CREATE TABLE `exp_throttle` (
  `throttle_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL,
  `locked_out` char(1) NOT NULL DEFAULT 'n',
  PRIMARY KEY (`throttle_id`),
  KEY `ip_address` (`ip_address`),
  KEY `last_activity` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_upload_no_access
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_upload_no_access`;

CREATE TABLE `exp_upload_no_access` (
  `upload_id` int(6) unsigned NOT NULL,
  `upload_loc` varchar(3) NOT NULL,
  `member_group` smallint(4) unsigned NOT NULL,
  PRIMARY KEY (`upload_id`,`member_group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_upload_prefs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_upload_prefs`;

CREATE TABLE `exp_upload_prefs` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `name` varchar(50) NOT NULL,
  `server_path` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(100) NOT NULL,
  `allowed_types` varchar(3) NOT NULL DEFAULT 'img',
  `max_size` varchar(16) DEFAULT NULL,
  `max_height` varchar(6) DEFAULT NULL,
  `max_width` varchar(6) DEFAULT NULL,
  `properties` varchar(120) DEFAULT NULL,
  `pre_format` varchar(120) DEFAULT NULL,
  `post_format` varchar(120) DEFAULT NULL,
  `file_properties` varchar(120) DEFAULT NULL,
  `file_pre_format` varchar(120) DEFAULT NULL,
  `file_post_format` varchar(120) DEFAULT NULL,
  `cat_group` varchar(255) DEFAULT NULL,
  `batch_location` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_upload_prefs` WRITE;
/*!40000 ALTER TABLE `exp_upload_prefs` DISABLE KEYS */;

INSERT INTO `exp_upload_prefs` (`id`, `site_id`, `name`, `server_path`, `url`, `allowed_types`, `max_size`, `max_height`, `max_width`, `properties`, `pre_format`, `post_format`, `file_properties`, `file_pre_format`, `file_post_format`, `cat_group`, `batch_location`)
VALUES
	(1,1,'General Files','/home/social/public_html/images/general-files/','http://shanghai.nyu.edu/2017introductions/images/general-files/','all','','','','','','','','','','',NULL),
	(2,1,'Media Images','/Applications/MAMP/htdocs/introductions/images/media_images/','http://localhost:8888/introductions/images/media_images/','img','','','','','','','','','','',NULL),
	(3,1,'Media Videos','/Applications/MAMP/htdocs/introductions/images/media_videos/','http://localhost:8888/introductions/images/media_videos/','all','','','','','','','','','','',NULL),
	(4,1,'Media Audio','/Applications/MAMP/htdocs/introductions/images/media_audio/','http://localhost:8888/introductions/images/media_audio/','all','','','','','','','','','','',NULL);

/*!40000 ALTER TABLE `exp_upload_prefs` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_user_activation_group
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_user_activation_group`;

CREATE TABLE `exp_user_activation_group` (
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `member_id` (`member_id`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_user_authors
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_user_authors`;

CREATE TABLE `exp_user_authors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `entry_id` int(10) unsigned NOT NULL DEFAULT '0',
  `principal` char(1) NOT NULL DEFAULT 'n',
  `entry_date` int(10) NOT NULL DEFAULT '0',
  `hash` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `author_id` (`author_id`),
  KEY `entry_id` (`entry_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_user_cache
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_user_cache`;

CREATE TABLE `exp_user_cache` (
  `cache_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(150) NOT NULL DEFAULT '',
  `entry_date` int(10) NOT NULL DEFAULT '0',
  `data` text,
  PRIMARY KEY (`cache_id`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_user_category_posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_user_category_posts`;

CREATE TABLE `exp_user_category_posts` (
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cat_id` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `member_id` (`member_id`),
  KEY `cat_id` (`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_user_keys
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_user_keys`;

CREATE TABLE `exp_user_keys` (
  `key_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0',
  `date` int(10) NOT NULL DEFAULT '0',
  `email` varchar(150) NOT NULL DEFAULT '',
  `hash` varchar(8) NOT NULL DEFAULT '',
  PRIMARY KEY (`key_id`),
  KEY `email` (`email`),
  KEY `hash` (`hash`),
  KEY `author_id` (`author_id`),
  KEY `member_id` (`member_id`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_user_params
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_user_params`;

CREATE TABLE `exp_user_params` (
  `params_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hash` varchar(25) NOT NULL DEFAULT '',
  `entry_date` int(10) NOT NULL DEFAULT '0',
  `data` text,
  PRIMARY KEY (`params_id`),
  KEY `hash` (`hash`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_user_params` WRITE;
/*!40000 ALTER TABLE `exp_user_params` DISABLE KEYS */;

INSERT INTO `exp_user_params` (`params_id`, `hash`, `entry_date`, `data`)
VALUES
	(538,'tkvAukogsuxomJIAkHzGSTuQk',1365533676,'a:12:{s:9:\"member_id\";i:1;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:6:\"hmarin\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:2:\"no\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";s:15:\"override_return\";s:54:\"http://localhost:8888/introductions/index.php?/profile\";}'),
	(537,'PukMXubhUmRAcQnGZYevsReNd',1365533450,'a:12:{s:9:\"member_id\";i:1;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:6:\"hmarin\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:2:\"no\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";s:15:\"override_return\";s:54:\"http://localhost:8888/introductions/index.php?/profile\";}'),
	(536,'vQHrivCxqXbosbuDFcHZLlnOs',1365533303,'a:12:{s:9:\"member_id\";i:1;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:6:\"hmarin\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:2:\"no\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";s:15:\"override_return\";s:54:\"http://localhost:8888/introductions/index.php?/profile\";}'),
	(535,'qSQnsXdyTFCoEzhIJUHjvszoV',1365533069,'a:12:{s:9:\"member_id\";i:1;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:6:\"hmarin\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:2:\"no\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";s:15:\"override_return\";s:54:\"http://localhost:8888/introductions/index.php?/profile\";}'),
	(534,'yurEYWZKqkqZidphPpiaCQUZI',1365533057,'a:12:{s:9:\"member_id\";i:1;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:6:\"hmarin\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:2:\"no\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";s:15:\"override_return\";s:54:\"http://localhost:8888/introductions/index.php?/profile\";}'),
	(533,'vkHyXKnSxwfrYMBQKpzrwhvCY',1365531153,'a:12:{s:9:\"member_id\";i:1;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:6:\"hmarin\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:2:\"no\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";s:15:\"override_return\";s:54:\"http://localhost:8888/introductions/index.php?/profile\";}'),
	(532,'TsCLNNrCrvttGCtiLMnhqFuhm',1365531146,'a:12:{s:9:\"member_id\";i:1;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:6:\"hmarin\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:2:\"no\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";s:15:\"override_return\";s:54:\"http://localhost:8888/introductions/index.php?/profile\";}'),
	(531,'GyMzfOXHMAsuHnpGOzzBhodgE',1365531112,'a:12:{s:9:\"member_id\";i:1;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:6:\"hmarin\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:2:\"no\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";s:15:\"override_return\";s:54:\"http://localhost:8888/introductions/index.php?/profile\";}'),
	(530,'QLrgCllgdyQReHmNDEDCHMhII',1365531112,'a:12:{s:9:\"member_id\";i:1;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:6:\"hmarin\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:2:\"no\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";s:15:\"override_return\";s:54:\"http://localhost:8888/introductions/index.php?/profile\";}'),
	(529,'fopzBUjdZypJCCTtMMTHWPkwl',1365531109,'a:12:{s:9:\"member_id\";i:1;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:6:\"hmarin\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:2:\"no\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";s:15:\"override_return\";s:54:\"http://localhost:8888/introductions/index.php?/profile\";}'),
	(528,'AQpFYJRvHtXiBZVFMqPXqyHHM',1365531098,'a:12:{s:9:\"member_id\";i:1;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:6:\"hmarin\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:2:\"no\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";s:15:\"override_return\";s:54:\"http://localhost:8888/introductions/index.php?/profile\";}'),
	(527,'cYyKBHWGNzRGsHxexJYNFYJwx',1365531077,'a:12:{s:9:\"member_id\";i:1;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:6:\"hmarin\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:2:\"no\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";s:15:\"override_return\";s:54:\"http://localhost:8888/introductions/index.php?/profile\";}'),
	(526,'mnlJavMgeRGCKDPuUsepUCjrp',1365531055,'a:12:{s:9:\"member_id\";i:1;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:6:\"hmarin\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:2:\"no\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";s:15:\"override_return\";s:54:\"http://localhost:8888/introductions/index.php?/profile\";}'),
	(525,'fFveTFoACMOglqAsFzJnbTIrj',1365531052,'a:12:{s:9:\"member_id\";i:1;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:6:\"hmarin\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:2:\"no\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";s:15:\"override_return\";s:54:\"http://localhost:8888/introductions/index.php?/profile\";}'),
	(524,'HAMzZWOcQEeuzQmqmktcwhVuU',1365531045,'a:12:{s:9:\"member_id\";i:1;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:6:\"hmarin\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:2:\"no\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";s:15:\"override_return\";s:54:\"http://localhost:8888/introductions/index.php?/profile\";}'),
	(523,'UjAYAMHfFZBiwshXwJsEuiFSS',1365528993,'a:12:{s:9:\"member_id\";i:1;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:6:\"hmarin\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:2:\"no\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";s:15:\"override_return\";s:54:\"http://localhost:8888/introductions/index.php?/profile\";}'),
	(571,'kXBOKEuTqmtZVJtWnnmRoEcFr',1365536037,'a:12:{s:9:\"member_id\";i:1;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:6:\"hmarin\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:2:\"no\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";s:15:\"override_return\";s:54:\"http://localhost:8888/introductions/index.php?/profile\";}'),
	(522,'ptgNEUScnIjVuOHmWEoMbPHsP',1365528880,'a:12:{s:9:\"member_id\";i:1;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:6:\"hmarin\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:2:\"no\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";s:15:\"override_return\";s:54:\"http://localhost:8888/introductions/index.php?/profile\";}'),
	(568,'TgQBVoPmzCFILmvazhIUGSyfu',1365535965,'a:12:{s:9:\"member_id\";i:1;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:6:\"hmarin\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:2:\"no\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";s:15:\"override_return\";s:54:\"http://localhost:8888/introductions/index.php?/profile\";}'),
	(570,'JDDNfqdBuOcugolmGizbbliAM',1365536000,'a:12:{s:9:\"member_id\";i:1;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:6:\"hmarin\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:2:\"no\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";s:15:\"override_return\";s:54:\"http://localhost:8888/introductions/index.php?/profile\";}'),
	(567,'FhtlQhDImqwDGvZgymDDsIBjD',1365535944,'a:12:{s:9:\"member_id\";i:1;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:6:\"hmarin\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:2:\"no\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";s:15:\"override_return\";s:54:\"http://localhost:8888/introductions/index.php?/profile\";}'),
	(569,'sjDHjIcEXpFgjqXhmApfZUNXd',1365535984,'a:12:{s:9:\"member_id\";i:1;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:6:\"hmarin\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:2:\"no\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";s:15:\"override_return\";s:54:\"http://localhost:8888/introductions/index.php?/profile\";}'),
	(541,'OcBijaAWCFCIOMGImFbOhsmTc',1365534216,'a:12:{s:9:\"member_id\";i:1;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:6:\"hmarin\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:2:\"no\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";s:15:\"override_return\";s:54:\"http://localhost:8888/introductions/index.php?/profile\";}'),
	(540,'fnOTkwiefPDATFrydtXPBKVlX',1365534172,'a:12:{s:9:\"member_id\";i:1;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:6:\"hmarin\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:2:\"no\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";s:15:\"override_return\";s:54:\"http://localhost:8888/introductions/index.php?/profile\";}'),
	(539,'xDUNeYqDnkjVQTidFfALdSAFO',1365533687,'a:12:{s:9:\"member_id\";i:1;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:6:\"hmarin\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:2:\"no\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";s:15:\"override_return\";s:54:\"http://localhost:8888/introductions/index.php?/profile\";}'),
	(542,'GlhqAoZlvoUDEzBHAwxoUJKkb',1365534441,'a:12:{s:9:\"member_id\";i:1;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:6:\"hmarin\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:2:\"no\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";s:15:\"override_return\";s:54:\"http://localhost:8888/introductions/index.php?/profile\";}'),
	(543,'xHeHBWlhZvegIcungRkfLuZUM',1365534446,'a:12:{s:9:\"member_id\";i:1;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:6:\"hmarin\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:2:\"no\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";s:15:\"override_return\";s:54:\"http://localhost:8888/introductions/index.php?/profile\";}'),
	(544,'wdehvLNCOqYPLIHANDCmnUZHt',1365534466,'a:12:{s:9:\"member_id\";i:1;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:6:\"hmarin\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:2:\"no\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";s:15:\"override_return\";s:54:\"http://localhost:8888/introductions/index.php?/profile\";}'),
	(545,'iCwSNycQCAzRVwEsFenswqYvb',1365534562,'a:12:{s:9:\"member_id\";i:1;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:6:\"hmarin\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:2:\"no\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";s:15:\"override_return\";s:54:\"http://localhost:8888/introductions/index.php?/profile\";}'),
	(546,'WYREXxGaGNodBirPPpNlHIgVQ',1365534567,'a:12:{s:9:\"member_id\";i:1;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:6:\"hmarin\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:2:\"no\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";s:15:\"override_return\";s:54:\"http://localhost:8888/introductions/index.php?/profile\";}'),
	(547,'nHCshxayFjhFHhHyCOTKAJoPt',1365534582,'a:12:{s:9:\"member_id\";i:1;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:6:\"hmarin\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:2:\"no\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";s:15:\"override_return\";s:54:\"http://localhost:8888/introductions/index.php?/profile\";}'),
	(548,'BsRxMrMIFIdtbbYitenCwoFip',1365534621,'a:12:{s:9:\"member_id\";i:1;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:6:\"hmarin\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:2:\"no\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";s:15:\"override_return\";s:54:\"http://localhost:8888/introductions/index.php?/profile\";}'),
	(549,'jCoGBMadBslDrkNcUFfBpZHWh',1365534683,'a:12:{s:9:\"member_id\";i:1;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:6:\"hmarin\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:2:\"no\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";s:15:\"override_return\";s:54:\"http://localhost:8888/introductions/index.php?/profile\";}'),
	(550,'yYMrhsrJytHBEpgwAwTBtEFig',1365534805,'a:12:{s:9:\"member_id\";i:1;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:6:\"hmarin\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:2:\"no\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";s:15:\"override_return\";s:54:\"http://localhost:8888/introductions/index.php?/profile\";}'),
	(551,'HKEaKrfvInlgkcBFNtBhEINZu',1365534818,'a:12:{s:9:\"member_id\";i:1;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:6:\"hmarin\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:2:\"no\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";s:15:\"override_return\";s:54:\"http://localhost:8888/introductions/index.php?/profile\";}'),
	(552,'cAbSvjTWJExLLezxbBavDFKIf',1365534836,'a:12:{s:9:\"member_id\";i:1;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:6:\"hmarin\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:2:\"no\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";s:15:\"override_return\";s:54:\"http://localhost:8888/introductions/index.php?/profile\";}'),
	(553,'MvZfeAFANPHPIaCEVKNYvgTAR',1365534850,'a:12:{s:9:\"member_id\";i:1;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:6:\"hmarin\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:2:\"no\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";s:15:\"override_return\";s:54:\"http://localhost:8888/introductions/index.php?/profile\";}'),
	(554,'rDRcHPAXUHQRFNKiLFjYvXAkw',1365535286,'a:12:{s:9:\"member_id\";i:1;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:6:\"hmarin\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:2:\"no\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";s:15:\"override_return\";s:54:\"http://localhost:8888/introductions/index.php?/profile\";}'),
	(555,'CaRjbiYgchpDLDBFbMyJngYIL',1365535325,'a:12:{s:9:\"member_id\";i:1;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:6:\"hmarin\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:2:\"no\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";s:15:\"override_return\";s:54:\"http://localhost:8888/introductions/index.php?/profile\";}'),
	(556,'PLpQPqQStmOKUcHhklvmiPWPO',1365535525,'a:12:{s:9:\"member_id\";i:1;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:6:\"hmarin\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:2:\"no\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";s:15:\"override_return\";s:54:\"http://localhost:8888/introductions/index.php?/profile\";}'),
	(557,'diPzVIKiEFlGyaBNbSmpeufQP',1365535529,'a:12:{s:9:\"member_id\";i:1;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:6:\"hmarin\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:2:\"no\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";s:15:\"override_return\";s:54:\"http://localhost:8888/introductions/index.php?/profile\";}'),
	(558,'hopcJLvHUcAjRoeDbYVfLryvi',1365535551,'a:12:{s:9:\"member_id\";i:1;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:6:\"hmarin\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:2:\"no\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";s:15:\"override_return\";s:54:\"http://localhost:8888/introductions/index.php?/profile\";}'),
	(559,'xkHJAzhvrgmZRPuBFTKIyOweW',1365535568,'a:12:{s:9:\"member_id\";i:1;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:6:\"hmarin\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:2:\"no\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";s:15:\"override_return\";s:54:\"http://localhost:8888/introductions/index.php?/profile\";}'),
	(560,'UZgcgLQWXXWKuEqBKvYpiKdtw',1365535633,'a:12:{s:9:\"member_id\";i:1;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:6:\"hmarin\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:2:\"no\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";s:15:\"override_return\";s:54:\"http://localhost:8888/introductions/index.php?/profile\";}'),
	(561,'BOGTLJqQwOFXwcGMdVqmZMQNe',1365535659,'a:12:{s:9:\"member_id\";i:1;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:6:\"hmarin\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:2:\"no\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";s:15:\"override_return\";s:54:\"http://localhost:8888/introductions/index.php?/profile\";}'),
	(562,'yiVNrsISAuqymupCauyYYDpLY',1365535681,'a:12:{s:9:\"member_id\";i:1;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:6:\"hmarin\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:2:\"no\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";s:15:\"override_return\";s:54:\"http://localhost:8888/introductions/index.php?/profile\";}'),
	(563,'ZYoJSLkvobWisaLIyXKKfjPmD',1365535722,'a:12:{s:9:\"member_id\";i:1;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:6:\"hmarin\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:2:\"no\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";s:15:\"override_return\";s:54:\"http://localhost:8888/introductions/index.php?/profile\";}'),
	(564,'JxvjrYCjtBBMDlIvhqBqyVgdv',1365535739,'a:12:{s:9:\"member_id\";i:1;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:6:\"hmarin\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:2:\"no\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";s:15:\"override_return\";s:54:\"http://localhost:8888/introductions/index.php?/profile\";}'),
	(565,'YRSnoEmZPanrpJJRTXsLlQvfQ',1365535834,'a:12:{s:9:\"member_id\";i:1;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:6:\"hmarin\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:2:\"no\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";s:15:\"override_return\";s:54:\"http://localhost:8888/introductions/index.php?/profile\";}'),
	(566,'PnuBNVfdBNUaOsXXHXpJRJfOI',1365535862,'a:12:{s:9:\"member_id\";i:1;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:6:\"hmarin\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:2:\"no\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";s:15:\"override_return\";s:54:\"http://localhost:8888/introductions/index.php?/profile\";}');

/*!40000 ALTER TABLE `exp_user_params` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_user_preferences
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_user_preferences`;

CREATE TABLE `exp_user_preferences` (
  `preference_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `preference_name` varchar(50) NOT NULL DEFAULT '',
  `preference_value` text,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`preference_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_user_preferences` WRITE;
/*!40000 ALTER TABLE `exp_user_preferences` DISABLE KEYS */;

INSERT INTO `exp_user_preferences` (`preference_id`, `preference_name`, `preference_value`, `site_id`)
VALUES
	(51,'email_is_username','n',1),
	(52,'screen_name_override','screen_name',1),
	(53,'category_groups','',1),
	(54,'welcome_email_subject','Welcome Email',1),
	(55,'welcome_email_content','Hi {screen_name},\nWelcome to {site_name}\nGet in touch with your classmates soon on this network.\n\nNYU Shanghai',1),
	(56,'user_forgot_username_message','{screen_name},\n\nPer your request, we have emailed you your username for {site_name} located at {site_url}.\n\nUsername: {username}',1),
	(57,'member_update_admin_notification_template','A new update has been made!\n\n{changed}\n{name} {value} -  {update_date}\n{/changed} ',1),
	(58,'member_update_admin_notification_emails','herman@urgentcontent.com',1),
	(59,'key_expiration','7',1);

/*!40000 ALTER TABLE `exp_user_preferences` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_user_search
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_user_search`;

CREATE TABLE `exp_user_search` (
  `search_id` varchar(32) NOT NULL DEFAULT '',
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `ip_address` varchar(16) NOT NULL DEFAULT '',
  `search_date` int(10) unsigned NOT NULL DEFAULT '0',
  `total_results` int(8) unsigned NOT NULL DEFAULT '0',
  `keywords` varchar(200) NOT NULL DEFAULT '',
  `categories` text,
  `member_ids` text,
  `fields` text,
  `cfields` text,
  `query` text,
  PRIMARY KEY (`search_id`),
  KEY `member_id` (`member_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_user_welcome_email_list
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_user_welcome_email_list`;

CREATE TABLE `exp_user_welcome_email_list` (
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0',
  `email_sent` char(1) NOT NULL DEFAULT 'n',
  KEY `member_id` (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table nyu_sso_approved_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nyu_sso_approved_users`;

CREATE TABLE `nyu_sso_approved_users` (
  `netid` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `nyu_sso_approved_users` WRITE;
/*!40000 ALTER TABLE `nyu_sso_approved_users` DISABLE KEYS */;

INSERT INTO `nyu_sso_approved_users` (`netid`)
VALUES
	('bew216@nyu.edu'),
	('ap2469@nyu.edu'),
	('cm3449@nyu.edu'),
	('jm5538@nyu.edu'),
	('jw3422@nyu.edu'),
	('sg3794@nyu.edu'),
	('jc2777@nyu.edu'),
	('tst435@nyu.edu'),
	('herman.marin@ayuinc.com'),
	('coloradomarin@gmail.com');

/*!40000 ALTER TABLE `nyu_sso_approved_users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
