# ************************************************************
# Sequel Pro SQL dump
# Version 4004
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 119.81.24.11 (MySQL 5.1.67)
# Database: ee_social
# Generation Time: 2013-04-08 03:00:09 +0000
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
	(2540,1365342884,'74.108.111.71','type72'),
	(2539,1365342884,'74.108.111.71','could79'),
	(2538,1365342884,'74.108.111.71','meeting67'),
	(2537,1365342884,'74.108.111.71','call89'),
	(2536,1365342884,'74.108.111.71','even68'),
	(2535,1365342884,'74.108.111.71','plans38'),
	(2534,1365342884,'74.108.111.71','light44'),
	(2533,1365342884,'74.108.111.71','name84'),
	(2532,1365342884,'74.108.111.71','size88'),
	(2531,1365342884,'74.108.111.71','schools51'),
	(2525,1365342884,'74.108.111.71','methods48'),
	(2526,1365342884,'74.108.111.71','slowly84'),
	(2527,1365342884,'74.108.111.71','clear97'),
	(2528,1365342884,'74.108.111.71','himself25'),
	(2529,1365342884,'74.108.111.71','provided25'),
	(2530,1365342884,'74.108.111.71','area76'),
	(2544,1365342884,'74.108.111.71','food36'),
	(2543,1365342884,'74.108.111.71','you61'),
	(2542,1365342884,'74.108.111.71','served55'),
	(2541,1365342884,'74.108.111.71','does43');

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
	(8,1,1,'Hola Hola','none',15,'none'),
	(9,1,1,'think you got it','none',15,'none'),
	(10,1,1,'nailed it!','none',14,'none'),
	(11,1,1,'this works...','none',16,'none');

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
	(8,1,1,1,0,NULL,'50.75.232.238','a wall post','a-wall-post7','open','y',0,0,0,0,'y','n',1365008158,'n','2013','04','03',0,0,20130403115558,0,0),
	(9,1,1,7,0,NULL,'74.108.111.71','a wall post','a-wall-post8','open','y',0,0,0,0,'y','n',1365076799,'n','2013','04','04',0,0,20130404065959,0,0),
	(10,1,1,7,0,NULL,'74.108.111.71','a wall post','a-wall-post9','open','y',0,0,0,0,'y','n',1365080169,'n','2013','04','04',0,0,20130404075609,0,0),
	(11,1,1,25,0,NULL,'210.13.87.178','a wall post','a-wall-post10','open','y',0,0,0,0,'y','n',1365172712,'n','2013','04','05',0,0,20130405093832,0,0);

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
	(1,1,'wall_posts','Wall Posts','https://shanghai.nyu.edu/introductions/','','en',11,0,1365172712,0,'',1,'open',1,1,'','y','y',NULL,'all','y','n','n','','','y','n','n','n',5000,0,'y','xhtml','safe','n','y','n','n',NULL,0,'','','y','','n',10,'','',0);

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
	(133,1,7,'bwhitton','74.108.111.71',1365075927,'Logged in'),
	(134,1,7,'bwhitton','74.108.111.71',1365080389,'Logged in'),
	(135,1,7,'bwhitton','74.108.111.71',1365080618,'Logged in'),
	(136,1,7,'bwhitton','74.108.111.71',1365080675,'Member profile created:&nbsp;&nbsp;local member'),
	(137,1,7,'bwhitton','74.108.111.71',1365080802,'Logged in'),
	(138,1,7,'bwhitton','74.108.111.71',1365080815,'Logged out'),
	(139,1,7,'bwhitton','74.108.111.71',1365080868,'Logged in'),
	(140,1,7,'bwhitton','74.108.111.71',1365080914,'Logged out'),
	(141,1,24,'local member','74.108.111.71',1365080929,'Logged in'),
	(142,1,24,'local member','74.108.111.71',1365081002,'Logged out'),
	(143,1,7,'bwhitton','50.75.232.238',1365119302,'Logged in'),
	(144,1,1,'hmarin','160.39.4.177',1365120439,'Logged in'),
	(145,1,7,'bwhitton','74.108.111.71',1365130356,'Logged in'),
	(146,1,7,'bwhitton','50.75.232.238',1365172302,'Logged in'),
	(147,1,7,'bwhitton','50.75.232.238',1365172448,'Member profile created:&nbsp;&nbsp;Jerllin'),
	(148,1,25,'Jerllin','210.13.87.178',1365172467,'Logged in'),
	(149,1,7,'bwhitton','74.108.111.71',1365342957,'Logged in');

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
	(23),
	(24),
	(25);

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
	(25,'l',0,'l',0,'n',0,'r',0,'n',0,'r',0,'r',0,'n',0),
	(24,'l',0,'l',0,'n',0,'r',0,'n',0,'r',0,'r',0,'n',0),
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
	(1,1,'hmarin','Herman Marin','d7e0d0243da7bda153a9924abcf493c32866020e0632522554e7c0b9709a4a2075d2877e4d8b19c44f6317a9a0e2d6120e1cc0e509bbd372de7c7ca70833c307','#!YL{%c?/Wk&\'s.IR_*htTN+?c6j(]SCesh;I%k-7y#3osE`vvQsI\";|SRNK~5~3L~/i3ftgx>#090jVIcYhE*`#tUzt\\Y7n=Zz$1:L1dv(*QnvKk7\"lN>!A4hUH3KU]','a72c5557226218689755f462fafd64cecef7a631','d45f4137b1a361faa7646dee585c2defe5037f9b',NULL,'herman@urgentcontent.com',NULL,'Guayaquil, Ecuador','Paris, France','Music, futbol',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Aqui va la informaasd.f,m,.m,dsafcion de mi perfil',NULL,NULL,NULL,NULL,'photo_1.jpg',400,400,NULL,NULL,NULL,NULL,0,'y',0,0,'160.39.4.177',1363193204,1365014293,1365120440,7,0,0,0,'y','y','y','y','y',5,2,0,'n',0,0,0,1365008159,0,0,0,'n','y','y','y','y','y','n','y','y','english','UM5','n','n','us',NULL,NULL,NULL,NULL,'20',NULL,'18','',NULL,'n',0,'y',0,485),
	(3,5,'coloradomarin','El Colorado','4d987d49d8c04a13e1d1234cda6c457652e65837f4e00708a5cdc90949009d3d535d5b316d512a7070caf67187a84be4d202949af35fa6821b49faf57e43076b','tTo0(]ddZDJRB68{~.\"\\)x}X]@Zg+anvyEUtfw*wsyxtA\\T?!\"EsOc\"I4Jm@7%F>[WdA#Ho03Cao\\dW<h5;Q)z8,v(?cM,Lcd5+\\YUFW;7X!%AWJ84UF;Pj&_Fb*vSF.','c533f2f1e4a86538ffdfb46fd0717261983d2022','52d503a9649139523ee167ecb5125871e43aaffb','','coloradomarin@gmail.com','','Lima, Peru','New York','traveling, futbol, music',0,0,0,'','','','','','',NULL,NULL,NULL,'photo_3.jpg',400,400,NULL,NULL,NULL,NULL,0,'y',0,0,'160.39.4.177',1363208756,1364740661,1364769281,0,0,0,0,'y','y','y','y','y',5,2,0,'n',0,0,0,0,0,0,0,'n','y','y','y','y','y','n','y','y','','','n','n','',NULL,NULL,NULL,NULL,'20',NULL,'18',NULL,NULL,'n',0,'y',0,741),
	(4,5,'hermanmarin','Hermancinto','39b48bccf01bcf96484a7174f5b624a31d4669435fa1c30adbe0d12727befc65f0171bd10190b35f9c2aae057598450bd05010df65ee10a924d924593a0233b1','l6A<Vyit\\PYvhVCNHKgL^%8ITle+#|vTGxmUqLtN!^aLs\'r#p]!QV*L0zDm,ODg$S%R(BZh>%s9~i8hQNU9<kTjJgFlY~;^!VZzLS\'<<H#^#^R?wKmD-s!d#H0;roe\"Q','29983a1e1a90b7eae0b36e984ede7822bc660cc7','947a11911e23fc51fd0a07a7035a17f4cfe84829','','herman.marin@progresoec.org','','Ecuador','Portoviejo, Ecuador','Music',0,0,0,'','','','','','',NULL,NULL,NULL,'photo_4.jpg',100,100,NULL,NULL,NULL,NULL,0,'y',0,0,'160.39.4.177',1363212237,1363962668,1364680861,0,0,0,0,'y','y','y','y','y',0,0,0,'n',0,0,0,0,0,0,0,'n','y','y','y','y','y','n','y','y','','','n','n','',NULL,NULL,NULL,NULL,'20',NULL,'18',NULL,NULL,'n',0,'y',0,655),
	(5,5,'Skyler','Skyler Gross','e26672ce7cd1dc5fc4489f6294d44fa510aa5cb2a0d660c25ac53e8d3324171bfc7d1b3fe39a4f8445794ce495e96a75dd62a99c267873bb33871356c24345bc','asLJc&;.1+#wW)`[vl(f_}^4kMjfC+]J<k%y\'\\+rJ#>bU`.NYo/@K2|@VDR6R(Fto=&N:>wR5>Ugg\'i\'TEj$\'w>kM`^ZSh:u}))fhWe33=ePt^\\K.DLzh)uFaAI@Ik-H','5cf6fe983aa4a44b332b13f2e72292842424cba1',NULL,'','Skyler@urgentcontent.com','','','','',0,0,0,'','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'50.75.232.238',1363304149,0,0,0,0,0,0,'y','y','y','y','y',0,0,0,'n',0,0,0,0,0,0,0,'n','y','y','y','y','y','n','y','y','','','n','n','',NULL,NULL,NULL,NULL,'20',NULL,'18',NULL,NULL,'n',0,'y',0,62),
	(6,5,'Ayuuser','Herman Ayu','d9ee558c351a6047a1caccb975926a81ad715e63f198aef5d952ad7bbc58eeb09b5f5b45b093132c482b16a641e0c0b265bcbda5ae787bfaeeab7d3e58fe20c4','SX=J%PenpA^HzwVnSd1n}!L<4=Pb,kjV-1NiwmV6U;]+%:;5(9!X;$}07:-O;VgU[!PO(5rBc\\A*i--&#{uk\\vmCXjd(MABk(JUlj2)E=~2)OKsH%=LaE&UQY\'*hh79n','264f8cf3f4e187e53abe070a49c78ba6e79ee5b8','dee5984bce73c8ebfd84792fe1c934ddb20e83c4','','herman.marin@ayuinc.com','','Quito, Ecuador','London, UK','Travel, sky, sing',0,0,0,'','','','','','',NULL,NULL,NULL,'photo_6.jpg',598,800,NULL,NULL,NULL,NULL,0,'y',0,0,'187.191.13.19',1363625828,1364766236,1364829328,0,0,0,0,'y','y','y','y','y',4,2,0,'n',0,0,0,0,0,0,0,'n','y','y','y','y','y','n','y','y','','','n','n','',NULL,NULL,NULL,NULL,'20',NULL,'18',NULL,NULL,'n',0,'y',0,644),
	(7,1,'bwhitton','bwhitton','b877fde611855094149a427dc9125600f42ab29e4536c30c3e6c76dc7bcc9f383014e29202889f7921ed2355e396bbf21c7b074d4ea2c84d3617330cbd27a551','(!+I|FCT(/O5m5Y@Pp#3nn/f2&Dq0t;*3<(;00U5*{!L0D5E\"lF-zKV!u&5<xA8HYdcM/8`oWvVn-aj)pbGh%bz\\UCOD|p_6[`|wER6%q2q4l1k<#.#r9>AEF~}XWxzG','8ceb78642b625d5a94dd54105997c01c92e50332','0ae0ee85a8d7956031715d7269aeb5cbcf76ff27',NULL,'brian@urgentcontent.com','','','','',NULL,NULL,NULL,'','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'187.191.13.19',1363628944,1365178170,1365342959,3,0,0,0,'y','y','y','y','y',0,0,0,'n',0,0,0,1365080230,0,0,0,'n','y','y','y','y','y','n','y','y','english','UM5','n','n','us',NULL,NULL,NULL,NULL,'20',NULL,'18',NULL,NULL,'n',0,'y',0,399),
	(8,1,'chris.muro','chris.muro','ec85316253ef44a2a2271a58d99b939a168d83dc31ceb79a759542ed9fd019ef018e16898a3d342f4e9c628c81bc68060d352a21cc585572535e45caea7e98f0','IksU4OnQg:JsH42F#Ksuk+po8dt$23\'DF<:-/t2;b%^u\'}v*TX[-C;p2081=;OlEHMZ6BqOSnMPusA).g0%)t_IP5mO:OMe{SNB^Dddwpyb)=#-!#QZ&+8Bav]LrSTzG','46e601e27e8afd0dc2e1c1d011ace7fd9a084cf5','88879deffad87101e009678e89c8995846debc02',NULL,'christopher@muro.org','','','','',NULL,NULL,NULL,'','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'189.190.203.22',1363968789,1364961400,1365002907,0,0,0,0,'y','y','y','y','y',0,0,0,'n',0,0,0,0,0,0,0,'n','y','y','y','y','y','n','y','y','english','UM5','n','n','us',NULL,NULL,NULL,NULL,'20',NULL,'18',NULL,NULL,'n',0,'y',0,602),
	(23,5,'Anonymus','Anonymus','d448ece531e5b714875c829ac298504246cf11f9c5cfc77c12ce1ca5cc4399b4bf79f5215d04bcae33a8c94098b4919a67bbf5d648613d0dd625b463108e6319','0y&O],Lws8?2;?EjuhSN(\'Ry=M3d#4ils%W{b\\9^w&GH&k-\'KL*))hj|IfHAW/KwJ}Ph^:NwLL0[e-\\-D|$]^V(MN`(%Lx~F54\'<C1&P1rva2PsCKyp|8=}\\3};ACqQS','34156efbcd8dedfca0ab3fd57746693c48659078','cba740cbc27c7d6373d9853f3961bef55ac5b214',NULL,'Anonymus@shanghai.nyu.edu','','','','',NULL,NULL,NULL,'','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'160.39.4.177',1364937348,0,0,0,0,0,0,'y','y','y','y','y',0,0,0,'n',0,0,0,0,0,0,0,'n','y','y','y','y','y','y','y','y','english','UM5','n','n','us',NULL,NULL,NULL,NULL,'20',NULL,'18',NULL,NULL,'n',0,'y',0,4),
	(10,5,'testuser1','Test User 1','84d83eaca6c8f0d428f66950353866dc6b78092c','<m?L|Vvz%HWQ8t~VRG:ZWf{XBfXrg5WVj./}FgadJ?NS*x|9u&2Ae^n2Fet/Sa?=~q4YIFg=^eM>\'4N\"Mpa!)4i.Q4@a$(~zyJ)kE8G4H!3dk\"$j?/lg]7ReX*!/;Atf','a9aaea443c0d81c082ddfabd8651ed8ed4cd9dee','8437e018900eabc23b7d0bb65927805f55507ac5',NULL,'testuser1@nyu.edu','','','','',NULL,NULL,NULL,'','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'71.237.169.81',1364783121,1364785162,1364789882,0,0,0,0,'y','y','y','y','y',0,0,0,'n',0,0,0,0,0,0,0,'n','y','y','y','y','y','y','y','y','english','UM5','n','n','us',NULL,NULL,NULL,NULL,'20',NULL,'18',NULL,NULL,'n',0,'y',0,3),
	(15,5,'testuser3','testuser3','2703688caaee7ea31f4bf57c8f1de8e5eb74b3007583232a530d7cbd2cd88a80a0a75bf855f0bac0f492779a7feebbe92b80e7a8a095339277524980a9ba49a3','9%Al`B2biwN``7\'#Yv_U[VE*:$a0T%_0Q2dU>zz(xc1`FnA0!#4O.scDDun#2$gM)!CwnG9<W|[hk=Pl+i0l&yr)if6#H-o_2A:;i)-?4e++GV~&C8tfv%z@cGfPG1ff','e36fb2dfb525527b2a0c0997dcb5f0cd93620bde','f724542c663afbc6905036df1145f49f6329fb3b',NULL,'testuser3@nyu.edu',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'0.0.0.0',1364791181,1364791226,1364850889,0,0,0,0,'y','y','y','y','y',0,0,0,'n',0,0,0,0,0,0,0,'n','y','y','y','y','y','y','y','y','english','UM5','n','n','eu',NULL,NULL,NULL,NULL,'20',NULL,'18',NULL,NULL,'n',0,'y',0,2),
	(14,5,'testuser2','testuser2','08cfe7a35ef709c6183648a1903db7fe152c5f1987a258bee007de1f17a0ced9776ce90208f1c33f7e42851805c891be08b3dda84dccb7c74fc620846821e0c6','pRIP94I\'YVyywcN%n\"-#tTYG,lIKt/XL/CGutB42:fD2&.8BdF6jAJmB:iweKm;FdQzX!{-zz[4lFH7yCi@R@Hz!GIKVo4ZYFeC3LSqsYTq&*Z-`_CxagIqSNUd-xL`K','fc8261be0135343a7db7c57b68a5cd7916574cbd','52976a3871082036dc1dbb43f2934fa6bd16f560',NULL,'testuser2@nyu.edu',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'0.0.0.0',1364790843,1364790992,1364850795,0,0,0,0,'y','y','y','y','y',0,0,0,'n',0,0,0,0,0,0,0,'n','y','y','y','y','y','y','y','y','english','UM5','n','n','eu',NULL,NULL,NULL,NULL,'20',NULL,'18',NULL,NULL,'n',0,'y',0,1),
	(16,5,'bew216','bew216','cea514da5621804ca83fe1692d22ac25386cad08','}SE2Efmup`srvh[JCUPJYMa-]xOw/cUQ%L^*gOk:;PMt.g2H)AQ\"[C.Wx1B,yl^4\'bboQwv<Q4+aX>~&w:.\\gIWy@cR]wv6Dgi>;HemQ!QCGHQRM+x=La\\v?`9M|$R8$','707435d4aabec0d1ba416fb0daa94161b64e74e2','22a4426fafd149d13c7838fb0263a3c0a634dc9b',NULL,'bew216@nyu.edu',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'0.0.0.0',1364850349,1364850528,1364850528,0,0,0,0,'y','y','y','y','y',0,0,0,'n',0,0,0,0,0,0,0,'n','y','y','y','y','y','y','y','y','english','UM5','n','n','eu',NULL,NULL,NULL,NULL,'20',NULL,'18',NULL,NULL,'n',0,'y',0,0),
	(18,5,'hm11141','hm11141','a010cf80c4d94dd10718a29d8d0aa6d5257787de88d06ffec64c0de48371aeee7d462865dfe5aec348ec36beb1c89125a8cebe60f79a8cf72d49c5a48fdb719d','KrW:mx>`xK^aq0#{g@Ns17G(jg6a5|<R5BTe6P<-$P\'ar!jl:{,UZyMoRxt62)iimDAd&Sar6`-A_pNqe*h#<5500Y7u=t[+W|aA{0}_Jx,zV1/\"qbx\"Gh/Zguj#nT1\\','45fd6147a6dc2b871426811ba9c16ec619f48be0','f4cefc563df45e00d3ded54146744c3c8aac71d3',NULL,'hm11141@nyu.edu',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'0.0.0.0',1364850585,1364850587,1364850587,0,0,0,0,'y','y','y','y','y',0,0,0,'n',0,0,0,0,0,0,0,'n','y','y','y','y','y','y','y','y','english','UM5','n','n','eu',NULL,NULL,NULL,NULL,'20',NULL,'18',NULL,NULL,'n',0,'y',0,4),
	(24,1,'local member','local member','0e340425b920314bc86e65f88cd052d81522b4fbb2cf8cdc61fc81bb67d42d50fb3a8d9b89d3bcf84009aa84e6a616a7de174ed24637cea1e69235749303bd6d','rm83U&&IUBm_>hK,fAswWw9[oXbo(;>UtH$W$.ZR`x@:0Ohie.Uz_Y?!+E#M8Heoo*+:\\tcjY/ML@?!ZoY\'eWi@6N}|.E,T.LpoqLP_Cte/F.b})5M$^qse`ouS}\'7h;','047fcf101835528c4b639bfdae8898f19523f0f4','428825f70be6eadfa8fa530872235371d4aeeecc',NULL,'info@urgentcontent.com','','','','',NULL,NULL,NULL,'','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'74.108.111.71',1365080675,1365080930,1365080930,0,0,0,0,'y','y','y','y','y',0,0,0,'n',0,0,0,0,0,0,0,'n','y','y','y','y','y','y','y','y','english','UM5','n','n','us',NULL,NULL,NULL,NULL,'20',NULL,'18',NULL,NULL,'n',0,'y',0,0),
	(22,5,'tst435','tst435','3b8d63d2acd5d90cc2184c53ec87f2214b6a82b425ddce9ae4fd128c2fa0e3df93dd88ad904f430c3884ef33e58e862cb995a95e5487508791f539a9c933d6e7','}U4\\V7`6fu[R5gNU<=}4p=(z:d*NL-|wo|4AH_*B/mQp~}_\"lF>AD0rExwJha[yGj3cG*\"JS=q{O.PfT:(2W.2~Y`p}=hj\'>z!z]\",|q6Hv;qLVLUZ_eC>>#8N5\\b.+d','a4be54bc8406974154a45288b5fdba0a29b2982d','f1d80dc364641eb435e2af51b0ac971cd2c5607f',NULL,'tst435@nyu.edu',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'0.0.0.0',1364923615,1364923621,1364930203,0,0,0,0,'y','y','y','y','y',0,0,0,'n',0,0,0,0,0,0,0,'n','y','y','y','y','y','y','y','y','english','UM5','n','n','eu',NULL,NULL,NULL,NULL,'20',NULL,'18',NULL,NULL,'n',0,'y',0,0),
	(25,1,'Jerllin','Jerllin','f9c291c2e1cf62c49119de5764381ef868e18685cbbefaddfcb747955c8d6a3be6f2207869fa4ec69c374a68d2e5f26d7dbf5b948ad0a6005daee8a7a1c50183','U<&9<E9),~CQ6DdEy\\<I-@5T\'xwfk1W.K:BB@NH#8^&mRJ{IqZ@3?zm8Lyd~\\U5_;<_ZNl`=3k9qMx@N;f7zl[:N&)u+U%\\TwAW]Z1YO~Hm6g}j2mdE7\\3lM(Y5wY\"\"H','793951bb609e89f4c9fb586cbdf907640b96ece8','97e05dac0ea7acf6a0ce8261b9265780fcf676a1',NULL,'jerllin@nyu.edu','','','','',NULL,NULL,NULL,'','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'50.75.232.238',1365172448,1365172468,1365172769,1,0,0,0,'y','y','y','y','y',0,0,0,'n',0,0,0,1365172713,0,0,0,'n','y','y','y','y','y','y','y','y','english','UM5','n','n','us',NULL,NULL,NULL,NULL,'20',NULL,'18',NULL,NULL,'n',0,'y',0,164);

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
	(10815,1,0,'n','','119.63.193.130',1365383217,''),
	(10814,1,0,'n','','202.46.52.25',1365383153,''),
	(10813,1,0,'n','','111.13.9.235',1365383060,''),
	(10812,1,0,'n','','42.62.37.147',1365380710,''),
	(10811,1,0,'n','','119.63.193.131',1365375942,''),
	(10810,1,0,'n','','202.46.53.39',1365375880,''),
	(10809,1,0,'n','','119.63.193.131',1365368743,''),
	(10808,1,0,'n','','202.46.60.12',1365368684,''),
	(10807,1,0,'n','','119.63.193.131',1365361546,''),
	(10806,1,0,'n','','202.46.62.12',1365361484,''),
	(10805,1,0,'n','','119.63.193.194',1365354448,''),
	(10804,1,0,'n','','202.46.62.28',1365354383,''),
	(10803,1,0,'n','','119.63.196.106',1365351769,''),
	(10802,1,0,'n','','42.62.37.248',1365350440,''),
	(10801,1,0,'n','','94.23.45.14',1365350334,''),
	(10800,1,0,'n','','119.63.193.132',1365346922,''),
	(10799,1,0,'n','','202.46.55.192',1365346869,''),
	(10798,1,0,'n','','222.186.25.29',1365346241,''),
	(10797,1,0,'n','','160.39.4.177',1365345026,''),
	(10796,1,0,'n','','74.108.111.71',1365342884,''),
	(10795,1,0,'n','','42.62.37.187',1365342735,''),
	(10794,1,0,'n','','119.63.193.132',1365340008,''),
	(10793,1,0,'n','','202.46.55.36',1365339945,''),
	(10792,1,0,'n','','111.13.9.235',1365339355,''),
	(10791,1,0,'n','','42.62.37.83',1365334831,''),
	(10790,1,0,'n','','119.63.193.131',1365332585,''),
	(10789,1,0,'n','','202.46.57.65',1365332527,''),
	(10788,1,0,'n','','119.63.193.194',1365325850,''),
	(10787,1,0,'n','','202.46.51.43',1365325778,''),
	(10786,1,0,'n','','222.186.25.29',1365325214,''),
	(10785,1,0,'n','','60.173.10.101',1365324721,''),
	(10784,1,0,'n','','111.13.9.235',1365323747,''),
	(10783,1,0,'n','','42.62.37.99',1365321741,''),
	(10782,1,0,'n','','110.75.173.215',1365321740,''),
	(10781,1,0,'n','','119.63.193.132',1365318353,''),
	(10780,1,0,'n','','202.46.63.125',1365318291,''),
	(10779,1,0,'n','','119.63.193.130',1365311253,''),
	(10778,1,0,'n','','202.46.57.81',1365311189,''),
	(10777,1,0,'n','','42.62.37.82',1365305927,''),
	(10772,1,0,'n','','202.46.48.22',1365296939,''),
	(10773,1,0,'n','','119.63.193.130',1365297008,''),
	(10774,1,0,'n','','42.62.37.142',1365303190,''),
	(10775,1,0,'n','','202.46.48.13',1365303718,''),
	(10776,1,0,'n','','119.63.193.131',1365303772,''),
	(10770,1,0,'n','','111.13.9.235',1365293154,''),
	(10771,1,0,'n','','42.62.37.14',1365294413,'');

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

LOCK TABLES `exp_password_lockout` WRITE;
/*!40000 ALTER TABLE `exp_password_lockout` DISABLE KEYS */;

INSERT INTO `exp_password_lockout` (`lockout_id`, `login_date`, `ip_address`, `user_agent`, `username`)
VALUES
	(69,1365342921,'74.108.111.71','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31','brian');

/*!40000 ALTER TABLE `exp_password_lockout` ENABLE KEYS */;
UNLOCK TABLES;


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
	(23828,1365342957,'0','e66212d7c262680ca88ccfa26706f04ce82a8d42'),
	(23829,1365342959,'0c9c692121b25f388a459b6a5b0423159de08a3a','69724dbbea59f25e722fba3ea73e47e91f826c84'),
	(23830,1365342972,'0c9c692121b25f388a459b6a5b0423159de08a3a','32dbcbe6afa9c0965d2d94ef67fcc2087114b979'),
	(23831,1365343182,'0c9c692121b25f388a459b6a5b0423159de08a3a','8b71ede9c3d4c3c3b69e52815baa8cea3e810685'),
	(23832,1365343194,'0c9c692121b25f388a459b6a5b0423159de08a3a','97680f12b0d117a1a22de62ba8752d7c7e7eb323'),
	(23833,1365343206,'0c9c692121b25f388a459b6a5b0423159de08a3a','88c0760258bf0c5287c5df6705f6dd5b9214b560'),
	(23834,1365343213,'0c9c692121b25f388a459b6a5b0423159de08a3a','3268eefb05fecb3b80ebb8dbe0a43015a392d9b8'),
	(23826,1365342921,'0','ea16412069dad035e36716653a7e2e5f5c4f1222');

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
	('0c9c692121b25f388a459b6a5b0423159de08a3a',7,1,'74.108.111.71','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31',1365343213);

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
	(1,'Introductions','default_site',NULL,'YTo5Mjp7czoxMDoic2l0ZV9pbmRleCI7czo5OiJpbmRleC5waHAiO3M6ODoic2l0ZV91cmwiO3M6Mzk6Imh0dHBzOi8vc2hhbmdoYWkubnl1LmVkdS9pbnRyb2R1Y3Rpb25zLyI7czoxNjoidGhlbWVfZm9sZGVyX3VybCI7czo0NjoiaHR0cHM6Ly9zaGFuZ2hhaS5ueXUuZWR1L2ludHJvZHVjdGlvbnMvdGhlbWVzLyI7czoxNToid2VibWFzdGVyX2VtYWlsIjtzOjI0OiJoZXJtYW5AdXJnZW50Y29udGVudC5jb20iO3M6MTQ6IndlYm1hc3Rlcl9uYW1lIjtzOjA6IiI7czoyMDoiY2hhbm5lbF9ub21lbmNsYXR1cmUiO3M6NzoiY2hhbm5lbCI7czoxMDoibWF4X2NhY2hlcyI7czozOiIxNTAiO3M6MTE6ImNhcHRjaGFfdXJsIjtzOjU4OiJodHRwOi8vc2hhbmdoYWkubnl1LmVkdS8yMDE3aW50cm9kdWN0aW9ucy9pbWFnZXMvY2FwdGNoYXMvIjtzOjEyOiJjYXB0Y2hhX3BhdGgiO3M6NDg6Ii92YXIvd3d3L2h0bWwvMjAxN2ludHJvZHVjdGlvbnMvaW1hZ2VzL2NhcHRjaGFzLyI7czoxMjoiY2FwdGNoYV9mb250IjtzOjE6InkiO3M6MTI6ImNhcHRjaGFfcmFuZCI7czoxOiJ5IjtzOjIzOiJjYXB0Y2hhX3JlcXVpcmVfbWVtYmVycyI7czoxOiJuIjtzOjE3OiJlbmFibGVfZGJfY2FjaGluZyI7czoxOiJuIjtzOjE4OiJlbmFibGVfc3FsX2NhY2hpbmciO3M6MToibiI7czoxODoiZm9yY2VfcXVlcnlfc3RyaW5nIjtzOjE6InkiO3M6MTM6InNob3dfcHJvZmlsZXIiO3M6MToibiI7czoxODoidGVtcGxhdGVfZGVidWdnaW5nIjtzOjE6Im4iO3M6MTU6ImluY2x1ZGVfc2Vjb25kcyI7czoxOiJuIjtzOjEzOiJjb29raWVfZG9tYWluIjtzOjA6IiI7czoxMToiY29va2llX3BhdGgiO3M6MDoiIjtzOjE3OiJ1c2VyX3Nlc3Npb25fdHlwZSI7czoxOiJjIjtzOjE4OiJhZG1pbl9zZXNzaW9uX3R5cGUiO3M6MjoiY3MiO3M6MjE6ImFsbG93X3VzZXJuYW1lX2NoYW5nZSI7czoxOiJ5IjtzOjE4OiJhbGxvd19tdWx0aV9sb2dpbnMiO3M6MToieSI7czoxNjoicGFzc3dvcmRfbG9ja291dCI7czoxOiJ5IjtzOjI1OiJwYXNzd29yZF9sb2Nrb3V0X2ludGVydmFsIjtzOjE6IjEiO3M6MjA6InJlcXVpcmVfaXBfZm9yX2xvZ2luIjtzOjE6InkiO3M6MjI6InJlcXVpcmVfaXBfZm9yX3Bvc3RpbmciO3M6MToieSI7czoyNDoicmVxdWlyZV9zZWN1cmVfcGFzc3dvcmRzIjtzOjE6Im4iO3M6MTk6ImFsbG93X2RpY3Rpb25hcnlfcHciO3M6MToieSI7czoyMzoibmFtZV9vZl9kaWN0aW9uYXJ5X2ZpbGUiO3M6MDoiIjtzOjE3OiJ4c3NfY2xlYW5fdXBsb2FkcyI7czoxOiJ5IjtzOjE1OiJyZWRpcmVjdF9tZXRob2QiO3M6ODoicmVkaXJlY3QiO3M6OToiZGVmdF9sYW5nIjtzOjc6ImVuZ2xpc2giO3M6ODoieG1sX2xhbmciO3M6MjoiZW4iO3M6MTI6InNlbmRfaGVhZGVycyI7czoxOiJ5IjtzOjExOiJnemlwX291dHB1dCI7czoxOiJuIjtzOjEzOiJsb2dfcmVmZXJyZXJzIjtzOjE6Im4iO3M6MTM6Im1heF9yZWZlcnJlcnMiO3M6MzoiNTAwIjtzOjExOiJ0aW1lX2Zvcm1hdCI7czoyOiJ1cyI7czoxNToic2VydmVyX3RpbWV6b25lIjtzOjM6IlVNNSI7czoxMzoic2VydmVyX29mZnNldCI7czowOiIiO3M6MTY6ImRheWxpZ2h0X3NhdmluZ3MiO3M6MToibiI7czoyMToiZGVmYXVsdF9zaXRlX3RpbWV6b25lIjtzOjA6IiI7czoxNjoiZGVmYXVsdF9zaXRlX2RzdCI7czowOiIiO3M6MTU6Imhvbm9yX2VudHJ5X2RzdCI7czoxOiJ5IjtzOjEzOiJtYWlsX3Byb3RvY29sIjtzOjQ6Im1haWwiO3M6MTE6InNtdHBfc2VydmVyIjtzOjA6IiI7czoxMzoic210cF91c2VybmFtZSI7czowOiIiO3M6MTM6InNtdHBfcGFzc3dvcmQiO3M6MDoiIjtzOjExOiJlbWFpbF9kZWJ1ZyI7czoxOiJuIjtzOjEzOiJlbWFpbF9jaGFyc2V0IjtzOjU6InV0Zi04IjtzOjE1OiJlbWFpbF9iYXRjaG1vZGUiO3M6MToibiI7czoxNjoiZW1haWxfYmF0Y2hfc2l6ZSI7czowOiIiO3M6MTE6Im1haWxfZm9ybWF0IjtzOjU6InBsYWluIjtzOjk6IndvcmRfd3JhcCI7czoxOiJ5IjtzOjIyOiJlbWFpbF9jb25zb2xlX3RpbWVsb2NrIjtzOjE6IjUiO3M6MjI6ImxvZ19lbWFpbF9jb25zb2xlX21zZ3MiO3M6MToieSI7czo4OiJjcF90aGVtZSI7czo3OiJkZWZhdWx0IjtzOjIxOiJlbWFpbF9tb2R1bGVfY2FwdGNoYXMiO3M6MToibiI7czoxNjoibG9nX3NlYXJjaF90ZXJtcyI7czoxOiJ5IjtzOjEyOiJzZWN1cmVfZm9ybXMiO3M6MToieSI7czoxOToiZGVueV9kdXBsaWNhdGVfZGF0YSI7czoxOiJ5IjtzOjI0OiJyZWRpcmVjdF9zdWJtaXR0ZWRfbGlua3MiO3M6MToibiI7czoxNjoiZW5hYmxlX2NlbnNvcmluZyI7czoxOiJuIjtzOjE0OiJjZW5zb3JlZF93b3JkcyI7czowOiIiO3M6MTg6ImNlbnNvcl9yZXBsYWNlbWVudCI7czowOiIiO3M6MTA6ImJhbm5lZF9pcHMiO3M6MDoiIjtzOjEzOiJiYW5uZWRfZW1haWxzIjtzOjA6IiI7czoxNjoiYmFubmVkX3VzZXJuYW1lcyI7czowOiIiO3M6MTk6ImJhbm5lZF9zY3JlZW5fbmFtZXMiO3M6MDoiIjtzOjEwOiJiYW5fYWN0aW9uIjtzOjg6InJlc3RyaWN0IjtzOjExOiJiYW5fbWVzc2FnZSI7czozNDoiVGhpcyBzaXRlIGlzIGN1cnJlbnRseSB1bmF2YWlsYWJsZSI7czoxNToiYmFuX2Rlc3RpbmF0aW9uIjtzOjIxOiJodHRwOi8vd3d3LnlhaG9vLmNvbS8iO3M6MTY6ImVuYWJsZV9lbW90aWNvbnMiO3M6MToieSI7czoxMjoiZW1vdGljb25fdXJsIjtzOjU3OiJodHRwOi8vc2hhbmdoYWkubnl1LmVkdS8yMDE3aW50cm9kdWN0aW9ucy9pbWFnZXMvc21pbGV5cy8iO3M6MTk6InJlY291bnRfYmF0Y2hfdG90YWwiO3M6NDoiMTAwMCI7czoxNzoibmV3X3ZlcnNpb25fY2hlY2siO3M6MToieSI7czoxNzoiZW5hYmxlX3Rocm90dGxpbmciO3M6MToibiI7czoxNzoiYmFuaXNoX21hc2tlZF9pcHMiO3M6MToieSI7czoxNDoibWF4X3BhZ2VfbG9hZHMiO3M6MjoiMTAiO3M6MTM6InRpbWVfaW50ZXJ2YWwiO3M6MToiOCI7czoxMjoibG9ja291dF90aW1lIjtzOjI6IjMwIjtzOjE1OiJiYW5pc2htZW50X3R5cGUiO3M6NzoibWVzc2FnZSI7czoxNDoiYmFuaXNobWVudF91cmwiO3M6MDoiIjtzOjE4OiJiYW5pc2htZW50X21lc3NhZ2UiO3M6NTA6IllvdSBoYXZlIGV4Y2VlZGVkIHRoZSBhbGxvd2VkIHBhZ2UgbG9hZCBmcmVxdWVuY3kuIjtzOjE3OiJlbmFibGVfc2VhcmNoX2xvZyI7czoxOiJ5IjtzOjE5OiJtYXhfbG9nZ2VkX3NlYXJjaGVzIjtzOjM6IjUwMCI7czoxNzoidGhlbWVfZm9sZGVyX3BhdGgiO3M6MzU6Ii92YXIvd3d3L2h0bWwvaW50cm9kdWN0aW9ucy90aGVtZXMvIjtzOjEwOiJpc19zaXRlX29uIjtzOjE6InkiO3M6MTE6InJ0ZV9lbmFibGVkIjtzOjE6InkiO3M6MjI6InJ0ZV9kZWZhdWx0X3Rvb2xzZXRfaWQiO3M6MToiMSI7fQ==','YTozOntzOjE5OiJtYWlsaW5nbGlzdF9lbmFibGVkIjtzOjE6InkiO3M6MTg6Im1haWxpbmdsaXN0X25vdGlmeSI7czoxOiJuIjtzOjI1OiJtYWlsaW5nbGlzdF9ub3RpZnlfZW1haWxzIjtzOjA6IiI7fQ==','YTo0NDp7czoxMDoidW5fbWluX2xlbiI7czoxOiI0IjtzOjEwOiJwd19taW5fbGVuIjtzOjE6IjUiO3M6MjU6ImFsbG93X21lbWJlcl9yZWdpc3RyYXRpb24iO3M6MToieSI7czoyNToiYWxsb3dfbWVtYmVyX2xvY2FsaXphdGlvbiI7czoxOiJ5IjtzOjE4OiJyZXFfbWJyX2FjdGl2YXRpb24iO3M6NDoibm9uZSI7czoyMzoibmV3X21lbWJlcl9ub3RpZmljYXRpb24iO3M6MToibiI7czoyMzoibWJyX25vdGlmaWNhdGlvbl9lbWFpbHMiO3M6MDoiIjtzOjI0OiJyZXF1aXJlX3Rlcm1zX29mX3NlcnZpY2UiO3M6MToieSI7czoyMjoidXNlX21lbWJlcnNoaXBfY2FwdGNoYSI7czoxOiJuIjtzOjIwOiJkZWZhdWx0X21lbWJlcl9ncm91cCI7czoxOiI1IjtzOjE1OiJwcm9maWxlX3RyaWdnZXIiO3M6NjoibWVtYmVyIjtzOjEyOiJtZW1iZXJfdGhlbWUiO3M6NzoiZGVmYXVsdCI7czoxNDoiZW5hYmxlX2F2YXRhcnMiO3M6MToieSI7czoyMDoiYWxsb3dfYXZhdGFyX3VwbG9hZHMiO3M6MToieSI7czoxMDoiYXZhdGFyX3VybCI7czo1NzoiaHR0cDovL3NoYW5naGFpLm55dS5lZHUvMjAxN2ludHJvZHVjdGlvbnMvaW1hZ2VzL2F2YXRhcnMvIjtzOjExOiJhdmF0YXJfcGF0aCI7czo0NzoiL3Zhci93d3cvaHRtbC8yMDE3aW50cm9kdWN0aW9ucy9pbWFnZXMvYXZhdGFycy8iO3M6MTY6ImF2YXRhcl9tYXhfd2lkdGgiO3M6MzoiMzAwIjtzOjE3OiJhdmF0YXJfbWF4X2hlaWdodCI7czozOiIzMDAiO3M6MTM6ImF2YXRhcl9tYXhfa2IiO3M6MjoiODAiO3M6MTM6ImVuYWJsZV9waG90b3MiO3M6MToieSI7czo5OiJwaG90b191cmwiO3M6NjM6Imh0dHA6Ly9zaGFuZ2hhaS5ueXUuZWR1LzIwMTdpbnRyb2R1Y3Rpb25zL2ltYWdlcy9tZW1iZXJfcGhvdG9zLyI7czoxMDoicGhvdG9fcGF0aCI7czo1MzoiL3Zhci93d3cvaHRtbC8yMDE3aW50cm9kdWN0aW9ucy9pbWFnZXMvbWVtYmVyX3Bob3Rvcy8iO3M6MTU6InBob3RvX21heF93aWR0aCI7czozOiI4MDAiO3M6MTY6InBob3RvX21heF9oZWlnaHQiO3M6MzoiODAwIjtzOjEyOiJwaG90b19tYXhfa2IiO3M6NDoiMzAwMCI7czoxNjoiYWxsb3dfc2lnbmF0dXJlcyI7czoxOiJuIjtzOjEzOiJzaWdfbWF4bGVuZ3RoIjtzOjM6IjUwMCI7czoyMToic2lnX2FsbG93X2ltZ19ob3RsaW5rIjtzOjE6Im4iO3M6MjA6InNpZ19hbGxvd19pbWdfdXBsb2FkIjtzOjE6Im4iO3M6MTE6InNpZ19pbWdfdXJsIjtzOjcxOiJodHRwOi8vc2hhbmdoYWkubnl1LmVkdS8yMDE3aW50cm9kdWN0aW9ucy9pbWFnZXMvc2lnbmF0dXJlX2F0dGFjaG1lbnRzLyI7czoxMjoic2lnX2ltZ19wYXRoIjtzOjYxOiIvdmFyL3d3dy9odG1sLzIwMTdpbnRyb2R1Y3Rpb25zL2ltYWdlcy9zaWduYXR1cmVfYXR0YWNobWVudHMvIjtzOjE3OiJzaWdfaW1nX21heF93aWR0aCI7czozOiI0ODAiO3M6MTg6InNpZ19pbWdfbWF4X2hlaWdodCI7czoyOiI4MCI7czoxNDoic2lnX2ltZ19tYXhfa2IiO3M6MjoiMzAiO3M6MTk6InBydl9tc2dfdXBsb2FkX3BhdGgiO3M6NTQ6Ii92YXIvd3d3L2h0bWwvMjAxN2ludHJvZHVjdGlvbnMvaW1hZ2VzL3BtX2F0dGFjaG1lbnRzLyI7czoyMzoicHJ2X21zZ19tYXhfYXR0YWNobWVudHMiO3M6MToiMyI7czoyMjoicHJ2X21zZ19hdHRhY2hfbWF4c2l6ZSI7czozOiIyNTAiO3M6MjA6InBydl9tc2dfYXR0YWNoX3RvdGFsIjtzOjM6IjEwMCI7czoxOToicHJ2X21zZ19odG1sX2Zvcm1hdCI7czo0OiJzYWZlIjtzOjE4OiJwcnZfbXNnX2F1dG9fbGlua3MiO3M6MToieSI7czoxNzoicHJ2X21zZ19tYXhfY2hhcnMiO3M6NDoiNjAwMCI7czoxOToibWVtYmVybGlzdF9vcmRlcl9ieSI7czoxNzoidG90YWxfZm9ydW1fcG9zdHMiO3M6MjE6Im1lbWJlcmxpc3Rfc29ydF9vcmRlciI7czo0OiJkZXNjIjtzOjIwOiJtZW1iZXJsaXN0X3Jvd19saW1pdCI7czoyOiIyMCI7fQ==','YTo2OntzOjExOiJzdHJpY3RfdXJscyI7czoxOiJuIjtzOjg6InNpdGVfNDA0IjtzOjA6IiI7czoxOToic2F2ZV90bXBsX3JldmlzaW9ucyI7czoxOiJuIjtzOjE4OiJtYXhfdG1wbF9yZXZpc2lvbnMiO3M6MToiNSI7czoxNToic2F2ZV90bXBsX2ZpbGVzIjtzOjE6InkiO3M6MTg6InRtcGxfZmlsZV9iYXNlcGF0aCI7czo0MToiL3Zhci93d3cvaHRtbC8yMDE3aW50cm9kdWN0aW9ucy90ZW1wbGF0ZXMiO30=','YTo5OntzOjIxOiJpbWFnZV9yZXNpemVfcHJvdG9jb2wiO3M6MzoiZ2QyIjtzOjE4OiJpbWFnZV9saWJyYXJ5X3BhdGgiO3M6MDoiIjtzOjE2OiJ0aHVtYm5haWxfcHJlZml4IjtzOjU6InRodW1iIjtzOjE0OiJ3b3JkX3NlcGFyYXRvciI7czo0OiJkYXNoIjtzOjE3OiJ1c2VfY2F0ZWdvcnlfbmFtZSI7czoxOiJuIjtzOjIyOiJyZXNlcnZlZF9jYXRlZ29yeV93b3JkIjtzOjg6ImNhdGVnb3J5IjtzOjIzOiJhdXRvX2NvbnZlcnRfaGlnaF9hc2NpaSI7czoxOiJuIjtzOjIyOiJuZXdfcG9zdHNfY2xlYXJfY2FjaGVzIjtzOjE6InkiO3M6MjM6ImF1dG9fYXNzaWduX2NhdF9wYXJlbnRzIjtzOjE6InkiO30=','YTozOntzOjc6ImVtYWlsZWQiO2E6MDp7fXM6MzQ6Ii9ob21lL3NvY2lhbC9wdWJsaWNfaHRtbC9pbmRleC5waHAiO3M6MzI6IjNjYjkwNTBjNGZlMTMzZDAzMmYxMWExZjMzZDlkMTkzIjtzOjM3OiIvdmFyL3d3dy9odG1sL2ludHJvZHVjdGlvbnMvaW5kZXgucGhwIjtzOjMyOiJlZTRjZjE4YTZkN2E2ZGEyNmVlYmMwMzQ0NzQxODI0NyI7fQ==');

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
	(1,1,16,25,'Jerllin',11,0,0,0,1365172712,0,0,1365383217,146,1364428935,1365626656);

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
	(1,1,1,'index','y','webpage','{embed=\'includes/header\'}\r\n\r\n<!-- End Header and Nav -->\r\n\r\n    <!-- This has been source ordered to come first in the markup (and on small devices) but to be to the right of the nav on larger screens -->\r\n\r\n        <section class=\"great-wall\">    \r\n	        \r\n	        <!--See all Status-->\r\n	        {embed=\'includes/status-all\'}\r\n        \r\n        </section> <!-- .great-wall -->\r\n        <!-- This is source ordered to be pulled to the left on larger screens -->\r\n        <div class=\"profile-container panel hide-for-small\">\r\n	        {embed=\'includes/sidebar-profile\'}\r\n        </div>\r\n        \r\n    </div> <!-- #main -->\r\n\r\n{embed=\'includes/footer\'}','',1365130398,7,'n',0,'','n','n','o',20788),
	(2,1,2,'index','n','webpage','lll','',1363194805,1,'n',0,'','n','n','o',3),
	(4,1,4,'index','n','webpage','','',1363208891,1,'n',0,'','n','n','o',10),
	(6,1,4,'login','y','webpage','{exp:member:login_form return=\"{path=\'profile\'}/index\"}\n<p>\n<label>Username</label><br>\n<input type=\"text\" name=\"username\" value=\"\" maxlength=\"32\" size=\"25\">\n</p>\n\n<p>\n<label>Password</label><br>\n<input type=\"password\" name=\"password\" value=\"\" maxlength=\"32\" size=\"25\">\n</p>\n        \n{if auto_login}\n<p><input type=\"checkbox\" name=\"auto_login\" value=\"1\"> Auto-login on future visits</p>\n{/if}\n\n<p><input type=\"checkbox\" name=\"anon\" value=\"1\" checked=\"checked\"> Show my name in the online users list</p>\n<p><input type=\"submit\" name=\"submit\" value=\"Submit\"></p>\n{/exp:member:login_form}','',1365130398,7,'n',0,'','n','n','o',14),
	(5,1,4,'new-member','y','webpage','{exp:user:register return=\"{path=\'profile\'}/index\"} \n    <p>\n    <label>Email Address:</label><br>\n    <input type=\"text\" name=\"email\" />\n    </p>\n \n    <p>\n    <label>Username:</label><br>\n    <input type=\"text\" name=\"username\" />\n    </p>\n    \n    <p>\n    <label>Name:</label><br>\n    <input type=\"text\" name=\"screen_name\" />\n    </p>\n \n    <p>\n    <label>Password:</label><br>\n    <input type=\"password\" name=\"password\" />\n    </p>\n \n    <p>\n    <label>Confirm Password:</label><br>\n    <input type=\"password\" name=\"password_confirm\" />\n    </p>\n \n    <p>\n    <input type=\"checkbox\" name=\"accept_terms\" value=\"y\" />\n    <label>Accept Terms?</label>\n    </p>\n \n    <p><input type=\"submit\" value=\"Submit\" /></p>\n \n{if no_results} \nYou are currently logged in and not allowed to view this form. \n{/if}\n \n{/exp:user:register}','',1365130398,7,'n',0,'','n','n','o',4),
	(7,1,5,'index','y','webpage','{embed=\'includes/header\'}\n\n\n        <section class=\"full-profile\">\n        <!-- all profiles are contained in .full-profile -->\n        \n        {if segment_2==\'\' || segment_2==logged_in_member_id}    \n        {exp:user:edit dynamic=\'off\' override_return=\'profile/index\' return=\'profile/index\'  password_required=\'n\' }\n            <div class=\"profile-header clearfix\">\n                <!-- takes up the left column on larger screens, stacks on smaller screens -->\n                <div class=\"user-img\">\n                    {if photo_filename}\n	                <img src=\"{photo_url}{photo_filename}\" />\n	                {if:else}\n	                <img src=\"http://placehold.it/94x94&text=NO PHOTO\">\n	                {/if}\n                </div> <!-- .profile-photo -->\n                <div class=\"name\">\n                    <h4 data-icon=\"','',1365130398,7,'n',0,'','n','n','o',472),
	(8,1,6,'index','y','webpage','','',1364858243,1,'n',0,'','n','n','o',1),
	(9,1,7,'index','y','webpage','{embed=\'includes/header\'}\n\n<!-- End Header and Nav -->\n\n    <!-- This has been source ordered to come first in the markup (and on small devices) but to be to the right of the nav on larger screens -->\n\n        <section class=\"student-list\">\n            <!-- <div class=\"panel\"> -->\n                <div class=\"row\">\n                <?php $count = 0; ?>\n                {exp:user:users orderby=\"screen_name\" sort=\"asc\" limit=\"25\" paginate=\"bottom\" orderby=\"screen_name\" sort=\"asc\"}\n                    {exp:user:stats}\n                    <div class=\"large-3 columns\">\n                        <a href=\"{path=\'profile\'}/{member_id}\">\n                        {if photo_filename}\n                        	<img src=\"{photo_url}{photo_filename}\">\n                        {if:else}\n                        	<img src=\"http://placehold.it/400x400&text=NO IMAGE\">\n                        {/if}\n                        </a>\n                        <a href=\"{path=\'profile\'}/{member_id}\" class=\"name\">{screen_name}</a>\n                    </div>\n                    {/exp:user:stats}\n                <?php \n                    $count++; \n                    if ($count%4 == 0) {\n                        echo \'</div><div class=\"row\">\';\n                    }\n                ?>\n            \n                    {if user_no_results}\n                    <p>Sorry, no results were found.</p>\n                    {/if}\n                {/exp:user:users}\n                <?php \n                    if ($count%4 != 0) {\n                        echo \'</div>\';\n                    }\n                ?>\n            <!-- </div>  --><!-- .panel -->\n        </section>\n    </div> <!-- #main --> \n{embed=\'includes/footer\'}','',1365120516,1,'n',0,'','n','y','o',124),
	(10,1,7,'profile-view','y','webpage','{embed=\'includes/header\'}\r\n\r\n\r\n{exp:user:stats dynamic=\"off\" member_id=\"{segment_3}\"}\r\n        <section class=\"full-profile\">\r\n        <!-- all profiles are contained in .full-profile -->\r\n            \r\n            <div class=\"profile-header clearfix\">\r\n                <!-- takes up the left column on larger screens, stacks on smaller screens -->\r\n                <div class=\"user-img\">\r\n		            {if photo_filename}\r\n	                	<img src=\"{photo_url}{photo_filename}\">\r\n	                {if:else}\r\n	                	<img src=\"http://placehold.it/300x240&text=[PROFILE]\" />\r\n	                {/if}    \r\n                </div> <!-- .profile-photo -->\r\n                <div class=\"name\">\r\n                    <h4>{screen_name}</h4>\r\n                </div> <!-- .name -->\r\n\r\n            </div> <!-- .profile-header -->\r\n                \r\n            <section class=\"profile-details\">\r\n                <h4>Living</h4>\r\n                <table class=\"profile-info\">\r\n                    <tbody>\r\n                        <tr>\r\n                            <th scope=\"rowgroup\">Hometown</th>\r\n                            <td class=\"data\">{location}</td>\r\n                        </tr>\r\n                        \r\n                        <tr>\r\n                            <th scope=\"rowgroup\">Current City</th>\r\n                            <td class=\"data\">{occupation}</td>\r\n                        </tr>\r\n                    </tbody>\r\n                </table>\r\n                <h4>Interests</h4>\r\n                <div class=\"interests\">\r\n                    <p>{interests}</p>\r\n                </div> <!-- .interests -->\r\n                \r\n                <h4>Status</h4>\r\n            	<div class=\"interests\">\r\n	                {exp:friends:members member_id=\"{segment_3}\"} \r\n					    <p>\r\n					        {if friend == \"y\"}\r\n					            {if friends_reciprocal == \"y\"}\r\n					                (already friends)\r\n					            {if:else}\r\n					                (invited)\r\n					            {/if}\r\n					        {if:else}\r\n					            <a href=\"{path=\'member-list/add\'}/{friends_member_id}/\">\r\n					                Add to Friends\r\n					            </a>\r\n					        {/if}\r\n					    </p>\r\n					{/exp:friends:members} \r\n            	</div>  \r\n            </section> <!-- .profile-details takes up the right column on large screens, stacks on smaller screens-->\r\n        \r\n        </section> <!-- .full-profile -->\r\n{/exp:user:stats}       \r\n        \r\n        <section class=\"recent-activity\">\r\n            <!-- Recent activity. Identical structure to the Great Wall. A .post container contains 1 .post-header div and 1 .content div. 0 or more .comment divs may be nested within .content -->\r\n            \r\n            <h3>Recent Activity</h3>\r\n            \r\n            <!--See profile Status-->\r\n	        {embed=\'includes/status-profile\' id_member=\'{segment_3}\'}\r\n\r\n            <!-- End Feed Entry -->\r\n        </section>\r\n{embed=\'includes/footer\'}','',1365130398,7,'n',0,'','n','n','o',285),
	(11,1,2,'header','y','webpage','<!DOCTYPE html>\n<!--[if IE 8]> 				 <html class=\"no-js lt-ie9\" lang=\"en\"> <![endif]-->\n<!--[if gt IE 8]><!--> <html class=\"no-js\" lang=\"en\"> <!--<![endif]-->\n\n    <head>\n        <meta charset=\"utf-8\" />\n        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, user-scalable=no\" />\n        <title>NYU Shanghai-net</title>\n        \n        <link rel=\"stylesheet\" href=\"{site_url}css/normalize.css\" />\n        <link rel=\"stylesheet\" href=\"{site_url}css/screen.css\" />\n        <script src=\"{site_url}js/vendor/custom.modernizr.js\"></script>        \n    </head>\n    <body>\n        <ul id=\"notifications\" class=\"notifications drop\" data-dropdown-content>\n            <li><h4>Notifications</h4></li>\n            <li><a href=\"#\"><img src=\"img/josh-smith_feed_47px.jpg\"><p><span>Josh Smith</span> dolor sit amet, consectetur adipiscing elit.<br><small>6 hours ago from <span></span></small></p></a></li>\n            <li><a href=\"#\"><img src=\"img/juan-marin_feed_47px.jpg\"><p><span>Juan Marin</span> dolor sit amet, consectetur adipiscing elit.<br><small>6 hours ago from <span></span></small></p></a></li>\n        </ul>\n        <ul id=\"actions\" class=\"actions drop\" data-dropdown-content>\n            <li><h4>Actions</h4></li>\n            <li><a href=\"#\"><p>Lorem ipsum dolor sit amet, consectetur\nadipiscing elit.<br><small>6 hours ago from <span></span></small></p></a></li>\n            <li><a href=\"#\"><p>Lorem ipsum dolor sit amet, consectetur\nadipiscing elit.<br><small>6 hours ago from <span></span></small></p></a></li>\n            <li><a href=\"#\"><p>Lorem ipsum dolor sit amet, consectetur\nadipiscing elit.<br><small>6 hours ago from <span></span></small></p></a></li>\n        </ul>\n    	{if segment_1==\'profile\'} \n        <div class=\"outer-wrap profile\" id=\"outer-wrap\">\n        {if:else}\n        <div class=\"outer-wrap\" id=\"outer-wrap\">\n        {/if}\n            \n            <div class=\"page\" id=\"page\">\n            <!-- Header and Nav -->\n                <header class=\"global\" id=\"top\" role=\"banner\">\n\n                    <h1 class=\"visuallyhidden\">NYU Shanghai-Net</h1>\n                    <div class=\"header-left\">\n                        <div class=\"menu\">\n                        {if segment_2==\'profile\'}  \n                            <a href=\"{site_url}\" class=\"back\" data-title=\"BACK\" id=\"back\"><span class=\"visuallyhidden\">Back</span></a>\n                        {if:else}\n                            <a href=\"#nav\" class=\"menu-btn\" data-icon=\"☰\" id=\"menu-btn\"><span class=\"visuallyhidden\">Navigate</span></a>           \n                        {/if}\n                        </div>\n                        \n                        <div class=\"first ribbon\">\n                            <div class=\"notifications-count\" id=\"notifications-count\"><span>1</span></div>\n                            <a href=\"#\" data-dropdown=\"notifications\" class=\"notifications-icon\"></a>\n                        </div>\n                    </div>\n                    <div class=\"header-right\">\n                        <div class=\"second ribbon\">\n                            <div class=\"actions-count\" id=\"actions-count\"><span>99+</span></div>\n                            <a href=\"#\" data-dropdown=\"actions\" class=\"actions-icon\"></a>\n                        </div>\n                        <div class=\"post-icon\">\n                            <a href=\"new-post.php\" class=\"post-btn\"  data-icon=\"✎\" id=\"post-btn\"><span class=\"visuallyhidden\">New Post</span></a>\n                        </div>\n                    </div>\n                </header>\n                <nav id=\"nav\" class=\"nav\" role=\"navigation\">\n                    <h3 class=\"name show-for-small\" data-icon=\"','',1365130398,7,'n',0,'','n','n','o',0),
	(12,1,2,'footer','y','webpage','        </div> <!-- #main -->\n      </div> <!-- #page -->\n  </div> <!-- #outer-wrap -->\n        <script>\n            document.write(\'<script src={site_url}js/vendor/\'\n            + (\'__proto__\' in {} ? \'zepto\' : \'jquery\')\n            + \'.js><\\/script>\');\n        </script>\n        <script src=\"{site_url}js/vendor/foundation/foundation.js\"></script>\n        <script src=\"{site_url}js/vendor/foundation/foundation.topbar.js\"></script>\n        <script src=\"{site_url}js/vendor/foundation/foundation.forms.js\"></script>\n        <script src=\"{site_url}js/vendor/foundation/foundation.dropdown.js\"></script>\n        <script src=\"{site_url}js/vendor/foundation/foundation.section.js\"></script>\n        \n        <script src=\"{site_url}js/vendor/jwplayer/jwplayer.js\"></script>\n        \n        <script>\n            $(document).foundation();\n        </script>\n\n        <script src=\"{site_url}js/main-ck.js\"></script>\n    </body>\n</html>','',1365130398,7,'n',0,'','n','n','o',0),
	(36,1,13,'index','y','webpage','{embed=\'includes/header\'}\n\n<!-- End Header and Nav -->\n\n    <!-- This has been source ordered to come first in the markup (and on small devices) but to be to the right of the nav on larger screens -->\n\n        <div class=\"great-wall\">\n        \n	        {if logged_out}\n				{embed=\'includes/login\'}\n			{/if}        \n	        \n	        <!--See all Status-->\n	        {embed=\'includes/status-all\'}\n        \n        </div> <!-- .great-wall -->\n        <!-- This is source ordered to be pulled to the left on larger screens -->\n        <div class=\"profile-container panel hide-for-small\">\n	        {embed=\'includes/sidebar-profile\'}\n        </div>\n        \n    </div> <!-- #main -->\n\n{embed=\'includes/footer\'}','',1364857615,8,'n',0,'','n','n','o',0),
	(37,1,13,'test','n','webpage','<!DOCTYPE html>\n<!--[if IE 8]> 				 <html class=\"no-js lt-ie9\" lang=\"en\"> <![endif]-->\n<!--[if gt IE 8]><!--> <html class=\"no-js\" lang=\"en\"> <!--<![endif]-->\n\n    <head>\n        <meta charset=\"utf-8\" />\n        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, user-scalable=no\" />\n        <title>NYU Shanghai-net</title>\n        \n        <!-- link rel=\"stylesheet\" href=\"/2017introductions/css/normalize.css\" / -->\n        <!-- link rel=\"stylesheet\" href=\"/2017introductions/css/screen.css\" / -->\n        <!-- script src=\"/2017introductions/js/vendor/custom.modernizr.js\"></script -->\n	<script type=\'text/javascript\' src=\'//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js\'></script>        \n    </head>\n    <body>\n\n	        {if logged_out}\n				<?php\n				// process SSO\n				$_POST[\'eppn\'] = \'\';\n				// user passed NYU authentication\n				if (isset($_POST[\'eppn\']) ) {\n//&& !empty($_POST[\'eppn\']) ) {\n\n// echo \"<pre>\";\n// print_r($_SERVER);\n// echo \"</pre>\";\n				?>\n{exp:ajax_form class=\"Member\" method=\"member_login\"}\n<div style=\"display:hidden\">\n<form id=\"loginForm\" method=\'post\' action=\'{post_url}\'>\n<input type=\'hidden\' name=\'XID\' value=\'{xid}\' />\n<input type=\'hidden\' name=\'ACT\' value=\'{action_id}\' />\n<input type=\'text\' id=\'username\' name=\'username\' value=\"<?php echo $_POST[\'eppn\']; ?>\" />\n<input type=\'submit\' value=\'Login\' id=\'btnLogin\' />\n</form>\n</div>\n\n<script type=\"text/javascript\">\n$(document).ready(function() {\n	\n	//$(\"#btnLogin\").click(function(){\n	$(\"#loginForm\").submit(function(e){\n		e.preventDefault();	\n		console.log(\'submitted\');\n		$.ajax({\n		  type: \"POST\",\n		  url: \"{post_url}\",\n		  data: $(\"#loginForm\").serializeArray()\n		}).done(function( msg ) {\n		  console.log(msg);\n		});		\n\n	}); // end click\n\nif ($(\'#username\').val() != \'\') {\n	$(\"#btnLogin\").click();\n} \n\n});\n</script>\n{/exp:ajax_form}\n\n<?php\n	\n		}\n?>\n\n		{/if}        \n	        \n</body>\n</html>','',1364854287,0,'n',0,'','n','y','o',0),
	(41,1,2,'comments','y','webpage','{if embed:summary==\'yes\'}\r\n\r\n{exp:channel:entries channel=\'wall_posts\' search:status_owner=\'={embed:id_status}\' orderby=\'date\' sort=\'desc\' limit=\'1\' dynamic=\'no\'}\r\n\r\n<article class=\"most-recent\">\r\n{exp:user:stats member_id=\'{author_id}\'}\r\n    <h5>Most recent comment by <a href=\"{path=\'profile\'}/{member_id}\">{screen_name}</a></h5>\r\n    <p>{thepost}</p>\r\n    <span>{entry_date format=\"%F %j, %Y at %h:%i %a\"}</span>\r\n{/exp:user:stats}\r\n</article>\r\n{/exp:channel:entries}\r\n\r\n{if:else}\r\n\r\n{exp:channel:entries channel=\'wall_posts\' search:status_owner=\'={embed:id_status}\' orderby=\'date\' sort=\'desc\' dynamic=\'no\'}\r\n\r\n<article class=\"comment\">\r\n    {exp:user:stats member_id=\'{author_id}\'}\r\n    <div class=\"author\">\r\n        <div class=\"photo\">\r\n            <a href=\"{path=\'profile\'}/{member_id}\">\r\n                {if photo_filename}\r\n    	    	<img src=\"{photo_url}\">\r\n        	    {if:else}\r\n                <img src=\"http://placehold.it/40x40&text=NO IMAGE\">\r\n                {/if}\r\n            </a>\r\n        </div> <!-- .photo -->\r\n        <div class=\"info\">\r\n            <h4><a href=\"{path=\'profile\'}/{member_id}\">{screen_name}</a></h4>\r\n            <span>{entry_date format=\"%F %j, %Y at %h:%i %a\"}</span>\r\n        </div> <!-- .info -->	    \r\n    </div><!-- .author -->\r\n            \r\n    <div class=\"post-content\">\r\n        <p>{thepost}</p>\r\n    </div> <!-- .post-content -->	\r\n    {exp:user:stats}\r\n</article>\r\n{/exp:channel:entries}\r\n\r\n{exp:safecracker channel=\"wall_posts\" class=\"comment-form\" return=\"{path=\'content/index\'}\" dynamic=\"no\" safecracker_head=\"no\" secure_action=\"no\" secure_return=\"no\"}\r\n<input type=\"hidden\" name=\"title\" id=\"title\" value=\"a wall post\" />\r\n<input type=\"hidden\" name=\"entry_date\" value=\"{entry_date}\" />\r\n<input type=\"hidden\" name=\"author_id\" value=\"{logged_in_member_id}\" />\r\n<input type=\"hidden\" name=\"url_title\" id=\"url_title\" value=\"{url_title}\" />\r\n<input type=\"hidden\" name=\"status_owner\" value=\"{embed:id_status}\" /> \r\n\r\n<input type=\"text\" name=\"thepost\" placeholder=\"Write something...\">\r\n<input type=\"submit\" name=\"submit\" value=\"Submit\">\r\n\r\n{/exp:safecracker}\r\n\r\n{/if}',NULL,1365119522,1,'n',0,'','n','n','o',0),
	(42,1,1,'poststatus','y','webpage','{embed=\'includes/header\'}\n\n<section class=\"new-post\">\n	{exp:friends:status_form return=\"content/poststatus/?flag=1\" form_name=\"form1\"}\n		<input type=\"hidden\" name=\"friends_status_private\" id=\"friends_status_private\" value=\"n\" />\n		<button id=\"cancel\" name=\"cancel\" value=\"Cancel\" class=\"cancel\">Cancel</button>\n		<textarea id=\"post\" name=\"friends_status\" placeholder=\"Show, tell, or ask.\" rows=\"8\"></textarea>\n		<input type=\"submit\" value=\"Add Media\" id=\"post\" class=\"post\" onclick=\"javascript:first_form()\">\n	\n		{exp:friends:status limit=\"1\" member_id=\"{logged_in_member_id}\"}\n		<?php echo $member_owner_id= \'{friends_status_id}\'; ?> \n		{/exp:friends:status} \n	\n	{/exp:friends:status_form} \n    \n    {exp:safecracker channel=\"media\" return=\"content/index\" dynamic=\"no\" safecracker_head=\'yes\' include_jquery=\'yes\' json=\'no\'}\n		<input type=\"hidden\" name=\"title\" id=\"title\" value=\"Status Media Elements\" />\n		<input type=\"hidden\" name=\"entry_date\" value=\"{entry_date}\" />\n		<input type=\"hidden\" name=\"author_id\" value=\"{logged_in_member_id}\" />\n		<input type=\"hidden\" name=\"url_title\" id=\"url_title\" value=\"{url_title}\" />\n		<input type=\"hidden\" name=\"member_owner_id\" value=\"<?php echo $member_owner_id; ?>\" />\n		\n                            <div class=\"media\">\n                                <div class=\"post-button photo\" id=\"photo\">\n                                    <a href=\"#\" rel=\"ignore\" data-icon=\"',NULL,1365120461,1,'n',0,'','n','n','o',0),
	(43,1,1,'poststatus_media','y','webpage','\n<?php echo \'Aqui\'; ?>\n{logged_in_member_id}\n\n	{exp:safecracker channel=\"media\" return=\"content/index\" dynamic=\"no\" }\n		<input type=\"hidden\" name=\"title\" id=\"title\" value=\"Status Media Elements\" />\n		<input type=\"hidden\" name=\"entry_date\" value=\"{entry_date}\" />\n		<input type=\"hidden\" name=\"author_id\" value=\"{logged_in_member_id}\" />\n		<input type=\"hidden\" name=\"url_title\" id=\"url_title\" value=\"{url_title}\" />\n		<input type=\"hidden\" name=\"status_owner_media\" value=\"{embed:id_status}\" />\n		\n		<div class=\"media\">\n			<div class=\"post-button photo\" id=\"photo\">\n				<a href=\"#\" rel=\"ignore\" data-icon=\"',NULL,1365120461,1,'n',0,'','n','n','o',0),
	(33,1,2,'status-profile','y','webpage','{exp:query sql=\"SELECT status_id, member_id, status, status_date FROM exp_friends_status WHERE site_id =\'1\' AND member_id=\'{segment_2}\' ORDER BY status_date DESC limit 10\"}\r\n{exp:user:stats member_id=\'{segment_3}\'}\r\n\r\n<article class=\"post section-container accordion\" data-section=\"accordion\">\r\n    <div class=\"post-header author\">\r\n        <div class=\"user-img photo\">\r\n            <a href=\"{path=\'profile\'}/{member_id}\">\r\n                {if photo_filename}\r\n                <img src=\"{photo_url}{photo_filename}\">\r\n                {if:else}\r\n                <img src=\"http://placehold.it/90x90&text=NO IMAGE\">\r\n                {/if}\r\n            </a>\r\n        </div> <!-- .photo -->\r\n        <div class=\"details info\">\r\n            <h4><a href=\"{path=\'profile\'}/{member_id}\">{screen_name}</a></h4>\r\n            <span>{status_date format=\'%F %j, %Y\'}<br>from {occupation}</span>\r\n        </div> <!-- .info -->	    \r\n    </div><!-- .author -->\r\n            \r\n    <div class=\"status post-content\">\r\n        <p>{status}</p>\r\n    </div> <!-- .post-content -->	\r\n            \r\n    <section class=\"comments section\">\r\n        <div class=\"controls title\">\r\n            <a href=\"#\" class=\"comment-icon\" rel=\"ignore\">\r\n                {embed=\'includes/comment-counter\' id_status=\'{status_id}\'} <!-- Counter of Comments -->\r\n            </a>\r\n            {embed=\'includes/comments\' id_member=\'{member_id}\' id_status=\'{status_id}\' summary=\'yes\'}\r\n        </div> <!-- .comment-count -->\r\n        <div class=\"comment-feed content\">\r\n            {embed=\'includes/comments\' id_member=\'{member_id}\' id_status=\'{status_id}\'}\r\n        </div>\r\n    </section> <!-- .comments -->    \r\n</article>\r\n\r\n{/exp:user:stats}\r\n{/exp:query}\r\n','',1365130398,7,'n',0,'','n','n','o',9),
	(32,1,2,'status-all','y','webpage','{exp:query sql=\"SELECT status_id, member_id, status, status_date FROM exp_friends_status WHERE site_id =\'1\' ORDER BY status_date DESC limit 10\"}\r\n{exp:user:stats member_id=\'{member_id}\'}\r\n<article class=\"post section-container accordion\" data-section=\"accordion\">\r\n    <div class=\"post-header author\">\r\n        <div class=\"user-img photo\">\r\n            <a href=\"{path=\'profile\'}/{member_id}}\">\r\n                {if photo_filename}\r\n                <img src=\"{photo_url}{photo_filename}\">\r\n                {if:else}\r\n                <img src=\"http://placehold.it/90x90&text=NO IMAGE\">\r\n                {/if}\r\n            </a>\r\n        </div> <!-- .photo -->\r\n        <div class=\"details info\">\r\n            <h4><a href=\"{path=\'profile\'}/{member_id}\">{screen_name}</a></h4>\r\n            <span>{status_date format=\'%F %j, %Y\'}<br>from {occupation}</span>\r\n        </div> <!-- .info -->	    \r\n    </div><!-- .author -->\r\n            \r\n    <div class=\"status post-content\">\r\n        <p>{status}</p>\r\n    </div> <!-- .post-content -->	\r\n            \r\n    <section class=\"comments section\">\r\n        <div class=\"controls title\">\r\n            <a href=\"#\" class=\"comment-icon\" rel=\"ignore\">\r\n                {embed=\'includes/comment-counter\' id_status=\'{status_id}\'} <!-- Counter of Comments -->\r\n            </a>\r\n            {embed=\'includes/comments\' id_member=\'{member_id}\' id_status=\'{status_id}\' summary=\'yes\'}\r\n        </div> <!-- .comment-count -->\r\n        <div class=\"comment-feed content\">\r\n            {embed=\'includes/comments\' id_member=\'{member_id}\' id_status=\'{status_id}\'}\r\n        </div>\r\n    </section> <!-- .comments -->    \r\n</article>\r\n{/exp:user:stats}\r\n{/exp:query}','',1365130398,7,'n',0,'','n','n','o',9),
	(35,1,1,'test','y','webpage','<!DOCTYPE html>\n<!--[if IE 8]> 				 <html class=\"no-js lt-ie9\" lang=\"en\"> <![endif]-->\n<!--[if gt IE 8]><!--> <html class=\"no-js\" lang=\"en\"> <!--<![endif]-->\n\n    <head>\n        <meta charset=\"utf-8\" />\n        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, user-scalable=no\" />\n        <title>NYU Shanghai-net</title>\n        \n        <!-- link rel=\"stylesheet\" href=\"/2017introductions/css/normalize.css\" / -->\n        <!-- link rel=\"stylesheet\" href=\"/2017introductions/css/screen.css\" / -->\n        <!-- script src=\"/2017introductions/js/vendor/custom.modernizr.js\"></script -->\n	<script type=\'text/javascript\' src=\'//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js\'></script>        \n    </head>\n    <body>\n\n	        {if logged_out}\n				<?php\n				// process SSO\n				// $_POST[\'eppn\'] = \'\';\n				// user passed NYU authentication\n				if (isset($_SERVER[\'eppn\']) && !empty($_SERVER[\'eppn\']) ) {\n					// ) {\n/*\necho \"<pre>\";\nprint_r($_SERVER);\necho \"</pre>\";\n*/\n				?>\n{exp:ajax_form class=\"Member\" method=\"member_login\"}\n<div style=\"display:hidden\">\n<form id=\"loginForm\" method=\'post\' action=\'{post_url}\'>\n<input type=\'hidden\' name=\'XID\' value=\'{xid}\' />\n<input type=\'hidden\' name=\'ACT\' value=\'{action_id}\' />\n<<<<<<< HEAD\n<input type=\'text\' id=\'username\' name=\'username\' value=\"<?php echo $_SERVER[\'eppn\']; ?>\" />\n=======\n<input type=\'text\' id=\'username\' name=\'username\' value=\"<?php echo $_POST[\'eppn\']; ?>\" />\n>>>>>>> local-ahead\n<input type=\'submit\' value=\'Login\' id=\'btnLogin\' />\n</form>\n</div>\n\n<script type=\"text/javascript\">\n$(document).ready(function() {\n	\n	//$(\"#btnLogin\").click(function(){\n	$(\"#loginForm\").submit(function(e){\n		e.preventDefault();	\n		console.log(\'submitted\');\n		$.ajax({\n		  type: \"POST\",\n		  url: \"{post_url}\",\n		  data: $(\"#loginForm\").serializeArray()\n		}).done(function( msg ) {\n			// take action based on response\n			console.log(msg);\n			 var v = msg.charAt(0);\n			if (v == 0){\n				// go to ERROR page - user not in approved list\n				// window.location();\n			} else if (v == 1){\n				// normal login\n				// window.location({path=\"content\"});\n				\n			} else if (v == 2){\n				// new user created\n				// window.location({path=\"actions\"});\n			} \n		});		\n\n	}); // end click\n\nif ($(\'#username\').val() != \'\') {\n	$(\"#btnLogin\").click();\n} \n\n});\n</script>\n{/exp:ajax_form}\n<?php\n		}\n?>\n\n		{/if}        \n	        \n</body>\n</html>','',1365014435,7,'n',0,'','n','y','o',116),
	(34,1,2,'commets','y','webpage','\r\n{if embed:summary!=\'yes\'}\r\n{exp:safecracker channel=\"wall_posts\" return=\"/2017introductions/content/index\" dynamic=\"no\" safecracker_head=\"no\" secure_action=\"yes\" secure_return=\"yes\"}\r\n<input type=\"hidden\" name=\"title\" id=\"title\" value=\"a wall post\" />\r\n<input type=\"hidden\" name=\"entry_date\" value=\"{entry_date}\" />\r\n<input type=\"hidden\" name=\"author_id\" value=\"{logged_in_member_id}\" />\r\n<input type=\"hidden\" name=\"url_title\" id=\"url_title\" value=\"{url_title}\" />\r\n<input type=\"hidden\" name=\"status_owner\" value=\"{embed:id_status}\" /> \r\n\r\n<input type=\"text\" name=\"thepost\" value=\"Write something...\" style=\"margin-bottom:2px; display:inline\" onfocus=\"if\r\n(this.value==this.defaultValue) this.value=\'\';\">\r\n<input type=\"submit\" name=\"submit\" alt=\"Submit\">\r\n\r\n{/exp:safecracker}\r\n{/if}\r\n\r\n{exp:channel:entries channel=\'wall_posts\' search:status_owner=\'={embed:id_status}\' orderby=\'date\' sort=\'desc\' limit=\'10\' dynamic=\'no\' {if embed:summary!=\'yes\'} limit=\'2\' {if:else} offset=\'2\' {/if}}\r\n<p class=\"comment\">\r\n	{exp:user:stats member_id=\'{author_id}\'}\r\n	<a href=\"/2017introductions/member-list/profile-view/{author_id}\">\r\n	    {if photo_filename}\r\n	    	<img src=\"{photo_url}\" width=\"40\"/>\r\n	    {if:else}\r\n	    	<img src=\"/2017introductions/img/imagen.jpg\"  width=\"40\"/>\r\n	    {/if}\r\n	</a>\r\n    <a href=\"/2017introductions/profile/{author_id}\">{screen_name}</a> <br>{thepost}<br>\r\n    {exp:user:stats}\r\n    <span>{entry_date format=\"%F %j, %Y at %h:%i %a\"}</span>\r\n</p>\r\n{/exp:channel:entries}','',1365130398,7,'n',0,'','n','n','o',0),
	(38,1,1,'postcomment','y','webpage','<p><strong>Post a Comment:</strong></p>\r\n\r\n{exp:safecracker channel=\"wall_posts\" return=\"{path=\'content\'}\" dynamic=\"no\" safecracker_head=\"no\" secure_action=\"yes\" secure_return=\"yes\"}\r\n<input type=\"hidden\" name=\"title\" id=\"title\" value=\"a wall post\" />\r\n<input type=\"hidden\" name=\"entry_date\" value=\"{entry_date}\" />\r\n<input type=\"hidden\" name=\"author_id\" value=\"{logged_in_member_id}\" />\r\n<input type=\"hidden\" name=\"url_title\" id=\"url_title\" value=\"{url_title}\" />\r\n<input type=\"hidden\" name=\"status_owner\" value=\"1\" /> \r\n\r\n<input type=\"text\" name=\"thepost\" value=\"Write something...\" style=\"margin-bottom:2px; display:inline\" onfocus=\"if\r\n(this.value==this.defaultValue) this.value=\'\';\">\r\n<input type=\"submit\" name=\"submit\" alt=\"Submit\">\r\n{/exp:safecracker}','',1365130398,7,'n',0,'','n','n','o',1),
	(39,1,13,'sections','y','webpage','{embed=\'includes/header\'}\n\n<div class=\"row\">\n    <div class=\"small-12 columns\">\n        <div class=\"section-container vertical-nav\" data-section=\"vertical-nav\" style=\"\">\n              <section class=\"section\" style=\"\">\n                <p class=\"title\" style=\"left: 0px;\"><a href=\"#\">Section 1</a></p>\n                <div class=\"content\" style=\"\">\n                  <ul class=\"side-nav\">\n                    <li><a href=\"#\">Link 1</a></li>\n                    <li><a href=\"#\">Link 2</a></li>\n                    <li><a href=\"#\">Link 3</a></li>\n                    <li class=\"divider\"></li>\n                    <li><a href=\"#\">Link 1</a></li>\n                  </ul>\n                </div>\n              </section>\n              <section class=\"section\" style=\"\">\n                <p class=\"title\" style=\"left: 159px;\"><a href=\"#\">Section 2</a></p>\n                <div class=\"content\" style=\"\">\n                  <ul class=\"side-nav\">\n                    <li><a href=\"#\">Link 1</a></li>\n                    <li><a href=\"#\">Link 2</a></li>\n                    <li><a href=\"#\">Link 3</a></li>\n                    <li class=\"divider\"></li>\n                    <li><a href=\"#\">Link 1</a></li>\n                  </ul>\n                </div>\n              </section>\n            </div>\n    </div>\n</div>\n\n{embed=\'includes/footer\'}',NULL,1365007711,1,'n',0,'','n','n','o',0),
	(40,1,2,'comment-counter','y','webpage','{exp:query sql=\"SELECT count(*) as comment_count FROM exp_channel_data where field_id_2=\'{embed:id_status}\' \"}\r\n\r\n{if comment_count > 99}\r\n<span>99+</span>\r\n{if:else}\r\n<span>{comment_count}</span>\r\n{/if}\r\n\r\n{/exp:query}','',1365130398,7,'n',0,'','n','n','o',0),
	(31,1,2,'sidebar-profile','y','webpage','{exp:user:stats}\n	{if photo_filename}\n		<a href=\"{path=\'profile\'}/{member_id}\"><img src=\"{photo_url}{photo_filename}\" /></a>\n	{if:else}\n		<a href=\"{path=\'profile\'}/{member_id}\"><img src=\"http://placehold.it/300x240&text=NO IMAGE\" /></a>\n	{/if}\n	<h5><a href=\"{path=\'profile\'}/{member_id}\">{screen_name}</a></h5>\n{/exp:user:stats}                ','',1365130398,7,'n',0,'','n','n','o',0),
	(30,1,2,'login','y','webpage','<?php\n/*\nif (isset($_POST[\'eppn\'])) {\n	// SSO values passed - fill in form and auto submit it!\n}\n?>\n\n{exp:ajax_form class=\"Member\" method=\"member_login\"}\n\n<form id=\"loginForm\" method=\'post\' action=\'{post_url}\'>\n<input type=\'hidden\' name=\'XID\' value=\'{xid}\' />\n<input type=\'hidden\' name=\'ACT\' value=\'{action_id}\' />\n<input type=\'text\' name=\'username\' value=\"chris.muro\" />\n<input type=\'password\' name=\'password\' value=\"chris001\" />\n<input type=\'button\' name=\'Login\' id=\'btnLogin\'/>\n</form>\n\n<script type=\'text/javascript\' src=\'//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js\'></script>\n<script type=\"text/javascript\">\n	$(\"#btnLogin\").click(function(){\n		$.post(\'{post_url}\',\n			$(\"#loginForm\").serializeArray(),\n			function(data){\n			// handle response here, parse html, or\n			// json if using my output class mod.\n			window.location = \'/profile/index\';\n		}); // end post\n	}); // end click\n\n</script>\n{/exp:ajax_form}\n\n  <?php \n  */\n?>\n          <article class=\"post\">\n          	<div class=\"content\">\n				<p><strong>Sign In</strong></p>\n				{exp:member:login_form id=\"loginform\" return=\"/profile/index\"}\n				<p>\n				<label>Username</label><br>\n				<input type=\"text\" id=\"username\" name=\"username\" value=\"\" maxlength=\"32\" size=\"25\">\n				</p>\n				\n				<p>\n				<label>Password</label><br>\n				<input type=\"password\" id=\"password\" name=\"password\" value=\"\" maxlength=\"32\" size=\"25\">\n				</p>\n				        \n				{if auto_login}\n				<p><input type=\"checkbox\" name=\"auto_login\" value=\"1\"> Auto-login on future visits</p>\n				{/if}\n				\n				<p><input type=\"checkbox\" name=\"anon\" value=\"1\" checked=\"checked\"> Show my name in the online users list</p>\n				<p><input type=\"submit\" name=\"submit\" value=\"Submit\"></p>\n				{/exp:member:login_form}	\n			</div>	\n        </article>\n\n<?php /* <script type=\'text/javascript\' src=\'//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js\'></script>\n<script type=\"text/javascript\">\n$( document ).ready(function() {\n	$(\'#username\').val(\"chris.muro\");\n	$(\'#password\').val(\"chris001\");\n	$(\'#loginform\').submit();\n});\n</script>\n*/\n?>','',1364858136,1,'n',0,'','n','y','o',0),
	(26,1,7,'add','y','webpage','{embed=\'includes/header\'}\n\n{exp:user:stats}\n    <div class=\"page\">\n        <section class=\"full-profile\">\n        <!-- all profiles are contained in .full-profile -->\n            <div class=\"button-wrapper\">\n                <a href=\"{path=\'member-list\'}\">Back to Members List</a>\n            </div> <!-- .button-wrapper; profile details fall below this -->\n            <div class=\"profile-photo\"> <!-- takes up the left column on larger screens, stacks on smaller screens -->\n            	{if photo_filename}\n                <img src=\"{photo_url}{photo_filename}\">\n                {if:else}\n                <img src=\"http://placehold.it/300x240&text=[PROFILE]\" />\n                {/if}\n                \n                {exp:friends:members member_id=\"{segment_3}\"} \n				    <div class=\"name\">\n				    <p>\n				    {friends_screen_name}’s Profile<br>\n				    Email: {friends_email}<br>\n				    Total Entries: {friends_total_entries}<br>\n				    Join Date: {friends_join_date  format=\"%m %d, %Y\"}\n				    </p>\n				    </div>\n				{/exp:friends:members}                \n                \n                \n            </div> <!-- .profile-photo -->\n            \n            <div class=\"profile-details\">\n                \n                <div>\n				{exp:friends:add\n				    notification_request=\"friends_notifications/friend_request\"\n				    notification_confirm=\"friends_notifications/friend_confirm\"\n				    subject_request=\"{friends_inviter_screen_name} added you as a friend!\"\n				    subject_confirm=\"{friends_inviter_screen_name} confirmed your friend request!\"\n				}\n				 \n				    {if success}\n				        <h3>Successful!</h3>\n				    {/if}\n				    {if failure}\n				        <h3>Error!</h3>\n				    {/if}\n				 \n				    <p>{friends_message}</p>\n				 \n				{/exp:friends:add}                \n                \n                </div>\n                \n            </div> <!-- .profile-details takes up the right column on large screens, stacks on smaller screens-->\n        \n        </section> <!-- .full-profile -->\n    \n    </div> <!-- .page -->\n{/exp:user:stats}\n\n{embed=\'includes/footer\'}','',1365130398,7,'n',0,'','n','n','o',10),
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
	(515,'VuywtNANvaZzxjQmssZqcyzoj',1365178170,'a:12:{s:9:\"member_id\";i:7;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:8:\"bwhitton\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:2:\"no\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";s:15:\"override_return\";s:57:\"https://shanghai.nyu.edu/introductions/index.php?/profile\";}'),
	(514,'ZGDjwwXgATqAfMamSkTysdsso',1365176290,'a:12:{s:9:\"member_id\";i:7;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:8:\"bwhitton\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:2:\"no\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";s:15:\"override_return\";s:57:\"https://shanghai.nyu.edu/introductions/index.php?/profile\";}'),
	(513,'zlCvDuXRsOcgpCRjVwWqVawFl',1365172951,'a:12:{s:9:\"member_id\";i:7;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:8:\"bwhitton\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:2:\"no\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";s:15:\"override_return\";s:57:\"https://shanghai.nyu.edu/introductions/index.php?/profile\";}'),
	(512,'xmsoTFnreFgAhuJyKiMAxuCIP',1365172940,'a:12:{s:9:\"member_id\";i:25;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:7:\"Jerllin\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:2:\"no\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";s:15:\"override_return\";s:57:\"https://shanghai.nyu.edu/introductions/index.php?/profile\";}'),
	(511,'gxXytNYrByuSUXcRfivOOOkhl',1365172899,'a:12:{s:9:\"member_id\";i:7;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:8:\"bwhitton\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:2:\"no\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";s:15:\"override_return\";s:57:\"https://shanghai.nyu.edu/introductions/index.php?/profile\";}'),
	(510,'VbjlamIjIOykTSwKBSwOYYKXr',1365172888,'a:12:{s:9:\"member_id\";i:25;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:7:\"Jerllin\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:2:\"no\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";s:15:\"override_return\";s:57:\"https://shanghai.nyu.edu/introductions/index.php?/profile\";}'),
	(509,'JlznOAqcqArQMnwMCfWAhxsTd',1365172874,'a:12:{s:9:\"member_id\";i:25;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:7:\"Jerllin\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:2:\"no\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";s:15:\"override_return\";s:57:\"https://shanghai.nyu.edu/introductions/index.php?/profile\";}'),
	(508,'JyKPYaEtZRVDRlPPHLoWRKCIn',1365172792,'a:12:{s:9:\"member_id\";i:25;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:7:\"Jerllin\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:2:\"no\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";s:15:\"override_return\";s:57:\"https://shanghai.nyu.edu/introductions/index.php?/profile\";}'),
	(505,'JGUIHWQKOWSNlUOMlfQkrwATP',1365172769,'a:12:{s:9:\"member_id\";i:25;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:7:\"Jerllin\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:2:\"no\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";s:15:\"override_return\";s:57:\"https://shanghai.nyu.edu/introductions/index.php?/profile\";}'),
	(507,'GGwJryNwkTPeqgQvaeOWIsvhp',1365172780,'a:12:{s:9:\"member_id\";i:7;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:8:\"bwhitton\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:2:\"no\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";s:15:\"override_return\";s:57:\"https://shanghai.nyu.edu/introductions/index.php?/profile\";}'),
	(506,'gDHdDUTjJXeVXuQRfJjSsamRB',1365172779,'a:12:{s:9:\"member_id\";i:25;s:6:\"checks\";s:0:\"\";s:13:\"custom_checks\";s:0:\"\";s:8:\"username\";s:7:\"Jerllin\";s:17:\"username_override\";s:0:\"\";s:16:\"exclude_username\";s:0:\"\";s:8:\"required\";s:0:\"\";s:8:\"group_id\";s:0:\"\";s:17:\"password_required\";s:2:\"no\";s:13:\"secure_action\";s:2:\"no\";s:29:\"screen_name_password_required\";s:1:\"y\";s:15:\"override_return\";s:57:\"https://shanghai.nyu.edu/introductions/index.php?/profile\";}');

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
