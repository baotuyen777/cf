-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2017 at 06:19 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cafe`
--

-- --------------------------------------------------------

--
-- Table structure for table `cf_commentmeta`
--

CREATE TABLE `cf_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cf_comments`
--

CREATE TABLE `cf_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cf_comments`
--

INSERT INTO `cf_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-06-30 11:39:34', '2017-06-30 11:39:34', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cf_links`
--

CREATE TABLE `cf_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cf_options`
--

CREATE TABLE `cf_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cf_options`
--

INSERT INTO `cf_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/cafe', 'yes'),
(2, 'home', 'http://localhost/cafe', 'yes'),
(3, 'blogname', 'Coffee CR MAN', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'baotuyen555@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:95:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:52:"product_cat/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:47:"product_cat/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:28:"product_cat/([^/]+)/embed/?$";s:44:"index.php?product_cat=$matches[1]&embed=true";s:40:"product_cat/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?product_cat=$matches[1]&paged=$matches[2]";s:22:"product_cat/([^/]+)/?$";s:33:"index.php?product_cat=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=4&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:34:"advanced-custom-fields-pro/acf.php";i:1;s:39:"ns-featured-posts/ns-featured-posts.php";i:2;s:47:"regenerate-thumbnails/regenerate-thumbnails.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'baotuyen777', 'yes'),
(41, 'stylesheet', 'baotuyen777', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '4', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'cf_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'cron', 'a:4:{i:1499038775;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1499081989;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1499095630;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(105, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1498835780;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(109, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:3:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:57:"https://downloads.wordpress.org/release/wordpress-4.8.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:57:"https://downloads.wordpress.org/release/wordpress-4.8.zip";s:10:"no_content";s:68:"https://downloads.wordpress.org/release/wordpress-4.8-no-content.zip";s:11:"new_bundled";s:69:"https://downloads.wordpress.org/release/wordpress-4.8-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.8";s:7:"version";s:3:"4.8";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:57:"https://downloads.wordpress.org/release/wordpress-4.8.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:57:"https://downloads.wordpress.org/release/wordpress-4.8.zip";s:10:"no_content";s:68:"https://downloads.wordpress.org/release/wordpress-4.8-no-content.zip";s:11:"new_bundled";s:69:"https://downloads.wordpress.org/release/wordpress-4.8-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.8";s:7:"version";s:3:"4.8";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}i:2;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.7.5.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.7.5.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.7.5-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.7.5-new-bundled.zip";s:7:"partial";s:69:"https://downloads.wordpress.org/release/wordpress-4.7.5-partial-3.zip";s:8:"rollback";s:70:"https://downloads.wordpress.org/release/wordpress-4.7.5-rollback-3.zip";}s:7:"current";s:5:"4.7.5";s:7:"version";s:5:"4.7.5";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:5:"4.7.3";s:9:"new_files";s:0:"";}}s:12:"last_checked";i:1498995590;s:15:"version_checked";s:5:"4.7.3";s:12:"translations";a:0:{}}', 'no'),
(116, '_site_transient_timeout_browser_b4f2743601fc80c6bc73aad943178422', '1499427599', 'no'),
(117, '_site_transient_browser_b4f2743601fc80c6bc73aad943178422', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"58.4.3029.130";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(118, 'can_compress_scripts', '1', 'no'),
(128, 'current_theme', 'crman', 'yes'),
(129, 'theme_mods_twentyfifteen', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1498835897;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(130, 'theme_switched', '', 'yes'),
(131, 'theme_mods_baotuyen777', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:9:"main-menu";i:2;}}', 'yes'),
(139, '_transient_timeout_plugin_slugs', '1499078594', 'no'),
(140, '_transient_plugin_slugs', 'a:5:{i:0;s:34:"advanced-custom-fields-pro/acf.php";i:1;s:19:"akismet/akismet.php";i:2;s:9:"hello.php";i:3;s:39:"ns-featured-posts/ns-featured-posts.php";i:4;s:47:"regenerate-thumbnails/regenerate-thumbnails.php";}', 'no'),
(144, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(150, 'recently_activated', 'a:0:{}', 'yes'),
(151, '_transient_timeout_acf_pro_get_remote_info', '1499006280', 'no'),
(152, '_transient_acf_pro_get_remote_info', 'a:15:{s:4:"name";s:26:"Advanced Custom Fields PRO";s:4:"slug";s:26:"advanced-custom-fields-pro";s:8:"homepage";s:37:"https://www.advancedcustomfields.com/";s:7:"version";s:6:"5.5.14";s:6:"author";s:13:"Elliot Condon";s:10:"author_url";s:28:"http://www.elliotcondon.com/";s:12:"contributors";s:12:"elliotcondon";s:8:"requires";s:5:"3.6.0";s:6:"tested";s:5:"4.8.0";s:4:"tags";a:62:{i:0;s:11:"5.6.0-beta2";i:1;s:11:"5.6.0-beta1";i:2;s:5:"5.5.9";i:3;s:5:"5.5.7";i:4;s:5:"5.5.5";i:5;s:5:"5.5.3";i:6;s:5:"5.5.2";i:7;s:6:"5.5.13";i:8;s:6:"5.5.12";i:9;s:6:"5.5.11";i:10;s:6:"5.5.10";i:11;s:5:"5.5.1";i:12;s:5:"5.5.0";i:13;s:5:"5.4.8";i:14;s:5:"5.4.7";i:15;s:5:"5.4.6";i:16;s:5:"5.4.5";i:17;s:5:"5.4.4";i:18;s:5:"5.4.3";i:19;s:5:"5.4.2";i:20;s:5:"5.4.1";i:21;s:5:"5.4.0";i:22;s:5:"5.3.8";i:23;s:5:"5.3.7";i:24;s:5:"5.3.6";i:25;s:5:"5.3.5";i:26;s:5:"5.3.4";i:27;s:5:"5.3.3";i:28;s:5:"5.3.2";i:29;s:6:"5.3.10";i:30;s:5:"5.3.1";i:31;s:5:"5.3.0";i:32;s:5:"5.2.9";i:33;s:5:"5.2.8";i:34;s:5:"5.2.7";i:35;s:5:"5.2.6";i:36;s:5:"5.2.5";i:37;s:5:"5.2.4";i:38;s:5:"5.2.3";i:39;s:5:"5.2.2";i:40;s:5:"5.2.1";i:41;s:5:"5.2.0";i:42;s:5:"5.1.9";i:43;s:5:"5.1.8";i:44;s:5:"5.1.7";i:45;s:5:"5.1.6";i:46;s:5:"5.1.5";i:47;s:5:"5.1.4";i:48;s:5:"5.1.3";i:49;s:5:"5.1.2";i:50;s:5:"5.1.1";i:51;s:5:"5.1.0";i:52;s:5:"5.0.9";i:53;s:5:"5.0.8";i:54;s:5:"5.0.7";i:55;s:5:"5.0.6";i:56;s:5:"5.0.5";i:57;s:5:"5.0.4";i:58;s:5:"5.0.3";i:59;s:5:"5.0.2";i:60;s:5:"5.0.1";i:61;s:5:"5.0.0";}s:6:"tagged";s:123:"acf, advanced, custom, field, fields, custom field, custom fields, simple fields, magic fields, more fields, repeater, edit";s:11:"description";s:4337:"<p>Advanced Custom Fields is the perfect solution for any WordPress website which needs more flexible data like other Content Management Systems. </p>\n<ul><li>Visually create your Fields</li><li>Select from multiple input types (text, textarea, wysiwyg, image, file, page link, post object, relationship, select, checkbox, radio buttons, date picker, true / false, repeater, flexible content, gallery and more to come!)</li><li>Assign your fields to multiple edit pages (via custom location rules)</li><li>Easily load data through a simple and friendly API</li><li>Uses the native WordPress custom post type for ease of use and fast processing</li><li>Uses the native WordPress metadata for ease of use and fast processing</li></ul>\n<h4> Field Types </h4>\n<ul><li>Text (type text, api returns text)</li><li>Text Area (type text, api returns text)</li><li>Number (type number, api returns integer)</li><li>Email (type email, api returns text)</li><li>Password (type password, api returns text)</li><li>WYSIWYG (a WordPress wysiwyg editor, api returns html)</li><li>Image (upload an image, api returns the url)</li><li>File (upload a file, api returns the url)</li><li>Select (drop down list of choices, api returns chosen item)</li><li>Checkbox (tickbox list of choices, api returns array of choices)</li><li>Radio Buttons ( radio button list of choices, api returns chosen item)</li><li>True / False (tick box with message, api returns true or false)</li><li>Page Link (select 1 or more page, post or custom post types, api returns the selected url)</li><li>Post Object (select 1 or more page, post or custom post types, api returns the selected post objects)</li><li>Relationship (search, select and order post objects with a tidy interface, api returns the selected post objects)</li><li>Taxonomy (select taxonomy terms with options to load, display and save, api returns the selected term objects)</li><li>User (select 1 or more WP users, api returns the selected user objects)</li><li>Google Maps (interactive map, api returns lat,lng,address data)</li><li>Date Picker (jquery date picker, options for format, api returns string)</li><li>Color Picker (WP color swatch picker)</li><li>Tab (Group fields into tabs)</li><li>Message (Render custom messages into the fields)</li><li>Repeater (ability to create repeatable blocks of fields!)</li><li>Flexible Content (ability to create flexible blocks of fields!)</li><li>Gallery (Add, edit and order multiple images in 1 simple field)</li><li>[Custom](<a href="https://www.advancedcustomfields.com/resources/tutorials/creating-a-new-field-type/)">www.advancedcustomfields.com/resources/tutorials/creating-a-new-field-type/)</a> (Create your own field type!)</li></ul>\n<h4> Tested on </h4>\n<ul><li>Mac Firefox 	:)</li><li>Mac Safari 	:)</li><li>Mac Chrome	:)</li><li>PC Safari 	:)</li><li>PC Chrome		:)</li><li>PC Firefox	:)</li><li>iPhone Safari :)</li><li>iPad Safari 	:)</li><li>PC ie7		:S</li></ul>\n<h4> Website </h4>\n<p><a href="https://www.advancedcustomfields.com/">www.advancedcustomfields.com/</a></p>\n<h4> Documentation </h4>\n<ul><li>[Getting Started](<a href="https://www.advancedcustomfields.com/resources/#getting-started)">www.advancedcustomfields.com/resources/#getting-started)</a></li><li>[Field Types](<a href="https://www.advancedcustomfields.com/resources/#field-types)">www.advancedcustomfields.com/resources/#field-types)</a></li><li>[Functions](<a href="https://www.advancedcustomfields.com/resources/#functions)">www.advancedcustomfields.com/resources/#functions)</a></li><li>[Actions](<a href="https://www.advancedcustomfields.com/resources/#actions)">www.advancedcustomfields.com/resources/#actions)</a></li><li>[Filters](<a href="https://www.advancedcustomfields.com/resources/#filters)">www.advancedcustomfields.com/resources/#filters)</a></li><li>[How to guides](<a href="https://www.advancedcustomfields.com/resources/#how-to)">www.advancedcustomfields.com/resources/#how-to)</a></li><li>[Tutorials](<a href="https://www.advancedcustomfields.com/resources/#tutorials)">www.advancedcustomfields.com/resources/#tutorials)</a></li></ul>\n<h4> Bug Submission and Forum Support </h4>\n<p><a href="http://support.advancedcustomfields.com/">support.advancedcustomfields.com/</a></p>\n<h4> Please Vote and Enjoy </h4>\n<p>Your votes really make a difference! Thanks.</p>\n";s:12:"installation";s:467:"<ol><li>Upload <code>advanced-custom-fields</code> to the <code>/wp-content/plugins/</code> directory</li><li>Activate the plugin through the <code>Plugins</code> menu in WordPress</li><li>Click on the new menu item "Custom Fields" and create your first Custom Field Group!</li><li>Your custom field group will now appear on the page / post / template you specified in the field group''s location rules!</li><li>Read the documentation to display your data: </li></ol>\n";s:9:"changelog";s:4168:"<h4> 5.5.14 </h4>\n<ul><li>Core: Minor bug fixes</li></ul>\n<h4> 5.5.13 </h4>\n<ul><li>Clone field: Improved <code>Fields</code> setting to show all fields within a matching field group search</li><li>Flexible Content field: Fixed bug causing <code>layout_title</code> filter to fail when field is cloned</li><li>Flexible Content field: Added missing <code>translate_field</code> function</li><li>WYSIWYG field: Fixed JS error when using CKEditor plugin</li><li>Date Picker field: Improved <code>Display Format</code> and <code>Return Format</code> settings UI</li><li>Time Picker field: Same as above</li><li>Datetime Picker field: Same as above</li><li>Core: Added new <code>remove_wp_meta_box</code> setting</li><li>Core: Added constants ACF, ACF_PRO, ACF_VERSION and ACF_PATH</li><li>Core: Improved compatibility with Select2 v4 including sortable functionality</li><li>Language: Updated Portuguese translation - thanks to Pedro Mendonça</li></ul>\n<h4> 5.5.12 </h4>\n<ul><li>Tab field: Allowed HTML within field label to show in tab</li><li>Core: Improved plugin update class</li><li>Language: Updated Portuguese translation - thanks to Pedro Mendonça</li><li>Language: Updated Brazilian Portuguese translation - thanks to Rafael Ribeiro</li></ul>\n<h4> 5.5.11 </h4>\n<ul><li>Google Map field: Added new <code>google_map_init</code> JS action</li><li>Core: Minor fixes and improvements</li><li>Language: Updated Swiss German translation - thanks to Raphael Hüni</li><li>Language: Updated French translation - thanks to Maxime Bernard-Jacquet</li></ul>\n<h4> 5.5.10 </h4>\n<ul><li>API: Added new functionality to the `acf_form()` function:</li><li>- added new <code>html_updated_message</code> setting</li><li>- added new <code>html_submit_button</code> setting</li><li>- added new <code>html_submit_spinner</code> setting</li><li>- added new <code>acf/pre_submit_form</code> filter run when form is successfully submit (before saving $_POST)</li><li>- added new <code>acf/submit_form</code> action run when form is successfully submit (after saving $_POST)</li><li>- added new <code>%post_id%</code> replace string to the <code>return</code> setting</li><li>- added new encryption logic to prevent $_POST exploits</li><li>- added new `acf_register_form()` function</li><li>Core: Fixed bug preventing values being loaded on a new post/page preview</li><li>Core: Fixed missing <code>Bulk Actions</code> dropdown on sync screen when no field groups exist</li><li>Core: Fixed bug ignoring PHP field groups if exists in JSON</li><li>Core: Minor fixes and improvements</li></ul>\n<h4> 5.5.9 </h4>\n<ul><li>Core: Fixed bug causing ACF4 PHP field groups to be ignored if missing ‘key’ setting</li></ul>\n<h4> 5.5.8 </h4>\n<ul><li>Flexible Content: Added logic to better <code>clean up</code> data when re-ordering layouts</li><li>oEmbed field: Fixed bug causing incorrect width and height settings in embed HTML</li><li>Core: Fixed bug causing incorrect Select2 CSS version loading for WooCommerce 2.7</li><li>Core: Fixed bug preventing <code>min-height</code> style being applied to floating width fields</li><li>Core: Added new JS <code>init</code> actions for wysiwyg, date, datetime, time and select2 fields</li><li>Core: Minor fixes and improvements</li></ul>\n<h4> 5.5.7 </h4>\n<ul><li>Core: Fixed bug causing `get_field()` to return incorrect data for sub fields registered via PHP code.</li></ul>\n<h4> 5.5.6 </h4>\n<ul><li>Core: Fixed bug causing license key to be ignored after changing url from http to https</li><li>Core: Fixed Select2 (v4) bug where <code>allow null</code> setting would not correctly save empty value</li><li>Core: Added new <code>acf/validate_field</code> filter</li><li>Core: Added new <code>acf/validate_field_group</code> filter</li><li>Core: Added new <code>acf/validate_post_id</code> filter</li><li>Core: Added new <code>row_index_offset</code> setting</li><li>Core: Fixed bug causing value loading issues for a taxonomy term in WP < 4.4</li><li>Core: Minor fixes and improvements</li></ul>\n<h4> 5.5.5 </h4>\n<ul><li>File field: Fixed bug creating draft post when saving an empty value</li><li>Image field: Fixed bug mentioned above</li></ul>\n";s:14:"upgrade_notice";s:551:"<h4> 5.2.7 </h4>\n<ul><li>Field class names have changed slightly in v5.2.7 from `field_type-{$type}` to `acf-field-{$type}`. This change was introduced to better optimise JS performance. The previous class names can be added back in with the following filter: <a href="https://www.advancedcustomfields.com/resources/acfcompatibility/">www.advancedcustomfields.com/resources/acfcompatibility/</a></li></ul>\n<h4> 3.0.0 </h4>\n<ul><li>Editor is broken in WordPress 3.3</li></ul>\n<h4> 2.1.4 </h4>\n<ul><li>Adds post_id column back into acf_values</li></ul>\n";}', 'no'),
(153, 'acf_version', '5.2.3', 'yes'),
(156, '_transient_timeout_dash_88ae138922fe95674369b1cb3d215a2b', '1499012881', 'no'),
(157, '_transient_dash_88ae138922fe95674369b1cb3d215a2b', '<div class="rss-widget"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 7: Failed to connect to wordpress.org port 80: Timed out</p></div><div class="rss-widget"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 7: Failed to connect to planet.wordpress.org port 443: Timed out</p></div><div class="rss-widget"><ul></ul></div>', 'no'),
(158, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1499001866', 'no'),
(159, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:"stdClass":100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";i:4344;}s:4:"post";a:3:{s:4:"name";s:4:"post";s:4:"slug";s:4:"post";s:5:"count";i:2483;}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";i:2352;}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";i:2170;}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";i:1821;}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";i:1585;}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";i:1563;}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";i:1429;}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";i:1344;}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";i:1330;}s:8:"facebook";a:3:{s:4:"name";s:8:"facebook";s:4:"slug";s:8:"facebook";s:5:"count";i:1324;}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";i:1269;}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";i:1261;}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";i:1110;}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";i:1050;}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";i:1040;}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";i:989;}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";i:931;}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";i:816;}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";i:795;}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";i:793;}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";i:766;}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";i:760;}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";i:667;}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";i:658;}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";i:657;}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";i:650;}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";i:644;}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";i:635;}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";i:633;}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";i:614;}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";i:594;}s:4:"ajax";a:3:{s:4:"name";s:4:"ajax";s:4:"slug";s:4:"ajax";s:5:"count";i:592;}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";i:582;}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";i:582;}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";i:570;}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";i:569;}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";i:557;}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";i:552;}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";i:537;}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";i:531;}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";i:531;}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";i:518;}s:3:"css";a:3:{s:4:"name";s:3:"css";s:4:"slug";s:3:"css";s:5:"count";i:507;}s:5:"share";a:3:{s:4:"name";s:5:"share";s:4:"slug";s:5:"share";s:5:"count";i:500;}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";i:492;}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";i:490;}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";i:477;}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";i:467;}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";i:467;}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";i:465;}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";i:463;}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";i:441;}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";i:437;}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";i:435;}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";i:434;}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";i:434;}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";i:421;}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";i:418;}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";i:410;}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";i:405;}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";i:402;}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";i:399;}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";i:397;}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";i:396;}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";i:394;}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";i:378;}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";i:376;}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";i:371;}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";i:368;}s:4:"news";a:3:{s:4:"name";s:4:"news";s:4:"slug";s:4:"news";s:5:"count";i:350;}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";i:340;}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";i:332;}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";i:331;}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";i:330;}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";i:326;}s:7:"payment";a:3:{s:4:"name";s:7:"payment";s:4:"slug";s:7:"payment";s:5:"count";i:324;}s:4:"code";a:3:{s:4:"name";s:4:"code";s:4:"slug";s:4:"code";s:5:"count";i:322;}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";i:320;}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";i:320;}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";i:318;}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";i:314;}s:5:"popup";a:3:{s:4:"name";s:5:"popup";s:4:"slug";s:5:"popup";s:5:"count";i:307;}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";i:298;}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";i:297;}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";i:290;}s:4:"chat";a:3:{s:4:"name";s:4:"chat";s:4:"slug";s:4:"chat";s:5:"count";i:289;}s:16:"custom-post-type";a:3:{s:4:"name";s:16:"custom post type";s:4:"slug";s:16:"custom-post-type";s:5:"count";i:288;}s:8:"redirect";a:3:{s:4:"name";s:8:"redirect";s:4:"slug";s:8:"redirect";s:5:"count";i:288;}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";i:283;}s:6:"author";a:3:{s:4:"name";s:6:"author";s:4:"slug";s:6:"author";s:5:"count";i:282;}s:7:"adsense";a:3:{s:4:"name";s:7:"adsense";s:4:"slug";s:7:"adsense";s:5:"count";i:277;}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";i:277;}s:15:"payment-gateway";a:3:{s:4:"name";s:15:"payment gateway";s:4:"slug";s:15:"payment-gateway";s:5:"count";i:276;}s:8:"lightbox";a:3:{s:4:"name";s:8:"lightbox";s:4:"slug";s:8:"lightbox";s:5:"count";i:273;}s:5:"forms";a:3:{s:4:"name";s:5:"forms";s:4:"slug";s:5:"forms";s:5:"count";i:271;}s:14:"administration";a:3:{s:4:"name";s:14:"administration";s:4:"slug";s:14:"administration";s:5:"count";i:265;}s:7:"captcha";a:3:{s:4:"name";s:7:"captcha";s:4:"slug";s:7:"captcha";s:5:"count";i:264;}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";i:263;}s:5:"cache";a:3:{s:4:"name";s:5:"cache";s:4:"slug";s:5:"cache";s:5:"count";i:263;}}', 'no'),
(164, 'nsfp_plugin_options', 'a:1:{s:14:"nsfp_posttypes";a:1:{s:4:"post";i:1;}}', 'yes'),
(165, 'widget_nsfp-featured-post-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(169, 'product_cat_children', 'a:0:{}', 'yes'),
(171, 'auto_updater.lock', '1498995590', 'no'),
(172, '_site_transient_timeout_theme_roots', '1498997399', 'no'),
(173, '_site_transient_theme_roots', 'a:2:{s:11:"baotuyen777";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";}', 'no'),
(174, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1498995659;s:7:"checked";a:2:{s:11:"baotuyen777";s:3:"1.0";s:13:"twentyfifteen";s:3:"1.7";}s:8:"response";a:1:{s:13:"twentyfifteen";a:4:{s:5:"theme";s:13:"twentyfifteen";s:11:"new_version";s:3:"1.8";s:3:"url";s:43:"https://wordpress.org/themes/twentyfifteen/";s:7:"package";s:59:"https://downloads.wordpress.org/theme/twentyfifteen.1.8.zip";}}s:12:"translations";a:0:{}}', 'no'),
(175, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1498995642;s:8:"response";a:1:{s:19:"akismet/akismet.php";O:8:"stdClass":8:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.3.2";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.3.3.2.zip";s:6:"tested";s:5:"4.7.5";s:13:"compatibility";O:8:"stdClass":0:{}}}s:12:"translations";a:0:{}s:9:"no_update";a:3:{s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}s:39:"ns-featured-posts/ns-featured-posts.php";O:8:"stdClass":6:{s:2:"id";s:31:"w.org/plugins/ns-featured-posts";s:4:"slug";s:17:"ns-featured-posts";s:6:"plugin";s:39:"ns-featured-posts/ns-featured-posts.php";s:11:"new_version";s:5:"1.4.0";s:3:"url";s:48:"https://wordpress.org/plugins/ns-featured-posts/";s:7:"package";s:66:"https://downloads.wordpress.org/plugin/ns-featured-posts.1.4.0.zip";}s:47:"regenerate-thumbnails/regenerate-thumbnails.php";O:8:"stdClass":6:{s:2:"id";s:35:"w.org/plugins/regenerate-thumbnails";s:4:"slug";s:21:"regenerate-thumbnails";s:6:"plugin";s:47:"regenerate-thumbnails/regenerate-thumbnails.php";s:11:"new_version";s:5:"2.2.6";s:3:"url";s:52:"https://wordpress.org/plugins/regenerate-thumbnails/";s:7:"package";s:64:"https://downloads.wordpress.org/plugin/regenerate-thumbnails.zip";}}}', 'no'),
(176, 'category_children', 'a:0:{}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `cf_postmeta`
--

CREATE TABLE `cf_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cf_postmeta`
--

INSERT INTO `cf_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_last', '1'),
(3, 4, '_edit_lock', '1498993635:1'),
(4, 4, '_wp_page_template', 'index.php'),
(5, 6, '_edit_last', '1'),
(6, 6, '_edit_lock', '1498922919:1'),
(7, 6, '_wp_page_template', 'default'),
(8, 8, '_edit_last', '1'),
(9, 8, '_wp_page_template', 'default'),
(10, 8, '_edit_lock', '1498922963:1'),
(11, 10, '_edit_last', '1'),
(12, 10, '_wp_page_template', 'default'),
(13, 10, '_edit_lock', '1498922976:1'),
(14, 12, '_edit_last', '1'),
(15, 12, '_wp_page_template', 'default'),
(16, 12, '_edit_lock', '1498923002:1'),
(17, 14, '_menu_item_type', 'post_type'),
(18, 14, '_menu_item_menu_item_parent', '0'),
(19, 14, '_menu_item_object_id', '12'),
(20, 14, '_menu_item_object', 'page'),
(21, 14, '_menu_item_target', ''),
(22, 14, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(23, 14, '_menu_item_xfn', ''),
(24, 14, '_menu_item_url', ''),
(26, 15, '_menu_item_type', 'post_type'),
(27, 15, '_menu_item_menu_item_parent', '0'),
(28, 15, '_menu_item_object_id', '10'),
(29, 15, '_menu_item_object', 'page'),
(30, 15, '_menu_item_target', ''),
(31, 15, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(32, 15, '_menu_item_xfn', ''),
(33, 15, '_menu_item_url', ''),
(35, 16, '_menu_item_type', 'post_type'),
(36, 16, '_menu_item_menu_item_parent', '0'),
(37, 16, '_menu_item_object_id', '8'),
(38, 16, '_menu_item_object', 'page'),
(39, 16, '_menu_item_target', ''),
(40, 16, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(41, 16, '_menu_item_xfn', ''),
(42, 16, '_menu_item_url', ''),
(44, 17, '_menu_item_type', 'post_type'),
(45, 17, '_menu_item_menu_item_parent', '0'),
(46, 17, '_menu_item_object_id', '6'),
(47, 17, '_menu_item_object', 'page'),
(48, 17, '_menu_item_target', ''),
(49, 17, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(50, 17, '_menu_item_xfn', ''),
(51, 17, '_menu_item_url', ''),
(53, 18, '_menu_item_type', 'post_type'),
(54, 18, '_menu_item_menu_item_parent', '0'),
(55, 18, '_menu_item_object_id', '4'),
(56, 18, '_menu_item_object', 'page'),
(57, 18, '_menu_item_target', ''),
(58, 18, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(59, 18, '_menu_item_xfn', ''),
(60, 18, '_menu_item_url', ''),
(62, 19, '_menu_item_type', 'taxonomy'),
(63, 19, '_menu_item_menu_item_parent', '0'),
(64, 19, '_menu_item_object_id', '1'),
(65, 19, '_menu_item_object', 'category'),
(66, 19, '_menu_item_target', ''),
(67, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(68, 19, '_menu_item_xfn', ''),
(69, 19, '_menu_item_url', ''),
(70, 20, '_edit_last', '1'),
(71, 20, '_edit_lock', '1498993173:1'),
(72, 24, 'about_us', 'Là sự kết hợp tinh túy giữa công nghệ tuyển chọn và chế biến những hạt cafe ngon nhất để tạo ra sản phẩm cafe CRM MAN chất lượng tuyệt hảo.'),
(73, 24, '_about_us', 'field_59586cd5e41e7'),
(74, 24, 'service', ''),
(75, 24, '_service', 'field_59586d13e9462'),
(76, 24, 'comment', ''),
(77, 24, '_comment', 'field_59586d8ceb3b0'),
(78, 4, 'about_us', 'Là sự kết hợp tinh túy giữa công nghệ tuyển chọn và chế biến những hạt cafe ngon nhất để tạo ra sản phẩm cafe CRM MAN chất lượng tuyệt hảo.'),
(79, 4, '_about_us', 'field_59586cd5e41e7'),
(80, 4, 'service', 'Chúng tôi cung cấp tất cả từ A-Z các dịch vụ về cafe. Hãy đến với CR MAN để được phục vụ tốt nhất'),
(81, 4, '_service', 'field_59586d13e9462'),
(82, 4, 'comment', '3'),
(83, 4, '_comment', 'field_59586d8ceb3b0'),
(84, 25, 'about_us', 'Là sự kết hợp tinh túy giữa công nghệ tuyển chọn và chế biến những hạt cafe ngon nhất để tạo ra sản phẩm cafe CRM MAN chất lượng tuyệt hảo.'),
(85, 25, '_about_us', 'field_59586cd5e41e7'),
(86, 25, 'service', 'Chúng tôi cung cấp tất cả từ A-Z các dịch vụ về cafe. Hãy đến với CR MAN để được phục vụ tốt nhất'),
(87, 25, '_service', 'field_59586d13e9462'),
(88, 25, 'comment', ''),
(89, 25, '_comment', 'field_59586d8ceb3b0'),
(90, 29, '_wp_attached_file', '2017/07/testimonials-1-100x100.jpg'),
(91, 29, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:101;s:6:"height";i:101;s:4:"file";s:34:"2017/07/testimonials-1-100x100.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(92, 30, '_wp_attached_file', '2017/07/barbers-2-370x310.jpg'),
(93, 30, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:370;s:6:"height";i:309;s:4:"file";s:29:"2017/07/barbers-2-370x310.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"barbers-2-370x310-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:29:"barbers-2-370x310-300x251.jpg";s:5:"width";i:300;s:6:"height";i:251;s:9:"mime-type";s:10:"image/jpeg";}s:13:"product-thumb";a:4:{s:4:"file";s:29:"barbers-2-370x310-370x309.jpg";s:5:"width";i:370;s:6:"height";i:309;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(94, 31, '_wp_attached_file', '2017/07/about-1-300x460.jpg'),
(95, 31, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:460;s:4:"file";s:27:"2017/07/about-1-300x460.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"about-1-300x460-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"about-1-300x460-196x300.jpg";s:5:"width";i:196;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:13:"product-thumb";a:4:{s:4:"file";s:27:"about-1-300x460-300x310.jpg";s:5:"width";i:300;s:6:"height";i:310;s:9:"mime-type";s:10:"image/jpeg";}s:9:"home_blog";a:4:{s:4:"file";s:27:"about-1-300x460-300x330.jpg";s:5:"width";i:300;s:6:"height";i:330;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(96, 32, 'about_us', 'Là sự kết hợp tinh túy giữa công nghệ tuyển chọn và chế biến những hạt cafe ngon nhất để tạo ra sản phẩm cafe CRM MAN chất lượng tuyệt hảo.'),
(97, 32, '_about_us', 'field_59586cd5e41e7'),
(98, 32, 'service', 'Chúng tôi cung cấp tất cả từ A-Z các dịch vụ về cafe. Hãy đến với CR MAN để được phục vụ tốt nhất'),
(99, 32, '_service', 'field_59586d13e9462'),
(100, 32, 'comment_0_avatar', '29'),
(101, 32, '_comment_0_avatar', 'field_5958b34161726'),
(102, 32, 'comment_0_name', 'Anna'),
(103, 32, '_comment_0_name', 'field_5958b35161727'),
(104, 32, 'comment_0_content', 'Cafe ở đây rất tuyệt...'),
(105, 32, '_comment_0_content', 'field_5958b36761728'),
(106, 32, 'comment_1_avatar', '30'),
(107, 32, '_comment_1_avatar', 'field_5958b34161726'),
(108, 32, 'comment_1_name', 'Chị Nguyễn Hường (nhân viên văn phòng)'),
(109, 32, '_comment_1_name', 'field_5958b35161727'),
(110, 32, 'comment_1_content', 'Dịch vụ rất chu đáo chuyên nghiệp'),
(111, 32, '_comment_1_content', 'field_5958b36761728'),
(112, 32, 'comment_2_avatar', '31'),
(113, 32, '_comment_2_avatar', 'field_5958b34161726'),
(114, 32, 'comment_2_name', 'Bà Đỗ Hoàng Thơm'),
(115, 32, '_comment_2_name', 'field_5958b35161727'),
(116, 32, 'comment_2_content', 'Tôi thường xuyên uống cafe ở đây. hương vị rất khó tả, ko thể cưỡng lại được'),
(117, 32, '_comment_2_content', 'field_5958b36761728'),
(118, 32, 'comment', '3'),
(119, 32, '_comment', 'field_59586d8ceb3b0'),
(120, 4, 'comment_0_avatar', '29'),
(121, 4, '_comment_0_avatar', 'field_5958b34161726'),
(122, 4, 'comment_0_name', 'Anna'),
(123, 4, '_comment_0_name', 'field_5958b35161727'),
(124, 4, 'comment_0_content', 'Cafe ở đây rất tuyệt...'),
(125, 4, '_comment_0_content', 'field_5958b36761728'),
(126, 4, 'comment_1_avatar', '30'),
(127, 4, '_comment_1_avatar', 'field_5958b34161726'),
(128, 4, 'comment_1_name', 'Chị Nguyễn Hường'),
(129, 4, '_comment_1_name', 'field_5958b35161727'),
(130, 4, 'comment_1_content', 'Dịch vụ rất chu đáo chuyên nghiệp'),
(131, 4, '_comment_1_content', 'field_5958b36761728'),
(132, 4, 'comment_2_avatar', '31'),
(133, 4, '_comment_2_avatar', 'field_5958b34161726'),
(134, 4, 'comment_2_name', 'Bà Đỗ Hoàng Thơm'),
(135, 4, '_comment_2_name', 'field_5958b35161727'),
(136, 4, 'comment_2_content', 'Tôi thường xuyên uống cafe ở đây. hương vị rất khó tả, ko thể cưỡng lại được'),
(137, 4, '_comment_2_content', 'field_5958b36761728'),
(138, 34, 'about_us', 'Là sự kết hợp tinh túy giữa công nghệ tuyển chọn và chế biến những hạt cafe ngon nhất để tạo ra sản phẩm cafe CRM MAN chất lượng tuyệt hảo.'),
(139, 34, '_about_us', 'field_59586cd5e41e7'),
(140, 34, 'service', 'Chúng tôi cung cấp tất cả từ A-Z các dịch vụ về cafe. Hãy đến với CR MAN để được phục vụ tốt nhất'),
(141, 34, '_service', 'field_59586d13e9462'),
(142, 34, 'comment_0_avatar', '29'),
(143, 34, '_comment_0_avatar', 'field_5958b34161726'),
(144, 34, 'comment_0_name', 'Anna'),
(145, 34, '_comment_0_name', 'field_5958b35161727'),
(146, 34, 'comment_0_content', 'Cafe ở đây rất tuyệt...'),
(147, 34, '_comment_0_content', 'field_5958b36761728'),
(148, 34, 'comment_0_job', 'Nhà thiết kế'),
(149, 34, '_comment_0_job', 'field_5958bc04ec62e'),
(150, 34, 'comment_1_avatar', '30'),
(151, 34, '_comment_1_avatar', 'field_5958b34161726'),
(152, 34, 'comment_1_name', 'Chị Nguyễn Hường '),
(153, 34, '_comment_1_name', 'field_5958b35161727'),
(154, 34, 'comment_1_content', 'Dịch vụ rất chu đáo chuyên nghiệp'),
(155, 34, '_comment_1_content', 'field_5958b36761728'),
(156, 34, 'comment_1_job', 'nhân viên văn phòng'),
(157, 34, '_comment_1_job', 'field_5958bc04ec62e'),
(158, 34, 'comment_2_avatar', '31'),
(159, 34, '_comment_2_avatar', 'field_5958b34161726'),
(160, 34, 'comment_2_name', 'Bà Đỗ Hoàng Thơm'),
(161, 34, '_comment_2_name', 'field_5958b35161727'),
(162, 34, 'comment_2_content', 'Tôi thường xuyên uống cafe ở đây. hương vị rất khó tả, ko thể cưỡng lại được'),
(163, 34, '_comment_2_content', 'field_5958b36761728'),
(164, 34, 'comment_2_job', ''),
(165, 34, '_comment_2_job', 'field_5958bc04ec62e'),
(166, 34, 'comment', '3'),
(167, 34, '_comment', 'field_59586d8ceb3b0'),
(168, 4, 'comment_0_job', 'Nhà thiết kế'),
(169, 4, '_comment_0_job', 'field_5958bc04ec62e'),
(170, 4, 'comment_1_job', 'nhân viên văn phòng'),
(171, 4, '_comment_1_job', 'field_5958bc04ec62e'),
(172, 4, 'comment_2_job', 'Giảng viên'),
(173, 4, '_comment_2_job', 'field_5958bc04ec62e'),
(174, 35, 'about_us', 'Là sự kết hợp tinh túy giữa công nghệ tuyển chọn và chế biến những hạt cafe ngon nhất để tạo ra sản phẩm cafe CRM MAN chất lượng tuyệt hảo.'),
(175, 35, '_about_us', 'field_59586cd5e41e7'),
(176, 35, 'service', 'Chúng tôi cung cấp tất cả từ A-Z các dịch vụ về cafe. Hãy đến với CR MAN để được phục vụ tốt nhất'),
(177, 35, '_service', 'field_59586d13e9462'),
(178, 35, 'comment_0_avatar', '29'),
(179, 35, '_comment_0_avatar', 'field_5958b34161726'),
(180, 35, 'comment_0_name', 'Anna'),
(181, 35, '_comment_0_name', 'field_5958b35161727'),
(182, 35, 'comment_0_content', 'Cafe ở đây rất tuyệt...'),
(183, 35, '_comment_0_content', 'field_5958b36761728'),
(184, 35, 'comment_0_job', 'Nhà thiết kế'),
(185, 35, '_comment_0_job', 'field_5958bc04ec62e'),
(186, 35, 'comment_1_avatar', '30'),
(187, 35, '_comment_1_avatar', 'field_5958b34161726'),
(188, 35, 'comment_1_name', 'Chị Nguyễn Hường'),
(189, 35, '_comment_1_name', 'field_5958b35161727'),
(190, 35, 'comment_1_content', 'Dịch vụ rất chu đáo chuyên nghiệp'),
(191, 35, '_comment_1_content', 'field_5958b36761728'),
(192, 35, 'comment_1_job', 'nhân viên văn phòng'),
(193, 35, '_comment_1_job', 'field_5958bc04ec62e'),
(194, 35, 'comment_2_avatar', '31'),
(195, 35, '_comment_2_avatar', 'field_5958b34161726'),
(196, 35, 'comment_2_name', 'Bà Đỗ Hoàng Thơm'),
(197, 35, '_comment_2_name', 'field_5958b35161727'),
(198, 35, 'comment_2_content', 'Tôi thường xuyên uống cafe ở đây. hương vị rất khó tả, ko thể cưỡng lại được'),
(199, 35, '_comment_2_content', 'field_5958b36761728'),
(200, 35, 'comment_2_job', 'Giảng viên'),
(201, 35, '_comment_2_job', 'field_5958bc04ec62e'),
(202, 35, 'comment', '3'),
(203, 35, '_comment', 'field_59586d8ceb3b0'),
(204, 36, '_edit_last', '1'),
(205, 36, '_edit_lock', '1498991756:1'),
(206, 37, '_wp_attached_file', '2017/07/z701098580057_f63dc1b8e8b13fff221bfaebae9473c9.jpg'),
(207, 37, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:960;s:6:"height";i:720;s:4:"file";s:58:"2017/07/z701098580057_f63dc1b8e8b13fff221bfaebae9473c9.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:58:"z701098580057_f63dc1b8e8b13fff221bfaebae9473c9-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:58:"z701098580057_f63dc1b8e8b13fff221bfaebae9473c9-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:58:"z701098580057_f63dc1b8e8b13fff221bfaebae9473c9-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:13:"product-thumb";a:4:{s:4:"file";s:58:"z701098580057_f63dc1b8e8b13fff221bfaebae9473c9-370x310.jpg";s:5:"width";i:370;s:6:"height";i:310;s:9:"mime-type";s:10:"image/jpeg";}s:9:"home_blog";a:4:{s:4:"file";s:58:"z701098580057_f63dc1b8e8b13fff221bfaebae9473c9-770x330.jpg";s:5:"width";i:770;s:6:"height";i:330;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(208, 36, '_thumbnail_id', '37'),
(209, 38, '_edit_last', '1'),
(210, 38, '_edit_lock', '1498991750:1'),
(211, 39, '_wp_attached_file', '2017/07/mat-ong-hoa-cafe.jpg'),
(212, 39, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:448;s:6:"height";i:303;s:4:"file";s:28:"2017/07/mat-ong-hoa-cafe.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"mat-ong-hoa-cafe-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"mat-ong-hoa-cafe-300x203.jpg";s:5:"width";i:300;s:6:"height";i:203;s:9:"mime-type";s:10:"image/jpeg";}s:13:"product-thumb";a:4:{s:4:"file";s:28:"mat-ong-hoa-cafe-370x303.jpg";s:5:"width";i:370;s:6:"height";i:303;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(213, 38, '_thumbnail_id', '39'),
(214, 41, '_edit_last', '1'),
(215, 41, '_edit_lock', '1498991745:1'),
(216, 42, '_wp_attached_file', '2017/07/z701099667691_12a115bb17f5d1cefb66f8e619739d42.jpg'),
(217, 42, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:700;s:6:"height";i:482;s:4:"file";s:58:"2017/07/z701099667691_12a115bb17f5d1cefb66f8e619739d42.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:58:"z701099667691_12a115bb17f5d1cefb66f8e619739d42-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:58:"z701099667691_12a115bb17f5d1cefb66f8e619739d42-300x207.jpg";s:5:"width";i:300;s:6:"height";i:207;s:9:"mime-type";s:10:"image/jpeg";}s:13:"product-thumb";a:4:{s:4:"file";s:58:"z701099667691_12a115bb17f5d1cefb66f8e619739d42-370x310.jpg";s:5:"width";i:370;s:6:"height";i:310;s:9:"mime-type";s:10:"image/jpeg";}s:9:"home_blog";a:4:{s:4:"file";s:58:"z701099667691_12a115bb17f5d1cefb66f8e619739d42-700x330.jpg";s:5:"width";i:700;s:6:"height";i:330;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(218, 41, '_thumbnail_id', '42'),
(220, 1, '_is_ns_featured_post', 'yes'),
(221, 46, 'about_us', 'Là sự kết hợp tinh túy giữa công nghệ tuyển chọn và chế biến những hạt cafe ngon nhất để tạo ra sản phẩm cafe CRM MAN chất lượng tuyệt hảo.'),
(222, 46, '_about_us', 'field_59586cd5e41e7'),
(223, 46, 'service', 'Chúng tôi cung cấp tất cả từ A-Z các dịch vụ về cafe. Hãy đến với CR MAN để được phục vụ tốt nhất'),
(224, 46, '_service', 'field_59586d13e9462'),
(225, 46, 'comment_0_avatar', '29'),
(226, 46, '_comment_0_avatar', 'field_5958b34161726'),
(227, 46, 'comment_0_name', 'Anna'),
(228, 46, '_comment_0_name', 'field_5958b35161727'),
(229, 46, 'comment_0_content', 'Cafe ở đây rất tuyệt...'),
(230, 46, '_comment_0_content', 'field_5958b36761728'),
(231, 46, 'comment_0_job', 'Nhà thiết kế'),
(232, 46, '_comment_0_job', 'field_5958bc04ec62e'),
(233, 46, 'comment_1_avatar', '30'),
(234, 46, '_comment_1_avatar', 'field_5958b34161726'),
(235, 46, 'comment_1_name', 'Chị Nguyễn Hường'),
(236, 46, '_comment_1_name', 'field_5958b35161727'),
(237, 46, 'comment_1_content', 'Dịch vụ rất chu đáo chuyên nghiệp'),
(238, 46, '_comment_1_content', 'field_5958b36761728'),
(239, 46, 'comment_1_job', 'nhân viên văn phòng'),
(240, 46, '_comment_1_job', 'field_5958bc04ec62e'),
(241, 46, 'comment_2_avatar', '31'),
(242, 46, '_comment_2_avatar', 'field_5958b34161726'),
(243, 46, 'comment_2_name', 'Bà Đỗ Hoàng Thơm'),
(244, 46, '_comment_2_name', 'field_5958b35161727'),
(245, 46, 'comment_2_content', 'Tôi thường xuyên uống cafe ở đây. hương vị rất khó tả, ko thể cưỡng lại được'),
(246, 46, '_comment_2_content', 'field_5958b36761728'),
(247, 46, 'comment_2_job', 'Giảng viên'),
(248, 46, '_comment_2_job', 'field_5958bc04ec62e'),
(249, 46, 'comment', '3'),
(250, 46, '_comment', 'field_59586d8ceb3b0'),
(251, 46, 'blog', 'CR MAN không chỉ là nơi bạn có thể thưởng thức cà phê nóng và ngon. Các thành viên trong cộng đồng CR MAN còn có những hoạt động thú vị về mọi thứ liên quan đến cà phê.'),
(252, 46, '_blog', 'field_5958d28c95c35'),
(253, 4, 'blog', 'CR MAN không chỉ là nơi bạn có thể thưởng thức cà phê nóng và ngon. Các thành viên trong cộng đồng CR MAN còn có những hoạt động thú vị về mọi thứ liên quan đến cà phê.'),
(254, 4, '_blog', 'field_5958d28c95c35'),
(255, 48, '_edit_last', '1'),
(256, 48, '_edit_lock', '1498993956:1'),
(257, 48, '_thumbnail_id', '42'),
(258, 49, '_edit_last', '1'),
(259, 49, '_edit_lock', '1498995647:1'),
(260, 49, '_thumbnail_id', '31'),
(261, 50, '_edit_last', '1'),
(262, 50, '_edit_lock', '1498994229:1'),
(263, 50, '_thumbnail_id', '37'),
(264, 51, '_edit_last', '1'),
(265, 51, '_edit_lock', '1498995859:1'),
(269, 53, '_edit_last', '1'),
(270, 53, '_edit_lock', '1498996095:1'),
(274, 55, '_wp_attached_file', '2017/07/z701098585863_aceea4b85dcdb2a47606ec487f1335cb.jpg'),
(275, 55, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:410;s:6:"height";i:266;s:4:"file";s:58:"2017/07/z701098585863_aceea4b85dcdb2a47606ec487f1335cb.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:58:"z701098585863_aceea4b85dcdb2a47606ec487f1335cb-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:58:"z701098585863_aceea4b85dcdb2a47606ec487f1335cb-300x195.jpg";s:5:"width";i:300;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:13:"product-thumb";a:4:{s:4:"file";s:58:"z701098585863_aceea4b85dcdb2a47606ec487f1335cb-370x266.jpg";s:5:"width";i:370;s:6:"height";i:266;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(276, 53, '_thumbnail_id', '55'),
(277, 56, '_wp_attached_file', '2017/07/z701098585329_d306ea27caa4c0f913710bd1baf7accd.jpg'),
(278, 56, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:402;s:6:"height";i:291;s:4:"file";s:58:"2017/07/z701098585329_d306ea27caa4c0f913710bd1baf7accd.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:58:"z701098585329_d306ea27caa4c0f913710bd1baf7accd-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:58:"z701098585329_d306ea27caa4c0f913710bd1baf7accd-300x217.jpg";s:5:"width";i:300;s:6:"height";i:217;s:9:"mime-type";s:10:"image/jpeg";}s:13:"product-thumb";a:4:{s:4:"file";s:58:"z701098585329_d306ea27caa4c0f913710bd1baf7accd-370x291.jpg";s:5:"width";i:370;s:6:"height";i:291;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(279, 51, '_thumbnail_id', '56'),
(280, 57, '_edit_last', '1'),
(281, 57, '_edit_lock', '1498996118:1'),
(282, 58, '_wp_attached_file', '2017/07/z701099717930_05ac515e61d874a217890bfa13c16e4e.jpg'),
(283, 58, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:960;s:6:"height";i:800;s:4:"file";s:58:"2017/07/z701099717930_05ac515e61d874a217890bfa13c16e4e.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:58:"z701099717930_05ac515e61d874a217890bfa13c16e4e-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:58:"z701099717930_05ac515e61d874a217890bfa13c16e4e-300x250.jpg";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:58:"z701099717930_05ac515e61d874a217890bfa13c16e4e-768x640.jpg";s:5:"width";i:768;s:6:"height";i:640;s:9:"mime-type";s:10:"image/jpeg";}s:13:"product-thumb";a:4:{s:4:"file";s:58:"z701099717930_05ac515e61d874a217890bfa13c16e4e-370x310.jpg";s:5:"width";i:370;s:6:"height";i:310;s:9:"mime-type";s:10:"image/jpeg";}s:9:"home_blog";a:4:{s:4:"file";s:58:"z701099717930_05ac515e61d874a217890bfa13c16e4e-770x330.jpg";s:5:"width";i:770;s:6:"height";i:330;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(284, 57, '_thumbnail_id', '58'),
(287, 60, '_edit_last', '1'),
(288, 60, '_edit_lock', '1498996834:1'),
(289, 61, '_wp_attached_file', '2017/07/z701099706695_103919faf3d2d9fc8da227045bce8071.jpg'),
(290, 61, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:960;s:6:"height";i:768;s:4:"file";s:58:"2017/07/z701099706695_103919faf3d2d9fc8da227045bce8071.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:58:"z701099706695_103919faf3d2d9fc8da227045bce8071-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:58:"z701099706695_103919faf3d2d9fc8da227045bce8071-300x240.jpg";s:5:"width";i:300;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:58:"z701099706695_103919faf3d2d9fc8da227045bce8071-768x614.jpg";s:5:"width";i:768;s:6:"height";i:614;s:9:"mime-type";s:10:"image/jpeg";}s:13:"product-thumb";a:4:{s:4:"file";s:58:"z701099706695_103919faf3d2d9fc8da227045bce8071-370x310.jpg";s:5:"width";i:370;s:6:"height";i:310;s:9:"mime-type";s:10:"image/jpeg";}s:9:"home_blog";a:4:{s:4:"file";s:58:"z701099706695_103919faf3d2d9fc8da227045bce8071-770x330.jpg";s:5:"width";i:770;s:6:"height";i:330;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(291, 60, '_thumbnail_id', '61'),
(294, 1, '_wp_trash_meta_status', 'publish'),
(295, 1, '_wp_trash_meta_time', '1498996993'),
(296, 1, '_wp_desired_post_slug', 'hello-world'),
(297, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(298, 64, '_edit_last', '1'),
(299, 64, '_edit_lock', '1498997309:1'),
(300, 65, '_wp_attached_file', '2017/07/z701100146164_fc0778c4d0dec414bb4bd9fe9009ce5b.jpg'),
(301, 65, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:637;s:6:"height";i:274;s:4:"file";s:58:"2017/07/z701100146164_fc0778c4d0dec414bb4bd9fe9009ce5b.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:58:"z701100146164_fc0778c4d0dec414bb4bd9fe9009ce5b-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:58:"z701100146164_fc0778c4d0dec414bb4bd9fe9009ce5b-300x129.jpg";s:5:"width";i:300;s:6:"height";i:129;s:9:"mime-type";s:10:"image/jpeg";}s:13:"product-thumb";a:4:{s:4:"file";s:58:"z701100146164_fc0778c4d0dec414bb4bd9fe9009ce5b-370x274.jpg";s:5:"width";i:370;s:6:"height";i:274;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(302, 64, '_thumbnail_id', '65'),
(305, 67, '_edit_last', '1'),
(306, 67, '_edit_lock', '1499007198:1'),
(309, 67, '_thumbnail_id', '61');

-- --------------------------------------------------------

--
-- Table structure for table `cf_posts`
--

CREATE TABLE `cf_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cf_posts`
--

INSERT INTO `cf_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-06-30 11:39:34', '2017-06-30 11:39:34', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2017-07-02 12:03:13', '2017-07-02 12:03:13', '', 0, 'http://localhost/cafe/?p=1', 0, 'post', '', 1),
(2, 1, '2017-06-30 11:39:34', '2017-06-30 11:39:34', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/cafe/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2017-06-30 11:39:34', '2017-06-30 11:39:34', '', 0, 'http://localhost/cafe/?page_id=2', 0, 'page', '', 0),
(3, 1, '2017-06-30 11:39:59', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-06-30 11:39:59', '0000-00-00 00:00:00', '', 0, 'http://localhost/cafe/?p=3', 0, 'post', '', 0),
(4, 1, '2017-07-01 15:28:08', '2017-07-01 15:28:08', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2017-07-02 11:04:29', '2017-07-02 11:04:29', '', 0, 'http://localhost/cafe/?page_id=4', 0, 'page', '', 0),
(5, 1, '2017-07-01 15:28:08', '2017-07-01 15:28:08', '', 'Home', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2017-07-01 15:28:08', '2017-07-01 15:28:08', '', 4, 'http://localhost/cafe/2017/07/01/4-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2017-07-01 15:30:57', '2017-07-01 15:30:57', '', 'Về chúng tôi', '', 'publish', 'closed', 'closed', '', 've-chung-toi', '', '', '2017-07-01 15:30:57', '2017-07-01 15:30:57', '', 0, 'http://localhost/cafe/?page_id=6', 0, 'page', '', 0),
(7, 1, '2017-07-01 15:30:57', '2017-07-01 15:30:57', '', 'Về chúng tôi', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2017-07-01 15:30:57', '2017-07-01 15:30:57', '', 6, 'http://localhost/cafe/2017/07/01/6-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2017-07-01 15:31:24', '2017-07-01 15:31:24', '', 'Dịch vụ', '', 'publish', 'closed', 'closed', '', 'dich-vu', '', '', '2017-07-01 15:31:24', '2017-07-01 15:31:24', '', 0, 'http://localhost/cafe/?page_id=8', 0, 'page', '', 0),
(9, 1, '2017-07-01 15:31:24', '2017-07-01 15:31:24', '', 'Dịch vụ', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2017-07-01 15:31:24', '2017-07-01 15:31:24', '', 8, 'http://localhost/cafe/2017/07/01/8-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2017-07-01 15:31:53', '2017-07-01 15:31:53', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2017-07-01 15:31:53', '2017-07-01 15:31:53', '', 0, 'http://localhost/cafe/?page_id=10', 0, 'page', '', 0),
(11, 1, '2017-07-01 15:31:53', '2017-07-01 15:31:53', '', 'Shop', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2017-07-01 15:31:53', '2017-07-01 15:31:53', '', 10, 'http://localhost/cafe/2017/07/01/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2017-07-01 15:32:07', '2017-07-01 15:32:07', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2017-07-01 15:32:07', '2017-07-01 15:32:07', '', 0, 'http://localhost/cafe/?page_id=12', 0, 'page', '', 0),
(13, 1, '2017-07-01 15:32:07', '2017-07-01 15:32:07', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2017-07-01 15:32:07', '2017-07-01 15:32:07', '', 12, 'http://localhost/cafe/2017/07/01/12-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2017-07-01 15:33:17', '2017-07-01 15:33:17', ' ', '', '', 'publish', 'closed', 'closed', '', '14', '', '', '2017-07-01 15:33:51', '2017-07-01 15:33:51', '', 0, 'http://localhost/cafe/?p=14', 6, 'nav_menu_item', '', 0),
(15, 1, '2017-07-01 15:33:17', '2017-07-01 15:33:17', ' ', '', '', 'publish', 'closed', 'closed', '', '15', '', '', '2017-07-01 15:33:51', '2017-07-01 15:33:51', '', 0, 'http://localhost/cafe/?p=15', 5, 'nav_menu_item', '', 0),
(16, 1, '2017-07-01 15:33:17', '2017-07-01 15:33:17', ' ', '', '', 'publish', 'closed', 'closed', '', '16', '', '', '2017-07-01 15:33:51', '2017-07-01 15:33:51', '', 0, 'http://localhost/cafe/?p=16', 3, 'nav_menu_item', '', 0),
(17, 1, '2017-07-01 15:33:17', '2017-07-01 15:33:17', ' ', '', '', 'publish', 'closed', 'closed', '', '17', '', '', '2017-07-01 15:33:51', '2017-07-01 15:33:51', '', 0, 'http://localhost/cafe/?p=17', 2, 'nav_menu_item', '', 0),
(18, 1, '2017-07-01 15:33:17', '2017-07-01 15:33:17', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2017-07-01 15:33:51', '2017-07-01 15:33:51', '', 0, 'http://localhost/cafe/?p=18', 1, 'nav_menu_item', '', 0),
(19, 1, '2017-07-01 15:33:51', '2017-07-01 15:33:51', ' ', '', '', 'publish', 'closed', 'closed', '', '19', '', '', '2017-07-01 15:33:51', '2017-07-01 15:33:51', '', 0, 'http://localhost/cafe/?p=19', 4, 'nav_menu_item', '', 0),
(20, 1, '2017-07-02 03:48:30', '2017-07-02 03:48:30', 'a:6:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:13:"page_template";s:8:"operator";s:2:"==";s:5:"value";s:9:"index.php";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";}', 'Home page', 'home-page', 'publish', 'closed', 'closed', '', 'group_59586cca99e6a', '', '', '2017-07-02 11:01:53', '2017-07-02 11:01:53', '', 0, 'http://localhost/cafe/?post_type=acf-field-group&#038;p=20', 0, 'acf-field-group', '', 0),
(21, 1, '2017-07-02 03:48:30', '2017-07-02 03:48:30', 'a:12:{s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:9:"new_lines";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'about us', 'about_us', 'publish', 'closed', 'closed', '', 'field_59586cd5e41e7', '', '', '2017-07-02 03:48:30', '2017-07-02 03:48:30', '', 20, 'http://localhost/cafe/?post_type=acf-field&p=21', 0, 'acf-field', '', 0),
(22, 1, '2017-07-02 03:49:13', '2017-07-02 03:49:13', 'a:12:{s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:9:"new_lines";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'service', 'service', 'publish', 'closed', 'closed', '', 'field_59586d13e9462', '', '', '2017-07-02 03:49:13', '2017-07-02 03:49:13', '', 20, 'http://localhost/cafe/?post_type=acf-field&p=22', 1, 'acf-field', '', 0),
(23, 1, '2017-07-02 03:50:55', '2017-07-02 03:50:55', 'a:9:{s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"layout";s:5:"table";s:12:"button_label";s:7:"Add Row";}', 'comment', 'comment', 'publish', 'closed', 'closed', '', 'field_59586d8ceb3b0', '', '', '2017-07-02 09:26:55', '2017-07-02 09:26:55', '', 20, 'http://localhost/cafe/?post_type=acf-field&#038;p=23', 2, 'acf-field', '', 0),
(24, 1, '2017-07-02 03:52:52', '2017-07-02 03:52:52', '', 'Home', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2017-07-02 03:52:52', '2017-07-02 03:52:52', '', 4, 'http://localhost/cafe/2017/07/02/4-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2017-07-02 04:30:00', '2017-07-02 04:30:00', '', 'Home', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2017-07-02 04:30:00', '2017-07-02 04:30:00', '', 4, 'http://localhost/cafe/2017/07/02/4-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2017-07-02 08:48:58', '2017-07-02 08:48:58', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'avatar', 'avatar', 'publish', 'closed', 'closed', '', 'field_5958b34161726', '', '', '2017-07-02 09:26:09', '2017-07-02 09:26:09', '', 23, 'http://localhost/cafe/?post_type=acf-field&#038;p=26', 0, 'acf-field', '', 0),
(27, 1, '2017-07-02 08:48:58', '2017-07-02 08:48:58', 'a:12:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'name', 'name', 'publish', 'closed', 'closed', '', 'field_5958b35161727', '', '', '2017-07-02 08:48:58', '2017-07-02 08:48:58', '', 23, 'http://localhost/cafe/?post_type=acf-field&p=27', 1, 'acf-field', '', 0),
(28, 1, '2017-07-02 08:48:58', '2017-07-02 08:48:58', 'a:12:{s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:9:"new_lines";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'content', 'content', 'publish', 'closed', 'closed', '', 'field_5958b36761728', '', '', '2017-07-02 09:26:55', '2017-07-02 09:26:55', '', 23, 'http://localhost/cafe/?post_type=acf-field&#038;p=28', 2, 'acf-field', '', 0),
(29, 1, '2017-07-02 09:10:17', '2017-07-02 09:10:17', '', 'testimonials-1-100x100', '', 'inherit', 'open', 'closed', '', 'testimonials-1-100x100', '', '', '2017-07-02 09:10:17', '2017-07-02 09:10:17', '', 4, 'http://localhost/cafe/wp-content/uploads/2017/07/testimonials-1-100x100.jpg', 0, 'attachment', 'image/jpeg', 0),
(30, 1, '2017-07-02 09:11:18', '2017-07-02 09:11:18', '', 'barbers-2-370x310', '', 'inherit', 'open', 'closed', '', 'barbers-2-370x310', '', '', '2017-07-02 09:11:18', '2017-07-02 09:11:18', '', 4, 'http://localhost/cafe/wp-content/uploads/2017/07/barbers-2-370x310.jpg', 0, 'attachment', 'image/jpeg', 0),
(31, 1, '2017-07-02 09:12:52', '2017-07-02 09:12:52', '', 'about-1-300x460', '', 'inherit', 'open', 'closed', '', 'about-1-300x460', '', '', '2017-07-02 09:12:52', '2017-07-02 09:12:52', '', 4, 'http://localhost/cafe/wp-content/uploads/2017/07/about-1-300x460.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2017-07-02 09:14:09', '2017-07-02 09:14:09', '', 'Home', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2017-07-02 09:14:09', '2017-07-02 09:14:09', '', 4, 'http://localhost/cafe/2017/07/02/4-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2017-07-02 09:26:09', '2017-07-02 09:26:09', 'a:12:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'job', 'job', 'publish', 'closed', 'closed', '', 'field_5958bc04ec62e', '', '', '2017-07-02 09:26:09', '2017-07-02 09:26:09', '', 23, 'http://localhost/cafe/?post_type=acf-field&p=33', 3, 'acf-field', '', 0),
(34, 1, '2017-07-02 09:47:11', '2017-07-02 09:47:11', '', 'Home', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2017-07-02 09:47:11', '2017-07-02 09:47:11', '', 4, 'http://localhost/cafe/2017/07/02/4-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2017-07-02 09:48:06', '2017-07-02 09:48:06', '', 'Home', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2017-07-02 09:48:06', '2017-07-02 09:48:06', '', 4, 'http://localhost/cafe/2017/07/02/4-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2017-07-02 10:06:15', '2017-07-02 10:06:15', 'cà phê được tạo ra từ 100% cà phê, Không tẩm ướp hoặc có tạp chất khác', 'Cafe hạt', 'cà phê được tạo ra từ 100% cà phê, Không tẩm ướp hoặc có tạp chất khác', 'publish', 'closed', 'closed', '', 'cafe-hat', '', '', '2017-07-02 10:35:56', '2017-07-02 10:35:56', '', 0, 'http://localhost/cafe/?post_type=product&#038;p=36', 0, 'product', '', 0),
(37, 1, '2017-07-02 10:06:01', '2017-07-02 10:06:01', '', 'z701098580057_f63dc1b8e8b13fff221bfaebae9473c9', '', 'inherit', 'open', 'closed', '', 'z701098580057_f63dc1b8e8b13fff221bfaebae9473c9', '', '', '2017-07-02 10:06:01', '2017-07-02 10:06:01', '', 36, 'http://localhost/cafe/wp-content/uploads/2017/07/z701098580057_f63dc1b8e8b13fff221bfaebae9473c9.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2017-07-02 10:07:31', '2017-07-02 10:07:31', 'Đối tượng:\r\n<ul>\r\n 	<li>Dành cho quí bà</li>\r\n 	<li>Những người rất thích uống cà phê nhưng hay bị say, bị kích ứng dạ dày</li>\r\n</ul>\r\nLượng cà phê vừa đủ để hưng phấn, kích hoạt tiềm năng sáng tạo lúc làm việc, mật ong hoa cà phê sẽ bổ sung năng lượng, bảo vệ niêm mạc dạ dày, chống oxh và làm đẹp da', 'Cà phê pha mật ong hoa cà phê', 'Lượng cà phê vừa đủ để hưng phấn, kích hoạt tiềm năng sáng tạo lúc làm việc, mật ong hoa cà phê sẽ bổ sung năng lượng, bảo vệ niêm mạc dạ dày, chống ôxi hóa và làm đẹp da', 'publish', 'closed', 'closed', '', 'cafe-mat-ong-hoa-cafe', '', '', '2017-07-02 10:35:50', '2017-07-02 10:35:50', '', 0, 'http://localhost/cafe/?post_type=product&#038;p=38', 0, 'product', '', 0),
(39, 1, '2017-07-02 10:07:24', '2017-07-02 10:07:24', '', 'mat-ong-hoa-cafe', '', 'inherit', 'open', 'closed', '', 'mat-ong-hoa-cafe', '', '', '2017-07-02 10:07:24', '2017-07-02 10:07:24', '', 38, 'http://localhost/cafe/wp-content/uploads/2017/07/mat-ong-hoa-cafe.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2017-07-02 10:08:33', '2017-07-02 10:08:33', 'Đối tượng:\n<ul>\n 	<li>Dành cho quí bà</li>\n 	<li>Những người rất thích uống cà phê nhưng hay bị say, bị kích ứng dạ dày</li>\n</ul>', 'Cà phê pha mật ong hoa cà phê', '', 'inherit', 'closed', 'closed', '', '38-autosave-v1', '', '', '2017-07-02 10:08:33', '2017-07-02 10:08:33', '', 38, 'http://localhost/cafe/2017/07/02/38-autosave-v1/', 0, 'revision', '', 0),
(41, 1, '2017-07-02 10:16:34', '2017-07-02 10:16:34', '<h1>Bạn có nhu cầu mua cafe rang xay nguyên chất.</h1>\r\n<pre>Cafe Robusta,cafe Culi , cafe Moka… các loại cafe nguyên chất 100% được rang xay tại chỗ.</pre>\r\nCác hạt cafe được nhập trực tiếp từ vườn trồng tại Buôn ma thuột,rang xay theo phương pháp hiện đại nhất và vẫn giữ nguyên hương vị thuần của cafe.\r\n\r\n<strong> Và đặc biệt :</strong>\r\n\r\nCafe phin túi lọc chứa cafe rang xay nguyên chất của CR MAN Coffee,tùy từng sở thích của khách hàng mà chúng tôi sẽ thêm vào các gói những loại cafe phù hợp như : cafe Robusta,cafe Moka,cafe Culi…\r\n<ul>\r\n 	<li>Chế biến từ 100% cafe nguyên chất.</li>\r\n 	<li>Vị cafe đậm đà,hương thơm quyến rũ.</li>\r\n 	<li>Phong cách : gu của người Việt.</li>\r\n 	<li>Xuất xứ : Buôn Ma Thuột.</li>\r\n</ul>\r\n&nbsp;\r\n\r\nBạn là người muốn thưởng thức cafe chính hãng,hãy đến với CR MAN Coffee để nhận được những sản phẩm tốt nhất.', 'cafe rang xay', 'Các hạt cafe được nhập trực tiếp từ vườn trồng tại Buôn ma thuột,rang xay theo phương pháp hiện đại nhất và vẫn giữ nguyên hương vị thuần của cafe.', 'publish', 'closed', 'closed', '', 'cafe-rang-xay', '', '', '2017-07-02 10:35:45', '2017-07-02 10:35:45', '', 0, 'http://localhost/cafe/?post_type=product&#038;p=41', 0, 'product', '', 0),
(42, 1, '2017-07-02 10:11:49', '2017-07-02 10:11:49', '', 'z701099667691_12a115bb17f5d1cefb66f8e619739d42', '', 'inherit', 'open', 'closed', '', 'z701099667691_12a115bb17f5d1cefb66f8e619739d42', '', '', '2017-07-02 10:11:49', '2017-07-02 10:11:49', '', 41, 'http://localhost/cafe/wp-content/uploads/2017/07/z701099667691_12a115bb17f5d1cefb66f8e619739d42.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2017-07-02 10:21:52', '2017-07-02 10:21:52', '', 'Cafe hạt', 'cà phê được tạo ra từ 100% cà phê, Không tẩm ướp hoặc có tạp chất khác', 'inherit', 'closed', 'closed', '', '36-autosave-v1', '', '', '2017-07-02 10:21:52', '2017-07-02 10:21:52', '', 36, 'http://localhost/cafe/2017/07/02/36-autosave-v1/', 0, 'revision', '', 0),
(44, 1, '2017-07-02 11:01:21', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-07-02 11:01:21', '0000-00-00 00:00:00', '', 0, 'http://localhost/cafe/?post_type=acf-field-group&p=44', 0, 'acf-field-group', '', 0),
(45, 1, '2017-07-02 11:01:53', '2017-07-02 11:01:53', 'a:12:{s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:9:"new_lines";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'blog', 'blog', 'publish', 'closed', 'closed', '', 'field_5958d28c95c35', '', '', '2017-07-02 11:01:53', '2017-07-02 11:01:53', '', 20, 'http://localhost/cafe/?post_type=acf-field&p=45', 3, 'acf-field', '', 0),
(46, 1, '2017-07-02 11:04:29', '2017-07-02 11:04:29', '', 'Home', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2017-07-02 11:04:29', '2017-07-02 11:04:29', '', 4, 'http://localhost/cafe/2017/07/02/4-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2017-07-02 11:09:39', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-07-02 11:09:39', '0000-00-00 00:00:00', '', 0, 'http://localhost/cafe/?post_type=product&p=47', 0, 'product', '', 0),
(48, 1, '2017-07-02 11:14:51', '2017-07-02 11:14:51', '', 'RO1/ Mạnh Mẽ', 'Được chế biến ướt từ những hạt cà phê chọn lọc Robusta của "Thánh địa"  cà phê Buôn Ma Thuột, xã Eapok, huyện Cưmgar, huyện Đak-min... Tỉnh Đaklak, có hương thơm dịu nhẹ, vị cà phê cực mạnh', 'publish', 'closed', 'closed', '', 'ro1-manh-me', '', '', '2017-07-02 11:14:51', '2017-07-02 11:14:51', '', 0, 'http://localhost/cafe/?post_type=product&#038;p=48', 0, 'product', '', 0),
(49, 1, '2017-07-02 11:17:32', '2017-07-02 11:17:32', '', 'RO2/ Quyến rũ', 'Được chế biến từ những hạt cà phê chọn lọc Arabica có xuất xứ từ Jamaica, trồng ở vùng Eapok BMT và vùng Cầu Đất-Lầm Đồng, loại cà phê này giống như nàng Latinh, có một mùi hương vô cùng quyến rũ, vị dịu êm.', 'publish', 'closed', 'closed', '', 'ro1-quyen-ru', '', '', '2017-07-02 11:32:16', '2017-07-02 11:32:16', '', 0, 'http://localhost/cafe/?post_type=product&#038;p=49', 0, 'product', '', 0),
(50, 1, '2017-07-02 11:19:26', '2017-07-02 11:19:26', '', 'RO3/ Mạnh mẽ - Quyến rũ', 'là sự phối hợp giữa robusta và Arabica, một sự phối hợp hoàn hảo và khoa học của chuyên gia chế biến cho hương vị vừa đậm dà vừa nồng nàn lưu luyến', 'publish', 'closed', 'closed', '', 'ro3-manh-me-quyen-ru', '', '', '2017-07-02 11:19:26', '2017-07-02 11:19:26', '', 0, 'http://localhost/cafe/?post_type=product&#038;p=50', 0, 'product', '', 0),
(51, 1, '2017-07-02 11:21:27', '2017-07-02 11:21:27', '', 'RO4/ Sáng tạo', 'Những hạt cà phê chọn lọc Robusta, Arabica,Catimor,Culi đơn côi được phối hợp khoa học, kết hợp truyền thống và hiện đại cho ta một hương vị đặc biệt thơm ngon, kích hoạt năng lượng sáng tạo, đột phá thành công.', 'publish', 'closed', 'closed', '', 'ro4-sang-tao', '', '', '2017-07-02 11:44:14', '2017-07-02 11:44:14', '', 0, 'http://localhost/cafe/?post_type=product&#038;p=51', 0, 'product', '', 0),
(53, 1, '2017-07-02 11:24:35', '2017-07-02 11:24:35', '', 'RO5/ Đam mê', 'Là sự phối hợp tinh tế từ những hạt cà phê ngon nhất Robusta,Arabica,Culi đơn côi pha với mật ong hoa cà phê cho ta một hương vị dù đi xa vẫn nhớ mãi. Đây là đồ uoongsvoiws công thức pha độc nhất vô nhị, lượng cà phê vừa đủ để sảng khoái, mật ong bảo vệ niêm mạc dạ dày, chống oxh và làm đẹp da', 'publish', 'closed', 'closed', '', 'ro5-dam-me', '', '', '2017-07-02 11:43:50', '2017-07-02 11:43:50', '', 0, 'http://localhost/cafe/?post_type=product&#038;p=53', 0, 'product', '', 0),
(55, 1, '2017-07-02 11:43:44', '2017-07-02 11:43:44', '', 'z701098585863_aceea4b85dcdb2a47606ec487f1335cb', '', 'inherit', 'open', 'closed', '', 'z701098585863_aceea4b85dcdb2a47606ec487f1335cb', '', '', '2017-07-02 11:43:44', '2017-07-02 11:43:44', '', 53, 'http://localhost/cafe/wp-content/uploads/2017/07/z701098585863_aceea4b85dcdb2a47606ec487f1335cb.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2017-07-02 11:44:09', '2017-07-02 11:44:09', '', 'z701098585329_d306ea27caa4c0f913710bd1baf7accd', '', 'inherit', 'open', 'closed', '', 'z701098585329_d306ea27caa4c0f913710bd1baf7accd', '', '', '2017-07-02 11:44:09', '2017-07-02 11:44:09', '', 51, 'http://localhost/cafe/wp-content/uploads/2017/07/z701098585329_d306ea27caa4c0f913710bd1baf7accd.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2017-07-02 11:50:38', '2017-07-02 11:50:38', 'Cafe không biết từ bao giờ đã trở nên gần gũi và quen thuộc với người dân Việt Nam đến thế. Cái vị đăng đắng, đầm đậm bên đầu lưỡi, mùi hương hạnh nhân, mùi đất lan tỏa bên tách café khiến cho người ta phải ngất ngây…và cứ như thế café đi vào lòng người Việt một cách đằm thắm nhẹ nhàng.\r\n\r\nNgười ta thưởng thức cafe trong khi làm việc, khi gặp gỡ, bàn chuyện cùng đối tác, khi trò chuyện cùng bạn bè, người thân, hay khi giải trí…Và café đóng góp một phần không nhỏ trong cuộc sống, trong công việc của mỗi người. Vậy thật sự mọi người đã hiểu về nét văn hóa café của mình hay chưa? Bài viết sau đây sẽ là một cái nhìn chung về cafe Việt, từ sự xuất hiện của café tại xứ sở hình chữ S đến sự hình thành nét văn hóa cafe của người Việt và những tác dụng quan trọng mà cafe mang lại trong cuộc sống.\r\n\r\n<strong>Sự xuất hiện của café ở Việt Nam</strong>\r\n\r\nCafe có nguồn gốc từ phương Tây, theo chân người Pháp du nhập vào Việt Nam từ thời thuộc địa. Ban đầu thứ thức uống này chỉ dành riêng cho giới quý tộc, các quan chức Pháp, hay tầng lớp trí thức nơi thành thị. Dần dần café trở thành thứ thức uống phổ biến trong cuộc sống của người dân.\r\n\r\nNgày nay cafe Việt không chỉ được biết đến về sản lượng đứng trong top đầu thế giới mà còn tạo dựng được nét cafe rất riêng của người Việt. Hai loại cafe được sử dụng và trồng phổ biến ở Việt Nam là Arabica và Robusta. Mỗi loại đều mang lại tên tuổi của nó ở trong nước cũng như ở nước ngoài về sản lượng, chất lượng, mùi vị. Hương vị café Việt ngày càng bay cao, bay xa với những thương hiệu lớn như Cafe Trung Nguyên, Vinacafe, NesCafe…', 'Văn hóa cafe người Việt', 'Cafe không biết từ bao giờ đã trở nên gần gũi và quen thuộc với người dân Việt Nam đến thế. Cái vị đăng đắng, đầm đậm bên đầu lưỡi, mùi hương hạnh nhân, mùi đất lan tỏa bên tách café khiến cho người ta phải ngất ngây…và cứ như thế café đi vào lòng người Việt một cách đằm thắm nhẹ nhàng.', 'publish', 'open', 'open', '', 'van-hoa-cafe-nguoi-viet', '', '', '2017-07-02 11:50:38', '2017-07-02 11:50:38', '', 0, 'http://localhost/cafe/?p=57', 0, 'post', '', 0),
(58, 1, '2017-07-02 11:50:26', '2017-07-02 11:50:26', '', 'z701099717930_05ac515e61d874a217890bfa13c16e4e', '', 'inherit', 'open', 'closed', '', 'z701099717930_05ac515e61d874a217890bfa13c16e4e', '', '', '2017-07-02 11:50:26', '2017-07-02 11:50:26', '', 57, 'http://localhost/cafe/wp-content/uploads/2017/07/z701099717930_05ac515e61d874a217890bfa13c16e4e.jpg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2017-07-02 11:50:38', '2017-07-02 11:50:38', 'Cafe không biết từ bao giờ đã trở nên gần gũi và quen thuộc với người dân Việt Nam đến thế. Cái vị đăng đắng, đầm đậm bên đầu lưỡi, mùi hương hạnh nhân, mùi đất lan tỏa bên tách café khiến cho người ta phải ngất ngây…và cứ như thế café đi vào lòng người Việt một cách đằm thắm nhẹ nhàng.\r\n\r\nNgười ta thưởng thức cafe trong khi làm việc, khi gặp gỡ, bàn chuyện cùng đối tác, khi trò chuyện cùng bạn bè, người thân, hay khi giải trí…Và café đóng góp một phần không nhỏ trong cuộc sống, trong công việc của mỗi người. Vậy thật sự mọi người đã hiểu về nét văn hóa café của mình hay chưa? Bài viết sau đây sẽ là một cái nhìn chung về cafe Việt, từ sự xuất hiện của café tại xứ sở hình chữ S đến sự hình thành nét văn hóa cafe của người Việt và những tác dụng quan trọng mà cafe mang lại trong cuộc sống.\r\n\r\n<strong>Sự xuất hiện của café ở Việt Nam</strong>\r\n\r\nCafe có nguồn gốc từ phương Tây, theo chân người Pháp du nhập vào Việt Nam từ thời thuộc địa. Ban đầu thứ thức uống này chỉ dành riêng cho giới quý tộc, các quan chức Pháp, hay tầng lớp trí thức nơi thành thị. Dần dần café trở thành thứ thức uống phổ biến trong cuộc sống của người dân.\r\n\r\nNgày nay cafe Việt không chỉ được biết đến về sản lượng đứng trong top đầu thế giới mà còn tạo dựng được nét cafe rất riêng của người Việt. Hai loại cafe được sử dụng và trồng phổ biến ở Việt Nam là Arabica và Robusta. Mỗi loại đều mang lại tên tuổi của nó ở trong nước cũng như ở nước ngoài về sản lượng, chất lượng, mùi vị. Hương vị café Việt ngày càng bay cao, bay xa với những thương hiệu lớn như Cafe Trung Nguyên, Vinacafe, NesCafe…', 'Văn hóa cafe người Việt', 'Cafe không biết từ bao giờ đã trở nên gần gũi và quen thuộc với người dân Việt Nam đến thế. Cái vị đăng đắng, đầm đậm bên đầu lưỡi, mùi hương hạnh nhân, mùi đất lan tỏa bên tách café khiến cho người ta phải ngất ngây…và cứ như thế café đi vào lòng người Việt một cách đằm thắm nhẹ nhàng.', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2017-07-02 11:50:38', '2017-07-02 11:50:38', '', 57, 'http://localhost/cafe/2017/07/02/57-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2017-07-02 11:55:01', '2017-07-02 11:55:01', 'Uống từ 1 đến 2 ly cà phê mỗi ngày có thể giúp cơ thể sảng khoái, linh hoạt. Tuy nhiên, dùng thường xuyên với liều cao hơn có thể gây nghiện, làm gia tăng những đáp ứng stress, suy giảm hệ miễn dịch và tăng nguy cơ mắc bệnh đái tháo đường, tim mạch ở những người có nguy cơ cao.\r\n\r\nCà phê là một thức uống rất phổ biến ở nhiều quốc gia. Có lẽ không có 1 chất kích thích  nào được sử dụng rộng rãi và hợp pháp trên toàn thế giới như cà phê.&amp;nbsp; Cà phê được bán dưới nhiều dạng như dạng hạt, dạng bột hoặc thức uống ngay tại chỗ, trong siêu thị, nhà hàng hay quán cóc. Bạn có thể mua bất kỳ lúc nào và mua bao nhiêu cũng được. Cà phê là 1 chất kích thích. Tuy nhiên, một số thông tin gần đây lại cho biết những luận điểm trái ngược nhau về tác động của loại thức uống này.&amp;nbsp; Có người nói uống cà phê nhiều làm giảm nguy cơ các loại bệnh tim mạch, tiểu đường, mất trí nhớ. Người khác lại cho rằng cà phê làm tăng áp huyết, đường huyết thậm chí còn gây vô sinh. Đâu là sự thật?\r\n\r\nUống từ 1 đến 2 ly cà phê mỗi ngày có thể giúp cơ thể sảng khoái, linh hoạt. Tuy nhiên, dùng thường xuyên với liều cao hơn có thể gây nghiện, làm gia tăng những đáp ứng stress, suy giảm hệ miễn dịch và tăng nguy cơ mắc bệnh đái tháo đường, tim mạch ở những người có nguy cơ cao.', 'Uống cà phê, lợi và hại, bao nhiêu thì vừa?', 'Uống từ 1 đến 2 ly cà phê mỗi ngày có thể giúp cơ thể sảng khoái, linh hoạt. Tuy nhiên, dùng thường xuyên với liều cao hơn có thể gây nghiện, làm gia tăng những đáp ứng stress, suy giảm hệ miễn dịch và tăng nguy cơ mắc bệnh đái tháo đường, tim mạch ở những người có nguy cơ cao.', 'publish', 'open', 'open', '', 'uong-ca-phe-loi-va-hai-bao-nhieu-thi-vua', '', '', '2017-07-02 11:55:01', '2017-07-02 11:55:01', '', 0, 'http://localhost/cafe/?p=60', 0, 'post', '', 0),
(61, 1, '2017-07-02 11:51:35', '2017-07-02 11:51:35', '', 'z701099706695_103919faf3d2d9fc8da227045bce8071', '', 'inherit', 'open', 'closed', '', 'z701099706695_103919faf3d2d9fc8da227045bce8071', '', '', '2017-07-02 11:51:35', '2017-07-02 11:51:35', '', 60, 'http://localhost/cafe/wp-content/uploads/2017/07/z701099706695_103919faf3d2d9fc8da227045bce8071.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2017-07-02 11:55:01', '2017-07-02 11:55:01', 'Uống từ 1 đến 2 ly cà phê mỗi ngày có thể giúp cơ thể sảng khoái, linh hoạt. Tuy nhiên, dùng thường xuyên với liều cao hơn có thể gây nghiện, làm gia tăng những đáp ứng stress, suy giảm hệ miễn dịch và tăng nguy cơ mắc bệnh đái tháo đường, tim mạch ở những người có nguy cơ cao.\r\n\r\nCà phê là một thức uống rất phổ biến ở nhiều quốc gia. Có lẽ không có 1 chất kích thích  nào được sử dụng rộng rãi và hợp pháp trên toàn thế giới như cà phê.&amp;nbsp; Cà phê được bán dưới nhiều dạng như dạng hạt, dạng bột hoặc thức uống ngay tại chỗ, trong siêu thị, nhà hàng hay quán cóc. Bạn có thể mua bất kỳ lúc nào và mua bao nhiêu cũng được. Cà phê là 1 chất kích thích. Tuy nhiên, một số thông tin gần đây lại cho biết những luận điểm trái ngược nhau về tác động của loại thức uống này.&amp;nbsp; Có người nói uống cà phê nhiều làm giảm nguy cơ các loại bệnh tim mạch, tiểu đường, mất trí nhớ. Người khác lại cho rằng cà phê làm tăng áp huyết, đường huyết thậm chí còn gây vô sinh. Đâu là sự thật?\r\n\r\nUống từ 1 đến 2 ly cà phê mỗi ngày có thể giúp cơ thể sảng khoái, linh hoạt. Tuy nhiên, dùng thường xuyên với liều cao hơn có thể gây nghiện, làm gia tăng những đáp ứng stress, suy giảm hệ miễn dịch và tăng nguy cơ mắc bệnh đái tháo đường, tim mạch ở những người có nguy cơ cao.', 'Uống cà phê, lợi và hại, bao nhiêu thì vừa?', 'Uống từ 1 đến 2 ly cà phê mỗi ngày có thể giúp cơ thể sảng khoái, linh hoạt. Tuy nhiên, dùng thường xuyên với liều cao hơn có thể gây nghiện, làm gia tăng những đáp ứng stress, suy giảm hệ miễn dịch và tăng nguy cơ mắc bệnh đái tháo đường, tim mạch ở những người có nguy cơ cao.', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2017-07-02 11:55:01', '2017-07-02 11:55:01', '', 60, 'http://localhost/cafe/2017/07/02/60-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2017-07-02 12:03:13', '2017-07-02 12:03:13', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2017-07-02 12:03:13', '2017-07-02 12:03:13', '', 1, 'http://localhost/cafe/2017/07/02/1-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2017-07-02 12:06:35', '2017-07-02 12:06:35', 'Việt Nam có một nền văn hóa cà phê rất khác với các nền văn hóa cà phê ở phương Tây.\r\n\r\nCà phê ở đây dành cho việc thưởng thức một cách chậm rãi, tương tự như cách uống của người Pháp. Tuy nhiên, người Pháp uống cà phê trước khi ngày làm việc bắt đầu. Còn ở Việt Nam, người ta thường bỏ ra ít nhất nửa tiếng mỗi lần uống cà phê và họ có thể uống vào bất cứ lúc nào trong ngày.\r\n\r\nỞ trong các quán cà phê, tôi để ý thấy khách hàng hầu hết là đàn ông. Thời gian gọi cà phê, chờ cà phê ra rồi chờ cà phê nhỏ giọt phải mất ít nhất mười lăm phút.\r\n\r\nTrong khi đó, khách ngồi hút thuốc, đọc báo, suy tư, hoặc trò chuyện với nhau và tận hưởng thời gian rảnh rỗi. Khi ly cà phê đã sẵn sàng, họ nhâm nhi như người Scotland nhâm nhi rượu whiskey, rồi lại nói chuyện và hút thuốc.\r\n\r\nKhi tôi hỏi một người bạn những khách hàng trong quán cà phê là ai, cô ấy bảo đó là người đang làm việc. Có thể họ tự kinh doanh hoặc đi làm thuê, nhưng cái hay là họ có thể sắp xếp thời gian ngồi suy tư bên ly cà phê.\r\n\r\nThời gian nghỉ giải lao uống cà phê giữa giờ làm việc ở Việt Nam không bị quy định chặt chẽ. Những người đi làm có thể đi uống cà phê bất cứ lúc nào trong ngày, còn người thất nghiệp thì ngồi uống cà phê cả ngày.\r\n\r\nHiếm khi tôi thấy người dân ở đây gọi cà phê mang đi. Có lẽ chỉ có phụ nữ bận đến công sở ngay thì mới chọn cách uống này. Phụ nữ có vẻ cũng ít ngồi nhâm nhi cà phê trong quán. Hình như họ quá bận với công việc, hoặc với chuyện mua sắm gia đình.\r\n\r\nThỉnh thoảng trong những quán cà phê sang trọng, tôi gặp những người phụ nữ ngồi thư thả uống nước. Nhưng có vẻ như họ không phải người đi làm, mà là những người dư dả tiền của lẫn thời gian.\r\n\r\nỞ Việt Nam, xã hội cà phê có vẻ như thuộc về nam giới. Ở các nước phương Tây, lúc uống cà phê không phải là thời gian dành cho việc quảng giao. Ly cà phê là một phương cách đem đến sự hăng say làm việc.\r\n\r\nỞ Ý, những người bạn tôi thường đứng uống nhanh một cốc espresso trước khi lao vào công việc. Họ không có nhiều thời gian để ngồi trò chuyện và nhâm nhi.\r\n\r\nSau ly cà phê khởi động đầu ngày, người phương Tây sẽ tập trung làm việc đến khoảng 11 giờ. Sau đó, họ sẽ nghỉ giải lao để uống thêm chút trà hay cà phê cho tỉnh táo.\r\n\r\nỞ Mỹ, nhiều loại xe ôtô bố trí chỗ đặt ly cà phê vì người Mỹ thường có thói quen ghé xe lại một cửa hàng bên đường mua ly cà phê đặt trong xe rồi đi ngay. Không có thời gian ngồi thưởng thức cà phê trong quán, họ thường để ly cà phê của mình trong ôtô cho tiện. Thậm chí nhiều khi họ còn chẳng có thời gian để ăn sáng.\r\n\r\nMột phát minh người Mỹ quen sử dụng là máy pha cà phê. Máy này được cài chương trình và hoạt động ban đêm để cà phê luôn sẵn sàng vào buổi sáng. Cách này giúp người Mỹ tiết kiệm thời gian pha cà phê. Người uống có thể vừa cầm cốc cà phê vừa uống, vừa chạy ra cửa hoặc lái xe đến công sở.\r\n\r\nTóm lại, ở các nước phương Tây, cà phê là chất xúc tác cho tinh thần làm việc. Còn ở Việt Nam, cà phê đi cùng với thú vui thư giãn với bạn bè. Có lẽ người phương Tây đặt cao năng suất lao động, còn ở một số quốc gia khác, mọi người lại đề cao sự thư giãn trong cuộc sống.\r\n\r\nMặc dù cà phê ở Việt Nam thường đậm đặc hơn cà phê ở các nước phương Tây, nhưng người thưởng thức cà phê ở đây không hề có biểu hiện gì là sẽ hăng say lao ngay vào công việc ngay sau khi giọt cà phê đầu tiên ngấm vào cơ thể. Họ vẫn thích sự từ từ và thư giãn hơn.', 'Người Tây thấy lạ về văn hóa cà phê Việt', 'Việt Nam có một nền văn hóa cà phê rất khác với các nền văn hóa cà phê ở phương Tây.\r\n\r\nCà phê ở đây dành cho việc thưởng thức một cách chậm rãi, tương tự như cách uống của người Pháp. Tuy nhiên, người Pháp uống cà phê trước khi ngày làm việc bắt đầu. Còn ở Việt Nam, người ta thường bỏ ra ít nhất nửa tiếng mỗi lần uống cà phê và họ có thể uống vào bất cứ lúc nào trong ngày.', 'publish', 'open', 'open', '', 'nguoi-tay-thay-la-ve-van-hoa-ca-phe-viet', '', '', '2017-07-02 12:06:35', '2017-07-02 12:06:35', '', 0, 'http://localhost/cafe/?p=64', 0, 'post', '', 0),
(65, 1, '2017-07-02 12:06:25', '2017-07-02 12:06:25', '', 'z701100146164_fc0778c4d0dec414bb4bd9fe9009ce5b', '', 'inherit', 'open', 'closed', '', 'z701100146164_fc0778c4d0dec414bb4bd9fe9009ce5b', '', '', '2017-07-02 12:06:25', '2017-07-02 12:06:25', '', 64, 'http://localhost/cafe/wp-content/uploads/2017/07/z701100146164_fc0778c4d0dec414bb4bd9fe9009ce5b.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2017-07-02 12:06:35', '2017-07-02 12:06:35', 'Việt Nam có một nền văn hóa cà phê rất khác với các nền văn hóa cà phê ở phương Tây.\r\n\r\nCà phê ở đây dành cho việc thưởng thức một cách chậm rãi, tương tự như cách uống của người Pháp. Tuy nhiên, người Pháp uống cà phê trước khi ngày làm việc bắt đầu. Còn ở Việt Nam, người ta thường bỏ ra ít nhất nửa tiếng mỗi lần uống cà phê và họ có thể uống vào bất cứ lúc nào trong ngày.\r\n\r\nỞ trong các quán cà phê, tôi để ý thấy khách hàng hầu hết là đàn ông. Thời gian gọi cà phê, chờ cà phê ra rồi chờ cà phê nhỏ giọt phải mất ít nhất mười lăm phút.\r\n\r\nTrong khi đó, khách ngồi hút thuốc, đọc báo, suy tư, hoặc trò chuyện với nhau và tận hưởng thời gian rảnh rỗi. Khi ly cà phê đã sẵn sàng, họ nhâm nhi như người Scotland nhâm nhi rượu whiskey, rồi lại nói chuyện và hút thuốc.\r\n\r\nKhi tôi hỏi một người bạn những khách hàng trong quán cà phê là ai, cô ấy bảo đó là người đang làm việc. Có thể họ tự kinh doanh hoặc đi làm thuê, nhưng cái hay là họ có thể sắp xếp thời gian ngồi suy tư bên ly cà phê.\r\n\r\nThời gian nghỉ giải lao uống cà phê giữa giờ làm việc ở Việt Nam không bị quy định chặt chẽ. Những người đi làm có thể đi uống cà phê bất cứ lúc nào trong ngày, còn người thất nghiệp thì ngồi uống cà phê cả ngày.\r\n\r\nHiếm khi tôi thấy người dân ở đây gọi cà phê mang đi. Có lẽ chỉ có phụ nữ bận đến công sở ngay thì mới chọn cách uống này. Phụ nữ có vẻ cũng ít ngồi nhâm nhi cà phê trong quán. Hình như họ quá bận với công việc, hoặc với chuyện mua sắm gia đình.\r\n\r\nThỉnh thoảng trong những quán cà phê sang trọng, tôi gặp những người phụ nữ ngồi thư thả uống nước. Nhưng có vẻ như họ không phải người đi làm, mà là những người dư dả tiền của lẫn thời gian.\r\n\r\nỞ Việt Nam, xã hội cà phê có vẻ như thuộc về nam giới. Ở các nước phương Tây, lúc uống cà phê không phải là thời gian dành cho việc quảng giao. Ly cà phê là một phương cách đem đến sự hăng say làm việc.\r\n\r\nỞ Ý, những người bạn tôi thường đứng uống nhanh một cốc espresso trước khi lao vào công việc. Họ không có nhiều thời gian để ngồi trò chuyện và nhâm nhi.\r\n\r\nSau ly cà phê khởi động đầu ngày, người phương Tây sẽ tập trung làm việc đến khoảng 11 giờ. Sau đó, họ sẽ nghỉ giải lao để uống thêm chút trà hay cà phê cho tỉnh táo.\r\n\r\nỞ Mỹ, nhiều loại xe ôtô bố trí chỗ đặt ly cà phê vì người Mỹ thường có thói quen ghé xe lại một cửa hàng bên đường mua ly cà phê đặt trong xe rồi đi ngay. Không có thời gian ngồi thưởng thức cà phê trong quán, họ thường để ly cà phê của mình trong ôtô cho tiện. Thậm chí nhiều khi họ còn chẳng có thời gian để ăn sáng.\r\n\r\nMột phát minh người Mỹ quen sử dụng là máy pha cà phê. Máy này được cài chương trình và hoạt động ban đêm để cà phê luôn sẵn sàng vào buổi sáng. Cách này giúp người Mỹ tiết kiệm thời gian pha cà phê. Người uống có thể vừa cầm cốc cà phê vừa uống, vừa chạy ra cửa hoặc lái xe đến công sở.\r\n\r\nTóm lại, ở các nước phương Tây, cà phê là chất xúc tác cho tinh thần làm việc. Còn ở Việt Nam, cà phê đi cùng với thú vui thư giãn với bạn bè. Có lẽ người phương Tây đặt cao năng suất lao động, còn ở một số quốc gia khác, mọi người lại đề cao sự thư giãn trong cuộc sống.\r\n\r\nMặc dù cà phê ở Việt Nam thường đậm đặc hơn cà phê ở các nước phương Tây, nhưng người thưởng thức cà phê ở đây không hề có biểu hiện gì là sẽ hăng say lao ngay vào công việc ngay sau khi giọt cà phê đầu tiên ngấm vào cơ thể. Họ vẫn thích sự từ từ và thư giãn hơn.', 'Người Tây thấy lạ về văn hóa cà phê Việt', 'Việt Nam có một nền văn hóa cà phê rất khác với các nền văn hóa cà phê ở phương Tây.\r\n\r\nCà phê ở đây dành cho việc thưởng thức một cách chậm rãi, tương tự như cách uống của người Pháp. Tuy nhiên, người Pháp uống cà phê trước khi ngày làm việc bắt đầu. Còn ở Việt Nam, người ta thường bỏ ra ít nhất nửa tiếng mỗi lần uống cà phê và họ có thể uống vào bất cứ lúc nào trong ngày.', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2017-07-02 12:06:35', '2017-07-02 12:06:35', '', 64, 'http://localhost/cafe/2017/07/02/64-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2017-07-02 12:11:56', '2017-07-02 12:11:56', '<h3 class="short_intro txt_666">Bước vào quán, cùng một loại thức uống nhưng người Sài Gòn gọi cà phê sữa đá, còn người Hà Nội lại gọi là cà phê nâu.</h3>\r\n<div id="left_calculator">\r\n<div class="fck_detail width_common block_ads_connect">\r\n<p class="Normal">Cả người Sài Gòn và Hà Nội đều xem cà phê là một nét văn hóa không thể thiếu trong đời sống sinh hoạt thường ngày, tuy nhiên mỗi nơi lại có sự khác biệt không thể lẫn vào đâu được. Dưới đây là sự so sánh thú vị giữa cách thưởng thức cà phê của người Sài Gòn và người Hà Nội.</p>\r\n<p class="subtitle">Người thưởng thức</p>\r\n<p class="Normal">Đối với người Sài Gòn, cà phê là loại thức uống phổ biến của mọi tầng lớp, lứa tuổi, từ người già đến người trẻ. Nó là câu cửa miệng để làm cái cớ rủ rê bạn bè: “Cà phê không?”. Chỉ với cái gật đầu, ly cà phê trở thành thứ nối kết giữa hai hoặc nhiều con người với nhau. Họ có thể uống cà phê vào bất cứ giờ nào trong ngày, có thể vào buổi sáng sớm với tờ báo còn thơm mùi mực in, trên chiếc ghế đẩu ngay tại lề đường. Có lúc, người Sài Gòn lại thức thật khuya nhấm nháp ly cà phê bên một người bạn thân, ngắm sự tĩnh lặng đến kỳ lạ của phố xá lúc lên đèn.</p>\r\n<p class="Normal">Người Hà Nội lại khác, chuộng cà phê nhất phải kể đến những bậc lão thành, dân kinh doanh đam mê công việc. Họ thường chỉ nhâm nhi ly cà phê vào buổi sáng trong không khí se lạnh và vài tia nắng len lỏi qua tán cây. Người Hà Nội không ngồi quá lâu, nhưng điềm nhiên chẳng vội vã. Đối với họ, thưởng thức cà phê là cả một nghệ thuật, ẩn chứa câu chuyện dài cần kể.</p>\r\n\r\n</div>\r\n</div>', 'Khác biệt văn hóa uống cà phê của Hà Nội và Sài Gòn', '', 'publish', 'open', 'open', '', 'khac-biet-van-hoa-uong-ca-phe-cua-ha-noi-va-sai-gon', '', '', '2017-07-02 12:11:56', '2017-07-02 12:11:56', '', 0, 'http://localhost/cafe/?p=67', 0, 'post', '', 0),
(69, 1, '2017-07-02 12:11:56', '2017-07-02 12:11:56', '<h3 class="short_intro txt_666">Bước vào quán, cùng một loại thức uống nhưng người Sài Gòn gọi cà phê sữa đá, còn người Hà Nội lại gọi là cà phê nâu.</h3>\r\n<div id="left_calculator">\r\n<div class="fck_detail width_common block_ads_connect">\r\n<p class="Normal">Cả người Sài Gòn và Hà Nội đều xem cà phê là một nét văn hóa không thể thiếu trong đời sống sinh hoạt thường ngày, tuy nhiên mỗi nơi lại có sự khác biệt không thể lẫn vào đâu được. Dưới đây là sự so sánh thú vị giữa cách thưởng thức cà phê của người Sài Gòn và người Hà Nội.</p>\r\n<p class="subtitle">Người thưởng thức</p>\r\n<p class="Normal">Đối với người Sài Gòn, cà phê là loại thức uống phổ biến của mọi tầng lớp, lứa tuổi, từ người già đến người trẻ. Nó là câu cửa miệng để làm cái cớ rủ rê bạn bè: “Cà phê không?”. Chỉ với cái gật đầu, ly cà phê trở thành thứ nối kết giữa hai hoặc nhiều con người với nhau. Họ có thể uống cà phê vào bất cứ giờ nào trong ngày, có thể vào buổi sáng sớm với tờ báo còn thơm mùi mực in, trên chiếc ghế đẩu ngay tại lề đường. Có lúc, người Sài Gòn lại thức thật khuya nhấm nháp ly cà phê bên một người bạn thân, ngắm sự tĩnh lặng đến kỳ lạ của phố xá lúc lên đèn.</p>\r\n<p class="Normal">Người Hà Nội lại khác, chuộng cà phê nhất phải kể đến những bậc lão thành, dân kinh doanh đam mê công việc. Họ thường chỉ nhâm nhi ly cà phê vào buổi sáng trong không khí se lạnh và vài tia nắng len lỏi qua tán cây. Người Hà Nội không ngồi quá lâu, nhưng điềm nhiên chẳng vội vã. Đối với họ, thưởng thức cà phê là cả một nghệ thuật, ẩn chứa câu chuyện dài cần kể.</p>\r\n\r\n</div>\r\n</div>', 'Khác biệt văn hóa uống cà phê của Hà Nội và Sài Gòn', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2017-07-02 12:11:56', '2017-07-02 12:11:56', '', 67, 'http://localhost/cafe/2017/07/02/67-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cf_termmeta`
--

CREATE TABLE `cf_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cf_terms`
--

CREATE TABLE `cf_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cf_terms`
--

INSERT INTO `cf_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Tin tức', 'tin-tuc', 0),
(2, 'Main menu', 'main-menu', 0),
(3, 'hot', 'hot', 0),
(4, 'sản phẩm chính', 'san-pham-chinh', 0),
(5, 'hot', 'hot', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cf_term_relationships`
--

CREATE TABLE `cf_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cf_term_relationships`
--

INSERT INTO `cf_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(14, 2, 0),
(15, 2, 0),
(16, 2, 0),
(17, 2, 0),
(18, 2, 0),
(19, 2, 0),
(36, 3, 1),
(38, 3, 1),
(41, 3, 1),
(48, 4, 1),
(49, 4, 1),
(50, 4, 1),
(51, 4, 1),
(53, 4, 1),
(57, 5, 0),
(60, 5, 0),
(64, 5, 0),
(67, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cf_term_taxonomy`
--

CREATE TABLE `cf_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cf_term_taxonomy`
--

INSERT INTO `cf_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 6),
(3, 3, 'product_cat', '', 0, 3),
(4, 4, 'product_cat', '', 0, 5),
(5, 5, 'category', '', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `cf_usermeta`
--

CREATE TABLE `cf_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cf_usermeta`
--

INSERT INTO `cf_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'batman'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'cf_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(12, 1, 'cf_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', ''),
(14, 1, 'show_welcome_panel', '1'),
(15, 1, 'session_tokens', 'a:2:{s:64:"babaadc3f7774250a60cc366b67517e26c4e81757204c44e83f99282db5d100f";a:4:{s:10:"expiration";i:1500032377;s:2:"ip";s:3:"::1";s:2:"ua";s:127:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/64.4.130 Chrome/58.4.3029.130 Safari/537.36";s:5:"login";i:1498822777;}s:64:"779d18376076e8ade2901bb1f3200580fb56d5aa762763fda57ee5770e052498";a:4:{s:10:"expiration";i:1500032388;s:2:"ip";s:3:"::1";s:2:"ua";s:127:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/64.4.130 Chrome/58.4.3029.130 Safari/537.36";s:5:"login";i:1498822788;}}'),
(16, 1, 'cf_dashboard_quick_press_last_post_id', '3'),
(17, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(18, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:21:"add-post-type-product";i:1;s:12:"add-post_tag";i:2;s:15:"add-product_cat";}'),
(19, 1, 'nav_menu_recently_edited', '2'),
(20, 1, 'cf_user-settings', 'libraryContent=browse&editor=tinymce'),
(21, 1, 'cf_user-settings-time', '1498996498'),
(22, 1, 'meta-box-order_product', 'a:4:{s:15:"acf_after_title";s:0:"";s:4:"side";s:37:"submitdiv,product_catdiv,postimagediv";s:6:"normal";s:43:"acf-group_59586cca99e6a,postexcerpt,slugdiv";s:8:"advanced";s:0:"";}'),
(23, 1, 'screen_layout_product', '2'),
(24, 1, 'closedpostboxes_post', 'a:0:{}'),
(25, 1, 'metaboxhidden_post', 'a:6:{i:0;s:23:"acf-group_59586cca99e6a";i:1;s:13:"trackbacksdiv";i:2;s:10:"postcustom";i:3;s:16:"commentstatusdiv";i:4;s:7:"slugdiv";i:5;s:9:"authordiv";}');

-- --------------------------------------------------------

--
-- Table structure for table `cf_users`
--

CREATE TABLE `cf_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cf_users`
--

INSERT INTO `cf_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'batman', '$P$B9PVcjwEQ/rRbbn7C3wz5MpxA6qRk71', 'batman', 'baotuyen555@gmail.com', '', '2017-06-30 11:39:34', '', 0, 'batman');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cf_commentmeta`
--
ALTER TABLE `cf_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `cf_comments`
--
ALTER TABLE `cf_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `cf_links`
--
ALTER TABLE `cf_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `cf_options`
--
ALTER TABLE `cf_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `cf_postmeta`
--
ALTER TABLE `cf_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `cf_posts`
--
ALTER TABLE `cf_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `cf_termmeta`
--
ALTER TABLE `cf_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `cf_terms`
--
ALTER TABLE `cf_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `cf_term_relationships`
--
ALTER TABLE `cf_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `cf_term_taxonomy`
--
ALTER TABLE `cf_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `cf_usermeta`
--
ALTER TABLE `cf_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `cf_users`
--
ALTER TABLE `cf_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cf_commentmeta`
--
ALTER TABLE `cf_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cf_comments`
--
ALTER TABLE `cf_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cf_links`
--
ALTER TABLE `cf_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cf_options`
--
ALTER TABLE `cf_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;
--
-- AUTO_INCREMENT for table `cf_postmeta`
--
ALTER TABLE `cf_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=312;
--
-- AUTO_INCREMENT for table `cf_posts`
--
ALTER TABLE `cf_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT for table `cf_termmeta`
--
ALTER TABLE `cf_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cf_terms`
--
ALTER TABLE `cf_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `cf_term_taxonomy`
--
ALTER TABLE `cf_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `cf_usermeta`
--
ALTER TABLE `cf_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `cf_users`
--
ALTER TABLE `cf_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
