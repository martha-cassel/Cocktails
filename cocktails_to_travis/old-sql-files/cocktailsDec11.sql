-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 11, 2012 at 05:57 PM
-- Server version: 5.5.9
-- PHP Version: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cocktails`
--
CREATE DATABASE `cocktails` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cocktails`;

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wp_commentmeta`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` VALUES(1, 1, 'Mr WordPress', '', 'http://wordpress.org/', '', '2012-11-10 15:38:45', '2012-11-10 15:38:45', 'Hi, this is a comment.<br />To delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `wp_links`
--

INSERT INTO `wp_links` VALUES(1, 'http://codex.wordpress.org/', 'Documentation', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', '');
INSERT INTO `wp_links` VALUES(2, 'http://wordpress.org/news/', 'WordPress Blog', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', 'http://wordpress.org/news/feed/');
INSERT INTO `wp_links` VALUES(3, 'http://wordpress.org/support/', 'Support Forums', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', '');
INSERT INTO `wp_links` VALUES(4, 'http://wordpress.org/extend/plugins/', 'Plugins', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', '');
INSERT INTO `wp_links` VALUES(5, 'http://wordpress.org/extend/themes/', 'Themes', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', '');
INSERT INTO `wp_links` VALUES(6, 'http://wordpress.org/support/forum/requests-and-feedback', 'Feedback', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', '');
INSERT INTO `wp_links` VALUES(7, 'http://planet.wordpress.org/', 'WordPress Planet', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=231 ;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` VALUES(1, 'siteurl', 'http://localhost:8888/cocktails_wp', 'yes');
INSERT INTO `wp_options` VALUES(2, 'blogname', 'cocktails_wp', 'yes');
INSERT INTO `wp_options` VALUES(3, 'blogdescription', 'Just another WordPress site', 'yes');
INSERT INTO `wp_options` VALUES(4, 'users_can_register', '0', 'yes');
INSERT INTO `wp_options` VALUES(5, 'admin_email', 'macassel1@gmail.com', 'yes');
INSERT INTO `wp_options` VALUES(6, 'start_of_week', '1', 'yes');
INSERT INTO `wp_options` VALUES(7, 'use_balanceTags', '0', 'yes');
INSERT INTO `wp_options` VALUES(8, 'use_smilies', '1', 'yes');
INSERT INTO `wp_options` VALUES(9, 'require_name_email', '1', 'yes');
INSERT INTO `wp_options` VALUES(10, 'comments_notify', '1', 'yes');
INSERT INTO `wp_options` VALUES(11, 'posts_per_rss', '10', 'yes');
INSERT INTO `wp_options` VALUES(12, 'rss_use_excerpt', '0', 'yes');
INSERT INTO `wp_options` VALUES(13, 'mailserver_url', 'mail.example.com', 'yes');
INSERT INTO `wp_options` VALUES(14, 'mailserver_login', 'login@example.com', 'yes');
INSERT INTO `wp_options` VALUES(15, 'mailserver_pass', 'password', 'yes');
INSERT INTO `wp_options` VALUES(16, 'mailserver_port', '110', 'yes');
INSERT INTO `wp_options` VALUES(17, 'default_category', '1', 'yes');
INSERT INTO `wp_options` VALUES(18, 'default_comment_status', 'open', 'yes');
INSERT INTO `wp_options` VALUES(19, 'default_ping_status', 'open', 'yes');
INSERT INTO `wp_options` VALUES(20, 'default_pingback_flag', '0', 'yes');
INSERT INTO `wp_options` VALUES(21, 'default_post_edit_rows', '20', 'yes');
INSERT INTO `wp_options` VALUES(22, 'posts_per_page', '10', 'yes');
INSERT INTO `wp_options` VALUES(23, 'date_format', 'F j, Y', 'yes');
INSERT INTO `wp_options` VALUES(24, 'time_format', 'g:i a', 'yes');
INSERT INTO `wp_options` VALUES(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes');
INSERT INTO `wp_options` VALUES(26, 'links_recently_updated_prepend', '<em>', 'yes');
INSERT INTO `wp_options` VALUES(27, 'links_recently_updated_append', '</em>', 'yes');
INSERT INTO `wp_options` VALUES(28, 'links_recently_updated_time', '120', 'yes');
INSERT INTO `wp_options` VALUES(29, 'comment_moderation', '0', 'yes');
INSERT INTO `wp_options` VALUES(30, 'moderation_notify', '1', 'yes');
INSERT INTO `wp_options` VALUES(31, 'permalink_structure', '', 'yes');
INSERT INTO `wp_options` VALUES(32, 'gzipcompression', '0', 'yes');
INSERT INTO `wp_options` VALUES(33, 'hack_file', '0', 'yes');
INSERT INTO `wp_options` VALUES(34, 'blog_charset', 'UTF-8', 'yes');
INSERT INTO `wp_options` VALUES(35, 'moderation_keys', '', 'no');
INSERT INTO `wp_options` VALUES(36, 'active_plugins', 'a:2:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:39:"column-shortcodes/column-shortcodes.php";}', 'yes');
INSERT INTO `wp_options` VALUES(37, 'home', 'http://localhost:8888/cocktails_wp', 'yes');
INSERT INTO `wp_options` VALUES(38, 'category_base', '', 'yes');
INSERT INTO `wp_options` VALUES(39, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes');
INSERT INTO `wp_options` VALUES(40, 'advanced_edit', '0', 'yes');
INSERT INTO `wp_options` VALUES(41, 'comment_max_links', '2', 'yes');
INSERT INTO `wp_options` VALUES(42, 'gmt_offset', '0', 'yes');
INSERT INTO `wp_options` VALUES(43, 'default_email_category', '1', 'yes');
INSERT INTO `wp_options` VALUES(44, 'recently_edited', '', 'no');
INSERT INTO `wp_options` VALUES(45, 'template', 'cocktails', 'yes');
INSERT INTO `wp_options` VALUES(46, 'stylesheet', 'cocktails', 'yes');
INSERT INTO `wp_options` VALUES(47, 'comment_whitelist', '1', 'yes');
INSERT INTO `wp_options` VALUES(48, 'blacklist_keys', '', 'no');
INSERT INTO `wp_options` VALUES(49, 'comment_registration', '0', 'yes');
INSERT INTO `wp_options` VALUES(50, 'html_type', 'text/html', 'yes');
INSERT INTO `wp_options` VALUES(51, 'use_trackback', '0', 'yes');
INSERT INTO `wp_options` VALUES(52, 'default_role', 'subscriber', 'yes');
INSERT INTO `wp_options` VALUES(53, 'db_version', '21707', 'yes');
INSERT INTO `wp_options` VALUES(54, 'uploads_use_yearmonth_folders', '1', 'yes');
INSERT INTO `wp_options` VALUES(55, 'upload_path', '', 'yes');
INSERT INTO `wp_options` VALUES(56, 'blog_public', '0', 'yes');
INSERT INTO `wp_options` VALUES(57, 'default_link_category', '2', 'yes');
INSERT INTO `wp_options` VALUES(58, 'show_on_front', 'posts', 'yes');
INSERT INTO `wp_options` VALUES(59, 'tag_base', '', 'yes');
INSERT INTO `wp_options` VALUES(60, 'show_avatars', '1', 'yes');
INSERT INTO `wp_options` VALUES(61, 'avatar_rating', 'G', 'yes');
INSERT INTO `wp_options` VALUES(62, 'upload_url_path', '', 'yes');
INSERT INTO `wp_options` VALUES(63, 'thumbnail_size_w', '150', 'yes');
INSERT INTO `wp_options` VALUES(64, 'thumbnail_size_h', '150', 'yes');
INSERT INTO `wp_options` VALUES(65, 'thumbnail_crop', '1', 'yes');
INSERT INTO `wp_options` VALUES(66, 'medium_size_w', '300', 'yes');
INSERT INTO `wp_options` VALUES(67, 'medium_size_h', '300', 'yes');
INSERT INTO `wp_options` VALUES(68, 'avatar_default', 'mystery', 'yes');
INSERT INTO `wp_options` VALUES(69, 'enable_app', '0', 'yes');
INSERT INTO `wp_options` VALUES(70, 'enable_xmlrpc', '0', 'yes');
INSERT INTO `wp_options` VALUES(71, 'large_size_w', '1024', 'yes');
INSERT INTO `wp_options` VALUES(72, 'large_size_h', '1024', 'yes');
INSERT INTO `wp_options` VALUES(73, 'image_default_link_type', 'file', 'yes');
INSERT INTO `wp_options` VALUES(74, 'image_default_size', '', 'yes');
INSERT INTO `wp_options` VALUES(75, 'image_default_align', '', 'yes');
INSERT INTO `wp_options` VALUES(76, 'close_comments_for_old_posts', '0', 'yes');
INSERT INTO `wp_options` VALUES(77, 'close_comments_days_old', '14', 'yes');
INSERT INTO `wp_options` VALUES(78, 'thread_comments', '1', 'yes');
INSERT INTO `wp_options` VALUES(79, 'thread_comments_depth', '5', 'yes');
INSERT INTO `wp_options` VALUES(80, 'page_comments', '0', 'yes');
INSERT INTO `wp_options` VALUES(81, 'comments_per_page', '50', 'yes');
INSERT INTO `wp_options` VALUES(82, 'default_comments_page', 'newest', 'yes');
INSERT INTO `wp_options` VALUES(83, 'comment_order', 'asc', 'yes');
INSERT INTO `wp_options` VALUES(84, 'sticky_posts', 'a:0:{}', 'yes');
INSERT INTO `wp_options` VALUES(85, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES(86, 'widget_text', 'a:0:{}', 'yes');
INSERT INTO `wp_options` VALUES(87, 'widget_rss', 'a:0:{}', 'yes');
INSERT INTO `wp_options` VALUES(88, 'uninstall_plugins', 'a:0:{}', 'no');
INSERT INTO `wp_options` VALUES(89, 'timezone_string', '', 'yes');
INSERT INTO `wp_options` VALUES(90, 'embed_autourls', '1', 'yes');
INSERT INTO `wp_options` VALUES(91, 'embed_size_w', '', 'yes');
INSERT INTO `wp_options` VALUES(92, 'embed_size_h', '600', 'yes');
INSERT INTO `wp_options` VALUES(93, 'page_for_posts', '0', 'yes');
INSERT INTO `wp_options` VALUES(94, 'page_on_front', '0', 'yes');
INSERT INTO `wp_options` VALUES(95, 'default_post_format', '0', 'yes');
INSERT INTO `wp_options` VALUES(96, 'initial_db_version', '21707', 'yes');
INSERT INTO `wp_options` VALUES(97, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes');
INSERT INTO `wp_options` VALUES(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES(103, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes');
INSERT INTO `wp_options` VALUES(104, 'cron', 'a:4:{i:1355283542;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1355326749;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1355331628;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes');
INSERT INTO `wp_options` VALUES(106, '_site_transient_update_core', 'O:8:"stdClass":3:{s:7:"updates";a:1:{i:0;O:8:"stdClass":9:{s:8:"response";s:7:"upgrade";s:8:"download";s:38:"http://wordpress.org/wordpress-3.5.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":4:{s:4:"full";s:38:"http://wordpress.org/wordpress-3.5.zip";s:10:"no_content";s:49:"http://wordpress.org/wordpress-3.5-no-content.zip";s:11:"new_bundled";s:50:"http://wordpress.org/wordpress-3.5-new-bundled.zip";s:7:"partial";b:0;}s:7:"current";s:3:"3.5";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"3.5";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1355253037;s:15:"version_checked";s:5:"3.4.2";}', 'yes');
INSERT INTO `wp_options` VALUES(110, '_site_transient_update_themes', 'O:8:"stdClass":3:{s:12:"last_checked";i:1355253061;s:7:"checked";a:3:{s:9:"cocktails";s:0:"";s:12:"twentyeleven";s:3:"1.4";s:9:"twentyten";s:3:"1.4";}s:8:"response";a:2:{s:12:"twentyeleven";a:3:{s:11:"new_version";s:3:"1.5";s:3:"url";s:47:"http://wordpress.org/extend/themes/twentyeleven";s:7:"package";s:64:"http://wordpress.org/extend/themes/download/twentyeleven.1.5.zip";}s:9:"twentyten";a:3:{s:11:"new_version";s:3:"1.5";s:3:"url";s:44:"http://wordpress.org/extend/themes/twentyten";s:7:"package";s:61:"http://wordpress.org/extend/themes/download/twentyten.1.5.zip";}}}', 'yes');
INSERT INTO `wp_options` VALUES(111, '_site_transient_timeout_browser_ece83a06a01ae7f5c9cd0ef86a415685', '1353166749', 'yes');
INSERT INTO `wp_options` VALUES(112, '_site_transient_browser_ece83a06a01ae7f5c9cd0ef86a415685', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"12.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"12";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes');
INSERT INTO `wp_options` VALUES(113, 'dashboard_widget_options', 'a:4:{s:25:"dashboard_recent_comments";a:1:{s:5:"items";i:5;}s:24:"dashboard_incoming_links";a:5:{s:4:"home";s:34:"http://localhost:8888/cocktails_wp";s:4:"link";s:110:"http://blogsearch.google.com/blogsearch?scoring=d&partner=wordpress&q=link:http://localhost:8888/cocktails_wp/";s:3:"url";s:143:"http://blogsearch.google.com/blogsearch_feeds?scoring=d&ie=utf-8&num=10&output=rss&partner=wordpress&q=link:http://localhost:8888/cocktails_wp/";s:5:"items";i:10;s:9:"show_date";b:0;}s:17:"dashboard_primary";a:7:{s:4:"link";s:26:"http://wordpress.org/news/";s:3:"url";s:31:"http://wordpress.org/news/feed/";s:5:"title";s:14:"WordPress Blog";s:5:"items";i:2;s:12:"show_summary";i:1;s:11:"show_author";i:0;s:9:"show_date";i:1;}s:19:"dashboard_secondary";a:7:{s:4:"link";s:28:"http://planet.wordpress.org/";s:3:"url";s:33:"http://planet.wordpress.org/feed/";s:5:"title";s:20:"Other WordPress News";s:5:"items";i:5;s:12:"show_summary";i:0;s:11:"show_author";i:0;s:9:"show_date";i:0;}}', 'yes');
INSERT INTO `wp_options` VALUES(115, 'can_compress_scripts', '1', 'yes');
INSERT INTO `wp_options` VALUES(149, 'current_theme', '', 'yes');
INSERT INTO `wp_options` VALUES(150, 'theme_mods_cocktails-wp-theme', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1352562464;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes');
INSERT INTO `wp_options` VALUES(151, 'theme_switched', '', 'yes');
INSERT INTO `wp_options` VALUES(152, 'theme_mods_twentyeleven', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1352562542;s:4:"data";a:6:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}s:9:"sidebar-4";a:0:{}s:9:"sidebar-5";a:0:{}}}}', 'yes');
INSERT INTO `wp_options` VALUES(153, 'theme_mods_cocktails', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:7:"primary";i:10;s:6:"footer";i:11;}}', 'yes');
INSERT INTO `wp_options` VALUES(159, 'category_children', 'a:0:{}', 'yes');
INSERT INTO `wp_options` VALUES(162, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1352581548', 'yes');
INSERT INTO `wp_options` VALUES(163, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:40:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"3406";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"2207";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"2091";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"1732";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"1645";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"1450";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"1165";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"1161";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1153";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"1119";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"1066";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:3:"983";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:3:"892";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:3:"836";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:3:"826";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:3:"767";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:3:"724";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:3:"719";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:3:"665";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"664";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:3:"617";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:3:"613";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:3:"593";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"573";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:3:"524";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:3:"503";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"498";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"496";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"490";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"471";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"466";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"444";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"441";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"432";}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";s:3:"404";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"401";}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";s:3:"399";}s:5:"flash";a:3:{s:4:"name";s:5:"flash";s:4:"slug";s:5:"flash";s:5:"count";s:3:"383";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"382";}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";s:3:"378";}}', 'yes');
INSERT INTO `wp_options` VALUES(167, 'recently_activated', 'a:0:{}', 'yes');
INSERT INTO `wp_options` VALUES(168, '_site_transient_update_plugins', 'O:8:"stdClass":3:{s:12:"last_checked";i:1355253037;s:7:"checked";a:4:{s:30:"advanced-custom-fields/acf.php";s:5:"3.5.1";s:19:"akismet/akismet.php";s:5:"2.5.6";s:39:"column-shortcodes/column-shortcodes.php";s:3:"0.2";s:9:"hello.php";s:3:"1.6";}s:8:"response";a:1:{s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":5:{s:2:"id";s:5:"21367";s:4:"slug";s:22:"advanced-custom-fields";s:11:"new_version";s:7:"3.5.4.1";s:3:"url";s:59:"http://wordpress.org/extend/plugins/advanced-custom-fields/";s:7:"package";s:64:"http://downloads.wordpress.org/plugin/advanced-custom-fields.zip";}}}', 'yes');
INSERT INTO `wp_options` VALUES(169, 'acf_version', '3.5.1', 'yes');
INSERT INTO `wp_options` VALUES(173, '_site_transient_timeout_browser_70fb7a1bfe5f36211966e31399418e87', '1355771726', 'yes');
INSERT INTO `wp_options` VALUES(174, '_site_transient_browser_70fb7a1bfe5f36211966e31399418e87', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"17.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes');
INSERT INTO `wp_options` VALUES(201, '_transient_timeout_plugin_slugs', '1355266192', 'no');
INSERT INTO `wp_options` VALUES(202, '_transient_plugin_slugs', 'a:4:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:19:"akismet/akismet.php";i:2;s:39:"column-shortcodes/column-shortcodes.php";i:3;s:9:"hello.php";}', 'no');
INSERT INTO `wp_options` VALUES(209, '_transient_timeout_dash_20494a3d90a6669585674ed0eb8dcd8f', '1355279158', 'no');
INSERT INTO `wp_options` VALUES(210, '_transient_dash_20494a3d90a6669585674ed0eb8dcd8f', '<p><strong>RSS Error</strong>: WP HTTP Error: Failed to connect to 2607:f8b0:4004:800::1010: No route to host</p>', 'no');
INSERT INTO `wp_options` VALUES(211, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1355279160', 'no');
INSERT INTO `wp_options` VALUES(212, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: connect() timed out!</p></div>', 'no');
INSERT INTO `wp_options` VALUES(213, '_transient_timeout_dash_aa95765b5cc111c56d5993d476b1c2f0', '1355279160', 'no');
INSERT INTO `wp_options` VALUES(214, '_transient_dash_aa95765b5cc111c56d5993d476b1c2f0', '<div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: connect() timed out!</p></div>', 'no');
INSERT INTO `wp_options` VALUES(215, '_transient_timeout_dash_de3249c4736ad3bd2cd29147c4a0d43e', '1355279171', 'no');
INSERT INTO `wp_options` VALUES(216, '_transient_dash_de3249c4736ad3bd2cd29147c4a0d43e', '', 'no');
INSERT INTO `wp_options` VALUES(224, '_site_transient_timeout_wporg_theme_feature_list', '1355266829', 'yes');
INSERT INTO `wp_options` VALUES(225, '_site_transient_wporg_theme_feature_list', 'a:5:{s:6:"Colors";a:15:{i:0;s:5:"black";i:1;s:4:"blue";i:2;s:5:"brown";i:3;s:4:"gray";i:4;s:5:"green";i:5;s:6:"orange";i:6;s:4:"pink";i:7;s:6:"purple";i:8;s:3:"red";i:9;s:6:"silver";i:10;s:3:"tan";i:11;s:5:"white";i:12;s:6:"yellow";i:13;s:4:"dark";i:14;s:5:"light";}s:7:"Columns";a:6:{i:0;s:10:"one-column";i:1;s:11:"two-columns";i:2;s:13:"three-columns";i:3;s:12:"four-columns";i:4;s:12:"left-sidebar";i:5;s:13:"right-sidebar";}s:5:"Width";a:2:{i:0;s:11:"fixed-width";i:1;s:14:"flexible-width";}s:8:"Features";a:19:{i:0;s:8:"blavatar";i:1;s:10:"buddypress";i:2;s:17:"custom-background";i:3;s:13:"custom-colors";i:4;s:13:"custom-header";i:5;s:11:"custom-menu";i:6;s:12:"editor-style";i:7;s:21:"featured-image-header";i:8;s:15:"featured-images";i:9;s:15:"flexible-header";i:10;s:20:"front-page-post-form";i:11;s:19:"full-width-template";i:12;s:12:"microformats";i:13;s:12:"post-formats";i:14;s:20:"rtl-language-support";i:15;s:11:"sticky-post";i:16;s:13:"theme-options";i:17;s:17:"threaded-comments";i:18;s:17:"translation-ready";}s:7:"Subject";a:3:{i:0;s:7:"holiday";i:1;s:13:"photoblogging";i:2;s:8:"seasonal";}}', 'yes');
INSERT INTO `wp_options` VALUES(228, '_site_transient_timeout_theme_roots', '1355257828', 'yes');
INSERT INTO `wp_options` VALUES(229, '_site_transient_theme_roots', 'a:3:{s:9:"cocktails";s:7:"/themes";s:12:"twentyeleven";s:7:"/themes";s:9:"twentyten";s:7:"/themes";}', 'yes');
INSERT INTO `wp_options` VALUES(230, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=209 ;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` VALUES(1, 2, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(2, 4, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(3, 4, '_edit_lock', '1355237061:1');
INSERT INTO `wp_postmeta` VALUES(8, 10, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(9, 10, '_edit_lock', '1355182580:1');
INSERT INTO `wp_postmeta` VALUES(10, 13, '_wp_attached_file', '2012/11/fancy.png');
INSERT INTO `wp_postmeta` VALUES(11, 13, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"175";s:6:"height";s:3:"250";s:14:"hwstring_small";s:22:"height=''96'' width=''67''";s:4:"file";s:17:"2012/11/fancy.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:3:{s:4:"file";s:17:"fancy-150x150.png";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}');
INSERT INTO `wp_postmeta` VALUES(12, 14, '_wp_attached_file', '2012/11/highball.png');
INSERT INTO `wp_postmeta` VALUES(13, 14, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"175";s:6:"height";s:3:"250";s:14:"hwstring_small";s:22:"height=''96'' width=''67''";s:4:"file";s:20:"2012/11/highball.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:3:{s:4:"file";s:20:"highball-150x150.png";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}');
INSERT INTO `wp_postmeta` VALUES(14, 15, '_wp_attached_file', '2012/11/martini.png');
INSERT INTO `wp_postmeta` VALUES(15, 15, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"175";s:6:"height";s:3:"250";s:14:"hwstring_small";s:22:"height=''96'' width=''67''";s:4:"file";s:19:"2012/11/martini.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:3:{s:4:"file";s:19:"martini-150x150.png";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}');
INSERT INTO `wp_postmeta` VALUES(16, 20, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(17, 20, '_edit_lock', '1355260167:1');
INSERT INTO `wp_postmeta` VALUES(18, 2, '_edit_lock', '1355260250:1');
INSERT INTO `wp_postmeta` VALUES(19, 2, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(20, 10, '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES(21, 10, '_wp_trash_meta_time', '1355182694');
INSERT INTO `wp_postmeta` VALUES(22, 26, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(23, 26, '_edit_lock', '1355260072:1');
INSERT INTO `wp_postmeta` VALUES(24, 1, '_edit_lock', '1355183013:1');
INSERT INTO `wp_postmeta` VALUES(28, 33, '_wp_attached_file', '2012/12/collins.png');
INSERT INTO `wp_postmeta` VALUES(29, 33, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"175";s:6:"height";s:3:"250";s:14:"hwstring_small";s:22:"height=''96'' width=''67''";s:4:"file";s:19:"2012/12/collins.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:3:{s:4:"file";s:19:"collins-150x150.png";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}');
INSERT INTO `wp_postmeta` VALUES(30, 34, '_wp_attached_file', '2012/12/highball_short.png');
INSERT INTO `wp_postmeta` VALUES(31, 34, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"175";s:6:"height";s:3:"250";s:14:"hwstring_small";s:22:"height=''96'' width=''67''";s:4:"file";s:26:"2012/12/highball_short.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:3:{s:4:"file";s:26:"highball_short-150x150.png";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}');
INSERT INTO `wp_postmeta` VALUES(32, 35, '_wp_attached_file', '2012/12/hip-highbal.png');
INSERT INTO `wp_postmeta` VALUES(33, 35, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"175";s:6:"height";s:3:"250";s:14:"hwstring_small";s:22:"height=''96'' width=''67''";s:4:"file";s:23:"2012/12/hip-highbal.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:3:{s:4:"file";s:23:"hip-highbal-150x150.png";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}');
INSERT INTO `wp_postmeta` VALUES(34, 36, '_wp_attached_file', '2012/12/hot-coffee.png');
INSERT INTO `wp_postmeta` VALUES(35, 36, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"175";s:6:"height";s:3:"250";s:14:"hwstring_small";s:22:"height=''96'' width=''67''";s:4:"file";s:22:"2012/12/hot-coffee.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:3:{s:4:"file";s:22:"hot-coffee-150x150.png";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}');
INSERT INTO `wp_postmeta` VALUES(36, 37, '_wp_attached_file', '2012/12/old-fashioned.png');
INSERT INTO `wp_postmeta` VALUES(37, 37, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"175";s:6:"height";s:3:"250";s:14:"hwstring_small";s:22:"height=''96'' width=''67''";s:4:"file";s:25:"2012/12/old-fashioned.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:3:{s:4:"file";s:25:"old-fashioned-150x150.png";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}');
INSERT INTO `wp_postmeta` VALUES(38, 38, '_wp_attached_file', '2012/12/pilsner.png');
INSERT INTO `wp_postmeta` VALUES(39, 38, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"175";s:6:"height";s:3:"250";s:14:"hwstring_small";s:22:"height=''96'' width=''67''";s:4:"file";s:19:"2012/12/pilsner.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:3:{s:4:"file";s:19:"pilsner-150x150.png";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}');
INSERT INTO `wp_postmeta` VALUES(40, 39, '_wp_attached_file', '2012/12/pouse-cafe-cocktail.png');
INSERT INTO `wp_postmeta` VALUES(41, 39, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"175";s:6:"height";s:3:"250";s:14:"hwstring_small";s:22:"height=''96'' width=''67''";s:4:"file";s:31:"2012/12/pouse-cafe-cocktail.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:3:{s:4:"file";s:31:"pouse-cafe-cocktail-150x150.png";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}');
INSERT INTO `wp_postmeta` VALUES(42, 40, '_wp_attached_file', '2012/12/sour-coupe.png');
INSERT INTO `wp_postmeta` VALUES(43, 40, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"175";s:6:"height";s:3:"250";s:14:"hwstring_small";s:22:"height=''96'' width=''67''";s:4:"file";s:22:"2012/12/sour-coupe.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:3:{s:4:"file";s:22:"sour-coupe-150x150.png";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}');
INSERT INTO `wp_postmeta` VALUES(44, 41, '_wp_attached_file', '2012/12/sour-deep.png');
INSERT INTO `wp_postmeta` VALUES(45, 41, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"175";s:6:"height";s:3:"250";s:14:"hwstring_small";s:22:"height=''96'' width=''67''";s:4:"file";s:21:"2012/12/sour-deep.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:3:{s:4:"file";s:21:"sour-deep-150x150.png";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}');
INSERT INTO `wp_postmeta` VALUES(46, 42, '_wp_attached_file', '2012/12/tropical-hurricane.png');
INSERT INTO `wp_postmeta` VALUES(47, 42, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"175";s:6:"height";s:3:"250";s:14:"hwstring_small";s:22:"height=''96'' width=''67''";s:4:"file";s:30:"2012/12/tropical-hurricane.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:3:{s:4:"file";s:30:"tropical-hurricane-150x150.png";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}');
INSERT INTO `wp_postmeta` VALUES(48, 43, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(49, 43, '_edit_lock', '1355260867:1');
INSERT INTO `wp_postmeta` VALUES(50, 47, '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES(51, 47, '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES(52, 47, '_menu_item_object_id', '43');
INSERT INTO `wp_postmeta` VALUES(53, 47, '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES(54, 47, '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES(55, 47, '_menu_item_classes', 'a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES(56, 47, '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES(57, 47, '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES(59, 48, '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES(60, 48, '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES(61, 48, '_menu_item_object_id', '26');
INSERT INTO `wp_postmeta` VALUES(62, 48, '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES(63, 48, '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES(64, 48, '_menu_item_classes', 'a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES(65, 48, '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES(66, 48, '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES(68, 49, '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES(69, 49, '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES(70, 49, '_menu_item_object_id', '20');
INSERT INTO `wp_postmeta` VALUES(71, 49, '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES(72, 49, '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES(73, 49, '_menu_item_classes', 'a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES(74, 49, '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES(75, 49, '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES(77, 50, '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES(78, 50, '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES(79, 50, '_menu_item_object_id', '2');
INSERT INTO `wp_postmeta` VALUES(80, 50, '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES(81, 50, '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES(82, 50, '_menu_item_classes', 'a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES(83, 50, '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES(84, 50, '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES(86, 2, '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES(87, 2, '_wp_trash_meta_time', '1355260287');
INSERT INTO `wp_postmeta` VALUES(88, 52, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(89, 52, '_edit_lock', '1355260923:1');
INSERT INTO `wp_postmeta` VALUES(90, 54, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(91, 54, '_edit_lock', '1355261364:1');
INSERT INTO `wp_postmeta` VALUES(92, 58, '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES(93, 58, '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES(94, 58, '_menu_item_object_id', '54');
INSERT INTO `wp_postmeta` VALUES(95, 58, '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES(96, 58, '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES(97, 58, '_menu_item_classes', 'a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES(98, 58, '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES(99, 58, '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES(101, 59, '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES(102, 59, '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES(103, 59, '_menu_item_object_id', '52');
INSERT INTO `wp_postmeta` VALUES(104, 59, '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES(105, 59, '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES(106, 59, '_menu_item_classes', 'a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES(107, 59, '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES(108, 59, '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES(110, 62, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(111, 62, '_edit_lock', '1355260865:1');
INSERT INTO `wp_postmeta` VALUES(112, 65, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(113, 65, '_edit_lock', '1355260905:1');
INSERT INTO `wp_postmeta` VALUES(114, 68, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(115, 68, '_edit_lock', '1355260935:1');
INSERT INTO `wp_postmeta` VALUES(116, 71, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(117, 71, '_edit_lock', '1355260972:1');
INSERT INTO `wp_postmeta` VALUES(118, 74, '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES(119, 74, '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES(120, 74, '_menu_item_object_id', '71');
INSERT INTO `wp_postmeta` VALUES(121, 74, '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES(122, 74, '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES(123, 74, '_menu_item_classes', 'a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES(124, 74, '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES(125, 74, '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES(127, 75, '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES(128, 75, '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES(129, 75, '_menu_item_object_id', '68');
INSERT INTO `wp_postmeta` VALUES(130, 75, '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES(131, 75, '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES(132, 75, '_menu_item_classes', 'a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES(133, 75, '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES(134, 75, '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES(136, 76, '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES(137, 76, '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES(138, 76, '_menu_item_object_id', '65');
INSERT INTO `wp_postmeta` VALUES(139, 76, '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES(140, 76, '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES(141, 76, '_menu_item_classes', 'a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES(142, 76, '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES(143, 76, '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES(145, 77, '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES(146, 77, '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES(147, 77, '_menu_item_object_id', '62');
INSERT INTO `wp_postmeta` VALUES(148, 77, '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES(149, 77, '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES(150, 77, '_menu_item_classes', 'a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES(151, 77, '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES(152, 77, '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES(154, 78, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(155, 78, '_edit_lock', '1355261084:1');
INSERT INTO `wp_postmeta` VALUES(156, 81, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(157, 81, '_edit_lock', '1355261105:1');
INSERT INTO `wp_postmeta` VALUES(158, 84, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(159, 84, '_edit_lock', '1355261136:1');
INSERT INTO `wp_postmeta` VALUES(160, 87, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(161, 87, '_edit_lock', '1355261178:1');
INSERT INTO `wp_postmeta` VALUES(162, 91, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(163, 91, '_edit_lock', '1355261218:1');
INSERT INTO `wp_postmeta` VALUES(164, 94, '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES(165, 94, '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES(166, 94, '_menu_item_object_id', '91');
INSERT INTO `wp_postmeta` VALUES(167, 94, '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES(168, 94, '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES(169, 94, '_menu_item_classes', 'a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES(170, 94, '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES(171, 94, '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES(173, 95, '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES(174, 95, '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES(175, 95, '_menu_item_object_id', '87');
INSERT INTO `wp_postmeta` VALUES(176, 95, '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES(177, 95, '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES(178, 95, '_menu_item_classes', 'a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES(179, 95, '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES(180, 95, '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES(182, 96, '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES(183, 96, '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES(184, 96, '_menu_item_object_id', '84');
INSERT INTO `wp_postmeta` VALUES(185, 96, '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES(186, 96, '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES(187, 96, '_menu_item_classes', 'a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES(188, 96, '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES(189, 96, '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES(191, 97, '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES(192, 97, '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES(193, 97, '_menu_item_object_id', '81');
INSERT INTO `wp_postmeta` VALUES(194, 97, '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES(195, 97, '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES(196, 97, '_menu_item_classes', 'a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES(197, 97, '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES(198, 97, '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES(200, 98, '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES(201, 98, '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES(202, 98, '_menu_item_object_id', '78');
INSERT INTO `wp_postmeta` VALUES(203, 98, '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES(204, 98, '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES(205, 98, '_menu_item_classes', 'a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES(206, 98, '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES(207, 98, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=100 ;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` VALUES(1, 1, '2012-11-10 15:38:45', '2012-11-10 15:38:45', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2012-11-10 15:38:45', '2012-11-10 15:38:45', '', 0, 'http://localhost:8888/cocktails_wp/?p=1', 0, 'post', '', 1);
INSERT INTO `wp_posts` VALUES(2, 1, '2012-11-10 15:38:45', '2012-11-10 15:38:45', '<div>\r\n<h3>Why Carolyn''s Cocktails?</h3>\r\nI established Carolyn''s Classic Cocktails as a friendly easy-to-use site for finding drink recipes by multiple qualities that the average drink consumer would remember. Beyond primary and secondary alcohol type, I''ve organzed such categories as drinks by season, drinks by color, drinks by fruit or vegetable ingredkents, liquor accents and other accent flavors such as bitters, herbs, spices, etc. and last but not least thermal sensations. How many times have you associated a drink with a season or event that you know took place in a specific season? You might remember the color, taste or temperature sensation sucj as refreshing and cooling or warm and heady, specific flavors such as sour or spicy, but not remember the name of the drink.\r\nEnjoy!\r\n\r\n</div>', 'Home2', '', 'trash', 'open', 'open', '', 'sample-page', '', '', '2012-12-11 21:11:27', '2012-12-11 21:11:27', '', 0, 'http://localhost:8888/cocktails_wp/?page_id=2', 0, 'page', '', 0);
INSERT INTO `wp_posts` VALUES(4, 1, '2012-11-10 17:00:59', '2012-11-10 17:00:59', '<em>from Wikepedia</em>\r\n\r\nThe origin of the word <em>cocktail</em> is disputed.\r\n\r\nIn September 2005, archaeochemist Patrick McGovern from Pennsylvania University, Philadelphia, USA, announced the discovery of 5,000-year-old Mesopotamian earthenware from the banks of the Tigris between Iran and Iraq containing traces of tartaric acid, honey, apple juice and barley. McGovern described this early cocktail as "grog".[1]\r\n\r\nThe first recorded use of the word <em>cocktail</em> is found in <em>The Morning Post and Gazetteer in London, England</em> on March 20, 1798: [2]\r\n<blockquote>\r\n<div>\r\n\r\nMr. Pitt,\r\ntwo petit vers of “L’huile de Venus”\r\nDitto, one of “perfeit amour”\r\nDitto, “cock-tail” (vulgarly called ginger)\r\n\r\nThe first recorded use of the word <em>cocktail</em> in the United States is said to be in <em>The Farmer''s Cabinet</em> on April 28, 1803:[3]\r\n\r\n</div></blockquote>\r\n<em>Cock-tail</em> is a stimulating liquor, composed of spirits of any kind, sugar, water, and bitters—it is vulgarly called <em>bittered sling</em>, and is supposed to be an excellent electioneering potion, inasmuch as it renders the heart stout and bold, at the same time that it fuddles the head. It is said, also to be of great use to a democratic candidate: because a person, having swallowed a glass of it, is ready to swallow any thing else.\r\n\r\n[1] . Jared Brown &amp; Anistatia Miller (2009). <em>Spirituous Journey: A History of Drink, Book Two</em>. Mixellany Limited.\r\n\r\n[2]. David Wondrich (2007). <em>Imbibe!: From Absinthe Cocktail to Whiskey Smash, a Salute in Stories and Drinks to "Professor" Jerry Thomas, Pioneer of the American Bar</em>. Perigee Trade.\r\n\r\n[3]. The Balance and Columbian Repository: May 13, 1806, No. 19, Vol. V, page 146\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Notes on the History of Cocktails', '', 'publish', 'open', 'open', '', 'notes-on-the-history-of-cocktails', '', '', '2012-12-11 14:46:12', '2012-12-11 14:46:12', '', 0, 'http://localhost:8888/cocktails_wp/?p=4', 0, 'post', '', 0);
INSERT INTO `wp_posts` VALUES(5, 1, '2012-11-10 17:00:45', '2012-11-10 17:00:45', '', 'Notes on the History of Cocktails', '', 'inherit', 'open', 'open', '', '4-revision', '', '', '2012-11-10 17:00:45', '2012-11-10 17:00:45', '', 4, 'http://localhost:8888/cocktails_wp/?p=5', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(6, 1, '2012-11-10 17:00:59', '2012-11-10 17:00:59', 'The origin of the word cocktail is disputed. The first recorded use of the word cocktail is found in The Morning Post and Gazetteer in London, England on March 20, 1798:[4] Mr. Pitt, two petit vers of "L''huile de Venus" Ditto, one of "perfeit amour" Ditto, "cock-tail" (vulgarly called ginger) The first recorded use of the word cocktail in the United States is said to be in The Farmer''s Cabinet on April 28, 1803:[5] Drank a glass of cocktailâ€”excellent for the head...Call''d at the Doct''s. found Burnhamâ€”he looked very wiseâ€”drank another glass of cocktail. A definition of cocktail appeared in the May 13, 1806, edition of The Balance and Columbian Repository, a publication in Hudson, New York, in which an answer was provided to the question, "What is a cocktail?". It replied: Cock-tail is a stimulating liquor, composed of spirits of any kind, sugar, water, and bittersâ€”it is vulgarly called bittered sling, and is supposed to be an excellent electioneering potion, inasmuch as it renders the heart stout and bold, at the same time that it fuddles the head. It is said, also to be of great use to a democratic candidate: because a person, having swallowed a glass of it, is ready to swallow any thing else.', 'Notes on the History of Cocktails', '', 'inherit', 'open', 'open', '', '4-revision-2', '', '', '2012-11-10 17:00:59', '2012-11-10 17:00:59', '', 4, 'http://localhost:8888/cocktails_wp/?p=6', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(7, 1, '2012-12-11 14:46:10', '2012-12-11 14:46:10', '<em>from Wikepedia</em>\n\nThe origin of the word <em>cocktail</em> is disputed.\n\nIn September 2005, archaeochemist Patrick McGovern from Pennsylvania University, Philadelphia, USA, announced the discovery of 5,000-year-old Mesopotamian earthenware from the banks of the Tigris between Iran and Iraq containing traces of tartaric acid, honey, apple juice and barley. McGovern described this early cocktail as "grog".[1]\n\nThe first recorded use of the word <em>cocktail</em> is found in <em>The Morning Post and Gazetteer in London, England</em> on March 20, 1798: [2]\n<blockquote>\n<div>\n\nMr. Pitt,\ntwo petit vers of “L’huile de Venus”\nDitto, one of “perfeit amour”\nDitto, “cock-tail” (vulgarly called ginger)\n\nThe first recorded use of the word <em>cocktail</em> in the United States is said to be in <em>The Farmer''s Cabinet</em> on April 28, 1803:[3]\n\n</div></blockquote>\n<em>Cock-tail</em> is a stimulating liquor, composed of spirits of any kind, sugar, water, and bitters—it is vulgarly called <em>bittered sling</em>, and is supposed to be an excellent electioneering potion, inasmuch as it renders the heart stout and bold, at the same time that it fuddles the head. It is said, also to be of great use to a democratic candidate: because a person, having swallowed a glass of it, is ready to swallow any thing else.\n\n[1] . Jared Brown &amp; Anistatia Miller (2009). <em>Spirituous Journey: A History of Drink, Book Two</em>. Mixellany Limited.\n\n[2]. David Wondrich (2007). <em>Imbibe!: From Absinthe Cocktail to Whiskey Smash, a Salute in Stories and Drinks to "Professor" Jerry Thomas, Pioneer of the American Bar</em>. Perigee Trade.\n\n[3]. The Balance and Columbian Repository: May 13, 1806, No. 19, Vol. V, page 146\n\n&nbsp;\n\n&nbsp;\n\n&nbsp;\n\n&nbsp;', 'Notes on the History of Cocktails', '', 'inherit', 'open', 'open', '', '4-autosave', '', '', '2012-12-11 14:46:10', '2012-12-11 14:46:10', '', 4, 'http://localhost:8888/cocktails_wp/?p=7', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(8, 1, '2012-11-10 17:16:02', '2012-11-10 17:16:02', 'The origin of the word cocktail is disputed. The first recorded use of the word cocktail is found in The Morning Post and Gazetteer in London, England on March 20, 1798:[4] Mr. Pitt, two petit vers of "L''huile de Venus" Ditto, one of "perfeit amour" Ditto, "cock-tail" (vulgarly called ginger) The first recorded use of the word cocktail in the United States is said to be in The Farmer''s Cabinet on April 28, 1803:[5] Drank a glass of cocktailâ€”excellent for the head...Call''d at the Doct''s. found Burnhamâ€”he looked very wiseâ€”drank another glass of cocktail. A definition of cocktail appeared in the May 13, 1806, edition of The Balance and Columbian Repository, a publication in Hudson, New York, in which an answer was provided to the question, "What is a cocktail?". It replied: Cock-tail is a stimulating liquor, composed of spirits of any kind, sugar, water, and bittersâ€”it is vulgarly called bittered sling, and is supposed to be an excellent electioneering potion, inasmuch as it renders the heart stout and bold, at the same time that it fuddles the head. It is said, also to be of great use to a democratic candidate: because a person, having swallowed a glass of it, is ready to swallow any thing else.', 'Notes on the History of Cocktails', '', 'inherit', 'open', 'open', '', '4-revision-3', '', '', '2012-11-10 17:16:02', '2012-11-10 17:16:02', '', 4, 'http://localhost:8888/cocktails_wp/?p=8', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(9, 1, '2012-11-10 17:18:53', '2012-11-10 17:18:53', 'The origin of the word cocktail is disputed. The first recorded use of the word cocktail is found in The Morning Post and Gazetteer in London, England on March 20, 1798:[4] Mr. Pitt, two petit vers of "L''huile de Venus" Ditto, one of "perfeit amour" Ditto, "cock-tail" (vulgarly called ginger) The first recorded use of the word cocktail in the United States is said to be in The Farmer''s Cabinet on April 28, 1803:[5] Drank a glass of cocktailâ€”excellent for the head...Call''d at the Doct''s. found Burnhamâ€”he looked very wiseâ€”drank another glass of cocktail. A definition of cocktail appeared in the May 13, 1806, edition of The Balance and Columbian Repository, a publication in Hudson, New York, in which an answer was provided to the question, "What is a cocktail?". It replied: Cock-tail is a stimulating liquor, composed of spirits of any kind, sugar, water, and bittersâ€”it is vulgarly called bittered sling, and is supposed to be an excellent electioneering potion, inasmuch as it renders the heart stout and bold, at the same time that it fuddles the head. It is said, also to be of great use to a democratic candidate: because a person, having swallowed a glass of it, is ready to swallow any thing else.', 'Notes on the History of Cocktails', '', 'inherit', 'open', 'open', '', '4-revision-4', '', '', '2012-11-10 17:18:53', '2012-11-10 17:18:53', '', 4, 'http://localhost:8888/cocktails_wp/?p=9', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(10, 1, '2012-11-10 18:07:58', '2012-11-10 18:07:58', '[two_third]\r\n[gallery columns="4"]\r\n[/two_third]\r\n\r\n[one_third_last]\r\n<h3>Why Carolyn''s Cocktails?</h3>\r\nI established Carolyn''s Classic Cocktails as a friendly easy-to-use site for finding drink recipes by multiple qualities that the average drink consumer would remember. Beyond primary and secondary alcohol type, I''ve organzed such categories as drinks by season, drinks by color, drinks by fruit or vegetable ingredkents, liquor accents and other accent flavors such as bitters, herbs, spices, etc. and last but not least thermal sensations. How many times have you associated a drink with a season or event that you know took place in a specific season? You might remember the color, taste or temperature sensation sucj as refreshing and cooling or warm and heady, specific flavors such as sour or spicy, but not remember the name of the drink.\r\n\r\nEnjoy!\r\n[/one_third_last]', 'Home', '', 'trash', 'open', 'open', '', 'home', '', '', '2012-12-10 23:38:14', '2012-12-10 23:38:14', '', 0, 'http://localhost:8888/cocktails_wp/?page_id=10', 0, 'page', '', 0);
INSERT INTO `wp_posts` VALUES(11, 1, '2012-11-10 18:07:37', '2012-11-10 18:07:37', '<div>\n<h3>Why Carolyn''s Cocktails?</h3>\nI established Carolyn''s Classic Cocktails as a friendly easy-to-use site for finding drink recipes by multiple qualities that the average drink consumer would remember. Beyond primary and secondary alcohol type, I''ve organzed such categories as drinks by season, drinks by color, drinks by fruit or vegetable ingredkents, liquor accents and other accent flavors such as bitters, herbs, spices, etc. and last but not least thermal sensations. How many times have you associated a drink with a season or event that you know took place in a specific season? You might remember the color, taste or temperature sensation sucj as refreshing and cooling or warm and heady, specific flavors such as sour or spicy, but not remember the name of the drink.\n\nEnjoy!\n\n</div>', 'Home', '', 'inherit', 'open', 'open', '', '10-revision', '', '', '2012-11-10 18:07:37', '2012-11-10 18:07:37', '', 10, 'http://localhost:8888/cocktails_wp/?p=11', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(12, 1, '2012-11-10 18:18:55', '2012-11-10 18:18:55', '[two_third]\n[gallery columns="4"]\n[/two_third]\n\n[one_third_last]\n<h3>Why Carolyn''s Cocktails?</h3>\nI established Carolyn''s Classic Cocktails as a friendly easy-to-use site for finding drink recipes by multiple qualities that the average drink consumer would remember. Beyond primary and secondary alcohol type, I''ve organzed such categories as drinks by season, drinks by color, drinks by fruit or vegetable ingredkents, liquor accents and other accent flavors such as bitters, herbs, spices, etc. and last but not least thermal sensations. How many times have you associated a drink with a season or event that you know took place in a specific season? You might remember the color, taste or temperature sensation sucj as refreshing and cooling or warm and heady, specific flavors such as sour or spicy, but not remember the name of the drink.\n\nEnjoy!\n[/one_third_last]', 'Home', '', 'inherit', 'open', 'open', '', '10-autosave', '', '', '2012-11-10 18:18:55', '2012-11-10 18:18:55', '', 10, 'http://localhost:8888/cocktails_wp/?p=12', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(13, 1, '2012-11-10 18:15:00', '2012-11-10 18:15:00', '', 'fancy', '', 'inherit', 'open', 'open', '', 'fancy', '', '', '2012-11-10 18:15:00', '2012-11-10 18:15:00', '', 10, 'http://localhost:8888/cocktails_wp/wp-content/uploads/2012/11/fancy.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` VALUES(14, 1, '2012-11-10 18:15:00', '2012-11-10 18:15:00', '', 'highball', '', 'inherit', 'open', 'open', '', 'highball', '', '', '2012-11-10 18:15:00', '2012-11-10 18:15:00', '', 10, 'http://localhost:8888/cocktails_wp/wp-content/uploads/2012/11/highball.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` VALUES(15, 1, '2012-11-10 18:15:00', '2012-11-10 18:15:00', '', 'martini', '', 'inherit', 'open', 'open', '', 'martini', '', '', '2012-11-10 18:15:00', '2012-11-10 18:15:00', '', 10, 'http://localhost:8888/cocktails_wp/wp-content/uploads/2012/11/martini.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` VALUES(16, 1, '2012-11-10 18:07:58', '2012-11-10 18:07:58', '<div>\r\n<h3>Why Carolyn''s Cocktails?</h3>\r\nI established Carolyn''s Classic Cocktails as a friendly easy-to-use site for finding drink recipes by multiple qualities that the average drink consumer would remember. Beyond primary and secondary alcohol type, I''ve organzed such categories as drinks by season, drinks by color, drinks by fruit or vegetable ingredkents, liquor accents and other accent flavors such as bitters, herbs, spices, etc. and last but not least thermal sensations. How many times have you associated a drink with a season or event that you know took place in a specific season? You might remember the color, taste or temperature sensation sucj as refreshing and cooling or warm and heady, specific flavors such as sour or spicy, but not remember the name of the drink.\r\n\r\nEnjoy!\r\n\r\n</div>', 'Home', '', 'inherit', 'open', 'open', '', '10-revision-2', '', '', '2012-11-10 18:07:58', '2012-11-10 18:07:58', '', 10, 'http://localhost:8888/cocktails_wp/?p=16', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(17, 1, '2012-11-10 18:15:54', '2012-11-10 18:15:54', '<div>\r\n<h3>[gallery columns="4"]</h3>\r\n<h3>Why Carolyn''s Cocktails?</h3>\r\nI established Carolyn''s Classic Cocktails as a friendly easy-to-use site for finding drink recipes by multiple qualities that the average drink consumer would remember. Beyond primary and secondary alcohol type, I''ve organzed such categories as drinks by season, drinks by color, drinks by fruit or vegetable ingredkents, liquor accents and other accent flavors such as bitters, herbs, spices, etc. and last but not least thermal sensations. How many times have you associated a drink with a season or event that you know took place in a specific season? You might remember the color, taste or temperature sensation sucj as refreshing and cooling or warm and heady, specific flavors such as sour or spicy, but not remember the name of the drink.\r\n\r\nEnjoy!\r\n\r\n</div>', 'Home', '', 'inherit', 'open', 'open', '', '10-revision-3', '', '', '2012-11-10 18:15:54', '2012-11-10 18:15:54', '', 10, 'http://localhost:8888/cocktails_wp/?p=17', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(18, 1, '2012-12-10 19:15:26', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2012-12-10 19:15:26', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/cocktails_wp/?p=18', 0, 'post', '', 0);
INSERT INTO `wp_posts` VALUES(19, 1, '2012-12-10 23:11:08', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2012-12-10 23:11:08', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/cocktails_wp/?page_id=19', 0, 'page', '', 0);
INSERT INTO `wp_posts` VALUES(20, 1, '2012-12-10 23:12:10', '2012-12-10 23:12:10', '<div>\r\n\r\n&nbsp;\r\n<h2>Why Carolyn''s Cocktails?</h2>\r\nI established Carolyn''s Classic Cocktails as a friendly easy-to-use site for finding drink recipes by multiple qualities that the average drink consumer would remember. Beyond primary and secondary alcohol type, I''ve organzed such categories as drinks by season, drinks by color, drinks by fruit or vegetable ingredkents, liquor accents and other accent flavors such as bitters, herbs, spices, etc. and last but not least thermal sensations. How many times have you associated a drink with a season or event that you know took place in a specific season? You might remember the color, taste or temperature sensation sucj as refreshing and cooling or warm and heady, specific flavors such as sour or spicy, but not remember the name of the drink.\r\n\r\nEnjoy!\r\n\r\n</div>', 'Home', '', 'publish', 'open', 'open', '', 'why-carolyns-cocktails', '', '', '2012-12-11 20:29:19', '2012-12-11 20:29:19', '', 0, 'http://localhost:8888/cocktails_wp/?page_id=20', 0, 'page', '', 0);
INSERT INTO `wp_posts` VALUES(21, 1, '2012-12-10 23:12:08', '2012-12-10 23:12:08', '<div>\n\n<strong></strong>I established Carolyn''s Classic Cocktails as a friendly easy-to-use site for finding drink recipes by multiple qualities that the average drink consumer would remember. Beyond primary and secondary alcohol type, I''ve organzed such categories as drinks by season, drinks by color, drinks by fruit or vegetable ingredkents, liquor accents and other accent flavors such as bitters, herbs, spices, etc. and last but not least thermal sensations. How many times have you associated a drink with a season or event that you know took place in a specific season? You might remember the color, taste or temperature sensation sucj as refreshing and cooling or warm and heady, specific flavors such as sour or spicy, but not remember the name of the drink.\n\nEnjoy!</div>', 'Why Carolyn''s Cocktails?', '', 'inherit', 'open', 'open', '', '20-revision', '', '', '2012-12-10 23:12:08', '2012-12-10 23:12:08', '', 20, 'http://localhost:8888/cocktails_wp/?p=21', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(22, 1, '2012-12-11 20:29:15', '2012-12-11 20:29:15', '<div>\n\n&nbsp;\n<h2>Why Carolyn''s Cocktails?</h2>\nI established Carolyn''s Classic Cocktails as a friendly easy-to-use site for finding drink recipes by multiple qualities that the average drink consumer would remember. Beyond primary and secondary alcohol type, I''ve organzed such categories as drinks by season, drinks by color, drinks by fruit or vegetable ingredkents, liquor accents and other accent flavors such as bitters, herbs, spices, etc. and last but not least thermal sensations. How many times have you associated a drink with a season or event that you know took place in a specific season? You might remember the color, taste or temperature sensation sucj as refreshing and cooling or warm and heady, specific flavors such as sour or spicy, but not remember the name of the drink.\n\nEnjoy!\n\n</div>', 'Home', '', 'inherit', 'open', 'open', '', '20-autosave', '', '', '2012-12-11 20:29:15', '2012-12-11 20:29:15', '', 20, 'http://localhost:8888/cocktails_wp/?p=22', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(23, 1, '2012-12-11 21:10:50', '2012-12-11 21:10:50', '<div>\n<h3>Why Carolyn''s Cocktails?</h3>\nI established Carolyn''s Classic Cocktails as a friendly easy-to-use site for finding drink recipes by multiple qualities that the average drink consumer would remember. Beyond primary and secondary alcohol type, I''ve organzed such categories as drinks by season, drinks by color, drinks by fruit or vegetable ingredkents, liquor accents and other accent flavors such as bitters, herbs, spices, etc. and last but not least thermal sensations. How many times have you associated a drink with a season or event that you know took place in a specific season? You might remember the color, taste or temperature sensation sucj as refreshing and cooling or warm and heady, specific flavors such as sour or spicy, but not remember the name of the drink.\nEnjoy!\n\n</div>', 'Home2', '', 'inherit', 'open', 'open', '', '2-autosave', '', '', '2012-12-11 21:10:50', '2012-12-11 21:10:50', '', 2, 'http://localhost:8888/cocktails_wp/?p=23', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(24, 1, '2012-11-10 15:38:45', '2012-11-10 15:38:45', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickies to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost:8888/cocktails_wp/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'open', 'open', '', '2-revision', '', '', '2012-11-10 15:38:45', '2012-11-10 15:38:45', '', 2, 'http://localhost:8888/cocktails_wp/?p=24', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(25, 1, '2012-11-10 18:18:57', '2012-11-10 18:18:57', '[two_third]\r\n[gallery columns="4"]\r\n[/two_third]\r\n\r\n[one_third_last]\r\n<h3>Why Carolyn''s Cocktails?</h3>\r\nI established Carolyn''s Classic Cocktails as a friendly easy-to-use site for finding drink recipes by multiple qualities that the average drink consumer would remember. Beyond primary and secondary alcohol type, I''ve organzed such categories as drinks by season, drinks by color, drinks by fruit or vegetable ingredkents, liquor accents and other accent flavors such as bitters, herbs, spices, etc. and last but not least thermal sensations. How many times have you associated a drink with a season or event that you know took place in a specific season? You might remember the color, taste or temperature sensation sucj as refreshing and cooling or warm and heady, specific flavors such as sour or spicy, but not remember the name of the drink.\r\n\r\nEnjoy!\r\n[/one_third_last]', 'Home', '', 'inherit', 'open', 'open', '', '10-revision-4', '', '', '2012-11-10 18:18:57', '2012-11-10 18:18:57', '', 10, 'http://localhost:8888/cocktails_wp/?p=25', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(26, 1, '2012-12-10 23:40:14', '2012-12-10 23:40:14', '<h3>list A-Z</h3>\r\n<ul>\r\n	<li><a>Americano</a></li>\r\n	<li><a>Bellini</a></li>\r\n	<li><a>Caipirinha</a></li>\r\n	<li><a>Champagne Cocktail</a></li>\r\n	<li><a>Cosmopolitan</a></li>\r\n	<li><a>Daiquiri</a></li>\r\n	<li><a>Gin Fizz</a></li>\r\n	<li><a>Kir</a></li>\r\n	<li><a>Kir Royal</a></li>\r\n	<li><a>Long Island Iced Tea</a></li>\r\n	<li><a>Manhattan -- dry, medium, sweet</a></li>\r\n	<li><a>Margarita</a></li>\r\n	<li><a>Martini dry, perfect, sweet</a></li>\r\n	<li><a>Mojito</a></li>\r\n	<li><a>Negroni</a></li>\r\n	<li><a>Singapore Sling</a></li>\r\n	<li><a>Tequila Sunrise</a></li>\r\n	<li><a>Tom Collins</a></li>\r\n	<li><a>Whiskey Sour</a></li>\r\n</ul>', 'Gallery + Index', '', 'publish', 'open', 'open', '', 'gallery-index', '', '', '2012-12-10 23:40:14', '2012-12-10 23:40:14', '', 0, 'http://localhost:8888/cocktails_wp/?page_id=26', 0, 'page', '', 0);
INSERT INTO `wp_posts` VALUES(27, 1, '2012-12-10 23:39:16', '2012-12-10 23:39:16', '', 'Gallery + Index', '', 'inherit', 'open', 'open', '', '26-revision', '', '', '2012-12-10 23:39:16', '2012-12-10 23:39:16', '', 26, 'http://localhost:8888/cocktails_wp/?p=27', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(28, 1, '2012-11-10 17:19:00', '2012-11-10 17:19:00', 'The origin of the word cocktail is disputed. The first recorded use of the word cocktail is found in The Morning Post and Gazetteer in London, England on March 20, 1798:[4] Mr. Pitt, two petit vers of "L''huile de Venus" Ditto, one of "perfeit amour" Ditto, "cock-tail" (vulgarly called ginger) The first recorded use of the word cocktail in the United States is said to be in The Farmer''s Cabinet on April 28, 1803:[5] Drank a glass of cocktailâ€”excellent for the head...Call''d at the Doct''s. found Burnhamâ€”he looked very wiseâ€”drank another glass of cocktail. A definition of cocktail appeared in the May 13, 1806, edition of The Balance and Columbian Repository, a publication in Hudson, New York, in which an answer was provided to the question, "What is a cocktail?". It replied: Cock-tail is a stimulating liquor, composed of spirits of any kind, sugar, water, and bittersâ€”it is vulgarly called bittered sling, and is supposed to be an excellent electioneering potion, inasmuch as it renders the heart stout and bold, at the same time that it fuddles the head. It is said, also to be of great use to a democratic candidate: because a person, having swallowed a glass of it, is ready to swallow any thing else.', 'Notes on the History of Cocktails', '', 'inherit', 'open', 'open', '', '4-revision-5', '', '', '2012-11-10 17:19:00', '2012-11-10 17:19:00', '', 4, 'http://localhost:8888/cocktails_wp/?p=28', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(29, 1, '2012-12-10 23:46:00', '2012-12-10 23:46:00', 'The origin of the word cocktail is disputed. The first recorded use of the word cocktail is found in The Morning Post and Gazetteer in London, England on March 20, 1798:[4] Mr. Pitt, two petit vers of "L''huile de Venus" Ditto, one of "perfeit amour" Ditto, "cock-tail" (vulgarly called ginger) The first recorded use of the word cocktail in the United States is said to be in The Farmer''s Cabinet on April 28, 1803:[5] Drank a glass of cocktailâ€”excellent for the head...Call''d at the Doct''s. found Burnhamâ€”he looked very wiseâ€”drank another glass of cocktail. A definition of cocktail appeared in the May 13, 1806, edition of The Balance and Columbian Repository, a publication in Hudson, New York, in which an answer was provided to the question, "What is a cocktail?". It replied: Cock-tail is a stimulating liquor, composed of spirits of any kind, sugar, water, and bittersâ€”it is vulgarly called bittered sling, and is supposed to be an excellent electioneering potion, inasmuch as it renders the heart stout and bold, at the same time that it fuddles the head. It is said, also to be of great use to a democratic candidate: because a person, having swallowed a glass of it, is ready to swallow any thing else.', 'Notes on the History of Cocktails', '', 'inherit', 'open', 'open', '', '4-revision-6', '', '', '2012-12-10 23:46:00', '2012-12-10 23:46:00', '', 4, 'http://localhost:8888/cocktails_wp/?p=29', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(30, 1, '2012-12-11 14:44:35', '2012-12-11 14:44:35', 'The origin of the word <em>cocktail</em> is disputed.\r\n\r\nIn September 2005, archaeochemist Patrick McGovern from Pennsylvania University, Philadelphia, USA, announced the discovery of 5,000-year-old Mesopotamian earthenware from the banks of the Tigris between Iran and Iraq containing traces of tartaric acid, honey, apple juice and barley. McGovern described this early cocktail as "grog".[1]\r\n\r\nThe first recorded use of the word <em>cocktail</em> is found in <em>The Morning Post and Gazetteer in London, England</em> on March 20, 1798: [2]\r\n<blockquote>\r\n<div>\r\n\r\nMr. Pitt,\r\ntwo petit vers of “L’huile de Venus”\r\nDitto, one of “perfeit amour”\r\nDitto, “cock-tail” (vulgarly called ginger)\r\n\r\n</div></blockquote>\r\nThe first recorded use of the word <em>cocktail</em> in the United States is said to be in <em>The Farmer''s Cabinet</em> on April 28, 1803:[3]\r\n\r\n<em>Cock-tail</em> is a stimulating liquor, composed of spirits of any kind, sugar, water, and bitters—it is vulgarly called <em>bittered sling</em>, and is supposed to be an excellent electioneering potion, inasmuch as it renders the heart stout and bold, at the same time that it fuddles the head. It is said, also to be of great use to a <a title="United States Democratic-Republican Party" href="http://en.wikipedia.org/wiki/United_States_Democratic-Republican_Party">democratic </a>candidate: because a person, having swallowed a glass of it, is ready to swallow any thing else.\r\n\r\n[1] . Jared Brown &amp; Anistatia Miller (2009). <em>Spirituous Journey: A History of Drink, Book Two</em>. Mixellany Limited.\r\n\r\n[2]. David Wondrich (2007). <em>Imbibe!: From Absinthe Cocktail to Whiskey Smash, a Salute in Stories and Drinks to "Professor" Jerry Thomas, Pioneer of the American Bar</em>. Perigee Trade.\r\n\r\n[3]. The Balance and Columbian Repository: May 13, 1806, No. 19, Vol. V, page 146\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Notes on the History of Cocktails', '', 'inherit', 'open', 'open', '', '4-revision-7', '', '', '2012-12-11 14:44:35', '2012-12-11 14:44:35', '', 4, 'http://localhost:8888/cocktails_wp/?p=30', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(31, 1, '2012-12-10 23:12:10', '2012-12-10 23:12:10', '<div>\r\n\r\n<strong></strong>I established Carolyn''s Classic Cocktails as a friendly easy-to-use site for finding drink recipes by multiple qualities that the average drink consumer would remember. Beyond primary and secondary alcohol type, I''ve organzed such categories as drinks by season, drinks by color, drinks by fruit or vegetable ingredkents, liquor accents and other accent flavors such as bitters, herbs, spices, etc. and last but not least thermal sensations. How many times have you associated a drink with a season or event that you know took place in a specific season? You might remember the color, taste or temperature sensation sucj as refreshing and cooling or warm and heady, specific flavors such as sour or spicy, but not remember the name of the drink.\r\n\r\nEnjoy!</div>', 'Why Carolyn''s Cocktails?', '', 'inherit', 'open', 'open', '', '20-revision-2', '', '', '2012-12-10 23:12:10', '2012-12-10 23:12:10', '', 20, 'http://localhost:8888/cocktails_wp/?p=31', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(32, 1, '2012-12-10 23:37:04', '2012-12-10 23:37:04', '<div>\r\n<h3>Why Carolyn''s Cocktails?</h3>\r\nI established Carolyn''s Classic Cocktails as a friendly easy-to-use site for finding drink recipes by multiple qualities that the average drink consumer would remember. Beyond primary and secondary alcohol type, I''ve organzed such categories as drinks by season, drinks by color, drinks by fruit or vegetable ingredkents, liquor accents and other accent flavors such as bitters, herbs, spices, etc. and last but not least thermal sensations. How many times have you associated a drink with a season or event that you know took place in a specific season? You might remember the color, taste or temperature sensation sucj as refreshing and cooling or warm and heady, specific flavors such as sour or spicy, but not remember the name of the drink.\r\nEnjoy!\r\n\r\n</div>', 'Home', '', 'inherit', 'open', 'open', '', '2-revision-2', '', '', '2012-12-10 23:37:04', '2012-12-10 23:37:04', '', 2, 'http://localhost:8888/cocktails_wp/?p=32', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(33, 1, '2012-12-11 20:53:52', '2012-12-11 20:53:52', '', 'collins', '', 'inherit', 'open', 'open', '', 'collins', '', '', '2012-12-11 20:53:52', '2012-12-11 20:53:52', '', 26, 'http://localhost:8888/cocktails_wp/wp-content/uploads/2012/12/collins.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` VALUES(34, 1, '2012-12-11 20:55:05', '2012-12-11 20:55:05', '', 'highball_short', '', 'inherit', 'open', 'open', '', 'highball_short', '', '', '2012-12-11 20:55:05', '2012-12-11 20:55:05', '', 26, 'http://localhost:8888/cocktails_wp/wp-content/uploads/2012/12/highball_short.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` VALUES(35, 1, '2012-12-11 20:55:05', '2012-12-11 20:55:05', '', 'hip-highbal', '', 'inherit', 'open', 'open', '', 'hip-highbal', '', '', '2012-12-11 20:55:05', '2012-12-11 20:55:05', '', 26, 'http://localhost:8888/cocktails_wp/wp-content/uploads/2012/12/hip-highbal.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` VALUES(36, 1, '2012-12-11 20:55:05', '2012-12-11 20:55:05', '', 'hot-coffee', '', 'inherit', 'open', 'open', '', 'hot-coffee', '', '', '2012-12-11 20:55:05', '2012-12-11 20:55:05', '', 26, 'http://localhost:8888/cocktails_wp/wp-content/uploads/2012/12/hot-coffee.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` VALUES(37, 1, '2012-12-11 20:55:05', '2012-12-11 20:55:05', '', 'old-fashioned', '', 'inherit', 'open', 'open', '', 'old-fashioned', '', '', '2012-12-11 20:55:05', '2012-12-11 20:55:05', '', 26, 'http://localhost:8888/cocktails_wp/wp-content/uploads/2012/12/old-fashioned.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` VALUES(38, 1, '2012-12-11 20:55:15', '2012-12-11 20:55:15', '', 'pilsner', '', 'inherit', 'open', 'open', '', 'pilsner', '', '', '2012-12-11 20:55:15', '2012-12-11 20:55:15', '', 26, 'http://localhost:8888/cocktails_wp/wp-content/uploads/2012/12/pilsner.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` VALUES(39, 1, '2012-12-11 20:55:15', '2012-12-11 20:55:15', '', 'pouse-cafe-cocktail', '', 'inherit', 'open', 'open', '', 'pouse-cafe-cocktail', '', '', '2012-12-11 20:55:15', '2012-12-11 20:55:15', '', 26, 'http://localhost:8888/cocktails_wp/wp-content/uploads/2012/12/pouse-cafe-cocktail.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` VALUES(40, 1, '2012-12-11 20:55:15', '2012-12-11 20:55:15', '', 'sour-coupe', '', 'inherit', 'open', 'open', '', 'sour-coupe', '', '', '2012-12-11 20:55:15', '2012-12-11 20:55:15', '', 26, 'http://localhost:8888/cocktails_wp/wp-content/uploads/2012/12/sour-coupe.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` VALUES(41, 1, '2012-12-11 20:55:15', '2012-12-11 20:55:15', '', 'sour-deep', '', 'inherit', 'open', 'open', '', 'sour-deep', '', '', '2012-12-11 20:55:15', '2012-12-11 20:55:15', '', 26, 'http://localhost:8888/cocktails_wp/wp-content/uploads/2012/12/sour-deep.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` VALUES(42, 1, '2012-12-11 20:55:15', '2012-12-11 20:55:15', '', 'tropical-hurricane', '', 'inherit', 'open', 'open', '', 'tropical-hurricane', '', '', '2012-12-11 20:55:15', '2012-12-11 20:55:15', '', 26, 'http://localhost:8888/cocktails_wp/wp-content/uploads/2012/12/tropical-hurricane.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` VALUES(43, 1, '2012-12-11 21:03:54', '2012-12-11 21:03:54', 'mnbmnmnmnnmn', 'abrcadabra', '', 'publish', 'open', 'open', '', 'abrcadabra', '', '', '2012-12-11 21:17:06', '2012-12-11 21:17:06', '', 0, 'http://localhost:8888/cocktails_wp/?page_id=43', 0, 'page', '', 0);
INSERT INTO `wp_posts` VALUES(44, 1, '2012-12-11 21:03:42', '2012-12-11 21:03:42', '', 'Auto Draft', '', 'inherit', 'open', 'open', '', '43-revision', '', '', '2012-12-11 21:03:42', '2012-12-11 21:03:42', '', 43, 'http://localhost:8888/cocktails_wp/?p=44', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(45, 1, '2012-12-11 21:03:50', '2012-12-11 21:03:50', '', 'abrcadabra', '', 'inherit', 'open', 'open', '', '43-revision-2', '', '', '2012-12-11 21:03:50', '2012-12-11 21:03:50', '', 43, 'http://localhost:8888/cocktails_wp/?p=45', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(46, 1, '2012-12-11 21:03:54', '2012-12-11 21:03:54', '', 'abrcadabra', '', 'inherit', 'open', 'open', '', '43-revision-3', '', '', '2012-12-11 21:03:54', '2012-12-11 21:03:54', '', 43, 'http://localhost:8888/cocktails_wp/?p=46', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(47, 1, '2012-12-11 21:06:36', '2012-12-11 21:06:36', ' ', '', '', 'publish', 'open', 'open', '', '47', '', '', '2012-12-11 21:30:02', '2012-12-11 21:30:02', '', 0, 'http://localhost:8888/cocktails_wp/?p=47', 2, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` VALUES(48, 1, '2012-12-11 21:06:36', '2012-12-11 21:06:36', ' ', '', '', 'publish', 'open', 'open', '', '48', '', '', '2012-12-11 21:30:02', '2012-12-11 21:30:02', '', 0, 'http://localhost:8888/cocktails_wp/?p=48', 3, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` VALUES(49, 1, '2012-12-11 21:06:36', '2012-12-11 21:06:36', ' ', '', '', 'publish', 'open', 'open', '', '49', '', '', '2012-12-11 21:30:02', '2012-12-11 21:30:02', '', 0, 'http://localhost:8888/cocktails_wp/?p=49', 1, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` VALUES(50, 1, '2012-12-11 21:06:36', '2012-12-11 21:06:36', ' ', '', '', 'publish', 'open', 'open', '', '50', '', '', '2012-12-11 21:30:02', '2012-12-11 21:30:02', '', 0, 'http://localhost:8888/cocktails_wp/?p=50', 4, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` VALUES(51, 1, '2012-12-11 20:51:29', '2012-12-11 20:51:29', '<div>\r\n<h3>Why Carolyn''s Cocktails?</h3>\r\nI established Carolyn''s Classic Cocktails as a friendly easy-to-use site for finding drink recipes by multiple qualities that the average drink consumer would remember. Beyond primary and secondary alcohol type, I''ve organzed such categories as drinks by season, drinks by color, drinks by fruit or vegetable ingredkents, liquor accents and other accent flavors such as bitters, herbs, spices, etc. and last but not least thermal sensations. How many times have you associated a drink with a season or event that you know took place in a specific season? You might remember the color, taste or temperature sensation sucj as refreshing and cooling or warm and heady, specific flavors such as sour or spicy, but not remember the name of the drink.\r\nEnjoy!\r\n\r\n</div>', 'Home2', '', 'inherit', 'open', 'open', '', '2-revision-3', '', '', '2012-12-11 20:51:29', '2012-12-11 20:51:29', '', 2, 'http://localhost:8888/cocktails_wp/?p=51', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(52, 1, '2012-12-11 21:14:11', '2012-12-11 21:14:11', '', 'sponsors', '', 'publish', 'open', 'open', '', 'sponsors', '', '', '2012-12-11 21:14:11', '2012-12-11 21:14:11', '', 0, 'http://localhost:8888/cocktails_wp/?page_id=52', 0, 'page', '', 0);
INSERT INTO `wp_posts` VALUES(53, 1, '2012-12-11 21:14:00', '2012-12-11 21:14:00', '', 'Auto Draft', '', 'inherit', 'open', 'open', '', '52-revision', '', '', '2012-12-11 21:14:00', '2012-12-11 21:14:00', '', 52, 'http://localhost:8888/cocktails_wp/?p=53', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(54, 1, '2012-12-11 21:14:20', '2012-12-11 21:14:20', '<h2>bkklllll</h2>', 'comments', '', 'publish', 'open', 'open', '', 'comments', '', '', '2012-12-11 21:31:16', '2012-12-11 21:31:16', '', 0, 'http://localhost:8888/cocktails_wp/?page_id=54', 0, 'page', '', 0);
INSERT INTO `wp_posts` VALUES(55, 1, '2012-12-11 21:14:13', '2012-12-11 21:14:13', '', 'Auto Draft', '', 'inherit', 'open', 'open', '', '54-revision', '', '', '2012-12-11 21:14:13', '2012-12-11 21:14:13', '', 54, 'http://localhost:8888/cocktails_wp/?p=55', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(56, 1, '2012-12-11 21:14:20', '2012-12-11 21:14:20', '', 'comments', '', 'inherit', 'open', 'open', '', '54-revision-2', '', '', '2012-12-11 21:14:20', '2012-12-11 21:14:20', '', 54, 'http://localhost:8888/cocktails_wp/?p=56', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(57, 1, '2012-12-11 21:14:40', '2012-12-11 21:14:40', '', 'comments', '', 'inherit', 'open', 'open', '', '54-revision-3', '', '', '2012-12-11 21:14:40', '2012-12-11 21:14:40', '', 54, 'http://localhost:8888/cocktails_wp/?p=57', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(58, 1, '2012-12-11 21:15:34', '2012-12-11 21:15:34', ' ', '', '', 'publish', 'open', 'open', '', '58', '', '', '2012-12-11 21:25:05', '2012-12-11 21:25:05', '', 0, 'http://localhost:8888/cocktails_wp/?p=58', 1, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` VALUES(59, 1, '2012-12-11 21:15:34', '2012-12-11 21:15:34', ' ', '', '', 'publish', 'open', 'open', '', '59', '', '', '2012-12-11 21:25:05', '2012-12-11 21:25:05', '', 0, 'http://localhost:8888/cocktails_wp/?p=59', 2, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` VALUES(60, 1, '2012-12-11 21:03:56', '2012-12-11 21:03:56', '', 'abrcadabra', '', 'inherit', 'open', 'open', '', '43-revision-4', '', '', '2012-12-11 21:03:56', '2012-12-11 21:03:56', '', 43, 'http://localhost:8888/cocktails_wp/?p=60', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(61, 1, '2012-12-11 21:18:07', '2012-12-11 21:18:07', 'mnbmnmnmnnmn', 'abrcadabra', '', 'inherit', 'open', 'open', '', '43-autosave', '', '', '2012-12-11 21:18:07', '2012-12-11 21:18:07', '', 43, 'http://localhost:8888/cocktails_wp/?p=61', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(62, 1, '2012-12-11 21:22:46', '2012-12-11 21:22:46', '<ul>\r\n	<li><a>sponsors</a></li>\r\n	<li><a>products</a></li>\r\n	<li><a>resources</a></li>\r\n	<li><a>fantastic cocktail and mixology</a></li>\r\n</ul>', 'fantastic cocktail and mixology sites', '', 'publish', 'open', 'open', '', 'fantastic-cocktail-and-mixology-sites', '', '', '2012-12-11 21:22:56', '2012-12-11 21:22:56', '', 0, 'http://localhost:8888/cocktails_wp/?page_id=62', 0, 'page', '', 0);
INSERT INTO `wp_posts` VALUES(63, 1, '2012-12-11 21:22:42', '2012-12-11 21:22:42', '<ul>\n	<li><a>sponsors</a></li>\n	<li><a>products</a></li>\n	<li><a>resources</a></li>\n	<li><a>fantastic cocktail and mixology</a></li>\n</ul>', 'fantastic cocktail and mixology sites', '', 'inherit', 'open', 'open', '', '62-revision', '', '', '2012-12-11 21:22:42', '2012-12-11 21:22:42', '', 62, 'http://localhost:8888/cocktails_wp/?p=63', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(64, 1, '2012-12-11 21:22:46', '2012-12-11 21:22:46', '<ul>\r\n	<li><a>sponsors</a></li>\r\n	<li><a>products</a></li>\r\n	<li><a>resources</a></li>\r\n	<li><a>fantastic cocktail and mixology</a></li>\r\n</ul>', 'fantastic cocktail and mixology sites', '', 'inherit', 'open', 'open', '', '62-revision-2', '', '', '2012-12-11 21:22:46', '2012-12-11 21:22:46', '', 62, 'http://localhost:8888/cocktails_wp/?p=64', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(65, 1, '2012-12-11 21:23:33', '2012-12-11 21:23:33', 'bad products', 'products', '', 'publish', 'open', 'open', '', 'products', '', '', '2012-12-11 21:23:33', '2012-12-11 21:23:33', '', 0, 'http://localhost:8888/cocktails_wp/?page_id=65', 0, 'page', '', 0);
INSERT INTO `wp_posts` VALUES(66, 1, '2012-12-11 21:23:23', '2012-12-11 21:23:23', '', 'products', '', 'inherit', 'open', 'open', '', '65-revision', '', '', '2012-12-11 21:23:23', '2012-12-11 21:23:23', '', 65, 'http://localhost:8888/cocktails_wp/?p=66', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(67, 1, '2012-12-11 21:23:31', '2012-12-11 21:23:31', 'bad products', 'products', '', 'inherit', 'open', 'open', '', '65-revision-2', '', '', '2012-12-11 21:23:31', '2012-12-11 21:23:31', '', 65, 'http://localhost:8888/cocktails_wp/?p=67', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(68, 1, '2012-12-11 21:24:09', '2012-12-11 21:24:09', '', 'resources', '', 'publish', 'open', 'open', '', 'resources', '', '', '2012-12-11 21:24:09', '2012-12-11 21:24:09', '', 0, 'http://localhost:8888/cocktails_wp/?page_id=68', 0, 'page', '', 0);
INSERT INTO `wp_posts` VALUES(69, 1, '2012-12-11 21:23:58', '2012-12-11 21:23:58', '', 'Auto Draft', '', 'inherit', 'open', 'open', '', '68-revision', '', '', '2012-12-11 21:23:58', '2012-12-11 21:23:58', '', 68, 'http://localhost:8888/cocktails_wp/?p=69', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(70, 1, '2012-12-11 21:24:07', '2012-12-11 21:24:07', '', 'resources', '', 'inherit', 'open', 'open', '', '68-revision-2', '', '', '2012-12-11 21:24:07', '2012-12-11 21:24:07', '', 68, 'http://localhost:8888/cocktails_wp/?p=70', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(71, 1, '2012-12-11 21:24:39', '2012-12-11 21:24:39', '', 'contact me', '', 'publish', 'open', 'open', '', 'contact-me', '', '', '2012-12-11 21:24:39', '2012-12-11 21:24:39', '', 0, 'http://localhost:8888/cocktails_wp/?page_id=71', 0, 'page', '', 0);
INSERT INTO `wp_posts` VALUES(72, 1, '2012-12-11 21:24:27', '2012-12-11 21:24:27', '', 'Auto Draft', '', 'inherit', 'open', 'open', '', '71-revision', '', '', '2012-12-11 21:24:27', '2012-12-11 21:24:27', '', 71, 'http://localhost:8888/cocktails_wp/?p=72', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(73, 1, '2012-12-11 21:24:37', '2012-12-11 21:24:37', '', 'contact me', '', 'inherit', 'open', 'open', '', '71-revision-2', '', '', '2012-12-11 21:24:37', '2012-12-11 21:24:37', '', 71, 'http://localhost:8888/cocktails_wp/?p=73', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(74, 1, '2012-12-11 21:25:05', '2012-12-11 21:25:05', ' ', '', '', 'publish', 'open', 'open', '', '74', '', '', '2012-12-11 21:25:05', '2012-12-11 21:25:05', '', 0, 'http://localhost:8888/cocktails_wp/?p=74', 3, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` VALUES(75, 1, '2012-12-11 21:25:05', '2012-12-11 21:25:05', ' ', '', '', 'publish', 'open', 'open', '', '75', '', '', '2012-12-11 21:25:05', '2012-12-11 21:25:05', '', 0, 'http://localhost:8888/cocktails_wp/?p=75', 4, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` VALUES(76, 1, '2012-12-11 21:25:05', '2012-12-11 21:25:05', ' ', '', '', 'publish', 'open', 'open', '', '76', '', '', '2012-12-11 21:25:05', '2012-12-11 21:25:05', '', 0, 'http://localhost:8888/cocktails_wp/?p=76', 5, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` VALUES(77, 1, '2012-12-11 21:25:05', '2012-12-11 21:25:05', ' ', '', '', 'publish', 'open', 'open', '', '77', '', '', '2012-12-11 21:25:05', '2012-12-11 21:25:05', '', 0, 'http://localhost:8888/cocktails_wp/?p=77', 6, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` VALUES(78, 1, '2012-12-11 21:26:22', '2012-12-11 21:26:22', '', 'Blog', '', 'publish', 'open', 'open', '', 'blog', '', '', '2012-12-11 21:26:22', '2012-12-11 21:26:22', '', 0, 'http://localhost:8888/cocktails_wp/?page_id=78', 0, 'page', '', 0);
INSERT INTO `wp_posts` VALUES(79, 1, '2012-12-11 21:26:12', '2012-12-11 21:26:12', '', 'Auto Draft', '', 'inherit', 'open', 'open', '', '78-revision', '', '', '2012-12-11 21:26:12', '2012-12-11 21:26:12', '', 78, 'http://localhost:8888/cocktails_wp/?p=79', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(80, 1, '2012-12-11 21:26:20', '2012-12-11 21:26:20', '', 'Blog', '', 'inherit', 'open', 'open', '', '78-revision-2', '', '', '2012-12-11 21:26:20', '2012-12-11 21:26:20', '', 78, 'http://localhost:8888/cocktails_wp/?p=80', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(81, 1, '2012-12-11 21:26:57', '2012-12-11 21:26:57', 'Long drinks are good', 'Long Drinks', '', 'publish', 'open', 'open', '', 'long-drinks', '', '', '2012-12-11 21:26:57', '2012-12-11 21:26:57', '', 0, 'http://localhost:8888/cocktails_wp/?page_id=81', 0, 'page', '', 0);
INSERT INTO `wp_posts` VALUES(82, 1, '2012-12-11 21:26:50', '2012-12-11 21:26:50', '', 'Long Drinks', '', 'inherit', 'open', 'open', '', '81-revision', '', '', '2012-12-11 21:26:50', '2012-12-11 21:26:50', '', 81, 'http://localhost:8888/cocktails_wp/?p=82', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(83, 1, '2012-12-11 21:26:55', '2012-12-11 21:26:55', 'Long drinks are good', 'Long Drinks', '', 'inherit', 'open', 'open', '', '81-revision-2', '', '', '2012-12-11 21:26:55', '2012-12-11 21:26:55', '', 81, 'http://localhost:8888/cocktails_wp/?p=83', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(84, 1, '2012-12-11 21:27:15', '2012-12-11 21:27:15', 'Fancy Drinks are too sweet', 'Fancy Drinks', '', 'publish', 'open', 'open', '', 'fancy-drinks', '', '', '2012-12-11 21:27:15', '2012-12-11 21:27:15', '', 0, 'http://localhost:8888/cocktails_wp/?page_id=84', 0, 'page', '', 0);
INSERT INTO `wp_posts` VALUES(85, 1, '2012-12-11 21:27:06', '2012-12-11 21:27:06', '', 'Fancy Drinks', '', 'inherit', 'open', 'open', '', '84-revision', '', '', '2012-12-11 21:27:06', '2012-12-11 21:27:06', '', 84, 'http://localhost:8888/cocktails_wp/?p=85', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(86, 1, '2012-12-11 21:27:13', '2012-12-11 21:27:13', 'Fancy Drinks are too sweet', 'Fancy Drinks', '', 'inherit', 'open', 'open', '', '84-revision-2', '', '', '2012-12-11 21:27:13', '2012-12-11 21:27:13', '', 84, 'http://localhost:8888/cocktails_wp/?p=86', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(87, 1, '2012-12-11 21:27:54', '2012-12-11 21:27:54', 'Sone Dry and/or Medium drinks are good', 'Dry and Medium', '', 'publish', 'open', 'open', '', '87-2', '', '', '2012-12-11 21:28:08', '2012-12-11 21:28:08', '', 0, 'http://localhost:8888/cocktails_wp/?page_id=87', 0, 'page', '', 0);
INSERT INTO `wp_posts` VALUES(88, 1, '2012-12-11 21:27:31', '2012-12-11 21:27:31', '', 'Auto Draft', '', 'inherit', 'open', 'open', '', '87-revision', '', '', '2012-12-11 21:27:31', '2012-12-11 21:27:31', '', 87, 'http://localhost:8888/cocktails_wp/?p=88', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(89, 1, '2012-12-11 21:27:52', '2012-12-11 21:27:52', 'Sone Dry and/or Medium drinks are good', '', '', 'inherit', 'open', 'open', '', '87-revision-2', '', '', '2012-12-11 21:27:52', '2012-12-11 21:27:52', '', 87, 'http://localhost:8888/cocktails_wp/?p=89', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(90, 1, '2012-12-11 21:27:54', '2012-12-11 21:27:54', 'Sone Dry and/or Medium drinks are good', '', '', 'inherit', 'open', 'open', '', '87-revision-3', '', '', '2012-12-11 21:27:54', '2012-12-11 21:27:54', '', 87, 'http://localhost:8888/cocktails_wp/?p=90', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(91, 1, '2012-12-11 21:28:34', '2012-12-11 21:28:34', 'Sweet Drinks are just too fucking sweet', 'Sweet', '', 'publish', 'open', 'open', '', 'sweet', '', '', '2012-12-11 21:28:34', '2012-12-11 21:28:34', '', 0, 'http://localhost:8888/cocktails_wp/?page_id=91', 0, 'page', '', 0);
INSERT INTO `wp_posts` VALUES(92, 1, '2012-12-11 21:28:19', '2012-12-11 21:28:19', '', 'Sweet', '', 'inherit', 'open', 'open', '', '91-revision', '', '', '2012-12-11 21:28:19', '2012-12-11 21:28:19', '', 91, 'http://localhost:8888/cocktails_wp/?p=92', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(93, 1, '2012-12-11 21:28:31', '2012-12-11 21:28:31', 'Sweet Drinks are just too fucking sweet', 'Sweet', '', 'inherit', 'open', 'open', '', '91-revision-2', '', '', '2012-12-11 21:28:31', '2012-12-11 21:28:31', '', 91, 'http://localhost:8888/cocktails_wp/?p=93', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(94, 1, '2012-12-11 21:30:02', '2012-12-11 21:30:02', ' ', '', '', 'publish', 'open', 'open', '', '94', '', '', '2012-12-11 21:30:02', '2012-12-11 21:30:02', '', 0, 'http://localhost:8888/cocktails_wp/?p=94', 5, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` VALUES(95, 1, '2012-12-11 21:30:02', '2012-12-11 21:30:02', ' ', '', '', 'publish', 'open', 'open', '', '95', '', '', '2012-12-11 21:30:02', '2012-12-11 21:30:02', '', 0, 'http://localhost:8888/cocktails_wp/?p=95', 6, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` VALUES(96, 1, '2012-12-11 21:30:02', '2012-12-11 21:30:02', ' ', '', '', 'publish', 'open', 'open', '', '96', '', '', '2012-12-11 21:30:02', '2012-12-11 21:30:02', '', 0, 'http://localhost:8888/cocktails_wp/?p=96', 7, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` VALUES(97, 1, '2012-12-11 21:30:02', '2012-12-11 21:30:02', ' ', '', '', 'publish', 'open', 'open', '', '97', '', '', '2012-12-11 21:30:02', '2012-12-11 21:30:02', '', 0, 'http://localhost:8888/cocktails_wp/?p=97', 8, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` VALUES(98, 1, '2012-12-11 21:30:02', '2012-12-11 21:30:02', ' ', '', '', 'publish', 'open', 'open', '', '98', '', '', '2012-12-11 21:30:02', '2012-12-11 21:30:02', '', 0, 'http://localhost:8888/cocktails_wp/?p=98', 9, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` VALUES(99, 1, '2012-12-11 21:14:46', '2012-12-11 21:14:46', 'bkklllll', 'comments', '', 'inherit', 'open', 'open', '', '54-revision-4', '', '', '2012-12-11 21:14:46', '2012-12-11 21:14:46', '', 54, 'http://localhost:8888/cocktails_wp/?p=99', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` VALUES(1, 1, 0);
INSERT INTO `wp_term_relationships` VALUES(1, 2, 0);
INSERT INTO `wp_term_relationships` VALUES(2, 2, 0);
INSERT INTO `wp_term_relationships` VALUES(3, 2, 0);
INSERT INTO `wp_term_relationships` VALUES(4, 1, 0);
INSERT INTO `wp_term_relationships` VALUES(4, 2, 0);
INSERT INTO `wp_term_relationships` VALUES(4, 3, 0);
INSERT INTO `wp_term_relationships` VALUES(4, 4, 0);
INSERT INTO `wp_term_relationships` VALUES(4, 5, 0);
INSERT INTO `wp_term_relationships` VALUES(4, 6, 0);
INSERT INTO `wp_term_relationships` VALUES(4, 7, 0);
INSERT INTO `wp_term_relationships` VALUES(4, 8, 0);
INSERT INTO `wp_term_relationships` VALUES(4, 9, 0);
INSERT INTO `wp_term_relationships` VALUES(5, 2, 0);
INSERT INTO `wp_term_relationships` VALUES(6, 2, 0);
INSERT INTO `wp_term_relationships` VALUES(7, 2, 0);
INSERT INTO `wp_term_relationships` VALUES(47, 10, 0);
INSERT INTO `wp_term_relationships` VALUES(48, 10, 0);
INSERT INTO `wp_term_relationships` VALUES(49, 10, 0);
INSERT INTO `wp_term_relationships` VALUES(50, 10, 0);
INSERT INTO `wp_term_relationships` VALUES(58, 11, 0);
INSERT INTO `wp_term_relationships` VALUES(59, 11, 0);
INSERT INTO `wp_term_relationships` VALUES(74, 11, 0);
INSERT INTO `wp_term_relationships` VALUES(75, 11, 0);
INSERT INTO `wp_term_relationships` VALUES(76, 11, 0);
INSERT INTO `wp_term_relationships` VALUES(77, 11, 0);
INSERT INTO `wp_term_relationships` VALUES(94, 10, 0);
INSERT INTO `wp_term_relationships` VALUES(95, 10, 0);
INSERT INTO `wp_term_relationships` VALUES(96, 10, 0);
INSERT INTO `wp_term_relationships` VALUES(97, 10, 0);
INSERT INTO `wp_term_relationships` VALUES(98, 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` VALUES(1, 1, 'category', '', 0, 2);
INSERT INTO `wp_term_taxonomy` VALUES(2, 2, 'link_category', '', 0, 7);
INSERT INTO `wp_term_taxonomy` VALUES(3, 3, 'category', '', 0, 1);
INSERT INTO `wp_term_taxonomy` VALUES(4, 4, 'category', '', 0, 1);
INSERT INTO `wp_term_taxonomy` VALUES(5, 5, 'category', '', 0, 1);
INSERT INTO `wp_term_taxonomy` VALUES(6, 6, 'post_tag', '', 0, 1);
INSERT INTO `wp_term_taxonomy` VALUES(7, 7, 'post_tag', '', 0, 1);
INSERT INTO `wp_term_taxonomy` VALUES(8, 8, 'post_tag', '', 0, 1);
INSERT INTO `wp_term_taxonomy` VALUES(9, 9, 'post_tag', '', 0, 1);
INSERT INTO `wp_term_taxonomy` VALUES(10, 10, 'nav_menu', '', 0, 9);
INSERT INTO `wp_term_taxonomy` VALUES(11, 11, 'nav_menu', '', 0, 6);

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` VALUES(1, 'Uncategorized', 'uncategorized', 0);
INSERT INTO `wp_terms` VALUES(2, 'Blogroll', 'blogroll', 0);
INSERT INTO `wp_terms` VALUES(3, 'culture', 'culture', 0);
INSERT INTO `wp_terms` VALUES(4, 'history', 'history', 0);
INSERT INTO `wp_terms` VALUES(5, 'popular culture', 'popular-culture', 0);
INSERT INTO `wp_terms` VALUES(6, 'definition', 'definition', 0);
INSERT INTO `wp_terms` VALUES(7, 'etymology', 'etymology', 0);
INSERT INTO `wp_terms` VALUES(8, 'technique', 'technique', 0);
INSERT INTO `wp_terms` VALUES(9, 'terminology', 'terminology', 0);
INSERT INTO `wp_terms` VALUES(10, 'Main Menu', 'main-menu', 0);
INSERT INTO `wp_terms` VALUES(11, 'Footer Menu', 'footer-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` VALUES(1, 1, 'first_name', '');
INSERT INTO `wp_usermeta` VALUES(2, 1, 'last_name', '');
INSERT INTO `wp_usermeta` VALUES(3, 1, 'nickname', 'macassel');
INSERT INTO `wp_usermeta` VALUES(4, 1, 'description', '');
INSERT INTO `wp_usermeta` VALUES(5, 1, 'rich_editing', 'true');
INSERT INTO `wp_usermeta` VALUES(6, 1, 'comment_shortcuts', 'false');
INSERT INTO `wp_usermeta` VALUES(7, 1, 'admin_color', 'fresh');
INSERT INTO `wp_usermeta` VALUES(8, 1, 'use_ssl', '0');
INSERT INTO `wp_usermeta` VALUES(9, 1, 'show_admin_bar_front', 'true');
INSERT INTO `wp_usermeta` VALUES(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";s:1:"1";}');
INSERT INTO `wp_usermeta` VALUES(11, 1, 'wp_user_level', '10');
INSERT INTO `wp_usermeta` VALUES(12, 1, 'dismissed_wp_pointers', 'wp330_toolbar,wp330_media_uploader,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link');
INSERT INTO `wp_usermeta` VALUES(13, 1, 'show_welcome_panel', '1');
INSERT INTO `wp_usermeta` VALUES(14, 1, 'wp_dashboard_quick_press_last_post_id', '18');
INSERT INTO `wp_usermeta` VALUES(15, 1, 'wp_user-settings', 'hidetb=1&galcols=4&editor=tinymce');
INSERT INTO `wp_usermeta` VALUES(16, 1, 'wp_user-settings-time', '1355181066');
INSERT INTO `wp_usermeta` VALUES(17, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}');
INSERT INTO `wp_usermeta` VALUES(18, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";}');
INSERT INTO `wp_usermeta` VALUES(19, 1, 'nav_menu_recently_edited', '10');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` VALUES(1, 'macassel', '$P$BiWll4PCSGRU61ADjaWYxes41.ABxQ/', 'macassel', 'macassel1@gmail.com', '', '2012-11-10 15:38:45', '', 0, 'macassel');
