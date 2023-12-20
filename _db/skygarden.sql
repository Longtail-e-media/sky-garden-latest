-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2023 at 12:37 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `skygarden`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_applicants`
--

CREATE TABLE `tbl_applicants` (
  `id` int(11) NOT NULL,
  `parent` varchar(100) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `current_address` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `position` varchar(100) NOT NULL,
  `myfile` varchar(50) NOT NULL,
  `qualification` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_applicants`
--

INSERT INTO `tbl_applicants` (`id`, `parent`, `fullname`, `current_address`, `mobile`, `phone`, `email`, `sortorder`, `position`, `myfile`, `qualification`) VALUES
(1, '', 'Swarna Shakya', 'KTM', '9849482842', '', 'swarna@longtail.info', 1, '1', 'family-fun-1.jpg', 'test'),
(6, '', 'sharan', 'Patan', '123123', '', 'sharan@longtail.info', 2, '11', 'table.png', 'Testing career form 123');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_articles`
--

CREATE TABLE `tbl_articles` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` text NOT NULL,
  `content` text NOT NULL,
  `linktype` tinyint(1) NOT NULL DEFAULT 0,
  `linksrc` tinytext NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `meta_title` tinytext NOT NULL,
  `meta_keywords` varchar(250) NOT NULL,
  `meta_description` varchar(250) NOT NULL,
  `type` int(1) NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `modified_date` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `homepage` int(1) NOT NULL DEFAULT 0,
  `image` blob NOT NULL,
  `date` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_articles`
--

INSERT INTO `tbl_articles` (`id`, `parent_id`, `slug`, `title`, `sub_title`, `content`, `linktype`, `linksrc`, `status`, `meta_title`, `meta_keywords`, `meta_description`, `type`, `added_date`, `modified_date`, `sortorder`, `homepage`, `image`, `date`, `category`) VALUES
(10, 0, 'natural-beauty', 'NATURAL BEAUTY', 'Spectacular mountain, city and valley views', '<div class=\"about-outer\">\r\n	<div class=\"row\">\r\n		<div class=\"col-lg-6\">\r\n			<div class=\"about-content\">\r\n				<h2 class=\"mar-bottom-30\">\r\n					IN THE<span> HEART OF<br />\r\n					DHULIKHEL</span></h2>\r\n				<p>\r\n					Located just an hour away from Kathmandu, Sky Garden Resort offers spectacular sky-high views of the sunrise, sunset and three municipalities together with the Himalayan range</p>\r\n				<p>\r\n					From the moment you arrive, our friendly staff are devoted to fulfilling your needs, turning your moments into cherished memories</p>\r\n				<p>\r\n					We offer spacious venues, a rooftop bar, jacuzzi and dining, multi-floor restaurants, and luxury accommodation to make your visit special every time</p>\r\n				<p>\r\n					Surrounded by pristine jungle and valleys, unwind, relax and reconnect with nature &ndash; discover an unparalleled botanical escape in Dhulikhel</p>\r\n				<div class=\"about-btn1 mar-top-30\">\r\n					<a class=\"btn btn-orange\" href=\"gallery-list\">Learn More</a></div>\r\n			</div>\r\n		</div>\r\n		<div class=\"col-lg-6\">\r\n			<div class=\"about-image\">\r\n				<!--<iframe width=\"560\" height=\"515\" src=\"https://www.youtube-nocookie.com/embed/C-QQe6CyZhE?autoplay=0&controls=0&showinfo=0&modestbranding=1&rel=0&disablekb=1&BlockCopyLink=1\" --><!--title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>--><!--<iframe width=\"100%\" height=\"415\" frameborder=\"0\" src=\"https://www.youtube.com/embed/C-QQe6CyZhE?autoplay=1&loop=1&mute=1&playlist=C-QQe6CyZhE\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" --><!--    allowfullscreen></iframe>--><iframe allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen=\"\" frameborder=\"0\" height=\"415\" src=\"https://www.youtube.com/embed/C-QQe6CyZhE?loop=1&amp;mute=0&amp;playlist=C-QQe6CyZhE\" title=\"YouTube video player\" width=\"100%\"></iframe><!--<iframe width=\"100%\" height=\"500px\" frameborder=\"0\"--><!--    src=\"https://www.youtube.com/embed/uWbq9hveDsg?autoplay=1&loop=1&mute=1&playlist=uWbq9hveDsg\" --><!--    allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" --><!--    allowfullscreen></iframe>--><!--<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/C-QQe6CyZhE?autoplay=0&modestbranding=1&controls=0&mute=1\"\r\n                            frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>--></div>\r\n			<p>\r\n				&nbsp;</p>\r\n		</div>\r\n	</div>\r\n</div>\r\n<hr id=\"system_readmore\" style=\"border-style: dashed; border-color: orange;\" />\r\n<div class=\"section-title\">\r\n	<h2>\r\n		&nbsp;</h2>\r\n	<h2>\r\n		LUXURY RESORT IN <span style=\"color: #022065; font-weight: 400;\"> DHULIKHEL</span></h2>\r\n	<p>\r\n		As the sun sets below the horizon and the city lights begin to sparkle, few experiences<br />\r\n		compare to the breathtaking panorama atop majestic hills</p>\r\n	<br />\r\n	<p>\r\n		From this vantage point, you&#39;ll witness the rare interplay of urban vibrancy dancing<br />\r\n		against the backdrop of untouched jungle</p>\r\n	<br />\r\n	<p>\r\n		Inspired by the Hanging Gardens of Babylon, we invite you to immerse yourself in the enchanting narrative of our<br />\r\n		destination &ndash; a living, breathing garden where every corner tells a tale of<br />\r\n		nature&#39;s magnificence intertwined with architectural wonder</p>\r\n</div>\r\n<div class=\"row display-flex\">\r\n	<div class=\"col-lg-6\">\r\n		<div class=\"room-outer\">\r\n			<img alt=\"image\" class=\"about1-pic\" src=\"template/web/images/about/sunset1.jpg\" /></div>\r\n	</div>\r\n	<div class=\"col-lg-6\">\r\n		<div class=\"room-outer\">\r\n			<img alt=\"image\" src=\"template/web/images/about/sunset2.jpg\" /></div>\r\n	</div>\r\n</div>\r\n<div class=\"bg3\">\r\n	<div class=\"row display-flex\">\r\n		<div class=\"col-lg-6\">\r\n			<div class=\"room-outer\">\r\n				<div class=\"row\">\r\n					<div class=\"col-lg-12 col-md-12\">\r\n						<div class=\"room-slider-one\">\r\n							<div class=\"room-item\">\r\n								<div class=\"room-image\">\r\n									<img alt=\"image\" src=\"template/web/images/about/about2.jpg\" /></div>\r\n							</div>\r\n						</div>\r\n						<div class=\"room-content\">\r\n							<div class=\"room-title\">\r\n								<h4 style=\"font-size: 27px;\">\r\n									ULTIMATE<span style=\"color:#ad659c;\"> RETREAT</span></h4>\r\n							</div>\r\n							<div class=\"room-services mar-bottom-15\">\r\n								<p>\r\n									From the moment you arrive, experience the essence of pure nature &ndash; it is not just about what you see and taste, it is about what you feel</p>\r\n							</div>\r\n							<div class=\"room-btns mar-top-20\">\r\n								<a class=\"btn btn-orange\" href=\"gallery-list\">Learn More</a></div>\r\n						</div>\r\n					</div>\r\n				</div>\r\n			</div>\r\n		</div>\r\n		<div class=\"col-lg-6\">\r\n			<div class=\"room-outer\">\r\n				<div class=\"row\">\r\n					<div class=\"col-lg-12 col-md-12\">\r\n						<div class=\"room-slider-one\">\r\n							<div class=\"room-item\">\r\n								<div class=\"room-image\">\r\n									<img alt=\"image\" src=\"template/web/images/about/about5.jpg\" /></div>\r\n							</div>\r\n						</div>\r\n						<div class=\"room-content\">\r\n							<div class=\"room-title\">\r\n								<h4 style=\"font-size: 27px;\">\r\n									ELECTRIC<span style=\"color: #ae4603;\"> EVENINGS</span></h4>\r\n							</div>\r\n							<div class=\"room-services mar-bottom-15\">\r\n								<p>\r\n									Sip on signature cocktails, crafted by our master mixologists and let the night unfold in an atmosphere of refined sophistication and relaxation</p>\r\n							</div>\r\n							<div class=\"room-btns mar-top-20\">\r\n								<a class=\"btn btn-orange\" href=\"gallery-list\">Learn More</a></div>\r\n						</div>\r\n					</div>\r\n				</div>\r\n			</div>\r\n		</div>\r\n	</div>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', 0, '', 1, '', '', '', 0, '2023-08-30 16:59:19', '2023-09-20 17:41:50', 1, 1, 0x613a313a7b693a303b733a32323a2241417445692d61626f75742d62616e6e65722e6a7067223b7d, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_conbined_news`
--

CREATE TABLE `tbl_conbined_news` (
  `id` int(11) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL,
  `brief` tinytext NOT NULL,
  `content` text NOT NULL,
  `image` mediumtext NOT NULL,
  `home_image` text NOT NULL,
  `gallery` text NOT NULL,
  `status` int(11) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `added_date` date NOT NULL,
  `meta_keywords` varchar(250) NOT NULL,
  `display` varchar(250) NOT NULL,
  `event_stdate` date NOT NULL,
  `event_endate` date NOT NULL,
  `type` int(11) NOT NULL,
  `author` varchar(200) NOT NULL,
  `banner_image` varchar(300) NOT NULL,
  `source` mediumtext NOT NULL,
  `meta_description` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_configs`
--

CREATE TABLE `tbl_configs` (
  `id` int(11) NOT NULL,
  `sitetitle` varchar(200) NOT NULL,
  `icon_upload` varchar(200) NOT NULL,
  `logo_upload` varchar(200) NOT NULL,
  `default_banner_upload` varchar(255) CHARACTER SET utf16 NOT NULL,
  `logo_upload_dark` varchar(200) NOT NULL,
  `fb_upload` varchar(255) NOT NULL,
  `twitter_upload` varchar(255) NOT NULL,
  `sitename` varchar(50) NOT NULL,
  `location_type` tinyint(1) NOT NULL DEFAULT 1,
  `location_map` mediumtext NOT NULL,
  `location_image` varchar(250) NOT NULL,
  `fiscal_address` tinytext NOT NULL,
  `mail_address` tinytext NOT NULL,
  `contact_info` tinytext NOT NULL,
  `address` varchar(100) NOT NULL,
  `email_address` tinytext NOT NULL,
  `breif` text NOT NULL,
  `copyright` varchar(200) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `site_keywords` tinytext NOT NULL,
  `site_description` tinytext NOT NULL,
  `fb_messenger` text NOT NULL,
  `google_anlytics` text NOT NULL,
  `linksrc` varchar(255) NOT NULL,
  `robot_txt` text NOT NULL,
  `book_type` tinyint(4) NOT NULL DEFAULT 1,
  `hotel_page` varchar(200) NOT NULL,
  `hotel_code` tinytext NOT NULL,
  `template` varchar(100) NOT NULL,
  `admin_template` varchar(100) NOT NULL,
  `headers` text DEFAULT NULL,
  `footer` text DEFAULT NULL,
  `search_box` text DEFAULT NULL,
  `search_result` text DEFAULT NULL,
  `action` tinyint(1) NOT NULL DEFAULT 0,
  `contact_info2` varchar(100) NOT NULL,
  `pixel_code` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_configs`
--

INSERT INTO `tbl_configs` (`id`, `sitetitle`, `icon_upload`, `logo_upload`, `default_banner_upload`, `logo_upload_dark`, `fb_upload`, `twitter_upload`, `sitename`, `location_type`, `location_map`, `location_image`, `fiscal_address`, `mail_address`, `contact_info`, `address`, `email_address`, `breif`, `copyright`, `meta_title`, `site_keywords`, `site_description`, `fb_messenger`, `google_anlytics`, `linksrc`, `robot_txt`, `book_type`, `hotel_page`, `hotel_code`, `template`, `admin_template`, `headers`, `footer`, `search_box`, `search_result`, `action`, `contact_info2`, `pixel_code`) VALUES
(1, 'The Sky Garden Experience – Where Tranquility Meets Elegance', 'AfUKN-logocolour.png', 'iuGOh-logowhite.png', 'MpfIn-about-banner.jpg', '85RMY-logocolour.png', 'QyGYR-logocolour.png', 'HODGX-logocolour.png', 'The Sky Garden Experience ', 1, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3535.5161940419507!2d85.54253667531442!3d27.608525329843395!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39eb09b1b43c3f4d%3A0x9f6b51437bc2ab56!2sSky%20Garden%20Resort!5e0!3m2!1sen!2snp!4v1692951187810!5m2!1sen!2snp', 'aHQyy-map.jpg', 'Chaukot Hill, Dhulikhel, Kavre, Nepal', '+977 11665641,+977 11665642,+977 11665643', '9823488155', 'Chaukot Hill, Dhulikhel, Kavre, Nepal', 'info@skygardenresort.com', '', '© Copyright {year}. All Rights Reserved.  Sky Garden Resort.', 'The Sky Garden Experience – Where Tranquility Meets Elegance', 'The Sky Garden Experience – Where Tranquility Meets Elegance', 'The Sky Garden Experience – Where Tranquility Meets Elegance', '', '', '#', 'User-agent: *\r\nDisallow: /cgi-bin/', 2, 'result.php', 'uynSCw', 'web', 'blue', '', '', 'Develop By Amit prajapati', 'Develop By Amit prajapati', 0, 'https://goo.gl/maps/goJSGwcCScBY8BKb6', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_countries`
--

CREATE TABLE `tbl_countries` (
  `id` int(3) NOT NULL,
  `country_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_countries`
--

INSERT INTO `tbl_countries` (`id`, `country_name`, `status`) VALUES
(1, 'United States', 1),
(2, 'Canada', 1),
(3, 'Mexico', 1),
(4, 'Afghanistan', 1),
(5, 'Albania', 1),
(6, 'Algeria', 1),
(7, 'Andorra', 1),
(8, 'Angola', 1),
(9, 'Anguilla', 1),
(10, 'Antarctica', 1),
(11, 'Antigua and Barbuda', 1),
(12, 'Argentina', 1),
(13, 'Armenia', 1),
(14, 'Aruba', 1),
(15, 'Ascension Island', 1),
(16, 'Australia', 1),
(17, 'Austria', 1),
(18, 'Azerbaijan', 1),
(19, 'Bahamas', 1),
(20, 'Bahrain', 1),
(21, 'Bangladesh', 1),
(22, 'Barbados', 1),
(23, 'Belarus', 1),
(24, 'Belgium', 1),
(25, 'Belize', 1),
(26, 'Benin', 1),
(27, 'Bermuda', 1),
(28, 'Bhutan', 1),
(29, 'Bolivia', 1),
(30, 'Bophuthatswana', 1),
(31, 'Bosnia-Herzegovina', 1),
(32, 'Botswana', 1),
(33, 'Bouvet Island', 1),
(34, 'Brazil', 1),
(35, 'British Indian Ocean', 1),
(36, 'British Virgin Islands', 1),
(37, 'Brunei Darussalam', 1),
(38, 'Bulgaria', 1),
(39, 'Burkina Faso', 1),
(40, 'Burundi', 1),
(41, 'Cambodia', 1),
(42, 'Cameroon', 1),
(44, 'Cape Verde Island', 1),
(45, 'Cayman Islands', 1),
(46, 'Central Africa', 1),
(47, 'Chad', 1),
(48, 'Channel Islands', 1),
(49, 'Chile', 1),
(50, 'China, Peoples Republic', 1),
(51, 'Christmas Island', 1),
(52, 'Cocos (Keeling) Islands', 1),
(53, 'Colombia', 1),
(54, 'Comoros Islands', 1),
(55, 'Congo', 1),
(56, 'Cook Islands', 1),
(57, 'Costa Rica', 1),
(58, 'Croatia', 1),
(59, 'Cuba', 1),
(60, 'Cyprus', 1),
(61, 'Czech Republic', 1),
(62, 'Denmark', 1),
(63, 'Djibouti', 1),
(64, 'Dominica', 1),
(65, 'Dominican Republic', 1),
(66, 'Easter Island', 1),
(67, 'Ecuador', 1),
(68, 'Egypt', 1),
(69, 'El Salvador', 1),
(70, 'England', 1),
(71, 'Equatorial Guinea', 1),
(72, 'Estonia', 1),
(73, 'Ethiopia', 1),
(74, 'Falkland Islands', 1),
(75, 'Faeroe Islands', 1),
(76, 'Fiji', 1),
(77, 'Finland', 1),
(78, 'France', 1),
(79, 'French Guyana', 1),
(80, 'French Polynesia', 1),
(81, 'Gabon', 1),
(82, 'Gambia', 1),
(83, 'Georgia Republic', 1),
(84, 'Germany', 1),
(85, 'Gibraltar', 1),
(86, 'Greece', 1),
(87, 'Greenland', 1),
(88, 'Grenada', 1),
(89, 'Guadeloupe (French)', 1),
(90, 'Guatemala', 1),
(91, 'Guernsey Island', 1),
(92, 'Guinea Bissau', 1),
(93, 'Guinea', 1),
(94, 'Guyana', 1),
(95, 'Haiti', 1),
(96, 'Heard and McDonald Isls', 1),
(97, 'Honduras', 1),
(98, 'Hong Kong', 1),
(99, 'Hungary', 1),
(100, 'Iceland', 1),
(101, 'India', 1),
(102, 'Iran', 1),
(103, 'Iraq', 1),
(104, 'Ireland', 1),
(105, 'Isle of Man', 1),
(106, 'Israel', 1),
(107, 'Italy', 1),
(108, 'Ivory Coast', 1),
(109, 'Jamaica', 1),
(110, 'Japan', 1),
(111, 'Jersey Island', 1),
(112, 'Jordan', 1),
(113, 'Kazakhstan', 1),
(114, 'Kenya', 1),
(115, 'Kiribati', 1),
(116, 'Kuwait', 1),
(117, 'Laos', 1),
(118, 'Latvia', 1),
(119, 'Lebanon', 1),
(120, 'Lesotho', 1),
(121, 'Liberia', 1),
(122, 'Libya', 1),
(123, 'Liechtenstein', 1),
(124, 'Lithuania', 1),
(125, 'Luxembourg', 1),
(126, 'Macao', 1),
(127, 'Macedonia', 1),
(128, 'Madagascar', 1),
(129, 'Malawi', 1),
(130, 'Malaysia', 1),
(131, 'Maldives', 1),
(132, 'Mali', 1),
(133, 'Malta', 1),
(134, 'Martinique (French)', 1),
(135, 'Mauritania', 1),
(136, 'Mauritius', 1),
(137, 'Mayotte', 1),
(139, 'Micronesia', 1),
(140, 'Moldavia', 1),
(141, 'Monaco', 1),
(142, 'Mongolia', 1),
(143, 'Montenegro', 1),
(144, 'Montserrat', 1),
(145, 'Morocco', 1),
(146, 'Mozambique', 1),
(147, 'Myanmar', 1),
(148, 'Namibia', 1),
(149, 'Nauru', 1),
(150, 'Nepal', 1),
(151, 'Netherlands Antilles', 1),
(152, 'Netherlands', 1),
(153, 'New Caledonia (French)', 1),
(154, 'New Zealand', 1),
(155, 'Nicaragua', 1),
(156, 'Niger', 1),
(157, 'Niue', 1),
(158, 'Norfolk Island', 1),
(159, 'North Korea', 1),
(160, 'Northern Ireland', 1),
(161, 'Norway', 1),
(162, 'Oman', 1),
(163, 'Pakistan', 1),
(164, 'Panama', 1),
(165, 'Papua New Guinea', 1),
(166, 'Paraguay', 1),
(167, 'Peru', 1),
(168, 'Philippines', 1),
(169, 'Pitcairn Island', 1),
(170, 'Poland', 1),
(171, 'Polynesia (French)', 1),
(172, 'Portugal', 1),
(173, 'Qatar', 1),
(174, 'Reunion Island', 1),
(175, 'Romania', 1),
(176, 'Russia', 1),
(177, 'Rwanda', 1),
(178, 'S.Georgia Sandwich Isls', 1),
(179, 'Sao Tome, Principe', 1),
(180, 'San Marino', 1),
(181, 'Saudi Arabia', 1),
(182, 'Scotland', 1),
(183, 'Senegal', 1),
(184, 'Serbia', 1),
(185, 'Seychelles', 1),
(186, 'Shetland', 1),
(187, 'Sierra Leone', 1),
(188, 'Singapore', 1),
(189, 'Slovak Republic', 1),
(190, 'Slovenia', 1),
(191, 'Solomon Islands', 1),
(192, 'Somalia', 1),
(193, 'South Africa', 1),
(194, 'South Korea', 1),
(195, 'Spain', 1),
(196, 'Sri Lanka', 1),
(197, 'St. Helena', 1),
(198, 'St. Lucia', 1),
(199, 'St. Pierre Miquelon', 1),
(200, 'St. Martins', 1),
(201, 'St. Kitts Nevis Anguilla', 1),
(202, 'St. Vincent Grenadines', 1),
(203, 'Sudan', 1),
(204, 'Suriname', 1),
(205, 'Svalbard Jan Mayen', 1),
(206, 'Swaziland', 1),
(207, 'Sweden', 1),
(208, 'Switzerland', 1),
(209, 'Syria', 1),
(210, 'Tajikistan', 1),
(211, 'Taiwan', 1),
(212, 'Tahiti', 1),
(213, 'Tanzania', 1),
(214, 'Thailand', 1),
(215, 'Togo', 1),
(216, 'Tokelau', 1),
(217, 'Tonga', 1),
(218, 'Trinidad and Tobago', 1),
(219, 'Tunisia', 1),
(220, 'Turkmenistan', 1),
(221, 'Turks and Caicos Isls', 1),
(222, 'Tuvalu', 1),
(223, 'Uganda', 1),
(224, 'Ukraine', 1),
(225, 'United Arab Emirates', 1),
(226, 'Uruguay', 1),
(227, 'Uzbekistan', 1),
(228, 'Vanuatu', 1),
(229, 'Vatican City State', 1),
(230, 'Venezuela', 1),
(231, 'Vietnam', 1),
(232, 'Virgin Islands (Brit,1)', 1),
(233, 'Wales', 1),
(234, 'Wallis Futuna Islands', 1),
(235, 'Western Sahara', 1),
(236, 'Western Samoa', 1),
(237, 'Yemen', 1),
(238, 'Yugoslavia', 1),
(239, 'Zaire', 1),
(240, 'Zambia', 1),
(241, 'Zimbabwe', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_events`
--

CREATE TABLE `tbl_events` (
  `id` int(11) NOT NULL,
  `slug` varchar(250) NOT NULL,
  `title` varchar(250) NOT NULL,
  `brief` tinytext NOT NULL,
  `content` text NOT NULL,
  `image` mediumtext NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `meta_keywords` varchar(250) NOT NULL,
  `meta_description` varchar(250) NOT NULL,
  `event_stdate` date NOT NULL,
  `event_endate` date NOT NULL,
  `type` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_faq`
--

CREATE TABLE `tbl_faq` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `title_gr` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `content_gr` text NOT NULL,
  `status` int(11) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_features`
--

CREATE TABLE `tbl_features` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `parentId` int(1) NOT NULL DEFAULT 0,
  `image` varchar(255) NOT NULL,
  `brief` text NOT NULL,
  `icon` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_features`
--

INSERT INTO `tbl_features` (`id`, `title`, `parentId`, `image`, `brief`, `icon`, `status`, `sortorder`, `added_date`) VALUES
(134, 'Room Amenities', 0, '', '', '', 1, 1, '2023-08-25 16:02:15'),
(146, 'Room Services', 134, 'IqCkd-household.png', '', '', 1, 4, '2023-09-19 16:44:22'),
(147, 'LED TV', 134, 'OLW7U-television.png', '', '', 1, 5, '2023-09-19 16:44:45'),
(144, 'Jungle View', 134, 'WEQbN-jungle.png', '', '', 1, 2, '2023-09-19 16:43:58'),
(145, 'Mountain View', 134, 'V7LPB-mountain.png', '', '', 1, 3, '2023-09-19 16:44:09'),
(143, 'City View', 134, 'k8Ikv-building.png', '', '', 1, 1, '2023-09-19 16:43:43'),
(148, 'Tea / Coffee Maker', 134, '26eUq-coffee-machine.png', '', '', 1, 6, '2023-09-19 16:45:02'),
(149, 'Free bottled water', 134, '7QAWf-water-bottle.png', '', '', 1, 7, '2023-09-19 16:45:16'),
(150, 'Air Conditioner', 134, 'FV46B-ac.png', '', '', 1, 8, '2023-09-19 17:29:17'),
(151, 'Free Wifi', 134, 'gFFXj-wifi.png', '', '', 1, 9, '2023-09-19 17:29:34'),
(152, 'Work Desk', 134, 'lZ6Qd-workplace.png', '', '', 1, 10, '2023-09-19 17:29:49'),
(153, 'Telephone', 134, 'SgeCp-telephone.png', '', '', 1, 11, '2023-09-19 17:30:03'),
(154, 'Wardrobe', 134, 'vYrYQ-wardrobe.png', '', '', 1, 12, '2023-09-19 17:30:14'),
(155, 'Toiletries', 134, 'kTelE-toiletries.png', '', '', 1, 13, '2023-09-19 17:30:30'),
(156, 'Hair Dryer', 134, 'HUSHj-hairdryer.png', '', '', 1, 14, '2023-09-19 17:30:43'),
(157, 'Private Balcony', 134, 'fEvxw-balcony.png', '', '', 1, 15, '2023-09-19 17:53:00'),
(158, 'Single Sofas', 134, 'yUh6U-sofa.png', '', '', 1, 16, '2023-09-19 17:54:56'),
(159, 'Private Jacuzzi', 134, '3b4KN-jacuzzi.png', '', '', 1, 17, '2023-09-20 12:03:28'),
(160, 'Mini Fridge', 134, '2DpSf-fridge.png', '', '', 1, 18, '2023-09-20 12:03:49'),
(161, 'Hall Amenities', 0, 'rcnU0-orion-hall.jpg', '', '', 1, 2, '2023-09-20 12:22:31'),
(162, 'Projector', 161, '', '', '', 1, 1, '2023-09-20 12:22:44'),
(163, 'Projector Screen', 161, '', '', '', 1, 2, '2023-09-20 12:22:52'),
(164, 'Air Conditioner', 161, '', '', '', 1, 3, '2023-09-20 12:22:58'),
(165, 'High-Speed Internet', 161, '', '', '', 1, 4, '2023-09-20 12:23:05'),
(166, 'White Board', 161, '', '', '', 1, 5, '2023-09-20 12:23:11'),
(167, 'PA System with Wireless Microphone', 161, '', '', '', 1, 6, '2023-09-20 12:23:21'),
(168, 'Flip Chart', 161, '', '', '', 1, 7, '2023-09-20 12:23:27'),
(169, 'Writing Pads with Pencils', 161, '', '', '', 1, 8, '2023-09-20 12:23:36'),
(170, 'Podium', 161, '', '', '', 1, 9, '2023-09-20 12:23:42'),
(171, 'Breakout Room', 161, '', '', '', 1, 10, '2023-09-20 12:32:53'),
(172, 'Lobby', 161, '', '', '', 1, 11, '2023-09-20 12:33:00'),
(173, 'Soft (Pin) Board', 161, '', '', '', 1, 12, '2023-09-20 12:33:37'),
(174, 'Main Stage', 161, '', '', '', 1, 13, '2023-09-20 12:35:48'),
(175, 'Dance Floor', 161, '', '', '', 1, 14, '2023-09-20 12:35:55'),
(176, 'Bar', 161, '', '', '', 1, 15, '2023-09-20 12:36:01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_galleries`
--

CREATE TABLE `tbl_galleries` (
  `id` int(11) NOT NULL,
  `slug` varchar(250) NOT NULL,
  `title` varchar(250) NOT NULL,
  `image` varchar(50) NOT NULL,
  `detail` varchar(200) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `registered` varchar(50) NOT NULL,
  `type` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_galleries`
--

INSERT INTO `tbl_galleries` (`id`, `slug`, `title`, `image`, `detail`, `status`, `sortorder`, `registered`, `type`) VALUES
(17, 'views', 'Views', '9N6ru-menu1.jpg', '', 1, 2, '2023-09-20 12:40:01', 1),
(18, 'rooms', 'Rooms', 'kZD41-menu1.jpg', '', 1, 3, '2023-09-20 12:40:12', 1),
(19, 'hall', 'Hall', 'eSV2k-menu1.jpg', '', 1, 4, '2023-09-20 12:40:21', 1),
(14, 'homepage', 'Homepage', 'brLlo-abb.jpg', '', 1, 1, '2023-08-27 16:34:50', 2),
(20, 'dining', 'Dining', 'FdJKL-menu1.jpg', '', 1, 5, '2023-09-20 12:40:28', 1),
(21, 'terrace', 'Terrace', 'JmboS-menu1.jpg', '', 1, 6, '2023-09-20 12:40:36', 1),
(22, 'cafe', 'Cafe', 'stZOZ-menu1.jpg', '', 1, 7, '2023-09-20 12:40:42', 1),
(23, 'bar', 'Bar', 'wyDS0-menu1.jpg', '', 1, 8, '2023-09-20 12:40:50', 1),
(24, 'others', 'Others', 'v3Qp2-menu1.jpg', '', 1, 9, '2023-09-20 12:40:57', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gallery_images`
--

CREATE TABLE `tbl_gallery_images` (
  `id` int(11) NOT NULL,
  `galleryid` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `image` varchar(50) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `detail` varchar(200) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `registered` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_gallery_images`
--

INSERT INTO `tbl_gallery_images` (`id`, `galleryid`, `title`, `image`, `status`, `detail`, `sortorder`, `registered`) VALUES
(223, 14, 'Sky Garden Resort', 'fMarb-home-1.jpg', 1, '', 5, '2023-09-20 12:59:51'),
(224, 14, 'Sky Garden Resort', 'FlfyR-home-4.jpg', 1, '', 6, '2023-09-20 12:59:51'),
(222, 14, 'Sky Garden Resort', 'psPq3-home-5.jpg', 1, '', 4, '2023-09-20 12:59:51'),
(219, 14, 'Sky Garden Resort', 'WRpLH-home-2.jpg', 1, '', 1, '2023-09-20 12:59:51'),
(220, 14, 'Sky Garden Resort', 'vGOh7-home-3.jpg', 1, '', 2, '2023-09-20 12:59:51'),
(221, 14, 'Sky Garden Resort', 'Dxv89-home-6.jpg', 1, '', 3, '2023-09-20 12:59:51'),
(174, 18, 'Rooms', 'jtqKz-room11.jpg', 1, '', 11, '2023-09-20 12:43:00'),
(173, 18, 'Rooms', 'NY296-room10.jpg', 1, '', 10, '2023-09-20 12:43:00'),
(172, 18, 'Rooms', 'CbPXB-room9.jpg', 1, '', 9, '2023-09-20 12:43:00'),
(156, 17, 'Views', 'saaD2-view1.jpg', 1, '', 1, '2023-09-20 12:42:29'),
(157, 17, 'Views', 'PzixA-view3.jpg', 1, '', 2, '2023-09-20 12:42:29'),
(158, 17, 'Views', '5u2v8-view2.jpg', 1, '', 3, '2023-09-20 12:42:29'),
(159, 17, 'Views', 'rXg5T-view4.jpg', 1, '', 4, '2023-09-20 12:42:29'),
(160, 17, 'Views', 'Un4uO-view6.jpg', 1, '', 5, '2023-09-20 12:42:29'),
(161, 17, 'Views', '7Nm58-view5.jpg', 1, '', 6, '2023-09-20 12:42:29'),
(162, 17, 'Views', 'vJkNK-view7.jpg', 1, '', 7, '2023-09-20 12:42:29'),
(163, 17, 'Views', 'BFFCL-view8.jpg', 1, '', 8, '2023-09-20 12:42:29'),
(164, 18, 'Rooms', 'fdwZd-room1.jpg', 1, '', 1, '2023-09-20 12:43:00'),
(165, 18, 'Rooms', 'hadDY-room2.jpg', 1, '', 2, '2023-09-20 12:43:00'),
(166, 18, 'Rooms', 'tIaoh-room3.jpg', 1, '', 3, '2023-09-20 12:43:00'),
(167, 18, 'Rooms', 'ZdhwD-room6.jpg', 1, '', 4, '2023-09-20 12:43:00'),
(168, 18, 'Rooms', 'PiXVq-room5.jpg', 1, '', 5, '2023-09-20 12:43:00'),
(169, 18, 'Rooms', 'LKgR4-room4.jpg', 1, '', 6, '2023-09-20 12:43:00'),
(170, 18, 'Rooms', 'EV0GA-room7.jpg', 1, '', 7, '2023-09-20 12:43:00'),
(171, 18, 'Rooms', 'GpeVZ-room8.jpg', 1, '', 8, '2023-09-20 12:43:00'),
(175, 18, 'Rooms', 'iITlG-room12.jpg', 1, '', 12, '2023-09-20 12:43:00'),
(176, 18, 'Rooms', 'A31Ru-room13.jpg', 1, '', 13, '2023-09-20 12:43:00'),
(177, 18, 'Rooms', 'Rh6IN-room14.jpg', 1, '', 14, '2023-09-20 12:43:00'),
(178, 18, 'Rooms', 'WiCjy-room15.jpg', 1, '', 15, '2023-09-20 12:43:00'),
(179, 19, 'Hall', 'pkMfj-hall1.jpg', 1, '', 1, '2023-09-20 12:43:28'),
(180, 19, 'Hall', 'R8F1H-hall2.jpg', 1, '', 2, '2023-09-20 12:43:28'),
(181, 19, 'Hall', 'Ex5Og-hall3.jpg', 1, '', 3, '2023-09-20 12:43:28'),
(182, 19, 'Hall', 'J4sWl-hall4.jpg', 1, '', 4, '2023-09-20 12:43:28'),
(183, 19, 'Hall', 'Iu3eM-hall5.jpg', 1, '', 5, '2023-09-20 12:43:28'),
(184, 19, 'Hall', 'PEqXL-hall6.jpg', 1, '', 6, '2023-09-20 12:43:28'),
(185, 19, 'Hall', '7Kwc1-hall7.jpg', 1, '', 7, '2023-09-20 12:43:28'),
(186, 19, 'Hall', 'mhVN5-hall8.jpg', 1, '', 8, '2023-09-20 12:43:28'),
(187, 20, 'Dining', 'gKLwX-dining1.jpg', 1, '', 1, '2023-09-20 12:43:50'),
(188, 20, 'Dining', 'UUXJF-dining2.jpg', 1, '', 2, '2023-09-20 12:43:50'),
(189, 20, 'Dining', 'xcbih-dining3.jpg', 1, '', 3, '2023-09-20 12:43:50'),
(190, 20, 'Dining', 'fSwTc-dining4.jpg', 1, '', 4, '2023-09-20 12:43:50'),
(191, 20, 'Dining', 'tpQS6-dining5.jpg', 1, '', 5, '2023-09-20 12:43:50'),
(192, 20, 'Dining', 'TDLa5-dining6.jpg', 1, '', 6, '2023-09-20 12:43:50'),
(193, 20, 'Dining', 'tCcwW-dining7.jpg', 1, '', 7, '2023-09-20 12:43:50'),
(194, 21, 'Terrace', 'yvcCX-terrece2.jpg', 1, '', 1, '2023-09-20 12:44:15'),
(195, 21, 'Terrace', 'VjT8M-terrece3.jpg', 1, '', 2, '2023-09-20 12:44:15'),
(196, 21, 'Terrace', '34iWq-terrece1.jpg', 1, '', 3, '2023-09-20 12:44:15'),
(197, 21, 'Terrace', 'oSpdo-terrece4.jpg', 1, '', 4, '2023-09-20 12:44:15'),
(198, 21, 'Terrace', 'pJtRC-terrece5.jpg', 1, '', 5, '2023-09-20 12:44:15'),
(199, 21, 'Terrace', 'yjnkd-terrece6.jpg', 1, '', 6, '2023-09-20 12:44:15'),
(200, 21, 'Terrace', 'ANgml-terrece7.jpg', 1, '', 7, '2023-09-20 12:44:15'),
(201, 21, 'Terrace', 'TUCXm-terrece8.jpg', 1, '', 8, '2023-09-20 12:44:15'),
(202, 21, 'Terrace', '2DMvp-terrece9.jpg', 1, '', 9, '2023-09-20 12:44:15'),
(203, 21, 'Terrace', 'KgxIM-terrece10.jpg', 1, '', 10, '2023-09-20 12:44:15'),
(204, 21, 'Terrace', 'yjJc3-terrece11.jpg', 1, '', 11, '2023-09-20 12:44:15'),
(205, 21, 'Terrace', 'U9kNd-terrece12.jpg', 1, '', 12, '2023-09-20 12:44:15'),
(206, 21, 'Terrace', 'zskz2-terrece13.jpg', 1, '', 13, '2023-09-20 12:44:15'),
(207, 21, 'Terrace', 'EygmR-terrece14.jpg', 1, '', 14, '2023-09-20 12:44:15'),
(208, 21, 'Terrace', 'BoVF5-terrece15.jpg', 1, '', 15, '2023-09-20 12:44:15'),
(209, 22, 'Cafe', 'Pjlqd-cafe2.jpg', 1, '', 1, '2023-09-20 12:44:30'),
(210, 22, 'Cafe', 'qeIhv-cafe1.jpg', 1, '', 2, '2023-09-20 12:44:30'),
(211, 22, 'Cafe', 'E1W6p-cafe3.jpg', 1, '', 3, '2023-09-20 12:44:30'),
(212, 23, 'Bar', 'WIxb0-bar1.jpg', 1, '', 1, '2023-09-20 12:44:49'),
(213, 23, 'Bar', 'zymu5-bar2.jpg', 1, '', 2, '2023-09-20 12:44:49'),
(214, 23, 'Bar', 'vYSWZ-bar3.jpg', 1, '', 3, '2023-09-20 12:44:49'),
(215, 23, 'Bar', 'qDRGw-bar4.jpg', 1, '', 4, '2023-09-20 12:44:49'),
(216, 24, 'Others', 'v8FN5-other2.jpg', 1, '', 1, '2023-09-20 12:45:05'),
(217, 24, 'Others', 'JcHpU-other1.jpg', 1, '', 2, '2023-09-20 12:45:05'),
(218, 24, 'Others', 'EwJcM-other3.jpg', 1, '', 3, '2023-09-20 12:45:05'),
(225, 14, 'Sky Garden Resort', '38Rnv-home-7.jpg', 1, '', 7, '2023-09-20 12:59:51'),
(226, 14, 'Sky Garden Resort', 'yX7V9-home-8.jpg', 1, '', 8, '2023-09-20 12:59:51'),
(227, 14, 'Sky Garden Resort', 'Svat6-home-9.jpg', 1, '', 9, '2023-09-20 12:59:51'),
(228, 14, 'Sky Garden Resort', '5Ad3i-home-10.jpg', 1, '', 10, '2023-09-20 12:59:51'),
(229, 14, 'Sky Garden Resort', 'QySIG-home-11.jpg', 1, '', 11, '2023-09-20 12:59:51'),
(230, 14, 'Sky Garden Resort', 'deSfs-home-12.jpg', 1, '', 12, '2023-09-20 12:59:51'),
(231, 14, 'Sky Garden Resort', 'nnba1-home-13.jpg', 1, '', 13, '2023-09-20 12:59:51'),
(232, 14, 'Sky Garden Resort', 'HxiLq-home-14.jpg', 1, '', 14, '2023-09-20 12:59:51'),
(233, 14, 'Sky Garden Resort', '2GvSd-home-15.jpg', 1, '', 15, '2023-09-20 12:59:51'),
(234, 14, 'Sky Garden Resort', 'nh29S-home-16.jpg', 1, '', 16, '2023-09-20 12:59:51'),
(235, 14, 'Sky Garden Resort', 'gHSoB-home-17.jpg', 1, '', 17, '2023-09-20 12:59:51'),
(236, 14, 'Sky Garden Resort', 'JEMVy-home-18.jpg', 1, '', 18, '2023-09-20 12:59:51');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_group_type`
--

CREATE TABLE `tbl_group_type` (
  `id` int(11) NOT NULL,
  `group_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `group_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `authority` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=>Frontend,2=>Personality,3=>Backend,4=>Both',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_group_type`
--

INSERT INTO `tbl_group_type` (`id`, `group_name`, `group_type`, `authority`, `description`, `status`) VALUES
(1, 'Administrator', '1', 1, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_logs`
--

CREATE TABLE `tbl_logs` (
  `id` int(11) NOT NULL,
  `action` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `registered` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `userid` int(11) NOT NULL,
  `user_action` int(11) NOT NULL,
  `ip_track` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_logs`
--

INSERT INTO `tbl_logs` (`id`, `action`, `registered`, `userid`, `user_action`, `ip_track`) VALUES
(1, 'Log has been cleared.', '2023-08-25 15:01:34', 1, 6, '::1'),
(2, 'Package [Rooms & Suites]Data has added successfully.', '2023-08-25 15:05:20', 1, 3, '::1'),
(3, 'Changes on Article \'About Us\' has been saved successfully.', '2023-08-25 15:07:22', 1, 4, '::1'),
(4, 'Sub Package \'Deluxe Room\' has added successfully.', '2023-08-25 15:08:01', 1, 3, '::1'),
(5, 'Sub Package Image [Deluxe Room]Data has added successfully.', '2023-08-25 15:08:50', 1, 3, '::1'),
(6, 'Sub Package Image [Deluxe Room]Data has added successfully.', '2023-08-25 15:08:50', 1, 3, '::1'),
(7, 'Sub Package Image [Deluxe Room]Data has added successfully.', '2023-08-25 15:08:50', 1, 3, '::1'),
(8, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2023-08-25 15:14:53', 1, 4, '::1'),
(9, 'Package Rooms & Suites Edit Successfully', '2023-08-25 15:18:08', 1, 4, '::1'),
(10, 'Features [Room Amenities]Data has added successfully.', '2023-08-25 15:25:01', 1, 3, '::1'),
(11, 'Features [Free Wifi]Data has added successfully.', '2023-08-25 15:25:34', 1, 3, '::1'),
(12, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2023-08-25 15:26:09', 1, 4, '::1'),
(13, 'Features [Free Wifi] Edit Successfully', '2023-08-25 15:29:51', 1, 4, '::1'),
(14, 'Features [Free Wifi] Edit Successfully', '2023-08-25 15:30:24', 1, 4, '::1'),
(15, 'Sub Package \'Standard Room\' has added successfully.', '2023-08-25 15:48:02', 1, 3, '::1'),
(16, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2023-08-25 15:51:52', 1, 4, '::1'),
(17, 'Changes on Sub Package \'Standard Room\' has been saved successfully.', '2023-08-25 15:54:47', 1, 4, '::1'),
(18, 'Changes on Sub Package \'Standard Room\' has been saved successfully.', '2023-08-25 15:55:33', 1, 4, '::1'),
(19, 'Changes on Sub Package \'Standard Room\' has been saved successfully.', '2023-08-25 15:56:00', 1, 4, '::1'),
(20, 'Changes on Sub Package \'Standard Room\' has been saved successfully.', '2023-08-25 15:56:30', 1, 4, '::1'),
(21, 'Changes on Sub Package \'Standard Room\' has been saved successfully.', '2023-08-25 15:57:37', 1, 4, '::1'),
(22, 'Changes on Sub Package \'Standard Room\' has been saved successfully.', '2023-08-25 15:57:47', 1, 4, '::1'),
(23, 'Features  [Room Amenities]Data has deleted successfully.', '2023-08-25 16:02:08', 1, 6, '::1'),
(24, 'Features [Room Amenities]Data has added successfully.', '2023-08-25 16:02:15', 1, 3, '::1'),
(25, 'Features [Free Wifi]Data has added successfully.', '2023-08-25 16:02:44', 1, 3, '::1'),
(26, 'Features  [Free Wifi]Data has deleted successfully.', '2023-08-25 16:02:51', 1, 6, '::1'),
(27, 'Features [Free Wifi]Data has added successfully.', '2023-08-25 16:02:59', 1, 3, '::1'),
(28, 'Changes on Sub Package \'Standard Room\' has been saved successfully.', '2023-08-25 16:03:08', 1, 4, '::1'),
(29, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2023-08-25 16:03:16', 1, 4, '::1'),
(30, 'Changes on Sub Package \'Standard Room\' has been saved successfully.', '2023-08-25 16:14:35', 1, 4, '::1'),
(31, 'Package [Other Services]Data has added successfully.', '2023-08-25 16:50:21', 1, 3, '::1'),
(32, 'Sub Package \'Meeting & Events\' has added successfully.', '2023-08-25 16:52:45', 1, 3, '::1'),
(33, 'Menu [Mice] Edit Successfully', '2023-08-25 16:56:05', 1, 4, '::1'),
(34, 'Sub Package Image [Hall]Data has added successfully.', '2023-08-25 16:58:08', 1, 3, '::1'),
(35, 'Sub Package Image [Hall]Data has added successfully.', '2023-08-25 16:58:08', 1, 3, '::1'),
(36, 'Sub Package Image [Hall]Data has added successfully.', '2023-08-25 16:58:08', 1, 3, '::1'),
(37, 'Sub Package Image [Hall]Data has added successfully.', '2023-08-25 16:58:08', 1, 3, '::1'),
(38, 'Changes on Sub Package \'Meeting & Events\' has been saved successfully.', '2023-08-25 16:58:49', 1, 4, '::1'),
(39, 'Changes on Sub Package \'Meeting & Events\' has been saved successfully.', '2023-08-25 17:04:39', 1, 4, '::1'),
(40, 'Sub Package \'The Restaurant\' has added successfully.', '2023-08-25 17:06:40', 1, 3, '::1'),
(41, 'Menu [Restaurants  Shops] Edit Successfully', '2023-08-25 17:06:56', 1, 4, '::1'),
(42, 'Sub Package Image [The Restaurant]Data has added successfully.', '2023-08-25 17:07:48', 1, 3, '::1'),
(43, 'Sub Package Image [The Restaurant]Data has added successfully.', '2023-08-25 17:07:48', 1, 3, '::1'),
(44, 'Sub Package Image [The Restaurant]Data has added successfully.', '2023-08-25 17:07:48', 1, 3, '::1'),
(45, 'Sub Package Image [The Restaurant]Data has added successfully.', '2023-08-25 17:07:48', 1, 3, '::1'),
(46, 'Changes on Sub Package \'The Restaurant\' has been saved successfully.', '2023-08-25 17:08:38', 1, 4, '::1'),
(47, 'Login: Gautam Hotel   logged in.', '2023-08-27 14:02:57', 1, 1, '::1'),
(48, 'Login: Gautam Hotel   logged in.', '2023-08-27 14:08:22', 1, 1, '::1'),
(49, 'SubPackage Gallery Image [Deluxe Room]Data has deleted successfully.', '2023-08-27 14:10:31', 1, 6, '::1'),
(50, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-08-27 14:10:34', 1, 6, '::1'),
(51, 'SubPackage Gallery Image [Deluxe Room]Data has deleted successfully.', '2023-08-27 14:10:34', 1, 6, '::1'),
(52, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-08-27 14:10:36', 1, 6, '::1'),
(53, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-08-27 14:10:36', 1, 6, '::1'),
(54, 'SubPackage Gallery Image [Deluxe Room]Data has deleted successfully.', '2023-08-27 14:10:36', 1, 6, '::1'),
(55, 'Sub Package Image [Deluxe Room]Data has added successfully.', '2023-08-27 14:27:15', 1, 3, '::1'),
(56, 'Sub Package Image [Deluxe Room]Data has added successfully.', '2023-08-27 14:27:15', 1, 3, '::1'),
(57, 'Sub Package Image [Deluxe Room]Data has added successfully.', '2023-08-27 14:27:15', 1, 3, '::1'),
(58, 'Changes on Sub Package \'Standard Room\' has been saved successfully.', '2023-08-27 14:27:57', 1, 4, '::1'),
(59, 'Changes on Sub Package \'Standard Room\' has been saved successfully.', '2023-08-27 14:38:00', 1, 4, '::1'),
(60, 'Package Rooms & Suites Edit Successfully', '2023-08-27 14:38:59', 1, 4, '::1'),
(61, 'Menu [Rooms & Suites] Edit Successfully', '2023-08-27 14:39:53', 1, 4, '::1'),
(62, 'Changes on Config \'Hotel Ambassador by ACE Hotels | Deluxe Hotel at Kathmandu\' has been saved succes', '2023-08-27 14:51:13', 1, 4, '::1'),
(63, 'Changes on Config \'Hotel Ambassador by ACE Hotels | Deluxe Hotel at Kathmandu\' has been saved succes', '2023-08-27 14:52:00', 1, 4, '::1'),
(64, 'Changes on Article \'About Us\' has been saved successfully.', '2023-08-27 15:02:33', 1, 4, '::1'),
(65, 'Changes on Article \'About Us\' has been saved successfully.', '2023-08-27 15:02:43', 1, 4, '::1'),
(66, 'Services [Pick Up & Drop] Edit Successfully', '2023-08-27 15:22:18', 1, 4, '::1'),
(67, 'Services [Pick Up & Drop] Edit Successfully', '2023-08-27 15:22:59', 1, 4, '::1'),
(68, 'Changes on Sub Package \'Standard Room\' has been saved successfully.', '2023-08-27 15:55:25', 1, 4, '::1'),
(69, 'Changes on Sub Package \'Standard Room\' has been saved successfully.', '2023-08-27 16:00:12', 1, 4, '::1'),
(70, 'Changes on Sub Package \'Standard Room\' has been saved successfully.', '2023-08-27 16:11:26', 1, 4, '::1'),
(71, 'Testimonial [Arthur Sacramento]Data has added successfully.', '2023-08-27 16:27:05', 1, 3, '::1'),
(72, 'Testimonial [Arthur Sacramento] Edit Successfully', '2023-08-27 16:33:45', 1, 4, '::1'),
(73, 'Gallery [Homepage]Data has added successfully.', '2023-08-27 16:34:50', 1, 3, '::1'),
(74, 'Sub Gallery Image [Homepage]Data has added successfully.', '2023-08-27 16:35:28', 1, 3, '::1'),
(75, 'Sub Gallery Image [Homepage]Data has added successfully.', '2023-08-27 16:35:28', 1, 3, '::1'),
(76, 'Sub Gallery Image [Homepage]Data has added successfully.', '2023-08-27 16:35:28', 1, 3, '::1'),
(77, 'Sub Gallery Image [Homepage]Data has added successfully.', '2023-08-27 16:35:28', 1, 3, '::1'),
(78, 'Sub Gallery Image [Homepage]Data has added successfully.', '2023-08-27 16:35:28', 1, 3, '::1'),
(79, 'Sub Gallery Image [Homepage]Data has added successfully.', '2023-08-27 16:35:28', 1, 3, '::1'),
(80, 'Sub Gallery Image [Homepage]Data has added successfully.', '2023-08-27 16:35:28', 1, 3, '::1'),
(81, 'Sub Gallery Image [Homepage]Data has added successfully.', '2023-08-27 16:35:28', 1, 3, '::1'),
(82, 'Sub Gallery Image [Homepage]Data has added successfully.', '2023-08-27 16:35:28', 1, 3, '::1'),
(83, 'Changes on Config \'Hotel Ambassador by ACE Hotels | Deluxe Hotel at Kathmandu\' has been saved succes', '2023-08-27 16:57:59', 1, 4, '::1'),
(84, 'Changes on Config \'Hotel Ambassador by ACE Hotels | Deluxe Hotel at Kathmandu\' has been saved succes', '2023-08-27 16:58:17', 1, 4, '::1'),
(85, 'Login: Gautam Hotel   logged in.', '2023-08-27 17:16:17', 1, 1, '::1'),
(86, 'Changes on Config \'Hotel Ambassador by ACE Hotels | Deluxe Hotel at Kathmandu\' has been saved succes', '2023-08-27 17:23:15', 1, 4, '::1'),
(87, 'Changes on Config \'Hotel Ambassador by ACE Hotels | Deluxe Hotel at Kathmandu\' has been saved succes', '2023-08-27 17:24:09', 1, 4, '::1'),
(88, 'Changes on Config \'Hotel Ambassador by ACE Hotels | Deluxe Hotel at Kathmandu\' has been saved succes', '2023-08-27 17:24:50', 1, 4, '::1'),
(89, 'Changes on Config \'Hotel Ambassador by ACE Hotels | Deluxe Hotel at Kathmandu\' has been saved succes', '2023-08-27 17:25:18', 1, 4, '::1'),
(90, 'Article \'Job Opening\' has added successfully.', '2023-08-27 17:32:52', 1, 3, '::1'),
(91, 'Menu [Career] Edit Successfully', '2023-08-27 17:33:04', 1, 4, '::1'),
(92, 'Changes on Article \'Job Opening\' has been saved successfully.', '2023-08-27 17:34:33', 1, 4, '::1'),
(93, 'Login: Gautam Hotel   logged in.', '2023-08-28 11:01:05', 1, 1, '::1'),
(94, 'User [Gautam Hotel  ] Edit Successfully', '2023-08-28 11:03:57', 1, 4, '::1'),
(95, 'FAQ \'Test\' has added successfully.', '2023-08-28 11:08:13', 1, 3, '::1'),
(96, 'FAQ [Test]Data has deleted successfully.', '2023-08-28 11:08:29', 1, 6, '::1'),
(97, 'FAQ \'How can I confirm that you have received my reservation?\' has added successfully.', '2023-08-28 11:17:00', 1, 3, '::1'),
(98, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2023-08-28 11:54:18', 1, 4, '::1'),
(99, 'Changes on Sub Package \'The Restaurant\' has been saved successfully.', '2023-08-28 12:01:45', 1, 4, '::1'),
(100, 'Changes on Sub Package \'Meeting & Events\' has been saved successfully.', '2023-08-28 12:01:59', 1, 4, '::1'),
(101, 'Sub Package \'Special offer\' has added successfully.', '2023-08-28 12:02:13', 1, 3, '::1'),
(102, 'SubPackage Gallery Image [The Restaurant]Data has deleted successfully.', '2023-08-28 12:46:57', 1, 6, '::1'),
(103, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-08-28 12:46:59', 1, 6, '::1'),
(104, 'SubPackage Gallery Image [The Restaurant]Data has deleted successfully.', '2023-08-28 12:46:59', 1, 6, '::1'),
(105, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-08-28 12:47:01', 1, 6, '::1'),
(106, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-08-28 12:47:01', 1, 6, '::1'),
(107, 'SubPackage Gallery Image [The Restaurant]Data has deleted successfully.', '2023-08-28 12:47:01', 1, 6, '::1'),
(108, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-08-28 12:47:04', 1, 6, '::1'),
(109, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-08-28 12:47:04', 1, 6, '::1'),
(110, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-08-28 12:47:04', 1, 6, '::1'),
(111, 'SubPackage Gallery Image [The Restaurant]Data has deleted successfully.', '2023-08-28 12:47:04', 1, 6, '::1'),
(112, 'Sub Package Image [The Restaurant]Data has added successfully.', '2023-08-28 12:47:53', 1, 3, '::1'),
(113, 'Sub Package Image [The Restaurant]Data has added successfully.', '2023-08-28 12:47:53', 1, 3, '::1'),
(114, 'Sub Package Image [The Restaurant]Data has added successfully.', '2023-08-28 12:47:53', 1, 3, '::1'),
(115, 'Sub Package Image [The Restaurant]Data has added successfully.', '2023-08-28 12:47:53', 1, 3, '::1'),
(116, 'SubPackage Gallery Image [Hall]Data has deleted successfully.', '2023-08-28 12:48:00', 1, 6, '::1'),
(117, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-08-28 12:48:02', 1, 6, '::1'),
(118, 'SubPackage Gallery Image [Hall]Data has deleted successfully.', '2023-08-28 12:48:02', 1, 6, '::1'),
(119, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-08-28 12:48:04', 1, 6, '::1'),
(120, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-08-28 12:48:04', 1, 6, '::1'),
(121, 'SubPackage Gallery Image [Hall]Data has deleted successfully.', '2023-08-28 12:48:04', 1, 6, '::1'),
(122, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-08-28 12:48:07', 1, 6, '::1'),
(123, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-08-28 12:48:07', 1, 6, '::1'),
(124, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-08-28 12:48:07', 1, 6, '::1'),
(125, 'SubPackage Gallery Image [Hall]Data has deleted successfully.', '2023-08-28 12:48:07', 1, 6, '::1'),
(126, 'Sub Package Image [Meeting & Events]Data has added successfully.', '2023-08-28 12:49:22', 1, 3, '::1'),
(127, 'Sub Package Image [Meeting & Events]Data has added successfully.', '2023-08-28 12:49:22', 1, 3, '::1'),
(128, 'Sub Package Image [Meeting & Events]Data has added successfully.', '2023-08-28 12:49:22', 1, 3, '::1'),
(129, 'Sub Package Image [Meeting & Events]Data has added successfully.', '2023-08-28 12:49:22', 1, 3, '::1'),
(130, 'Sub Package Image [Standard Room]Data has added successfully.', '2023-08-28 12:50:14', 1, 3, '::1'),
(131, 'Sub Package Image [Standard Room]Data has added successfully.', '2023-08-28 12:50:14', 1, 3, '::1'),
(132, 'Sub Package Image [Standard Room]Data has added successfully.', '2023-08-28 12:50:14', 1, 3, '::1'),
(133, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2023-08-28 12:50:47', 1, 4, '::1'),
(134, 'Features [1-2 Persons] Edit Successfully', '2023-08-28 12:52:50', 1, 4, '::1'),
(135, 'Features [Free Wifi]Data has added successfully.', '2023-08-28 12:53:06', 1, 3, '::1'),
(136, 'Features [200 sqft room]Data has added successfully.', '2023-08-28 12:53:20', 1, 3, '::1'),
(137, 'Features [Breakfast]Data has added successfully.', '2023-08-28 12:53:29', 1, 3, '::1'),
(138, 'Features [Towels]Data has added successfully.', '2023-08-28 12:53:46', 1, 3, '::1'),
(139, 'Features  [Breakfast]Data has deleted successfully.', '2023-08-28 12:53:49', 1, 6, '::1'),
(140, 'Features  []Data has deleted successfully.', '2023-08-28 12:53:49', 1, 6, '::1'),
(141, 'Features [Breakfast]Data has added successfully.', '2023-08-28 12:54:02', 1, 3, '::1'),
(142, 'Features [Swimming Pool]Data has added successfully.', '2023-08-28 12:54:13', 1, 3, '::1'),
(143, 'Changes on Sub Package \'Standard Room\' has been saved successfully.', '2023-08-28 12:54:34', 1, 4, '::1'),
(144, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2023-08-28 12:54:47', 1, 4, '::1'),
(145, 'Changes on Sub Package \'Standard Room\' has been saved successfully.', '2023-08-28 12:55:34', 1, 4, '::1'),
(146, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2023-08-28 12:55:39', 1, 4, '::1'),
(147, 'Menu [Rooms & Suites] Edit Successfully', '2023-08-28 12:58:28', 1, 4, '::1'),
(148, 'Menu [Restaurant] Edit Successfully', '2023-08-28 12:58:52', 1, 4, '::1'),
(149, 'Menu [Career] CreatedData has added successfully.', '2023-08-28 12:59:15', 1, 3, '::1'),
(150, 'Menu [About Hotel] Edit Successfully', '2023-08-28 12:59:24', 1, 4, '::1'),
(151, 'Menu [Contact] Edit Successfully', '2023-08-28 13:01:21', 1, 4, '::1'),
(152, 'Menu [Contact] Edit Successfully', '2023-08-28 13:01:34', 1, 4, '::1'),
(153, 'Menu [Contact] Edit Successfully', '2023-08-28 13:01:54', 1, 4, '::1'),
(154, 'Changes on Config \'Hotel Ambassador by ACE Hotels | Deluxe Hotel at Kathmandu\' has been saved succes', '2023-08-28 13:02:39', 1, 4, '::1'),
(155, 'Login: Gautam Hotel   logged in.', '2023-08-28 14:33:26', 1, 1, '::1'),
(156, 'User [Gautam Hotel  ] Edit Successfully', '2023-08-28 14:47:33', 1, 4, '::1'),
(157, 'Vacency [test]Data has added successfully.', '2023-08-28 14:49:22', 1, 3, '::1'),
(158, 'Vacency [asdasd]Data has added successfully.', '2023-08-28 15:05:09', 1, 3, '::1'),
(159, 'Vacency [asd]Data has added successfully.', '2023-08-28 15:07:15', 1, 3, '::1'),
(160, 'Vacency  [asd]Data has deleted successfully.', '2023-08-28 15:07:24', 1, 6, '::1'),
(161, 'Vacency  []Data has deleted successfully.', '2023-08-28 15:07:26', 1, 6, '::1'),
(162, 'Vacency  [asdasd]Data has deleted successfully.', '2023-08-28 15:07:26', 1, 6, '::1'),
(163, 'Vacency [test] Edit Successfully', '2023-08-28 15:07:56', 1, 4, '::1'),
(164, 'Vacency  [test]Data has deleted successfully.', '2023-08-28 15:11:17', 1, 6, '::1'),
(165, 'Vacency [Senior Executive Assistant]Data has added successfully.', '2023-08-28 15:12:02', 1, 3, '::1'),
(166, 'Vacency [Senior Executive Assistant] Edit Successfully', '2023-08-28 15:16:15', 1, 4, '::1'),
(167, 'Vacency [Senior Executive Assistant] Edit Successfully', '2023-08-28 15:18:09', 1, 4, '::1'),
(168, 'Vacency [Senior Executive Assistant] Edit Successfully', '2023-08-28 15:19:05', 1, 4, '::1'),
(169, 'Vacency [Senior Executive Assistant] Edit Successfully', '2023-08-28 15:40:34', 1, 4, '::1'),
(170, 'Menu [Career] Edit Successfully', '2023-08-28 15:45:18', 1, 4, '::1'),
(171, 'Articles  [Job Opening]Data has deleted successfully.', '2023-08-28 15:45:22', 1, 6, '::1'),
(172, 'Menu [Career] Edit Successfully', '2023-08-28 15:55:37', 1, 4, '::1'),
(173, 'Services [Pick Up & Drop] Edit Successfully', '2023-08-28 16:03:10', 1, 4, '::1'),
(174, 'Services [Parking Space]Data has added successfully.', '2023-08-28 16:06:26', 1, 3, '::1'),
(175, 'Services [Room Service]Data has added successfully.', '2023-08-28 16:06:41', 1, 3, '::1'),
(176, 'Services [Free Wifi]Data has added successfully.', '2023-08-28 16:06:53', 1, 3, '::1'),
(177, 'Services [Breakfast]Data has added successfully.', '2023-08-28 16:07:06', 1, 3, '::1'),
(178, 'Services [Safety Deposit Box]Data has added successfully.', '2023-08-28 16:09:51', 1, 3, '::1'),
(179, 'Services [Triple Gazed Sound Proof Windows]Data has added successfully.', '2023-08-28 16:10:15', 1, 3, '::1'),
(180, 'Services [EV charging station]Data has added successfully.', '2023-08-28 16:10:40', 1, 3, '::1'),
(181, 'Services [Emergency Torch]Data has added successfully.', '2023-08-28 16:12:14', 1, 3, '::1'),
(182, 'Services [Five on-site dining options]Data has added successfully.', '2023-08-28 16:12:27', 1, 3, '::1'),
(183, 'Services [Meeting Hall]Data has added successfully.', '2023-08-28 16:12:39', 1, 3, '::1'),
(184, 'Services [Iron and Ironing Board]Data has added successfully.', '2023-08-28 16:14:01', 1, 3, '::1'),
(185, 'Services [Upcoming Gym & Spa]Data has added successfully.', '2023-08-28 16:14:20', 1, 3, '::1'),
(186, 'Services [Coffee Maker]Data has added successfully.', '2023-08-28 16:14:47', 1, 3, '::1'),
(187, 'Services [24hrs Front Desk]Data has added successfully.', '2023-08-28 16:14:58', 1, 3, '::1'),
(188, 'Services [Bathtub]Data has added successfully.', '2023-08-28 16:15:08', 1, 3, '::1'),
(189, 'Services [Minibar]Data has added successfully.', '2023-08-28 16:15:19', 1, 3, '::1'),
(190, 'Services [Room Slippers]Data has added successfully.', '2023-08-28 16:15:29', 1, 3, '::1'),
(191, 'Services [Hair Dryer]Data has added successfully.', '2023-08-28 16:15:38', 1, 3, '::1'),
(192, 'Services [LED Tv]Data has added successfully.', '2023-08-28 16:15:47', 1, 3, '::1'),
(193, 'Services [Vanity Mirror]Data has added successfully.', '2023-08-28 16:15:57', 1, 3, '::1'),
(194, 'Login: Gautam Hotel   logged in.', '2023-08-29 11:14:23', 1, 1, '::1'),
(195, 'Sub Package \'Superior Room\' has added successfully.', '2023-08-29 11:16:41', 1, 3, '::1'),
(196, 'Menu [Superior Room] CreatedData has added successfully.', '2023-08-29 11:17:12', 1, 3, '::1'),
(197, 'Sub Package Image [Superior Room]Data has added successfully.', '2023-08-29 11:18:02', 1, 3, '::1'),
(198, 'Sub Package Image [Superior Room]Data has added successfully.', '2023-08-29 11:18:02', 1, 3, '::1'),
(199, 'Changes on Sub Package \'Superior Room\' has been saved successfully.', '2023-08-29 11:18:30', 1, 4, '::1'),
(200, 'Menu  [Semi-deluxe Room]Data has deleted successfully.', '2023-08-29 11:18:59', 1, 6, '::1'),
(201, 'Menu  [Executive Room]Data has deleted successfully.', '2023-08-29 11:19:08', 1, 6, '::1'),
(202, 'Sub Package \'Deluxe with Balcony Room\' has added successfully.', '2023-08-29 11:21:47', 1, 3, '::1'),
(203, 'Sub Package Image [Deluxe with Balcony Room]Data has added successfully.', '2023-08-29 11:22:20', 1, 3, '::1'),
(204, 'Sub Package Image [Deluxe with Balcony Room]Data has added successfully.', '2023-08-29 11:22:20', 1, 3, '::1'),
(205, 'Sub Package Image [Deluxe with Balcony Room]Data has added successfully.', '2023-08-29 11:22:20', 1, 3, '::1'),
(206, 'Sub Package Image [Deluxe with Balcony Room]Data has added successfully.', '2023-08-29 11:22:20', 1, 3, '::1'),
(207, 'Sub Package \'Consulate Suite\' has added successfully.', '2023-08-29 11:24:14', 1, 3, '::1'),
(208, 'Changes on Sub Package \'Consulate Suite\' has been saved successfully.', '2023-08-29 11:24:26', 1, 4, '::1'),
(209, 'Sub Package Image [Consulate Suite]Data has added successfully.', '2023-08-29 11:24:55', 1, 3, '::1'),
(210, 'Sub Package Image [Consulate Suite]Data has added successfully.', '2023-08-29 11:24:55', 1, 3, '::1'),
(211, 'Sub Package \'Ambassador Suite\' has added successfully.', '2023-08-29 11:25:41', 1, 3, '::1'),
(212, 'Sub Package Image [Ambassador Suite]Data has added successfully.', '2023-08-29 11:26:11', 1, 3, '::1'),
(213, 'Sub Package Image [Ambassador Suite]Data has added successfully.', '2023-08-29 11:26:11', 1, 3, '::1'),
(214, 'Menu [Deluxe with Balcony] CreatedData has added successfully.', '2023-08-29 11:27:08', 1, 3, '::1'),
(215, 'Menu [Consulate Suite] CreatedData has added successfully.', '2023-08-29 11:27:29', 1, 3, '::1'),
(216, 'Menu [Ambassador Suite] CreatedData has added successfully.', '2023-08-29 11:27:52', 1, 3, '::1'),
(217, 'Changes on Sub Package \'Superior Room\' has been saved successfully.', '2023-08-29 11:30:12', 1, 4, '::1'),
(218, 'Changes on Sub Package \'Deluxe with Balcony Room\' has been saved successfully.', '2023-08-29 11:30:45', 1, 4, '::1'),
(219, 'Changes on Sub Package \'Consulate Suite\' has been saved successfully.', '2023-08-29 11:31:04', 1, 4, '::1'),
(220, 'Changes on Sub Package \'Ambassador Suite\' has been saved successfully.', '2023-08-29 11:31:17', 1, 4, '::1'),
(221, 'SocialNetworking [Facebook] Edit Successfully', '2023-08-29 11:32:43', 1, 4, '::1'),
(222, 'SocialNetworking  [Linkedin]Data has deleted successfully.', '2023-08-29 11:32:46', 1, 6, '::1'),
(223, 'SocialNetworking  [Linkedin]Data has deleted successfully.', '2023-08-29 11:32:46', 1, 6, '::1'),
(224, 'SocialNetworking  []Data has deleted successfully.', '2023-08-29 11:32:49', 1, 6, '::1'),
(225, 'SocialNetworking  []Data has deleted successfully.', '2023-08-29 11:32:49', 1, 6, '::1'),
(226, 'SocialNetworking  [Trip Advisor]Data has deleted successfully.', '2023-08-29 11:32:49', 1, 6, '::1'),
(227, 'SocialNetworking  [Trip Advisor]Data has deleted successfully.', '2023-08-29 11:32:49', 1, 6, '::1'),
(228, 'SocialNetworking [Instagram] Edit Successfully', '2023-08-29 11:32:57', 1, 4, '::1'),
(229, 'Gallery Image [Interior] Edit Successfully', '2023-08-29 11:33:20', 1, 4, '::1'),
(230, 'Gallery Image [Shops] Edit Successfully', '2023-08-29 11:33:40', 1, 4, '::1'),
(231, 'Gallery Image [Delicious] Edit Successfully', '2023-08-29 11:33:53', 1, 4, '::1'),
(232, 'Gallery Image [Interior] Edit Successfully', '2023-08-29 11:34:05', 1, 4, '::1'),
(233, 'Gallery Image [Cuisine] Edit Successfully', '2023-08-29 11:34:14', 1, 4, '::1'),
(234, 'Gallery Image [Building] Edit Successfully', '2023-08-29 11:34:44', 1, 4, '::1'),
(235, 'Gallery Image [Events] Edit Successfully', '2023-08-29 11:34:53', 1, 4, '::1'),
(236, 'Gallery Image [Food ] Edit Successfully', '2023-08-29 11:35:14', 1, 4, '::1'),
(237, 'Gallery Image [Decorations] Edit Successfully', '2023-08-29 11:35:52', 1, 4, '::1'),
(238, 'Gallery Image [Luxury] Edit Successfully', '2023-08-29 11:36:04', 1, 4, '::1'),
(239, 'Sub Gallery Image [Rooms]Data has added successfully.', '2023-08-29 11:37:29', 1, 3, '::1'),
(240, 'Sub Gallery Image [Rooms]Data has added successfully.', '2023-08-29 11:37:29', 1, 3, '::1'),
(241, 'Sub Gallery Image [Rooms]Data has added successfully.', '2023-08-29 11:37:29', 1, 3, '::1'),
(242, 'Sub Gallery Image [Rooms]Data has added successfully.', '2023-08-29 11:37:29', 1, 3, '::1'),
(243, 'Sub Gallery Image [Rooms]Data has added successfully.', '2023-08-29 11:37:29', 1, 3, '::1'),
(244, 'Sub Gallery Image [Exterior]Data has added successfully.', '2023-08-29 11:38:01', 1, 3, '::1'),
(245, 'Sub Gallery Image [Exterior]Data has added successfully.', '2023-08-29 11:38:01', 1, 3, '::1'),
(246, 'Sub Gallery Image [Exterior]Data has added successfully.', '2023-08-29 11:38:01', 1, 3, '::1'),
(247, 'Sub Gallery Image [Mice]Data has added successfully.', '2023-08-29 11:38:26', 1, 3, '::1'),
(248, 'Sub Gallery Image [Mice]Data has added successfully.', '2023-08-29 11:38:26', 1, 3, '::1'),
(249, 'Sub Gallery Image [Mice]Data has added successfully.', '2023-08-29 11:38:26', 1, 3, '::1'),
(250, 'Sub Gallery Image [Mice]Data has added successfully.', '2023-08-29 11:38:26', 1, 3, '::1'),
(251, 'Sub Gallery Image [Mice]Data has added successfully.', '2023-08-29 11:38:26', 1, 3, '::1'),
(252, 'Gallery [Restaurant/Shops]Data has added successfully.', '2023-08-29 11:38:48', 1, 3, '::1'),
(253, 'Sub Gallery Image [Restaurant/Shops]Data has added successfully.', '2023-08-29 11:39:42', 1, 3, '::1'),
(254, 'Sub Gallery Image [Restaurant/Shops]Data has added successfully.', '2023-08-29 11:39:42', 1, 3, '::1'),
(255, 'Sub Gallery Image [Restaurant/Shops]Data has added successfully.', '2023-08-29 11:39:42', 1, 3, '::1'),
(256, 'Sub Gallery Image [Restaurant/Shops]Data has added successfully.', '2023-08-29 11:39:42', 1, 3, '::1'),
(257, 'Sub Gallery Image [Restaurant/Shops]Data has added successfully.', '2023-08-29 11:39:42', 1, 3, '::1'),
(258, 'Sub Gallery Image [Restaurant/Shops]Data has added successfully.', '2023-08-29 11:39:42', 1, 3, '::1'),
(259, 'Gallery [Interior]Data has added successfully.', '2023-08-29 11:40:32', 1, 3, '::1'),
(260, 'Sub Gallery Image [Interior]Data has added successfully.', '2023-08-29 11:40:49', 1, 3, '::1'),
(261, 'Sub Gallery Image [Interior]Data has added successfully.', '2023-08-29 11:40:49', 1, 3, '::1'),
(262, 'Sub Gallery Image [Interior]Data has added successfully.', '2023-08-29 11:40:49', 1, 3, '::1'),
(263, 'Vacency [Receptionist]Data has added successfully.', '2023-08-29 11:42:43', 1, 3, '::1'),
(264, 'Vacency [Intern]Data has added successfully.', '2023-08-29 11:43:18', 1, 3, '::1'),
(265, 'FAQ \'Up to what age are they considered children?\' has added successfully.', '2023-08-29 11:44:10', 1, 3, '::1'),
(266, 'FAQ \'Do you have any discount code?\' has added successfully.', '2023-08-29 11:44:28', 1, 3, '::1'),
(267, 'FAQ \'test\' has added successfully.', '2023-08-29 11:47:41', 1, 3, '::1'),
(268, 'Testimonial [Alexander]Data has added successfully.', '2023-08-29 11:52:41', 1, 3, '::1'),
(269, 'Testimonial [Annabel Chong]Data has added successfully.', '2023-08-29 11:53:15', 1, 3, '::1'),
(270, 'User [Hotel Ambassador  ] Edit Successfully', '2023-08-29 12:03:20', 1, 4, '::1'),
(271, 'Login: Hotel Ambassador   logged in.', '2023-08-29 12:03:24', 1, 1, '::1'),
(272, 'Testimonial [Annabel Chong] Edit Successfully', '2023-08-29 12:22:33', 1, 4, '::1'),
(273, 'Login: Hotel Ambassador   logged in.', '2023-08-29 14:31:53', 1, 1, '::1'),
(274, 'Changes on Config \'Hotel Ambassador by ACE Hotels | Deluxe Hotel at Kathmandu\' has been saved succes', '2023-08-29 14:50:28', 1, 4, '::1'),
(275, 'User [Hotel Ambassador  ] Edit Successfully', '2023-08-29 15:45:20', 1, 4, '::1'),
(276, 'Popup  [Popup1]Data has deleted successfully.', '2023-08-29 15:45:30', 1, 6, '::1'),
(277, 'Popup \'Popup Test\' has added successfully.', '2023-08-29 15:48:48', 1, 3, '::1'),
(278, 'User [Hotel Ambassador  ] Edit Successfully', '2023-08-29 15:59:42', 1, 4, '::1'),
(279, 'Articles  [About Us]Data has deleted successfully.', '2023-08-29 16:06:30', 1, 6, '::1'),
(280, 'Articles  [About Us]Data has deleted successfully.', '2023-08-29 16:08:25', 1, 6, '::1'),
(281, 'Article \'test\' has added successfully.', '2023-08-29 16:10:02', 1, 3, '::1'),
(282, 'Articles  [test]Data has deleted successfully.', '2023-08-29 16:10:17', 1, 6, '::1'),
(283, 'Article \'Pashupatinath Temple\' has added successfully.', '2023-08-29 16:18:19', 1, 3, '::1'),
(284, 'Login: Hotel Ambassador   logged in.', '2023-08-30 12:02:47', 1, 1, '::1'),
(285, 'Article \'Kathmandu Durbar Square\' has added successfully.', '2023-08-30 12:04:19', 1, 3, '::1'),
(286, 'Changes on Article \'Kathmandu Durbar Square\' has been saved successfully.', '2023-08-30 12:04:59', 1, 4, '::1'),
(287, 'Changes on Article \'Kathmandu Durbar Square\' has been saved successfully.', '2023-08-30 12:06:18', 1, 4, '::1'),
(288, 'Changes on Article \'Kathmandu Durbar Square\' has been saved successfully.', '2023-08-30 12:07:57', 1, 4, '::1'),
(289, 'Article \'Budanilkantha\' has added successfully.', '2023-08-30 12:09:31', 1, 3, '::1'),
(290, 'Article \'Boudhanath Stupa\' has added successfully.', '2023-08-30 12:10:30', 1, 3, '::1'),
(291, 'Changes on Article \'Pashupatinath Temple\' has been saved successfully.', '2023-08-30 12:16:18', 1, 4, '::1'),
(292, 'Changes on Article \'Pashupatinath Temple\' has been saved successfully.', '2023-08-30 12:17:06', 1, 4, '::1'),
(293, 'Changes on Article \'Boudhanath Stupa\' has been saved successfully.', '2023-08-30 12:18:14', 1, 4, '::1'),
(294, 'Changes on Article \'Kathmandu Durbar Square\' has been saved successfully.', '2023-08-30 12:18:23', 1, 4, '::1'),
(295, 'Changes on Article \'Budanilkantha\' has been saved successfully.', '2023-08-30 12:18:30', 1, 4, '::1'),
(296, 'Changes on Article \'Boudhanath Stupa\' has been saved successfully.', '2023-08-30 12:18:36', 1, 4, '::1'),
(297, 'Changes on Article \'Kathmandu Durbar Square\' has been saved successfully.', '2023-08-30 12:18:57', 1, 4, '::1'),
(298, 'Changes on Article \'Budanilkantha\' has been saved successfully.', '2023-08-30 12:19:04', 1, 4, '::1'),
(299, 'Changes on Config \'Hotel Ambassador by ACE Hotels | Deluxe Hotel at Kathmandu\' has been saved succes', '2023-08-30 12:20:27', 1, 4, '::1'),
(300, 'Changes on Config \'Hotel Ambassador by ACE Hotels | Deluxe Hotel at Kathmandu\' has been saved succes', '2023-08-30 12:20:39', 1, 4, '::1'),
(301, 'Login: Hotel Ambassador   logged in.', '2023-08-30 15:12:41', 1, 1, '::1'),
(302, 'User [Hotel Ambassador  ] Edit Successfully', '2023-08-30 15:13:07', 1, 4, '::1'),
(303, 'Login: Hotel Ambassador   logged in.', '2023-08-30 15:13:30', 1, 1, '::1'),
(304, 'Vacency [test]Data has added successfully.', '2023-08-30 15:28:03', 1, 3, '::1'),
(305, 'Vacency [test] Edit Successfully', '2023-08-30 15:28:26', 1, 4, '::1'),
(306, 'Vacency [Intern] Edit Successfully', '2023-08-30 15:29:00', 1, 4, '::1'),
(307, 'Vacency  [test]Data has deleted successfully.', '2023-08-30 15:29:07', 1, 6, '::1'),
(308, 'Package [test]Data has added successfully.', '2023-08-30 15:33:40', 1, 3, '::1'),
(309, 'Sub Package \'abc\' has added successfully.', '2023-08-30 15:33:54', 1, 3, '::1'),
(310, 'Sub Package \'asdasdasd\' has added successfully.', '2023-08-30 15:57:19', 1, 3, '::1'),
(311, 'Changes on Sub Package \'Ambassador Suite\' has been saved successfully.', '2023-08-30 16:02:32', 1, 4, '::1'),
(312, 'Sub Package [asdasdasd]Data has deleted successfully.', '2023-08-30 16:03:13', 1, 6, '::1'),
(313, 'Changes on Sub Package \'Ambassador Suite\' has been saved successfully.', '2023-08-30 16:03:28', 1, 4, '::1'),
(314, 'Changes on Sub Package \'Consulate Suite\' has been saved successfully.', '2023-08-30 16:03:51', 1, 4, '::1'),
(315, 'Changes on Sub Package \'Deluxe with Balcony Room\' has been saved successfully.', '2023-08-30 16:04:01', 1, 4, '::1'),
(316, 'Changes on Sub Package \'Superior Room\' has been saved successfully.', '2023-08-30 16:04:20', 1, 4, '::1'),
(317, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2023-08-30 16:04:33', 1, 4, '::1'),
(318, 'Changes on Sub Package \'Standard Room\' has been saved successfully.', '2023-08-30 16:04:45', 1, 4, '::1'),
(319, 'Changes on Sub Package \'Ambassador Suite\' has been saved successfully.', '2023-08-30 16:05:47', 1, 4, '::1'),
(320, 'Sub Package \'asdasdasdasd\' has added successfully.', '2023-08-30 16:06:06', 1, 3, '::1'),
(321, 'Changes on Sub Package \'asdasdasdasd\' has been saved successfully.', '2023-08-30 16:08:54', 1, 4, '::1'),
(322, 'Changes on Sub Package \'asdasdasdasd\' has been saved successfully.', '2023-08-30 16:09:35', 1, 4, '::1'),
(323, 'Sub Package [asdasdasdasd]Data has deleted successfully.', '2023-08-30 16:11:07', 1, 6, '::1'),
(324, 'Sub Package \'qweqwe\' has added successfully.', '2023-08-30 16:12:06', 1, 3, '::1'),
(325, 'Sub Package [qweqwe]Data has deleted successfully.', '2023-08-30 16:12:17', 1, 6, '::1'),
(326, 'Sub Package \'asdasd\' has added successfully.', '2023-08-30 16:12:33', 1, 3, '::1'),
(327, 'Applicant  [sharan]Data has deleted successfully.', '2023-08-30 16:29:35', 1, 6, '::1'),
(328, 'Applicant  []Data has deleted successfully.', '2023-08-30 16:29:39', 1, 6, '::1'),
(329, 'Applicant  [asdasdasd]Data has deleted successfully.', '2023-08-30 16:29:39', 1, 6, '::1'),
(330, 'Applicant  [Rooms & Suites]Data has deleted successfully.', '2023-08-30 16:29:48', 1, 6, '::1'),
(331, 'Applicant  [Mice]Data has deleted successfully.', '2023-08-30 16:29:54', 1, 6, '::1'),
(332, 'Article \'asdasdsad\' has added successfully.', '2023-08-30 16:31:42', 1, 3, '::1'),
(333, 'Articles  [asdasdsad]Data has deleted successfully.', '2023-08-30 16:31:55', 1, 6, '::1'),
(334, 'Changes on Sub Package \'Ambassador Suite\' has been saved successfully.', '2023-08-30 16:33:28', 1, 4, '::1'),
(335, 'Login: Hotel Ambassador   logged in.', '2023-08-30 16:55:42', 1, 1, '110.44.127.208'),
(336, 'Menu [About Us] Edit Successfully', '2023-08-30 16:56:59', 1, 4, '110.44.127.208'),
(337, 'Menu [About Us] Edit Successfully', '2023-08-30 16:57:05', 1, 4, '110.44.127.208'),
(338, 'Article \'test123\' has added successfully.', '2023-08-30 16:57:45', 1, 3, '110.44.127.208'),
(339, 'Menu [About Us] Edit Successfully', '2023-08-30 16:57:55', 1, 4, '110.44.127.208'),
(340, 'Changes on Article \'test123\' has been saved successfully.', '2023-08-30 16:58:34', 1, 4, '110.44.127.208'),
(341, 'Changes on Article \'About Us\' has been saved successfully.', '2023-08-30 16:58:55', 1, 4, '110.44.127.208'),
(342, 'Articles  [About Us]Data has deleted successfully.', '2023-08-30 16:58:58', 1, 6, '110.44.127.208'),
(343, 'Articles  []Data has deleted successfully.', '2023-08-30 16:58:59', 1, 6, '110.44.127.208'),
(344, 'Articles  [test123]Data has deleted successfully.', '2023-08-30 16:58:59', 1, 6, '110.44.127.208'),
(345, 'Article \'About us\' has added successfully.', '2023-08-30 16:59:19', 1, 3, '110.44.127.208'),
(346, 'Menu [About Us] Edit Successfully', '2023-08-30 16:59:26', 1, 4, '110.44.127.208'),
(347, 'Login: Hotel Ambassador   logged in.', '2023-09-03 08:17:18', 1, 1, '110.34.27.148'),
(348, 'Login: Hotel Ambassador   logged in.', '2023-09-03 09:52:05', 1, 1, '110.34.27.148'),
(349, 'Login: Hotel Ambassador   logged in.', '2023-09-03 13:14:24', 1, 1, '110.34.27.148'),
(350, 'Login: Hotel Ambassador   logged in.', '2023-09-03 15:11:59', 1, 1, '103.10.29.103'),
(351, 'User [Hotel Ambassador  ] Edit Successfully', '2023-09-03 15:13:18', 1, 4, '103.10.29.103'),
(352, 'User [Hotel Ambassador  ] Edit Successfully', '2023-09-03 15:13:24', 1, 4, '103.10.29.103'),
(353, 'User [Hotel Ambassador  ] Edit Successfully', '2023-09-03 15:13:41', 1, 4, '103.10.29.103'),
(354, 'Login: Hotel Ambassador   logged in.', '2023-09-03 15:13:45', 1, 1, '103.10.29.103'),
(355, 'Menu [asdasd] CreatedData has added successfully.', '2023-09-03 15:13:59', 1, 3, '103.10.29.103'),
(356, 'Menu [asdasdtrhy] Edit Successfully', '2023-09-03 15:14:13', 1, 4, '103.10.29.103'),
(357, 'Menu  [asdasdtrhy]Data has deleted successfully.', '2023-09-03 15:14:19', 1, 6, '103.10.29.103'),
(358, 'Article \'art 2\' has added successfully.', '2023-09-03 15:14:35', 1, 3, '103.10.29.103'),
(359, 'Changes on Article \'art 2yjk\' has been saved successfully.', '2023-09-03 15:14:57', 1, 4, '103.10.29.103'),
(360, 'Changes on Article \'art 2yjk\' has been saved successfully.', '2023-09-03 15:15:06', 1, 4, '103.10.29.103'),
(361, 'Changes on Article \'art 2yjk\' has been saved successfully.', '2023-09-03 15:15:12', 1, 4, '103.10.29.103'),
(362, 'Changes on Article \'art 2yjk\' has been saved successfully.', '2023-09-03 15:15:18', 1, 4, '103.10.29.103'),
(363, 'Article \'ydhj\' has added successfully.', '2023-09-03 15:15:31', 1, 3, '103.10.29.103'),
(364, 'Articles  [ydhj]Data has deleted successfully.', '2023-09-03 15:15:34', 1, 6, '103.10.29.103'),
(365, 'Vacency [asd]Data has added successfully.', '2023-09-03 15:16:33', 1, 3, '103.10.29.103'),
(366, 'Popup \'test\' has added successfully.', '2023-09-03 15:28:17', 1, 3, '103.10.29.103'),
(367, 'Vacency [asd.jk,] Edit Successfully', '2023-09-03 15:31:51', 1, 4, '103.10.29.103'),
(368, 'Vacency  [asd.jk,]Data has deleted successfully.', '2023-09-03 15:31:54', 1, 6, '103.10.29.103'),
(369, 'Changes on FAQ \'testykyu\' has been saved successfully.', '2023-09-03 15:32:22', 1, 4, '103.10.29.103'),
(370, 'Changes on Article \'Pashupatinath Temple\' has been saved successfully.', '2023-09-03 15:32:44', 1, 4, '103.10.29.103'),
(371, 'Article \'asd\' has added successfully.', '2023-09-03 15:33:02', 1, 3, '103.10.29.103'),
(372, 'Articles  [asd]Data has deleted successfully.', '2023-09-03 15:33:07', 1, 6, '103.10.29.103'),
(373, 'Sub Package Image [fhgj]Data has added successfully.', '2023-09-03 15:33:22', 1, 3, '103.10.29.103'),
(374, 'Gallery Image [hj] Edit Successfully', '2023-09-03 15:33:26', 1, 4, '103.10.29.103'),
(375, 'SubPackage Gallery Image [hj]Data has deleted successfully.', '2023-09-03 15:33:30', 1, 6, '103.10.29.103'),
(376, 'Sub Package [abc]Data has deleted successfully.', '2023-09-03 15:33:40', 1, 6, '103.10.29.103'),
(377, 'Package testhj Edit Successfully', '2023-09-03 15:33:51', 1, 4, '103.10.29.103'),
(378, 'Package [testhj]Data has deleted successfully.', '2023-09-03 15:33:55', 1, 6, '103.10.29.103'),
(379, 'Services [ads]Data has added successfully.', '2023-09-03 15:35:14', 1, 3, '103.10.29.103'),
(380, 'Services [ads] Edit Successfully', '2023-09-03 15:35:25', 1, 4, '103.10.29.103'),
(381, 'Services [ads] Edit Successfully', '2023-09-03 15:35:30', 1, 4, '103.10.29.103'),
(382, 'Services [ads] Edit Successfully', '2023-09-03 15:35:36', 1, 4, '103.10.29.103'),
(383, 'Services [ads] Edit Successfully', '2023-09-03 15:35:47', 1, 4, '103.10.29.103'),
(384, 'Servicess  [ads]Data has deleted successfully.', '2023-09-03 15:35:59', 1, 6, '103.10.29.103'),
(385, 'Services  [ads]Data has deleted successfully.', '2023-09-03 15:35:59', 1, 6, '103.10.29.103'),
(386, 'Login: Hotel Ambassador   logged in.', '2023-09-03 16:05:09', 1, 1, '103.10.29.103'),
(387, 'Login: Hotel Ambassador   logged in.', '2023-09-03 16:50:09', 1, 1, '103.10.29.103'),
(388, 'Login: Hotel Ambassador   logged in.', '2023-09-06 15:38:45', 1, 1, '27.34.64.16'),
(389, 'Login: Hotel Ambassador   logged in.', '2023-09-11 19:56:30', 1, 1, '::1'),
(390, 'Menu  [Standard Room]Data has deleted successfully.', '2023-09-11 19:56:46', 1, 6, '::1'),
(391, 'Menu  [Superior Room]Data has deleted successfully.', '2023-09-11 19:56:49', 1, 6, '::1'),
(392, 'Menu  [Deluxe Room]Data has deleted successfully.', '2023-09-11 19:56:52', 1, 6, '::1'),
(393, 'Menu  [Deluxe with Balcony]Data has deleted successfully.', '2023-09-11 19:56:54', 1, 6, '::1'),
(394, 'Menu  [Consulate Suite]Data has deleted successfully.', '2023-09-11 19:56:57', 1, 6, '::1'),
(395, 'Menu  [Ambassador Suite]Data has deleted successfully.', '2023-09-11 19:56:59', 1, 6, '::1'),
(396, 'Menu [Our Rooms] Edit Successfully', '2023-09-11 19:57:25', 1, 4, '::1'),
(397, 'Menu [Dining] Edit Successfully', '2023-09-11 19:57:40', 1, 4, '::1'),
(398, 'Menu [Events] Edit Successfully', '2023-09-11 19:57:53', 1, 4, '::1'),
(399, 'Menu  [Facilities]Data has deleted successfully.', '2023-09-11 19:59:04', 1, 6, '::1'),
(400, 'Menu  [Career]Data has deleted successfully.', '2023-09-11 19:59:35', 1, 6, '::1'),
(401, 'Changes on Config \'Hotel Ambassador by ACE Hotels | Deluxe Hotel at Kathmandu\' has been saved succes', '2023-09-11 20:04:32', 1, 4, '::1'),
(402, 'Changes on Config \'Hotel Ambassador by ACE Hotels | Deluxe Hotel at Kathmandu\' has been saved succes', '2023-09-11 20:06:43', 1, 4, '::1'),
(403, 'Changes on Config \'Hotel Ambassador by ACE Hotels | Deluxe Hotel at Kathmandu\' has been saved succes', '2023-09-11 20:08:54', 1, 4, '::1'),
(404, 'Changes on Config \'Hotel Ambassador by ACE Hotels | Deluxe Hotel at Kathmandu\' has been saved succes', '2023-09-11 20:10:05', 1, 4, '::1'),
(405, 'Login: Hotel Ambassador   logged in.', '2023-09-13 15:20:50', 1, 1, '::1'),
(406, 'Changes on Config \'Hotel Ambassador by ACE Hotels | Deluxe Hotel at Kathmandu\' has been saved succes', '2023-09-13 15:33:06', 1, 4, '::1'),
(407, 'Changes on Config \'Hotel Ambassador by ACE Hotels | Deluxe Hotel at Kathmandu\' has been saved succes', '2023-09-13 15:40:02', 1, 4, '::1'),
(408, 'Changes on Config \'Hotel Ambassador by ACE Hotels | Deluxe Hotel at Kathmandu\' has been saved succes', '2023-09-13 15:49:53', 1, 4, '::1'),
(409, 'Menu [test] CreatedData has added successfully.', '2023-09-13 16:01:07', 1, 3, '::1'),
(410, 'Changes on Config \'The Sky Garden Experience – Where Tranquility Meets Elegance\' has been saved succ', '2023-09-13 16:35:59', 1, 4, '::1'),
(411, 'Changes on Config \'The Sky Garden Experience – Where Tranquility Meets Elegance\' has been saved succ', '2023-09-13 16:37:27', 1, 4, '::1'),
(412, 'Changes on Config \'The Sky Garden Experience – Where Tranquility Meets Elegance\' has been saved succ', '2023-09-13 16:39:21', 1, 4, '::1'),
(413, 'Changes on Config \'The Sky Garden Experience – Where Tranquility Meets Elegance\' has been saved succ', '2023-09-13 16:45:48', 1, 4, '::1'),
(414, 'Menu [Rooms] Edit Successfully', '2023-09-13 16:57:45', 1, 4, '::1'),
(415, 'Menu  [Restaurant]Data has deleted successfully.', '2023-09-13 16:58:08', 1, 6, '::1'),
(416, 'Menu  [Career]Data has deleted successfully.', '2023-09-13 16:58:11', 1, 6, '::1'),
(417, 'SocialNetworking [Facebook] Edit Successfully', '2023-09-13 17:14:32', 1, 4, '::1'),
(418, 'SocialNetworking [Facebook] Edit Successfully', '2023-09-13 17:17:39', 1, 4, '::1'),
(419, 'SocialNetworking [Facebook] Edit Successfully', '2023-09-13 17:23:08', 1, 4, '::1'),
(420, 'SocialNetworking [Facebook] Edit Successfully', '2023-09-13 17:37:48', 1, 4, '::1'),
(421, 'Login: Hotel Ambassador   logged in.', '2023-09-15 11:48:07', 1, 1, '::1'),
(422, 'Changes on Config \'The Sky Garden Experience – Where Tranquility Meets Elegance\' has been saved succ', '2023-09-15 11:48:20', 1, 4, '::1'),
(423, 'Changes on Config \'The Sky Garden Experience – Where Tranquility Meets Elegance\' has been saved succ', '2023-09-15 12:09:38', 1, 4, '::1'),
(424, 'Changes on Config \'The Sky Garden Experience – Where Tranquility Meets Elegance\' has been saved succ', '2023-09-15 12:14:12', 1, 4, '::1'),
(425, 'Changes on Config \'The Sky Garden Experience – Where Tranquility Meets Elegance\' has been saved succ', '2023-09-15 12:25:09', 1, 4, '::1'),
(426, 'Changes on Article \'About us\' has been saved successfully.', '2023-09-15 12:34:44', 1, 4, '::1'),
(427, 'Changes on Article \'About us\' has been saved successfully.', '2023-09-15 12:35:01', 1, 4, '::1'),
(428, 'Services  [Vanity Mirror]Data has deleted successfully.', '2023-09-15 12:40:48', 1, 6, '::1'),
(429, 'Services  [LED Tv]Data has deleted successfully.', '2023-09-15 12:40:48', 1, 6, '::1'),
(430, 'Services  [Hair Dryer]Data has deleted successfully.', '2023-09-15 12:40:48', 1, 6, '::1'),
(431, 'Services  [Room Slippers]Data has deleted successfully.', '2023-09-15 12:40:48', 1, 6, '::1'),
(432, 'Services  [Minibar]Data has deleted successfully.', '2023-09-15 12:40:48', 1, 6, '::1'),
(433, 'Services  [Bathtub]Data has deleted successfully.', '2023-09-15 12:40:48', 1, 6, '::1'),
(434, 'Services  [24hrs Front Desk]Data has deleted successfully.', '2023-09-15 12:40:48', 1, 6, '::1'),
(435, 'Services  [Coffee Maker]Data has deleted successfully.', '2023-09-15 12:40:48', 1, 6, '::1'),
(436, 'Services  [Upcoming Gym & Spa]Data has deleted successfully.', '2023-09-15 12:40:48', 1, 6, '::1'),
(437, 'Services  [Iron and Ironing Board]Data has deleted successfully.', '2023-09-15 12:40:48', 1, 6, '::1'),
(438, 'Services  [Meeting Hall]Data has deleted successfully.', '2023-09-15 12:40:48', 1, 6, '::1'),
(439, 'Services  [Five on-site dining options]Data has deleted successfully.', '2023-09-15 12:40:48', 1, 6, '::1'),
(440, 'Services  [Emergency Torch]Data has deleted successfully.', '2023-09-15 12:40:48', 1, 6, '::1'),
(441, 'Services  [EV charging station]Data has deleted successfully.', '2023-09-15 12:40:48', 1, 6, '::1'),
(442, 'Services  [Triple Gazed Sound Proof Windows]Data has deleted successfully.', '2023-09-15 12:40:48', 1, 6, '::1'),
(443, 'Services  [Safety Deposit Box]Data has deleted successfully.', '2023-09-15 12:40:48', 1, 6, '::1'),
(444, 'Services  [Breakfast]Data has deleted successfully.', '2023-09-15 12:40:48', 1, 6, '::1'),
(445, 'Services  [Free Wifi]Data has deleted successfully.', '2023-09-15 12:40:48', 1, 6, '::1'),
(446, 'Services  [Room Service]Data has deleted successfully.', '2023-09-15 12:40:48', 1, 6, '::1'),
(447, 'Services  [Parking Space]Data has deleted successfully.', '2023-09-15 12:40:48', 1, 6, '::1'),
(448, 'Services  [Pick Up & Drop]Data has deleted successfully.', '2023-09-15 12:40:48', 1, 6, '::1'),
(449, 'Services [Internet Access]Data has added successfully.', '2023-09-15 12:41:18', 1, 3, '::1'),
(450, 'Services [test]Data has added successfully.', '2023-09-15 13:06:52', 1, 3, '::1'),
(451, 'Services  [test]Data has deleted successfully.', '2023-09-15 13:07:07', 1, 6, '::1'),
(452, 'Login: Hotel Ambassador   logged in.', '2023-09-15 17:33:54', 1, 1, '::1'),
(453, 'Changes on Article \'About us\' has been saved successfully.', '2023-09-15 17:34:35', 1, 4, '::1'),
(454, 'Login: Hotel Ambassador   logged in.', '2023-09-17 12:17:48', 1, 1, '::1'),
(455, 'Changes on Config \'The Sky Garden Experience – Where Tranquility Meets Elegance\' has been saved succ', '2023-09-17 12:36:12', 1, 4, '::1'),
(456, 'Package Rooms & Suites Edit Successfully', '2023-09-17 13:00:53', 1, 4, '::1'),
(457, 'Package Rooms Edit Successfully', '2023-09-17 13:01:06', 1, 4, '::1'),
(458, 'Menu [Our Rooms] Edit Successfully', '2023-09-17 13:01:19', 1, 4, '::1'),
(459, 'Menu  [test]Data has deleted successfully.', '2023-09-17 13:01:38', 1, 6, '::1'),
(460, 'Changes on Sub Package \'Ambassador Suite\' has been saved successfully.', '2023-09-17 13:16:18', 1, 4, '::1'),
(461, 'Changes on Sub Package \'Ambassador Suite\' has been saved successfully.', '2023-09-17 13:18:54', 1, 4, '::1'),
(462, 'Changes on Sub Package \'Ambassador Suite\' has been saved successfully.', '2023-09-17 13:19:44', 1, 4, '::1'),
(463, 'Changes on Sub Package \'Ambassador Suite\' has been saved successfully.', '2023-09-17 13:23:12', 1, 4, '::1'),
(464, 'Changes on Sub Package \'Ambassador Suite\' has been saved successfully.', '2023-09-17 13:27:10', 1, 4, '::1'),
(465, 'Changes on Sub Package \'Ambassador Suite\' has been saved successfully.', '2023-09-17 13:30:11', 1, 4, '::1'),
(466, 'Changes on Sub Package \'Ambassador Suite\' has been saved successfully.', '2023-09-17 13:30:47', 1, 4, '::1'),
(467, 'Changes on Sub Package \'Ambassador Suite\' has been saved successfully.', '2023-09-17 13:31:26', 1, 4, '::1'),
(468, 'Changes on Sub Package \'Ambassador Suite\' has been saved successfully.', '2023-09-17 13:33:22', 1, 4, '::1'),
(469, 'Package Rooms Edit Successfully', '2023-09-17 13:45:43', 1, 4, '::1'),
(470, 'Package Rooms Edit Successfully', '2023-09-17 13:48:26', 1, 4, '::1'),
(471, 'Login: Hotel Ambassador   logged in.', '2023-09-17 15:05:20', 1, 1, '::1'),
(472, 'Login: Hotel Ambassador   logged in.', '2023-09-17 15:09:53', 1, 1, '::1'),
(473, 'Changes on Sub Package \'Ambassador Suite\' has been saved successfully.', '2023-09-17 15:34:23', 1, 4, '::1'),
(474, 'Changes on Sub Package \'Ambassador Suite\' has been saved successfully.', '2023-09-17 15:44:25', 1, 4, '::1'),
(475, 'Changes on Sub Package \'Ambassador Suite\' has been saved successfully.', '2023-09-17 15:50:37', 1, 4, '::1'),
(476, 'Changes on Sub Package \'Ambassador Suite\' has been saved successfully.', '2023-09-17 15:56:11', 1, 4, '::1'),
(477, 'Sub Package Image [asd]Data has added successfully.', '2023-09-17 16:26:17', 1, 3, '::1'),
(478, 'Changes on Sub Package \'Ambassador Suite\' has been saved successfully.', '2023-09-17 16:47:33', 1, 4, '::1'),
(479, 'Package [Other Services]Data has deleted successfully.', '2023-09-17 17:05:29', 1, 6, '::1'),
(480, 'Package [Hall]Data has added successfully.', '2023-09-17 17:07:19', 1, 3, '::1'),
(481, 'Menu [Events] Edit Successfully', '2023-09-17 17:07:35', 1, 4, '::1'),
(482, 'Sub Package \'PINE HALL\' has added successfully.', '2023-09-17 17:11:15', 1, 3, '::1'),
(483, 'Changes on Sub Package \'Ambassador Suite\' has been saved successfully.', '2023-09-17 17:15:24', 1, 4, '::1'),
(484, 'Changes on Sub Package \'Ambassador Suite\' has been saved successfully.', '2023-09-17 17:15:33', 1, 4, '::1'),
(485, 'Changes on Sub Package \'PINE HALL\' has been saved successfully.', '2023-09-17 17:23:37', 1, 4, '::1'),
(486, 'Changes on Sub Package \'PINE HALL\' has been saved successfully.', '2023-09-17 17:45:55', 1, 4, '::1'),
(487, 'Login: Hotel Ambassador   logged in.', '2023-09-18 12:12:28', 1, 1, '::1'),
(488, 'Changes on Sub Package \'PINE HALL\' has been saved successfully.', '2023-09-18 12:14:09', 1, 4, '::1'),
(489, 'Changes on Sub Package \'PINE HALL\' has been saved successfully.', '2023-09-18 12:14:21', 1, 4, '::1');
INSERT INTO `tbl_logs` (`id`, `action`, `registered`, `userid`, `user_action`, `ip_track`) VALUES
(490, 'Changes on Sub Package \'PINE HALL\' has been saved successfully.', '2023-09-18 12:15:03', 1, 4, '::1'),
(491, 'Changes on Sub Package \'PINE HALL\' has been saved successfully.', '2023-09-18 12:15:52', 1, 4, '::1'),
(492, 'Changes on Sub Package \'PINE HALL\' has been saved successfully.', '2023-09-18 12:16:05', 1, 4, '::1'),
(493, 'Sub Package \'ROSEWOOD HALL\' has added successfully.', '2023-09-18 12:18:13', 1, 3, '::1'),
(494, 'Changes on Sub Package \'ROSEWOOD HALL\' has been saved successfully.', '2023-09-18 12:23:06', 1, 4, '::1'),
(495, 'Package Hall Edit Successfully', '2023-09-18 12:24:21', 1, 4, '::1'),
(496, 'Package [Dining]Data has added successfully.', '2023-09-18 12:27:01', 1, 3, '::1'),
(497, 'Menu [Dining] Edit Successfully', '2023-09-18 12:27:17', 1, 4, '::1'),
(498, 'Package Dining Edit Successfully', '2023-09-18 12:29:01', 1, 4, '::1'),
(499, 'Sub Package \'Cosmos Cafe\' has added successfully.', '2023-09-18 12:49:12', 1, 3, '::1'),
(500, 'Package Dining Edit Successfully', '2023-09-18 12:54:28', 1, 4, '::1'),
(501, 'Sub Package \'Nebula Restaurant\' has added successfully.', '2023-09-18 12:55:17', 1, 3, '::1'),
(502, 'Changes on Sub Package \'Nebula Restaurant\' has been saved successfully.', '2023-09-18 12:55:40', 1, 4, '::1'),
(503, 'Changes on Sub Package \'Cosmos Cafe\' has been saved successfully.', '2023-09-18 12:55:59', 1, 4, '::1'),
(504, 'Changes on Sub Package \'Nebula Restaurant\' has been saved successfully.', '2023-09-18 12:56:26', 1, 4, '::1'),
(505, 'Changes on Sub Package \'Nebula Restaurant\' has been saved successfully.', '2023-09-18 12:59:07', 1, 4, '::1'),
(506, 'Changes on Sub Package \'Nebula Restaurant\' has been saved successfully.', '2023-09-18 12:59:42', 1, 4, '::1'),
(507, 'Changes on Sub Package \'Nebula Restaurant\' has been saved successfully.', '2023-09-18 13:00:44', 1, 4, '::1'),
(508, 'Changes on Sub Package \'Cosmos Cafe\' has been saved successfully.', '2023-09-18 13:00:59', 1, 4, '::1'),
(509, 'User [Hotel Ambassador  ] Edit Successfully', '2023-09-18 13:02:04', 1, 4, '::1'),
(510, 'Slideshow [THE SKY GARDEN EXPERIENCE]Data has added successfully.', '2023-09-18 13:06:52', 1, 3, '::1'),
(511, 'Slideshow [MAGICAL SKY-HIGH RETREAT]Data has added successfully.', '2023-09-18 13:07:15', 1, 3, '::1'),
(512, 'Slideshow [STARRY NIGHT SPECTACLES]Data has added successfully.', '2023-09-18 13:07:46', 1, 3, '::1'),
(513, 'Slideshow [NIGHTS OF PURE WONDER]Data has added successfully.', '2023-09-18 13:09:47', 1, 3, '::1'),
(514, 'Slideshow [WHERE LUXURY MEETS NATURE]Data has added successfully.', '2023-09-18 13:10:02', 1, 3, '::1'),
(515, 'Slideshow [AN OASIS IN THE CLOUDS]Data has added successfully.', '2023-09-18 13:10:19', 1, 3, '::1'),
(516, 'Slideshow [DINING DELIGHTS GALORE]Data has added successfully.', '2023-09-18 13:10:36', 1, 3, '::1'),
(517, 'Slideshow [EXCEPTIONAL CURATED EVENTS]Data has added successfully.', '2023-09-18 13:10:51', 1, 3, '::1'),
(518, 'Slideshow [WELCOME TO SKY GARDEN]Data has added successfully.', '2023-09-18 13:11:07', 1, 3, '::1'),
(519, 'Changes on Article \'About us\' has been saved successfully.', '2023-09-18 13:26:32', 1, 4, '::1'),
(520, 'Changes on Article \'About us\' has been saved successfully.', '2023-09-18 13:29:37', 1, 4, '::1'),
(521, 'Changes on Article \'About us\' has been saved successfully.', '2023-09-18 13:30:16', 1, 4, '::1'),
(522, 'Changes on Article \'About us\' has been saved successfully.', '2023-09-18 13:38:30', 1, 4, '::1'),
(523, 'Article \'test\' has added successfully.', '2023-09-18 13:39:02', 1, 3, '::1'),
(524, 'Articles  [test]Data has deleted successfully.', '2023-09-18 13:39:36', 1, 6, '::1'),
(525, 'Login: Hotel Ambassador   logged in.', '2023-09-18 15:10:07', 1, 1, '::1'),
(526, 'Changes on Sub Package \'Ambassador Suite\' has been saved successfully.', '2023-09-18 15:11:41', 1, 4, '::1'),
(527, 'Features [Swimming Pool] Edit Successfully', '2023-09-18 15:20:57', 1, 4, '::1'),
(528, 'User [Sky Garden Resort  ] Edit Successfully', '2023-09-18 15:42:05', 1, 4, '::1'),
(529, 'Login: Sky Garden Resort   logged in.', '2023-09-18 15:42:14', 1, 1, '::1'),
(530, 'Package Rooms Edit Successfully', '2023-09-18 16:11:29', 1, 4, '::1'),
(531, 'Package Rooms Edit Successfully', '2023-09-18 16:14:20', 1, 4, '::1'),
(532, 'Package Rooms Edit Successfully', '2023-09-18 16:15:27', 1, 4, '::1'),
(533, 'Package Rooms Edit Successfully', '2023-09-18 16:28:34', 1, 4, '::1'),
(534, 'Package Rooms Edit Successfully', '2023-09-18 16:29:26', 1, 4, '::1'),
(535, 'Package Rooms Edit Successfully', '2023-09-18 16:30:47', 1, 4, '::1'),
(536, 'Package Rooms Edit Successfully', '2023-09-18 16:33:15', 1, 4, '::1'),
(537, 'Package Rooms Edit Successfully', '2023-09-18 16:33:48', 1, 4, '::1'),
(538, 'Package Rooms Edit Successfully', '2023-09-18 16:36:42', 1, 4, '::1'),
(539, 'Package Rooms Edit Successfully', '2023-09-18 16:37:52', 1, 4, '::1'),
(540, 'Package Rooms Edit Successfully', '2023-09-18 16:38:39', 1, 4, '::1'),
(541, 'Package Rooms Edit Successfully', '2023-09-18 16:40:40', 1, 4, '::1'),
(542, 'Package Hall Edit Successfully', '2023-09-18 16:43:24', 1, 4, '::1'),
(543, 'Package Dining Edit Successfully', '2023-09-18 16:43:48', 1, 4, '::1'),
(544, 'Package Dining Edit Successfully', '2023-09-18 16:58:05', 1, 4, '::1'),
(545, 'Login: Sky Garden Resort   logged in.', '2023-09-19 11:38:28', 1, 1, '::1'),
(546, 'Package Dining Edit Successfully', '2023-09-19 11:51:35', 1, 4, '::1'),
(547, 'Package Dining Edit Successfully', '2023-09-19 11:53:05', 1, 4, '::1'),
(548, 'Package Hall Edit Successfully', '2023-09-19 11:59:24', 1, 4, '::1'),
(549, 'Package Hall Edit Successfully', '2023-09-19 12:00:35', 1, 4, '::1'),
(550, 'Package Hall Edit Successfully', '2023-09-19 12:00:51', 1, 4, '::1'),
(551, 'Package Hall Edit Successfully', '2023-09-19 12:01:14', 1, 4, '::1'),
(552, 'Package Hall Edit Successfully', '2023-09-19 12:01:21', 1, 4, '::1'),
(553, 'Package Hall Edit Successfully', '2023-09-19 12:01:32', 1, 4, '::1'),
(554, 'Package Hall Edit Successfully', '2023-09-19 12:03:58', 1, 4, '::1'),
(555, 'Package Hall Edit Successfully', '2023-09-19 12:04:06', 1, 4, '::1'),
(556, 'Package Hall Edit Successfully', '2023-09-19 12:04:24', 1, 4, '::1'),
(557, 'Package Hall Edit Successfully', '2023-09-19 12:04:31', 1, 4, '::1'),
(558, 'Package Hall Edit Successfully', '2023-09-19 12:07:06', 1, 4, '::1'),
(559, 'Package Hall Edit Successfully', '2023-09-19 12:08:04', 1, 4, '::1'),
(560, 'Package Hall Edit Successfully', '2023-09-19 12:09:17', 1, 4, '::1'),
(561, 'Package Dining Edit Successfully', '2023-09-19 12:09:55', 1, 4, '::1'),
(562, 'Package Dining Edit Successfully', '2023-09-19 12:15:18', 1, 4, '::1'),
(563, 'Article \'Dhulikhel Zipline\' has added successfully.', '2023-09-19 12:30:09', 1, 3, '::1'),
(564, 'Article \'Bhotekoshi Rafting\' has added successfully.', '2023-09-19 12:30:38', 1, 3, '::1'),
(565, 'Article \'Hajar Sidi\' has added successfully.', '2023-09-19 12:30:56', 1, 3, '::1'),
(566, 'Article \'Kailasnath Mahadev Statue\' has added successfully.', '2023-09-19 12:31:10', 1, 3, '::1'),
(567, 'Article \'Namobuddha Monastery\' has added successfully.', '2023-09-19 12:31:26', 1, 3, '::1'),
(568, 'Changes on Article \'About uss\' has been saved successfully.', '2023-09-19 12:41:54', 1, 4, '::1'),
(569, 'Changes on Article \'About us\' has been saved successfully.', '2023-09-19 12:42:06', 1, 4, '::1'),
(570, 'Changes on Article \'About us\' has been saved successfully.', '2023-09-19 12:42:48', 1, 4, '::1'),
(571, 'Changes on Article \'About us\' has been saved successfully.', '2023-09-19 12:43:06', 1, 4, '::1'),
(572, 'Package [EXPERIENCES LIKE NO OTHER]Data has added successfully.', '2023-09-19 13:07:33', 1, 3, '::1'),
(573, 'Sub Package \'WEDDING AND EVENTS\' has added successfully.', '2023-09-19 13:08:22', 1, 3, '::1'),
(574, 'Sub Package \'ROOFTOP TERRACE\' has added successfully.', '2023-09-19 13:09:19', 1, 3, '::1'),
(575, 'Changes on Sub Package \'ROOFTOP TERRACE\' has been saved successfully.', '2023-09-19 13:09:36', 1, 4, '::1'),
(576, 'Sub Package \'NOVA SKY BAR\' has added successfully.', '2023-09-19 13:10:15', 1, 3, '::1'),
(577, 'Package EXPERIENCES LIKE NO OTHER Edit Successfully', '2023-09-19 13:20:53', 1, 4, '::1'),
(578, 'Package EXPERIENCES LIKE NO OTHER Edit Successfully', '2023-09-19 13:21:05', 1, 4, '::1'),
(579, 'Package EXPERIENCES LIKE NO OTHER Edit Successfully', '2023-09-19 13:23:10', 1, 4, '::1'),
(580, 'Package EXPERIENCES LIKE NO OTHER Edit Successfully', '2023-09-19 13:24:06', 1, 4, '::1'),
(581, 'Package EXPERIENCES LIKE NO OTHER Edit Successfully', '2023-09-19 13:26:06', 1, 4, '::1'),
(582, 'Login: Sky Garden Resort   logged in.', '2023-09-19 16:14:21', 1, 1, '::1'),
(583, 'Changes on Sub Package \'Ambassador Suite\' has been saved successfully.', '2023-09-19 16:36:26', 1, 4, '::1'),
(584, 'Sub Package \'Standard Room\' has added successfully.', '2023-09-19 16:39:55', 1, 3, '::1'),
(585, 'Changes on Sub Package \'Standard Room\' has been saved successfully.', '2023-09-19 16:42:37', 1, 4, '::1'),
(586, 'Features [City View]Data has added successfully.', '2023-09-19 16:43:43', 1, 3, '::1'),
(587, 'Features [Jungle View]Data has added successfully.', '2023-09-19 16:43:58', 1, 3, '::1'),
(588, 'Features [Mountain View]Data has added successfully.', '2023-09-19 16:44:09', 1, 3, '::1'),
(589, 'Features [Room Services]Data has added successfully.', '2023-09-19 16:44:22', 1, 3, '::1'),
(590, 'Features [LED TV]Data has added successfully.', '2023-09-19 16:44:45', 1, 3, '::1'),
(591, 'Features [Tea / Coffee Maker]Data has added successfully.', '2023-09-19 16:45:02', 1, 3, '::1'),
(592, 'Features [Free bottled water]Data has added successfully.', '2023-09-19 16:45:16', 1, 3, '::1'),
(593, 'Changes on Sub Package \'Standard Room\' has been saved successfully.', '2023-09-19 16:45:36', 1, 4, '::1'),
(594, 'Changes on Sub Package \'Standard Room\' has been saved successfully.', '2023-09-19 16:46:17', 1, 4, '::1'),
(595, 'Package Hall Edit Successfully', '2023-09-19 16:56:26', 1, 4, '::1'),
(596, 'Changes on Sub Package \'PINE HALL\' has been saved successfully.', '2023-09-19 16:56:54', 1, 4, '::1'),
(597, 'Changes on Sub Package \'ROSEWOOD HALL\' has been saved successfully.', '2023-09-19 16:56:59', 1, 4, '::1'),
(598, 'Features [Air Conditioner]Data has added successfully.', '2023-09-19 17:29:17', 1, 3, '::1'),
(599, 'Features [Free Wifi]Data has added successfully.', '2023-09-19 17:29:34', 1, 3, '::1'),
(600, 'Features [Work Desk]Data has added successfully.', '2023-09-19 17:29:49', 1, 3, '::1'),
(601, 'Features [Telephone]Data has added successfully.', '2023-09-19 17:30:03', 1, 3, '::1'),
(602, 'Features [Wardrobe]Data has added successfully.', '2023-09-19 17:30:14', 1, 3, '::1'),
(603, 'Features [Toiletries]Data has added successfully.', '2023-09-19 17:30:30', 1, 3, '::1'),
(604, 'Features [Hair Dryer]Data has added successfully.', '2023-09-19 17:30:43', 1, 3, '::1'),
(605, 'Changes on Sub Package \'Standard Room\' has been saved successfully.', '2023-09-19 17:30:57', 1, 4, '::1'),
(606, 'Sub Package \'Deluxe Room\' has added successfully.', '2023-09-19 17:39:43', 1, 3, '::1'),
(607, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2023-09-19 17:43:58', 1, 4, '::1'),
(608, 'Sub Package \'Executive Room\' has added successfully.', '2023-09-19 17:49:40', 1, 3, '::1'),
(609, 'Changes on Sub Package \'Executive Room\' has been saved successfully.', '2023-09-19 17:51:45', 1, 4, '::1'),
(610, 'Features [Private Balcony]Data has added successfully.', '2023-09-19 17:53:00', 1, 3, '::1'),
(611, 'Features [Single Sofas]Data has added successfully.', '2023-09-19 17:54:56', 1, 3, '::1'),
(612, 'Changes on Sub Package \'Executive Room\' has been saved successfully.', '2023-09-19 17:55:14', 1, 4, '::1'),
(613, 'Login: Sky Garden Resort   logged in.', '2023-09-20 11:35:59', 1, 1, '::1'),
(614, 'Package EXPERIENCES LIKE NO OTHER Edit Successfully', '2023-09-20 11:36:58', 1, 4, '::1'),
(615, 'Sub Package \'asdasdsad\' has added successfully.', '2023-09-20 11:38:38', 1, 3, '::1'),
(616, 'Sub Package [asdasdsad]Data has deleted successfully.', '2023-09-20 11:38:56', 1, 6, '::1'),
(617, 'Sub Package \'FAMILY SUITE\' has added successfully.', '2023-09-20 11:44:42', 1, 3, '::1'),
(618, 'Changes on Sub Package \'FAMILY SUITE\' has been saved successfully.', '2023-09-20 11:46:12', 1, 4, '::1'),
(619, 'Changes on Sub Package \'FAMILY SUITE\' has been saved successfully.', '2023-09-20 11:46:48', 1, 4, '::1'),
(620, 'Sub Package \'SUITE ROOM\' has added successfully.', '2023-09-20 11:50:44', 1, 3, '::1'),
(621, 'Sub Package Image [SUITE ROOM]Data has added successfully.', '2023-09-20 11:51:15', 1, 3, '::1'),
(622, 'Sub Package Image [SUITE ROOM]Data has added successfully.', '2023-09-20 11:51:15', 1, 3, '::1'),
(623, 'Sub Package Image [SUITE ROOM]Data has added successfully.', '2023-09-20 11:51:15', 1, 3, '::1'),
(624, 'Sub Package Image [SUITE ROOM]Data has added successfully.', '2023-09-20 11:51:15', 1, 3, '::1'),
(625, 'Changes on Sub Package \'SUITE ROOM\' has been saved successfully.', '2023-09-20 11:54:37', 1, 4, '::1'),
(626, 'Changes on Sub Package \'SUITE ROOM\' has been saved successfully.', '2023-09-20 11:57:51', 1, 4, '::1'),
(627, 'Changes on Sub Package \'SUITE ROOM\' has been saved successfully.', '2023-09-20 11:59:13', 1, 4, '::1'),
(628, 'Sub Package \'Superior Suite\' has added successfully.', '2023-09-20 12:02:44', 1, 3, '::1'),
(629, 'Features [Private Jacuzzi]Data has added successfully.', '2023-09-20 12:03:28', 1, 3, '::1'),
(630, 'Features [Mini Fridge]Data has added successfully.', '2023-09-20 12:03:49', 1, 3, '::1'),
(631, 'Changes on Sub Package \'Superior Suite\' has been saved successfully.', '2023-09-20 12:04:07', 1, 4, '::1'),
(632, 'Sub Package Image [Superior Suite]Data has added successfully.', '2023-09-20 12:04:40', 1, 3, '::1'),
(633, 'Sub Package Image [Superior Suite]Data has added successfully.', '2023-09-20 12:04:40', 1, 3, '::1'),
(634, 'Sub Package Image [Superior Suite]Data has added successfully.', '2023-09-20 12:04:40', 1, 3, '::1'),
(635, 'Sub Package Image [Superior Suite]Data has added successfully.', '2023-09-20 12:04:40', 1, 3, '::1'),
(636, 'Changes on Sub Package \'Superior Suite\' has been saved successfully.', '2023-09-20 12:06:47', 1, 4, '::1'),
(637, 'Sub Package Image [test]Data has added successfully.', '2023-09-20 12:08:07', 1, 3, '::1'),
(638, 'SubPackage Gallery Image [test]Data has deleted successfully.', '2023-09-20 12:08:19', 1, 6, '::1'),
(639, 'Sub Package \'Luna Restaurant\' has added successfully.', '2023-09-20 12:15:06', 1, 3, '::1'),
(640, 'Sub Package \'ORION Restaurant\' has added successfully.', '2023-09-20 12:15:59', 1, 3, '::1'),
(641, 'Sub Package \'MAPLE HALL\' has added successfully.', '2023-09-20 12:21:22', 1, 3, '::1'),
(642, 'Changes on Sub Package \'MAPLE HALL\' has been saved successfully.', '2023-09-20 12:22:01', 1, 4, '::1'),
(643, 'Features [Hall Amenities]Data has added successfully.', '2023-09-20 12:22:31', 1, 3, '::1'),
(644, 'Features [Projector]Data has added successfully.', '2023-09-20 12:22:44', 1, 3, '::1'),
(645, 'Features [Projector Screen]Data has added successfully.', '2023-09-20 12:22:52', 1, 3, '::1'),
(646, 'Features [Air Conditioner]Data has added successfully.', '2023-09-20 12:22:58', 1, 3, '::1'),
(647, 'Features [High-Speed Internet]Data has added successfully.', '2023-09-20 12:23:05', 1, 3, '::1'),
(648, 'Features [White Board]Data has added successfully.', '2023-09-20 12:23:11', 1, 3, '::1'),
(649, 'Features [PA System with Wireless Microphone]Data has added successfully.', '2023-09-20 12:23:21', 1, 3, '::1'),
(650, 'Features [Flip Chart]Data has added successfully.', '2023-09-20 12:23:27', 1, 3, '::1'),
(651, 'Features [Writing Pads with Pencils]Data has added successfully.', '2023-09-20 12:23:36', 1, 3, '::1'),
(652, 'Features [Podium]Data has added successfully.', '2023-09-20 12:23:42', 1, 3, '::1'),
(653, 'Changes on Sub Package \'MAPLE HALL\' has been saved successfully.', '2023-09-20 12:24:16', 1, 4, '::1'),
(654, 'Features [Breakout Room]Data has added successfully.', '2023-09-20 12:32:53', 1, 3, '::1'),
(655, 'Features [Lobby]Data has added successfully.', '2023-09-20 12:33:00', 1, 3, '::1'),
(656, 'Features [Soft (Pin) Board]Data has added successfully.', '2023-09-20 12:33:37', 1, 3, '::1'),
(657, 'Changes on Sub Package \'ROSEWOOD HALL\' has been saved successfully.', '2023-09-20 12:34:56', 1, 4, '::1'),
(658, 'Features [Main Stage]Data has added successfully.', '2023-09-20 12:35:48', 1, 3, '::1'),
(659, 'Features [Dance Floor]Data has added successfully.', '2023-09-20 12:35:55', 1, 3, '::1'),
(660, 'Features [Bar]Data has added successfully.', '2023-09-20 12:36:01', 1, 3, '::1'),
(661, 'Changes on Sub Package \'PINE HALL\' has been saved successfully.', '2023-09-20 12:36:51', 1, 4, '::1'),
(662, 'Changes on Sub Package \'PINE HALL\' has been saved successfully.', '2023-09-20 12:37:13', 1, 4, '::1'),
(663, 'Gallery [Views]Data has added successfully.', '2023-09-20 12:40:01', 1, 3, '::1'),
(664, 'Gallery [Rooms]Data has added successfully.', '2023-09-20 12:40:12', 1, 3, '::1'),
(665, 'Gallery [Hall]Data has added successfully.', '2023-09-20 12:40:21', 1, 3, '::1'),
(666, 'Gallery [Dining]Data has added successfully.', '2023-09-20 12:40:28', 1, 3, '::1'),
(667, 'Gallery [Terrace]Data has added successfully.', '2023-09-20 12:40:36', 1, 3, '::1'),
(668, 'Gallery [Cafe]Data has added successfully.', '2023-09-20 12:40:42', 1, 3, '::1'),
(669, 'Gallery [Bar]Data has added successfully.', '2023-09-20 12:40:50', 1, 3, '::1'),
(670, 'Gallery [Others]Data has added successfully.', '2023-09-20 12:40:57', 1, 3, '::1'),
(671, 'Sub Gallery Image [Views]Data has added successfully.', '2023-09-20 12:42:29', 1, 3, '::1'),
(672, 'Sub Gallery Image [Views]Data has added successfully.', '2023-09-20 12:42:29', 1, 3, '::1'),
(673, 'Sub Gallery Image [Views]Data has added successfully.', '2023-09-20 12:42:29', 1, 3, '::1'),
(674, 'Sub Gallery Image [Views]Data has added successfully.', '2023-09-20 12:42:29', 1, 3, '::1'),
(675, 'Sub Gallery Image [Views]Data has added successfully.', '2023-09-20 12:42:29', 1, 3, '::1'),
(676, 'Sub Gallery Image [Views]Data has added successfully.', '2023-09-20 12:42:29', 1, 3, '::1'),
(677, 'Sub Gallery Image [Views]Data has added successfully.', '2023-09-20 12:42:29', 1, 3, '::1'),
(678, 'Sub Gallery Image [Views]Data has added successfully.', '2023-09-20 12:42:29', 1, 3, '::1'),
(679, 'Sub Gallery Image [Rooms]Data has added successfully.', '2023-09-20 12:43:00', 1, 3, '::1'),
(680, 'Sub Gallery Image [Rooms]Data has added successfully.', '2023-09-20 12:43:00', 1, 3, '::1'),
(681, 'Sub Gallery Image [Rooms]Data has added successfully.', '2023-09-20 12:43:00', 1, 3, '::1'),
(682, 'Sub Gallery Image [Rooms]Data has added successfully.', '2023-09-20 12:43:00', 1, 3, '::1'),
(683, 'Sub Gallery Image [Rooms]Data has added successfully.', '2023-09-20 12:43:00', 1, 3, '::1'),
(684, 'Sub Gallery Image [Rooms]Data has added successfully.', '2023-09-20 12:43:00', 1, 3, '::1'),
(685, 'Sub Gallery Image [Rooms]Data has added successfully.', '2023-09-20 12:43:00', 1, 3, '::1'),
(686, 'Sub Gallery Image [Rooms]Data has added successfully.', '2023-09-20 12:43:00', 1, 3, '::1'),
(687, 'Sub Gallery Image [Rooms]Data has added successfully.', '2023-09-20 12:43:00', 1, 3, '::1'),
(688, 'Sub Gallery Image [Rooms]Data has added successfully.', '2023-09-20 12:43:00', 1, 3, '::1'),
(689, 'Sub Gallery Image [Rooms]Data has added successfully.', '2023-09-20 12:43:00', 1, 3, '::1'),
(690, 'Sub Gallery Image [Rooms]Data has added successfully.', '2023-09-20 12:43:00', 1, 3, '::1'),
(691, 'Sub Gallery Image [Rooms]Data has added successfully.', '2023-09-20 12:43:00', 1, 3, '::1'),
(692, 'Sub Gallery Image [Rooms]Data has added successfully.', '2023-09-20 12:43:00', 1, 3, '::1'),
(693, 'Sub Gallery Image [Rooms]Data has added successfully.', '2023-09-20 12:43:00', 1, 3, '::1'),
(694, 'Sub Gallery Image [Hall]Data has added successfully.', '2023-09-20 12:43:28', 1, 3, '::1'),
(695, 'Sub Gallery Image [Hall]Data has added successfully.', '2023-09-20 12:43:28', 1, 3, '::1'),
(696, 'Sub Gallery Image [Hall]Data has added successfully.', '2023-09-20 12:43:28', 1, 3, '::1'),
(697, 'Sub Gallery Image [Hall]Data has added successfully.', '2023-09-20 12:43:28', 1, 3, '::1'),
(698, 'Sub Gallery Image [Hall]Data has added successfully.', '2023-09-20 12:43:28', 1, 3, '::1'),
(699, 'Sub Gallery Image [Hall]Data has added successfully.', '2023-09-20 12:43:28', 1, 3, '::1'),
(700, 'Sub Gallery Image [Hall]Data has added successfully.', '2023-09-20 12:43:28', 1, 3, '::1'),
(701, 'Sub Gallery Image [Hall]Data has added successfully.', '2023-09-20 12:43:28', 1, 3, '::1'),
(702, 'Sub Gallery Image [Dining]Data has added successfully.', '2023-09-20 12:43:50', 1, 3, '::1'),
(703, 'Sub Gallery Image [Dining]Data has added successfully.', '2023-09-20 12:43:50', 1, 3, '::1'),
(704, 'Sub Gallery Image [Dining]Data has added successfully.', '2023-09-20 12:43:50', 1, 3, '::1'),
(705, 'Sub Gallery Image [Dining]Data has added successfully.', '2023-09-20 12:43:50', 1, 3, '::1'),
(706, 'Sub Gallery Image [Dining]Data has added successfully.', '2023-09-20 12:43:50', 1, 3, '::1'),
(707, 'Sub Gallery Image [Dining]Data has added successfully.', '2023-09-20 12:43:50', 1, 3, '::1'),
(708, 'Sub Gallery Image [Dining]Data has added successfully.', '2023-09-20 12:43:50', 1, 3, '::1'),
(709, 'Sub Gallery Image [Terrace]Data has added successfully.', '2023-09-20 12:44:15', 1, 3, '::1'),
(710, 'Sub Gallery Image [Terrace]Data has added successfully.', '2023-09-20 12:44:15', 1, 3, '::1'),
(711, 'Sub Gallery Image [Terrace]Data has added successfully.', '2023-09-20 12:44:15', 1, 3, '::1'),
(712, 'Sub Gallery Image [Terrace]Data has added successfully.', '2023-09-20 12:44:15', 1, 3, '::1'),
(713, 'Sub Gallery Image [Terrace]Data has added successfully.', '2023-09-20 12:44:15', 1, 3, '::1'),
(714, 'Sub Gallery Image [Terrace]Data has added successfully.', '2023-09-20 12:44:15', 1, 3, '::1'),
(715, 'Sub Gallery Image [Terrace]Data has added successfully.', '2023-09-20 12:44:15', 1, 3, '::1'),
(716, 'Sub Gallery Image [Terrace]Data has added successfully.', '2023-09-20 12:44:15', 1, 3, '::1'),
(717, 'Sub Gallery Image [Terrace]Data has added successfully.', '2023-09-20 12:44:15', 1, 3, '::1'),
(718, 'Sub Gallery Image [Terrace]Data has added successfully.', '2023-09-20 12:44:15', 1, 3, '::1'),
(719, 'Sub Gallery Image [Terrace]Data has added successfully.', '2023-09-20 12:44:15', 1, 3, '::1'),
(720, 'Sub Gallery Image [Terrace]Data has added successfully.', '2023-09-20 12:44:15', 1, 3, '::1'),
(721, 'Sub Gallery Image [Terrace]Data has added successfully.', '2023-09-20 12:44:15', 1, 3, '::1'),
(722, 'Sub Gallery Image [Terrace]Data has added successfully.', '2023-09-20 12:44:15', 1, 3, '::1'),
(723, 'Sub Gallery Image [Terrace]Data has added successfully.', '2023-09-20 12:44:15', 1, 3, '::1'),
(724, 'Sub Gallery Image [Cafe]Data has added successfully.', '2023-09-20 12:44:30', 1, 3, '::1'),
(725, 'Sub Gallery Image [Cafe]Data has added successfully.', '2023-09-20 12:44:30', 1, 3, '::1'),
(726, 'Sub Gallery Image [Cafe]Data has added successfully.', '2023-09-20 12:44:30', 1, 3, '::1'),
(727, 'Sub Gallery Image [Bar]Data has added successfully.', '2023-09-20 12:44:49', 1, 3, '::1'),
(728, 'Sub Gallery Image [Bar]Data has added successfully.', '2023-09-20 12:44:49', 1, 3, '::1'),
(729, 'Sub Gallery Image [Bar]Data has added successfully.', '2023-09-20 12:44:49', 1, 3, '::1'),
(730, 'Sub Gallery Image [Bar]Data has added successfully.', '2023-09-20 12:44:49', 1, 3, '::1'),
(731, 'Sub Gallery Image [Others]Data has added successfully.', '2023-09-20 12:45:05', 1, 3, '::1'),
(732, 'Sub Gallery Image [Others]Data has added successfully.', '2023-09-20 12:45:05', 1, 3, '::1'),
(733, 'Sub Gallery Image [Others]Data has added successfully.', '2023-09-20 12:45:05', 1, 3, '::1'),
(734, 'Sub Gallery Image  [Shops]Data has deleted successfully.', '2023-09-20 12:58:45', 1, 6, '::1'),
(735, 'Sub Gallery Image  []Data has deleted successfully.', '2023-09-20 12:58:51', 1, 6, '::1'),
(736, 'Sub Gallery Image  [Interior]Data has deleted successfully.', '2023-09-20 12:58:51', 1, 6, '::1'),
(737, 'Sub Gallery Image  []Data has deleted successfully.', '2023-09-20 12:58:53', 1, 6, '::1'),
(738, 'Sub Gallery Image  []Data has deleted successfully.', '2023-09-20 12:58:53', 1, 6, '::1'),
(739, 'Sub Gallery Image  [Delicious]Data has deleted successfully.', '2023-09-20 12:58:53', 1, 6, '::1'),
(740, 'Sub Gallery Image  []Data has deleted successfully.', '2023-09-20 12:58:56', 1, 6, '::1'),
(741, 'Sub Gallery Image  []Data has deleted successfully.', '2023-09-20 12:58:56', 1, 6, '::1'),
(742, 'Sub Gallery Image  []Data has deleted successfully.', '2023-09-20 12:58:56', 1, 6, '::1'),
(743, 'Sub Gallery Image  [Building]Data has deleted successfully.', '2023-09-20 12:58:56', 1, 6, '::1'),
(744, 'Sub Gallery Image  []Data has deleted successfully.', '2023-09-20 12:58:59', 1, 6, '::1'),
(745, 'Sub Gallery Image  []Data has deleted successfully.', '2023-09-20 12:58:59', 1, 6, '::1'),
(746, 'Sub Gallery Image  []Data has deleted successfully.', '2023-09-20 12:58:59', 1, 6, '::1'),
(747, 'Sub Gallery Image  []Data has deleted successfully.', '2023-09-20 12:58:59', 1, 6, '::1'),
(748, 'Sub Gallery Image  [Cuisine]Data has deleted successfully.', '2023-09-20 12:58:59', 1, 6, '::1'),
(749, 'Sub Gallery Image  []Data has deleted successfully.', '2023-09-20 12:59:02', 1, 6, '::1'),
(750, 'Sub Gallery Image  []Data has deleted successfully.', '2023-09-20 12:59:02', 1, 6, '::1'),
(751, 'Sub Gallery Image  []Data has deleted successfully.', '2023-09-20 12:59:02', 1, 6, '::1'),
(752, 'Sub Gallery Image  []Data has deleted successfully.', '2023-09-20 12:59:02', 1, 6, '::1'),
(753, 'Sub Gallery Image  []Data has deleted successfully.', '2023-09-20 12:59:02', 1, 6, '::1'),
(754, 'Sub Gallery Image  [Decorations]Data has deleted successfully.', '2023-09-20 12:59:02', 1, 6, '::1'),
(755, 'Sub Gallery Image  []Data has deleted successfully.', '2023-09-20 12:59:04', 1, 6, '::1'),
(756, 'Sub Gallery Image  []Data has deleted successfully.', '2023-09-20 12:59:04', 1, 6, '::1'),
(757, 'Sub Gallery Image  []Data has deleted successfully.', '2023-09-20 12:59:04', 1, 6, '::1'),
(758, 'Sub Gallery Image  []Data has deleted successfully.', '2023-09-20 12:59:04', 1, 6, '::1'),
(759, 'Sub Gallery Image  []Data has deleted successfully.', '2023-09-20 12:59:04', 1, 6, '::1'),
(760, 'Sub Gallery Image  []Data has deleted successfully.', '2023-09-20 12:59:04', 1, 6, '::1'),
(761, 'Sub Gallery Image  [Food ]Data has deleted successfully.', '2023-09-20 12:59:04', 1, 6, '::1'),
(762, 'Sub Gallery Image  []Data has deleted successfully.', '2023-09-20 12:59:07', 1, 6, '::1'),
(763, 'Sub Gallery Image  []Data has deleted successfully.', '2023-09-20 12:59:07', 1, 6, '::1'),
(764, 'Sub Gallery Image  []Data has deleted successfully.', '2023-09-20 12:59:07', 1, 6, '::1'),
(765, 'Sub Gallery Image  []Data has deleted successfully.', '2023-09-20 12:59:07', 1, 6, '::1'),
(766, 'Sub Gallery Image  []Data has deleted successfully.', '2023-09-20 12:59:07', 1, 6, '::1'),
(767, 'Sub Gallery Image  []Data has deleted successfully.', '2023-09-20 12:59:07', 1, 6, '::1'),
(768, 'Sub Gallery Image  []Data has deleted successfully.', '2023-09-20 12:59:07', 1, 6, '::1'),
(769, 'Sub Gallery Image  [Luxury]Data has deleted successfully.', '2023-09-20 12:59:07', 1, 6, '::1'),
(770, 'Sub Gallery Image  []Data has deleted successfully.', '2023-09-20 12:59:10', 1, 6, '::1'),
(771, 'Sub Gallery Image  []Data has deleted successfully.', '2023-09-20 12:59:10', 1, 6, '::1'),
(772, 'Sub Gallery Image  []Data has deleted successfully.', '2023-09-20 12:59:10', 1, 6, '::1'),
(773, 'Sub Gallery Image  []Data has deleted successfully.', '2023-09-20 12:59:10', 1, 6, '::1'),
(774, 'Sub Gallery Image  []Data has deleted successfully.', '2023-09-20 12:59:10', 1, 6, '::1'),
(775, 'Sub Gallery Image  []Data has deleted successfully.', '2023-09-20 12:59:10', 1, 6, '::1'),
(776, 'Sub Gallery Image  []Data has deleted successfully.', '2023-09-20 12:59:10', 1, 6, '::1'),
(777, 'Sub Gallery Image  []Data has deleted successfully.', '2023-09-20 12:59:10', 1, 6, '::1'),
(778, 'Sub Gallery Image  [Events]Data has deleted successfully.', '2023-09-20 12:59:10', 1, 6, '::1'),
(779, 'Sub Gallery Image [Sky Garden Resort]Data has added successfully.', '2023-09-20 12:59:51', 1, 3, '::1'),
(780, 'Sub Gallery Image [Sky Garden Resort]Data has added successfully.', '2023-09-20 12:59:51', 1, 3, '::1'),
(781, 'Sub Gallery Image [Sky Garden Resort]Data has added successfully.', '2023-09-20 12:59:51', 1, 3, '::1'),
(782, 'Sub Gallery Image [Sky Garden Resort]Data has added successfully.', '2023-09-20 12:59:51', 1, 3, '::1'),
(783, 'Sub Gallery Image [Sky Garden Resort]Data has added successfully.', '2023-09-20 12:59:51', 1, 3, '::1'),
(784, 'Sub Gallery Image [Sky Garden Resort]Data has added successfully.', '2023-09-20 12:59:51', 1, 3, '::1'),
(785, 'Sub Gallery Image [Sky Garden Resort]Data has added successfully.', '2023-09-20 12:59:51', 1, 3, '::1'),
(786, 'Sub Gallery Image [Sky Garden Resort]Data has added successfully.', '2023-09-20 12:59:51', 1, 3, '::1'),
(787, 'Sub Gallery Image [Sky Garden Resort]Data has added successfully.', '2023-09-20 12:59:51', 1, 3, '::1'),
(788, 'Sub Gallery Image [Sky Garden Resort]Data has added successfully.', '2023-09-20 12:59:51', 1, 3, '::1'),
(789, 'Sub Gallery Image [Sky Garden Resort]Data has added successfully.', '2023-09-20 12:59:51', 1, 3, '::1'),
(790, 'Sub Gallery Image [Sky Garden Resort]Data has added successfully.', '2023-09-20 12:59:51', 1, 3, '::1'),
(791, 'Sub Gallery Image [Sky Garden Resort]Data has added successfully.', '2023-09-20 12:59:51', 1, 3, '::1'),
(792, 'Sub Gallery Image [Sky Garden Resort]Data has added successfully.', '2023-09-20 12:59:51', 1, 3, '::1'),
(793, 'Sub Gallery Image [Sky Garden Resort]Data has added successfully.', '2023-09-20 12:59:51', 1, 3, '::1'),
(794, 'Sub Gallery Image [Sky Garden Resort]Data has added successfully.', '2023-09-20 12:59:51', 1, 3, '::1'),
(795, 'Sub Gallery Image [Sky Garden Resort]Data has added successfully.', '2023-09-20 12:59:51', 1, 3, '::1'),
(796, 'Sub Gallery Image [Sky Garden Resort]Data has added successfully.', '2023-09-20 12:59:51', 1, 3, '::1'),
(797, 'Package Dining Edit Successfully', '2023-09-20 13:00:44', 1, 4, '::1'),
(798, 'Article \'tesdf\' has added successfully.', '2023-09-20 13:01:07', 1, 3, '::1'),
(799, 'Articles  [tesdf]Data has deleted successfully.', '2023-09-20 13:01:14', 1, 6, '::1'),
(800, 'Login: Sky Garden Resort   logged in.', '2023-09-20 15:03:57', 1, 1, '::1'),
(801, 'Testimonial  []Data has deleted successfully.', '2023-09-20 15:05:39', 1, 6, '::1'),
(802, 'Testimonial  []Data has deleted successfully.', '2023-09-20 15:05:39', 1, 6, '::1'),
(803, 'Testimonial  []Data has deleted successfully.', '2023-09-20 15:05:39', 1, 6, '::1'),
(804, 'Testimonial  []Data has deleted successfully.', '2023-09-20 15:05:53', 1, 6, '::1'),
(805, 'Testimonial  []Data has deleted successfully.', '2023-09-20 15:05:53', 1, 6, '::1'),
(806, 'Testimonial  []Data has deleted successfully.', '2023-09-20 15:05:53', 1, 6, '::1'),
(807, 'Testimonial  []Data has deleted successfully.', '2023-09-20 15:05:53', 1, 6, '::1'),
(808, 'Testimonial  []Data has deleted successfully.', '2023-09-20 15:05:53', 1, 6, '::1'),
(809, 'Testimonial  []Data has deleted successfully.', '2023-09-20 15:05:53', 1, 6, '::1'),
(810, 'Testimonial  []Data has deleted successfully.', '2023-09-20 15:05:59', 1, 6, '::1'),
(811, 'Testimonial  []Data has deleted successfully.', '2023-09-20 15:05:59', 1, 6, '::1'),
(812, 'Testimonial  []Data has deleted successfully.', '2023-09-20 15:05:59', 1, 6, '::1'),
(813, 'Testimonial  []Data has deleted successfully.', '2023-09-20 15:06:00', 1, 6, '::1'),
(814, 'Testimonial  []Data has deleted successfully.', '2023-09-20 15:06:00', 1, 6, '::1'),
(815, 'Testimonial  []Data has deleted successfully.', '2023-09-20 15:06:00', 1, 6, '::1'),
(816, 'Testimonial  []Data has deleted successfully.', '2023-09-20 15:06:00', 1, 6, '::1'),
(817, 'Testimonial  []Data has deleted successfully.', '2023-09-20 15:06:02', 1, 6, '::1'),
(818, 'Testimonial  []Data has deleted successfully.', '2023-09-20 15:06:02', 1, 6, '::1'),
(819, 'Testimonial  []Data has deleted successfully.', '2023-09-20 15:06:02', 1, 6, '::1'),
(820, 'Testimonial  []Data has deleted successfully.', '2023-09-20 15:06:02', 1, 6, '::1'),
(821, 'Testimonial  []Data has deleted successfully.', '2023-09-20 15:06:02', 1, 6, '::1'),
(822, 'Testimonial  []Data has deleted successfully.', '2023-09-20 15:06:02', 1, 6, '::1'),
(823, 'Testimonial  []Data has deleted successfully.', '2023-09-20 15:06:02', 1, 6, '::1'),
(824, 'Testimonial  []Data has deleted successfully.', '2023-09-20 15:06:02', 1, 6, '::1'),
(825, 'Changes on Article \'NATURAL BEAUTY\' has been saved successfully.', '2023-09-20 15:07:22', 1, 4, '::1'),
(826, 'Menu [About Us] Edit Successfully', '2023-09-20 15:07:27', 1, 4, '::1'),
(827, 'Package EXPERIENCES LIKE NO OTHER Edit Successfully', '2023-09-20 15:08:23', 1, 4, '::1'),
(828, 'Changes on Popup \'Popup Test\' has been saved successfully.', '2023-09-20 15:13:06', 1, 4, '::1'),
(829, 'Services [On-site Parking]Data has added successfully.', '2023-09-20 15:13:53', 1, 3, '::1'),
(830, 'Services [Doctor on Call]Data has added successfully.', '2023-09-20 15:14:02', 1, 3, '::1'),
(831, 'Services [Daily Housekeeping]Data has added successfully.', '2023-09-20 15:14:12', 1, 3, '::1'),
(832, 'Services [Credit Card Accepted]Data has added successfully.', '2023-09-20 15:14:22', 1, 3, '::1'),
(833, 'Services [Hot and Cold Water]Data has added successfully.', '2023-09-20 15:14:33', 1, 3, '::1'),
(834, 'Services [24 Hour Front Desk]Data has added successfully.', '2023-09-20 15:14:45', 1, 3, '::1'),
(835, 'Services [Room Service]Data has added successfully.', '2023-09-20 15:14:55', 1, 3, '::1'),
(836, 'Services [Laundry]Data has added successfully.', '2023-09-20 15:15:04', 1, 3, '::1'),
(837, 'Services [Live Music]Data has added successfully.', '2023-09-20 15:15:21', 1, 3, '::1'),
(838, 'Services [Electricity Backup]Data has added successfully.', '2023-09-20 15:15:32', 1, 3, '::1'),
(839, 'Services [Rooftop Bar]Data has added successfully.', '2023-09-20 15:16:07', 1, 3, '::1'),
(840, 'Services [Coureirge Service]Data has added successfully.', '2023-09-20 15:16:19', 1, 3, '::1'),
(841, 'Services [CCTV Security]Data has added successfully.', '2023-09-20 15:16:29', 1, 3, '::1'),
(842, 'Services [Cafe]Data has added successfully.', '2023-09-20 15:16:37', 1, 3, '::1'),
(843, 'Services [Air Conditioner]Data has added successfully.', '2023-09-20 15:16:46', 1, 3, '::1'),
(844, 'Services [Rooftop Terrace]Data has added successfully.', '2023-09-20 15:16:57', 1, 3, '::1'),
(845, 'Services [Rooftop Jacuzzi]Data has added successfully.', '2023-09-20 15:17:05', 1, 3, '::1'),
(846, 'Services [Airport pickup and drop<br/> (on charge)]Data has added successfully.', '2023-09-20 15:17:18', 1, 3, '::1'),
(847, 'Services [Rooftop Restaurant]Data has added successfully.', '2023-09-20 15:17:41', 1, 3, '::1'),
(848, 'SocialNetworking [Facebook] Edit Successfully', '2023-09-20 15:21:24', 1, 4, '::1'),
(849, 'SocialNetworking [Facebook] Edit Successfully', '2023-09-20 15:29:13', 1, 4, '::1'),
(850, 'SocialNetworking [Instagram] Edit Successfully', '2023-09-20 15:29:26', 1, 4, '::1'),
(851, 'SocialNetworking [Youtube]Data has added successfully.', '2023-09-20 15:29:55', 1, 3, '::1'),
(852, 'SocialNetworking [Tiktok]Data has added successfully.', '2023-09-20 15:30:26', 1, 3, '::1'),
(853, 'Changes on Config \'The Sky Garden Experience – Where Tranquility Meets Elegance\' has been saved succ', '2023-09-20 15:36:02', 1, 4, '::1'),
(854, 'Slideshow [asdasdasd]Data has added successfully.', '2023-09-20 15:57:20', 1, 3, '::1'),
(855, 'Sub Package \'sadasdasd\' has added successfully.', '2023-09-20 16:11:53', 1, 3, '::1'),
(856, 'Changes on Sub Package \'Superior Suite\' has been saved successfully.', '2023-09-20 16:14:29', 1, 4, '::1'),
(857, 'Changes on Sub Package \'Superior Suite\' has been saved successfully.', '2023-09-20 16:14:46', 1, 4, '::1'),
(858, 'Package Rooms Edit Successfully', '2023-09-20 16:15:23', 1, 4, '::1'),
(859, 'Package EXPERIENCES LIKE NO OTHER Edit Successfully', '2023-09-20 16:18:10', 1, 4, '::1'),
(860, 'Package EXPERIENCES LIKE NO OTHER Edit Successfully', '2023-09-20 16:18:26', 1, 4, '::1'),
(861, 'Package EXPERIENCES LIKE NO OTHER Edit Successfully', '2023-09-20 16:19:18', 1, 4, '::1'),
(862, 'Package EXPERIENCES LIKE NO OTHER Edit Successfully', '2023-09-20 16:19:28', 1, 4, '::1'),
(863, 'Package EXPERIENCES LIKE NO OTHER Edit Successfully', '2023-09-20 16:20:00', 1, 4, '::1'),
(864, 'Article \'test123\' has added successfully.', '2023-09-20 16:32:07', 1, 3, '::1'),
(865, 'Articles  [test123]Data has deleted successfully.', '2023-09-20 16:32:41', 1, 6, '::1'),
(866, 'Changes on Sub Package \'Cosmos Cafe\' has been saved successfully.', '2023-09-20 16:47:11', 1, 4, '::1'),
(867, 'Changes on Sub Package \'Cosmos Cafe\' has been saved successfully.', '2023-09-20 16:47:26', 1, 4, '::1'),
(868, 'Changes on Sub Package \'Cosmos Cafe\' has been saved successfully.', '2023-09-20 16:48:03', 1, 4, '::1'),
(869, 'Package [testsdf]Data has added successfully.', '2023-09-20 16:49:36', 1, 3, '::1'),
(870, 'Sub Package \'asdasdasdasdasd\' has added successfully.', '2023-09-20 16:50:04', 1, 3, '::1'),
(871, 'Slideshows  [asdasdasd]Data has deleted successfully.', '2023-09-20 17:01:43', 1, 6, '::1'),
(872, 'Slideshow  [asdasdasd]Data has deleted successfully.', '2023-09-20 17:01:43', 1, 6, '::1'),
(873, 'Package [testsdf]Data has deleted successfully.', '2023-09-20 17:02:26', 1, 6, '::1'),
(874, 'Package Rooms Edit Successfully', '2023-09-20 17:04:02', 1, 4, '::1'),
(875, 'Package Rooms Edit Successfully', '2023-09-20 17:04:24', 1, 4, '::1'),
(876, 'Changes on Sub Package \'NOVA SKY BAR\' has been saved successfully.', '2023-09-20 17:11:21', 1, 4, '::1'),
(877, 'Changes on Sub Package \'NOVA SKY BAR\' has been saved successfully.', '2023-09-20 17:14:01', 1, 4, '::1'),
(878, 'Changes on Sub Package \'ROOFTOP TERRACE\' has been saved successfully.', '2023-09-20 17:14:07', 1, 4, '::1'),
(879, 'Changes on Sub Package \'WEDDING AND EVENTS\' has been saved successfully.', '2023-09-20 17:14:14', 1, 4, '::1'),
(880, 'Sub Package [sadasdasd]Data has deleted successfully.', '2023-09-20 17:19:18', 1, 6, '::1'),
(881, 'Changes on Sub Package \'ROOFTOP TERRACE\' has been saved successfully.', '2023-09-20 17:20:34', 1, 4, '::1'),
(882, 'Changes on Sub Package \'WEDDING AND EVENTS\' has been saved successfully.', '2023-09-20 17:20:50', 1, 4, '::1'),
(883, 'Changes on Article \'NATURAL BEAUTY\' has been saved successfully.', '2023-09-20 17:41:50', 1, 4, '::1'),
(884, 'Login: Sky Garden Resort   logged in.', '2023-09-20 17:41:58', 1, 1, '::1'),
(885, 'Changes on Sub Package \'PINE HALL\' has been saved successfully.', '2023-09-20 18:01:22', 1, 4, '::1'),
(886, 'Changes on Sub Package \'PINE HALL\' has been saved successfully.', '2023-09-20 18:02:00', 1, 4, '::1'),
(887, 'Changes on Sub Package \'Cosmos Cafe\' has been saved successfully.', '2023-09-20 18:04:08', 1, 4, '::1'),
(888, 'Login: Sky Garden Resort   logged in.', '2023-09-21 11:55:41', 1, 1, '::1'),
(889, 'Changes on Sub Package \'PINE HALL\' has been saved successfully.', '2023-09-21 11:56:22', 1, 4, '::1'),
(890, 'Changes on Sub Package \'Cosmos Cafe\' has been saved successfully.', '2023-09-21 11:56:46', 1, 4, '::1'),
(891, 'Changes on Sub Package \'Cosmos Cafe\' has been saved successfully.', '2023-09-21 12:06:48', 1, 4, '::1'),
(892, 'Package [newpkg]Data has added successfully.', '2023-09-21 12:15:39', 1, 3, '::1'),
(893, 'Sub Package \'newsubpkg\' has added successfully.', '2023-09-21 12:15:59', 1, 3, '::1'),
(894, 'Changes on Sub Package \'newsubpkg\' has been saved successfully.', '2023-09-21 12:16:33', 1, 4, '::1'),
(895, 'Changes on Sub Package \'newsubpkg\' has been saved successfully.', '2023-09-21 12:16:46', 1, 4, '::1'),
(896, 'Changes on Article \'Dhulikhel Zipline\' has been saved successfully.', '2023-09-21 12:26:33', 1, 4, '::1'),
(897, 'Changes on Article \'Dhulikhel Zipline\' has been saved successfully.', '2023-09-21 12:26:45', 1, 4, '::1'),
(898, 'Changes on Article \'Dhulikhel Zipline\' has been saved successfully.', '2023-09-21 12:26:53', 1, 4, '::1'),
(899, 'Changes on Article \'Dhulikhel Zipline\' has been saved successfully.', '2023-09-21 12:27:24', 1, 4, '::1'),
(900, 'Changes on Article \'Dhulikhel Zipline\' has been saved successfully.', '2023-09-21 12:27:29', 1, 4, '::1'),
(901, 'Changes on Article \'Dhulikhel Zipline\' has been saved successfully.', '2023-09-21 12:31:32', 1, 4, '::1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_logs_action`
--

CREATE TABLE `tbl_logs_action` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `bgcolor` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_logs_action`
--

INSERT INTO `tbl_logs_action` (`id`, `title`, `icon`, `bgcolor`) VALUES
(1, 'Login', 'icon-sign-in', 'bg-blue'),
(2, 'Logout', 'icon-sign-out', 'primary-bg'),
(3, 'Add', 'icon-plus-circle', 'bg-green'),
(4, 'Edit', 'icon-edit', 'bg-blue-alt'),
(5, 'Copy', 'icon-copy', 'ui-state-default'),
(6, 'Delete', 'icon-clock-os-circle', 'bg-red');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `linksrc` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `parentOf` int(11) NOT NULL DEFAULT 0,
  `linktype` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(1) NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_menu`
--

INSERT INTO `tbl_menu` (`id`, `name`, `linksrc`, `parentOf`, `linktype`, `status`, `sortorder`, `added_date`, `type`, `icon`) VALUES
(1, 'Home', 'home', 0, '0', 1, 1, '2022-09-08 12:09:03', 1, ''),
(2, 'About Us', 'natural-beauty', 0, '0', 1, 2, '2022-09-08 12:09:15', 1, ''),
(3, 'Our Rooms', 'rooms', 0, '0', 1, 3, '2022-09-08 12:09:24', 1, ''),
(7, 'Events', 'hall', 0, '0', 1, 5, '2022-09-08 12:10:17', 1, ''),
(8, 'Dining', 'dining', 0, '0', 1, 4, '2022-09-08 12:10:24', 1, ''),
(10, 'Gallery', 'gallery-list', 0, '0', 1, 6, '2022-09-08 12:10:39', 1, ''),
(11, 'Contact', 'contact-us', 0, '0', 1, 7, '2022-09-08 12:10:50', 1, ''),
(12, 'Home', 'home', 0, '0', 1, 8, '2023-08-13 15:38:44', 2, ''),
(13, 'Rooms', 'rooms-suites', 0, '0', 1, 10, '2023-08-13 15:39:16', 2, ''),
(15, 'About Hotel', 'about-us', 0, '0', 1, 9, '2023-08-13 15:40:01', 2, ''),
(16, 'Contact', 'contact-us', 0, '0', 1, 11, '2023-08-13 15:40:10', 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mlink`
--

CREATE TABLE `tbl_mlink` (
  `mod_class` varchar(50) NOT NULL,
  `m_url` tinytext NOT NULL,
  `act_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mlink`
--

INSERT INTO `tbl_mlink` (`mod_class`, `m_url`, `act_id`) VALUES
('Package', 'rooms-suites', 3),
('Package', 'other-services', 4),
('Subpackage', 'the-restaurant', 41),
('Package', 'rooms', 1),
('Subpackage', 'special-offer', 42),
('Subpackage', 'asdasd', 51),
('Package', 'hall', 6),
('Subpackage', 'pine-hall', 52),
('Subpackage', 'rosewood-hall', 53),
('Package', 'dining', 7),
('Subpackage', 'cosmos-cafe', 54),
('Subpackage', 'nebula-restaurant', 55),
('Article', 'bhotekoshi-rafting', 15),
('Article', 'hajar-sidi', 16),
('Article', 'kailasnath-mahadev-statue', 17),
('Article', 'namobuddha-monastery', 18),
('Article', 'natural-beauty', 10),
('Package', 'experiences-like-no-other', 8),
('Subpackage', 'wedding-and-events', 56),
('Subpackage', 'rooftop-terrace', 57),
('Subpackage', 'nova-sky-bar', 58),
('Subpackage', 'standard-room', 59),
('Subpackage', 'deluxe-room', 60),
('Subpackage', 'executive-room', 61),
('Subpackage', 'family-suite', 63),
('Subpackage', 'suite-room', 64),
('Subpackage', 'superior-suite', 65),
('Subpackage', 'luna-restaurant', 66),
('Subpackage', 'orion-restaurant', 67),
('Subpackage', 'maple-hall', 68),
('Package', 'newpkg', 10),
('Subpackage', 'newsubpkg', 71),
('Article', 'dhulikhel-zipline', 14);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_modules`
--

CREATE TABLE `tbl_modules` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'dashboard',
  `mode` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `icon_link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` date NOT NULL,
  `properties` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_modules`
--

INSERT INTO `tbl_modules` (`id`, `parent_id`, `name`, `link`, `mode`, `icon_link`, `status`, `sortorder`, `added_date`, `properties`) VALUES
(1, 0, 'User Mgmt', 'user/list', 'user', 'icon-users', 1, 1, '0000-00-00', ''),
(2, 0, 'Menu Mgmt', 'menu/list', 'menu', 'icon-list', 1, 2, '0000-00-00', 'a:1:{s:5:\"level\";s:1:\"3\";}'),
(3, 0, 'Articles Mgmt', 'articles/list', 'articles', 'icon-adn', 1, 3, '0000-00-00', 'a:2:{s:8:\"imgwidth\";s:3:\"400\";s:9:\"imgheight\";s:3:\"350\";}'),
(4, 0, 'Slideshow Mgmt', 'slideshow/list', 'slideshow', 'icon-film', 1, 5, '0000-00-00', 'a:2:{s:8:\"imgwidth\";s:4:\"1263\";s:9:\"imgheight\";s:3:\"675\";}'),
(5, 0, 'Gallery Mgmt', 'gallery/list', 'gallery', 'icon-picture-o', 1, 6, '0000-00-00', 'a:4:{s:8:\"imgwidth\";s:3:\"800\";s:9:\"imgheight\";s:3:\"600\";s:9:\"simgwidth\";s:3:\"400\";s:10:\"simgheight\";s:3:\"350\";}'),
(6, 0, 'News Mgmt', 'news/list', 'news', 'icon-list-alt', 0, 19, '0000-00-00', 'a:2:{s:8:\"imgwidth\";s:3:\"300\";s:9:\"imgheight\";s:3:\"300\";}'),
(7, 0, 'Event Mgmt', 'events/list', 'events', 'icon-bullhorn', 0, 10, '0000-00-00', ''),
(8, 0, 'Advertisement Mgmt', 'advertisement/list', 'advertisement', 'icon-indent', 0, 4, '0000-00-00', 'a:8:{s:9:\"limgwidth\";s:3:\"100\";s:10:\"limgheight\";s:3:\"200\";s:9:\"timgwidth\";s:3:\"300\";s:10:\"timgheight\";s:3:\"400\";s:9:\"rimgwidth\";s:3:\"500\";s:10:\"rimgheight\";s:3:\"600\";s:9:\"bimgwidth\";s:3:\"700\";s:10:\"bimgheight\";s:3:\"800\";}'),
(9, 0, 'Video Mgmt', 'video/list', 'video', 'icon-hdd-o', 0, 13, '0000-00-00', ''),
(10, 0, 'Poll Mgmt', 'poll/list', 'poll', 'icon-exchange', 0, 22, '0000-00-00', ''),
(11, 0, 'Social Link Mgmt', 'social/list', 'social', 'icon-google-plus', 1, 11, '0000-00-00', 'a:2:{s:8:\"imgwidth\";s:2:\"14\";s:9:\"imgheight\";s:2:\"13\";}'),
(12, 0, 'Setting Mgmt', 'setting/list', 'settings', 'icon-gear', 1, 21, '0000-00-00', ''),
(13, 12, 'Preference Mgmt', 'preference/list', 'preference', 'icon-gear', 1, 1, '0000-00-00', 'a:4:{s:8:\"imgwidth\";s:2:\"50\";s:9:\"imgheight\";s:2:\"50\";s:9:\"simgwidth\";s:3:\"125\";s:10:\"simgheight\";s:2:\"80\";}'),
(14, 12, 'Office Info/Location', 'location/list', 'location', 'icon-gear', 1, 2, '0000-00-00', ''),
(15, 12, 'Modules Mgmt', 'module/list', 'module', 'icon-gear', 0, 3, '0000-00-00', ''),
(16, 12, 'Properties Mgmt', 'properties/list', 'properties', 'icon-gear', 0, 4, '0000-00-00', ''),
(17, 0, 'Testimonial', 'testimonial/list', 'testimonial', 'icon-list-alt', 0, 12, '0000-00-00', 'a:2:{s:8:\"imgwidth\";s:3:\"100\";s:9:\"imgheight\";s:3:\"100\";}'),
(18, 0, 'Subscribers Mgmt', 'subscribers/list', 'subscribers', 'icon-comments', 0, 14, '2015-05-17', ''),
(19, 0, 'Offers Mgmt', 'offers/list', 'offers', 'icon-tags', 0, 18, '2015-05-20', 'a:2:{s:8:\"imgwidth\";s:3:\"200\";s:9:\"imgheight\";s:3:\"200\";}'),
(20, 0, 'Services Mgmt', 'services/list', 'services', 'icon-exchange', 1, 16, '2015-08-09', 'a:2:{s:8:\"imgwidth\";s:2:\"48\";s:9:\"imgheight\";s:2:\"48\";}'),
(21, 0, 'Movies Mgmt', 'movies/list', 'movies', 'icon-list', 0, 15, '2015-10-30', ''),
(22, 0, 'Theaters', 'theaters/list', 'theaters', 'icon-film', 0, 17, '2015-11-01', ''),
(23, 25, 'Package Mgmt', 'package/list', 'package', 'icon-exchange', 1, 2, '2016-06-17', 'a:2:{s:8:\"imgwidth\";s:3:\"400\";s:9:\"imgheight\";s:3:\"350\";}'),
(24, 25, 'Features Mgmt', 'features/list', 'features', 'icon-gear', 1, 1, '2016-11-16', ''),
(25, 0, 'Package Mgmt', '', '', 'icon-bullhorn', 1, 9, '2016-11-16', ''),
(26, 0, 'Activity Mgmt', 'activity/list', 'activity', '\r\nicon-hand-o-left', 0, 7, '0000-00-00', 'a:4:{s:8:\"imgwidth\";s:3:\"800\";s:9:\"imgheight\";s:3:\"600\";s:9:\"simgwidth\";s:3:\"400\";s:10:\"simgheight\";s:3:\"350\";}'),
(27, 0, 'Blog Mgmt', 'blog/list', 'blog', '\r\n\r\n\r\n\r\nicon-list-alt', 0, 8, '0000-00-00', 'a:4:{s:8:\"imgwidth\";s:3:\"800\";s:9:\"imgheight\";s:3:\"600\";s:9:\"simgwidth\";s:3:\"400\";s:10:\"simgheight\";s:3:\"350\";}'),
(28, 0, 'Popup', 'popup/list', 'popup', 'icon-list', 0, 20, '2020-02-13', 'a:2:{s:8:\"imgwidth\";s:3:\"300\";s:9:\"imgheight\";s:3:\"300\";}'),
(29, 0, ' News/Events Mgmt', 'combinednews/list', 'combinednews', 'icon-tags', 0, 14, '2020-09-05', 'a:2:{s:8:\"imgwidth\";s:3:\"350\";s:9:\"imgheight\";s:3:\"240\";}'),
(30, 0, 'Product Mgmt', 'product/list', 'product', 'icon-list', 0, 1, '2021-11-25', ''),
(100, 0, 'Vacancy Mgmt', 'vacency/list', 'vacency', 'icon-list', 0, 5, '2023-08-28', ''),
(200, 0, 'Nearby ', 'nearby/list', 'nearby', 'icon-list', 1, 8, '2023-08-29', ''),
(300, 0, 'FAQ', 'faq/list', 'faq', 'icon-list', 0, 8, '2023-08-28', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nearby`
--

CREATE TABLE `tbl_nearby` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` text NOT NULL,
  `content` text NOT NULL,
  `linktype` tinyint(1) NOT NULL DEFAULT 0,
  `linksrc` tinytext NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `meta_title` tinytext NOT NULL,
  `meta_keywords` varchar(250) NOT NULL,
  `meta_description` varchar(250) NOT NULL,
  `type` int(1) NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `modified_date` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `homepage` int(1) NOT NULL DEFAULT 0,
  `image` blob NOT NULL,
  `date` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL,
  `distance` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_nearby`
--

INSERT INTO `tbl_nearby` (`id`, `parent_id`, `slug`, `title`, `sub_title`, `content`, `linktype`, `linksrc`, `status`, `meta_title`, `meta_keywords`, `meta_description`, `type`, `added_date`, `modified_date`, `sortorder`, `homepage`, `image`, `date`, `category`, `distance`) VALUES
(14, 0, 'dhulikhel-zipline', 'Dhulikhel Zipline', '', '', 0, 'natural-beauty', 1, '', '', '', 0, '2023-09-19 12:30:09', '2023-09-21 12:31:32', 1, 0, 0x613a313a7b693a303b733a31343a225542744f422d696d67312e6a7067223b7d, '', '', ''),
(15, 0, 'bhotekoshi-rafting', 'Bhotekoshi Rafting', '', '', 0, '', 1, '', '', '', 0, '2023-09-19 12:30:38', '2023-09-19 12:30:38', 2, 0, 0x613a313a7b693a303b733a31343a226e3775504d2d696d67322e6a7067223b7d, '', '', ''),
(16, 0, 'hajar-sidi', 'Hajar Sidi', '', '', 0, '', 1, '', '', '', 0, '2023-09-19 12:30:56', '2023-09-19 12:30:56', 3, 0, 0x613a313a7b693a303b733a31343a224b573061312d696d67332e6a7067223b7d, '', '', ''),
(17, 0, 'kailasnath-mahadev-statue', 'Kailasnath Mahadev Statue', '', '', 0, '', 1, '', '', '', 0, '2023-09-19 12:31:10', '2023-09-19 12:31:10', 4, 0, 0x613a313a7b693a303b733a31343a22775142765a2d696d67342e6a7067223b7d, '', '', ''),
(18, 0, 'namobuddha-monastery', 'Namobuddha Monastery', '', '', 0, '', 1, '', '', '', 0, '2023-09-19 12:31:26', '2023-09-19 12:31:26', 5, 0, 0x613a313a7b693a303b733a31343a224b703759312d696d67352e6a7067223b7d, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news`
--

CREATE TABLE `tbl_news` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `brief` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `content` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `news_date` date NOT NULL,
  `archive_date` date DEFAULT NULL,
  `sortorder` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `image` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `source` longtext COLLATE utf8_unicode_ci NOT NULL,
  `type` int(1) NOT NULL,
  `viewcount` int(11) NOT NULL DEFAULT 0,
  `meta_keywords` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `added_date` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_offers`
--

CREATE TABLE `tbl_offers` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `list_image` varchar(255) NOT NULL,
  `adults` int(11) NOT NULL,
  `children` int(11) NOT NULL,
  `linksrc` varchar(255) NOT NULL,
  `linktype` tinyint(1) NOT NULL DEFAULT 0,
  `rate` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `brief` tinytext NOT NULL,
  `content` longtext NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `added_date` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_offer_child`
--

CREATE TABLE `tbl_offer_child` (
  `offer_id` int(11) NOT NULL,
  `offer_pax` varchar(200) NOT NULL,
  `offer_usd` varchar(10) NOT NULL,
  `offer_inr` varchar(10) NOT NULL,
  `offer_npr` varchar(10) NOT NULL,
  `offer_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_package`
--

CREATE TABLE `tbl_package` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `home_title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `sub_title` text COLLATE utf8_unicode_ci NOT NULL,
  `sub_sub_title` text CHARACTER SET utf8 NOT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `header_image` text COLLATE utf8_unicode_ci NOT NULL,
  `banner_image` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `detail` longtext COLLATE utf8_unicode_ci NOT NULL,
  `content` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `meta_title` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_keywords` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `modified_date` varchar(50) CHARACTER SET utf8 NOT NULL,
  `type` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_package`
--

INSERT INTO `tbl_package` (`id`, `slug`, `title`, `home_title`, `sub_title`, `sub_sub_title`, `image`, `header_image`, `banner_image`, `detail`, `content`, `meta_title`, `meta_keywords`, `meta_description`, `status`, `sortorder`, `added_date`, `modified_date`, `type`) VALUES
(1, 'rooms', 'Rooms', '<h2>LUXURY <span style=\"color: #022065;\"> JUNGLE RETREAT</span></h2>', 'THE ULTIMATE COMFORT', 'Discover your oasis of relaxation', '', 'a:0:{}', 'a:1:{i:0;s:21:\"nbYju-room-banner.jpg\";}', '                <p>Comfortable beds, elegant décor, and personalized service await you for a refreshing and restful stay</p>\r\n                <p>Designed to frame nature, our rooms are spacious, provide all modern amenities and come with a private balcony for you and your loved ones to create magical moments together</p>\r\n                <p>Every detail has been carefully crafted to offer a special stay and a personal indulgent retreat</p>', '<p>\r\n	Our luxury rooms offer private terraces with views of urban landscapes and lush<br />\r\n	greenery, with outdoor spaces and modern d&eacute;cor for the ultimate relaxation</p>\r\n', '', '', '', 1, 1, '2023-08-25 15:05:20', '2023-09-20 17:04:23', 1),
(6, 'hall', 'Hall', 'MEETING AND<span style=\"color: #176533;\"> CONFERENCE</span>', 'PRIVATE EVENTS', 'The ideal backdrop for your special moments', '', 'a:2:{i:0;s:15:\"QhjG4-hall1.jpg\";i:1;s:15:\"l2hAE-hall2.jpg\";}', 'a:1:{i:0;s:21:\"IkXXm-hall-banner.jpg\";}', 'Three separate, spacious, and fully equipped halls with all the necessary facilities, perfect or any size event or celebration', '<p>\r\n	Our conference halls provide state-of-the-art facilities, a private breakout room and<br />\r\n	private lobby to ensure successful and memorable events for you and your guests<br />\r\n	<br />\r\n	Our halls can also be set up in different styles depending on your requirements</p>\r\n', '', '', '', 1, 2, '2023-09-17 17:07:19', '2023-09-19 16:56:26', 0),
(7, 'dining', 'Dining', 'RESTAURANT AND<span style=\"color: #176533;\"> BAR</span>', 'FOOD AND DRINKS', 'International flavors and locally inspired cuisines', '', 'a:3:{i:0;s:15:\"hkMUI-menu1.jpg\";i:1;s:15:\"8pyDM-menu2.jpg\";i:2;s:15:\"1apHL-menu5.jpg\";}', 'a:1:{i:0;s:23:\"v5B6u-about-banner1.jpg\";}', 'Our dining philosophy is more than just food with an offering of four restaurants across multiple floors, each offering a distinct look and feel', '<p>\r\n	Our modern dining rooms are spacious, with the interiors elevated by traditional art<br />\r\n	and subtle jazz to transform a simple meal into a full dining experience</p>\r\n', '', '', '', 1, 3, '2023-09-18 12:27:01', '2023-09-20 13:00:44', 0),
(8, 'experiences-like-no-other', 'EXPERIENCES LIKE NO OTHER', 'EXPERIENCES <span style=\"color:#85B3A9;\"> LIKE NO OTHER</span>', 'EXPERIENCES LIKE NO OTHER', 'EXPERIENCES LIKE NO OTHER', '', 'a:4:{i:0;s:15:\"i0gP6-menu1.jpg\";i:1;s:14:\"mx9ud-img7.jpg\";i:2;s:14:\"gig9c-img6.jpg\";i:3;s:14:\"Gs8lU-img8.jpg\";}', 'a:0:{}', '', '<p>\r\n	&nbsp;</p>\r\n<p>\r\n	Perched high among the lush jungle landscape, our rooftop jacuzzi and signature drinks offer a truly immersive escape</p>\r\n<br />\r\n<p>\r\n	As you sink into the warm, bubbling waters of our rooftop jacuzzi, the sounds of rustling leaves and distant birdcalls seamlessly blends relaxation and wilderness for an immersive escape above the urban hustle</p>\r\n', '', '', '', 1, 4, '2023-09-19 13:07:33', '2023-09-20 16:20:00', 0),
(10, 'newpkg', 'newpkg', 'asdasd', 'asdasd', 'sadasd', '', 'a:0:{}', 'a:0:{}', '', '<p>\r\n	asd</p>\r\n', '', '', '', 1, 5, '2023-09-21 12:15:39', '2023-09-21 12:15:39', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_package_sub`
--

CREATE TABLE `tbl_package_sub` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sub_title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `detail` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `header_image` text COLLATE utf8_unicode_ci NOT NULL,
  `image2` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `image3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `feature` blob NOT NULL,
  `content` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `facility_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `number_room` int(11) NOT NULL,
  `currency` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `discount` int(11) NOT NULL,
  `people_qnty` int(11) NOT NULL,
  `onep_price` int(11) NOT NULL,
  `twop_price` int(11) NOT NULL,
  `threep_price` int(11) NOT NULL,
  `oneb_price` int(11) NOT NULL,
  `twob_price` int(11) NOT NULL,
  `threeb_price` int(11) NOT NULL,
  `extra_bed` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `short_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `serve` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `theatre_style` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `class_room_style` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shape` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `round_table` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `clusture` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cocktail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `seats` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `meta_title` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_keywords` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `modified_date` varchar(50) CHARACTER SET utf8 NOT NULL,
  `type` tinyint(2) NOT NULL DEFAULT 0,
  `below_content` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `seminar` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `meeting` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `events` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `conference` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `catering` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `celebration` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `organic_food` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `occupancy` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `view` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `size` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `service` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `live_music` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `bed` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `room_size` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `room_service` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `airport_pickup` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `private_balcony` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `checkinout` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_package_sub`
--

INSERT INTO `tbl_package_sub` (`id`, `slug`, `title`, `sub_title`, `detail`, `image`, `header_image`, `image2`, `image3`, `feature`, `content`, `facility_title`, `number_room`, `currency`, `discount`, `people_qnty`, `onep_price`, `twop_price`, `threep_price`, `oneb_price`, `twob_price`, `threeb_price`, `extra_bed`, `short_title`, `time`, `location`, `serve`, `theatre_style`, `class_room_style`, `shape`, `round_table`, `clusture`, `cocktail`, `seats`, `meta_title`, `meta_keywords`, `meta_description`, `status`, `sortorder`, `added_date`, `modified_date`, `type`, `below_content`, `seminar`, `meeting`, `events`, `conference`, `catering`, `celebration`, `organic_food`, `occupancy`, `view`, `size`, `service`, `live_music`, `bed`, `room_size`, `room_service`, `airport_pickup`, `private_balcony`, `checkinout`) VALUES
(52, 'pine-hall', 'PINE HALL', '', '', 'a:2:{i:0;s:15:\"hY3M8-menu1.jpg\";i:1;s:20:\"UjsBf-orion-hall.jpg\";}', '', '', '', 0x613a323a7b693a3136313b613a323a7b693a303b613a313a7b693a303b733a303a22223b7d693a313b613a31313a7b693a303b733a333a22313736223b693a313b733a333a22313735223b693a323b733a333a22313734223b693a333b733a333a22313730223b693a343b733a333a22313639223b693a353b733a333a22313637223b693a363b733a333a22313636223b693a373b733a333a22313635223b693a383b733a333a22313634223b693a393b733a333a22313633223b693a31303b733a333a22313632223b7d7d693a3133343b613a323a7b693a303b613a313a7b693a303b733a303a22223b7d693a313b733a303a22223b7d7d, '<p>\r\n	Our largest and most spacious hall with magical sunset views, perfect for large celebration or events<br />\r\n	<br />\r\n	With a capacity of 500 guests, an end-to-end bar, surround sound system and a performance stage, bring your special moments to life with our in house expert event planning team</p>\r\n', '', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 15, '2023-09-17 17:11:15', '2023-09-21 11:56:22', 6, '<div class=\"amenities-content\">\r\n	<div class=\"row justify-content-center\">\r\n		<div class=\"col-lg-3 col-md-6\">\r\n			<div class=\"amt-item mar-bottom-30\">\r\n				<div class=\"amt-icon\">\r\n					<img src=\"template/web/images/icons/eventicon/u.jpeg\" /></div>\r\n				<h3>\r\n					U Shape</h3>\r\n				<h4>\r\n					250 pax</h4>\r\n			</div>\r\n		</div>\r\n		<div class=\"col-lg-3 col-md-6\">\r\n			<div class=\"amt-item mar-bottom-30\">\r\n				<div class=\"amt-icon\">\r\n					<img src=\"template/web/images/icons/eventicon/class.jpeg\" /></div>\r\n				<h3>\r\n					Class Room</h3>\r\n				<h4>\r\n					400 pax</h4>\r\n			</div>\r\n		</div>\r\n		<div class=\"col-lg-3 col-md-6\">\r\n			<div class=\"amt-item mar-bottom-30\">\r\n				<div class=\"amt-icon\">\r\n					<img src=\"template/web/images/icons/eventicon/theatre.jpeg\" /></div>\r\n				<h3>\r\n					Theatre</h3>\r\n				<h4>\r\n					500 pax</h4>\r\n			</div>\r\n		</div>\r\n		<div class=\"col-lg-3 col-md-6\">\r\n			<div class=\"amt-item mar-bottom-30\">\r\n				<div class=\"amt-icon\">\r\n					<img src=\"template/web/images/icons/eventicon/round.jpeg\" /></div>\r\n				<h3>\r\n					Round Table</h3>\r\n				<h4>\r\n					400 pax</h4>\r\n			</div>\r\n		</div>\r\n	</div>\r\n</div>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '4500 Sq.ft', '', '', '', ''),
(53, 'rosewood-hall', 'ROSEWOOD HALL', '', '', 'a:1:{i:0;s:22:\"XfOxF-hall-banner1.jpg\";}', '', '', '', 0x613a323a7b693a3136313b613a323a7b693a303b613a313a7b693a303b733a303a22223b7d693a313b613a31323a7b693a303b733a333a22313733223b693a313b733a333a22313732223b693a323b733a333a22313731223b693a333b733a333a22313730223b693a343b733a333a22313639223b693a353b733a333a22313638223b693a363b733a333a22313637223b693a373b733a333a22313636223b693a383b733a333a22313635223b693a393b733a333a22313634223b693a31303b733a333a22313633223b693a31313b733a333a22313632223b7d7d693a3133343b613a323a7b693a303b613a313a7b693a303b733a303a22223b7d693a313b733a303a22223b7d7d, '<p>\r\n	Perfect for large seminars and conferences, with essential facilities including air conditioning<br />\r\n	<br />\r\n	Organize private events your way with a dedicated open terrace space alongside the hall, a private lobby, and a private breakout room<br />\r\n	<br />\r\n	With a capacity of 300 guests, Rosewood Hall is the ideal venue for all occasions</p>\r\n', '', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 12, '2023-09-18 12:18:13', '2023-09-20 12:34:56', 6, '<div class=\"amenities-content\">\r\n	<div class=\"row justify-content-center\">\r\n		<div class=\"col-lg-3 col-md-6\">\r\n			<div class=\"amt-item mar-bottom-30\">\r\n				<div class=\"amt-icon\">\r\n					<img src=\"template/web/images/icons/eventicon/u.jpeg\" /></div>\r\n				<h3>\r\n					U Shape</h3>\r\n				<h4>\r\n					100 pax</h4>\r\n			</div>\r\n		</div>\r\n		<div class=\"col-lg-3 col-md-6\">\r\n			<div class=\"amt-item mar-bottom-30\">\r\n				<div class=\"amt-icon\">\r\n					<img src=\"template/web/images/icons/eventicon/class.jpeg\" /></div>\r\n				<h3>\r\n					Class Room</h3>\r\n				<h4>\r\n					200 pax</h4>\r\n			</div>\r\n		</div>\r\n		<div class=\"col-lg-3 col-md-6\">\r\n			<div class=\"amt-item mar-bottom-30\">\r\n				<div class=\"amt-icon\">\r\n					<img src=\"template/web/images/icons/eventicon/theatre.jpeg\" /></div>\r\n				<h3>\r\n					Theatre</h3>\r\n				<h4>\r\n					250 pax</h4>\r\n			</div>\r\n		</div>\r\n		<div class=\"col-lg-3 col-md-6\">\r\n			<div class=\"amt-item mar-bottom-30\">\r\n				<div class=\"amt-icon\">\r\n					<img src=\"template/web/images/icons/eventicon/round.jpeg\" /></div>\r\n				<h3>\r\n					Round Table</h3>\r\n				<h4>\r\n					200 pax</h4>\r\n			</div>\r\n		</div>\r\n	</div>\r\n</div>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(54, 'cosmos-cafe', 'Cosmos Cafe', '', '', 'a:2:{i:0;s:15:\"N1E3F-menu2.jpg\";i:1;s:15:\"huXjI-dine1.jpg\";}', '', '', '', 0x613a303a7b7d, '<p>\r\n	this is test</p>\r\n', '', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 'All Day Dining', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 13, '2023-09-18 12:49:12', '2023-09-21 12:06:48', 7, '', '', '', '', '', '', '', '', '50 pax', '', '', '', '', '', '', '', '', '', '7:00 am to 11:00 pm'),
(55, 'nebula-restaurant', 'Nebula Restaurant', '', '', 'a:1:{i:0;s:17:\"Hp2b4-dining2.jpg\";}', '', '', '', 0x613a303a7b7d, '', '', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 'All Day Dining', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 9, '2023-09-18 12:55:17', '2023-09-18 13:00:44', 7, '', '', '', '', '', '', '', '', '100 pax', '', '', '', '', '', '', '', '', '', '7:00 am to 11:00 pm'),
(56, 'wedding-and-events', 'WEDDING AND EVENTS', '', 'Located on the top floor with a collection of carefully selected cocktails, showcasing the finest ingredients and flavour combinations', 'a:1:{i:0;s:14:\"JyIao-act1.jpg\";}', '', '', '', 0x613a303a7b7d, '', '', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 1, '2023-09-19 13:08:22', '2023-09-20 17:20:50', 8, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(57, 'rooftop-terrace', 'ROOFTOP TERRACE', '', 'Exclusive double storey terrace on the top floors for an intimate sky-high retreat with immersive mountain, city, and jungle view', 'a:1:{i:0;s:14:\"eNNqI-act2.jpg\";}', '', '', '', 0x613a303a7b7d, '', '', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 2, '2023-09-19 13:09:19', '2023-09-20 17:20:34', 8, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(58, 'nova-sky-bar', 'NOVA SKY BAR', '', 'Located on the top floor with a collection of carefully selected cocktails, showcasing the finest ingredients and flavour combinations', 'a:1:{i:0;s:14:\"Eciby-act3.jpg\";}', '', '', '', 0x613a303a7b7d, '', '', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 3, '2023-09-19 13:10:15', '2023-09-20 17:14:01', 8, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(59, 'standard-room', 'Standard Room', '', 'A comfortable stay in spacious accommodation with all the essential facilities and scenic valley views from your bedside', 'a:1:{i:0;s:15:\"XTeqC-room1.jpg\";}', '', 'xnQAz-room1.jpg', '', 0x613a313a7b693a3133343b613a323a7b693a303b613a313a7b693a303b733a303a22223b7d693a313b613a31343a7b693a303b733a333a22313439223b693a313b733a333a22313438223b693a323b733a333a22313437223b693a333b733a333a22313436223b693a343b733a333a22313435223b693a353b733a333a22313434223b693a363b733a333a22313433223b693a373b733a333a22313536223b693a383b733a333a22313535223b693a393b733a333a22313534223b693a31303b733a333a22313533223b693a31313b733a333a22313532223b693a31323b733a333a22313531223b693a31333b733a333a22313530223b7d7d7d, '<h3>\r\n	A 180-square-foot room featuring a double bed, floor to ceiling wardrobes and a dedicated work desk space equipped with high-speed internet access<br />\r\n	<br />\r\n	Decorated in elegant granite textures as well as wooden flooring and ceiling decorations reflects the jungle environment, with standard hotel amenities</h3>\r\n<h3>\r\n	CHILDREN POLICY: One child 6 years and below is complementary on a sharing bed basis with parents. Any additional child or children above 6 are subject to a charge of 50% of the single adult rate</h3>\r\n<h3>\r\n	Prices are subject to 13% VAT</h3>\r\n', '', 0, 'USD', 0, 0, 40, 0, 45, 0, 0, 0, 'Double Bed', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 16, '2023-09-19 16:39:55', '2023-09-19 17:30:57', 1, '', '', '', '', '', '', '', '', '2 adult', '', '', '', '', '', '180 sq.ft', '', '', '', '12:00 Noon'),
(60, 'deluxe-room', 'Deluxe Room', '', 'An exceptional stay in comfort with standard hotel amenities and views overlooking mystic vistas, the city and beyond', 'a:1:{i:0;s:15:\"uRnnI-room4.jpg\";}', '', 'cPV1v-room4.jpg', '', 0x613a313a7b693a3133343b613a323a7b693a303b613a313a7b693a303b733a303a22223b7d693a313b613a31343a7b693a303b733a333a22313536223b693a313b733a333a22313535223b693a323b733a333a22313534223b693a333b733a333a22313533223b693a343b733a333a22313532223b693a353b733a333a22313531223b693a363b733a333a22313530223b693a373b733a333a22313439223b693a383b733a333a22313438223b693a393b733a333a22313437223b693a31303b733a333a22313436223b693a31313b733a333a22313435223b693a31323b733a333a22313434223b693a31333b733a333a22313433223b7d7d7d, '<h3>\r\n	300-square-feet of ultimate comfort featuring one double bed and one single bed, floor to ceiling wardrobes and a dedicated work desk space equipped with high-speed internet access<br />\r\n	<br />\r\n	Decorated in elegant granite textures as well as wooden flooring and ceiling decorations reflects the jungle environment, with standard hotel amenities</h3>\r\n<h3>\r\n	CHILDREN POLICY: One child 6 years and below is complementary on a sharing bed basis with parents. Any additional child or children above 6 are subject to a charge of 50% of the single adult rate</h3>\r\n<h3>\r\n	Prices are subject to 13% VAT</h3>\r\n', '', 0, 'USD', 0, 0, 45, 0, 55, 0, 0, 0, 'Double and Single Bed', 'Soak up hypnotizing botanical views in comfort', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 14, '2023-09-19 17:39:43', '2023-09-19 17:43:58', 1, '', '', '', '', '', '', '', '', '3 adult', '', '', '', '', '', '300 sq.ft', '', '', '', '12:00 Noon'),
(61, 'executive-room', 'Executive Room', '', 'Designed for comfort with enchanting jungle, valley and city views from your private terrace', 'a:1:{i:0;s:15:\"SqaBs-room3.jpg\";}', '', 'lV2D9-room3.jpg', '', 0x613a313a7b693a3133343b613a323a7b693a303b613a313a7b693a303b733a303a22223b7d693a313b613a31363a7b693a303b733a333a22313536223b693a313b733a333a22313535223b693a323b733a333a22313534223b693a333b733a333a22313533223b693a343b733a333a22313532223b693a353b733a333a22313531223b693a363b733a333a22313530223b693a373b733a333a22313439223b693a383b733a333a22313438223b693a393b733a333a22313437223b693a31303b733a333a22313436223b693a31313b733a333a22313435223b693a31323b733a333a22313434223b693a31333b733a333a22313433223b693a31343b733a333a22313538223b693a31353b733a333a22313537223b7d7d7d, '<h3>\r\n	325-square-feet of ultimate comfort featuring one double bed, a private terrace, floor to ceiling wardrobes and a dedicated work desk space equipped with high-speed internet access<br />\r\n	<br />\r\n	Decorated in elegant granite textures as well as wooden flooring and ceiling decorations reflects the jungle environment, with standard hotel amenities</h3>\r\n<h3>\r\n	CHILDREN POLICY: One child 6 years and below is complementary on a sharing bed basis with parents. Any additional child or children above 6 are subject to a charge of 50% of the single adult rate</h3>\r\n<h3>\r\n	Prices are subject to 13% VAT</h3>\r\n', '', 0, 'USD', 0, 0, 55, 0, 60, 0, 0, 0, 'Double Bed', 'Immerse in the vibrancy and melodies of Mother Nature', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 7, '2023-09-19 17:49:40', '2023-09-19 17:55:14', 1, '', '', '', '', '', '', '', '', '2 adult', '', '', '', '', '', '325 sq.ft', '', '', '', '12:00 Noon'),
(63, 'family-suite', 'FAMILY SUITE', '', 'Large, cozy and designed for the ultimate family comfort with standard hotel amenities, a double bed, two single beds, and a play area', 'a:1:{i:0;s:15:\"eIT9a-room5.jpg\";}', '', 'XlWaU-room5.jpg', '', 0x613a313a7b693a3133343b613a323a7b693a303b613a313a7b693a303b733a303a22223b7d693a313b613a31363a7b693a303b733a333a22313538223b693a313b733a333a22313537223b693a323b733a333a22313536223b693a333b733a333a22313535223b693a343b733a333a22313534223b693a353b733a333a22313533223b693a363b733a333a22313532223b693a373b733a333a22313531223b693a383b733a333a22313530223b693a393b733a333a22313439223b693a31303b733a333a22313438223b693a31313b733a333a22313437223b693a31323b733a333a22313436223b693a31333b733a333a22313435223b693a31343b733a333a22313434223b693a31353b733a333a22313433223b7d7d7d, '<h3>\r\n	400-square-feet of ultimate relaxation featuring one double bed and two single beds, a private terrace, floor to ceiling wardrobes and a dedicated work desk space equipped with high-speed internet access<br />\r\n	<br />\r\n	Decorated in elegant granite textures as well as wooden flooring, with standard hotel amenities</h3>\r\n<h3>\r\n	CHILDREN POLICY: One child 6 years and below is complementary on a sharing bed basis with parents. Any additional child or children above 6 are subject to a charge of 50% of the single adult rate</h3>\r\n<h3>\r\n	Prices are subject to 13% VAT</h3>\r\n', '', 0, 'USD', 0, 0, 65, 0, 10, 0, 0, 0, '1 Double and 2 Single Bed', 'Spacious, inviting, and thoughtfully crafted to <br/>provide the perfect family comfort', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 10, '2023-09-20 11:44:42', '2023-09-20 11:46:48', 1, '', '', '', '', '', '', '', '', '4 Adult', '', '', '', '', '', '400 sq.ft', '', '', '', '12:00 Noon'),
(64, 'suite-room', 'SUITE ROOM', '', 'Spacious and cozy with a bathtub and private terrace for a spectacular viewpoint of the sunset, city and valley', 'a:3:{i:0;s:16:\"tbGSQ-room6a.jpg\";i:1;s:16:\"WQ7hk-room6c.jpg\";i:2;s:16:\"rdd13-room6b.jpg\";}', '', 'Flvfp-room6.jpg', '', 0x613a313a7b693a3133343b613a323a7b693a303b613a313a7b693a303b733a303a22223b7d693a313b613a31363a7b693a303b733a333a22313538223b693a313b733a333a22313537223b693a323b733a333a22313536223b693a333b733a333a22313535223b693a343b733a333a22313534223b693a353b733a333a22313533223b693a363b733a333a22313532223b693a373b733a333a22313531223b693a383b733a333a22313530223b693a393b733a333a22313439223b693a31303b733a333a22313438223b693a31313b733a333a22313437223b693a31323b733a333a22313436223b693a31333b733a333a22313435223b693a31343b733a333a22313434223b693a31353b733a333a22313433223b7d7d7d, '<h3>\r\n	360-square-feet of pure luxury featuring one double bed and one single bed, a private terrace, bathtub, floor to ceiling wardrobes and a dedicated work desk space equipped with high-speed internet access<br />\r\n	<br />\r\n	Decorated in elegant granite textures as well as wooden flooring, with standard hotel amenities</h3>\r\n<h3>\r\n	CHILDREN POLICY: One child 6 years and below is complementary on a sharing bed basis with parents. Any additional child or children above 6 are subject to a charge of 50% of the single adult rate</h3>\r\n<h3>\r\n	Prices are subject to 13% VAT</h3>\r\n', '', 0, 'USD', 0, 0, 75, 0, 85, 0, 0, 0, 'Double and Single Bed', 'Luxury hideaway nestled in tropical greenery with a private <br/>terrace overlooking the vistas below', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 5, '2023-09-20 11:50:44', '2023-09-20 11:59:13', 1, '', '', '', '', '', '', '', '', '3 Adult', '', '', '', '', '', '360 sq.ft', '', '', '', '12:00 Noon'),
(65, 'superior-suite', 'Superior Suite', '', 'Ultimate luxury and comfort with a private jacuzzi and terrace providing breathtaking mountain, city, and forest views', 'a:3:{i:0;s:16:\"2d3hX-room7a.jpg\";i:1;s:16:\"polAA-room7b.jpg\";i:2;s:16:\"BMajx-room7c.jpg\";}', '', 'no6V4-room7.jpg', '', 0x613a323a7b693a3136313b613a323a7b693a303b613a313a7b693a303b733a303a22223b7d693a313b733a303a22223b7d693a3133343b613a323a7b693a303b613a313a7b693a303b733a303a22223b7d693a313b613a31383a7b693a303b733a333a22313538223b693a313b733a333a22313537223b693a323b733a333a22313536223b693a333b733a333a22313535223b693a343b733a333a22313534223b693a353b733a333a22313533223b693a363b733a333a22313532223b693a373b733a333a22313531223b693a383b733a333a22313530223b693a393b733a333a22313439223b693a31303b733a333a22313438223b693a31313b733a333a22313437223b693a31323b733a333a22313436223b693a31333b733a333a22313435223b693a31343b733a333a22313434223b693a31353b733a333a22313433223b693a31363b733a333a22313630223b693a31373b733a333a22313539223b7d7d7d, '<h3>\r\n	380-square-feet of ultimate comfort featuring one double bed and one single bed, a private jacuzzi, bathtub, private terrace, floor to ceiling wardrobes and a dedicated work desk space equipped with high- speed internet access<br />\r\n	<br />\r\n	Decorated in elegant granite textures as well as wooden flooring, with standard hotel amenities</h3>\r\n<h3>\r\n	CHILDREN POLICY: One child 6 years and below is complementary on a sharing bed basis with parents. Any additional child or children above 6 are subject to a charge of 50% of the single adult rate</h3>\r\n<h3>\r\n	Prices are subject to 13% VAT</h3>\r\n', '', 0, 'USD', 0, 0, 100, 0, 120, 0, 0, 0, 'Double and Single Bed', 'Spacious residence complete with a private jacuzzi', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 4, '2023-09-20 12:02:44', '2023-09-20 16:14:46', 1, '', '', '', '', '', '', '', '', '3 Adult', '', '', '', '', '', '380 sq.ft', '', '', '', '12:00 Noon'),
(66, 'luna-restaurant', 'Luna Restaurant', '', '', 'a:1:{i:0;s:17:\"aqQ9M-dining1.jpg\";}', '', '', '', 0x613a303a7b7d, '', '', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 'All Day Dining', 'Luna Restaurant', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 8, '2023-09-20 12:15:06', '2023-09-20 12:15:06', 7, '', '', '', '', '', '', '', '', '100 pax', '', '', '', '', '', '', '', '', '', '7:00 am to 11:00 pm'),
(67, 'orion-restaurant', 'ORION Restaurant', '', '', 'a:1:{i:0;s:15:\"QopgW-orion.jpg\";}', '', '', '', 0x613a303a7b7d, '', '', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 'All Day Dining', 'ORION Restaurant', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 6, '2023-09-20 12:15:59', '2023-09-20 12:15:59', 7, '', '', '', '', '', '', '', '', '400 pax', '', '', '', '', '', '', '', '', '', '7:00 am to 11:00 pm'),
(68, 'maple-hall', 'MAPLE HALL', '', '', 'a:1:{i:0;s:22:\"u93pY-hall-banner2.jpg\";}', '', '', '', 0x613a323a7b693a3136313b613a323a7b693a303b613a313a7b693a303b733a303a22223b7d693a313b613a393a7b693a303b733a333a22313730223b693a313b733a333a22313639223b693a323b733a333a22313638223b693a333b733a333a22313637223b693a343b733a333a22313636223b693a353b733a333a22313635223b693a363b733a333a22313634223b693a373b733a333a22313633223b693a383b733a333a22313632223b7d7d693a3133343b613a323a7b693a303b613a313a7b693a303b733a303a22223b7d693a313b733a303a22223b7d7d, '<p>\r\n	Uniquely located on the terrace with essential facilities including air conditioning and bright valley views<br />\r\n	<br />\r\n	Organize private events your way with a dedicated open terrace space alongside the hall and a rooftop bar<br />\r\n	<br />\r\n	With a capacity of 150 guests, Maple Hall is the ideal venue for all occasions</p>\r\n', '', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 11, '2023-09-20 12:21:22', '2023-09-20 12:24:16', 6, '<div class=\"amenities-content\">\r\n	<div class=\"row justify-content-center\">\r\n		<div class=\"col-lg-3 col-md-6\">\r\n			<div class=\"amt-item mar-bottom-30\">\r\n				<div class=\"amt-icon\">\r\n					<img src=\"template/web/images/icons/eventicon/u.jpeg\" /></div>\r\n				<h3>\r\n					U Shape</h3>\r\n				<h4>\r\n					50 pax</h4>\r\n			</div>\r\n		</div>\r\n		<div class=\"col-lg-3 col-md-6\">\r\n			<div class=\"amt-item mar-bottom-30\">\r\n				<div class=\"amt-icon\">\r\n					<img src=\"template/web/images/icons/eventicon/class.jpeg\" /></div>\r\n				<h3>\r\n					Class Room</h3>\r\n				<h4>\r\n					100 pax</h4>\r\n			</div>\r\n		</div>\r\n		<div class=\"col-lg-3 col-md-6\">\r\n			<div class=\"amt-item mar-bottom-30\">\r\n				<div class=\"amt-icon\">\r\n					<img src=\"template/web/images/icons/eventicon/theatre.jpeg\" /></div>\r\n				<h3>\r\n					Theatre</h3>\r\n				<h4>\r\n					150 pax</h4>\r\n			</div>\r\n		</div>\r\n		<div class=\"col-lg-3 col-md-6\">\r\n			<div class=\"amt-item mar-bottom-30\">\r\n				<div class=\"amt-icon\">\r\n					<img src=\"template/web/images/icons/eventicon/round.jpeg\" /></div>\r\n				<h3>\r\n					Round Table</h3>\r\n				<h4>\r\n					100 pax</h4>\r\n			</div>\r\n		</div>\r\n	</div>\r\n</div>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '1400 Sq.ft.', '', '', '', ''),
(71, 'newsubpkg', 'newsubpkg', '', 'asdasd', 'a:0:{}', '', '', '', 0x613a303a7b7d, '<p>\r\n	asdasdasd</p>\r\n', '', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, '', 'asdasdasd', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 1, '2023-09-21 12:15:59', '2023-09-21 12:16:45', 10, '<p>\r\n	asdasd</p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_permission`
--

CREATE TABLE `tbl_permission` (
  `id` int(11) NOT NULL,
  `type` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `group_id` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `module_id` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_popup`
--

CREATE TABLE `tbl_popup` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `date1` date NOT NULL,
  `date2` date NOT NULL,
  `image` varchar(200) NOT NULL,
  `source` varchar(250) NOT NULL,
  `linktype` varchar(150) NOT NULL,
  `linksrc` varchar(250) NOT NULL,
  `position` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `slug` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_popup`
--

INSERT INTO `tbl_popup` (`id`, `title`, `date1`, `date2`, `image`, `source`, `linktype`, `linksrc`, `position`, `status`, `sortorder`, `type`, `slug`) VALUES
(3, 'Popup Test', '2023-08-23', '2023-08-31', 'a:1:{i:0;s:16:\"9ay6u-home-5.jpg\";}', '', '0', '', 1, 1, 1, 1, 'popup-test');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `content` text CHARACTER SET utf8 NOT NULL,
  `img_thumb` varchar(255) CHARACTER SET utf8 NOT NULL,
  `img_jpg` varchar(255) NOT NULL,
  `img_png` varchar(255) NOT NULL,
  `img_svg` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(255) NOT NULL,
  `modified_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `name`, `title`, `content`, `img_thumb`, `img_jpg`, `img_png`, `img_svg`, `status`, `sortorder`, `added_date`, `modified_date`) VALUES
(2, 'test', 'test ', '<p>\r\n	dfcgvhhjbk</p>\r\n', '', '', '', '', 1, 1, '2021-11-24 12:47:12', '2021-11-24 12:50:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_room_price`
--

CREATE TABLE `tbl_room_price` (
  `id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `season_id` int(11) NOT NULL,
  `one_person` int(11) NOT NULL,
  `two_person` int(11) NOT NULL,
  `three_person` int(11) NOT NULL,
  `registered` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_services`
--

CREATE TABLE `tbl_services` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(100) NOT NULL,
  `sub_title` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `icon` varchar(255) NOT NULL,
  `linksrc` varchar(255) NOT NULL,
  `linktype` tinyint(1) NOT NULL DEFAULT 0,
  `content` longtext NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `added_date` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `brief` varchar(250) NOT NULL,
  `meta_title` tinyint(4) NOT NULL,
  `meta_keywords` int(11) NOT NULL,
  `meta_description` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_services`
--

INSERT INTO `tbl_services` (`id`, `slug`, `title`, `sub_title`, `image`, `icon`, `linksrc`, `linktype`, `content`, `status`, `added_date`, `sortorder`, `type`, `brief`, `meta_title`, `meta_keywords`, `meta_description`) VALUES
(61, 'internet-access', 'Internet Access', '', 'a:1:{i:0;s:14:\"6vWWX-wifi.png\";}', '', '', 0, '', 1, '2023-09-15 12:41:18', 1, 0, '', 0, 0, 0),
(63, 'on-site-parking', 'On-site Parking', '', 'a:1:{i:0;s:17:\"D7wtO-parking.png\";}', '', '', 0, '', 1, '2023-09-20 15:13:53', 2, 0, '', 0, 0, 0),
(64, 'doctor-on-call', 'Doctor on Call', '', 'a:1:{i:0;s:16:\"Gdgfr-doctor.png\";}', '', '', 0, '', 1, '2023-09-20 15:14:02', 3, 0, '', 0, 0, 0),
(65, 'daily-housekeeping', 'Daily Housekeeping', '', 'a:1:{i:0;s:22:\"7KucW-housekeeping.png\";}', '', '', 0, '', 1, '2023-09-20 15:14:12', 4, 0, '', 0, 0, 0),
(66, 'credit-card-accepted', 'Credit Card Accepted', '', 'a:1:{i:0;s:14:\"YjK15-card.png\";}', '', '', 0, '', 1, '2023-09-20 15:14:22', 5, 0, '', 0, 0, 0),
(67, 'hot-and-cold-water', 'Hot and Cold Water', '', 'a:1:{i:0;s:19:\"o3vgs-hot-water.png\";}', '', '', 0, '', 1, '2023-09-20 15:14:33', 6, 0, '', 0, 0, 0),
(68, '24-hour-front-desk', '24 Hour Front Desk', '', 'a:1:{i:0;s:26:\"SAC8a-information-desk.png\";}', '', '', 0, '', 1, '2023-09-20 15:14:45', 7, 0, '', 0, 0, 0),
(69, 'room-service', 'Room Service', '', 'a:1:{i:0;s:21:\"suKDk-roomservice.png\";}', '', '', 0, '', 1, '2023-09-20 15:14:55', 8, 0, '', 0, 0, 0),
(70, 'laundry', 'Laundry', '', 'a:1:{i:0;s:17:\"weJKs-laundry.png\";}', '', '', 0, '', 1, '2023-09-20 15:15:04', 9, 0, '', 0, 0, 0),
(71, 'live-music', 'Live Music', '', 'a:1:{i:0;s:20:\"pvtAi-live-music.png\";}', '', '', 0, '', 1, '2023-09-20 15:15:21', 10, 0, '', 0, 0, 0),
(72, 'electricity-backup', 'Electricity Backup', '', 'a:1:{i:0;s:24:\"78Jjp-electric-power.png\";}', '', '', 0, '', 1, '2023-09-20 15:15:32', 11, 0, '', 0, 0, 0),
(73, 'rooftop-bar', 'Rooftop Bar', '', 'a:1:{i:0;s:20:\"xdPQq-rooftopbar.png\";}', '', '', 0, '', 1, '2023-09-20 15:16:07', 12, 0, '', 0, 0, 0),
(74, 'coureirge-service', 'Coureirge Service', '', 'a:1:{i:0;s:17:\"poefv-baggage.png\";}', '', '', 0, '', 1, '2023-09-20 15:16:19', 13, 0, '', 0, 0, 0),
(75, 'cctv-security', 'CCTV Security', '', 'a:1:{i:0;s:14:\"Vzw5D-cctv.png\";}', '', '', 0, '', 1, '2023-09-20 15:16:29', 14, 0, '', 0, 0, 0),
(76, 'cafe', 'Cafe', '', 'a:1:{i:0;s:16:\"Y7jn2-coffee.png\";}', '', '', 0, '', 1, '2023-09-20 15:16:37', 15, 0, '', 0, 0, 0),
(77, 'air-conditioner', 'Air Conditioner', '', 'a:1:{i:0;s:25:\"LDeAC-air-conditioner.png\";}', '', '', 0, '', 1, '2023-09-20 15:16:46', 16, 0, '', 0, 0, 0),
(78, 'rooftop-terrace', 'Rooftop Terrace', '', 'a:1:{i:0;s:17:\"5uOxW-terrace.png\";}', '', '', 0, '', 1, '2023-09-20 15:16:57', 17, 0, '', 0, 0, 0),
(79, 'rooftop-jacuzzi', 'Rooftop Jacuzzi', '', 'a:1:{i:0;s:17:\"00Z50-jacuzzi.png\";}', '', '', 0, '', 1, '2023-09-20 15:17:05', 18, 0, '', 0, 0, 0),
(80, 'airport-pickup-and-drop-br-on-charge', 'Airport pickup and drop<br/> (on charge)', '', 'a:1:{i:0;s:24:\"GkcTm-airport-pickup.png\";}', '', '', 0, '', 1, '2023-09-20 15:17:18', 19, 0, '', 0, 0, 0),
(81, 'rooftop-restaurant', 'Rooftop Restaurant', '', 'a:1:{i:0;s:27:\"4aj49-rooftoprestaurant.png\";}', '', '', 0, '', 1, '2023-09-20 15:17:41', 20, 0, '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slideshow`
--

CREATE TABLE `tbl_slideshow` (
  `id` int(11) NOT NULL,
  `title` tinytext NOT NULL,
  `image` tinytext NOT NULL,
  `linksrc` tinytext NOT NULL,
  `linktype` tinyint(1) NOT NULL DEFAULT 0,
  `content` longtext NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `m_status` tinyint(1) NOT NULL DEFAULT 1,
  `added_date` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_slideshow`
--

INSERT INTO `tbl_slideshow` (`id`, `title`, `image`, `linksrc`, `linktype`, `content`, `status`, `m_status`, `added_date`, `sortorder`, `type`) VALUES
(10, 'THE SKY GARDEN EXPERIENCE', '8UguL-1.jpg', '', 0, '<p>\r\n	Step into a world of serenity and splendor</p>\r\n', 1, 0, '2023-09-18 13:06:52', 1, 1),
(11, 'MAGICAL SKY-HIGH RETREAT', 'FTHyG-2.jpg', '', 0, '<p>\r\n	Journey to a jungle resort getaway</p>\r\n', 1, 0, '2023-09-18 13:07:15', 2, 1),
(12, 'STARRY NIGHT SPECTACLES', 'zeqnR-3.jpg', '', 0, '<p>\r\n	Delight in vibrant evenings and moonlit magic</p>\r\n', 1, 0, '2023-09-18 13:07:46', 3, 1),
(13, 'NIGHTS OF PURE WONDER', 'xJklf-4.jpg', '', 0, 'Magical moments overlooking mystical valleys', 1, 0, '2023-09-18 13:09:47', 4, 1),
(14, 'WHERE LUXURY MEETS NATURE', 'sS7G3-5.jpg', '', 0, '<p>\r\n	Discover the wilderness in ultimate comfort</p>\r\n', 1, 0, '2023-09-18 13:10:02', 5, 1),
(15, 'AN OASIS IN THE CLOUDS', 'jW0Fh-6.jpg', '', 0, '<p>\r\n	Let the stress melt away</p>\r\n', 1, 0, '2023-09-18 13:10:19', 6, 1),
(16, 'DINING DELIGHTS GALORE', 'asFbh-7.jpg', '', 0, '<p>\r\n	Enjoy organic food as fresh as nature</p>\r\n', 1, 0, '2023-09-18 13:10:36', 7, 1),
(17, 'EXCEPTIONAL CURATED EVENTS', '5JNAm-8.jpg', '', 0, '<p>\r\n	Every moment made extraordinary</p>\r\n', 1, 0, '2023-09-18 13:10:51', 8, 1),
(18, 'WELCOME TO SKY GARDEN', 'bxm21-9.jpg', '', 0, '<p>\r\n	Home away from home</p>\r\n', 1, 0, '2023-09-18 13:11:07', 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slideshows_withouttlist`
--

CREATE TABLE `tbl_slideshows_withouttlist` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sortorder` int(11) NOT NULL,
  `registered` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(1) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social_networking`
--

CREATE TABLE `tbl_social_networking` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `linksrc` tinytext NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `sortorder` int(11) NOT NULL,
  `registered` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_social_networking`
--

INSERT INTO `tbl_social_networking` (`id`, `title`, `image`, `linksrc`, `status`, `sortorder`, `registered`) VALUES
(2, 'Instagram', 'fab fa-instagram', 'https://www.instagram.com', 1, 2, ''),
(4, 'Facebook', 'fab fa-facebook-f', 'https://www.facebook.com/', 1, 1, ''),
(7, 'Youtube', 'fab fa-youtube', 'https://www.youtube.com/', 1, 3, ''),
(8, 'Tiktok', 'fab fa-tiktok', '#', 1, 4, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subpackage_images`
--

CREATE TABLE `tbl_subpackage_images` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `subpackageid` int(11) NOT NULL,
  `detail` varchar(200) NOT NULL,
  `status` int(11) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `registered` varchar(50) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_subpackage_images`
--

INSERT INTO `tbl_subpackage_images` (`id`, `title`, `subpackageid`, `detail`, `status`, `sortorder`, `registered`, `image`) VALUES
(64, 'Conference Hall', 33, '', 1, 1, '2023-08-14 12:52:01', 'dNMUF-1.jpg'),
(65, 'Conference Hall', 33, '', 1, 17, '2023-08-14 12:52:01', 'QGPvY-2.jpg'),
(66, 'Conference Hall', 33, '', 1, 21, '2023-08-14 12:52:01', 'iUVrT-3.jpg'),
(71, 'Semi-deluxe Room', 35, '', 1, 7, '2023-08-15 11:54:56', 'WSN2T-2.jpg'),
(72, 'Semi-deluxe Room', 35, '', 1, 18, '2023-08-15 11:54:56', 'rdPKh-2a.jpg'),
(73, 'Deluxe Room', 36, '', 1, 13, '2023-08-15 11:57:51', 'Bd6Vi-3a.jpg'),
(74, 'Deluxe Room', 36, '', 1, 19, '2023-08-15 11:57:51', 'B6Ogh-3.jpg'),
(75, 'Deluxe Room', 36, '', 1, 22, '2023-08-15 11:57:51', 'CLAn8-3b.jpg'),
(76, 'Executive Room', 37, '', 1, 15, '2023-08-15 12:00:19', 'H9DY0-4a.jpg'),
(77, 'Executive Room', 37, '', 1, 20, '2023-08-15 12:00:19', 'Jolyb-4.jpg'),
(92, 'The Restaurant', 41, '', 1, 4, '2023-08-28 12:47:53', 'wPs1N-for.jpg'),
(93, 'The Restaurant', 41, '', 1, 10, '2023-08-28 12:47:53', 'BllGw-dip-1.jpg'),
(94, 'The Restaurant', 41, '', 1, 14, '2023-08-28 12:47:53', 'dFfPC-for-1.jpg'),
(95, 'The Restaurant', 41, '', 1, 16, '2023-08-28 12:47:53', '4XDAs-restro.jpg'),
(115, 'SUITE ROOM', 64, '', 1, 2, '2023-09-20 11:51:15', '5SrEr-suite1.jpg'),
(116, 'SUITE ROOM', 64, '', 1, 5, '2023-09-20 11:51:15', 'ZRnSV-suite3.jpg'),
(117, 'SUITE ROOM', 64, '', 1, 8, '2023-09-20 11:51:15', 'Lf1mL-suite2.jpg'),
(118, 'SUITE ROOM', 64, '', 1, 11, '2023-09-20 11:51:15', 'aDR58-suite4.jpg'),
(119, 'Superior Suite', 65, '', 1, 3, '2023-09-20 12:04:40', 'pA0B3-superior1.jpg'),
(120, 'Superior Suite', 65, '', 1, 6, '2023-09-20 12:04:40', 'NZSaA-superior2.jpg'),
(121, 'Superior Suite', 65, '', 1, 9, '2023-09-20 12:04:40', 'Hj6G2-superior3.jpg'),
(122, 'Superior Suite', 65, '', 1, 12, '2023-09-20 12:04:40', 'FQiqd-superior4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subscribers`
--

CREATE TABLE `tbl_subscribers` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `mailaddress` varchar(250) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_testimonial`
--

CREATE TABLE `tbl_testimonial` (
  `id` int(11) NOT NULL,
  `parentOf` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `linksrc` text COLLATE utf8_unicode_ci NOT NULL,
  `content` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `rating` int(11) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `status` int(1) DEFAULT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `via_type` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `middle_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `contact` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `optional_email` longtext COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(65) COLLATE utf8_unicode_ci NOT NULL,
  `accesskey` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `group_id` int(11) NOT NULL,
  `access_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `facebook_uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `facebook_accesstoken` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `facebook_tokenexpire` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` date NOT NULL,
  `permission` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `first_name`, `middle_name`, `last_name`, `contact`, `email`, `optional_email`, `username`, `password`, `accesskey`, `image`, `group_id`, `access_code`, `facebook_uid`, `facebook_accesstoken`, `facebook_tokenexpire`, `status`, `sortorder`, `added_date`, `permission`) VALUES
(1, 'Sky Garden Resort', '', '', '', 'support@longtail.info', 'support@longtail.info;swarna@longtail.info', 'admin', '32b9da145699ea9058dd7d6669e6bcc5', 'qbWsUQOjtv4TqrqoUaNKuMtuk', '', 1, 'jx3PtXqKso', '', '', '2021-04-29 05:40:38', 1, 1, '2014-03-26', 0x613a31383a7b693a303b733a313a2231223b693a313b733a313a2232223b693a323b733a313a2233223b693a333b733a313a2234223b693a343b733a333a22313030223b693a353b733a313a2235223b693a363b733a333a22333030223b693a373b733a333a22323030223b693a383b733a323a223235223b693a393b733a323a223234223b693a31303b733a323a223233223b693a31313b733a323a223131223b693a31323b733a323a223137223b693a31333b733a323a223230223b693a31343b733a323a223238223b693a31353b733a323a223132223b693a31363b733a323a223133223b693a31373b733a323a223134223b7d);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vacency`
--

CREATE TABLE `tbl_vacency` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `post` varchar(250) NOT NULL,
  `location` varchar(250) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `pax` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `date1` date NOT NULL,
  `date2` date NOT NULL,
  `archive_date` date DEFAULT NULL,
  `sortorder` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `image` varchar(50) NOT NULL,
  `type` int(1) NOT NULL,
  `meta_keywords` text NOT NULL,
  `meta_description` text NOT NULL,
  `added_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_vacency`
--

INSERT INTO `tbl_vacency` (`id`, `title`, `post`, `location`, `slug`, `pax`, `content`, `date1`, `date2`, `archive_date`, `sortorder`, `status`, `image`, `type`, `meta_keywords`, `meta_description`, `added_date`) VALUES
(9, 'Senior Executive Assistant', 'Manager', 'Kathmandu, Nepal', 'senior-executive-assistant', '10', '<p>\r\n	Bachelor</p>\r\n', '0000-00-00', '2023-08-31', '0000-00-00', 1, 1, '', 0, '', '', '2023-08-28 15:12:02'),
(10, 'Receptionist', 'Employer', 'Kathmandu, Nepal', 'receptionist', '10', '<p>\r\n	Bachelor</p>\r\n', '0000-00-00', '2023-09-22', '0000-00-00', 2, 1, '', 0, '', '', '2023-08-29 11:42:43'),
(11, 'Intern', 'Intern', 'Patan, Nepal', 'intern', '10', '<p>\r\n	Masters Completed</p>\r\n', '0000-00-00', '2023-10-30', '0000-00-00', 3, 1, '', 0, '', '', '2023-08-29 11:43:18');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_video`
--

CREATE TABLE `tbl_video` (
  `id` int(11) NOT NULL,
  `source` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `url_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `thumb_image` longtext COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `host` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `class` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_applicants`
--
ALTER TABLE `tbl_applicants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_articles`
--
ALTER TABLE `tbl_articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_conbined_news`
--
ALTER TABLE `tbl_conbined_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_configs`
--
ALTER TABLE `tbl_configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_countries`
--
ALTER TABLE `tbl_countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_events`
--
ALTER TABLE `tbl_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_features`
--
ALTER TABLE `tbl_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_galleries`
--
ALTER TABLE `tbl_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_gallery_images`
--
ALTER TABLE `tbl_gallery_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_group_type`
--
ALTER TABLE `tbl_group_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_logs`
--
ALTER TABLE `tbl_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_logs_action`
--
ALTER TABLE `tbl_logs_action`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_modules`
--
ALTER TABLE `tbl_modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_nearby`
--
ALTER TABLE `tbl_nearby`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_offers`
--
ALTER TABLE `tbl_offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_offer_child`
--
ALTER TABLE `tbl_offer_child`
  ADD KEY `offer_id` (`offer_id`);

--
-- Indexes for table `tbl_package`
--
ALTER TABLE `tbl_package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_package_sub`
--
ALTER TABLE `tbl_package_sub`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_permission`
--
ALTER TABLE `tbl_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_popup`
--
ALTER TABLE `tbl_popup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_room_price`
--
ALTER TABLE `tbl_room_price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_services`
--
ALTER TABLE `tbl_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_slideshow`
--
ALTER TABLE `tbl_slideshow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_slideshows_withouttlist`
--
ALTER TABLE `tbl_slideshows_withouttlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_social_networking`
--
ALTER TABLE `tbl_social_networking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_subpackage_images`
--
ALTER TABLE `tbl_subpackage_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_subscribers`
--
ALTER TABLE `tbl_subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_testimonial`
--
ALTER TABLE `tbl_testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_vacency`
--
ALTER TABLE `tbl_vacency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_video`
--
ALTER TABLE `tbl_video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_applicants`
--
ALTER TABLE `tbl_applicants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_articles`
--
ALTER TABLE `tbl_articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_conbined_news`
--
ALTER TABLE `tbl_conbined_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_configs`
--
ALTER TABLE `tbl_configs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_countries`
--
ALTER TABLE `tbl_countries`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;

--
-- AUTO_INCREMENT for table `tbl_events`
--
ALTER TABLE `tbl_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_features`
--
ALTER TABLE `tbl_features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT for table `tbl_galleries`
--
ALTER TABLE `tbl_galleries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_gallery_images`
--
ALTER TABLE `tbl_gallery_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;

--
-- AUTO_INCREMENT for table `tbl_group_type`
--
ALTER TABLE `tbl_group_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_logs`
--
ALTER TABLE `tbl_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=902;

--
-- AUTO_INCREMENT for table `tbl_logs_action`
--
ALTER TABLE `tbl_logs_action`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbl_modules`
--
ALTER TABLE `tbl_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- AUTO_INCREMENT for table `tbl_nearby`
--
ALTER TABLE `tbl_nearby`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_news`
--
ALTER TABLE `tbl_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_offers`
--
ALTER TABLE `tbl_offers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_package`
--
ALTER TABLE `tbl_package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_package_sub`
--
ALTER TABLE `tbl_package_sub`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `tbl_permission`
--
ALTER TABLE `tbl_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_popup`
--
ALTER TABLE `tbl_popup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_room_price`
--
ALTER TABLE `tbl_room_price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_services`
--
ALTER TABLE `tbl_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `tbl_slideshow`
--
ALTER TABLE `tbl_slideshow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_slideshows_withouttlist`
--
ALTER TABLE `tbl_slideshows_withouttlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_social_networking`
--
ALTER TABLE `tbl_social_networking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_subpackage_images`
--
ALTER TABLE `tbl_subpackage_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `tbl_subscribers`
--
ALTER TABLE `tbl_subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_testimonial`
--
ALTER TABLE `tbl_testimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_vacency`
--
ALTER TABLE `tbl_vacency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_video`
--
ALTER TABLE `tbl_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
