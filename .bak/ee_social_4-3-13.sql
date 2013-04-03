# ************************************************************
# Sequel Pro SQL dump
# Version 4004
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 119.81.24.11 (MySQL 5.1.67)
# Database: ee_social
# Generation Time: 2013-04-03 18:49:38 +0000
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
	(1,'Expressionengine_info_acc','1|5','addons_plugins|addons_fieldtypes|admin_system|tools_logs|content_files_modal|myaccount|content_files|tools_communicate|homepage|content_edit|addons_accessories|content_publish|design|content|tools_data|addons|addons_extensions|members|admin_content|addons_modules|tools_utilities|tools','1.0');

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
	(1,'Safecracker','submit_entry'),
	(2,'Safecracker','combo_loader'),
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
	(225,1365008838,'202.46.50.158','kept92'),
	(224,1365007680,'42.62.37.59','mans28'),
	(284,1365014293,'216.55.3.234','gave91'),
	(283,1365014293,'216.55.3.234','means76'),
	(282,1365014293,'216.55.3.234','each58'),
	(281,1365014293,'216.55.3.234','married54'),
	(280,1365014293,'216.55.3.234','toward77'),
	(279,1365014293,'216.55.3.234','again54'),
	(278,1365014293,'216.55.3.234','strong59'),
	(277,1365014293,'216.55.3.234','room97'),
	(276,1365014293,'216.55.3.234','friend64'),
	(275,1365014293,'216.55.3.234','students96'),
	(274,1365014282,'50.75.232.238','effect55'),
	(273,1365014282,'50.75.232.238','shot83'),
	(272,1365014282,'50.75.232.238','sat52'),
	(271,1365014282,'50.75.232.238','age78'),
	(270,1365014282,'50.75.232.238','best47'),
	(269,1365014282,'50.75.232.238','hours75'),
	(268,1365014282,'50.75.232.238','held27'),
	(267,1365014282,'50.75.232.238','million31'),
	(266,1365014282,'50.75.232.238','right77'),
	(265,1365014282,'50.75.232.238','firm82'),
	(264,1365014243,'216.55.3.234','foreign65'),
	(263,1365014243,'216.55.3.234','central28'),
	(262,1365014243,'216.55.3.234','state99'),
	(261,1365014243,'216.55.3.234','foreign55'),
	(260,1365014243,'216.55.3.234','fall45'),
	(259,1365014243,'216.55.3.234','top53'),
	(258,1365014243,'216.55.3.234','material36'),
	(226,1365008838,'202.46.50.158','size56'),
	(227,1365008838,'202.46.50.158','making18'),
	(228,1365008838,'202.46.50.158','brown42'),
	(229,1365008838,'202.46.50.158','personal81'),
	(230,1365008838,'202.46.50.158','piece49'),
	(231,1365008838,'202.46.50.158','line15'),
	(232,1365008838,'202.46.50.158','come66'),
	(233,1365008838,'202.46.50.158','because22'),
	(234,1365008838,'202.46.50.158','force98'),
	(235,1365008903,'119.63.193.132','federal38'),
	(236,1365008904,'119.63.193.132','waiting63'),
	(237,1365008904,'119.63.193.132','death59'),
	(238,1365008904,'119.63.193.132','latter47'),
	(239,1365008904,'119.63.193.132','daily25'),
	(240,1365008904,'119.63.193.132','find68'),
	(241,1365008904,'119.63.193.132','meaning16'),
	(242,1365008904,'119.63.193.132','income98'),
	(243,1365008904,'119.63.193.132','works29'),
	(244,1365008904,'119.63.193.132','history53'),
	(245,1365009453,'111.13.9.235','function75'),
	(246,1365009453,'111.13.9.235','sent68'),
	(247,1365009453,'111.13.9.235','stood37'),
	(248,1365009453,'111.13.9.235','who18'),
	(249,1365009453,'111.13.9.235','expected43'),
	(250,1365009453,'111.13.9.235','march51'),
	(251,1365009453,'111.13.9.235','live27'),
	(252,1365009453,'111.13.9.235','chief63'),
	(253,1365009453,'111.13.9.235','rather86'),
	(254,1365009453,'111.13.9.235','ones43'),
	(255,1365014243,'216.55.3.234','under17'),
	(256,1365014243,'216.55.3.234','size66'),
	(257,1365014243,'216.55.3.234','these98');

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
  PRIMARY KEY (`entry_id`),
  KEY `channel_id` (`channel_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_channel_data` WRITE;
/*!40000 ALTER TABLE `exp_channel_data` DISABLE KEYS */;

INSERT INTO `exp_channel_data` (`entry_id`, `site_id`, `channel_id`, `field_id_1`, `field_ft_1`, `field_id_2`, `field_ft_2`)
VALUES
	(1,1,1,'This is a test','none',14,'none'),
	(2,1,1,'A sample from other status','none',10,'none'),
	(3,1,1,'asdfa fasdf asdf ','none',0,'none'),
	(4,1,1,'dfsg sdfg sdfgsdfg','none',16,'none'),
	(5,1,1,'well that\'s pretty cool','none',16,'none'),
	(6,1,1,'checking','none',16,'none'),
	(7,1,1,'One more test','none',16,'none'),
	(8,1,1,'Hola Hola','none',15,'none');

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
	(1,1,1,'thepost','thepost','','text','','0',0,0,'channel',0,'title','desc',0,6,200,'n','ltr','n','n','none','n',1,'any','YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
	(2,1,1,'status_owner','status_owner','','text','','0',0,0,'channel',1,'title','desc',0,6,128,'n','ltr','n','n','none','n',2,'any','YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6NzoibnVtZXJpYyI7czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9');

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
	(5,1,1,7,0,NULL,'50.75.232.238','a wall post','a-wall-post4','open','y',0,0,0,0,'y','n',1365004111,'n','2013','04','03',0,0,20130403104831,0,0),
	(6,1,1,1,0,NULL,'50.75.232.238','a wall post','a-wall-post5','open','y',0,0,0,0,'y','n',1365004727,'n','2013','04','03',0,0,20130403105847,0,0),
	(7,1,1,1,0,NULL,'216.55.3.234','a wall post','a-wall-post6','open','y',0,0,0,0,'y','n',1365004894,'n','2013','04','03',0,0,20130403110134,0,0),
	(8,1,1,1,0,NULL,'50.75.232.238','a wall post','a-wall-post7','open','y',0,0,0,0,'y','n',1365008158,'n','2013','04','03',0,0,20130403115558,0,0);

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
	(1,1,'wall_posts','Wall Posts','https://shanghai.nyu.edu/2017introductions/',NULL,'en',8,0,1365008158,0,'',1,'open',1,NULL,NULL,'y','y',NULL,'all','y','n','n',NULL,NULL,'y','n','n','n',5000,0,'y','xhtml','safe','n','y','n','n',NULL,0,NULL,NULL,'y',NULL,'n',10,'','',0);

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
	(132,1,7,'bwhitton','50.75.232.238',1365014344,'Logged in');

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
	(1,'Safecracker_ext','form_declaration_modify_data','form_declaration_modify_data','a:4:{s:15:\"override_status\";a:1:{i:1;a:1:{i:1;s:4:\"open\";}}s:12:\"allow_guests\";a:1:{i:1;a:0:{}}s:20:\"logged_out_member_id\";a:1:{i:1;a:0:{}}s:15:\"require_captcha\";a:1:{i:1;a:0:{}}}',10,'2.1','y'),
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
	(23,'Nyu_sso_ext','check_login','member_member_login_start','s:0:\"\";',1,'1.0','y');

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
	(6,2,'xhtml');

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
	(1,1,'Wall Posts');

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
	(10,'rte','1.0','YTowOnt9','n');

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
	(2,1,'img_1966_poster.png',1,'/home/social/public_html/images/general-files/img_1966_poster.png','image/png','img_1966_poster.png',101939,NULL,NULL,NULL,1,1363966552,1,1363966552,'476 270');

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
	(16,8,1,1,'is looking at the .htaccess',1365002497,'y');

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
	(1,1,'hmarin','Herman Marin','d7e0d0243da7bda153a9924abcf493c32866020e0632522554e7c0b9709a4a2075d2877e4d8b19c44f6317a9a0e2d6120e1cc0e509bbd372de7c7ca70833c307','#!YL{%c?/Wk&\'s.IR_*htTN+?c6j(]SCesh;I%k-7y#3osE`vvQsI\";|SRNK~5~3L~/i3ftgx>#090jVIcYhE*`#tUzt\\Y7n=Zz$1:L1dv(*QnvKk7\"lN>!A4hUH3KU]','a72c5557226218689755f462fafd64cecef7a631','d45f4137b1a361faa7646dee585c2defe5037f9b',NULL,'herman@urgentcontent.com',NULL,'Guayaquil, Ecuador','Paris, France','Music, futbol',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Aqui va la informaasd.f,m,.m,dsafcion de mi perfil',NULL,NULL,NULL,NULL,'photo_1.jpg',400,400,NULL,NULL,NULL,NULL,0,'y',0,0,'160.39.4.177',1363193204,1364942645,1365014293,7,0,0,0,'y','y','y','y','y',5,2,0,'n',0,0,0,1365008159,0,0,0,'n','y','y','y','y','y','n','y','y','english','UM5','n','n','us',NULL,NULL,NULL,NULL,'20',NULL,'18','',NULL,'n',0,'y',0,126),
	(3,5,'coloradomarin','El Colorado','4d987d49d8c04a13e1d1234cda6c457652e65837f4e00708a5cdc90949009d3d535d5b316d512a7070caf67187a84be4d202949af35fa6821b49faf57e43076b','tTo0(]ddZDJRB68{~.\"\\)x}X]@Zg+anvyEUtfw*wsyxtA\\T?!\"EsOc\"I4Jm@7%F>[WdA#Ho03Cao\\dW<h5;Q)z8,v(?cM,Lcd5+\\YUFW;7X!%AWJ84UF;Pj&_Fb*vSF.','c533f2f1e4a86538ffdfb46fd0717261983d2022','52d503a9649139523ee167ecb5125871e43aaffb','','coloradomarin@gmail.com','','Lima, Peru','New York','traveling, futbol, music',0,0,0,'','','','','','',NULL,NULL,NULL,'photo_3.jpg',400,400,NULL,NULL,NULL,NULL,0,'y',0,0,'160.39.4.177',1363208756,1364740661,1364769281,0,0,0,0,'y','y','y','y','y',5,2,0,'n',0,0,0,0,0,0,0,'n','y','y','y','y','y','n','y','y','','','n','n','',NULL,NULL,NULL,NULL,'20',NULL,'18',NULL,NULL,'n',0,'y',0,396),
	(4,5,'hermanmarin','Hermancinto','39b48bccf01bcf96484a7174f5b624a31d4669435fa1c30adbe0d12727befc65f0171bd10190b35f9c2aae057598450bd05010df65ee10a924d924593a0233b1','l6A<Vyit\\PYvhVCNHKgL^%8ITle+#|vTGxmUqLtN!^aLs\'r#p]!QV*L0zDm,ODg$S%R(BZh>%s9~i8hQNU9<kTjJgFlY~;^!VZzLS\'<<H#^#^R?wKmD-s!d#H0;roe\"Q','29983a1e1a90b7eae0b36e984ede7822bc660cc7','947a11911e23fc51fd0a07a7035a17f4cfe84829','','herman.marin@progresoec.org','','Ecuador','Portoviejo, Ecuador','Music',0,0,0,'','','','','','',NULL,NULL,NULL,'photo_4.jpg',100,100,NULL,NULL,NULL,NULL,0,'y',0,0,'160.39.4.177',1363212237,1363962668,1364680861,0,0,0,0,'y','y','y','y','y',0,0,0,'n',0,0,0,0,0,0,0,'n','y','y','y','y','y','n','y','y','','','n','n','',NULL,NULL,NULL,NULL,'20',NULL,'18',NULL,NULL,'n',0,'y',0,311),
	(5,5,'Skyler','Skyler Gross','e26672ce7cd1dc5fc4489f6294d44fa510aa5cb2a0d660c25ac53e8d3324171bfc7d1b3fe39a4f8445794ce495e96a75dd62a99c267873bb33871356c24345bc','asLJc&;.1+#wW)`[vl(f_}^4kMjfC+]J<k%y\'\\+rJ#>bU`.NYo/@K2|@VDR6R(Fto=&N:>wR5>Ugg\'i\'TEj$\'w>kM`^ZSh:u}))fhWe33=ePt^\\K.DLzh)uFaAI@Ik-H','5cf6fe983aa4a44b332b13f2e72292842424cba1',NULL,'','Skyler@urgentcontent.com','','','','',0,0,0,'','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'50.75.232.238',1363304149,0,0,0,0,0,0,'y','y','y','y','y',0,0,0,'n',0,0,0,0,0,0,0,'n','y','y','y','y','y','n','y','y','','','n','n','',NULL,NULL,NULL,NULL,'20',NULL,'18',NULL,NULL,'n',0,'y',0,62),
	(6,5,'Ayuuser','Herman Ayu','d9ee558c351a6047a1caccb975926a81ad715e63f198aef5d952ad7bbc58eeb09b5f5b45b093132c482b16a641e0c0b265bcbda5ae787bfaeeab7d3e58fe20c4','SX=J%PenpA^HzwVnSd1n}!L<4=Pb,kjV-1NiwmV6U;]+%:;5(9!X;$}07:-O;VgU[!PO(5rBc\\A*i--&#{uk\\vmCXjd(MABk(JUlj2)E=~2)OKsH%=LaE&UQY\'*hh79n','264f8cf3f4e187e53abe070a49c78ba6e79ee5b8','dee5984bce73c8ebfd84792fe1c934ddb20e83c4','','herman.marin@ayuinc.com','','Quito, Ecuador','London, UK','Travel, sky, sing',0,0,0,'','','','','','',NULL,NULL,NULL,'photo_6.jpg',598,800,NULL,NULL,NULL,NULL,0,'y',0,0,'187.191.13.19',1363625828,1364766236,1364829328,0,0,0,0,'y','y','y','y','y',4,2,0,'n',0,0,0,0,0,0,0,'n','y','y','y','y','y','n','y','y','','','n','n','',NULL,NULL,NULL,NULL,'20',NULL,'18',NULL,NULL,'n',0,'y',0,300),
	(7,1,'bwhitton','bwhitton','b877fde611855094149a427dc9125600f42ab29e4536c30c3e6c76dc7bcc9f383014e29202889f7921ed2355e396bbf21c7b074d4ea2c84d3617330cbd27a551','(!+I|FCT(/O5m5Y@Pp#3nn/f2&Dq0t;*3<(;00U5*{!L0D5E\"lF-zKV!u&5<xA8HYdcM/8`oWvVn-aj)pbGh%bz\\UCOD|p_6[`|wER6%q2q4l1k<#.#r9>AEF~}XWxzG','8ceb78642b625d5a94dd54105997c01c92e50332','0ae0ee85a8d7956031715d7269aeb5cbcf76ff27',NULL,'brian@urgentcontent.com','','','','',NULL,NULL,NULL,'','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'187.191.13.19',1363628944,1365004653,1365014906,1,0,0,0,'y','y','y','y','y',0,0,0,'n',0,0,0,1365004172,0,0,0,'n','y','y','y','y','y','n','y','y','english','UM5','n','n','us',NULL,NULL,NULL,NULL,'20',NULL,'18',NULL,NULL,'n',0,'y',0,70),
	(8,1,'chris.muro','chris.muro','ec85316253ef44a2a2271a58d99b939a168d83dc31ceb79a759542ed9fd019ef018e16898a3d342f4e9c628c81bc68060d352a21cc585572535e45caea7e98f0','IksU4OnQg:JsH42F#Ksuk+po8dt$23\'DF<:-/t2;b%^u\'}v*TX[-C;p2081=;OlEHMZ6BqOSnMPusA).g0%)t_IP5mO:OMe{SNB^Dddwpyb)=#-!#QZ&+8Bav]LrSTzG','46e601e27e8afd0dc2e1c1d011ace7fd9a084cf5','88879deffad87101e009678e89c8995846debc02',NULL,'christopher@muro.org','','','','',NULL,NULL,NULL,'','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'189.190.203.22',1363968789,1364961400,1365002907,0,0,0,0,'y','y','y','y','y',0,0,0,'n',0,0,0,0,0,0,0,'n','y','y','y','y','y','n','y','y','english','UM5','n','n','us',NULL,NULL,NULL,NULL,'20',NULL,'18',NULL,NULL,'n',0,'y',0,244),
	(23,5,'Anonymus','Anonymus','d448ece531e5b714875c829ac298504246cf11f9c5cfc77c12ce1ca5cc4399b4bf79f5215d04bcae33a8c94098b4919a67bbf5d648613d0dd625b463108e6319','0y&O],Lws8?2;?EjuhSN(\'Ry=M3d#4ils%W{b\\9^w&GH&k-\'KL*))hj|IfHAW/KwJ}Ph^:NwLL0[e-\\-D|$]^V(MN`(%Lx~F54\'<C1&P1rva2PsCKyp|8=}\\3};ACqQS','34156efbcd8dedfca0ab3fd57746693c48659078','cba740cbc27c7d6373d9853f3961bef55ac5b214',NULL,'Anonymus@shanghai.nyu.edu','','','','',NULL,NULL,NULL,'','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'160.39.4.177',1364937348,0,0,0,0,0,0,'y','y','y','y','y',0,0,0,'n',0,0,0,0,0,0,0,'n','y','y','y','y','y','y','y','y','english','UM5','n','n','us',NULL,NULL,NULL,NULL,'20',NULL,'18',NULL,NULL,'n',0,'y',0,0),
	(10,5,'testuser1','Test User 1','84d83eaca6c8f0d428f66950353866dc6b78092c','<m?L|Vvz%HWQ8t~VRG:ZWf{XBfXrg5WVj./}FgadJ?NS*x|9u&2Ae^n2Fet/Sa?=~q4YIFg=^eM>\'4N\"Mpa!)4i.Q4@a$(~zyJ)kE8G4H!3dk\"$j?/lg]7ReX*!/;Atf','a9aaea443c0d81c082ddfabd8651ed8ed4cd9dee','8437e018900eabc23b7d0bb65927805f55507ac5',NULL,'testuser1@nyu.edu','','','','',NULL,NULL,NULL,'','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'71.237.169.81',1364783121,1364785162,1364789882,0,0,0,0,'y','y','y','y','y',0,0,0,'n',0,0,0,0,0,0,0,'n','y','y','y','y','y','y','y','y','english','UM5','n','n','us',NULL,NULL,NULL,NULL,'20',NULL,'18',NULL,NULL,'n',0,'y',0,3),
	(15,5,'testuser3','testuser3','2703688caaee7ea31f4bf57c8f1de8e5eb74b3007583232a530d7cbd2cd88a80a0a75bf855f0bac0f492779a7feebbe92b80e7a8a095339277524980a9ba49a3','9%Al`B2biwN``7\'#Yv_U[VE*:$a0T%_0Q2dU>zz(xc1`FnA0!#4O.scDDun#2$gM)!CwnG9<W|[hk=Pl+i0l&yr)if6#H-o_2A:;i)-?4e++GV~&C8tfv%z@cGfPG1ff','e36fb2dfb525527b2a0c0997dcb5f0cd93620bde','f724542c663afbc6905036df1145f49f6329fb3b',NULL,'testuser3@nyu.edu',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'0.0.0.0',1364791181,1364791226,1364850889,0,0,0,0,'y','y','y','y','y',0,0,0,'n',0,0,0,0,0,0,0,'n','y','y','y','y','y','y','y','y','english','UM5','n','n','eu',NULL,NULL,NULL,NULL,'20',NULL,'18',NULL,NULL,'n',0,'y',0,2),
	(14,5,'testuser2','testuser2','08cfe7a35ef709c6183648a1903db7fe152c5f1987a258bee007de1f17a0ced9776ce90208f1c33f7e42851805c891be08b3dda84dccb7c74fc620846821e0c6','pRIP94I\'YVyywcN%n\"-#tTYG,lIKt/XL/CGutB42:fD2&.8BdF6jAJmB:iweKm;FdQzX!{-zz[4lFH7yCi@R@Hz!GIKVo4ZYFeC3LSqsYTq&*Z-`_CxagIqSNUd-xL`K','fc8261be0135343a7db7c57b68a5cd7916574cbd','52976a3871082036dc1dbb43f2934fa6bd16f560',NULL,'testuser2@nyu.edu',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'0.0.0.0',1364790843,1364790992,1364850795,0,0,0,0,'y','y','y','y','y',0,0,0,'n',0,0,0,0,0,0,0,'n','y','y','y','y','y','y','y','y','english','UM5','n','n','eu',NULL,NULL,NULL,NULL,'20',NULL,'18',NULL,NULL,'n',0,'y',0,1),
	(16,5,'bew216','bew216','cea514da5621804ca83fe1692d22ac25386cad08','}SE2Efmup`srvh[JCUPJYMa-]xOw/cUQ%L^*gOk:;PMt.g2H)AQ\"[C.Wx1B,yl^4\'bboQwv<Q4+aX>~&w:.\\gIWy@cR]wv6Dgi>;HemQ!QCGHQRM+x=La\\v?`9M|$R8$','707435d4aabec0d1ba416fb0daa94161b64e74e2','22a4426fafd149d13c7838fb0263a3c0a634dc9b',NULL,'bew216@nyu.edu',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'0.0.0.0',1364850349,1364850528,1364850528,0,0,0,0,'y','y','y','y','y',0,0,0,'n',0,0,0,0,0,0,0,'n','y','y','y','y','y','y','y','y','english','UM5','n','n','eu',NULL,NULL,NULL,NULL,'20',NULL,'18',NULL,NULL,'n',0,'y',0,0),
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

LOCK TABLES `exp_module_member_groups` WRITE;
/*!40000 ALTER TABLE `exp_module_member_groups` DISABLE KEYS */;

INSERT INTO `exp_module_member_groups` (`group_id`, `module_id`)
VALUES
	(5,4);

/*!40000 ALTER TABLE `exp_module_member_groups` ENABLE KEYS */;
UNLOCK TABLES;


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
	(4,'Safecracker','2.1','y','n'),
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
	(10509,1,1,'n','Herman Marin','216.55.3.234',1365014381,''),
	(10523,1,0,'n','','216.55.3.234',1365014293,''),
	(10525,1,1,'n','Herman Marin','216.55.3.234',1365014381,''),
	(10526,1,1,'n','Herman Marin','50.75.232.238',1365014447,''),
	(10519,1,1,'n','Herman Marin','216.55.3.234',1365014381,''),
	(10527,1,0,'n','','50.75.232.238',1365014289,''),
	(10524,1,0,'n','','216.55.3.234',1365014293,'');

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
	(23038,1365009538,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','b4d8a6157243b7bc7ff665f88c771d22ca8a09db'),
	(23039,1365009538,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','cdd79ee1520ad5119526cee65208410651856c98'),
	(23040,1365009538,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','3829ad24da0a2c536deb76703496e2b9c9fd4d73'),
	(23041,1365009538,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','02b52afaf0099ddd467967bd94ba4f25225aa4ca'),
	(23042,1365009538,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','3a6eb1aeb322ad0761526949e4a12be8bb36bed2'),
	(23043,1365009538,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','0cc25180731687ddec3acebcacc6f188f6e6eea7'),
	(23044,1365009538,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','2f51c3dfc874563cfbaa6c4f607df9baf6398c40'),
	(23045,1365009538,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','0ea9ca559fb22e9639e164a16b9c15c4d369416c'),
	(23046,1365009538,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','c579e9f8b89a818ef5f82acef05b9dc5a50c7cc4'),
	(23047,1365009538,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','540f1758b24611c52438c9e9671fab9461020d43'),
	(23048,1365009538,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','5a0ea0df5ec7cc7a0d9fb7f0649ad0807800ee9a'),
	(23049,1365009538,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','7f88b22c9ed4076eb0b98af2910930bc5d034f4c'),
	(23050,1365009538,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','fb081f4e039b77f819af30aadeab23d108551751'),
	(23051,1365009538,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','f6c27edabfd6777b6c84721e4de84022fc0dba4d'),
	(23052,1365009538,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','edc8f0b275bae5584ad21a231d365c564651c22d'),
	(23053,1365009538,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','7770e91a5296d13dad2a92c513fcc0c104b898be'),
	(23054,1365009538,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','8a9a6f71344d247091b0317cfbe6263923deb403'),
	(23055,1365009538,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','1df044327df2e47dff40aa1531cd4e8e034088a7'),
	(23056,1365009538,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','2e3e900cde7444054c9ffd13be33e34a98cf76bc'),
	(23057,1365009538,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','07f0a2f2f393572885f025fc7f5eda5e9a3b93b8'),
	(23058,1365009663,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','22fb56309eb086773661a29a5a46a12f56e5504f'),
	(23059,1365009663,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','957373b6a70b44f361c2b5e376615ac8d5378f47'),
	(23060,1365009663,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','536be54c2228908abfc3cb31aa3f5114c27d7b74'),
	(23061,1365009663,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','0138739ce2eef6711d2aea567fcf5bc503129aaf'),
	(23062,1365009663,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','d3e1802d8995efabed2d070aae724aa77018742d'),
	(23063,1365009663,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','45c821b1e6cd508e729c8f5c9cbaa0501b1ad9c4'),
	(23064,1365009663,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','71b3458d70bbd93c9de04dd7132414a4664b803c'),
	(23065,1365009663,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','23bd70684d50f01e76ff8a952cb4581ce51c2db5'),
	(23066,1365009663,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','c7f0b9fec83b3edce529dac761a28cee0275fe3e'),
	(23067,1365009663,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','d6559d4fdb3a4c5ab81c081e72de4a18865f4870'),
	(23068,1365009663,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','688eb0dbc70aa6a1bdedd9b26c979ae49fec21dc'),
	(23069,1365009663,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','b316b60468ca7124a44add7a4eaa278170f85575'),
	(23070,1365009663,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','ad1a0646b02d6ff6ed0e382af99251c4f0c60880'),
	(23071,1365009663,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','7db48a384762192130740aea88eaf13f3ff1f029'),
	(23072,1365009663,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','4b1b0cc5a893ec4edf558159cd909506e8207484'),
	(23073,1365009663,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','3380b90b3a832d137667b3c7f0f2596e48d5ecfc'),
	(23074,1365009663,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','2b0a70285af399d070cf61a785d4299c682da6d3'),
	(23075,1365009663,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','99677e03305c701783a58bcdca354e077e6f66f0'),
	(23076,1365009663,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','021c384f32e242710f2f0cb2e827433fef7688c9'),
	(23077,1365009663,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','333df2c9a9da5c19d30be99d505664b8f30ce32b'),
	(23078,1365009720,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','cb03cf8f0d1f51bcdc25a8d90a6c1618362e6195'),
	(23079,1365009720,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','7325ca8f9f690167bbaff341ef6f2b22be085883'),
	(23080,1365009720,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','6bc7489be81d52d97c67aebc3ff47459d3bdc34f'),
	(23081,1365009720,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','620575bf177f6b3fa94cb8954d7f580c8525e9c1'),
	(23082,1365009720,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','ed700cfccb8a66390ca5a805676374be63298c11'),
	(23083,1365009720,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','c2adb80b2de35b0459c63e767a04c3c2ea14186e'),
	(23084,1365009720,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','01abaae61ea963dc106940dc65542642251f859f'),
	(23085,1365009720,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','17ef2e52ceca501c1658727c501f5594af535752'),
	(23086,1365009720,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','3d49fc7e74f5f7afa1e5dbe2bf3a766b224be40c'),
	(23087,1365009720,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','d9f2c3c0e390344e44de4548a5a1df62c2882b79'),
	(23088,1365009720,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','9ece7b184b253cacdaa0db2f6187d9a4266ddfd5'),
	(23089,1365009720,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','e3cdce0a8aeb781707ff1720453d591ecbe1175a'),
	(23090,1365009720,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','29465160ecfed86af82a46b09ff2d43c53e753a4'),
	(23091,1365009720,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','bf633bbf68be76e646feef1e28976424d3660e15'),
	(23092,1365009720,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','b1b2ae129327756e9d645f375b6e50ac6b41b3a3'),
	(23093,1365009720,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','ecb782f5accea2f62978f9307cdc388d44dd6211'),
	(23094,1365009720,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','bcdd31fc9668af739202e63022bc679dae1fb054'),
	(23095,1365009720,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','7c4aa211bdbdaa9a57d49de6d6d4c89a461cbcc3'),
	(23096,1365009720,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','b21a040fa5ea35a579b4f1ded84add9af25bcaf2'),
	(23097,1365009720,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','124effe4abf5baa5aa24f2f8d9892eb6ac52d9ed'),
	(23098,1365009780,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','82e9d10f423556463c5515851ddd214417699496'),
	(23099,1365009780,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','4378ab82d25123b5ffa6bb7ec206be5b6021c085'),
	(23100,1365009780,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','cf6c625568885de1195ba976f9476d3abcf1a1e1'),
	(23101,1365009780,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','b251276739378882d82e20ab87941b1e3bba7de6'),
	(23102,1365009780,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','26d45c0fc4b59aa512fd7a3920d5c3e164e63287'),
	(23103,1365009780,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','fc30b524f0648e639985e565e9b5297060daa432'),
	(23104,1365009780,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','db8ef84bf83b577564f2ebad90ad61105281a916'),
	(23105,1365009780,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','f7bf0f5bae743a4705983036d25006ec46e9ea74'),
	(23106,1365009780,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','7db789bbfa74e1b1f5a3ba78a3ab1c117c10668f'),
	(23107,1365009780,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','d7047faf134e4c08cf4efe438f69daa0be4750dc'),
	(23108,1365009864,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','08ca6da32f523307a7c890dc59464210b4182ece'),
	(23109,1365009864,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','cbf4c817c92a322f0a642776c8a79d618385de07'),
	(23110,1365009864,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','9a5a1770d0210794b169de8548022707afd93504'),
	(23111,1365009864,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','80bc43a189a8d99ea6d163df639fbda546a1ca8b'),
	(23112,1365009864,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','e28967ce218ee22b8d95687efeb502d30ca73596'),
	(23113,1365009864,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','110bd19d44266dea2a63bb300ae87e7655d2ca0c'),
	(23114,1365009864,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','cefa8dd5637bd882116c75bf106d041c6a8fe4f0'),
	(23115,1365009864,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','701b3782ddb09e0b2c669f3bace9b62f8534b8ee'),
	(23116,1365009864,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','34ea984764d4ce84ba94edb1a32bd5d752d95ed8'),
	(23117,1365009864,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','7b2318c774821d2b0f6a505a5ad431fb45a4969f'),
	(23118,1365009932,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','b1fbe7fabbea6a6ed47cc247917046393bb5882f'),
	(23119,1365009932,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','d1c6db281558db05811b6ae13c58fd51d74007a0'),
	(23120,1365009932,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','b31162fa4d79e52d9887bf6208d9c08a731709e8'),
	(23121,1365009932,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','73a6ed0f4a6a3c6c3836994d57c98c958c9b3cd9'),
	(23122,1365009932,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','93477709fb124518bd21a809785703c685ff9c0b'),
	(23123,1365009932,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','1c1c3d8a9c1b64217a7016147d6104635e91b9ff'),
	(23124,1365009932,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','15915a707edd30d35841de377608b205cf1d0470'),
	(23125,1365009932,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','34107985c6685ffa479c2408f5e2e324aa96ef87'),
	(23126,1365009932,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','919ed3efa7d606d8774d5abb248a3040db6ad959'),
	(23127,1365009932,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','37c4de22729ec73266a9a6592fc469e23cee825b'),
	(23128,1365010113,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','3ff859080a0f89856c63b33cbc239d5c6860bebd'),
	(23129,1365010113,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','1377c301fcaf9c89776713581638a5d1cfa21f64'),
	(23130,1365010113,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','bc18a2c758e3192be6e6a78ee3dd1685ce371006'),
	(23131,1365010113,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','8f3bcc5879868d4216ab566ad5b9eafa50badb87'),
	(23132,1365010113,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','037d80b49ee051ccec40f5bd7f87ee003db36dc1'),
	(23133,1365010113,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','a813c798ce5fba9430f26c1233dd81e6a8afede2'),
	(23134,1365010113,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','4d50aed7a794d073d4719b08f05039edfdd4bbb2'),
	(23135,1365010113,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','5ccb2ee16908eeb45bc2e2786eb21e00e691cdfa'),
	(23136,1365010113,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','3f7944f09125ba20cf1d00785ba5fe1269b7c94c'),
	(23137,1365010113,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','cad8f1ca7ef5288e79dd936eb8ea18a8d05066d6'),
	(23138,1365010205,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','e2673fbdf3f0d7a70f2f100f04b3565d82316fbb'),
	(23139,1365010205,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','5add6f53d4b0d7208d3b4385d45498578b3ca879'),
	(23140,1365010205,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','9cd5e04ffc2225cf35377dadeb82d0aa5ffef43b'),
	(23141,1365010205,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','ab8a2d96613630e5a060c5eac530caefaba757f9'),
	(23142,1365010205,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','6fded0f3c68aa2a901710e0532e5d4328897dbfd'),
	(23143,1365010205,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','d56ce60e9fa3abdbec26988bf56262e3deb92de4'),
	(23144,1365010205,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','297861893b43d8c2d28d81828029893846368b1c'),
	(23145,1365010205,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','8a4361fb0eae1728181a70ca3cf9682b9909d1d5'),
	(23146,1365010205,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','d03a990c9be1c10b91eff56434820b57c3cbb040'),
	(23147,1365010205,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','841756775a59fb7912a4e990c87ae8ac5e1903f6'),
	(23148,1365010217,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','52a7205463a477f05246480cf6e5b77a654dc948'),
	(23149,1365010217,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','a6b64a08dfd90e89151642716c8548fb266210e0'),
	(23150,1365010217,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','db38f15b3f3467e41838dd3b421c129ff3dea96d'),
	(23151,1365010217,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','941035b2c5d4927e285cd8ea07388a4ca0398b6c'),
	(23152,1365010217,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','f46c3a5a7418b40dedda7ba96ee70bf272611336'),
	(23153,1365010217,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','e9d9a3b20a0ec482c499fd8f007a3b1119f5e4a8'),
	(23154,1365010217,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','a67a6f49fa088f66856f590d7b1a0fa62a576b2b'),
	(23155,1365010217,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','4d3bedfbb772dffc2cb4490c47f2fa79c9f220a4'),
	(23156,1365010217,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','5e1ffa0dc7ed1ee9e955ada813a9199cfcc0b349'),
	(23157,1365010217,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','f0f0f36c1c5e4f28b28b1fc0ac56e98c7b3ee5e6'),
	(23158,1365010218,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','042648fcb6d6e19adb9e96a90c68d607c862562f'),
	(23159,1365010218,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','526b2463192e8e68143caa8069429681d2d0957a'),
	(23160,1365010218,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','15eef1f1685c2bc943c6f4d8546b372ab4e416ef'),
	(23161,1365010218,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','4ea0280c966148a03a395ec34db7c64c1d65cb1a'),
	(23162,1365010218,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','362a6d267c7e99b4a65b46d8f72529f40ca1ce38'),
	(23163,1365010218,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','89d93900749882c6687e132fb76286e3ca5b2143'),
	(23164,1365010218,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','91dda82894fedfd390b34fd946ad14a94311b976'),
	(23165,1365010218,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','d6c79e7a3e3f02ec50cd4df201b9f76a60e30f6f'),
	(23166,1365010218,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','df7cbc3ebfe936b57c5a0b1b98ca2c770ac8a10f'),
	(23167,1365010218,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','7487fd81b5ba5baf08a44996d1814d8918ba2fc6'),
	(23168,1365010254,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','eb64481daacfcddd5595dac09599a5725f5609d0'),
	(23169,1365010254,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','0b9ea5f6ee60ac5753839a328880895d378a4124'),
	(23170,1365010254,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','8f313dfbd215c8fca8d48583dd76171646bb2884'),
	(23171,1365010254,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','3975b3108fcb28da542a561f25c6059643a2e4be'),
	(23172,1365010254,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','ef070ee1a355fa41580efe9b272adac006b71d43'),
	(23173,1365010254,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','c7041c290532a5ff7459943ee2cee1b469d99504'),
	(23174,1365010254,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','d28c2fc16b7f774adc8f0f738e0680557d096032'),
	(23175,1365010254,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','e6c19c7b56a54ec93790659a2c6bc8e0d0fc5e31'),
	(23176,1365010254,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','dafee8f9551f5211101b2afcabcb1729c374ea6c'),
	(23177,1365010254,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','76695e716390f2dc22d61b7e2e8749ba46c185b2'),
	(23178,1365010304,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','43b22e73aa4ce05e6472fb87633e4398e5d6fdad'),
	(23179,1365010304,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','ec9ea10d5bdbf146ada35a72f22faa8e1e78075e'),
	(23180,1365010304,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','f899984d7ac4dac0719caf79bcca0915e8f476cf'),
	(23181,1365010304,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','2b23292dbf8b57f9139ff5f292b64f0197054015'),
	(23182,1365010304,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','a620b0de236d0cdefc4a8e6ecf2d905302b7c943'),
	(23183,1365010304,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','c1143af59c2df6a4766b14cbf7820aabd17fae5a'),
	(23184,1365010304,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','977360fbfbc3e121712e1dfc0ffc30d03f5b1cec'),
	(23185,1365010304,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','ee40d66ad5e6ddc4daad44e7348fe4993662540d'),
	(23186,1365010304,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','62fcfb3c8b343bbb08191d146e8ff76c48cf0510'),
	(23187,1365010304,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','a5420245a506529b49f49829701e6307da6879bb'),
	(23188,1365010329,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','5d9296c96903c87f88bda4c6e35c8b3431b381ac'),
	(23189,1365010329,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','6b51067e9a7a9e4132e8262ecad71a9807014c42'),
	(23190,1365010329,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','ec4a7b9422fb9cba5b2bc619253319b1d3869d9e'),
	(23191,1365010329,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','d87db3ecc9d1bd22ba3c32b012ed06fa471f0125'),
	(23192,1365010329,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','1446bfe29acb4593dd53ce56bc80d2ba3ff1a35a'),
	(23193,1365010329,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','4e885ba31b07cc17c97c0808a00df78dad1f2176'),
	(23194,1365010329,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','00a6867f28781215ccbc87934e82924e732e35cd'),
	(23195,1365010329,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','533039c65d3a2670e1061a1287667aebd518f1d4'),
	(23196,1365010329,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','1c7a616eecb71a8414132781152a185bd494e9b7'),
	(23197,1365010329,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','2235b894de9a79c327cba97a8efdced94d8e03eb'),
	(23198,1365010387,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','27ccdf9c22efd458765cc1b57207c322c4622b99'),
	(23199,1365010387,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','8c928485343345b17473fa554c3f6851603184fc'),
	(23200,1365010387,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','e15b1b14b5d42bb8c96dffc68e17bb029a7a8abc'),
	(23201,1365010387,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','1801ec92449a2ac759301fc95b8573ac14c28109'),
	(23202,1365010387,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','f57d203c6c24fcd6cfb46cd600a2c5bbe45d1abb'),
	(23203,1365010387,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','91232677da403f4f9cbd25d34c622d506a5e7359'),
	(23204,1365010387,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','e02e1e4204f2435a8836d2f0562edc6cfd8e3aa6'),
	(23205,1365010387,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','3c6df68ae6c0632e4823732d9e6d98b30464300d'),
	(23206,1365010387,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','b423655e6a675417a6bf60d370ef941eadec4d04'),
	(23207,1365010387,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','942ff5af89993ab11b79c0a4a538a2e93ab4d8d9'),
	(23208,1365010409,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','2de844c37822e70baa9c39400ca5b40e9c8626a0'),
	(23209,1365010409,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','581a2d35da51c29457146f882d5b5d5680c87202'),
	(23210,1365010409,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','b07452a8f20d241b59db96b686bc47c1af443038'),
	(23211,1365010409,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','45edca6a66ecd355dd05407169e861e9a1530bd9'),
	(23212,1365010409,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','2f1da53a9fb2d5e97ae3d36669348cbd2f4ec1fb'),
	(23213,1365010409,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','24e0dba83ba4ffa9cd5e0f13bb8a056fb368e0d1'),
	(23214,1365010409,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','12909bb3b022f069aeda38d945698c23e6fea730'),
	(23215,1365010409,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','0cada9791d1a1c0a941e0d350f40579bdda75fdf'),
	(23216,1365010409,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','7c06966bca915d70e95538b7c6c2829566409499'),
	(23217,1365010409,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','3ba2b8bee40becb901e90af842a34ad8d2d0782f'),
	(23218,1365010538,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','07ea97556c3f83470f511af134cded8d31e08b7a'),
	(23219,1365010538,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','a8cc0b914f489bfc08da39daf70c473b4a4d8151'),
	(23220,1365010538,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','d42b9358d16bf71d08c8db548d437e27e6217bd1'),
	(23221,1365010538,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','d17f32c76d606d715b093ecada66809ac526d392'),
	(23222,1365010538,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','a38835f8064fbaf76e0a5bbb818eba0fbc7ddb5b'),
	(23223,1365010538,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','7fff9f57208345b2790d8098e64ea50cb4844769'),
	(23224,1365010538,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','2fc7c3fb80ff2bcbe30628152844c82cd30fe95c'),
	(23225,1365010538,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','169529b7a922e105d3faa35a895f2b7facda43ff'),
	(23226,1365010538,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','bc7b7f7bd6caa77c65396988d5da5173d3f04b8a'),
	(23227,1365010538,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','570da0c8db3dd892773fad830f81f9bd1d90622e'),
	(23228,1365010552,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','713fcc9c0aef9c9055477c88a717653c33fa6893'),
	(23229,1365010704,'0','84ebfac00a33dc40501dc3515d84e999236163d3'),
	(23230,1365010712,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','87fa0dae7c9c79e2f8b307c6441fbf67bbe2e9c5'),
	(23231,1365010712,'0','916a5f01e6954f118474c9fc85f0944f3a6e5709'),
	(23232,1365010964,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','a0fae41ebdcde71ae42f7229820ed7786b7218da'),
	(23233,1365011144,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','ce1fa6251dfaecbc698d5305332a411651f42923'),
	(23234,1365011480,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','b6817d674c7f6b87185631c211fceccb94b91c35'),
	(23235,1365011480,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','63d64573d7260e305e646444b4a5edd98ed05611'),
	(23236,1365011844,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','1841bd101409086c66743ff13e134dc7a86326a4'),
	(23237,1365011844,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','372fd602c808bb553d4cbfd2beec957358c4a175'),
	(23238,1365011844,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','5b5f07008f86ee827c24d6e114f01ed72acc3afc'),
	(23239,1365011844,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','cba9906e6982bc4b49440921dc8bc7684ccfedf4'),
	(23240,1365011844,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','b4c68f4505f6abca2e509e472c5fb1a7b3147250'),
	(23241,1365011844,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','bfb7f743607dd7af5584ec28d54090180beb8204'),
	(23242,1365011844,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','855fd8a840e6b297cddd14912082e768e7b05467'),
	(23243,1365011844,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','3dfb3e23ef8e6c4ea980ed0ad5bb1da39b5c4485'),
	(23244,1365011844,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','00b583c7f1dcdec47a1cff639552dc90e7bde76a'),
	(23245,1365011844,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','808b6f878b600710fe16f1542a345e78621eb338'),
	(23246,1365011934,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','1c125f5df1e5ee5951a3acd59aa7b1822d643374'),
	(23247,1365011934,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','2274cfdce3ba66665a14c51f7d181ce22acf78d2'),
	(23248,1365011934,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','0712969563a0de4cda4f611b2822cef6381f2ef3'),
	(23249,1365011934,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','49158d4a9611fe06cacb9d7862e3d95c4b8658b2'),
	(23250,1365011934,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','97a454c4c8c7e293a917e0bcba9a175e01668cba'),
	(23251,1365011934,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','9d094d79110ae25e1d21c2a732c2147d7459de6f'),
	(23252,1365011934,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','a668c96f1df7681babdec69746383c801bb8d2c0'),
	(23253,1365011934,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','b92bfa177f13e738d70e431e482dad0c5ca65dde'),
	(23254,1365011934,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','0d3373657ca8e50a2e157a39435801bb56521de9'),
	(23255,1365011934,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','2d0b6452f4950ab05ab6e0f9c3a0f0dfbaae6936'),
	(23256,1365011945,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','98188666f85138cb5169caa7037531d302e5b7f7'),
	(23257,1365013421,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','338cc4880fddbbb40acfc2b7b24268e24c4861a2'),
	(23258,1365013423,'0','d5b7dd28e2d272a08fc514433a4f5221aaf8d843'),
	(23259,1365013506,'0','adcdf1f633b6ebb4ac8171e774d04675d7d01412'),
	(23260,1365013512,'0','1b5b72f33490622a72b95f81301b2b20f2dc1627'),
	(23261,1365013611,'0','e3708d7c116dae9f80c54ed938eb3df94efb0718'),
	(23262,1365013618,'0','b53ddc651c9573a5f7261da2b3867e2d5829edcf'),
	(22962,1365007666,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','b16a831cc5f24bc2439194a69a4c7f34cca0a3bf'),
	(22963,1365007711,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','f126eec72c7a476ae5f8b32e5ac1715dc1da3381'),
	(22966,1365007762,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','8941351dc8a4fc76979ebeea3813d84ca2a6b501'),
	(22967,1365007763,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','f7688157d8a8e09ab8ebcb4821372ca3eb6674b7'),
	(22968,1365008057,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','a12b9eaa3b0bcbd8601f68d3c2cb77c6f1fe8d37'),
	(22969,1365008057,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','10e8ecc4c70138005da773d4275db5a09e5c940d'),
	(22970,1365008057,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','d74a653d07edb070ed1198301256e5566bffb34e'),
	(22971,1365008057,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','c0e513cb8072ec0e460a379f085a818598cc63fc'),
	(22972,1365008057,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','53efdabff496394bd20b79bd546f1aa7d036b5f5'),
	(22973,1365008057,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','058831060bd508494c6f682ee273c431c57ae8dc'),
	(22974,1365008057,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','0c1ad03254881f961e0aa1154c6ef79457d0d044'),
	(22975,1365008057,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','3d26cfcda8d0d6f2bc9659b901e5961d081f23ea'),
	(22976,1365008057,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','67627666b1d7e22f98bc9a50fc769282362ca8da'),
	(22977,1365008057,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','b48cca3b2370e9d2d79c1d9c5fc8d4164e6d0d5c'),
	(22978,1365008106,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','b8c8b81ae017ea682a4ad9d8d5213c7a8b8c8969'),
	(22988,1365008161,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','1dd099572a5ae8fa2b26d77dcd8c39d3b6227d5d'),
	(22980,1365008106,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','6059606f24230d5bdc9a7031e08fc50277a4f104'),
	(22981,1365008106,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','86935a6d7141d6a97e0e674f2baa4eac57057ef7'),
	(22982,1365008106,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','ee364f83b928311898e036a68d6b767d8c29a395'),
	(22983,1365008106,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','44ea8d2ce039ffc2ed1844245b405c045623a2ff'),
	(22984,1365008106,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','e1196244c800667b0943e28b26e9c77f0ac1ce4e'),
	(22985,1365008106,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','6a2e5f196837f9d840c236b506953dd1c119a1fd'),
	(22986,1365008106,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','c7a47fbf59c509bf4d57ae278e4db47ae9348332'),
	(22987,1365008106,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','3c6fa4057c1aa5986c6f7347e56b4173c11612aa'),
	(22989,1365008161,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','c6721688d80f9bd8c0f915a56fd59ab41db1de59'),
	(22990,1365008161,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','83644757c99c3f290244e9a5bc7129a8765c36a5'),
	(22991,1365008161,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','88d62b0e26c44004ad5401b1055a9ac2b94d0d28'),
	(22992,1365008161,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','e61c74000aae22178fa4d8b81f52ec58414530f2'),
	(22993,1365008161,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','695efcde43c488c45c727d77b4354fba72bbef19'),
	(22994,1365008161,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','cc726203c885352098c49e9e44705fe873919861'),
	(22995,1365008161,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','45d18f6b4c70c94042af294fada9c9edb034ac91'),
	(22996,1365008161,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','f828eebb1c2a503dc81e83e255e9b8d25184c738'),
	(22997,1365008161,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','011ba5dd7c0b7b256700e42c23d950762b88feda'),
	(22998,1365008810,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','c4e249a1ecda94cc18f5abed25722ee39c703270'),
	(22999,1365008810,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','6110e7a908877d8c3edd387cc5359fb8484236c0'),
	(23000,1365008810,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','9fe079f0fe5c31e966a3b25fa7bd73f027371fe5'),
	(23001,1365008810,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','2bb5497b5f2f3b5c6b164bcafcdd50a43447a395'),
	(23002,1365008810,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','d1db14057d16e6e84914760f25e1fde4022be395'),
	(23003,1365008810,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','62ae3b68f17088dfd7777ce6b27769a1fd33efa1'),
	(23004,1365008810,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','002786cc7b17bdf691e30083f435bd3e73b39a6b'),
	(23005,1365008810,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','96d2a21ea456fc804f44d2178bd5534cfe4ec61a'),
	(23006,1365008810,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','b2ea98f8b5ed13232c1831ae8732c710d6c678fb'),
	(23007,1365008810,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','561d5aed3c36009a6ef21569ed3971713b8ac788'),
	(23008,1365008859,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','8ac6e20878df69332137aeb329def806ebb6f253'),
	(23009,1365008859,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','38201b63af2611713b1c1460d69a588f3fbba83c'),
	(23010,1365008859,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','233b362bae42c8d73f01e4f2123ff8e71c2e1c6f'),
	(23011,1365008859,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','7cd6762c9f32dabc786adbc46cfb213698b4d2f8'),
	(23012,1365008859,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','39f84afeb2eb16a6f896d9268d9a156fa0fd3ba7'),
	(23013,1365008859,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','c991a38d321daebb9ef24a09efca31f3912d63fe'),
	(23014,1365008859,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','cf83d6185e7b2859d51d48d7c3d7188560ed1001'),
	(23015,1365008859,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','5e6a9bf2566232e3755bd896caed57a14d615197'),
	(23016,1365008859,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','9fe696ec80e889dd950cf25884a31f27c51c327a'),
	(23017,1365008859,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','29c29424d7cfcab82ac80537f4b19be51cb16912'),
	(23018,1365008983,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','ed77ec67f5b2c170db0d097ddf9a03cab6e12d94'),
	(23019,1365008983,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','81c8fc91dc0b5e4eb3d22265549b1c0cceaf7b91'),
	(23020,1365008983,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','be5be15721d617328da72db47f02713e97b95d38'),
	(23021,1365008983,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','8c347641f544285c4becb1b2cc26bd9f22494300'),
	(23022,1365008983,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','7a0ce20b62043b87da151d980f97bed70e808820'),
	(23023,1365008983,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','01e42be78cb2c0442e3e4183215733e008199d2e'),
	(23024,1365008983,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','417f30d64ce17d5452f7fdc62010cfbd339cfc7f'),
	(23025,1365008983,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','527799caf9bfa766f01fe7defaaacbfd0086481a'),
	(23026,1365008983,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','2b199ce3af51a95fc7a6a035f10c10c9959c41dc'),
	(23027,1365008983,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','dac07a6971f41da751ca9a69e6a00ce29529f604'),
	(23028,1365008993,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','fa624719860fc011b8e3236d2006268afe54573e'),
	(23029,1365008993,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','5953212f413fe4c53ac54525e01b14fbba5359ad'),
	(23030,1365008993,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','04a0e2cf2886be0379b8dd50cd0d1372318b9a7d'),
	(23031,1365008993,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','504ba848d2ef5993bf54c54ee5104805613def1c'),
	(23032,1365008993,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','4859115ff751264447e4b4ddfe0434868cb990e1'),
	(23033,1365008993,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','14232092aa6724cc9150cdd81571ba05fe94961a'),
	(23034,1365008993,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','8ad02727cd547ebb86648d3f78143aa3ea9c8be2'),
	(23035,1365008993,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','0146310f2124230e56d9f6f2836263611672b9d8'),
	(23036,1365008993,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','3fe115c9c82774631bcc61a23dc364e4647629e6'),
	(23037,1365008993,'32d2c26af5ff963246d1ed4282a29bf56cdeba1d','200421e978956f2573c4f9201145832142497cb7'),
	(23272,1365014356,'04541cb1d1611b7f516a2cd015abcbad003ad7e7','5e558f4e2faba2369261eeef492ef55d9c4bb46c'),
	(23273,1365014356,'04541cb1d1611b7f516a2cd015abcbad003ad7e7','8823f5add34ff0c6aedcd3501623628070790207'),
	(23274,1365014381,'542f0ef732bdd9daf8b7114d2b1d0c3a3da59d3b','7982788c01502b7cfddc2f5f142c711d6572b50f'),
	(23275,1365014381,'04541cb1d1611b7f516a2cd015abcbad003ad7e7','910ec2edcd37c83bc51cabbd3eb88cb822426ecc'),
	(23276,1365014381,'04541cb1d1611b7f516a2cd015abcbad003ad7e7','de35fb2b1f86fbef7f4fd46bd62536427d1f9b41'),
	(23277,1365014381,'04541cb1d1611b7f516a2cd015abcbad003ad7e7','11981aa670061da339c468cefd3da499fad9323c'),
	(23278,1365014381,'04541cb1d1611b7f516a2cd015abcbad003ad7e7','ffdf3f7821682b11c3b068a0b5a5b693a8ef9128'),
	(23279,1365014381,'04541cb1d1611b7f516a2cd015abcbad003ad7e7','e3f0d9391b6ed9297a30c765e499db9eb8930c3d'),
	(23280,1365014381,'04541cb1d1611b7f516a2cd015abcbad003ad7e7','ab6555b135990a698344f8743908c455fc5e9fa6'),
	(23281,1365014381,'04541cb1d1611b7f516a2cd015abcbad003ad7e7','4ba84eda39931e9d497601fda3c844976adf6daa'),
	(23282,1365014381,'04541cb1d1611b7f516a2cd015abcbad003ad7e7','aec95622560207d91346181bc2115170d9c6ebff'),
	(23284,1365014435,'542f0ef732bdd9daf8b7114d2b1d0c3a3da59d3b','6e0d8399e516010a959739c013045e1e6666a5d9'),
	(23285,1365014437,'542f0ef732bdd9daf8b7114d2b1d0c3a3da59d3b','43cbb0edafbb6d34f42d963408457231c1b91b1d'),
	(23286,1365014447,'04541cb1d1611b7f516a2cd015abcbad003ad7e7','797fd362c177937e7c9d57bdc31272863ffa51ce'),
	(23287,1365014447,'04541cb1d1611b7f516a2cd015abcbad003ad7e7','b5e256c3b6947af7ffec8d38099b99a3d8141bf2'),
	(23289,1365014470,'542f0ef732bdd9daf8b7114d2b1d0c3a3da59d3b','cd006e83e3fc74378c19d21572feb5d7baedab71'),
	(23290,1365014472,'542f0ef732bdd9daf8b7114d2b1d0c3a3da59d3b','c3cc8158942dd08faf559ea8e2c3d562c8126405'),
	(23291,1365014910,'542f0ef732bdd9daf8b7114d2b1d0c3a3da59d3b','8cad4e12fe1d04f1e79dd411ebd103e814498f9d'),
	(23270,1365014344,'0','63ebea507ae81873bb96fa0a4f3f5169d02e919b'),
	(23271,1365014346,'542f0ef732bdd9daf8b7114d2b1d0c3a3da59d3b','cb9d4eacadd39a417a9071126a6826afbb6039e6'),
	(23268,1365014293,'04541cb1d1611b7f516a2cd015abcbad003ad7e7','637579eb6fb6fdd6a365606d809f7fce0ac40ca4'),
	(23267,1365014005,'04541cb1d1611b7f516a2cd015abcbad003ad7e7','6d55de77518920ca84e9b030c7417840ba9dba68'),
	(23266,1365013991,'04541cb1d1611b7f516a2cd015abcbad003ad7e7','b7f6448dbf4ffcf5cd214a776e653d99bcbe8c00'),
	(23265,1365013932,'04541cb1d1611b7f516a2cd015abcbad003ad7e7','0cfb5223011afadeb5f42837a3dd2af11ed8bcd1'),
	(23264,1365013930,'0','d648e1c9e30974c978efb3debf68a41fbf2d9b2d');

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
	('542f0ef732bdd9daf8b7114d2b1d0c3a3da59d3b',7,1,'50.75.232.238','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31',1365014910),
	('04541cb1d1611b7f516a2cd015abcbad003ad7e7',1,1,'50.75.232.238','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31',1365014447);

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
	(1,'2017 Introductions','default_site',NULL,'YTo5Mjp7czoxMDoic2l0ZV9pbmRleCI7czowOiIiO3M6ODoic2l0ZV91cmwiO3M6NDM6Imh0dHBzOi8vc2hhbmdoYWkubnl1LmVkdS8yMDE3aW50cm9kdWN0aW9ucy8iO3M6MTY6InRoZW1lX2ZvbGRlcl91cmwiO3M6NTA6Imh0dHBzOi8vc2hhbmdoYWkubnl1LmVkdS8yMDE3aW50cm9kdWN0aW9ucy90aGVtZXMvIjtzOjE1OiJ3ZWJtYXN0ZXJfZW1haWwiO3M6MjQ6Imhlcm1hbkB1cmdlbnRjb250ZW50LmNvbSI7czoxNDoid2VibWFzdGVyX25hbWUiO3M6MDoiIjtzOjIwOiJjaGFubmVsX25vbWVuY2xhdHVyZSI7czo3OiJjaGFubmVsIjtzOjEwOiJtYXhfY2FjaGVzIjtzOjM6IjE1MCI7czoxMToiY2FwdGNoYV91cmwiO3M6NTg6Imh0dHA6Ly9zaGFuZ2hhaS5ueXUuZWR1LzIwMTdpbnRyb2R1Y3Rpb25zL2ltYWdlcy9jYXB0Y2hhcy8iO3M6MTI6ImNhcHRjaGFfcGF0aCI7czo0ODoiL3Zhci93d3cvaHRtbC8yMDE3aW50cm9kdWN0aW9ucy9pbWFnZXMvY2FwdGNoYXMvIjtzOjEyOiJjYXB0Y2hhX2ZvbnQiO3M6MToieSI7czoxMjoiY2FwdGNoYV9yYW5kIjtzOjE6InkiO3M6MjM6ImNhcHRjaGFfcmVxdWlyZV9tZW1iZXJzIjtzOjE6Im4iO3M6MTc6ImVuYWJsZV9kYl9jYWNoaW5nIjtzOjE6Im4iO3M6MTg6ImVuYWJsZV9zcWxfY2FjaGluZyI7czoxOiJuIjtzOjE4OiJmb3JjZV9xdWVyeV9zdHJpbmciO3M6MToieSI7czoxMzoic2hvd19wcm9maWxlciI7czoxOiJuIjtzOjE4OiJ0ZW1wbGF0ZV9kZWJ1Z2dpbmciO3M6MToibiI7czoxNToiaW5jbHVkZV9zZWNvbmRzIjtzOjE6Im4iO3M6MTM6ImNvb2tpZV9kb21haW4iO3M6MDoiIjtzOjExOiJjb29raWVfcGF0aCI7czowOiIiO3M6MTc6InVzZXJfc2Vzc2lvbl90eXBlIjtzOjE6ImMiO3M6MTg6ImFkbWluX3Nlc3Npb25fdHlwZSI7czoyOiJjcyI7czoyMToiYWxsb3dfdXNlcm5hbWVfY2hhbmdlIjtzOjE6InkiO3M6MTg6ImFsbG93X211bHRpX2xvZ2lucyI7czoxOiJ5IjtzOjE2OiJwYXNzd29yZF9sb2Nrb3V0IjtzOjE6InkiO3M6MjU6InBhc3N3b3JkX2xvY2tvdXRfaW50ZXJ2YWwiO3M6MToiMSI7czoyMDoicmVxdWlyZV9pcF9mb3JfbG9naW4iO3M6MToieSI7czoyMjoicmVxdWlyZV9pcF9mb3JfcG9zdGluZyI7czoxOiJ5IjtzOjI0OiJyZXF1aXJlX3NlY3VyZV9wYXNzd29yZHMiO3M6MToibiI7czoxOToiYWxsb3dfZGljdGlvbmFyeV9wdyI7czoxOiJ5IjtzOjIzOiJuYW1lX29mX2RpY3Rpb25hcnlfZmlsZSI7czowOiIiO3M6MTc6Inhzc19jbGVhbl91cGxvYWRzIjtzOjE6InkiO3M6MTU6InJlZGlyZWN0X21ldGhvZCI7czo4OiJyZWRpcmVjdCI7czo5OiJkZWZ0X2xhbmciO3M6NzoiZW5nbGlzaCI7czo4OiJ4bWxfbGFuZyI7czoyOiJlbiI7czoxMjoic2VuZF9oZWFkZXJzIjtzOjE6InkiO3M6MTE6Imd6aXBfb3V0cHV0IjtzOjE6Im4iO3M6MTM6ImxvZ19yZWZlcnJlcnMiO3M6MToibiI7czoxMzoibWF4X3JlZmVycmVycyI7czozOiI1MDAiO3M6MTE6InRpbWVfZm9ybWF0IjtzOjI6InVzIjtzOjE1OiJzZXJ2ZXJfdGltZXpvbmUiO3M6MzoiVU01IjtzOjEzOiJzZXJ2ZXJfb2Zmc2V0IjtzOjA6IiI7czoxNjoiZGF5bGlnaHRfc2F2aW5ncyI7czoxOiJuIjtzOjIxOiJkZWZhdWx0X3NpdGVfdGltZXpvbmUiO3M6MDoiIjtzOjE2OiJkZWZhdWx0X3NpdGVfZHN0IjtzOjA6IiI7czoxNToiaG9ub3JfZW50cnlfZHN0IjtzOjE6InkiO3M6MTM6Im1haWxfcHJvdG9jb2wiO3M6NDoibWFpbCI7czoxMToic210cF9zZXJ2ZXIiO3M6MDoiIjtzOjEzOiJzbXRwX3VzZXJuYW1lIjtzOjA6IiI7czoxMzoic210cF9wYXNzd29yZCI7czowOiIiO3M6MTE6ImVtYWlsX2RlYnVnIjtzOjE6Im4iO3M6MTM6ImVtYWlsX2NoYXJzZXQiO3M6NToidXRmLTgiO3M6MTU6ImVtYWlsX2JhdGNobW9kZSI7czoxOiJuIjtzOjE2OiJlbWFpbF9iYXRjaF9zaXplIjtzOjA6IiI7czoxMToibWFpbF9mb3JtYXQiO3M6NToicGxhaW4iO3M6OToid29yZF93cmFwIjtzOjE6InkiO3M6MjI6ImVtYWlsX2NvbnNvbGVfdGltZWxvY2siO3M6MToiNSI7czoyMjoibG9nX2VtYWlsX2NvbnNvbGVfbXNncyI7czoxOiJ5IjtzOjg6ImNwX3RoZW1lIjtzOjc6ImRlZmF1bHQiO3M6MjE6ImVtYWlsX21vZHVsZV9jYXB0Y2hhcyI7czoxOiJuIjtzOjE2OiJsb2dfc2VhcmNoX3Rlcm1zIjtzOjE6InkiO3M6MTI6InNlY3VyZV9mb3JtcyI7czoxOiJ5IjtzOjE5OiJkZW55X2R1cGxpY2F0ZV9kYXRhIjtzOjE6InkiO3M6MjQ6InJlZGlyZWN0X3N1Ym1pdHRlZF9saW5rcyI7czoxOiJuIjtzOjE2OiJlbmFibGVfY2Vuc29yaW5nIjtzOjE6Im4iO3M6MTQ6ImNlbnNvcmVkX3dvcmRzIjtzOjA6IiI7czoxODoiY2Vuc29yX3JlcGxhY2VtZW50IjtzOjA6IiI7czoxMDoiYmFubmVkX2lwcyI7czowOiIiO3M6MTM6ImJhbm5lZF9lbWFpbHMiO3M6MDoiIjtzOjE2OiJiYW5uZWRfdXNlcm5hbWVzIjtzOjA6IiI7czoxOToiYmFubmVkX3NjcmVlbl9uYW1lcyI7czowOiIiO3M6MTA6ImJhbl9hY3Rpb24iO3M6ODoicmVzdHJpY3QiO3M6MTE6ImJhbl9tZXNzYWdlIjtzOjM0OiJUaGlzIHNpdGUgaXMgY3VycmVudGx5IHVuYXZhaWxhYmxlIjtzOjE1OiJiYW5fZGVzdGluYXRpb24iO3M6MjE6Imh0dHA6Ly93d3cueWFob28uY29tLyI7czoxNjoiZW5hYmxlX2Vtb3RpY29ucyI7czoxOiJ5IjtzOjEyOiJlbW90aWNvbl91cmwiO3M6NTc6Imh0dHA6Ly9zaGFuZ2hhaS5ueXUuZWR1LzIwMTdpbnRyb2R1Y3Rpb25zL2ltYWdlcy9zbWlsZXlzLyI7czoxOToicmVjb3VudF9iYXRjaF90b3RhbCI7czo0OiIxMDAwIjtzOjE3OiJuZXdfdmVyc2lvbl9jaGVjayI7czoxOiJ5IjtzOjE3OiJlbmFibGVfdGhyb3R0bGluZyI7czoxOiJuIjtzOjE3OiJiYW5pc2hfbWFza2VkX2lwcyI7czoxOiJ5IjtzOjE0OiJtYXhfcGFnZV9sb2FkcyI7czoyOiIxMCI7czoxMzoidGltZV9pbnRlcnZhbCI7czoxOiI4IjtzOjEyOiJsb2Nrb3V0X3RpbWUiO3M6MjoiMzAiO3M6MTU6ImJhbmlzaG1lbnRfdHlwZSI7czo3OiJtZXNzYWdlIjtzOjE0OiJiYW5pc2htZW50X3VybCI7czowOiIiO3M6MTg6ImJhbmlzaG1lbnRfbWVzc2FnZSI7czo1MDoiWW91IGhhdmUgZXhjZWVkZWQgdGhlIGFsbG93ZWQgcGFnZSBsb2FkIGZyZXF1ZW5jeS4iO3M6MTc6ImVuYWJsZV9zZWFyY2hfbG9nIjtzOjE6InkiO3M6MTk6Im1heF9sb2dnZWRfc2VhcmNoZXMiO3M6MzoiNTAwIjtzOjE3OiJ0aGVtZV9mb2xkZXJfcGF0aCI7czozOToiL3Zhci93d3cvaHRtbC8yMDE3aW50cm9kdWN0aW9ucy90aGVtZXMvIjtzOjEwOiJpc19zaXRlX29uIjtzOjE6InkiO3M6MTE6InJ0ZV9lbmFibGVkIjtzOjE6InkiO3M6MjI6InJ0ZV9kZWZhdWx0X3Rvb2xzZXRfaWQiO3M6MToiMSI7fQ==','YTozOntzOjE5OiJtYWlsaW5nbGlzdF9lbmFibGVkIjtzOjE6InkiO3M6MTg6Im1haWxpbmdsaXN0X25vdGlmeSI7czoxOiJuIjtzOjI1OiJtYWlsaW5nbGlzdF9ub3RpZnlfZW1haWxzIjtzOjA6IiI7fQ==','YTo0NDp7czoxMDoidW5fbWluX2xlbiI7czoxOiI0IjtzOjEwOiJwd19taW5fbGVuIjtzOjE6IjUiO3M6MjU6ImFsbG93X21lbWJlcl9yZWdpc3RyYXRpb24iO3M6MToieSI7czoyNToiYWxsb3dfbWVtYmVyX2xvY2FsaXphdGlvbiI7czoxOiJ5IjtzOjE4OiJyZXFfbWJyX2FjdGl2YXRpb24iO3M6NDoibm9uZSI7czoyMzoibmV3X21lbWJlcl9ub3RpZmljYXRpb24iO3M6MToibiI7czoyMzoibWJyX25vdGlmaWNhdGlvbl9lbWFpbHMiO3M6MDoiIjtzOjI0OiJyZXF1aXJlX3Rlcm1zX29mX3NlcnZpY2UiO3M6MToieSI7czoyMjoidXNlX21lbWJlcnNoaXBfY2FwdGNoYSI7czoxOiJuIjtzOjIwOiJkZWZhdWx0X21lbWJlcl9ncm91cCI7czoxOiI1IjtzOjE1OiJwcm9maWxlX3RyaWdnZXIiO3M6NjoibWVtYmVyIjtzOjEyOiJtZW1iZXJfdGhlbWUiO3M6NzoiZGVmYXVsdCI7czoxNDoiZW5hYmxlX2F2YXRhcnMiO3M6MToieSI7czoyMDoiYWxsb3dfYXZhdGFyX3VwbG9hZHMiO3M6MToieSI7czoxMDoiYXZhdGFyX3VybCI7czo1NzoiaHR0cDovL3NoYW5naGFpLm55dS5lZHUvMjAxN2ludHJvZHVjdGlvbnMvaW1hZ2VzL2F2YXRhcnMvIjtzOjExOiJhdmF0YXJfcGF0aCI7czo0NzoiL3Zhci93d3cvaHRtbC8yMDE3aW50cm9kdWN0aW9ucy9pbWFnZXMvYXZhdGFycy8iO3M6MTY6ImF2YXRhcl9tYXhfd2lkdGgiO3M6MzoiMzAwIjtzOjE3OiJhdmF0YXJfbWF4X2hlaWdodCI7czozOiIzMDAiO3M6MTM6ImF2YXRhcl9tYXhfa2IiO3M6MjoiODAiO3M6MTM6ImVuYWJsZV9waG90b3MiO3M6MToieSI7czo5OiJwaG90b191cmwiO3M6NjM6Imh0dHA6Ly9zaGFuZ2hhaS5ueXUuZWR1LzIwMTdpbnRyb2R1Y3Rpb25zL2ltYWdlcy9tZW1iZXJfcGhvdG9zLyI7czoxMDoicGhvdG9fcGF0aCI7czo1MzoiL3Zhci93d3cvaHRtbC8yMDE3aW50cm9kdWN0aW9ucy9pbWFnZXMvbWVtYmVyX3Bob3Rvcy8iO3M6MTU6InBob3RvX21heF93aWR0aCI7czozOiI4MDAiO3M6MTY6InBob3RvX21heF9oZWlnaHQiO3M6MzoiODAwIjtzOjEyOiJwaG90b19tYXhfa2IiO3M6NDoiMzAwMCI7czoxNjoiYWxsb3dfc2lnbmF0dXJlcyI7czoxOiJuIjtzOjEzOiJzaWdfbWF4bGVuZ3RoIjtzOjM6IjUwMCI7czoyMToic2lnX2FsbG93X2ltZ19ob3RsaW5rIjtzOjE6Im4iO3M6MjA6InNpZ19hbGxvd19pbWdfdXBsb2FkIjtzOjE6Im4iO3M6MTE6InNpZ19pbWdfdXJsIjtzOjcxOiJodHRwOi8vc2hhbmdoYWkubnl1LmVkdS8yMDE3aW50cm9kdWN0aW9ucy9pbWFnZXMvc2lnbmF0dXJlX2F0dGFjaG1lbnRzLyI7czoxMjoic2lnX2ltZ19wYXRoIjtzOjYxOiIvdmFyL3d3dy9odG1sLzIwMTdpbnRyb2R1Y3Rpb25zL2ltYWdlcy9zaWduYXR1cmVfYXR0YWNobWVudHMvIjtzOjE3OiJzaWdfaW1nX21heF93aWR0aCI7czozOiI0ODAiO3M6MTg6InNpZ19pbWdfbWF4X2hlaWdodCI7czoyOiI4MCI7czoxNDoic2lnX2ltZ19tYXhfa2IiO3M6MjoiMzAiO3M6MTk6InBydl9tc2dfdXBsb2FkX3BhdGgiO3M6NTQ6Ii92YXIvd3d3L2h0bWwvMjAxN2ludHJvZHVjdGlvbnMvaW1hZ2VzL3BtX2F0dGFjaG1lbnRzLyI7czoyMzoicHJ2X21zZ19tYXhfYXR0YWNobWVudHMiO3M6MToiMyI7czoyMjoicHJ2X21zZ19hdHRhY2hfbWF4c2l6ZSI7czozOiIyNTAiO3M6MjA6InBydl9tc2dfYXR0YWNoX3RvdGFsIjtzOjM6IjEwMCI7czoxOToicHJ2X21zZ19odG1sX2Zvcm1hdCI7czo0OiJzYWZlIjtzOjE4OiJwcnZfbXNnX2F1dG9fbGlua3MiO3M6MToieSI7czoxNzoicHJ2X21zZ19tYXhfY2hhcnMiO3M6NDoiNjAwMCI7czoxOToibWVtYmVybGlzdF9vcmRlcl9ieSI7czoxNzoidG90YWxfZm9ydW1fcG9zdHMiO3M6MjE6Im1lbWJlcmxpc3Rfc29ydF9vcmRlciI7czo0OiJkZXNjIjtzOjIwOiJtZW1iZXJsaXN0X3Jvd19saW1pdCI7czoyOiIyMCI7fQ==','YTo2OntzOjExOiJzdHJpY3RfdXJscyI7czoxOiJuIjtzOjg6InNpdGVfNDA0IjtzOjA6IiI7czoxOToic2F2ZV90bXBsX3JldmlzaW9ucyI7czoxOiJuIjtzOjE4OiJtYXhfdG1wbF9yZXZpc2lvbnMiO3M6MToiNSI7czoxNToic2F2ZV90bXBsX2ZpbGVzIjtzOjE6InkiO3M6MTg6InRtcGxfZmlsZV9iYXNlcGF0aCI7czo0MToiL3Zhci93d3cvaHRtbC8yMDE3aW50cm9kdWN0aW9ucy90ZW1wbGF0ZXMiO30=','YTo5OntzOjIxOiJpbWFnZV9yZXNpemVfcHJvdG9jb2wiO3M6MzoiZ2QyIjtzOjE4OiJpbWFnZV9saWJyYXJ5X3BhdGgiO3M6MDoiIjtzOjE2OiJ0aHVtYm5haWxfcHJlZml4IjtzOjU6InRodW1iIjtzOjE0OiJ3b3JkX3NlcGFyYXRvciI7czo0OiJkYXNoIjtzOjE3OiJ1c2VfY2F0ZWdvcnlfbmFtZSI7czoxOiJuIjtzOjIyOiJyZXNlcnZlZF9jYXRlZ29yeV93b3JkIjtzOjg6ImNhdGVnb3J5IjtzOjIzOiJhdXRvX2NvbnZlcnRfaGlnaF9hc2NpaSI7czoxOiJuIjtzOjIyOiJuZXdfcG9zdHNfY2xlYXJfY2FjaGVzIjtzOjE6InkiO3M6MjM6ImF1dG9fYXNzaWduX2NhdF9wYXJlbnRzIjtzOjE6InkiO30=','YTozOntzOjQxOiIvdmFyL3d3dy9odG1sLzIwMTdpbnRyb2R1Y3Rpb25zL2luZGV4LnBocCI7czozMjoiZWU0Y2YxOGE2ZDdhNmRhMjZlZWJjMDM0NDc0MTgyNDciO3M6NzoiZW1haWxlZCI7YTowOnt9czozNDoiL2hvbWUvc29jaWFsL3B1YmxpY19odG1sL2luZGV4LnBocCI7czozMjoiM2NiOTA1MGM0ZmUxMzNkMDMyZjExYTFmMzNkOWQxOTMiO30=');

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
	(1,1,14,23,'Anonymus',8,0,0,0,1365008158,0,0,1365014447,146,1364428935,1365017479);

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
	(12,1,'friends_notifications',9,'n');

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
	(1,1,1,'index','y','webpage','{embed=\'includes/header\'}\r\n\r\n<!-- End Header and Nav -->\r\n\r\n    <!-- This has been source ordered to come first in the markup (and on small devices) but to be to the right of the nav on larger screens -->\r\n\r\n        <div class=\"great-wall\">    \r\n	        \r\n	        <!--See all Status-->\r\n	        {embed=\'includes/status-all\'}\r\n        \r\n        </div> <!-- .great-wall -->\r\n        <!-- This is source ordered to be pulled to the left on larger screens -->\r\n        <div class=\"profile-container panel hide-for-small\">\r\n	        {embed=\'includes/sidebar-profile\'}\r\n        </div>\r\n        \r\n    </div> <!-- #main -->\r\n\r\n{embed=\'includes/footer\'}','',1365014435,7,'n',0,'','n','n','o',20444),
	(2,1,2,'index','n','webpage','lll','',1363194805,1,'n',0,'','n','n','o',3),
	(4,1,4,'index','n','webpage','','',1363208891,1,'n',0,'','n','n','o',10),
	(6,1,4,'login','y','webpage','{exp:member:login_form return=\"/profile/index\"}\n<p>\n<label>Username</label><br>\n<input type=\"text\" name=\"username\" value=\"\" maxlength=\"32\" size=\"25\">\n</p>\n\n<p>\n<label>Password</label><br>\n<input type=\"password\" name=\"password\" value=\"\" maxlength=\"32\" size=\"25\">\n</p>\n        \n{if auto_login}\n<p><input type=\"checkbox\" name=\"auto_login\" value=\"1\"> Auto-login on future visits</p>\n{/if}\n\n<p><input type=\"checkbox\" name=\"anon\" value=\"1\" checked=\"checked\"> Show my name in the online users list</p>\n<p><input type=\"submit\" name=\"submit\" value=\"Submit\"></p>\n{/exp:member:login_form}','',1364858166,1,'n',0,'','n','n','o',14),
	(5,1,4,'new-member','y','webpage','{exp:user:register return=\"profile/index\"}\n \n    <p>\n    <label>Email Address:</label><br>\n    <input type=\"text\" name=\"email\" />\n    </p>\n \n    <p>\n    <label>Username:</label><br>\n    <input type=\"text\" name=\"username\" />\n    </p>\n    \n    <p>\n    <label>Name:</label><br>\n    <input type=\"text\" name=\"screen_name\" />\n    </p>\n \n    <p>\n    <label>Password:</label><br>\n    <input type=\"password\" name=\"password\" />\n    </p>\n \n    <p>\n    <label>Confirm Password:</label><br>\n    <input type=\"password\" name=\"password_confirm\" />\n    </p>\n \n    <p>\n    <input type=\"checkbox\" name=\"accept_terms\" value=\"y\" />\n    <label>Accept Terms?</label>\n    </p>\n \n    <p><input type=\"submit\" value=\"Submit\" /></p>\n \n{if no_results} \nYou are currently logged in and not allowed to view this form. \n{/if}\n \n{/exp:user:register}','',1364858172,1,'n',0,'','n','n','o',4),
	(7,1,5,'index','y','webpage','{embed=\'includes/header\'}\n\n\n        <section class=\"full-profile\">\n        <!-- all profiles are contained in .full-profile -->\n            \n            {exp:user:edit dynamic=\"off\" member_id=\"{segment_2}\" override_return=\"profile/index\" return=\"profile/index\"  password_required=\"n\" }\n            <div class=\"profile-header clearfix\">\n                <!-- takes up the left column on larger screens, stacks on smaller screens -->\n                <div class=\"user-img\">\n	                <img src=\"{photo_url}{photo_filename}\" width=\"94\" />\n                </div> <!-- .profile-photo -->\n                <div class=\"name\">\n                    <h4>{screen_name}</h4>\n                    <p><input type=\"submit\" name=\"remove_photo\" value=\"Remove Photo\" /><br>\n	                Upload a New Photo: <input type=\"file\" name=\"photo_filename\" /><br>\n	                </p>\n	                \n                </div> <!-- .name -->\n\n            </div> <!-- .profile-header -->\n   \n            <section class=\"profile-details\">\n                <h4>Living</h4>\n                <table class=\"profile-info\">\n                    <tbody>\n                        <tr>\n                            <th scope=\"rowgroup\">Hometown</th>\n                            <td class=\"data\"><input name=\"location\" value=\"{location}\"></td>\n                        </tr>\n                        \n                        <tr>\n                            <th scope=\"rowgroup\">Current City</th>\n                            <td class=\"data\"><input name=\"occupation\" value=\"{occupation}\"></td>\n                        </tr>\n                    </tbody>\n                </table>\n                <h4>Interests</h4>\n                <a href=\"edit-interests.php\" class=\"edit-btn\" id=\"edit-interests\"  data-icon=\"✎\"><span class=\"visuallyhidden\">Edit Interests</span></a>\n                <div class=\"interests\">\n                    <p><input name=\"interests\" value=\"{interests}\"></p>\n                </div> <!-- .interests -->\n                <div class=\"interests\">\n                	<p><input type=\"submit\" value=\"Update Information\" /></p>\n                </div>\n            </section> <!-- .profile-details takes up the right column on large screens, stacks on smaller screens-->\n        \n        </section> <!-- .full-profile -->\n        {/exp:user:edit}        \n        \n        <section class=\"recent-activity\">\n            <!-- Recent activity. Identical structure to the Great Wall. A .post container contains 1 .post-header div and 1 .content div. 0 or more .comment divs may be nested within .content -->\n            \n            <h3>Your Recent Activity</h3>\n          \n            <!--See profile Status-->\n	        {embed=\'includes/status-profile\'}\n\n            <!-- End Feed Entry -->\n        </section>\n\n\n{embed=\'includes/footer\'}','',1364858219,1,'n',0,'','n','n','o',433),
	(8,1,6,'index','y','webpage','','',1364858243,1,'n',0,'','n','n','o',1),
	(9,1,7,'index','y','webpage','{embed=\'includes/header\'}\r\n\r\n<!-- End Header and Nav -->\r\n\r\n    <!-- This has been source ordered to come first in the markup (and on small devices) but to be to the right of the nav on larger screens -->\r\n\r\n        <div class=\"great-wall\">\r\n          \r\n            <article class=\"post\">\r\n            \r\n                <!-- A .post-header contains 1 .user-img div and 1 .details div. -->\r\n                <div class=\"post-header\">\r\n                    \r\n                    <!-- An <img> element cropped to 47 px square goes in the .user-img div -->\r\n                    <div class=\"user-img\">\r\n                        <img src=\"img/juan-marin_feed_47px.jpg\" />\r\n                    </div> <!-- .user-img -->\r\n                    \r\n                    <!-- An <h4> element with the user\'s name and a <p> element with their time- & geo-stamp go in .details. A <br> comes before the geo-stamp -->\r\n                    <div class=\"details\">\r\n	            	<h4>Select a Student from the list</h4>\r\n	            	\r\n	            	<ul>\r\n	            	{exp:user:users orderby=\"screen_name\" sort=\"asc\" limit=\"25\" paginate=\"bottom\" orderby=\"screen_name\" sort=\"asc\"}\r\n						{exp:user:stats}\r\n							<li>\r\n							<a href=\"/2017introductions/member-list/profile-view/{member_id}\">\r\n							    {if photo_filename}\r\n							    	<img src=\"{photo_url}{photo_filename}\" width=\"80\"/>\r\n							    {if:else}\r\n							    	<img src=\"/2017introductions/img/imagen.jpg\"  width=\"80\"/>\r\n							    {/if}\r\n							</a>\r\n							<a href=\"/2017introductions/member-list/profile-view/{member_id}\">{screen_name}</a>\r\n							</li>\r\n						{/exp:user:stats}\r\n							\r\n						{if user_no_results}\r\n							Sorry, no results were found.\r\n						{/if}\r\n					{/exp:user:users}\r\n	            	</ul>\r\n                    </div> <!-- .details -->\r\n                </div> <!-- .post-header -->\r\n                \r\n            </article>\r\n            <!-- End Feed Entry -->\r\n        \r\n        </div> <!-- .great-wall -->\r\n        <!-- This is source ordered to be pulled to the left on larger screens -->\r\n        <div class=\"profile-container panel hide-for-small\">\r\n	        {embed=\'includes/sidebar-profile\'}\r\n        </div>\r\n        \r\n    </div> <!-- #main --> \r\n\r\n{embed=\'includes/footer\'}','',1365014435,7,'n',0,'','n','n','o',110),
	(10,1,7,'profile-view','y','webpage','{embed=\'includes/header\'}\r\n\r\n\r\n{exp:user:stats dynamic=\"off\" member_id=\"{segment_3}\"}\r\n        <section class=\"full-profile\">\r\n        <!-- all profiles are contained in .full-profile -->\r\n            \r\n            <div class=\"profile-header clearfix\">\r\n                <!-- takes up the left column on larger screens, stacks on smaller screens -->\r\n                <div class=\"user-img\">\r\n		            {if photo_filename}\r\n	                	<img src=\"{photo_url}{photo_filename}\">\r\n	                {if:else}\r\n	                	<img src=\"http://placehold.it/300x240&text=[PROFILE]\" />\r\n	                {/if}    \r\n                </div> <!-- .profile-photo -->\r\n                <div class=\"name\">\r\n                    <h4>{screen_name}</h4>\r\n                </div> <!-- .name -->\r\n\r\n            </div> <!-- .profile-header -->\r\n                \r\n            <section class=\"profile-details\">\r\n                <h4>Living</h4>\r\n                <table class=\"profile-info\">\r\n                    <tbody>\r\n                        <tr>\r\n                            <th scope=\"rowgroup\">Hometown</th>\r\n                            <td class=\"data\">{location}</td>\r\n                        </tr>\r\n                        \r\n                        <tr>\r\n                            <th scope=\"rowgroup\">Current City</th>\r\n                            <td class=\"data\">{occupation}</td>\r\n                        </tr>\r\n                    </tbody>\r\n                </table>\r\n                <h4>Interests</h4>\r\n                <div class=\"interests\">\r\n                    <p>{interests}</p>\r\n                </div> <!-- .interests -->\r\n                \r\n                <h4>Status</h4>\r\n            	<div class=\"interests\">\r\n	                {exp:friends:members member_id=\"{segment_3}\"} \r\n					    <p>\r\n					        {if friend == \"y\"}\r\n					            {if friends_reciprocal == \"y\"}\r\n					                (already friends)\r\n					            {if:else}\r\n					                (invited)\r\n					            {/if}\r\n					        {if:else}\r\n					            <a href=\"{path=\'member-list/add\'}/{friends_member_id}/\">\r\n					                Add to Friends\r\n					            </a>\r\n					        {/if}\r\n					    </p>\r\n					{/exp:friends:members} \r\n            	</div>  \r\n            </section> <!-- .profile-details takes up the right column on large screens, stacks on smaller screens-->\r\n        \r\n        </section> <!-- .full-profile -->\r\n{/exp:user:stats}       \r\n        \r\n        <section class=\"recent-activity\">\r\n            <!-- Recent activity. Identical structure to the Great Wall. A .post container contains 1 .post-header div and 1 .content div. 0 or more .comment divs may be nested within .content -->\r\n            \r\n            <h3>Recent Activity</h3>\r\n            \r\n            <!--See profile Status-->\r\n	        {embed=\'includes/status-profile\' id_member=\'{segment_3}\'}\r\n\r\n            <!-- End Feed Entry -->\r\n        </section>\r\n\r\n\r\n{embed=\'includes/footer\'}','',1365014435,7,'n',0,'','n','n','o',281),
	(11,1,2,'header','y','webpage','<!DOCTYPE html>\n<!--[if IE 8]> 				 <html class=\"no-js lt-ie9\" lang=\"en\"> <![endif]-->\n<!--[if gt IE 8]><!--> <html class=\"no-js\" lang=\"en\"> <!--<![endif]-->\n\n    <head>\n        <meta charset=\"utf-8\" />\n        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, user-scalable=no\" />\n        <title>NYU Shanghai-net</title>\n        \n        <link rel=\"stylesheet\" href=\"/2017introductions/css/normalize.css\" />\n        <link rel=\"stylesheet\" href=\"/2017introductions/css/screen.css\" />\n        <script src=\"/2017introductions/js/vendor/custom.modernizr.js\"></script>\n        \n    </head>\n    <body>\n        <ul id=\"notifications\" class=\"notifications drop\" data-dropdown-content>\n            <li><h4>Notifications</h4></li>\n            <li><a href=\"#\"><img src=\"img/josh-smith_feed_47px.jpg\"><p><span>Josh Smith</span> dolor sit amet, consectetur adipiscing elit.<br><small>6 hours ago from <span></span></small></p></a></li>\n            <li><a href=\"#\"><img src=\"img/juan-marin_feed_47px.jpg\"><p><span>Juan Marin</span> dolor sit amet, consectetur adipiscing elit.<br><small>6 hours ago from <span></span></small></p></a></li>\n        </ul>\n        <ul id=\"actions\" class=\"actions drop\" data-dropdown-content>\n            <li><h4>Actions</h4></li>\n            <li><a href=\"#\"><p>Lorem ipsum dolor sit amet, consectetur\nadipiscing elit.<br><small>6 hours ago from <span></span></small></p></a></li>\n            <li><a href=\"#\"><p>Lorem ipsum dolor sit amet, consectetur\nadipiscing elit.<br><small>6 hours ago from <span></span></small></p></a></li>\n            <li><a href=\"#\"><p>Lorem ipsum dolor sit amet, consectetur\nadipiscing elit.<br><small>6 hours ago from <span></span></small></p></a></li>\n        </ul>\n        <div id=\"outer-wrap\" class=\"outer-wrap\">\n        	{if segment_2==\'profile\'} \n            <div class=\"profile page\" id=\"page\">\n            {if:else}\n            <div class=\"page\" id=\"page\">\n            {/if}\n            <!-- Header and Nav -->\n                <header class=\"global\" id=\"top\" role=\"banner\">\n\n                    <h1 class=\"visuallyhidden\">NYU Shanghai-Net</h1>\n                    <div class=\"header-left\">\n                        <div class=\"menu\">\n                        {if segment_2==\'profile\'}  \n                            <a id=\"back\" class=\"back\" href=\"index.php\" data-title=\"BACK\"></a>\n                        {if:else}\n                            <a id=\"nav-open-btn\" class=\"nav-btn\" href=\"#nav\" data-icon=\"☰\">\n                            <span class=\"visuallyhidden\">Navigate</span>\n                            </a>           \n                        {/if}\n                        </div>\n                        \n                        <div class=\"first ribbon\">\n                            <div class=\"notifications-count\" id=\"notifications-count\"><span>1</span></div>\n                            <a href=\"#\" data-dropdown=\"notifications\" class=\"notifications-icon\"></a>\n                        </div>\n                    </div>\n                    <div class=\"header-right\">\n                        <div class=\"second ribbon\">\n                            <div class=\"actions-count\" id=\"actions-count\"><span>99+</span></div>\n                            <a href=\"#\" data-dropdown=\"actions\" class=\"actions-icon\"></a>\n                        </div>\n                        {if segment_2==\'profile\'}  \n                        <div class=\"post-icon\">\n                            <a id=\"post-open-btn\" class=\"nav-btn\" href=\"new-post.php\" data-icon=\"✎\"><span class=\"visuallyhidden\">New Post</span></a>\n                        </div>\n	                    {/if}\n                    </div>\n                </header>\n                <nav id=\"nav\" class=\"nav\" role=\"navigation\">\n                    <h3 class=\"name show-for-small\" data-icon=\"','',1365014435,7,'n',0,'','n','n','o',0),
	(12,1,2,'footer','y','webpage','        </div> <!-- #main -->\n      </div> <!-- #page -->\n  </div> <!-- #outer-wrap -->\n        <script>\n            document.write(\'<script src=/2017introductions/js/vendor/\'\n            + (\'__proto__\' in {} ? \'zepto\' : \'jquery\')\n            + \'.js><\\/script>\');\n        </script>\n        <script src=\"/2017introductions/js/foundation/foundation.js\"></script>\n        <script src=\"/2017introductions/js/foundation/foundation.topbar.js\"></script>\n        <script src=\"/2017introductions/js/foundation/foundation.forms.js\"></script>\n        <script src=\"/2017introductions/js/foundation/foundation.dropdown.js\"></script>\n        <script src=\"/2017introductions/js/foundation/foundation.section.js\"></script>\n        \n        <script src=\"/2017introductions/js/jwplayer/jwplayer.js\"></script>\n        \n        <script>\n            $(document).foundation();\n        </script>\n	\n        <script src=\"/2017introductions/js/main-ck.js\"></script>\n\n    </body>\n</html>','',1365014435,7,'n',0,'','n','n','o',0),
	(36,1,13,'index','y','webpage','{embed=\'includes/header\'}\n\n<!-- End Header and Nav -->\n\n    <!-- This has been source ordered to come first in the markup (and on small devices) but to be to the right of the nav on larger screens -->\n\n        <div class=\"great-wall\">\n        \n	        {if logged_out}\n				{embed=\'includes/login\'}\n			{/if}        \n	        \n	        <!--See all Status-->\n	        {embed=\'includes/status-all\'}\n        \n        </div> <!-- .great-wall -->\n        <!-- This is source ordered to be pulled to the left on larger screens -->\n        <div class=\"profile-container panel hide-for-small\">\n	        {embed=\'includes/sidebar-profile\'}\n        </div>\n        \n    </div> <!-- #main -->\n\n{embed=\'includes/footer\'}','',1364857615,8,'n',0,'','n','n','o',0),
	(37,1,13,'test','n','webpage','<!DOCTYPE html>\n<!--[if IE 8]> 				 <html class=\"no-js lt-ie9\" lang=\"en\"> <![endif]-->\n<!--[if gt IE 8]><!--> <html class=\"no-js\" lang=\"en\"> <!--<![endif]-->\n\n    <head>\n        <meta charset=\"utf-8\" />\n        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, user-scalable=no\" />\n        <title>NYU Shanghai-net</title>\n        \n        <!-- link rel=\"stylesheet\" href=\"/2017introductions/css/normalize.css\" / -->\n        <!-- link rel=\"stylesheet\" href=\"/2017introductions/css/screen.css\" / -->\n        <!-- script src=\"/2017introductions/js/vendor/custom.modernizr.js\"></script -->\n	<script type=\'text/javascript\' src=\'//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js\'></script>        \n    </head>\n    <body>\n\n	        {if logged_out}\n				<?php\n				// process SSO\n				$_POST[\'eppn\'] = \'\';\n				// user passed NYU authentication\n				if (isset($_POST[\'eppn\']) ) {\n//&& !empty($_POST[\'eppn\']) ) {\n\n// echo \"<pre>\";\n// print_r($_SERVER);\n// echo \"</pre>\";\n				?>\n{exp:ajax_form class=\"Member\" method=\"member_login\"}\n<div style=\"display:hidden\">\n<form id=\"loginForm\" method=\'post\' action=\'{post_url}\'>\n<input type=\'hidden\' name=\'XID\' value=\'{xid}\' />\n<input type=\'hidden\' name=\'ACT\' value=\'{action_id}\' />\n<input type=\'text\' id=\'username\' name=\'username\' value=\"<?php echo $_POST[\'eppn\']; ?>\" />\n<input type=\'submit\' value=\'Login\' id=\'btnLogin\' />\n</form>\n</div>\n\n<script type=\"text/javascript\">\n$(document).ready(function() {\n	\n	//$(\"#btnLogin\").click(function(){\n	$(\"#loginForm\").submit(function(e){\n		e.preventDefault();	\n		console.log(\'submitted\');\n		$.ajax({\n		  type: \"POST\",\n		  url: \"{post_url}\",\n		  data: $(\"#loginForm\").serializeArray()\n		}).done(function( msg ) {\n		  console.log(msg);\n		});		\n\n	}); // end click\n\nif ($(\'#username\').val() != \'\') {\n	$(\"#btnLogin\").click();\n} \n\n});\n</script>\n{/exp:ajax_form}\n\n<?php\n	\n		}\n?>\n\n		{/if}        \n	        \n</body>\n</html>','',1364854287,0,'n',0,'','n','y','o',0),
	(33,1,2,'status-profile','y','webpage','{exp:query sql=\"SELECT status_id, member_id, status, status_date FROM exp_friends_status WHERE site_id =\'1\' AND member_id=\'{segment_3}\' ORDER BY status_date DESC limit 10\"}\r\n{exp:user:stats member_id=\'{segment_3}\'}\r\n<article class=\"post\" data-section>\r\n    <div class=\"post-header\">\r\n        <div class=\"user-img\">\r\n            <a href=\"/profile/{member_id}\">\r\n            {if photo_filename}\r\n            <img src=\"{photo_url}{photo_filename}\" />\r\n            {if:else}\r\n            <img src=\"/2017introductions/img/imagen.jpg\" />\r\n            {/if}\r\n            </a>\r\n        </div> <!-- .user-img -->\r\n        <div class=\"details\">\r\n            <h4>{screen_name}</h4>\r\n            <span>{status_date format=\'%F %j, %Y\'}<br>from {occupation}</span>\r\n        </div> <!-- .details -->	    \r\n    </div><!-- .post-header -->\r\n            \r\n    <div class=\"status\">\r\n        <p>{status}</p>\r\n    </div> <!-- .content -->	\r\n            \r\n    <section class=\"comments\">\r\n        <div class=\"controls title\">\r\n            <a href=\"#\" class=\"comment-icon\">\r\n	            {embed=\'includes/comment-counter\' id_status=\'{status_id}\'}\r\n            </a>\r\n            <div>\r\n            {embed=\'includes/commets\' id_member=\'{member_id}\' id_status=\'{status_id}\' summary=\'yes\'}\r\n            </div>\r\n        </div> <!-- .comment-count -->\r\n        <div class=\"comment-feed\">\r\n            {embed=\'includes/commets\' id_member=\'{member_id}\' id_status=\'{status_id}\'}\r\n        </div>\r\n    </section> <!-- .comments -->    \r\n</article>\r\n{/exp:user:stats}\r\n{/exp:query}','',1365014435,7,'n',0,'','n','n','o',9),
	(32,1,2,'status-all','y','webpage','{exp:query sql=\"SELECT status_id, member_id, status, status_date FROM exp_friends_status WHERE site_id =\'1\' ORDER BY status_date DESC limit 10\"}\r\n{exp:user:stats member_id=\'{member_id}\'}\r\n<article class=\"post\" data-section>\r\n    <div class=\"post-header\">\r\n        <div class=\"user-img\">\r\n            <a href=\"/profile/{member_id}\">\r\n            {if photo_filename}\r\n            <img src=\"{photo_url}{photo_filename}\" />\r\n            {if:else}\r\n            <img src=\"/2017introductions/img/imagen.jpg\" />\r\n            {/if}\r\n            </a>\r\n        </div> <!-- .user-img -->\r\n        <div class=\"details\">\r\n            <h4>{screen_name}</h4>\r\n            <span>{status_date format=\'%F %j, %Y\'}<br>from {occupation}</span>\r\n        </div> <!-- .details -->	    \r\n    </div><!-- .post-header -->\r\n            \r\n    <div class=\"status\">\r\n        <p>{status}</p>\r\n    </div> <!-- .content -->	\r\n            \r\n    <section class=\"comments\">\r\n        <div class=\"controls title\">\r\n            <a href=\"#\" class=\"comment-icon\">\r\n	            {embed=\'includes/comment-counter\' id_status=\'{status_id}\'}\r\n            </a>\r\n            <div>\r\n            {embed=\'includes/commets\' id_member=\'{member_id}\' id_status=\'{status_id}\' summary=\'yes\'}\r\n            </div>\r\n        </div> <!-- .comment-count -->\r\n        <div class=\"comment-feed\">\r\n            {embed=\'includes/commets\' id_member=\'{member_id}\' id_status=\'{status_id}\'}\r\n        </div>\r\n    </section> <!-- .comments -->    \r\n</article>\r\n{/exp:user:stats}\r\n{/exp:query}','',1365014435,7,'n',0,'','n','n','o',9),
	(35,1,1,'test','y','webpage','<!DOCTYPE html>\n<!--[if IE 8]> 				 <html class=\"no-js lt-ie9\" lang=\"en\"> <![endif]-->\n<!--[if gt IE 8]><!--> <html class=\"no-js\" lang=\"en\"> <!--<![endif]-->\n\n    <head>\n        <meta charset=\"utf-8\" />\n        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, user-scalable=no\" />\n        <title>NYU Shanghai-net</title>\n        \n        <!-- link rel=\"stylesheet\" href=\"/2017introductions/css/normalize.css\" / -->\n        <!-- link rel=\"stylesheet\" href=\"/2017introductions/css/screen.css\" / -->\n        <!-- script src=\"/2017introductions/js/vendor/custom.modernizr.js\"></script -->\n	<script type=\'text/javascript\' src=\'//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js\'></script>        \n    </head>\n    <body>\n\n	        {if logged_out}\n				<?php\n				// process SSO\n				// $_POST[\'eppn\'] = \'\';\n				// user passed NYU authentication\n				if (isset($_SERVER[\'eppn\']) && !empty($_SERVER[\'eppn\']) ) {\n					// ) {\n/*\necho \"<pre>\";\nprint_r($_SERVER);\necho \"</pre>\";\n*/\n				?>\n{exp:ajax_form class=\"Member\" method=\"member_login\"}\n<div style=\"display:hidden\">\n<form id=\"loginForm\" method=\'post\' action=\'{post_url}\'>\n<input type=\'hidden\' name=\'XID\' value=\'{xid}\' />\n<input type=\'hidden\' name=\'ACT\' value=\'{action_id}\' />\n<<<<<<< HEAD\n<input type=\'text\' id=\'username\' name=\'username\' value=\"<?php echo $_SERVER[\'eppn\']; ?>\" />\n=======\n<input type=\'text\' id=\'username\' name=\'username\' value=\"<?php echo $_POST[\'eppn\']; ?>\" />\n>>>>>>> local-ahead\n<input type=\'submit\' value=\'Login\' id=\'btnLogin\' />\n</form>\n</div>\n\n<script type=\"text/javascript\">\n$(document).ready(function() {\n	\n	//$(\"#btnLogin\").click(function(){\n	$(\"#loginForm\").submit(function(e){\n		e.preventDefault();	\n		console.log(\'submitted\');\n		$.ajax({\n		  type: \"POST\",\n		  url: \"{post_url}\",\n		  data: $(\"#loginForm\").serializeArray()\n		}).done(function( msg ) {\n			// take action based on response\n			console.log(msg);\n			 var v = msg.charAt(0);\n			if (v == 0){\n				// go to ERROR page - user not in approved list\n				// window.location();\n			} else if (v == 1){\n				// normal login\n				// window.location({path=\"content\"});\n				\n			} else if (v == 2){\n				// new user created\n				// window.location({path=\"actions\"});\n			} \n		});		\n\n	}); // end click\n\nif ($(\'#username\').val() != \'\') {\n	$(\"#btnLogin\").click();\n} \n\n});\n</script>\n{/exp:ajax_form}\n<?php\n		}\n?>\n\n		{/if}        \n	        \n</body>\n</html>','',1365014435,7,'n',0,'','n','y','o',116),
	(34,1,2,'commets','y','webpage','\r\n{if embed:summary!=\'yes\'}\r\n{exp:safecracker channel=\"wall_posts\" return=\"/2017introductions/content/index\" dynamic=\"no\" safecracker_head=\"no\" secure_action=\"yes\" secure_return=\"yes\"}\r\n<input type=\"hidden\" name=\"title\" id=\"title\" value=\"a wall post\" />\r\n<input type=\"hidden\" name=\"entry_date\" value=\"{entry_date}\" />\r\n<input type=\"hidden\" name=\"author_id\" value=\"{logged_in_member_id}\" />\r\n<input type=\"hidden\" name=\"url_title\" id=\"url_title\" value=\"{url_title}\" />\r\n<input type=\"hidden\" name=\"status_owner\" value=\"{embed:id_status}\" /> \r\n\r\n<input type=\"text\" name=\"thepost\" value=\"Write something...\" style=\"margin-bottom:2px; display:inline\" onfocus=\"if\r\n(this.value==this.defaultValue) this.value=\'\';\">\r\n<input type=\"submit\" name=\"submit\" alt=\"Submit\">\r\n\r\n{/exp:safecracker}\r\n{/if}\r\n\r\n{exp:channel:entries channel=\'wall_posts\' search:status_owner=\'={embed:id_status}\' orderby=\'date\' sort=\'desc\' limit=\'10\' dynamic=\'no\' {if embed:summary!=\'yes\'} limit=\'2\' {if:else} offset=\'2\' {/if}}\r\n<p class=\"comment\">\r\n	{exp:user:stats member_id=\'{author_id}\'}\r\n	<a href=\"/2017introductions/member-list/profile-view/{author_id}\">\r\n	    {if photo_filename}\r\n	    	<img src=\"{photo_url}\" width=\"40\"/>\r\n	    {if:else}\r\n	    	<img src=\"/2017introductions/img/imagen.jpg\"  width=\"40\"/>\r\n	    {/if}\r\n	</a>\r\n    <a href=\"/2017introductions/profile/{author_id}\">{screen_name}</a> <br>{thepost}<br>\r\n    {exp:user:stats}\r\n    <span>{entry_date format=\"%F %j, %Y at %h:%i %a\"}</span>\r\n</p>\r\n{/exp:channel:entries}','',1365014435,7,'n',0,'','n','n','o',0),
	(38,1,1,'postcomment','y','webpage','<p><strong>Post a Comment:</strong></p>\r\n\r\n{exp:safecracker channel=\"wall_posts\" return=\"content/index\" dynamic=\"no\" safecracker_head=\"no\" secure_action=\"yes\" secure_return=\"yes\"}\r\n<input type=\"hidden\" name=\"title\" id=\"title\" value=\"a wall post\" />\r\n<input type=\"hidden\" name=\"entry_date\" value=\"{entry_date}\" />\r\n<input type=\"hidden\" name=\"author_id\" value=\"{logged_in_member_id}\" />\r\n<input type=\"hidden\" name=\"url_title\" id=\"url_title\" value=\"{url_title}\" />\r\n<input type=\"hidden\" name=\"status_owner\" value=\"1\" /> \r\n\r\n<input type=\"text\" name=\"thepost\" value=\"Write something...\" style=\"margin-bottom:2px; display:inline\" onfocus=\"if\r\n(this.value==this.defaultValue) this.value=\'\';\">\r\n<input type=\"submit\" name=\"submit\" alt=\"Submit\">\r\n{/exp:safecracker}','',1365014435,7,'n',0,'','n','n','o',1),
	(39,1,13,'sections','y','webpage','{embed=\'includes/header\'}\n\n<div class=\"row\">\n    <div class=\"small-12 columns\">\n        <div class=\"section-container vertical-nav\" data-section=\"vertical-nav\" style=\"\">\n              <section class=\"section\" style=\"\">\n                <p class=\"title\" style=\"left: 0px;\"><a href=\"#\">Section 1</a></p>\n                <div class=\"content\" style=\"\">\n                  <ul class=\"side-nav\">\n                    <li><a href=\"#\">Link 1</a></li>\n                    <li><a href=\"#\">Link 2</a></li>\n                    <li><a href=\"#\">Link 3</a></li>\n                    <li class=\"divider\"></li>\n                    <li><a href=\"#\">Link 1</a></li>\n                  </ul>\n                </div>\n              </section>\n              <section class=\"section\" style=\"\">\n                <p class=\"title\" style=\"left: 159px;\"><a href=\"#\">Section 2</a></p>\n                <div class=\"content\" style=\"\">\n                  <ul class=\"side-nav\">\n                    <li><a href=\"#\">Link 1</a></li>\n                    <li><a href=\"#\">Link 2</a></li>\n                    <li><a href=\"#\">Link 3</a></li>\n                    <li class=\"divider\"></li>\n                    <li><a href=\"#\">Link 1</a></li>\n                  </ul>\n                </div>\n              </section>\n            </div>\n    </div>\n</div>\n\n{embed=\'includes/footer\'}',NULL,1365007711,1,'n',0,'','n','n','o',0),
	(40,1,2,'comment-counter','y','webpage','{exp:query sql=\"SELECT count(*) as comment_count FROM exp_channel_data where field_id_2=\'{embed:id_status}\' \"}\r\n<span>{comment_count}+</span>\r\n{/exp:query}','',1365014435,7,'n',0,'','n','n','o',0),
	(31,1,2,'sidebar-profile','y','webpage','{exp:user:stats}\n	{if photo_filename}\n		<a href=\"/2017introductions/profile/{member_id}\"><img src=\"{photo_url}{photo_filename}\" /></a>\n	{if:else}\n		<a href=\"/2017introductions/profile/{member_id}\"><img src=\"http://placehold.it/300x240&text=[PROFILE]\" /></a>\n	{/if}\n	<h5><a href=\"/2017introductions/profile/{member_id}\">{screen_name}</a></h5>\n{/exp:user:stats}                ','',1365014435,7,'n',0,'','n','n','o',0),
	(30,1,2,'login','y','webpage','<?php\n/*\nif (isset($_POST[\'eppn\'])) {\n	// SSO values passed - fill in form and auto submit it!\n}\n?>\n\n{exp:ajax_form class=\"Member\" method=\"member_login\"}\n\n<form id=\"loginForm\" method=\'post\' action=\'{post_url}\'>\n<input type=\'hidden\' name=\'XID\' value=\'{xid}\' />\n<input type=\'hidden\' name=\'ACT\' value=\'{action_id}\' />\n<input type=\'text\' name=\'username\' value=\"chris.muro\" />\n<input type=\'password\' name=\'password\' value=\"chris001\" />\n<input type=\'button\' name=\'Login\' id=\'btnLogin\'/>\n</form>\n\n<script type=\'text/javascript\' src=\'//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js\'></script>\n<script type=\"text/javascript\">\n	$(\"#btnLogin\").click(function(){\n		$.post(\'{post_url}\',\n			$(\"#loginForm\").serializeArray(),\n			function(data){\n			// handle response here, parse html, or\n			// json if using my output class mod.\n			window.location = \'/profile/index\';\n		}); // end post\n	}); // end click\n\n</script>\n{/exp:ajax_form}\n\n  <?php \n  */\n?>\n          <article class=\"post\">\n          	<div class=\"content\">\n				<p><strong>Sign In</strong></p>\n				{exp:member:login_form id=\"loginform\" return=\"/profile/index\"}\n				<p>\n				<label>Username</label><br>\n				<input type=\"text\" id=\"username\" name=\"username\" value=\"\" maxlength=\"32\" size=\"25\">\n				</p>\n				\n				<p>\n				<label>Password</label><br>\n				<input type=\"password\" id=\"password\" name=\"password\" value=\"\" maxlength=\"32\" size=\"25\">\n				</p>\n				        \n				{if auto_login}\n				<p><input type=\"checkbox\" name=\"auto_login\" value=\"1\"> Auto-login on future visits</p>\n				{/if}\n				\n				<p><input type=\"checkbox\" name=\"anon\" value=\"1\" checked=\"checked\"> Show my name in the online users list</p>\n				<p><input type=\"submit\" name=\"submit\" value=\"Submit\"></p>\n				{/exp:member:login_form}	\n			</div>	\n        </article>\n\n<?php /* <script type=\'text/javascript\' src=\'//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js\'></script>\n<script type=\"text/javascript\">\n$( document ).ready(function() {\n	$(\'#username\').val(\"chris.muro\");\n	$(\'#password\').val(\"chris001\");\n	$(\'#loginform\').submit();\n});\n</script>\n*/\n?>','',1364858136,1,'n',0,'','n','y','o',0),
	(26,1,7,'add','y','webpage','{embed=\'includes/header\'}\n\n{exp:user:stats}\n    <div class=\"page\">\n        <section class=\"full-profile\">\n        <!-- all profiles are contained in .full-profile -->\n            <div class=\"button-wrapper\">\n                <a href=\"/2017introductions/member-list\">Back to Members List</a>\n            </div> <!-- .button-wrapper; profile details fall below this -->\n            <div class=\"profile-photo\"> <!-- takes up the left column on larger screens, stacks on smaller screens -->\n            	{if photo_filename}\n                <img src=\"{photo_url}{photo_filename}\">\n                {if:else}\n                <img src=\"http://placehold.it/300x240&text=[PROFILE]\" />\n                {/if}\n                \n                {exp:friends:members member_id=\"{segment_3}\"} \n				    <div class=\"name\">\n				    <p>\n				    {friends_screen_name}’s Profile<br>\n				    Email: {friends_email}<br>\n				    Total Entries: {friends_total_entries}<br>\n				    Join Date: {friends_join_date  format=\"%m %d, %Y\"}\n				    </p>\n				    </div>\n				{/exp:friends:members}                \n                \n                \n            </div> <!-- .profile-photo -->\n            \n            <div class=\"profile-details\">\n                \n                <div>\n				{exp:friends:add\n				    notification_request=\"friends_notifications/friend_request\"\n				    notification_confirm=\"friends_notifications/friend_confirm\"\n				    subject_request=\"{friends_inviter_screen_name} added you as a friend!\"\n				    subject_confirm=\"{friends_inviter_screen_name} confirmed your friend request!\"\n				}\n				 \n				    {if success}\n				        <h3>Successful!</h3>\n				    {/if}\n				    {if failure}\n				        <h3>Error!</h3>\n				    {/if}\n				 \n				    <p>{friends_message}</p>\n				 \n				{/exp:friends:add}                \n                \n                </div>\n                \n            </div> <!-- .profile-details takes up the right column on large screens, stacks on smaller screens-->\n        \n        </section> <!-- .full-profile -->\n    \n    </div> <!-- .page -->\n{/exp:user:stats}\n\n{embed=\'includes/footer\'}','',1364858318,1,'n',0,'','n','n','o',10),
	(27,1,12,'index','n','webpage','',NULL,1364510972,0,'n',0,'','n','n','o',0),
	(28,1,12,'friend_request','y','webpage','Hello {friends_invitee_screen_name}!\n \nYou have just received a Friend Request from\n{friends_inviter_screen_name}.\n \nClick the link below to accept this invitation:\n{path=\'friends/add\'}/{friends_inviter_member_id}/','',1364858348,1,'n',0,'','n','n','o',0),
	(29,1,12,'friend_confirm','y','webpage','Hello {friends_invitee_screen_name}!\n \nYou are now friends with {friends_inviter_screen_name}\nbecause they have accepted your invitation.\n \nClick the link below to view their profile:\n{path=\'friends/profile\'}/{friends_inviter_member_id}/','',1364858345,1,'n',0,'','n','n','o',0);

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
	(1,1,'General Files','/home/social/public_html/images/general-files/','http://shanghai.nyu.edu/2017introductions/images/general-files/','all','','','','','','','','','','',NULL);

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
	(481,'BDwrvJAeeGbidpCAoPDImlmBz',1365011945,'a:12:{s:9:\"member_id\";s:1:\"1\";s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:6:\"hmarin\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:2:\"no\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";s:15:\"override_return\";s:52:\"https://shanghai.nyu.edu/2017introductions/?/profile\";}'),
	(482,'eTiWZoGtYWWhffIpnGcULnfjC',1365013991,'a:12:{s:9:\"member_id\";s:1:\"1\";s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:6:\"hmarin\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:2:\"no\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";s:15:\"override_return\";s:52:\"https://shanghai.nyu.edu/2017introductions/?/profile\";}'),
	(483,'cZcMVQXsYRAPEPKuTKAGCDsZk',1365014005,'a:12:{s:9:\"member_id\";s:1:\"1\";s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:6:\"hmarin\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:2:\"no\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";s:15:\"override_return\";s:52:\"https://shanghai.nyu.edu/2017introductions/?/profile\";}'),
	(484,'VRyquysCdnvVOjyKjBuwPSWrg',1365014293,'a:12:{s:9:\"member_id\";s:1:\"1\";s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:6:\"hmarin\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:2:\"no\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";s:15:\"override_return\";s:52:\"https://shanghai.nyu.edu/2017introductions/?/profile\";}');

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
	('tst435@nyu.edu');

/*!40000 ALTER TABLE `nyu_sso_approved_users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
