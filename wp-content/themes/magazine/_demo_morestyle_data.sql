/**
   * --------------------------------------------------------
   * Dump Table `magazine__commentmeta`
   * --------------------------------------------------------
**/
CREATE TABLE IF NOT EXISTS `magazine__commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


/**
   * --------------------------------------------------------
   * Dump Table `magazine__comments`
   * --------------------------------------------------------
**/
CREATE TABLE IF NOT EXISTS `magazine__comments` (
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
) ENGINE=MyISAM AUTO_INCREMENT=174 DEFAULT CHARSET=utf8;

/* DATA Table `magazine__comments` */
INSERT INTO `magazine__comments` VALUES
('169', '390', 'gfj', 'fjgh#@fj.ru', '', '195.94.251.74', '2013-10-06 15:21:45', '2013-10-06 15:21:45', 'dfghjke', '0', '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.76 Safari/537.36', '', '168', '0'),
('170', '396', 'gfj', 'fjgh#@fj.ru', '', '195.94.251.74', '2013-10-06 16:05:37', '2013-10-06 16:05:37', 'sryjryj', '0', '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.76 Safari/537.36', '', '0', '0'),
('171', '414', '&gt;hbq', 'ddddawd@yandex.ru', '', '95.132.72.255', '2013-10-19 20:47:52', '2013-10-19 20:47:52', 'dawdwa', '0', '0', 'Opera/9.80 (Windows NT 5.1) Presto/2.12.388 Version/12.16', '', '0', '0'),
('172', '398', '12', '12@gmail.com', '', '85.233.158.160', '2013-10-24 13:06:26', '2013-10-24 13:06:26', '123', '0', '0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.101 Safari/537.36', '', '0', '0'),
('173', '416', 'Михаил', 'mr.mango@yandex.ua', '', '195.2.236.101', '2013-10-24 16:25:31', '2013-10-24 16:25:31', '3213', '0', '0', 'Mozilla/5.0 (Windows NT 6.1; rv:24.0) Gecko/20100101 Firefox/24.0', '', '0', '0'),
('168', '390', 'gfj', 'fjgh#@fj.ru', '', '195.94.251.74', '2013-10-06 15:21:21', '2013-10-06 15:21:21', 'fjyf', '0', '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.76 Safari/537.36', '', '0', '0'),
('167', '406', 'Олололо', 'progear2008@gmail.com', '', '88.196.21.77', '2013-09-24 23:31:45', '2013-09-24 23:31:45', 'Клевый шаблон!', '0', '0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.76 Safari/537.36', '', '0', '0');


/**
   * --------------------------------------------------------
   * Dump Table `magazine__links`
   * --------------------------------------------------------
**/
CREATE TABLE IF NOT EXISTS `magazine__links` (
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
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/* DATA Table `magazine__links` */
INSERT INTO `magazine__links` VALUES
('1', 'http://codex.wordpress.org/', 'Documentation', '', '', '', 'Y', '1', '0', '0000-00-00 00:00:00', '', '', ''),
('2', 'http://wordpress.org/news/', 'WordPress Blog', '', '', '', 'Y', '1', '0', '0000-00-00 00:00:00', '', '', 'http://wordpress.org/news/feed/'),
('3', 'http://wordpress.org/extend/ideas/', 'Suggest Ideas', '', '', '', 'Y', '1', '0', '0000-00-00 00:00:00', '', '', ''),
('4', 'http://wordpress.org/support/', 'Support Forum', '', '', '', 'Y', '1', '0', '0000-00-00 00:00:00', '', '', ''),
('5', 'http://wordpress.org/extend/plugins/', 'Plugins', '', '', '', 'Y', '1', '0', '0000-00-00 00:00:00', '', '', ''),
('6', 'http://wordpress.org/extend/themes/', 'Themes', '', '', '', 'Y', '1', '0', '0000-00-00 00:00:00', '', '', ''),
('7', 'http://planet.wordpress.org/', 'WordPress Planet', '', '', '', 'Y', '1', '0', '0000-00-00 00:00:00', '', '', '');


/**
   * --------------------------------------------------------
   * Dump Table `magazine__options`
   * --------------------------------------------------------
**/
CREATE TABLE IF NOT EXISTS `magazine__options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM AUTO_INCREMENT=12870 DEFAULT CHARSET=utf8;

/* DATA Table `magazine__options` */
INSERT INTO `magazine__options` VALUES
('12747', '_site_transient_timeout_theme_roots', '1383128037', 'yes'),
('12748', '_site_transient_theme_roots', 'a:263:{s:12:"13floortheme";s:7:"/themes";s:19:"1instyleleganthemes";s:7:"/themes";s:7:"_images";s:7:"/themes";s:9:"abouttoys";s:7:"/themes";s:15:"academicawpzoom";s:7:"/themes";s:19:"affinityrockettheme";s:7:"/themes";s:9:"aggregate";s:7:"/themes";s:12:"apzwoothemes";s:7:"/themes";s:12:"architecture";s:7:"/themes";s:8:"atletica";s:7:"/themes";s:19:"autocarsnewwpthemes";s:7:"/themes";s:21:"autotraderthemeforest";s:7:"/themes";s:6:"barbie";s:7:"/themes";s:13:"beautysecrets";s:7:"/themes";s:9:"behealthy";s:7:"/themes";s:14:"binaryfabtheme";s:7:"/themes";s:16:"biznizzwoothemes";s:7:"/themes";s:8:"blogphix";s:7:"/themes";s:14:"boastwoothemes";s:7:"/themes";s:9:"boldtheme";s:7:"/themes";s:5:"bolid";s:7:"/themes";s:19:"brandnewthemeforest";s:7:"/themes";s:5:"bueno";s:7:"/themes";s:22:"bullsandbearssmwptheme";s:7:"/themes";s:21:"businessideasmwptheme";s:7:"/themes";s:19:"cameleonthemeforest";s:7:"/themes";s:15:"carnizsmwptheme";s:7:"/themes";s:19:"carslinenewwpthemes";s:7:"/themes";s:19:"carsparknewwpthemes";s:7:"/themes";s:18:"celebritysmwptheme";s:7:"/themes";s:18:"centralnewwpthemes";s:7:"/themes";s:9:"chameleon";s:7:"/themes";s:21:"channelprothemejunkie";s:7:"/themes";s:11:"childreness";s:7:"/themes";s:9:"chocolate";s:7:"/themes";s:18:"cinematicsmwptheme";s:7:"/themes";s:11:"classipress";s:7:"/themes";s:14:"classipress316";s:7:"/themes";s:22:"clothingstoresmwptheme";s:7:"/themes";s:21:"collectivethemeforest";s:7:"/themes";s:20:"cooperatenewwpthemes";s:7:"/themes";s:6:"cracks";s:7:"/themes";s:17:"creativesmwptheme";s:7:"/themes";s:21:"creativitynewwpthemes";s:7:"/themes";s:19:"cubelighthemejunkie";s:7:"/themes";s:14:"cushywoothemes";s:7:"/themes";s:16:"dailythemejunkie";s:7:"/themes";s:10:"dancefloor";s:7:"/themes";s:17:"decadanewwpthemes";s:7:"/themes";s:17:"decondothemeshift";s:7:"/themes";s:26:"deliciousmagazinewoothemes";s:7:"/themes";s:6:"dental";s:7:"/themes";s:18:"deservenewwpthemes";s:7:"/themes";s:18:"diablofunsmwptheme";s:7:"/themes";s:14:"dinerwoothemes";s:7:"/themes";s:19:"droidpresssmwptheme";s:7:"/themes";s:5:"easel";s:7:"/themes";s:9:"ecommerce";s:7:"/themes";s:17:"educatorsmwptheme";s:7:"/themes";s:19:"egamerelegantthemes";s:7:"/themes";s:17:"elefoliowoothemes";s:7:"/themes";s:13:"elegantestate";s:7:"/themes";s:13:"elegantmodest";s:7:"/themes";s:9:"enewstest";s:7:"/themes";s:15:"enisnewwpthemes";s:7:"/themes";s:10:"envisioned";s:7:"/themes";s:19:"ephotoelegantthemes";s:7:"/themes";s:18:"essentynewwpthemes";s:7:"/themes";s:11:"estateagent";s:7:"/themes";s:18:"estoreeleganttheme";s:7:"/themes";s:10:"etinreview";s:7:"/themes";s:17:"eudoranewwpthemes";s:7:"/themes";s:9:"eventheme";s:7:"/themes";s:17:"evolvetheme4press";s:7:"/themes";s:17:"fantasiasmwptheme";s:7:"/themes";s:12:"fashionstyle";s:7:"/themes";s:15:"fedonewwpthemes";s:7:"/themes";s:20:"financialnewwpthemes";s:7:"/themes";s:17:"firelynewwpthemes";s:7:"/themes";s:11:"footballnet";s:7:"/themes";s:17:"foundynewwpthemes";s:7:"/themes";s:10:"fruitiness";s:7:"/themes";s:8:"function";s:7:"/themes";s:15:"functionwptheme";s:7:"/themes";s:6:"gadget";s:7:"/themes";s:8:"gameplus";s:7:"/themes";s:20:"gamesparknewwpthemes";s:7:"/themes";s:14:"gamessmwptheme";s:7:"/themes";s:17:"gamezonesmwptheme";s:7:"/themes";s:17:"gamingnewwpthemes";s:7:"/themes";s:17:"gardenthemejunkie";s:7:"/themes";s:28:"goodoldrestaurantthemeforest";s:7:"/themes";s:19:"goodtimenewwpthemes";s:7:"/themes";s:7:"grunger";s:7:"/themes";s:18:"halloweensmwptheme";s:7:"/themes";s:20:"harmonyelegantthemes";s:7:"/themes";s:24:"healthfitnessnewwpthemes";s:7:"/themes";s:19:"healthwpnewwpthemes";s:7:"/themes";s:27:"healthylifestylenewwpthemes";s:7:"/themes";s:6:"hiphop";s:7:"/themes";s:17:"hostianewwpthemes";s:7:"/themes";s:21:"hostingmoznewwpthemes";s:7:"/themes";s:21:"hostservernewwpthemes";s:7:"/themes";s:9:"hotelbook";s:7:"/themes";s:18:"hotnewsnewwpthemes";s:7:"/themes";s:4:"huex";s:7:"/themes";s:15:"ibiznewwpthemes";s:7:"/themes";s:16:"icarsnewwpthemes";s:7:"/themes";s:17:"identinewwpthemes";s:7:"/themes";s:19:"ifitnessnewwpthemes";s:7:"/themes";s:9:"imbalance";s:7:"/themes";s:18:"imbalance2wpshower";s:7:"/themes";s:18:"inspectnewwpthemes";s:7:"/themes";s:18:"instyleleganthemes";s:7:"/themes";s:22:"internetmagicsmwptheme";s:7:"/themes";s:16:"internosmwptheme";s:7:"/themes";s:19:"intozinenewwpthemes";s:7:"/themes";s:18:"itravelnewwpthemes";s:7:"/themes";s:17:"jasminnewwpthemes";s:7:"/themes";s:18:"justmagnewwpthemes";s:7:"/themes";s:4:"kora";s:7:"/themes";s:16:"krismasfabthemes";s:7:"/themes";s:22:"ladiesjournalsmwptheme";s:7:"/themes";s:16:"landanewwpthemes";s:7:"/themes";s:18:"learnernewwpthemes";s:7:"/themes";s:16:"linepressgabfire";s:7:"/themes";s:16:"lovedaysmwptheme";s:7:"/themes";s:18:"luminelegantthemes";s:7:"/themes";s:8:"magazine";s:7:"/themes";s:17:"magtopnewwpthemes";s:7:"/themes";s:15:"manifestowpzoom";s:7:"/themes";s:23:"maximagazinenewwpthemes";s:7:"/themes";s:18:"maximagnewwpthemes";s:7:"/themes";s:16:"maximnewwpthemes";s:7:"/themes";s:14:"mellowyootheme";s:7:"/themes";s:6:"memoir";s:7:"/themes";s:17:"meritanewwpthemes";s:7:"/themes";s:19:"metropresssmwptheme";s:7:"/themes";s:20:"minimalelegantthemes";s:7:"/themes";s:18:"modellingsmwptheme";s:7:"/themes";s:20:"modernmagnewwpthemes";s:7:"/themes";s:26:"mountaincreekgorillathemes";s:7:"/themes";s:17:"mozzienewwpthemes";s:7:"/themes";s:9:"mycuisine";s:7:"/themes";s:11:"neoyootheme";s:7:"/themes";s:14:"newsdaynattywp";s:7:"/themes";s:6:"newses";s:7:"/themes";s:19:"newsfactnewwpthemes";s:7:"/themes";s:20:"newsgrandnewwpthemes";s:7:"/themes";s:19:"newsmashnewwpthemes";s:7:"/themes";s:22:"newsmorningnewwpthemes";s:7:"/themes";s:19:"newstubethemejunkie";s:7:"/themes";s:18:"newswaynewwpthemes";s:7:"/themes";s:16:"newyearsmwptheme";s:7:"/themes";s:15:"niconewwpthemes";s:7:"/themes";s:19:"nimbleelegantthemes";s:7:"/themes";s:16:"nitrothemeforest";s:7:"/themes";s:17:"noticenewwpthemes";s:7:"/themes";s:9:"novatheme";s:7:"/themes";s:14:"onionsmwptheme";s:7:"/themes";s:20:"onthegoelegantthemes";s:7:"/themes";s:19:"optimalenewwpthemes";s:7:"/themes";s:19:"originelegantthemes";s:7:"/themes";s:17:"oxygenthemeforest";s:7:"/themes";s:12:"parasponsive";s:7:"/themes";s:7:"perfume";s:7:"/themes";s:13:"personalpress";s:7:"/themes";s:21:"phenomenonthemeforest";s:7:"/themes";s:11:"photography";s:7:"/themes";s:7:"photome";s:7:"/themes";s:14:"photopurepress";s:7:"/themes";s:11:"placeholder";s:7:"/themes";s:17:"planshetsmwptheme";s:7:"/themes";s:11:"platformpro";s:7:"/themes";s:17:"portalthemejunkie";s:7:"/themes";s:6:"postit";s:7:"/themes";s:17:"premierewoothemes";s:7:"/themes";s:19:"pressbiznewwpthemes";s:7:"/themes";s:19:"pressmagnewwpthemes";s:7:"/themes";s:20:"pressnewsnewwpthemes";s:7:"/themes";s:20:"progressonewwpthemes";s:7:"/themes";s:19:"propressnewwpthemes";s:7:"/themes";s:21:"publisherthemesjunkie";s:7:"/themes";s:19:"purelinetheme4press";s:7:"/themes";s:10:"purevision";s:7:"/themes";s:17:"rapidonewwpthemes";s:7:"/themes";s:18:"restaurantemplatic";s:7:"/themes";s:16:"retreatwoothemes";s:7:"/themes";s:6:"rikado";s:7:"/themes";s:15:"rinonewwpthemes";s:7:"/themes";s:17:"sakurathemeforest";s:7:"/themes";s:20:"savinggracewoothemes";s:7:"/themes";s:21:"sciencepresssmwptheme";s:7:"/themes";s:16:"sentonewwpthemes";s:7:"/themes";s:17:"setivanewwpthemes";s:7:"/themes";s:12:"sevixwptheme";s:7:"/themes";s:21:"shakengridthemegarden";s:7:"/themes";s:17:"shotzzthemeforest";s:7:"/themes";s:15:"sidenewwpthemes";s:7:"/themes";s:17:"sierranewwpthemes";s:7:"/themes";s:13:"sightwpshower";s:7:"/themes";s:23:"simplepresseleganthemes";s:7:"/themes";s:19:"simplicitywoothemes";s:7:"/themes";s:9:"skeptical";s:7:"/themes";s:19:"smartpresssmwptheme";s:7:"/themes";s:13:"sparkyootheme";s:7:"/themes";s:17:"spectrumwoothemes";s:7:"/themes";s:17:"spherenewwpthemes";s:7:"/themes";s:5:"sport";s:7:"/themes";s:9:"sportblog";s:7:"/themes";s:20:"sportcarsnewwpthemes";s:7:"/themes";s:10:"sportpress";s:7:"/themes";s:18:"starmagnewwpthemes";s:7:"/themes";s:19:"strikingthemeforest";s:7:"/themes";s:9:"styleshop";s:7:"/themes";s:16:"suburbiawpshower";s:7:"/themes";s:19:"suitandtiewoothemes";s:7:"/themes";s:19:"superthemesmwptheme";s:7:"/themes";s:18:"superwpnewwpthemes";s:7:"/themes";s:19:"suvfocusnewwpthemes";s:7:"/themes";s:17:"suvmixnewwpthemes";s:7:"/themes";s:6:"swatch";s:7:"/themes";s:5:"table";s:7:"/themes";s:18:"techblogturkhitbox";s:7:"/themes";s:20:"techfrontnewwpthemes";s:7:"/themes";s:21:"techmatrixnewwpthemes";s:7:"/themes";s:18:"techpadnewwpthemes";s:7:"/themes";s:20:"techworldnewwpthemes";s:7:"/themes";s:17:"techwpnewwpthemes";s:7:"/themes";s:21:"thanksgivingsmwptheme";s:7:"/themes";s:20:"thecanyonthemeforest";s:7:"/themes";s:19:"thejournalwoothemes";s:7:"/themes";s:23:"theme953templatemonster";s:7:"/themes";s:23:"therestauranthemeforest";s:7:"/themes";s:9:"thestylet";s:7:"/themes";s:15:"tidalforcetheme";s:7:"/themes";s:20:"trademarkthemeforest";s:7:"/themes";s:19:"tribalgorillathemes";s:7:"/themes";s:13:"tribunewpzoom";s:7:"/themes";s:12:"twentyeleven";s:7:"/themes";s:9:"twentyten";s:7:"/themes";s:9:"typebased";s:7:"/themes";s:18:"udesignthemeforest";s:7:"/themes";s:9:"urbannews";s:7:"/themes";s:12:"uxturkhitbox";s:7:"/themes";s:17:"valerathemeforest";s:7:"/themes";s:15:"vanillayootheme";s:7:"/themes";s:19:"vanitygorillathemes";s:7:"/themes";s:18:"vitrinenewwpthemes";s:7:"/themes";s:10:"weblytheme";s:7:"/themes";s:17:"weeklythemejunkie";s:7:"/themes";s:10:"whitelight";s:7:"/themes";s:25:"widescreengraphpaperpress";s:7:"/themes";s:10:"workaholic";s:7:"/themes";s:17:"wowwaythemeforest";s:7:"/themes";s:3:"wpc";s:7:"/themes";s:19:"wpcartoonssmwptheme";s:7:"/themes";s:19:"wpestatenewwpthemes";s:7:"/themes";s:17:"wpgeniusolostream";s:7:"/themes";s:16:"wpmagnewwpthemes";s:7:"/themes";s:17:"wptechnewwpthemes";s:7:"/themes";s:18:"yespresnewwpthemes";s:7:"/themes";s:17:"zenmagnewwpthemes";s:7:"/themes";}', 'yes'),
('4', 'siteurl', 'http://magazine.theme.morestyle.ru', 'yes'),
('5', 'blogname', 'Сайт на wordpress', 'yes'),
('6', 'blogdescription', 'Ещё один сайт на WordPress', 'yes'),
('7', 'users_can_register', '0', 'yes'),
('8', 'admin_email', 'regestration@pisem.net', 'yes'),
('9', 'start_of_week', '1', 'yes'),
('10', 'use_balanceTags', '0', 'yes'),
('11', 'use_smilies', '1', 'yes'),
('12', 'require_name_email', '1', 'yes'),
('13', 'comments_notify', '1', 'yes'),
('14', 'posts_per_rss', '10', 'yes'),
('15', 'rss_use_excerpt', '0', 'yes'),
('16', 'mailserver_url', 'mail.example.com', 'yes'),
('17', 'mailserver_login', 'login@example.com', 'yes'),
('18', 'mailserver_pass', 'password', 'yes'),
('19', 'mailserver_port', '110', 'yes'),
('20', 'default_category', '1', 'yes'),
('21', 'default_comment_status', 'open', 'yes'),
('22', 'default_ping_status', 'open', 'yes'),
('23', 'default_pingback_flag', '0', 'yes'),
('24', 'default_post_edit_rows', '20', 'yes'),
('25', 'posts_per_page', '7', 'yes'),
('26', 'date_format', 'd.m.Y', 'yes'),
('27', 'time_format', 'g:i a', 'yes'),
('28', 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
('29', 'links_recently_updated_prepend', '<em>', 'yes'),
('30', 'links_recently_updated_append', '</em>', 'yes'),
('31', 'links_recently_updated_time', '120', 'yes'),
('32', 'comment_moderation', '0', 'yes'),
('33', 'moderation_notify', '1', 'yes'),
('34', 'permalink_structure', '', 'yes'),
('35', 'gzipcompression', '0', 'yes'),
('36', 'hack_file', '0', 'yes'),
('37', 'blog_charset', 'UTF-8', 'yes'),
('38', 'moderation_keys', '', 'no'),
('39', 'active_plugins', 'a:2:{i:0;s:11:"tac/tac.php";i:1;s:41:"wordpress-importer/wordpress-importer.php";}', 'yes'),
('40', 'home', 'http://magazine.theme.morestyle.ru', 'yes'),
('41', 'category_base', '', 'yes'),
('42', 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
('43', 'advanced_edit', '0', 'yes'),
('44', 'comment_max_links', '2', 'yes'),
('45', 'gmt_offset', '0', 'yes'),
('46', 'default_email_category', '1', 'yes'),
('47', 'recently_edited', 'a:2:{i:0;s:88:"/var/www/wordpress/data/www/wordpress.server-7.ru/wp-content/plugins/akismet/akismet.php";i:1;s:0:"";}', 'no'),
('48', 'template', 'magazine', 'yes'),
('49', 'stylesheet', 'magazine', 'yes'),
('50', 'comment_whitelist', '1', 'yes'),
('51', 'blacklist_keys', '', 'no'),
('52', 'comment_registration', '0', 'yes'),
('53', 'html_type', 'text/html', 'yes'),
('54', 'use_trackback', '0', 'yes'),
('55', 'default_role', 'subscriber', 'yes'),
('56', 'db_version', '20596', 'yes'),
('57', 'uploads_use_yearmonth_folders', '1', 'yes'),
('58', 'upload_path', '', 'yes'),
('59', 'blog_public', '0', 'yes'),
('60', 'default_link_category', '2', 'yes'),
('61', 'show_on_front', 'page', 'yes'),
('62', 'tag_base', '', 'yes'),
('63', 'show_avatars', '1', 'yes'),
('64', 'avatar_rating', 'G', 'yes'),
('65', 'upload_url_path', '', 'yes'),
('66', 'thumbnail_size_w', '150', 'yes'),
('67', 'thumbnail_size_h', '150', 'yes'),
('68', 'thumbnail_crop', '1', 'yes'),
('69', 'medium_size_w', '300', 'yes'),
('70', 'medium_size_h', '300', 'yes'),
('71', 'avatar_default', 'mystery', 'yes'),
('72', 'enable_app', '0', 'yes'),
('73', 'enable_xmlrpc', '0', 'yes'),
('74', 'large_size_w', '1024', 'yes'),
('75', 'large_size_h', '1024', 'yes'),
('76', 'image_default_link_type', 'file', 'yes'),
('77', 'image_default_size', '', 'yes'),
('78', 'image_default_align', '', 'yes'),
('79', 'close_comments_for_old_posts', '0', 'yes'),
('80', 'close_comments_days_old', '14', 'yes'),
('81', 'thread_comments', '1', 'yes'),
('82', 'thread_comments_depth', '5', 'yes'),
('83', 'page_comments', '0', 'yes'),
('84', 'comments_per_page', '50', 'yes'),
('85', 'default_comments_page', 'newest', 'yes'),
('86', 'comment_order', 'asc', 'yes'),
('87', 'sticky_posts', 'a:0:{}', 'yes'),
('88', 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:31:"Рубрики новостей";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
('89', 'widget_text', 'a:0:{}', 'yes'),
('90', 'widget_rss', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
('91', 'timezone_string', '', 'yes'),
('92', 'embed_autourls', '1', 'yes'),
('93', 'embed_size_w', '', 'yes'),
('94', 'embed_size_h', '600', 'yes'),
('95', 'page_for_posts', '0', 'yes'),
('96', 'page_on_front', '367', 'yes'),
('97', 'default_post_format', '0', 'yes'),
('98', 'initial_db_version', '19470', 'yes'),
('99', 'magazine__user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:65:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:13:"manage_cforms";b:1;s:12:"track_cforms";b:1;s:12:"manage_polls";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
('100', 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
('101', 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
('102', 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
('103', 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
('104', 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
('105', 'sidebars_widgets', 'a:8:{s:19:"wp_inactive_widgets";a:0:{}s:12:"sidebar-home";a:4:{i:0;s:15:"tabbed-widget-2";i:1;s:12:"latestpost-2";i:2;s:22:"recentpostbycategory-2";i:3;s:18:"nmediagallerybox-2";}s:7:"sidebar";a:5:{i:0;s:13:"socialmedia-3";i:1;s:22:"recentpostbycategory-3";i:2;s:12:"categories-2";i:3;s:11:"tag_cloud-3";i:4;s:8:"search-2";}s:7:"footer1";a:1:{i:0;s:12:"latestpost-3";}s:7:"footer2";a:1:{i:0;s:6:"meta-2";}s:7:"footer3";a:1:{i:0;s:11:"tag_cloud-2";}s:7:"footer4";a:1:{i:0;s:13:"socialmedia-2";}s:13:"array_version";i:3;}', 'yes'),
('1348', 'widget_tabbed-widget', 'a:2:{i:2;a:5:{s:11:"popular_tab";s:1:"3";s:10:"recent_tab";s:1:"3";s:12:"comments_tab";s:1:"3";s:8:"tags_tab";s:0:"";s:16:"max_item_popular";s:1:"3";}s:12:"_multiwidget";i:1;}', 'yes'),
('1253', '_site_transient_browser_1dcd87cababf7258f9752cf3eeb1a9d2', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"17.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
('106', 'cron', 'a:5:{i:1383153658;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1383169327;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1383177829;a:1:{s:10:"polls_cron";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1383212537;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
('12636', '_site_transient_update_core', 'O:8:"stdClass":3:{s:7:"updates";a:2:{i:0;O:8:"stdClass":9:{s:8:"response";s:7:"upgrade";s:8:"download";s:49:"http://ru.wordpress.org/wordpress-3.7.1-ru_RU.zip";s:6:"locale";s:5:"ru_RU";s:8:"packages";O:8:"stdClass":4:{s:4:"full";s:49:"http://ru.wordpress.org/wordpress-3.7.1-ru_RU.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;}s:7:"current";s:5:"3.7.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"3.6";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":9:{s:8:"response";s:7:"upgrade";s:8:"download";s:40:"http://wordpress.org/wordpress-3.7.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":4:{s:4:"full";s:40:"http://wordpress.org/wordpress-3.7.1.zip";s:10:"no_content";s:51:"http://wordpress.org/wordpress-3.7.1-no-content.zip";s:11:"new_bundled";s:52:"http://wordpress.org/wordpress-3.7.1-new-bundled.zip";s:7:"partial";b:0;}s:7:"current";s:5:"3.7.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"3.6";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1383126236;s:15:"version_checked";s:3:"3.4";}', 'yes'),
('110', '_site_transient_update_themes', 'O:8:"stdClass":3:{s:12:"last_checked";i:1383087331;s:7:"checked";a:259:{s:12:"13floortheme";s:3:"1.0";s:19:"1instyleleganthemes";s:3:"1.0";s:9:"abouttoys";s:3:"2.0";s:15:"academicawpzoom";s:5:"1.2.2";s:19:"affinityrockettheme";s:3:"1.0";s:9:"aggregate";s:3:"2.4";s:12:"apzwoothemes";s:5:"1.0.2";s:12:"architecture";s:4:"1.04";s:8:"atletica";s:3:"2.0";s:19:"autocarsnewwpthemes";s:3:"1.0";s:21:"autotraderthemeforest";s:5:"1.1.4";s:6:"barbie";s:3:"2.0";s:13:"beautysecrets";s:3:"2.0";s:9:"behealthy";s:3:"2.0";s:14:"binaryfabtheme";s:5:"1.0.0";s:16:"biznizzwoothemes";s:5:"1.2.3";s:8:"blogphix";s:3:"1.2";s:14:"boastwoothemes";s:3:"1.0";s:9:"boldtheme";s:3:"3.0";s:5:"bolid";s:3:"1.0";s:19:"brandnewthemeforest";s:3:"1.3";s:22:"bullsandbearssmwptheme";s:3:"2.0";s:21:"businessideasmwptheme";s:3:"1.0";s:19:"cameleonthemeforest";s:3:"1.1";s:15:"carnizsmwptheme";s:3:"2.0";s:19:"carslinenewwpthemes";s:3:"1.0";s:19:"carsparknewwpthemes";s:3:"1.0";s:18:"celebritysmwptheme";s:3:"1.0";s:18:"centralnewwpthemes";s:3:"1.0";s:9:"chameleon";s:3:"1.0";s:21:"channelprothemejunkie";s:5:"1.0.2";s:11:"childreness";s:3:"2.0";s:9:"chocolate";s:22:"3.1.1 (Dark Chocolate)";s:18:"cinematicsmwptheme";s:3:"2.0";s:11:"classipress";s:5:"3.0.2";s:14:"classipress316";s:5:"3.1.6";s:22:"clothingstoresmwptheme";s:3:"2.0";s:21:"collectivethemeforest";s:3:"1.0";s:20:"cooperatenewwpthemes";s:3:"1.0";s:6:"cracks";s:3:"1.0";s:17:"creativesmwptheme";s:3:"2.0";s:21:"creativitynewwpthemes";s:3:"1.0";s:19:"cubelighthemejunkie";s:5:"1.0.x";s:14:"cushywoothemes";s:3:"2.1";s:16:"dailythemejunkie";s:5:"1.0.1";s:10:"dancefloor";s:3:"1.0";s:17:"decadanewwpthemes";s:3:"1.0";s:17:"decondothemeshift";s:5:"0.9.1";s:26:"deliciousmagazinewoothemes";s:5:"1.1.6";s:6:"dental";s:3:"2.0";s:18:"deservenewwpthemes";s:3:"1.0";s:18:"diablofunsmwptheme";s:3:"2.0";s:14:"dinerwoothemes";s:5:"1.0.6";s:19:"droidpresssmwptheme";s:3:"2.0";s:5:"easel";s:5:"3.0.6";s:9:"ecommerce";s:3:"1.3";s:17:"educatorsmwptheme";s:3:"2.0";s:19:"egamerelegantthemes";s:3:"3.0";s:17:"elefoliowoothemes";s:5:"1.0.2";s:13:"elegantestate";s:3:"4.2";s:13:"elegantmodest";s:3:"1.2";s:9:"enewstest";s:3:"3.3";s:15:"enisnewwpthemes";s:3:"1.0";s:10:"envisioned";s:3:"1.0";s:19:"ephotoelegantthemes";s:3:"5.6";s:18:"essentynewwpthemes";s:3:"2.1";s:11:"estateagent";s:3:"2.0";s:18:"estoreeleganttheme";s:3:"1.0";s:10:"etinreview";s:3:"1.0";s:17:"eudoranewwpthemes";s:3:"1.0";s:9:"eventheme";s:3:"1.0";s:17:"evolvetheme4press";s:5:"2.2.2";s:17:"fantasiasmwptheme";s:3:"2.0";s:12:"fashionstyle";s:3:"2.0";s:15:"fedonewwpthemes";s:3:"1.0";s:20:"financialnewwpthemes";s:3:"1.1";s:17:"firelynewwpthemes";s:3:"1.0";s:11:"footballnet";s:3:"2.0";s:17:"foundynewwpthemes";s:3:"1.0";s:10:"fruitiness";s:3:"2.0";s:8:"function";s:3:"1.0";s:15:"functionwptheme";s:3:"1.0";s:6:"gadget";s:5:"1.0.3";s:8:"gameplus";s:3:"2.0";s:20:"gamesparknewwpthemes";s:3:"1.1";s:14:"gamessmwptheme";s:3:"2.0";s:17:"gamezonesmwptheme";s:3:"2.0";s:17:"gamingnewwpthemes";s:3:"1.0";s:17:"gardenthemejunkie";s:5:"1.0.1";s:28:"goodoldrestaurantthemeforest";s:3:"1.0";s:19:"goodtimenewwpthemes";s:3:"1.0";s:7:"grunger";s:3:"2.0";s:18:"halloweensmwptheme";s:3:"2.0";s:20:"harmonyelegantthemes";s:3:"1.2";s:24:"healthfitnessnewwpthemes";s:3:"1.1";s:19:"healthwpnewwpthemes";s:3:"1.0";s:27:"healthylifestylenewwpthemes";s:3:"3.1";s:6:"hiphop";s:3:"2.0";s:17:"hostianewwpthemes";s:3:"1.0";s:21:"hostingmoznewwpthemes";s:3:"1.1";s:21:"hostservernewwpthemes";s:3:"1.0";s:9:"hotelbook";s:3:"2.0";s:18:"hotnewsnewwpthemes";s:3:"1.0";s:4:"huex";s:3:"1.0";s:15:"ibiznewwpthemes";s:3:"1.0";s:16:"icarsnewwpthemes";s:3:"1.0";s:17:"identinewwpthemes";s:3:"1.0";s:19:"ifitnessnewwpthemes";s:3:"1.0";s:9:"imbalance";s:4:"1.19";s:18:"imbalance2wpshower";s:5:"1.0.3";s:18:"inspectnewwpthemes";s:3:"2.1";s:18:"instyleleganthemes";s:3:"1.5";s:22:"internetmagicsmwptheme";s:3:"1.0";s:16:"internosmwptheme";s:3:"1.0";s:19:"intozinenewwpthemes";s:3:"1.0";s:18:"itravelnewwpthemes";s:3:"1.0";s:17:"jasminnewwpthemes";s:3:"4.1";s:18:"justmagnewwpthemes";s:3:"1.0";s:4:"kora";s:5:"1.0.0";s:16:"krismasfabthemes";s:5:"1.0.0";s:22:"ladiesjournalsmwptheme";s:3:"2.0";s:16:"landanewwpthemes";s:3:"1.0";s:18:"learnernewwpthemes";s:3:"1.0";s:16:"linepressgabfire";s:3:"1.3";s:16:"lovedaysmwptheme";s:3:"2.0";s:18:"luminelegantthemes";s:3:"3.7";s:8:"magazine";s:5:"1.0.3";s:17:"magtopnewwpthemes";s:3:"1.0";s:15:"manifestowpzoom";s:3:"1.2";s:23:"maximagazinenewwpthemes";s:3:"1.0";s:18:"maximagnewwpthemes";s:3:"1.0";s:16:"maximnewwpthemes";s:3:"1.0";s:14:"mellowyootheme";s:6:"5.5.11";s:6:"memoir";s:3:"1.0";s:17:"meritanewwpthemes";s:3:"1.0";s:19:"metropresssmwptheme";s:3:"2.0";s:20:"minimalelegantthemes";s:3:"1.5";s:18:"modellingsmwptheme";s:3:"2.0";s:20:"modernmagnewwpthemes";s:3:"1.0";s:26:"mountaincreekgorillathemes";s:0:"";s:17:"mozzienewwpthemes";s:3:"2.1";s:9:"mycuisine";s:3:"1.0";s:11:"neoyootheme";s:6:"5.5.13";s:14:"newsdaynattywp";s:4:"1.00";s:6:"newses";s:5:"1.7.1";s:19:"newsfactnewwpthemes";s:3:"1.1";s:20:"newsgrandnewwpthemes";s:3:"1.0";s:19:"newsmashnewwpthemes";s:3:"1.0";s:22:"newsmorningnewwpthemes";s:3:"1.0";s:19:"newstubethemejunkie";s:5:"1.0.4";s:18:"newswaynewwpthemes";s:3:"1.0";s:16:"newyearsmwptheme";s:3:"2.0";s:15:"niconewwpthemes";s:3:"2.1";s:19:"nimbleelegantthemes";s:3:"1.0";s:16:"nitrothemeforest";s:3:"1.3";s:17:"noticenewwpthemes";s:3:"1.0";s:9:"novatheme";s:3:"2.0";s:14:"onionsmwptheme";s:3:"2.0";s:20:"onthegoelegantthemes";s:3:"1.0";s:19:"optimalenewwpthemes";s:3:"1.0";s:19:"originelegantthemes";s:3:"1.3";s:17:"oxygenthemeforest";s:5:"2.0.4";s:12:"parasponsive";s:3:"1.0";s:7:"perfume";s:3:"2.0";s:13:"personalpress";s:3:"1.1";s:21:"phenomenonthemeforest";s:3:"1.1";s:11:"photography";s:3:"2.0";s:7:"photome";s:3:"1.0";s:14:"photopurepress";s:3:"1.3";s:11:"placeholder";s:3:"1.1";s:17:"planshetsmwptheme";s:3:"2.0";s:11:"platformpro";s:7:"1.3.0.2";s:17:"portalthemejunkie";s:5:"1.0.4";s:6:"postit";s:3:"1.0";s:17:"premierewoothemes";s:6:"1.1.13";s:19:"pressbiznewwpthemes";s:3:"1.0";s:19:"pressmagnewwpthemes";s:3:"1.0";s:20:"pressnewsnewwpthemes";s:3:"1.0";s:20:"progressonewwpthemes";s:3:"1.0";s:19:"propressnewwpthemes";s:3:"1.0";s:21:"publisherthemesjunkie";s:5:"1.0.2";s:19:"purelinetheme4press";s:5:"1.1.0";s:10:"purevision";s:5:"1.4.1";s:17:"rapidonewwpthemes";s:3:"1.0";s:18:"restaurantemplatic";s:3:"1.0";s:16:"retreatwoothemes";s:3:"1.0";s:6:"rikado";s:3:"2.0";s:15:"rinonewwpthemes";s:3:"1.0";s:17:"sakurathemeforest";s:3:"1.2";s:20:"savinggracewoothemes";s:3:"1.0";s:21:"sciencepresssmwptheme";s:3:"2.0";s:16:"sentonewwpthemes";s:3:"2.1";s:17:"setivanewwpthemes";s:3:"1.0";s:12:"sevixwptheme";s:3:"1.0";s:21:"shakengridthemegarden";s:3:"1.3";s:17:"shotzzthemeforest";s:3:"1.5";s:15:"sidenewwpthemes";s:3:"1.0";s:17:"sierranewwpthemes";s:3:"1.0";s:13:"sightwpshower";s:3:"1.0";s:23:"simplepresseleganthemes";s:3:"1.0";s:19:"simplicitywoothemes";s:5:"1.4.2";s:9:"skeptical";s:5:"1.0.4";s:19:"smartpresssmwptheme";s:3:"2.0";s:13:"sparkyootheme";s:6:"5.5.13";s:17:"spectrumwoothemes";s:5:"1.0.1";s:17:"spherenewwpthemes";s:3:"1.0";s:5:"sport";s:3:"2.0";s:9:"sportblog";s:3:"2.0";s:20:"sportcarsnewwpthemes";s:3:"1.0";s:10:"sportpress";s:3:"2.0";s:18:"starmagnewwpthemes";s:3:"1.0";s:19:"strikingthemeforest";s:7:"5.1.9.5";s:9:"styleshop";s:3:"1.0";s:16:"suburbiawpshower";s:3:"1.1";s:19:"suitandtiewoothemes";s:5:"1.0.8";s:19:"superthemesmwptheme";s:3:"2.0";s:18:"superwpnewwpthemes";s:3:"1.1";s:19:"suvfocusnewwpthemes";s:3:"1.0";s:17:"suvmixnewwpthemes";s:3:"1.0";s:6:"swatch";s:5:"1.3.6";s:5:"table";s:5:"1.0.1";s:18:"techblogturkhitbox";s:3:"2.1";s:20:"techfrontnewwpthemes";s:3:"1.1";s:21:"techmatrixnewwpthemes";s:3:"1.1";s:18:"techpadnewwpthemes";s:3:"2.1";s:20:"techworldnewwpthemes";s:3:"1.0";s:17:"techwpnewwpthemes";s:3:"1.0";s:21:"thanksgivingsmwptheme";s:3:"2.0";s:20:"thecanyonthemeforest";s:3:"1.0";s:19:"thejournalwoothemes";s:5:"1.2.5";s:23:"theme953templatemonster";s:3:"2.8";s:23:"therestauranthemeforest";s:3:"4.2";s:9:"thestylet";s:3:"2.9";s:15:"tidalforcetheme";s:3:"1.0";s:20:"trademarkthemeforest";s:3:"1.0";s:19:"tribalgorillathemes";s:3:"2.1";s:13:"tribunewpzoom";s:3:"1.1";s:12:"twentyeleven";s:3:"1.4";s:9:"twentyten";s:3:"1.4";s:9:"typebased";s:5:"2.3.3";s:18:"udesignthemeforest";s:5:"1.5.1";s:9:"urbannews";s:3:"3.2";s:12:"uxturkhitbox";s:5:"1.0.3";s:17:"valerathemeforest";s:3:"1.2";s:15:"vanillayootheme";s:6:"5.5.13";s:19:"vanitygorillathemes";s:3:"2.0";s:18:"vitrinenewwpthemes";s:3:"1.0";s:10:"weblytheme";s:3:"1.0";s:17:"weeklythemejunkie";s:5:"1.0.6";s:25:"widescreengraphpaperpress";s:3:"1.2";s:10:"workaholic";s:3:"2.0";s:17:"wowwaythemeforest";s:5:"1.5.2";s:19:"wpcartoonssmwptheme";s:3:"2.0";s:19:"wpestatenewwpthemes";s:3:"1.0";s:17:"wpgeniusolostream";s:0:"";s:16:"wpmagnewwpthemes";s:3:"1.1";s:17:"wptechnewwpthemes";s:3:"1.0";s:18:"yespresnewwpthemes";s:3:"1.0";s:17:"zenmagnewwpthemes";s:3:"2.1";}s:8:"response";a:3:{s:5:"easel";a:3:{s:11:"new_version";s:5:"3.3.3";s:3:"url";s:33:"http://wordpress.org/themes/easel";s:7:"package";s:52:"http://wordpress.org/themes/download/easel.3.3.3.zip";}s:12:"twentyeleven";a:3:{s:11:"new_version";s:3:"1.7";s:3:"url";s:40:"http://wordpress.org/themes/twentyeleven";s:7:"package";s:57:"http://wordpress.org/themes/download/twentyeleven.1.7.zip";}s:9:"twentyten";a:3:{s:11:"new_version";s:3:"1.6";s:3:"url";s:37:"http://wordpress.org/themes/twentyten";s:7:"package";s:54:"http://wordpress.org/themes/download/twentyten.1.6.zip";}}}', 'yes'),
('1294', 'optionsframework_magazine', 'a:73:{s:9:"magz_logo";s:77:"http://magazine.lunatik.dev.morestyle.ru/wp-content/uploads/2013/06/logo1.png";s:12:"magz_favicon";s:0:"";s:15:"magz_custom_css";s:0:"";s:18:"magz_analytic_code";s:0:"";s:12:"magz_seodesc";s:0:"";s:16:"magz_seokeywords";s:0:"";s:11:"magz_slider";s:1:"1";s:19:"magz_sl_right_title";s:35:"Популярные новости";s:16:"magz_sl_right_bg";s:0:"";s:19:"magz_sl_right_color";s:0:"";s:24:"magz_sl_right_char_limit";s:1:"0";s:21:"magz_title_char_limit";s:2:"35";s:20:"magz_mini_char_limit";s:2:"35";s:23:"magz_post_excerpt_limit";s:3:"115";s:23:"magz_mini_excerpt_limit";s:2:"40";s:24:"magz_carousel_char_limit";s:2:"40";s:13:"magz_home_top";s:1:"1";s:19:"magz_home_top_title";s:29:"Горячие новости";s:15:"magz_httitle_bg";s:0:"";s:18:"magz_httitle_color";s:0:"";s:24:"magz_halfleft_categories";s:3:"145";s:21:"magz_catleft_title_bg";s:0:"";s:24:"magz_catleft_title_color";s:0:"";s:25:"magz_halfright_categories";s:3:"146";s:22:"magz_catright_title_bg";s:0:"";s:25:"magz_catright_title_color";s:0:"";s:24:"magz_halffull_categories";s:3:"144";s:21:"magz_catfull_title_bg";s:0:"";s:24:"magz_catfull_title_color";s:0:"";s:16:"magz_home_bottom";s:1:"1";s:22:"magz_home_bottom_title";s:31:"Галереи новостей";s:16:"magz_galtitle_bg";s:0:"";s:19:"magz_galtitle_color";s:0:"";s:13:"magz_headline";s:1:"1";s:11:"magz_brnews";s:1:"1";s:7:"body_bg";a:5:{s:5:"color";s:7:"#09151f";s:5:"image";s:96:"http://magazine.lunatik.dev.morestyle.ru/wp-content/uploads/2013/07/shutterstock_110700254_2.jpg";s:6:"repeat";s:9:"no-repeat";s:8:"position";s:8:"top left";s:10:"attachment";s:5:"fixed";}s:9:"header_bg";a:5:{s:5:"color";s:0:"";s:5:"image";s:0:"";s:6:"repeat";s:6:"repeat";s:8:"position";s:8:"top left";s:10:"attachment";s:6:"scroll";}s:10:"wrapper_bg";a:5:{s:5:"color";s:0:"";s:5:"image";s:0:"";s:6:"repeat";s:6:"repeat";s:8:"position";s:8:"top left";s:10:"attachment";s:6:"scroll";}s:13:"footwidget_bg";a:5:{s:5:"color";s:0:"";s:5:"image";s:0:"";s:6:"repeat";s:9:"no-repeat";s:8:"position";s:8:"top left";s:10:"attachment";s:6:"scroll";}s:9:"footer_bg";a:5:{s:5:"color";s:0:"";s:5:"image";s:0:"";s:6:"repeat";s:6:"repeat";s:8:"position";s:8:"top left";s:10:"attachment";s:6:"scroll";}s:17:"magz_footer_blok5";s:1:"1";s:16:"magz_footer_logo";s:90:"http://magazine.lunatik.dev.morestyle.ru/wp-content/themes/magazine/images/footer-logo.png";s:21:"magz_footer_logo_text";s:130:"<h4>About Magazine</h4>

<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eius

mod tempor incididu... </p>";s:18:"magz_footer_credit";b:0;s:23:"magz_footer_credit_text";s:7:"<p></p>";s:17:"magz_general_font";a:4:{s:4:"size";s:4:"13px";s:4:"face";s:17:"Arial, sans-serif";s:5:"style";s:6:"normal";s:5:"color";s:7:"#939ead";}s:12:"magz_h1_font";a:4:{s:4:"size";s:4:"24px";s:4:"face";s:39:""Helvetica Neue", Helvetica, sans-serif";s:5:"style";s:4:"bold";s:5:"color";s:7:"#939ead";}s:12:"magz_h2_font";a:4:{s:4:"size";s:4:"20px";s:4:"face";s:39:""Helvetica Neue", Helvetica, sans-serif";s:5:"style";s:4:"bold";s:5:"color";s:7:"#939ead";}s:12:"magz_h3_font";a:4:{s:4:"size";s:4:"16px";s:4:"face";s:39:""Helvetica Neue", Helvetica, sans-serif";s:5:"style";s:4:"bold";s:5:"color";s:7:"#939ead";}s:12:"magz_h4_font";a:4:{s:4:"size";s:4:"13px";s:4:"face";s:39:""Helvetica Neue", Helvetica, sans-serif";s:5:"style";s:4:"bold";s:5:"color";s:7:"#939ead";}s:12:"magz_h5_font";a:4:{s:4:"size";s:4:"12px";s:4:"face";s:39:""Helvetica Neue", Helvetica, sans-serif";s:5:"style";s:4:"bold";s:5:"color";s:7:"#939ead";}s:13:"magz_h1_color";s:0:"";s:10:"magz_h1_bg";s:0:"";s:15:"magz_link_color";s:0:"";s:15:"magz_link_decor";s:4:"none";s:21:"magz_link_hover_color";s:0:"";s:21:"magz_link_hover_decor";s:4:"none";s:19:"magz_nav_link_color";s:7:"#FFFFFF";s:25:"magz_nav_link_hover_color";s:7:"#7CC6FA";s:13:"magz_facebook";s:60:"https://www.facebook.com/pages/DM-Art-Studio/290026024368172";s:17:"magz_facebook-fan";s:15:"290026024368172";s:12:"magz_twitter";s:29:"http://www.twitter.com/PuriWP";s:17:"magz_twitter_oack";s:21:"nFpv0FEDo4C1GCL2ohy7w";s:17:"magz_twitter_oacs";s:41:"sGX6VEShtlf6MEPr8ptn83bCJMc14AGAeoHGa95rY";s:25:"magz_twitter_access_token";s:50:"49443945-lmLAS7XXWcUyGj2FSMTASE7oxiOiY511Nvx2nTeBc";s:32:"magz_twitter_access_token_secret";s:42:"AsidbDHJAL2h77kThKY2i2BuLbGeEzLejpchraEttk";s:15:"magz_twitter_un";s:6:"PuriWP";s:9:"magz_feed";s:46:"http://magazine.lunatik.dev.morestyle.ru/feed/";s:9:"magz_gmap";s:62:"Jalan Riung Бандунг, Бандунг, Индонезия";s:17:"magz_address_desc";s:170:"Наша экономическая жизнь не шоколад. Там не было никакой системы мониторинга, один напиток ...";s:10:"magz_email";s:20:"support@morestyle.ru";s:10:"magz_phone";s:10:"+123456789";s:12:"magz_website";s:19:"http://morestyle.ru";}', 'yes'),
('1295', '_site_transient_timeout_browser_2ec901a69f1a147966118ee0f0e74ccc', '1378672249', 'yes'),
('1296', '_site_transient_browser_2ec901a69f1a147966118ee0f0e74ccc', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:6:"Safari";s:7:"version";s:5:"6.0.5";s:10:"update_url";s:28:"http://www.apple.com/safari/";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/safari.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/safari.png";s:15:"current_version";s:1:"5";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
('111', '_site_transient_timeout_browser_5b0b3f77f6f70ddc5820e75d059f262a', '1328002938', 'yes'),
('112', '_site_transient_browser_5b0b3f77f6f70ddc5820e75d059f262a', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:6:"Chrome";s:7:"version";s:11:"16.0.912.75";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
('113', 'dashboard_widget_options', 'a:4:{s:25:"dashboard_recent_comments";a:1:{s:5:"items";i:5;}s:24:"dashboard_incoming_links";a:5:{s:4:"home";s:40:"http://magazine.lunatik.dev.morestyle.ru";s:4:"link";s:116:"http://blogsearch.google.com/blogsearch?scoring=d&partner=wordpress&q=link:http://magazine.lunatik.dev.morestyle.ru/";s:3:"url";s:137:"http://blogsearch.google.com/blogsearch_feeds?scoring=d&ie=utf-8&num=10&output=rss&partner=wordpress&q=link:http://wordpress.server-7.ru/";s:5:"items";i:10;s:9:"show_date";b:0;}s:17:"dashboard_primary";a:7:{s:4:"link";s:26:"http://wordpress.org/news/";s:3:"url";s:31:"http://wordpress.org/news/feed/";s:5:"title";s:18:"Блог WordPress";s:5:"items";i:2;s:12:"show_summary";i:1;s:11:"show_author";i:0;s:9:"show_date";i:1;}s:19:"dashboard_secondary";a:7:{s:4:"link";s:28:"http://planet.wordpress.org/";s:3:"url";s:33:"http://planet.wordpress.org/feed/";s:5:"title";s:37:"Другие новости WordPress";s:5:"items";i:5;s:12:"show_summary";i:0;s:11:"show_author";i:0;s:9:"show_date";i:0;}}', 'yes'),
('114', 'current_theme', 'Twenty Eleven', 'yes'),
('454', '_site_transient_timeout_browser_b9b67149893cf58ea98c6d61dc5cbb5c', '1328709279', 'yes'),
('455', '_site_transient_browser_b9b67149893cf58ea98c6d61dc5cbb5c', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:7:"Firefox";s:7:"version";s:5:"9.0.1";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:1:"9";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
('313', '_site_transient_timeout_browser_990d835906a99267553e4ec6dc3ed45a', '1328114332', 'yes'),
('314', '_site_transient_browser_990d835906a99267553e4ec6dc3ed45a', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:7:"Firefox";s:7:"version";s:5:"9.0.1";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:1:"9";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
('550', '_site_transient_timeout_browser_80364097c709ac2bf9708bc61c87ee62', '1330420369', 'yes'),
('551', '_site_transient_browser_80364097c709ac2bf9708bc61c87ee62', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:7:"Firefox";s:7:"version";s:6:"10.0.2";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:1:"9";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
('448', 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
('1069', 'sidebarlogin_welcome_heading', 'Welcome %username%', 'yes'),
('1070', 'sidebarlogin_login_redirect', '', 'yes'),
('1071', 'sidebarlogin_logout_redirect', '', 'yes'),
('1072', 'sidebarlogin_register_link', '1', 'yes'),
('1073', 'sidebarlogin_forgotton_link', '1', 'yes'),
('1074', 'sidebar_login_avatar', '1', 'yes'),
('1075', 'sidebarlogin_logged_in_links', '<a href="http://wordpress.server-7.ru/wp-admin/">Панель</a>
<a href="http://wordpress.server-7.ru/wp-admin/profile.php">Профиль</a>', 'yes'),
('1076', 'pagenavi_options', 'a:15:{s:10:"pages_text";s:50:"Страница %CURRENT_PAGE% из %TOTAL_PAGES%";s:12:"current_text";s:13:"%PAGE_NUMBER%";s:9:"page_text";s:13:"%PAGE_NUMBER%";s:10:"first_text";s:20:"&laquo; Первая";s:9:"last_text";s:26:"Последняя &raquo;";s:9:"prev_text";s:7:"&laquo;";s:9:"next_text";s:7:"&raquo;";s:12:"dotleft_text";s:3:"...";s:13:"dotright_text";s:3:"...";s:9:"num_pages";i:5;s:23:"num_larger_page_numbers";i:3;s:28:"larger_page_numbers_multiple";i:10;s:11:"always_show";b:0;s:16:"use_pagenavi_css";b:1;s:5:"style";i:1;}', 'yes'),
('1057', 'gd-star-rating', 'a:223:{s:16:"database_upgrade";s:31:"Tue, 24 Jul 2012 20:29:55 +0000";s:7:"version";s:6:"1.9.16";s:4:"date";s:11:"2012.03.27.";s:5:"build";i:1159;s:9:"code_name";s:7:"Prelude";s:8:"revision";i:0;s:6:"status";s:6:"Stable";s:10:"product_id";s:14:"gd-star-rating";s:11:"admin_views";i:0;s:11:"bot_message";s:6:"normal";s:27:"google_rich_snippets_format";s:11:"microformat";s:27:"google_rich_snippets_active";i:1;s:31:"google_rich_snippets_datasource";s:15:"standard_rating";s:27:"google_rich_snippets_hidden";i:1;s:29:"google_rich_snippets_location";s:6:"bottom";s:19:"no_votes_percentage";i:100;s:19:"update_report_usage";i:1;s:10:"ajax_jsonp";i:0;s:16:"wp_query_handler";i:1;s:14:"cached_loading";i:0;s:13:"prefetch_data";i:1;s:19:"external_rating_css";i:1;s:12:"external_css";i:1;s:16:"css_last_changed";i:1343161795;s:16:"css_cache_active";i:1;s:34:"cmm_integration_replay_hide_review";i:0;s:34:"cmm_integration_prevent_duplicates";i:1;s:17:"disable_ie6_check";i:0;s:16:"widgets_hidempty";i:0;s:8:"encoding";s:5:"UTF-8";s:16:"news_feed_active";i:1;s:18:"gfx_generator_auto";i:0;s:20:"gfx_prevent_leeching";i:1;s:12:"cache_active";i:1;s:12:"cache_forced";i:0;s:18:"cache_cleanup_auto";i:0;s:18:"cache_cleanup_days";i:7;s:21:"cache_cleanup_counter";i:0;s:18:"cache_cleanup_last";i:0;s:12:"debug_active";i:0;s:12:"debug_inline";i:1;s:13:"debug_wpquery";i:0;s:16:"database_cleanup";s:0:"";s:20:"database_cleanup_msg";s:0:"";s:9:"mass_lock";s:0:"";s:13:"thumbs_active";i:1;s:15:"include_opacity";i:0;s:14:"ie_opacity_fix";i:1;s:12:"ip_filtering";i:1;s:24:"ip_filtering_restrictive";i:0;s:15:"save_user_agent";i:0;s:12:"save_cookies";i:1;s:15:"widget_articles";i:1;s:10:"widget_top";i:1;s:15:"widget_comments";i:1;s:26:"security_showip_user_level";i:9;s:33:"security_showdashboard_user_level";i:9;s:19:"integrate_post_edit";i:1;s:23:"integrate_post_edit_mur";i:1;s:17:"integrate_tinymce";i:1;s:19:"integrate_dashboard";i:1;s:26:"integrate_dashboard_latest";i:1;s:32:"integrate_dashboard_latest_count";i:10;s:43:"integrate_dashboard_latest_filter_thumb_std";i:1;s:43:"integrate_dashboard_latest_filter_thumb_cmm";i:1;s:43:"integrate_dashboard_latest_filter_stars_std";i:1;s:43:"integrate_dashboard_latest_filter_stars_cmm";i:1;s:43:"integrate_dashboard_latest_filter_stars_mur";i:1;s:21:"integrate_rss_powered";i:0;s:17:"moderation_active";i:0;s:13:"multis_active";i:1;s:10:"rss_active";i:0;s:13:"review_active";i:1;s:12:"timer_active";i:0;s:36:"comments_integration_articles_active";i:1;s:15:"comments_active";i:1;s:22:"comments_review_active";i:1;s:15:"thumb_rss_style";s:10:"starrating";s:14:"thumb_rss_size";i:20;s:9:"rss_style";s:6:"oxygen";s:8:"rss_size";i:20;s:15:"rss_header_text";s:0:"";s:14:"rss_datasource";s:8:"standard";s:5:"style";s:6:"oxygen";s:9:"style_ie6";s:10:"oxygen_gif";s:4:"size";i:24;s:5:"stars";i:10;s:4:"text";s:6:"bottom";s:5:"align";s:4:"none";s:11:"header_text";s:0:"";s:15:"srb_class_block";s:0:"";s:14:"srb_class_text";s:0:"";s:16:"srb_class_header";s:0:"";s:15:"srb_class_stars";s:0:"";s:15:"cmm_class_block";s:0:"";s:14:"cmm_class_text";s:0:"";s:16:"cmm_class_header";s:0:"";s:15:"cmm_class_stars";s:0:"";s:20:"default_srb_template";i:0;s:20:"default_crb_template";i:0;s:20:"default_ssb_template";i:0;s:20:"default_mrb_template";i:0;s:20:"default_tab_template";i:0;s:20:"default_tcb_template";i:0;s:9:"mur_style";s:6:"oxygen";s:13:"mur_style_ie6";s:10:"oxygen_gif";s:8:"mur_size";i:20;s:10:"mur_header";i:0;s:15:"mur_header_text";s:0:"";s:15:"mur_class_stars";s:0:"";s:15:"mur_class_block";s:0:"";s:14:"mur_class_text";s:0:"";s:16:"mur_class_header";s:0:"";s:16:"mur_class_button";s:0:"";s:15:"mur_button_text";s:6:"Submit";s:17:"mur_button_active";i:1;s:14:"mur_review_set";i:0;s:9:"cmm_style";s:6:"oxygen";s:13:"cmm_style_ie6";s:10:"oxygen_gif";s:8:"cmm_size";i:16;s:9:"cmm_stars";i:5;s:8:"cmm_text";s:6:"bottom";s:9:"cmm_align";s:4:"none";s:15:"cmm_header_text";s:0:"";s:16:"cmm_review_style";s:6:"oxygen";s:20:"cmm_review_style_ie6";s:10:"oxygen_gif";s:15:"cmm_review_size";i:20;s:16:"cmm_review_stars";i:5;s:14:"cmm_aggr_style";s:6:"oxygen";s:18:"cmm_aggr_style_ie6";s:10:"oxygen_gif";s:13:"cmm_aggr_size";i:16;s:12:"review_style";s:6:"oxygen";s:16:"review_style_ie6";s:10:"oxygen_gif";s:11:"review_size";i:20;s:12:"review_stars";i:5;s:18:"review_header_text";s:0:"";s:18:"review_class_block";s:0:"";s:15:"display_comment";i:1;s:20:"display_comment_page";i:0;s:13:"display_posts";i:1;s:13:"display_pages";i:1;s:12:"display_home";i:1;s:15:"display_archive";i:1;s:14:"display_search";i:1;s:24:"override_display_comment";i:0;s:30:"override_thumb_display_comment";i:0;s:21:"auto_display_position";s:6:"bottom";s:29:"auto_display_comment_position";s:6:"bottom";s:11:"thumb_style";s:10:"starrating";s:15:"thumb_style_ie6";s:14:"starrating_gif";s:10:"thumb_size";i:20;s:17:"thumb_header_text";s:0:"";s:21:"thumb_display_comment";i:1;s:26:"thumb_display_comment_page";i:0;s:19:"thumb_display_posts";i:1;s:19:"thumb_display_pages";i:1;s:18:"thumb_display_home";i:1;s:21:"thumb_display_archive";i:1;s:20:"thumb_display_search";i:1;s:27:"thumb_auto_display_position";s:6:"bottom";s:35:"thumb_auto_display_comment_position";s:6:"bottom";s:15:"thumb_cmm_style";s:10:"starrating";s:19:"thumb_cmm_style_ie6";s:14:"starrating_gif";s:14:"thumb_cmm_size";i:20;s:21:"thumb_cmm_header_text";s:0:"";s:7:"cookies";i:1;s:6:"logged";i:1;s:11:"cmm_cookies";i:1;s:10:"cmm_logged";i:1;s:10:"admin_rows";i:10;s:14:"admin_advanced";i:1;s:15:"admin_placement";i:1;s:14:"admin_defaults";i:1;s:12:"admin_import";i:1;s:12:"admin_export";i:1;s:11:"admin_setup";i:1;s:9:"admin_ips";i:1;s:11:"author_vote";i:0;s:15:"cmm_author_vote";i:0;s:20:"allow_mixed_ip_votes";i:0;s:24:"cmm_allow_mixed_ip_votes";i:0;s:24:"mur_allow_mixed_ip_votes";i:0;s:25:"default_moderation_multis";s:1:"N";s:27:"default_moderation_articles";s:1:"N";s:27:"default_moderation_comments";s:1:"N";s:24:"default_voterules_multis";s:1:"A";s:26:"default_voterules_articles";s:1:"A";s:26:"default_voterules_comments";s:1:"A";s:32:"recc_default_moderation_articles";s:1:"N";s:32:"recc_default_moderation_comments";s:1:"N";s:31:"recc_default_voterules_articles";s:1:"A";s:31:"recc_default_voterules_comments";s:1:"A";s:18:"default_timer_type";s:1:"N";s:29:"default_timer_countdown_value";i:30;s:28:"default_timer_countdown_type";s:1:"D";s:19:"default_timer_value";s:3:"D30";s:22:"default_mur_timer_type";s:1:"N";s:33:"default_mur_timer_countdown_value";i:30;s:32:"default_mur_timer_countdown_type";s:1:"D";s:23:"default_mur_timer_value";s:3:"D30";s:19:"stats_trend_history";i:30;s:19:"stats_trend_current";i:3;s:10:"trend_last";i:1;s:10:"trend_over";i:30;s:16:"bayesian_minimal";i:10;s:13:"bayesian_mean";i:70;s:9:"use_nonce";i:1;s:20:"int_comment_std_zero";i:0;s:20:"int_comment_mur_zero";i:0;s:20:"wait_loader_artthumb";s:6:"flower";s:20:"wait_loader_cmmthumb";s:6:"flower";s:19:"wait_loader_article";s:6:"flower";s:19:"wait_loader_comment";s:6:"flower";s:18:"wait_loader_multis";s:6:"flower";s:17:"wait_text_article";s:14:"please wait...";s:17:"wait_show_article";i:0;s:18:"wait_class_article";s:0:"";s:17:"wait_text_comment";s:14:"please wait...";s:17:"wait_show_comment";i:0;s:18:"wait_class_comment";s:0:"";s:16:"wait_text_multis";s:14:"please wait...";s:16:"wait_show_multis";i:0;s:17:"wait_class_multis";s:0:"";}', 'yes'),
('1058', 'gd-star-rating-import', 'a:3:{s:16:"post_star_rating";i:0;s:15:"wp_post_ratings";i:0;s:23:"star_rating_for_reviews";i:0;}', 'yes'),
('1059', 'gd-star-rating-gfx', 'O:8:"GDgfxLib":4:{s:6:"thumbs";a:3:{i:0;O:10:"GDgfxThumb":15:{s:4:"name";s:9:"Classical";s:6:"folder";s:9:"classical";s:4:"type";s:3:"png";s:7:"version";s:3:"1.0";s:6:"author";s:14:"Milan Petrovic";s:5:"email";s:18:"milan@gdragon.info";s:3:"url";s:24:"http://www.gdragon.info/";s:6:"design";s:24:"http://www.gdragon.info/";s:9:"info_file";s:6:"thumbs";s:11:"info_folder";s:6:"thumbs";s:8:"gfx_path";s:101:"/var/www/wordpress/data/www/wordpress.server-7.ru/wp-content/plugins/gd-star-rating/thumbs/classical/";s:7:"gfx_url";s:80:"http://wordpress.server-7.ru/wp-content/plugins/gd-star-rating/thumbs/classical/";s:7:"primary";i:1;s:8:"imported";b:1;s:5:"sizes";a:0:{}}i:1;O:10:"GDgfxThumb":15:{s:4:"name";s:11:"Star Rating";s:6:"folder";s:10:"starrating";s:4:"type";s:3:"png";s:7:"version";s:3:"1.0";s:6:"author";s:14:"Milan Petrovic";s:5:"email";s:18:"milan@gdragon.info";s:3:"url";s:24:"http://www.gdragon.info/";s:6:"design";s:24:"http://www.gdragon.info/";s:9:"info_file";s:6:"thumbs";s:11:"info_folder";s:6:"thumbs";s:8:"gfx_path";s:102:"/var/www/wordpress/data/www/wordpress.server-7.ru/wp-content/plugins/gd-star-rating/thumbs/starrating/";s:7:"gfx_url";s:81:"http://wordpress.server-7.ru/wp-content/plugins/gd-star-rating/thumbs/starrating/";s:7:"primary";i:1;s:8:"imported";b:1;s:5:"sizes";a:0:{}}i:2;O:10:"GDgfxThumb":15:{s:4:"name";s:15:"Star Rating GIF";s:6:"folder";s:14:"starrating_gif";s:4:"type";s:3:"gif";s:7:"version";s:3:"1.0";s:6:"author";s:14:"Milan Petrovic";s:5:"email";s:18:"milan@gdragon.info";s:3:"url";s:24:"http://www.gdragon.info/";s:6:"design";s:24:"http://www.gdragon.info/";s:9:"info_file";s:6:"thumbs";s:11:"info_folder";s:6:"thumbs";s:8:"gfx_path";s:106:"/var/www/wordpress/data/www/wordpress.server-7.ru/wp-content/plugins/gd-star-rating/thumbs/starrating_gif/";s:7:"gfx_url";s:85:"http://wordpress.server-7.ru/wp-content/plugins/gd-star-rating/thumbs/starrating_gif/";s:7:"primary";i:1;s:8:"imported";b:1;s:5:"sizes";a:0:{}}}s:5:"stars";a:10:{i:0;O:9:"GDgfxStar":15:{s:4:"name";s:9:"Christmas";s:6:"folder";s:9:"christmas";s:4:"type";s:3:"png";s:7:"version";s:3:"1.1";s:6:"author";s:14:"Milan Petrovic";s:5:"email";s:18:"milan@gdragon.info";s:3:"url";s:24:"http://www.gdragon.info/";s:6:"design";s:22:"http://vistaicons.com/";s:9:"info_file";s:5:"stars";s:11:"info_folder";s:5:"stars";s:8:"gfx_path";s:100:"/var/www/wordpress/data/www/wordpress.server-7.ru/wp-content/plugins/gd-star-rating/stars/christmas/";s:7:"gfx_url";s:79:"http://wordpress.server-7.ru/wp-content/plugins/gd-star-rating/stars/christmas/";s:7:"primary";i:1;s:8:"imported";b:1;s:5:"sizes";a:0:{}}i:1;O:9:"GDgfxStar":15:{s:4:"name";s:7:"Crystal";s:6:"folder";s:7:"crystal";s:4:"type";s:3:"png";s:7:"version";s:3:"1.1";s:6:"author";s:14:"Milan Petrovic";s:5:"email";s:18:"milan@gdragon.info";s:3:"url";s:24:"http://www.gdragon.info/";s:6:"design";s:32:"http://www.everaldo.com/crystal/";s:9:"info_file";s:5:"stars";s:11:"info_folder";s:5:"stars";s:8:"gfx_path";s:98:"/var/www/wordpress/data/www/wordpress.server-7.ru/wp-content/plugins/gd-star-rating/stars/crystal/";s:7:"gfx_url";s:77:"http://wordpress.server-7.ru/wp-content/plugins/gd-star-rating/stars/crystal/";s:7:"primary";i:1;s:8:"imported";b:1;s:5:"sizes";a:0:{}}i:2;O:9:"GDgfxStar":15:{s:4:"name";s:8:"Darkness";s:6:"folder";s:8:"darkness";s:4:"type";s:3:"png";s:7:"version";s:3:"1.1";s:6:"author";s:14:"Milan Petrovic";s:5:"email";s:18:"milan@gdragon.info";s:3:"url";s:24:"http://www.gdragon.info/";s:6:"design";s:28:"http://www.oxygen-icons.org/";s:9:"info_file";s:5:"stars";s:11:"info_folder";s:5:"stars";s:8:"gfx_path";s:99:"/var/www/wordpress/data/www/wordpress.server-7.ru/wp-content/plugins/gd-star-rating/stars/darkness/";s:7:"gfx_url";s:78:"http://wordpress.server-7.ru/wp-content/plugins/gd-star-rating/stars/darkness/";s:7:"primary";i:1;s:8:"imported";b:1;s:5:"sizes";a:0:{}}i:3;O:9:"GDgfxStar":15:{s:4:"name";s:6:"Oxygen";s:6:"folder";s:6:"oxygen";s:4:"type";s:3:"png";s:7:"version";s:3:"1.1";s:6:"author";s:14:"Milan Petrovic";s:5:"email";s:18:"milan@gdragon.info";s:3:"url";s:24:"http://www.gdragon.info/";s:6:"design";s:28:"http://www.oxygen-icons.org/";s:9:"info_file";s:5:"stars";s:11:"info_folder";s:5:"stars";s:8:"gfx_path";s:97:"/var/www/wordpress/data/www/wordpress.server-7.ru/wp-content/plugins/gd-star-rating/stars/oxygen/";s:7:"gfx_url";s:76:"http://wordpress.server-7.ru/wp-content/plugins/gd-star-rating/stars/oxygen/";s:7:"primary";i:1;s:8:"imported";b:1;s:5:"sizes";a:0:{}}i:4;O:9:"GDgfxStar":15:{s:4:"name";s:15:"Oxygen On White";s:6:"folder";s:10:"oxygen_gif";s:4:"type";s:3:"gif";s:7:"version";s:3:"1.1";s:6:"author";s:14:"Milan Petrovic";s:5:"email";s:18:"milan@gdragon.info";s:3:"url";s:24:"http://www.gdragon.info/";s:6:"design";s:28:"http://www.oxygen-icons.org/";s:9:"info_file";s:5:"stars";s:11:"info_folder";s:5:"stars";s:8:"gfx_path";s:101:"/var/www/wordpress/data/www/wordpress.server-7.ru/wp-content/plugins/gd-star-rating/stars/oxygen_gif/";s:7:"gfx_url";s:80:"http://wordpress.server-7.ru/wp-content/plugins/gd-star-rating/stars/oxygen_gif/";s:7:"primary";i:1;s:8:"imported";b:1;s:5:"sizes";a:0:{}}i:5;O:9:"GDgfxStar":15:{s:4:"name";s:5:"Plain";s:6:"folder";s:5:"plain";s:4:"type";s:3:"png";s:7:"version";s:3:"2.0";s:6:"author";s:14:"Milan Petrovic";s:5:"email";s:18:"milan@gdragon.info";s:3:"url";s:24:"http://www.gdragon.info/";s:6:"design";s:24:"http://www.gdragon.info/";s:9:"info_file";s:5:"stars";s:11:"info_folder";s:5:"stars";s:8:"gfx_path";s:96:"/var/www/wordpress/data/www/wordpress.server-7.ru/wp-content/plugins/gd-star-rating/stars/plain/";s:7:"gfx_url";s:75:"http://wordpress.server-7.ru/wp-content/plugins/gd-star-rating/stars/plain/";s:7:"primary";i:1;s:8:"imported";b:1;s:5:"sizes";a:0:{}}i:6;O:9:"GDgfxStar":15:{s:4:"name";s:7:"Pumpkin";s:6:"folder";s:7:"pumpkin";s:4:"type";s:3:"png";s:7:"version";s:3:"1.1";s:6:"author";s:14:"Milan Petrovic";s:5:"email";s:18:"milan@gdragon.info";s:3:"url";s:24:"http://www.gdragon.info/";s:6:"design";s:62:"http://buzuk-eugen.deviantart.com/art/Helloween-Icons-68579888";s:9:"info_file";s:5:"stars";s:11:"info_folder";s:5:"stars";s:8:"gfx_path";s:98:"/var/www/wordpress/data/www/wordpress.server-7.ru/wp-content/plugins/gd-star-rating/stars/pumpkin/";s:7:"gfx_url";s:77:"http://wordpress.server-7.ru/wp-content/plugins/gd-star-rating/stars/pumpkin/";s:7:"primary";i:1;s:8:"imported";b:1;s:5:"sizes";a:0:{}}i:7;O:9:"GDgfxStar":15:{s:4:"name";s:4:"Soft";s:6:"folder";s:4:"soft";s:4:"type";s:3:"png";s:7:"version";s:3:"1.1";s:6:"author";s:14:"Milan Petrovic";s:5:"email";s:18:"milan@gdragon.info";s:3:"url";s:24:"http://www.gdragon.info/";s:6:"design";s:0:"";s:9:"info_file";s:5:"stars";s:11:"info_folder";s:5:"stars";s:8:"gfx_path";s:95:"/var/www/wordpress/data/www/wordpress.server-7.ru/wp-content/plugins/gd-star-rating/stars/soft/";s:7:"gfx_url";s:74:"http://wordpress.server-7.ru/wp-content/plugins/gd-star-rating/stars/soft/";s:7:"primary";i:1;s:8:"imported";b:1;s:5:"sizes";a:0:{}}i:8;O:9:"GDgfxStar":15:{s:4:"name";s:11:"Star Rating";s:6:"folder";s:10:"starrating";s:4:"type";s:3:"png";s:7:"version";s:3:"2.0";s:6:"author";s:14:"Milan Petrovic";s:5:"email";s:18:"milan@gdragon.info";s:3:"url";s:24:"http://www.gdragon.info/";s:6:"design";s:24:"http://www.gdragon.info/";s:9:"info_file";s:5:"stars";s:11:"info_folder";s:5:"stars";s:8:"gfx_path";s:101:"/var/www/wordpress/data/www/wordpress.server-7.ru/wp-content/plugins/gd-star-rating/stars/starrating/";s:7:"gfx_url";s:80:"http://wordpress.server-7.ru/wp-content/plugins/gd-star-rating/stars/starrating/";s:7:"primary";i:1;s:8:"imported";b:1;s:5:"sizes";a:0:{}}i:9;O:9:"GDgfxStar":15:{s:4:"name";s:9:"Starscape";s:6:"folder";s:9:"starscape";s:4:"type";s:3:"png";s:7:"version";s:3:"1.1";s:6:"author";s:14:"Milan Petrovic";s:5:"email";s:18:"milan@gdragon.info";s:3:"url";s:24:"http://www.gdragon.info/";s:6:"design";s:24:"http://www.gdragon.info/";s:9:"info_file";s:5:"stars";s:11:"info_folder";s:5:"stars";s:8:"gfx_path";s:100:"/var/www/wordpress/data/www/wordpress.server-7.ru/wp-content/plugins/gd-star-rating/stars/starscape/";s:7:"gfx_url";s:79:"http://wordpress.server-7.ru/wp-content/plugins/gd-star-rating/stars/starscape/";s:7:"primary";i:1;s:8:"imported";b:1;s:5:"sizes";a:0:{}}}s:5:"trend";a:3:{i:0;O:10:"GDgfxTrend":16:{s:4:"size";s:2:"16";s:4:"name";s:11:"Fam Fam Fam";s:6:"folder";s:9:"famfamfam";s:4:"type";s:3:"png";s:7:"version";s:3:"1.0";s:6:"author";s:14:"Milan Petrovic";s:5:"email";s:18:"milan@gdragon.info";s:3:"url";s:24:"http://www.gdragon.info/";s:6:"design";s:25:"http://www.famfamfam.com/";s:9:"info_file";s:5:"trend";s:11:"info_folder";s:6:"trends";s:8:"gfx_path";s:101:"/var/www/wordpress/data/www/wordpress.server-7.ru/wp-content/plugins/gd-star-rating/trends/famfamfam/";s:7:"gfx_url";s:80:"http://wordpress.server-7.ru/wp-content/plugins/gd-star-rating/trends/famfamfam/";s:7:"primary";i:1;s:8:"imported";b:1;s:5:"sizes";a:0:{}}i:1;O:10:"GDgfxTrend":16:{s:4:"size";s:2:"12";s:4:"name";s:18:"Fam Fam Fam Arrows";s:6:"folder";s:16:"famfamfam_arrows";s:4:"type";s:3:"png";s:7:"version";s:3:"1.0";s:6:"author";s:14:"Milan Petrovic";s:5:"email";s:18:"milan@gdragon.info";s:3:"url";s:24:"http://www.gdragon.info/";s:6:"design";s:25:"http://www.famfamfam.com/";s:9:"info_file";s:5:"trend";s:11:"info_folder";s:6:"trends";s:8:"gfx_path";s:108:"/var/www/wordpress/data/www/wordpress.server-7.ru/wp-content/plugins/gd-star-rating/trends/famfamfam_arrows/";s:7:"gfx_url";s:87:"http://wordpress.server-7.ru/wp-content/plugins/gd-star-rating/trends/famfamfam_arrows/";s:7:"primary";i:1;s:8:"imported";b:1;s:5:"sizes";a:0:{}}i:2;O:10:"GDgfxTrend":16:{s:4:"size";s:2:"12";s:4:"name";s:16:"Fam Fam Fam Mini";s:6:"folder";s:14:"famfamfam_mini";s:4:"type";s:3:"png";s:7:"version";s:3:"1.0";s:6:"author";s:14:"Milan Petrovic";s:5:"email";s:18:"milan@gdragon.info";s:3:"url";s:24:"http://www.gdragon.info/";s:6:"design";s:25:"http://www.famfamfam.com/";s:9:"info_file";s:5:"trend";s:11:"info_folder";s:6:"trends";s:8:"gfx_path";s:106:"/var/www/wordpress/data/www/wordpress.server-7.ru/wp-content/plugins/gd-star-rating/trends/famfamfam_mini/";s:7:"gfx_url";s:85:"http://wordpress.server-7.ru/wp-content/plugins/gd-star-rating/trends/famfamfam_mini/";s:7:"primary";i:1;s:8:"imported";b:1;s:5:"sizes";a:0:{}}}s:9:"last_scan";s:31:"Tue, 24 Jul 2012 20:29:55 +0000";}', 'yes'),
('1060', 'gd-star-rating-wpr8', 'a:1:{s:7:"web_key";s:0:"";}', 'yes'),
('1061', 'gd-star-rating-bots', 'a:68:{i:0;s:4:"FAST";i:1;s:6:"WebBug";i:2;s:5:"Spade";i:3;s:6:"ZyBorg";i:4;s:5:"rabaz";i:5;s:11:"Baiduspider";i:6;s:15:"TechnoratiSnoop";i:7;s:10:"Rankivabot";i:8;s:16:"Sogou web spider";i:9;s:15:"WebAlta Crawler";i:10;s:14:"www.galaxy.com";i:11;s:5:"Slurp";i:12;s:6:"msnbot";i:13;s:5:"appie";i:14;s:9:"TECNOSEEK";i:15;s:8:"InfoSeek";i:16;s:10:"WebFindBot";i:17;s:9:"girafabot";i:18;s:7:"crawler";i:19;s:7:"inktomi";i:20;s:9:"looksmart";i:21;s:14:"URL_Spider_SQL";i:22;s:7:"Firefly";i:23;s:17:"NationalDirectory";i:24;s:5:"Teoma";i:25;s:5:"alexa";i:26;s:7:"froogle";i:27;s:13:"AdsBot-Google";i:28;s:11:"ia_archiver";i:29;s:7:"Scooter";i:30;s:10:"Ask Jeeves";i:31;s:11:"Baiduspider";i:32;s:6:"Exabot";i:33;s:23:"FAST Enterprise Crawler";i:34;s:15:"FAST-WebCrawler";i:35;s:7:"Gigabot";i:36;s:20:"Mediapartners-Google";i:37;s:14:"Google Desktop";i:38;s:18:"Feedfetcher-Google";i:39;s:9:"Googlebot";i:40;s:22:"heise-IT-Markt-Crawler";i:41;s:8:"heritrix";i:42;s:6:"ichiro";i:43;s:7:"MJ12bot";i:44;s:10:"MetagerBot";i:45;s:16:"OmniExplorer_Bot";i:46;s:16:"msnbot-NewsBlogs";i:47;s:6:"msnbot";i:48;s:12:"msnbot-media";i:49;s:9:"NG-Search";i:50;s:8:"NutchCVS";i:51;s:7:"Seekbot";i:52;s:8:"SynooBot";i:53;s:18:"Sensis Web Crawler";i:54;s:18:"SEO search Crawler";i:55;s:5:"Seoma";i:56;s:9:"SEOsearch";i:57;s:7:"voyager";i:58;s:21:"W3 SiteSearch Crawler";i:59;s:30:"crawleradmin.t-info@telekom.de";i:60;s:11:"TurnitinBot";i:61;s:13:"W3C-checklink";i:62;s:7:"yacybot";i:63;s:15:"Yahoo-MMCrawler";i:64;s:15:"Yahoo! DE Slurp";i:65;s:12:"Yahoo! Slurp";i:66;s:11:"YahooSeeker";i:67;s:11:"Pingdom.com";}', 'yes'),
('1233', 'theme_mods_1aa', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:3:{s:12:"primary-menu";i:140;s:14:"secondary-menu";i:0;s:11:"footer-menu";i:0;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1355705164;s:4:"data";a:13:{s:19:"wp_inactive_widgets";a:0:{}s:26:"homepage-recentfrom-area-1";a:0:{}s:26:"homepage-recentfrom-area-2";a:0:{}s:26:"homepage-recentfrom-area-3";a:0:{}s:9:"sidebar-4";a:0:{}s:16:"homepage-sidebar";a:0:{}s:13:"bottom-area-1";a:0:{}s:13:"bottom-area-2";a:0:{}s:13:"bottom-area-3";a:0:{}s:7:"728area";a:0:{}s:12:"468_top_area";a:0:{}s:15:"468_bottom_area";a:0:{}s:10:"sidebar-12";a:0:{}}}}', 'yes'),
('1234', 'et_images_temp_folder', '/var/www/wordpress/data/www/wordpress.server-7.ru/wp-content/uploads/et_temp', 'yes'),
('1235', 'et_schedule_clean_images_last_time', '1347309852', 'yes'),
('1222', '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1347299914', 'yes'),
('858', 'addtoany_options', 'a:20:{s:8:"position";s:6:"bottom";s:30:"display_in_posts_on_front_page";s:1:"1";s:33:"display_in_posts_on_archive_pages";s:1:"1";s:19:"display_in_excerpts";s:1:"1";s:16:"display_in_posts";s:1:"1";s:16:"display_in_pages";s:1:"1";s:15:"display_in_feed";s:1:"1";s:10:"show_title";s:2:"-1";s:7:"onclick";s:2:"-1";s:6:"button";s:28:"share_save_171_16.png|171|16";s:13:"button_custom";s:0:"";s:23:"additional_js_variables";s:0:"";s:10:"inline_css";s:1:"1";s:5:"cache";s:2:"-1";s:11:"button_text";s:20:"В закладки!";s:15:"active_services";a:0:{}s:29:"special_facebook_like_options";a:1:{s:4:"verb";s:4:"like";}s:29:"special_twitter_tweet_options";a:1:{s:10:"show_count";s:2:"-1";}s:30:"special_google_plusone_options";a:1:{s:10:"show_count";s:2:"-1";}s:33:"special_google_plus_share_options";a:1:{s:10:"show_count";s:2:"-1";}}', 'yes'),
('859', 'theme_mods_aggregate', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1343084019;s:4:"data";a:13:{s:19:"wp_inactive_widgets";a:0:{}s:26:"homepage-recentfrom-area-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:26:"homepage-recentfrom-area-2";a:0:{}s:26:"homepage-recentfrom-area-3";a:0:{}s:9:"sidebar-4";a:0:{}s:16:"homepage-sidebar";a:0:{}s:13:"bottom-area-1";N;s:13:"bottom-area-2";N;s:13:"bottom-area-3";N;s:7:"728area";N;s:12:"468_top_area";N;s:15:"468_bottom_area";N;s:10:"sidebar-12";N;}}}', 'yes'),
('860', 'theme_switched', '', 'yes'),
('861', 'aggregate_logo', '', 'yes'),
('862', 'aggregate_favicon', '', 'yes'),
('863', 'aggregate_bgcolor', '', 'yes'),
('864', 'aggregate_bgtexture_url', 'Default', 'yes'),
('865', 'aggregate_bgimage', '', 'yes'),
('866', 'aggregate_header_font', 'Kreon', 'yes'),
('867', 'aggregate_header_font_color', '', 'yes'),
('868', 'aggregate_body_font', 'Droid Sans', 'yes'),
('869', 'aggregate_body_font_color', '', 'yes'),
('870', 'aggregate_color_scheme', 'Default', 'yes'),
('871', 'aggregate_blog_style', 'false', 'yes'),
('872', 'aggregate_grab_image', 'false', 'yes'),
('873', 'aggregate_catnum_posts', '6', 'yes'),
('874', 'aggregate_archivenum_posts', '5', 'yes'),
('875', 'aggregate_searchnum_posts', '5', 'yes'),
('876', 'aggregate_tagnum_posts', '5', 'yes'),
('877', 'aggregate_date_format', 'M j, Y', 'yes'),
('878', 'aggregate_use_excerpt', 'false', 'yes'),
('879', 'aggregate_show_control_panel', 'on', 'yes'),
('880', 'aggregate_homepage_posts', '7', 'yes'),
('1237', 'aggregate_feat_cat', 'Авто-мото', 'yes'),
('882', 'aggregate_featured', 'on', 'yes'),
('883', 'aggregate_duplicate', 'on', 'yes'),
('884', 'aggregate_featured_num', '3', 'yes'),
('885', 'aggregate_use_pages', 'false', 'yes'),
('887', 'aggregate_slider_auto', 'false', 'yes'),
('888', 'aggregate_slider_pause', 'false', 'yes'),
('889', 'aggregate_slider_autospeed', '7000', 'yes'),
('891', 'aggregate_enable_dropdowns', 'on', 'yes'),
('892', 'aggregate_home_link', 'on', 'yes'),
('893', 'aggregate_sort_pages', 'post_title', 'yes'),
('894', 'aggregate_order_page', 'asc', 'yes'),
('895', 'aggregate_tiers_shown_pages', '2', 'yes'),
('897', 'aggregate_enable_dropdowns_categories', 'on', 'yes'),
('898', 'aggregate_categories_empty', 'on', 'yes'),
('899', 'aggregate_tiers_shown_categories', '3', 'yes'),
('900', 'aggregate_sort_cat', 'name', 'yes'),
('901', 'aggregate_order_cat', 'asc', 'yes'),
('902', 'aggregate_disable_toptier', 'false', 'yes'),
('903', 'aggregate_postinfo2', 'a:2:{i:0;s:10:"categories";i:1;s:8:"comments";}', 'yes'),
('904', 'aggregate_thumbnails', 'on', 'yes'),
('905', 'aggregate_show_postcomments', 'on', 'yes'),
('906', 'aggregate_page_thumbnails', 'false', 'yes'),
('907', 'aggregate_show_pagescomments', 'false', 'yes'),
('908', 'aggregate_postinfo1', 'a:4:{i:0;s:6:"author";i:1;s:4:"date";i:2;s:10:"categories";i:3;s:8:"comments";}', 'yes'),
('909', 'aggregate_thumbnails_index', 'on', 'yes'),
('910', 'aggregate_custom_colors', 'false', 'yes'),
('911', 'aggregate_child_css', 'false', 'yes'),
('912', 'aggregate_child_cssurl', '', 'yes'),
('913', 'aggregate_color_mainfont', '', 'yes'),
('914', 'aggregate_color_mainlink', '', 'yes'),
('915', 'aggregate_color_pagelink', '', 'yes'),
('916', 'aggregate_color_pagelink_active', '', 'yes'),
('917', 'aggregate_color_headings', '', 'yes'),
('918', 'aggregate_color_sidebar_links', '', 'yes'),
('919', 'aggregate_footer_text', '', 'yes'),
('920', 'aggregate_color_footerlinks', '', 'yes'),
('921', 'aggregate_seo_home_title', 'false', 'yes'),
('922', 'aggregate_seo_home_description', 'false', 'yes'),
('923', 'aggregate_seo_home_keywords', 'false', 'yes'),
('924', 'aggregate_seo_home_canonical', 'false', 'yes'),
('925', 'aggregate_seo_home_titletext', '', 'yes'),
('926', 'aggregate_seo_home_descriptiontext', '', 'yes'),
('927', 'aggregate_seo_home_keywordstext', '', 'yes'),
('928', 'aggregate_seo_home_type', 'BlogName | Blog description', 'yes'),
('929', 'aggregate_seo_home_separate', ' | ', 'yes'),
('930', 'aggregate_seo_single_title', 'false', 'yes'),
('931', 'aggregate_seo_single_description', 'false', 'yes'),
('932', 'aggregate_seo_single_keywords', 'false', 'yes'),
('933', 'aggregate_seo_single_canonical', 'false', 'yes'),
('934', 'aggregate_seo_single_field_title', 'seo_title', 'yes'),
('935', 'aggregate_seo_single_field_description', 'seo_description', 'yes'),
('936', 'aggregate_seo_single_field_keywords', 'seo_keywords', 'yes'),
('937', 'aggregate_seo_single_type', 'Post title | BlogName', 'yes'),
('938', 'aggregate_seo_single_separate', ' | ', 'yes'),
('939', 'aggregate_seo_index_canonical', 'false', 'yes'),
('940', 'aggregate_seo_index_description', 'false', 'yes'),
('941', 'aggregate_seo_index_type', 'Category name | BlogName', 'yes'),
('942', 'aggregate_seo_index_separate', ' | ', 'yes'),
('943', 'aggregate_integrate_header_enable', 'on', 'yes'),
('944', 'aggregate_integrate_body_enable', 'on', 'yes'),
('945', 'aggregate_integrate_singletop_enable', 'on', 'yes'),
('946', 'aggregate_integrate_singlebottom_enable', 'on', 'yes'),
('947', 'aggregate_integration_head', '', 'yes'),
('948', 'aggregate_integration_body', '', 'yes'),
('949', 'aggregate_integration_single_top', '', 'yes'),
('950', 'aggregate_integration_single_bottom', '', 'yes'),
('951', 'aggregate_468_enable', 'on', 'yes'),
('952', 'aggregate_468_image', 'аиваививав', 'yes'),
('953', 'aggregate_468_url', 'morestyle.ru', 'yes'),
('954', 'aggregate_468_adsense', '<img src="https://dl.dropbox.com/u/57047273/loveit.png">', 'yes'),
('752', '_site_transient_browser_51e701868884b9334a36c003b7fba3af', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"11.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:1:"9";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
('707', '_site_transient_timeout_browser_f4ae16eddcdf02637cd35a4187eec41b', '1331557395', 'yes'),
('708', '_site_transient_browser_f4ae16eddcdf02637cd35a4187eec41b', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:6:"Chrome";s:7:"version";s:11:"17.0.963.56";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
('589', '_site_transient_timeout_browser_a7e15ed823b93415ba6654f9b2997c46', '1331037127', 'yes'),
('792', 'can_compress_scripts', '0', 'yes'),
('1725', '_transient_timeout_feed_786e449131cb9eb9d3848a1b24532bd0', '1378275930', 'no'),
('1726', '_transient_feed_786e449131cb9eb9d3848a1b24532bd0', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:4:"
  
";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:33:"
    
    
    
    
    
    
  ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:3:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:55:"link:http://wordpress.server-7.ru/ - Google Blog Search";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:92:"http://www.google.com/search?ie=utf-8&q=link:http://wordpress.server-7.ru/&tbm=blg&tbs=sbd:1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:86:"Your search - <b>link:http://wordpress.server-7.ru/</b> - did not match any documents.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://a9.com/-/spec/opensearch/1.1/";a:3:{s:12:"totalResults";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:10:"startIndex";a:1:{i:0;a:5:{s:4:"data";s:1:"1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:12:"itemsPerPage";a:1:{i:0;a:5:{s:4:"data";s:2:"10";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";a:10:{s:12:"content-type";s:28:"text/xml; charset=ISO-8859-1";s:4:"date";s:29:"Tue, 03 Sep 2013 18:25:30 GMT";s:7:"expires";s:2:"-1";s:13:"cache-control";s:18:"private, max-age=0";s:10:"set-cookie";a:2:{i:0;s:143:"PREF=ID=a7a250234aad9e07:FF=0:TM=1378232730:LM=1378232730:S=CHbxeiRpqbzadjV5; expires=Thu, 03-Sep-2015 18:25:30 GMT; path=/; domain=.google.com";i:1;s:212:"NID=67=rMnpbCXA5dMqOBmvczPDrzZU__r4O4H6psq-_4BTtaoemKUuGizeayjAoCCbyjkku6ngtjPApZF3sxEnk5gES9kgMt6tEqd-ORZKx0J0iIdizMeozCrtJqdR_5EUFwTf; expires=Wed, 05-Mar-2014 18:25:30 GMT; path=/; domain=.google.com; HttpOnly";}s:3:"p3p";s:122:"CP="This is not a P3P policy! See http://www.google.com/support/accounts/bin/answer.py?hl=en&answer=151657 for more info."";s:6:"server";s:3:"gws";s:16:"x-xss-protection";s:13:"1; mode=block";s:15:"x-frame-options";s:10:"SAMEORIGIN";s:18:"alternate-protocol";s:7:"80:quic";}s:5:"build";s:14:"20111015034325";}', 'no'),
('1051', '_transient_timeout_feed_mod_33482f4042507066a220ee8226a5d6e5', '1343183475', 'no'),
('1052', '_transient_feed_mod_33482f4042507066a220ee8226a5d6e5', '1343140275', 'no'),
('1049', '_transient_timeout_feed_33482f4042507066a220ee8226a5d6e5', '1343183475', 'no'),
('1050', '_transient_feed_33482f4042507066a220ee8226a5d6e5', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:4:"
  
";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:93:"
    
    
    
    
    
    
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:21:"Twitter / NewWpThemes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:30:"http://twitter.com/NewWpThemes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:47:"Twitter updates from NewWpThemes / NewWpThemes.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"en-us";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:3:"ttl";a:1:{i:0;a:5:{s:4:"data";s:2:"40";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:20:{i:0;a:6:{s:4:"data";s:38:"
    
    
    
    
    
    
    
  ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:120:"NewWpThemes: Free WordPress Theme PressBiz http://t.co/YrpIvxzr #businessportfolio #2columns #gray #orange #rightsidebar";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:120:"NewWpThemes: Free WordPress Theme PressBiz http://t.co/YrpIvxzr #businessportfolio #2columns #gray #orange #rightsidebar";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 23 Jul 2012 08:08:02 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:58:"http://twitter.com/NewWpThemes/statuses/227314114844844032";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:58:"http://twitter.com/NewWpThemes/statuses/227314114844844032";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:22:"http://api.twitter.com";a:2:{s:6:"source";a:1:{i:0;a:5:{s:4:"data";s:58:"<a href="http://www.google.com/" rel="nofollow">Google</a>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:5:"place";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:38:"
    
    
    
    
    
    
    
  ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:117:"NewWpThemes: Free WordPress Theme MaxiMag http://t.co/U5T8cfm8 #newsmagazine #3columns #blue #gray #leftrightsidebars";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:117:"NewWpThemes: Free WordPress Theme MaxiMag http://t.co/U5T8cfm8 #newsmagazine #3columns #blue #gray #leftrightsidebars";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 20 Jul 2012 12:40:33 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:58:"http://twitter.com/NewWpThemes/statuses/226295530953768960";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:58:"http://twitter.com/NewWpThemes/statuses/226295530953768960";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:22:"http://api.twitter.com";a:2:{s:6:"source";a:1:{i:0;a:5:{s:4:"data";s:58:"<a href="http://www.google.com/" rel="nofollow">Google</a>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:5:"place";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:38:"
    
    
    
    
    
    
    
  ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:120:"NewWpThemes: Free WordPress Theme WpEstate http://t.co/bFiOovhj #generalblog #3columns #blue #mixedcolumns #rightsidebar";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:120:"NewWpThemes: Free WordPress Theme WpEstate http://t.co/bFiOovhj #generalblog #3columns #blue #mixedcolumns #rightsidebar";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 19 Jul 2012 09:04:12 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:58:"http://twitter.com/NewWpThemes/statuses/225878698274979840";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:58:"http://twitter.com/NewWpThemes/statuses/225878698274979840";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:22:"http://api.twitter.com";a:2:{s:6:"source";a:1:{i:0;a:5:{s:4:"data";s:58:"<a href="http://www.google.com/" rel="nofollow">Google</a>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:5:"place";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:38:"
    
    
    
    
    
    
    
  ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:124:"NewWpThemes: Free WordPress Theme Setiva http://t.co/2T75NwOB #generalblog #3columns #brown #mixedcolumns #red #rightsidebar";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:124:"NewWpThemes: Free WordPress Theme Setiva http://t.co/2T75NwOB #generalblog #3columns #brown #mixedcolumns #red #rightsidebar";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 16 Jul 2012 11:10:54 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:58:"http://twitter.com/NewWpThemes/statuses/224823415935213569";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:58:"http://twitter.com/NewWpThemes/statuses/224823415935213569";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:22:"http://api.twitter.com";a:2:{s:6:"source";a:1:{i:0;a:5:{s:4:"data";s:58:"<a href="http://www.google.com/" rel="nofollow">Google</a>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:5:"place";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:38:"
    
    
    
    
    
    
    
  ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:114:"NewWpThemes: Free WordPress Theme PressNews http://t.co/2Rb4gCTk #newsmagazine #3columns #red #rightsidebar #white";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:114:"NewWpThemes: Free WordPress Theme PressNews http://t.co/2Rb4gCTk #newsmagazine #3columns #red #rightsidebar #white";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 13 Jul 2012 09:56:26 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:58:"http://twitter.com/NewWpThemes/statuses/223717512125218816";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:58:"http://twitter.com/NewWpThemes/statuses/223717512125218816";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:22:"http://api.twitter.com";a:2:{s:6:"source";a:1:{i:0;a:5:{s:4:"data";s:58:"<a href="http://www.google.com/" rel="nofollow">Google</a>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:5:"place";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:38:"
    
    
    
    
    
    
    
  ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:117:"NewWpThemes: Free WordPress Theme NewsMorning http://t.co/5CdOGQcc #newsmagazine #2columns #blue #rightsidebar #white";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:117:"NewWpThemes: Free WordPress Theme NewsMorning http://t.co/5CdOGQcc #newsmagazine #2columns #blue #rightsidebar #white";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 07 Jul 2012 17:04:49 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:58:"http://twitter.com/NewWpThemes/statuses/221650991966208002";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:58:"http://twitter.com/NewWpThemes/statuses/221650991966208002";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:22:"http://api.twitter.com";a:2:{s:6:"source";a:1:{i:0;a:5:{s:4:"data";s:58:"<a href="http://www.google.com/" rel="nofollow">Google</a>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:5:"place";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:38:"
    
    
    
    
    
    
    
  ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:117:"NewWpThemes: Free WordPress Theme Hostia http://t.co/595s6dRc #generalblog #3columns #black #green #leftrightsidebars";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:117:"NewWpThemes: Free WordPress Theme Hostia http://t.co/595s6dRc #generalblog #3columns #black #green #leftrightsidebars";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 06 Jul 2012 14:03:41 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:58:"http://twitter.com/NewWpThemes/statuses/221243020484423680";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:58:"http://twitter.com/NewWpThemes/statuses/221243020484423680";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:22:"http://api.twitter.com";a:2:{s:6:"source";a:1:{i:0;a:5:{s:4:"data";s:58:"<a href="http://www.google.com/" rel="nofollow">Google</a>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:5:"place";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:38:"
    
    
    
    
    
    
    
  ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:121:"NewWpThemes: Free WordPress Theme PressMag http://t.co/j6ImCvM0 #newsmagazine #3columns #blue #mixedcolumns #rightsidebar";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:121:"NewWpThemes: Free WordPress Theme PressMag http://t.co/j6ImCvM0 #newsmagazine #3columns #blue #mixedcolumns #rightsidebar";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 02 Jul 2012 10:05:28 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:58:"http://twitter.com/NewWpThemes/statuses/219733522586402816";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:58:"http://twitter.com/NewWpThemes/statuses/219733522586402816";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:22:"http://api.twitter.com";a:2:{s:6:"source";a:1:{i:0;a:5:{s:4:"data";s:58:"<a href="http://www.google.com/" rel="nofollow">Google</a>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:5:"place";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:38:"
    
    
    
    
    
    
    
  ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:113:"NewWpThemes: Free WordPress Theme Decada http://t.co/YidmCVdb #generalblog #2columns #orange #rightsidebar #white";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:113:"NewWpThemes: Free WordPress Theme Decada http://t.co/YidmCVdb #generalblog #2columns #orange #rightsidebar #white";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 29 Jun 2012 06:01:51 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:58:"http://twitter.com/NewWpThemes/statuses/218585048004304897";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:58:"http://twitter.com/NewWpThemes/statuses/218585048004304897";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:22:"http://api.twitter.com";a:2:{s:6:"source";a:1:{i:0;a:5:{s:4:"data";s:58:"<a href="http://www.google.com/" rel="nofollow">Google</a>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:5:"place";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:38:"
    
    
    
    
    
    
    
  ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:121:"NewWpThemes: Free WordPress Theme Progresso http://t.co/VPm8e3KC #generalblog #3columns #blue #mixedcolumns #rightsidebar";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:121:"NewWpThemes: Free WordPress Theme Progresso http://t.co/VPm8e3KC #generalblog #3columns #blue #mixedcolumns #rightsidebar";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 24 Jun 2012 18:21:35 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:58:"http://twitter.com/NewWpThemes/statuses/216959270577647616";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:58:"http://twitter.com/NewWpThemes/statuses/216959270577647616";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:22:"http://api.twitter.com";a:2:{s:6:"source";a:1:{i:0;a:5:{s:4:"data";s:58:"<a href="http://www.google.com/" rel="nofollow">Google</a>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:5:"place";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:10;a:6:{s:4:"data";s:38:"
    
    
    
    
    
    
    
  ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:117:"NewWpThemes: Free WordPress Theme NewsWay http://t.co/8gIkkcHH #newsmagazine #3columns #blue #gray #leftrightsidebars";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:117:"NewWpThemes: Free WordPress Theme NewsWay http://t.co/8gIkkcHH #newsmagazine #3columns #blue #gray #leftrightsidebars";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 21 Jun 2012 06:51:02 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:58:"http://twitter.com/NewWpThemes/statuses/215698324458704896";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:58:"http://twitter.com/NewWpThemes/statuses/215698324458704896";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:22:"http://api.twitter.com";a:2:{s:6:"source";a:1:{i:0;a:5:{s:4:"data";s:58:"<a href="http://www.google.com/" rel="nofollow">Google</a>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:5:"place";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:11;a:6:{s:4:"data";s:38:"
    
    
    
    
    
    
    
  ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:117:"NewWpThemes: Free WordPress Theme Creativity http://t.co/lIhu84OU #generalblog #2columns #black #orange #rightsidebar";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:117:"NewWpThemes: Free WordPress Theme Creativity http://t.co/lIhu84OU #generalblog #2columns #black #orange #rightsidebar";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 17 Jun 2012 17:49:04 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:58:"http://twitter.com/NewWpThemes/statuses/214414370388721664";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:58:"http://twitter.com/NewWpThemes/statuses/214414370388721664";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:22:"http://api.twitter.com";a:2:{s:6:"source";a:1:{i:0;a:5:{s:4:"data";s:58:"<a href="http://www.google.com/" rel="nofollow">Google</a>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:5:"place";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:12;a:6:{s:4:"data";s:38:"
    
    
    
    
    
    
    
  ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:126:"NewWpThemes: Free WordPress Theme JustMag http://t.co/Z5WocLsG #newsmagazine #3columns #blue #gray #mixedcolumns #rightsidebar";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:126:"NewWpThemes: Free WordPress Theme JustMag http://t.co/Z5WocLsG #newsmagazine #3columns #blue #gray #mixedcolumns #rightsidebar";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 15 Jun 2012 20:20:23 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:58:"http://twitter.com/NewWpThemes/statuses/213727675737571328";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:58:"http://twitter.com/NewWpThemes/statuses/213727675737571328";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:22:"http://api.twitter.com";a:2:{s:6:"source";a:1:{i:0;a:5:{s:4:"data";s:58:"<a href="http://www.google.com/" rel="nofollow">Google</a>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:5:"place";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:13;a:6:{s:4:"data";s:38:"
    
    
    
    
    
    
    
  ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:111:"NewWpThemes: Free WordPress Theme HealthFitness http://t.co/J9TXXJqU #generalblog #2columns #blue #rightsidebar";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:111:"NewWpThemes: Free WordPress Theme HealthFitness http://t.co/J9TXXJqU #generalblog #2columns #blue #rightsidebar";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 11 Jun 2012 15:33:08 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:58:"http://twitter.com/NewWpThemes/statuses/212205834145509378";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:58:"http://twitter.com/NewWpThemes/statuses/212205834145509378";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:22:"http://api.twitter.com";a:2:{s:6:"source";a:1:{i:0;a:5:{s:4:"data";s:58:"<a href="http://www.google.com/" rel="nofollow">Google</a>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:5:"place";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:14;a:6:{s:4:"data";s:38:"
    
    
    
    
    
    
    
  ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:119:"NewWpThemes: Free WordPress Theme TechFront http://t.co/Kmp8NpYB #generalblog #3columns #black #blue #leftrightsidebars";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:119:"NewWpThemes: Free WordPress Theme TechFront http://t.co/Kmp8NpYB #generalblog #3columns #black #blue #leftrightsidebars";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 08 Jun 2012 16:47:14 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:58:"http://twitter.com/NewWpThemes/statuses/211137320089427968";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:58:"http://twitter.com/NewWpThemes/statuses/211137320089427968";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:22:"http://api.twitter.com";a:2:{s:6:"source";a:1:{i:0;a:5:{s:4:"data";s:58:"<a href="http://www.google.com/" rel="nofollow">Google</a>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:5:"place";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:15;a:6:{s:4:"data";s:38:"
    
    
    
    
    
    
    
  ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:112:"NewWpThemes: Free WordPress Theme NewsFact http://t.co/7rNs0YJt #newsmagazine #3columns #gray #red #rightsidebar";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:112:"NewWpThemes: Free WordPress Theme NewsFact http://t.co/7rNs0YJt #newsmagazine #3columns #gray #red #rightsidebar";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 07 Jun 2012 12:15:25 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:58:"http://twitter.com/NewWpThemes/statuses/210706527722536960";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:58:"http://twitter.com/NewWpThemes/statuses/210706527722536960";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:22:"http://api.twitter.com";a:2:{s:6:"source";a:1:{i:0;a:5:{s:4:"data";s:58:"<a href="http://www.google.com/" rel="nofollow">Google</a>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:5:"place";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:16;a:6:{s:4:"data";s:38:"
    
    
    
    
    
    
    
  ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:120:"NewWpThemes: Free WordPress Theme HostingMoz http://t.co/KWAghpIR #generalblog #3columns #black #blue #leftrightsidebars";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:120:"NewWpThemes: Free WordPress Theme HostingMoz http://t.co/KWAghpIR #generalblog #3columns #black #blue #leftrightsidebars";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 05 Jun 2012 21:07:43 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:58:"http://twitter.com/NewWpThemes/statuses/210115708665872384";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:58:"http://twitter.com/NewWpThemes/statuses/210115708665872384";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:22:"http://api.twitter.com";a:2:{s:6:"source";a:1:{i:0;a:5:{s:4:"data";s:58:"<a href="http://www.google.com/" rel="nofollow">Google</a>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:5:"place";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:17;a:6:{s:4:"data";s:38:"
    
    
    
    
    
    
    
  ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:114:"NewWpThemes: Free WordPress Theme Financial http://t.co/UepxF5f4 #generalblog #2columns #gray #green #rightsidebar";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:114:"NewWpThemes: Free WordPress Theme Financial http://t.co/UepxF5f4 #generalblog #2columns #gray #green #rightsidebar";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 03 Jun 2012 19:27:39 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:58:"http://twitter.com/NewWpThemes/statuses/209365750111158272";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:58:"http://twitter.com/NewWpThemes/statuses/209365750111158272";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:22:"http://api.twitter.com";a:2:{s:6:"source";a:1:{i:0;a:5:{s:4:"data";s:58:"<a href="http://www.google.com/" rel="nofollow">Google</a>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:5:"place";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:18;a:6:{s:4:"data";s:38:"
    
    
    
    
    
    
    
  ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:108:"NewWpThemes: Free WordPress Theme TechMatrix http://t.co/sU2oEoQ0 #generalblog #2columns #blue #rightsidebar";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:108:"NewWpThemes: Free WordPress Theme TechMatrix http://t.co/sU2oEoQ0 #generalblog #2columns #blue #rightsidebar";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 30 May 2012 10:57:38 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:58:"http://twitter.com/NewWpThemes/statuses/207787848370356224";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:58:"http://twitter.com/NewWpThemes/statuses/207787848370356224";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:22:"http://api.twitter.com";a:2:{s:6:"source";a:1:{i:0;a:5:{s:4:"data";s:58:"<a href="http://www.google.com/" rel="nofollow">Google</a>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:5:"place";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:19;a:6:{s:4:"data";s:38:"
    
    
    
    
    
    
    
  ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:124:"NewWpThemes: Free WordPress Theme WPMag http://t.co/scGlGVOW #newsmagazine #3columns #blue #gray #mixedcolumns #rightsidebar";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:124:"NewWpThemes: Free WordPress Theme WPMag http://t.co/scGlGVOW #newsmagazine #3columns #blue #gray #mixedcolumns #rightsidebar";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 27 May 2012 16:27:17 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:58:"http://twitter.com/NewWpThemes/statuses/206783644818350080";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:58:"http://twitter.com/NewWpThemes/statuses/206783644818350080";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:22:"http://api.twitter.com";a:2:{s:6:"source";a:1:{i:0;a:5:{s:4:"data";s:58:"<a href="http://www.google.com/" rel="nofollow">Google</a>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:5:"place";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"type";s:19:"application/rss+xml";s:4:"href";s:57:"http://twitter.com/statuses/user_timeline/NewWpThemes.rss";s:3:"rel";s:4:"self";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";a:24:{s:4:"date";s:29:"Tue, 24 Jul 2012 14:31:15 GMT";s:6:"status";s:6:"200 OK";s:18:"x-transaction-mask";s:40:"a6183ffa5f8ca943ff1b53b5644ef114e7a524c4";s:13:"last-modified";s:29:"Tue, 24 Jul 2012 14:31:15 GMT";s:21:"x-ratelimit-remaining";s:3:"127";s:13:"x-transaction";s:16:"d499ef2af133464d";s:12:"content-type";s:34:"application/rss+xml; charset=utf-8";s:4:"etag";s:34:""d1d5682b4b23165f948ee637c03a8ac8"";s:17:"x-ratelimit-limit";s:3:"150";s:9:"x-runtime";s:7:"0.04127";s:15:"x-frame-options";s:10:"SAMEORIGIN";s:6:"pragma";s:8:"no-cache";s:13:"cache-control";s:62:"no-cache, no-store, must-revalidate, pre-check=0, post-check=0";s:5:"x-mid";s:40:"fcb87d7720ef6ffe0e21589ed0351e4a4d0ba26e";s:17:"x-ratelimit-class";s:3:"api";s:7:"expires";s:29:"Tue, 31 Mar 1981 05:00:00 GMT";s:17:"x-ratelimit-reset";s:10:"1343140844";s:10:"set-cookie";a:3:{i:0;s:98:"k=10.34.122.134.1343140275205633; path=/; expires=Tue, 31-Jul-12 14:31:15 GMT; domain=.twitter.com";i:1;s:100:"guest_id=v1%3A134314027569181922; domain=.twitter.com; path=/; expires=Fri, 25-Jul-2014 02:31:15 GMT";i:2;s:265:"_twitter_sess=BAh7CCIKZmxhc2hJQzonQWN0aW9uQ29udHJvbGxlcjo6Rmxhc2g6OkZsYXNo%250ASGFzaHsABjoKQHVzZWR7ADoPY3JlYXRlZF9hdGwrCO0lZrk4AToHaWQiJWVj%250ANGNkYTFkZDAyMjYyMzU1NmNmMzZiZjBmYjlmMDdj--1604afaa2b9bcceebe0796320a9c3c0e655ca329; domain=.twitter.com; path=/; HttpOnly";}s:4:"vary";s:15:"Accept-Encoding";s:16:"x-xss-protection";s:13:"1; mode=block";s:10:"connection";s:10:"keep-alive";s:6:"server";s:3:"tfe";s:16:"content-encoding";s:7:"deflate";s:14:"content-length";s:4:"1771";}s:5:"build";s:14:"20111015034325";}', 'no'),
('1751', '_transient_timeout_plugin_slugs', '1378319133', 'no'),
('1752', '_transient_plugin_slugs', 'a:6:{i:0;s:43:"avh-first-defense-against-spam/avh-fdas.php";i:1;s:43:"events-calendar-pro/events-calendar-pro.php";i:2;s:11:"tac/tac.php";i:3;s:41:"wordpress-importer/wordpress-importer.php";i:4;s:27:"wp-pagenavi/wp-pagenavi.php";i:5;s:39:"wp-pagenavi-style/wp-pagenavi-style.php";}', 'no'),
('1753', '_transient_timeout_dash_de3249c4736ad3bd2cd29147c4a0d43e', '1378275933', 'no'),
('1754', '_transient_dash_de3249c4736ad3bd2cd29147c4a0d43e', '<h4>Самые популярные</h4>
<h5><a href=''http://wordpress.org/plugins/captcha/''>Captcha</a></h5>&nbsp;<span>(<a href=''plugin-install.php?tab=plugin-information&amp;plugin=captcha&amp;_wpnonce=2da774c014&amp;TB_iframe=true&amp;width=600&amp;height=800'' class=''thickbox'' title=''Captcha''>Установить</a>)</span>
<p>This plugin allows you to implement super security captcha form into web forms.</p>
<h4>Самые свежие</h4>
<h5><a href=''http://wordpress.org/plugins/so-remove-wpml-menu-sync/''>SO Remove WPML Menu Sync</a></h5>&nbsp;<span>(<a href=''plugin-install.php?tab=plugin-information&amp;plugin=so-remove-wpml-menu-sync&amp;_wpnonce=a75a1fd055&amp;TB_iframe=true&amp;width=600&amp;height=800'' class=''thickbox'' title=''SO Remove WPML Menu Sync''>Установить</a>)</span>
<p>This free WPML Addon removes the WP Menus Sync sub menu from the WPML sidebar menu in the backend.</p>
', 'no'),
('1519', 'category_children', 'a:0:{}', 'yes'),
('152', 'recently_activated', 'a:0:{}', 'yes'),
('1250', '_site_transient_timeout_wporg_theme_feature_list', '1355720931', 'yes'),
('1251', '_site_transient_wporg_theme_feature_list', 'a:5:{s:6:"Colors";a:15:{i:0;s:5:"black";i:1;s:4:"blue";i:2;s:5:"brown";i:3;s:4:"gray";i:4;s:5:"green";i:5;s:6:"orange";i:6;s:4:"pink";i:7;s:6:"purple";i:8;s:3:"red";i:9;s:6:"silver";i:10;s:3:"tan";i:11;s:5:"white";i:12;s:6:"yellow";i:13;s:4:"dark";i:14;s:5:"light";}s:7:"Columns";a:6:{i:0;s:10:"one-column";i:1;s:11:"two-columns";i:2;s:13:"three-columns";i:3;s:12:"four-columns";i:4;s:12:"left-sidebar";i:5;s:13:"right-sidebar";}s:5:"Width";a:2:{i:0;s:11:"fixed-width";i:1;s:14:"flexible-width";}s:8:"Features";a:19:{i:0;s:8:"blavatar";i:1;s:10:"buddypress";i:2;s:17:"custom-background";i:3;s:13:"custom-colors";i:4;s:13:"custom-header";i:5;s:11:"custom-menu";i:6;s:12:"editor-style";i:7;s:21:"featured-image-header";i:8;s:15:"featured-images";i:9;s:15:"flexible-header";i:10;s:20:"front-page-post-form";i:11;s:19:"full-width-template";i:12;s:12:"microformats";i:13;s:12:"post-formats";i:14;s:20:"rtl-language-support";i:15;s:11:"sticky-post";i:16;s:13:"theme-options";i:17;s:17:"threaded-comments";i:18;s:17:"translation-ready";}s:7:"Subject";a:3:{i:0;s:7:"holiday";i:1;s:13:"photoblogging";i:2;s:8:"seasonal";}}', 'yes'),
('447', 'theme_mods_twentyeleven', 'a:1:{s:18:"nav_menu_locations";a:1:{s:7:"primary";i:0;}}', 'yes'),
('155', '13floor_color_scheme', 'Blue', 'yes'),
('156', '13floor_blog_style', 'false', 'yes'),
('157', '13floor_grab_image', 'false', 'yes'),
('158', '13floor_catnum_posts', '6', 'yes'),
('159', '13floor_archivenum_posts', '5', 'yes'),
('160', '13floor_searchnum_posts', '5', 'yes'),
('161', '13floor_tagnum_posts', '5', 'yes'),
('162', '13floor_date_format', 'M j, Y', 'yes'),
('163', '13floor_homepage_posts', '7', 'yes'),
('164', '13floor_exlcats_recent', '', 'yes'),
('165', '13floor_featured', 'on', 'yes'),
('166', '13floor_use_pages', 'false', 'yes'),
('167', '13floor_custom_animation', 'on', 'yes'),
('168', '13floor_featured_num', '3', 'yes'),
('169', '13floor_feat_pages', '', 'yes'),
('170', '13floor_slider_auto', 'false', 'yes'),
('171', '13floor_pause_hover', 'false', 'yes'),
('172', '13floor_slider_autospeed', '5000', 'yes'),
('173', '13floor_menupages', '', 'yes'),
('174', '13floor_enable_dropdowns', 'on', 'yes'),
('175', '13floor_home_link', 'on', 'yes'),
('176', '13floor_sort_pages', 'post_title', 'yes'),
('177', '13floor_order_page', 'asc', 'yes'),
('178', '13floor_tiers_shown_pages', '3', 'yes'),
('179', '13floor_menucats', '', 'yes'),
('180', '13floor_enable_dropdowns_categories', 'on', 'yes'),
('181', '13floor_categories_empty', 'on', 'yes'),
('182', '13floor_tiers_shown_categories', '3', 'yes'),
('183', '13floor_sort_cat', 'name', 'yes'),
('184', '13floor_order_cat', 'asc', 'yes'),
('185', '13floor_disable_toptier', 'false', 'yes'),
('186', '13floor_postinfo2', 'a:4:{i:0;s:6:"author";i:1;s:4:"date";i:2;s:10:"categories";i:3;s:8:"comments";}', 'yes'),
('187', '13floor_thumbnails', 'on', 'yes'),
('188', '13floor_show_postcomments', 'on', 'yes'),
('189', '13floor_page_thumbnails', 'false', 'yes'),
('190', '13floor_show_pagescomments', 'false', 'yes'),
('191', '13floor_postinfo1', 'a:4:{i:0;s:6:"author";i:1;s:4:"date";i:2;s:10:"categories";i:3;s:8:"comments";}', 'yes'),
('192', '13floor_thumbnails_index', 'on', 'yes'),
('193', '13floor_custom_colors', 'false', 'yes'),
('194', '13floor_child_css', 'false', 'yes'),
('195', '13floor_child_cssurl', '', 'yes'),
('196', '13floor_color_mainfont', '', 'yes'),
('197', '13floor_color_mainlink', '', 'yes'),
('198', '13floor_color_pagelink', '', 'yes'),
('199', '13floor_color_pagelink_active', '', 'yes'),
('200', '13floor_color_headings', '', 'yes'),
('201', '13floor_color_sidebar_links', '', 'yes'),
('202', '13floor_footer_headings', '', 'yes'),
('203', '13floor_color_footerlinks', '', 'yes'),
('204', '13floor_seo_home_title', 'false', 'yes'),
('205', '13floor_seo_home_description', 'false', 'yes'),
('206', '13floor_seo_home_keywords', 'false', 'yes'),
('207', '13floor_seo_home_canonical', 'false', 'yes'),
('208', '13floor_seo_home_titletext', '', 'yes'),
('209', '13floor_seo_home_descriptiontext', '', 'yes'),
('210', '13floor_seo_home_keywordstext', '', 'yes'),
('211', '13floor_seo_home_type', 'BlogName | Blog description', 'yes'),
('212', '13floor_seo_home_separate', ' | ', 'yes'),
('213', '13floor_seo_single_title', 'false', 'yes'),
('214', '13floor_seo_single_description', 'false', 'yes'),
('215', '13floor_seo_single_keywords', 'false', 'yes'),
('216', '13floor_seo_single_canonical', 'false', 'yes'),
('217', '13floor_seo_single_field_title', 'seo_title', 'yes'),
('218', '13floor_seo_single_field_description', 'seo_description', 'yes'),
('219', '13floor_seo_single_field_keywords', 'seo_keywords', 'yes'),
('220', '13floor_seo_single_type', 'Post title | BlogName', 'yes'),
('221', '13floor_seo_single_separate', ' | ', 'yes'),
('222', '13floor_seo_index_canonical', 'false', 'yes'),
('223', '13floor_seo_index_description', 'false', 'yes'),
('224', '13floor_seo_index_type', 'Category name | BlogName', 'yes'),
('225', '13floor_seo_index_separate', ' | ', 'yes'),
('226', '13floor_integrate_header_enable', 'on', 'yes'),
('227', '13floor_integrate_body_enable', 'on', 'yes'),
('228', '13floor_integrate_singletop_enable', 'on', 'yes'),
('229', '13floor_integrate_singlebottom_enable', 'on', 'yes'),
('230', '13floor_integration_head', '', 'yes'),
('231', '13floor_integration_body', '', 'yes'),
('232', '13floor_integration_single_top', '', 'yes'),
('233', '13floor_integration_single_bottom', '', 'yes'),
('234', '13floor_468_enable', 'false', 'yes'),
('235', '13floor_468_image', '', 'yes'),
('236', '13floor_468_url', '', 'yes'),
('237', '13floor_468_adsense', '', 'yes'),
('590', '_site_transient_browser_a7e15ed823b93415ba6654f9b2997c46', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:7:"Firefox";s:7:"version";s:6:"10.0.2";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:1:"9";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
('777', 'uninstall_plugins', 'a:5:{s:27:"wp-pagenavi/wp-pagenavi.php";s:14:"__return_false";s:107:"var/www/wpj_lunatik/data/www/lunatik.dev.morestyle.ru/wp-content/themes/magazine/includes/assets/avatar.php";s:30:"simple_local_avatars_uninstall";s:124:"var/www/wpj_lunatik/data/www/lunatik.dev.morestyle.ru/wp-content/themes/magazine/includes/assets/post-rating/post-rating.php";a:2:{i:0;s:11:"PostRatings";i:1;s:9:"Uninstall";}s:102:"var/www/wordpress/data/www/wordpress.server-7.ru/wp-content/themes/magazine/includes/assets/avatar.php";s:30:"simple_local_avatars_uninstall";s:119:"var/www/wordpress/data/www/wordpress.server-7.ru/wp-content/themes/magazine/includes/assets/post-rating/post-rating.php";a:2:{i:0;s:11:"PostRatings";i:1;s:9:"Uninstall";}}', 'no'),
('751', '_site_transient_timeout_browser_51e701868884b9334a36c003b7fba3af', '1335947684', 'yes'),
('502', '_site_transient_timeout_browser_a8f81f03ade7cdb2b5dfc1724fc7360e', '1329367331', 'yes'),
('503', '_site_transient_browser_a8f81f03ade7cdb2b5dfc1724fc7360e', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"10.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:1:"9";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
('778', 'db_upgraded', '', 'yes'),
('784', '_site_transient_timeout_browser_922a4000e7a8e220eddd13f92605b9bb', '1341576165', 'yes'),
('785', '_site_transient_browser_922a4000e7a8e220eddd13f92605b9bb', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:7:"Firefox";s:7:"version";s:6:"13.0.1";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"12";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
('1122', '_site_transient_timeout_browser_ac83e661a03a0f9d54d7d455b9cff055', '1343927730', 'yes'),
('1123', '_site_transient_browser_ac83e661a03a0f9d54d7d455b9cff055', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:7:"Firefox";s:7:"version";s:6:"14.0.1";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"12";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
('957', 'theme_mods_twentyten', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1342659119;s:4:"data";a:7:{s:19:"wp_inactive_widgets";a:0:{}s:19:"primary-widget-area";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:21:"secondary-widget-area";a:0:{}s:24:"first-footer-widget-area";a:0:{}s:25:"second-footer-widget-area";a:0:{}s:24:"third-footer-widget-area";a:0:{}s:25:"fourth-footer-widget-area";N;}}}', 'yes'),
('963', 'theme_mods_autocarsnewwpthemes', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1343158895;s:4:"data";a:6:{s:19:"wp_inactive_widgets";a:0:{}s:15:"sidebar_primary";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:8:"footer_1";a:0:{}s:8:"footer_2";a:0:{}s:8:"footer_3";a:0:{}s:8:"footer_4";a:0:{}}}}', 'yes'),
('964', 'autocars_theme_options', 'a:49:{s:20:"themater_logo_source";s:5:"image";s:4:"logo";s:82:"http://wordpress.server-7.ru/wp-content/themes/autocarsnewwpthemes/images/logo.png";s:10:"site_title";s:23:"Сайт на wordpress";s:16:"site_description";s:0:"";s:7:"favicon";s:85:"http://wordpress.server-7.ru/wp-content/themes/autocarsnewwpthemes/images/favicon.png";s:18:"contact_form_email";s:22:"regestration@pisem.net";s:9:"read_more";s:9:"Read More";s:20:"featured_image_width";s:3:"200";s:21:"featured_image_height";s:3:"160";s:23:"featured_image_position";s:9:"alignleft";s:27:"featured_image_width_single";s:3:"300";s:28:"featured_image_height_single";s:3:"225";s:30:"featured_image_position_single";s:9:"alignleft";s:18:"footer_custom_text";s:0:"";s:14:"footer_widgets";s:4:"true";s:7:"rss_url";s:0:"";s:10:"custom_css";s:0:"";s:9:"head_code";s:0:"";s:11:"footer_code";s:0:"";s:21:"featuredposts_enabled";a:1:{i:0;s:8:"homepage";}s:20:"featuredposts_source";s:6:"custom";s:27:"featuredposts_custom_slides";a:5:{i:0;a:4:{s:3:"img";s:94:"http://wordpress.server-7.ru/wp-content/themes/autocarsnewwpthemes/images/default-slides/1.jpg";s:4:"link";s:1:"#";s:5:"title";s:49:"Это заголовок демо слайда 1";s:7:"content";s:342:"Вы можете полностью настроить показ слайдов на странице настроек темы. Вы также можете легко отменить показ слайдера на определенной части вашего сайта, как: категории, теги, архивы и т.д.";}i:1;a:4:{s:3:"img";s:94:"http://wordpress.server-7.ru/wp-content/themes/autocarsnewwpthemes/images/default-slides/2.jpg";s:4:"link";s:1:"#";s:5:"title";s:49:"Это заголовок демо слайда 2";s:7:"content";s:342:"Вы можете полностью настроить показ слайдов на странице настроек темы. Вы также можете легко отменить показ слайдера на определенной части вашего сайта, как: категории, теги, архивы и т.д.";}i:2;a:4:{s:3:"img";s:94:"http://wordpress.server-7.ru/wp-content/themes/autocarsnewwpthemes/images/default-slides/3.jpg";s:4:"link";s:1:"#";s:5:"title";s:49:"Это заголовок демо слайда 3";s:7:"content";s:342:"Вы можете полностью настроить показ слайдов на странице настроек темы. Вы также можете легко отменить показ слайдера на определенной части вашего сайта, как: категории, теги, архивы и т.д.";}i:3;a:4:{s:3:"img";s:94:"http://wordpress.server-7.ru/wp-content/themes/autocarsnewwpthemes/images/default-slides/4.jpg";s:4:"link";s:1:"#";s:5:"title";s:49:"Это заголовок демо слайда 4";s:7:"content";s:342:"Вы можете полностью настроить показ слайдов на странице настроек темы. Вы также можете легко отменить показ слайдера на определенной части вашего сайта, как: категории, теги, архивы и т.д.";}i:4;a:4:{s:3:"img";s:94:"http://wordpress.server-7.ru/wp-content/themes/autocarsnewwpthemes/images/default-slides/5.jpg";s:4:"link";s:1:"#";s:5:"title";s:49:"Это заголовок демо слайда 5";s:7:"content";s:342:"Вы можете полностью настроить показ слайдов на странице настроек темы. Вы также можете легко отменить показ слайдера на определенной части вашего сайта, как: категории, теги, архивы и т.д.";}}s:33:"featuredposts_source_category_num";s:1:"5";s:29:"featuredposts_source_category";s:0:"";s:26:"featuredposts_source_posts";s:0:"";s:26:"featuredposts_source_pages";s:0:"";s:20:"featuredposts_effect";s:10:"scrollHorz";s:25:"featuredposts_moreoptions";a:8:{i:0;s:9:"thumbnail";i:1;s:10:"post_title";i:2;s:12:"post_excerpt";i:3;s:5:"pager";i:4;s:9:"next_prev";i:5;s:4:"sync";i:6;s:5:"pause";i:7;s:17:"pauseOnPagerHover";}s:22:"featuredposts_readmore";s:12:"More &raquo;";s:28:"featuredposts_excerpt_length";s:2:"32";s:21:"featuredposts_timeout";s:4:"4000";s:19:"featuredposts_delay";s:1:"0";s:19:"featuredposts_speed";s:3:"400";s:21:"featuredposts_speedIn";s:0:"";s:22:"featuredposts_speedOut";s:0:"";s:12:"menu_primary";s:4:"true";s:18:"menu_primary_depth";s:1:"0";s:19:"menu_primary_effect";s:4:"fade";s:18:"menu_primary_speed";s:3:"200";s:18:"menu_primary_delay";s:3:"800";s:19:"menu_primary_arrows";s:4:"true";s:20:"menu_primary_shadows";s:0:"";s:14:"menu_secondary";b:0;s:20:"menu_secondary_depth";s:1:"0";s:21:"menu_secondary_effect";s:4:"fade";s:20:"menu_secondary_speed";s:3:"200";s:20:"menu_secondary_delay";s:3:"800";s:21:"menu_secondary_arrows";s:4:"true";s:22:"menu_secondary_shadows";s:0:"";}', 'yes'),
('817', 'cforms_settings', 'a:3:{i:0;b:0;s:6:"global";a:39:{s:9:"plugindir";s:6:"cforms";s:11:"cforms_root";s:54:"http://wordpress.server-7.ru/wp-content/plugins/cforms";s:7:"tinyURI";s:51:"http://wordpress.server-7.ru/wp-includes/js/tinymce";s:15:"cforms_root_dir";s:75:"/var/www/wordpress/data/www/wordpress.server-7.ru/wp-content/plugins/cforms";s:10:"cforms_IIS";s:1:"/";s:1:"v";s:4:"14.5";s:20:"cforms_style_doctype";s:109:"<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">";s:16:"cforms_formcount";s:1:"1";s:18:"cforms_upload_err1";s:43:"Generic file upload error. Please try again";s:18:"cforms_upload_err2";s:56:"File is empty. Please upload something more substantial.";s:18:"cforms_upload_err3";s:55:"Sorry, file is too large. You may try to zip your file.";s:18:"cforms_upload_err4";s:63:"File upload failed. Please try again or contact the blog admin.";s:18:"cforms_upload_err5";s:41:"File not accepted, file type not allowed.";s:16:"cforms_rsskeyall";s:32:"ece8873ce54cb68938a1717755d9ac50";s:13:"cforms_rssall";b:0;s:19:"cforms_rssall_count";i:5;s:18:"cforms_captcha_def";a:14:{s:1:"h";i:25;s:1:"w";i:115;s:1:"c";s:6:"000066";s:1:"l";s:6:"000066";s:1:"f";s:9:"font4.ttf";s:2:"a1";i:-12;s:2:"a2";i:12;s:2:"f1";i:17;s:2:"f2";i:19;s:2:"bg";s:5:"1.gif";s:2:"c1";i:4;s:2:"c2";i:5;s:2:"ac";s:32:"abcdefghijkmnpqrstuvwxyz23456789";s:1:"i";s:1:"i";}s:13:"cforms_sec_qa";s:82:"What color is snow?=white
The color of grass is=green
Ten minus five equals=five";s:14:"cforms_codeerr";s:43:"Please double-check your verification code.";s:20:"cforms_show_quicktag";s:1:"1";s:23:"cforms_show_quicktag_js";b:0;s:21:"cforms_commentsuccess";s:32:"Thank you for leaving a comment.";s:18:"cforms_commentWait";s:2:"15";s:20:"cforms_commentParent";s:13:"mycommentlist";s:18:"cforms_commentHTML";s:199:"<li id="comment-{id}">{moderation}
<p>{usercomment}</p>
<p>
<cite>Comment by <a href="{url}" rel="external nofollow">{author}</a> &mdash; {date} @ <a href="#comment-{id}">{time}</a></cite>
</p>
</li>";s:19:"cforms_commentInMod";s:45:"<em>Your comment is awaiting moderation.</em>";s:13:"cforms_avatar";s:2:"32";s:10:"cforms_css";s:14:"cforms2012.css";s:14:"cforms_labelID";s:1:"0";s:11:"cforms_liID";s:1:"0";s:15:"cforms_database";s:1:"0";s:17:"cforms_datepicker";s:1:"0";s:15:"cforms_dp_start";s:1:"0";s:14:"cforms_dp_date";s:8:"mm/dd/yy";s:14:"cforms_dp_days";s:27:""S","M","T","W","T","F","S"";s:16:"cforms_dp_months";s:109:""January","February","March","April","May","June","July","August","September","October","November","December"";s:13:"cforms_dp_nav";a:6:{i:0;s:13:"Previous Year";i:1;s:14:"Previous Month";i:2;s:9:"Next Year";i:3;s:10:"Next Month";i:4;s:5:"Close";i:5;s:11:"Choose Date";}s:17:"cforms_confirmerr";i:64;s:12:"cforms_style";a:13:{s:4:"body";s:86:"style="margin:0; padding:0; font-family: Verdana, Arial; font-size: 13px; color:#555;"";s:4:"meta";s:157:"style="font-size: 90%; margin:0; background:#aaaaaa; padding:1em 2em 1em 0.6em; color:#555555; text-shadow:0 1px 0 #c5c5c5; border-bottom:1px solid #9d9d9d;"";s:5:"admin";s:118:"style="background:#f0f0f0; border-top:1px solid #777; box-shadow:0 -2px 2px #999; -webkit-box-shadow:0 -2px 2px #999;"";s:5:"title";s:117:"style="font-size: 90%; margin:0; background:#fcfcfc; padding:1em 2em 1em 0.6em; color:#888888; display:inline-block;"";s:5:"table";s:59:"style="width:auto; margin: 0.2em 2em 2em; font-size: 100%;"";s:2:"fs";s:101:"style="color:#555; padding:1em 0 0.4em; font-size: 110%; font-weight:bold; text-shadow:0 1px 0 #fff;"";s:6:"key_td";s:99:"style="padding: 0.3em 1em; border-bottom:1px dotted #ddd; padding-right:2em; color:#888; width:1%;"";s:6:"val_td";s:86:"style="padding: 0.3em 1em; border-bottom:1px dotted #ddd; padding-left:0; color:#333;"";s:6:"cforms";s:148:"style="display:block; padding:1em 0.6em; margin-top:1em; background:#f7f7f7; color:#777; font-size:90%; text-align:right; font-family:Tahoma,Arial;"";s:8:"autoconf";s:58:"style="padding:1em 1em 0; background:#f0f0f0; color:#333;"";s:4:"dear";s:65:"style="margin:0.5em 30px; font-weight:bold; margin-bottom:1.2em;"";s:5:"confp";s:26:"style="margin:0.5em 30px;"";s:15:"confirmationmsg";s:99:"style="margin:4em 30px 0; padding-bottom:1em; font-size:80%; color:#aaa; font-family:Tahoma,Arial;"";}}s:4:"form";a:48:{s:17:"cforms_upload_dir";s:75:"/var/www/wordpress/data/www/wordpress.server-7.ru/wp-content/plugins/cforms";s:17:"cforms_upload_ext";s:19:"txt,zip,doc,rtf,xls";s:18:"cforms_upload_size";s:4:"1024";s:16:"cforms_dontclear";b:0;s:13:"cforms_rsskey";s:32:"1c2ca1fd8b134985c8534dda3d6d4d41";s:10:"cforms_rss";b:0;s:16:"cforms_rss_count";i:5;s:19:"cforms_count_fields";s:1:"5";s:20:"cforms_count_field_1";s:47:"My Fieldset$#$fieldsetstart$#$0$#$0$#$0$#$0$#$0";s:20:"cforms_count_field_2";s:51:"Your Name|Your Name$#$textfield$#$1$#$0$#$1$#$0$#$0";s:20:"cforms_count_field_3";s:37:"Email$#$textfield$#$1$#$1$#$0$#$0$#$0";s:20:"cforms_count_field_4";s:47:"Website|http://$#$textfield$#$0$#$0$#$0$#$0$#$0";s:20:"cforms_count_field_5";s:38:"Message$#$textarea$#$0$#$0$#$0$#$0$#$0";s:15:"cforms_required";s:10:"(required)";s:20:"cforms_emailrequired";s:22:"(valid email required)";s:14:"cforms_confirm";s:1:"0";s:11:"cforms_ajax";s:1:"1";s:20:"cforms_emailpriority";s:1:"3";s:12:"cforms_fname";s:17:"Your default form";s:15:"cforms_csubject";s:41:"Re: Your note$#$Re: Submitted form (copy)";s:11:"cforms_cmsg";s:89:"Dear {Your Name},
Thank you for your note!
We will get back to you as soon as possible.

";s:16:"cforms_cmsg_html";s:458:"<div style="padding:1em 1em 0; background:#f0f0f0; color:#333;"><p style="margin:0.5em 30px; font-weight:bold; margin-bottom:1.2em;">Dear {Your Name},</p>
<p style="margin:0.5em 30px;">Thank you for your note!</p>
<p style="margin:0.5em 30px;">We will get back to you as soon as possible.
<div style="margin:4em 30px 0; padding-bottom:1em; font-size:80%; color:#aaa; font-family:Tahoma,Arial;">This is an automatic confirmation message. {Date}.</div></div>

";s:12:"cforms_email";s:22:"regestration@pisem.net";s:16:"cforms_fromemail";s:22:"regestration@pisem.net";s:10:"cforms_bcc";s:0:"";s:13:"cforms_header";s:147:"A new submission (form: "{Form Name}")
============================================
Submitted on: {Date}
Via: {Page}
By {IP} (visitor IP).
.
";s:18:"cforms_header_html";s:223:"<p style="font-size: 90%; margin:0; background:#aaaaaa; padding:1em 2em 1em 0.6em; color:#555555; text-shadow:0 1px 0 #c5c5c5; border-bottom:1px solid #9d9d9d;">A form has been submitted on {Date}, via: {Page} [IP {IP}]</p>";s:15:"cforms_formdata";s:4:"1111";s:12:"cforms_space";s:2:"30";s:20:"cforms_noattachments";s:1:"0";s:14:"cforms_subject";s:26:"A comment from {Your Name}";s:18:"cforms_submit_text";s:6:"Submit";s:14:"cforms_success";s:27:"Thank you for your comment!";s:14:"cforms_failure";s:39:"Please fill in all the required fields.";s:15:"cforms_limittxt";s:59:"<strong>No more submissions accepted at this time.</strong>";s:14:"cforms_working";s:20:"One moment please...";s:12:"cforms_popup";s:2:"nn";s:14:"cforms_showpos";s:5:"ynyyy";s:11:"cforms_hide";b:0;s:15:"cforms_redirect";b:0;s:20:"cforms_redirect_page";s:28:"http://redirect.to.this.page";s:13:"cforms_action";s:1:"0";s:18:"cforms_action_page";s:7:"http://";s:15:"cforms_tracking";s:0:"";s:20:"cforms_showdashboard";s:1:"1";s:17:"cforms_maxentries";s:0:"";s:18:"cforms_tellafriend";s:2:"01";s:16:"cforms_dashboard";s:1:"0";}}', 'yes'),
('1196', 'widget_events-list-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
('1197', 'widget_featured_event', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
('1241', 'widget_advwidget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
('1223', '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:40:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"3211";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"2116";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"1981";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"1623";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"1562";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"1387";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1109";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"1090";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"1084";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"1051";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"1006";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:3:"923";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:3:"845";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:3:"792";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:3:"746";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:3:"676";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:3:"674";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:3:"660";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"650";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:3:"602";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:3:"579";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:3:"565";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"547";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:3:"547";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:3:"479";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"471";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:3:"471";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"457";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"456";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"453";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"437";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"419";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"413";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"402";}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";s:3:"390";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"388";}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";s:3:"388";}s:5:"flash";a:3:{s:4:"name";s:5:"flash";s:4:"slug";s:5:"flash";s:5:"count";s:3:"367";}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";s:3:"361";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"360";}}', 'yes'),
('1225', '_site_transient_update_plugins', 'O:8:"stdClass":3:{s:12:"last_checked";i:1383126236;s:7:"checked";a:47:{s:30:"advanced-custom-fields/acf.php";s:5:"4.1.4";s:27:"acf-gallery/acf-gallery.php";s:5:"1.0.0";s:29:"acf-repeater/acf-repeater.php";s:5:"1.0.1";s:45:"advanced-widget-pack/advanced-widget-pack.php";s:3:"1.4";s:19:"akismet/akismet.php";s:5:"2.5.6";s:43:"avh-first-defense-against-spam/avh-fdas.php";s:5:"3.4.1";s:30:"demo-data-creator/demodata.php";s:3:"1.0";s:44:"anticipate/anticipate-maintenance-plugin.php";s:5:"1.0.0";s:43:"events-calendar-pro/events-calendar-pro.php";s:3:"1.3";s:44:"featured-content-gallery/content-gallery.php";s:5:"3.2.0";s:24:"flickr-rss/flickrrss.php";s:3:"5.2";s:23:"flickrRSS/flickrrss.php";s:3:"5.1";s:37:"gantry-export-import-options/init.php";s:3:"0.2";s:17:"gantry/gantry.php";s:4:"1.26";s:9:"hello.php";s:3:"1.6";s:33:"jb-weather-widget-2/jbweather.php";s:3:"2.0";s:27:"layerslider/layerslider.php";s:5:"4.5.5";s:35:"wordpress-ecommerce/marketpress.php";s:5:"2.5.1";s:65:"media-element-html5-video-and-audio-player/mediaelement-js-wp.php";s:5:"2.9.1";s:43:"new-user-email-set-up/newuseremailsetup.php";s:5:"0.5.2";s:64:"purevision-shortcode-insert-button/purevisionShortcodeInsert.php";s:5:"1.1.0";s:23:"revslider/revslider.php";s:6:"2.3.91";s:31:"rokajaxsearch/rokajaxsearch.php";s:4:"1.18";s:32:"wp_roknewsflash/roknewsflash.php";s:3:"1.7";s:32:"sexybookmarks/sexy-bookmarks.php";s:7:"6.0.0.1";s:44:"syntaxhighlighter-plus/syntaxhighlighter.php";s:5:"1.0b2";s:11:"tac/tac.php";s:3:"1.5";s:52:"tf-maintenance/tf_maintenance-maintenance-plugin.php";s:5:"1.1.0";s:58:"udesign-shortcode-insert-button/udesignShortcodeInsert.php";s:5:"1.0.3";s:25:"user-photo/user-photo.php";s:7:"0.9.5.2";s:23:"widgetkit/widgetkit.php";s:5:"1.3.2";s:27:"woocommerce/woocommerce.php";s:6:"2.0.13";s:19:"woodojo/woodojo.php";s:5:"1.2.3";s:23:"wooslider/wooslider.php";s:5:"1.0.9";s:41:"wordpress-importer/wordpress-importer.php";s:3:"0.6";s:43:"wordpress-importer-1/wordpress-importer.php";s:5:"0.6.1";s:34:"wp-contact-form/wp-contactform.php";s:7:"1.5.1.1";s:21:"wp-cufon/wp-cufon.php";s:5:"1.6.3";s:21:"wp-email/wp-email.php";s:4:"2.60";s:27:"wp-pagenavi/wp-pagenavi.php";s:4:"2.83";s:27:"wp-paginate/wp-paginate.php";s:5:"1.2.4";s:33:"wp-postratings/wp-postratings.php";s:4:"1.63";s:29:"wp-postviews/wp-postviews.php";s:4:"1.61";s:21:"wp-print/wp-print.php";s:4:"2.50";s:47:"no-category-base-wpml/no-category-base-wpml.php";s:5:"1.1.0";s:39:"wp-pagenavi-style/wp-pagenavi-style.php";s:3:"1.3";s:37:"wp-super-heatmap/wp_super_heatmap.php";s:5:"0.1.0";}s:8:"response";a:16:{s:19:"akismet/akismet.php";O:8:"stdClass":5:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:11:"new_version";s:5:"2.5.9";s:3:"url";s:37:"http://wordpress.org/plugins/akismet/";s:7:"package";s:55:"http://downloads.wordpress.org/plugin/akismet.2.5.9.zip";}s:43:"avh-first-defense-against-spam/avh-fdas.php";O:8:"stdClass":5:{s:2:"id";s:4:"7187";s:4:"slug";s:30:"avh-first-defense-against-spam";s:11:"new_version";s:5:"3.6.4";s:3:"url";s:60:"http://wordpress.org/plugins/avh-first-defense-against-spam/";s:7:"package";s:78:"http://downloads.wordpress.org/plugin/avh-first-defense-against-spam.3.6.4.zip";}s:30:"demo-data-creator/demodata.php";O:8:"stdClass":5:{s:2:"id";s:4:"8454";s:4:"slug";s:17:"demo-data-creator";s:11:"new_version";s:3:"1.3";s:3:"url";s:47:"http://wordpress.org/plugins/demo-data-creator/";s:7:"package";s:59:"http://downloads.wordpress.org/plugin/demo-data-creator.zip";}s:23:"flickrRSS/flickrrss.php";O:8:"stdClass":5:{s:2:"id";s:3:"111";s:4:"slug";s:10:"flickr-rss";s:11:"new_version";s:3:"5.2";s:3:"url";s:40:"http://wordpress.org/plugins/flickr-rss/";s:7:"package";s:56:"http://downloads.wordpress.org/plugin/flickr-rss.5.2.zip";}s:17:"gantry/gantry.php";O:8:"stdClass":6:{s:2:"id";s:5:"25743";s:4:"slug";s:6:"gantry";s:11:"new_version";s:5:"4.0.8";s:14:"upgrade_notice";s:89:"Please remember to create a full site backup (files + database) before performing update.";s:3:"url";s:36:"http://wordpress.org/plugins/gantry/";s:7:"package";s:54:"http://downloads.wordpress.org/plugin/gantry.4.0.8.zip";}s:65:"media-element-html5-video-and-audio-player/mediaelement-js-wp.php";O:8:"stdClass":5:{s:2:"id";s:5:"17707";s:4:"slug";s:42:"media-element-html5-video-and-audio-player";s:11:"new_version";s:6:"2.10.3";s:3:"url";s:72:"http://wordpress.org/plugins/media-element-html5-video-and-audio-player/";s:7:"package";s:91:"http://downloads.wordpress.org/plugin/media-element-html5-video-and-audio-player.2.10.3.zip";}s:32:"wp_roknewsflash/roknewsflash.php";O:8:"stdClass":5:{s:2:"id";s:5:"24925";s:4:"slug";s:12:"roknewsflash";s:11:"new_version";s:3:"1.8";s:3:"url";s:42:"http://wordpress.org/plugins/roknewsflash/";s:7:"package";s:54:"http://downloads.wordpress.org/plugin/roknewsflash.zip";}s:32:"sexybookmarks/sexy-bookmarks.php";O:8:"stdClass":6:{s:2:"id";s:4:"6765";s:4:"slug";s:13:"sexybookmarks";s:11:"new_version";s:7:"6.1.5.1";s:14:"upgrade_notice";s:275:"Recommendations / Related Content are now 100% responsive (aka &quot;mobile-ready&quot;)! This means they will now adapt to the screen size or device (iPhone, iPad, Android, tablet, laptop, etc) of your visitors automagically for the best, most seamless discovery experience.";s:3:"url";s:43:"http://wordpress.org/plugins/sexybookmarks/";s:7:"package";s:63:"http://downloads.wordpress.org/plugin/sexybookmarks.6.1.5.1.zip";}s:52:"tf-maintenance/tf_maintenance-maintenance-plugin.php";O:8:"stdClass":5:{s:2:"id";s:5:"21292";s:4:"slug";s:26:"themefuse-maintenance-mode";s:11:"new_version";s:5:"1.1.3";s:3:"url";s:56:"http://wordpress.org/plugins/themefuse-maintenance-mode/";s:7:"package";s:74:"http://downloads.wordpress.org/plugin/themefuse-maintenance-mode.1.1.3.zip";}s:41:"wordpress-importer/wordpress-importer.php";O:8:"stdClass":5:{s:2:"id";s:5:"14975";s:4:"slug";s:18:"wordpress-importer";s:11:"new_version";s:5:"0.6.1";s:3:"url";s:48:"http://wordpress.org/plugins/wordpress-importer/";s:7:"package";s:66:"http://downloads.wordpress.org/plugin/wordpress-importer.0.6.1.zip";}s:34:"wp-contact-form/wp-contactform.php";O:8:"stdClass":5:{s:2:"id";s:3:"337";s:4:"slug";s:15:"wp-contact-form";s:11:"new_version";s:3:"1.6";s:3:"url";s:45:"http://wordpress.org/plugins/wp-contact-form/";s:7:"package";s:61:"http://downloads.wordpress.org/plugin/wp-contact-form.1.6.zip";}s:21:"wp-cufon/wp-cufon.php";O:8:"stdClass":5:{s:2:"id";s:4:"8033";s:4:"slug";s:8:"wp-cufon";s:11:"new_version";s:6:"1.6.10";s:3:"url";s:38:"http://wordpress.org/plugins/wp-cufon/";s:7:"package";s:57:"http://downloads.wordpress.org/plugin/wp-cufon.1.6.10.zip";}s:21:"wp-email/wp-email.php";O:8:"stdClass":5:{s:2:"id";s:3:"344";s:4:"slug";s:8:"wp-email";s:11:"new_version";s:4:"2.61";s:3:"url";s:38:"http://wordpress.org/plugins/wp-email/";s:7:"package";s:50:"http://downloads.wordpress.org/plugin/wp-email.zip";}s:33:"wp-postratings/wp-postratings.php";O:8:"stdClass":5:{s:2:"id";s:3:"369";s:4:"slug";s:14:"wp-postratings";s:11:"new_version";s:4:"1.76";s:3:"url";s:44:"http://wordpress.org/plugins/wp-postratings/";s:7:"package";s:56:"http://downloads.wordpress.org/plugin/wp-postratings.zip";}s:29:"wp-postviews/wp-postviews.php";O:8:"stdClass":5:{s:2:"id";s:3:"370";s:4:"slug";s:12:"wp-postviews";s:11:"new_version";s:4:"1.65";s:3:"url";s:42:"http://wordpress.org/plugins/wp-postviews/";s:7:"package";s:54:"http://downloads.wordpress.org/plugin/wp-postviews.zip";}s:21:"wp-print/wp-print.php";O:8:"stdClass":5:{s:2:"id";s:3:"371";s:4:"slug";s:8:"wp-print";s:11:"new_version";s:4:"2.52";s:3:"url";s:38:"http://wordpress.org/plugins/wp-print/";s:7:"package";s:50:"http://downloads.wordpress.org/plugin/wp-print.zip";}}}', 'yes'),
('1224', 'ftp_credentials', 'a:3:{s:8:"hostname";s:11:"server-7.ru";s:8:"username";s:9:"wordpress";s:15:"connection_type";s:3:"ftp";}', 'yes'),
('1236', 'aggregate_responsive_layout', 'false', 'yes'),
('1062', 'gd-star-rating-inc', 'a:4:{i:0;a:6:{i:12;i:1;i:16;i:1;i:20;i:1;i:24;i:1;i:30;i:1;i:46;i:1;}i:1;a:10:{i:0;s:9:"christmas";i:1;s:7:"crystal";i:2;s:8:"darkness";i:3;s:6:"oxygen";i:4;s:10:"oxygen_gif";i:5;s:5:"plain";i:6;s:7:"pumpkin";i:7;s:4:"soft";i:8;s:10:"starrating";i:9;s:9:"starscape";}i:2;a:6:{i:12;i:1;i:16;i:1;i:20;i:1;i:24;i:1;i:32;i:1;i:40;i:1;}i:3;a:3:{i:0;s:9:"classical";i:1;s:10:"starrating";i:2;s:14:"starrating_gif";}}', 'yes'),
('1063', 'sm_options', 'a:57:{s:18:"sm_b_prio_provider";s:41:"GoogleSitemapGeneratorPrioByCountProvider";s:13:"sm_b_filename";s:11:"sitemap.xml";s:10:"sm_b_debug";b:1;s:8:"sm_b_xml";b:1;s:9:"sm_b_gzip";b:1;s:9:"sm_b_ping";b:1;s:12:"sm_b_pingask";b:1;s:12:"sm_b_pingmsn";b:1;s:19:"sm_b_manual_enabled";b:0;s:17:"sm_b_auto_enabled";b:1;s:15:"sm_b_auto_delay";b:1;s:15:"sm_b_manual_key";s:32:"eea08c7ccbd9abe3149ceaebca94b646";s:11:"sm_b_memory";s:0:"";s:9:"sm_b_time";i:-1;s:14:"sm_b_max_posts";i:-1;s:13:"sm_b_safemode";b:0;s:18:"sm_b_style_default";b:1;s:10:"sm_b_style";s:0:"";s:11:"sm_b_robots";b:1;s:12:"sm_b_exclude";a:0:{}s:17:"sm_b_exclude_cats";a:0:{}s:18:"sm_b_location_mode";s:4:"auto";s:20:"sm_b_filename_manual";s:0:"";s:19:"sm_b_fileurl_manual";s:0:"";s:10:"sm_in_home";b:1;s:11:"sm_in_posts";b:1;s:15:"sm_in_posts_sub";b:0;s:11:"sm_in_pages";b:1;s:10:"sm_in_cats";b:0;s:10:"sm_in_arch";b:0;s:10:"sm_in_auth";b:0;s:10:"sm_in_tags";b:0;s:9:"sm_in_tax";a:0:{}s:17:"sm_in_customtypes";a:0:{}s:13:"sm_in_lastmod";b:1;s:10:"sm_cf_home";s:5:"daily";s:11:"sm_cf_posts";s:7:"monthly";s:11:"sm_cf_pages";s:6:"weekly";s:10:"sm_cf_cats";s:6:"weekly";s:10:"sm_cf_auth";s:6:"weekly";s:15:"sm_cf_arch_curr";s:5:"daily";s:14:"sm_cf_arch_old";s:6:"yearly";s:10:"sm_cf_tags";s:6:"weekly";s:10:"sm_pr_home";d:1;s:11:"sm_pr_posts";d:0.59999999999999997779553950749686919152736663818359375;s:15:"sm_pr_posts_min";d:0.200000000000000011102230246251565404236316680908203125;s:11:"sm_pr_pages";d:0.59999999999999997779553950749686919152736663818359375;s:10:"sm_pr_cats";d:0.299999999999999988897769753748434595763683319091796875;s:10:"sm_pr_arch";d:0.299999999999999988897769753748434595763683319091796875;s:10:"sm_pr_auth";d:0.299999999999999988897769753748434595763683319091796875;s:10:"sm_pr_tags";d:0.299999999999999988897769753748434595763683319091796875;s:12:"sm_i_donated";b:0;s:17:"sm_i_hide_donated";b:0;s:17:"sm_i_install_date";i:1343164955;s:14:"sm_i_hide_note";b:0;s:15:"sm_i_hide_works";b:0;s:16:"sm_i_hide_donors";b:0;}', 'yes'),
('1068', 'sidebarlogin_heading', 'Войти', 'yes'),
('1077', 'poll_template_voteheader', '<p style="text-align: center;"><strong>%POLL_QUESTION%</strong></p><div id="polls-%POLL_ID%-ans" class="wp-polls-ans"><ul class="wp-polls-ul">', 'yes'),
('1078', 'poll_template_votebody', '<li><input type="%POLL_CHECKBOX_RADIO%" id="poll-answer-%POLL_ANSWER_ID%" name="poll_%POLL_ID%" value="%POLL_ANSWER_ID%" /> <label for="poll-answer-%POLL_ANSWER_ID%">%POLL_ANSWER%</label></li>', 'yes'),
('1079', 'poll_template_votefooter', '</ul><p style="text-align: center;"><input type="button" name="vote" value="   Vote   " class="Buttons" onclick="poll_vote(%POLL_ID%);" /></p><p style="text-align: center;"><a href="#ViewPollResults" onclick="poll_result(%POLL_ID%); return false;" title="View Results Of This Poll">View Results</a></p></div>', 'yes'),
('1080', 'poll_template_resultheader', '<p style="text-align: center;"><strong>%POLL_QUESTION%</strong></p><div id="polls-%POLL_ID%-ans" class="wp-polls-ans"><ul class="wp-polls-ul">', 'yes'),
('1081', 'poll_template_resultbody', '<li>%POLL_ANSWER% <small>(%POLL_ANSWER_PERCENTAGE%%, %POLL_ANSWER_VOTES% Votes)</small><div class="pollbar" style="width: %POLL_ANSWER_IMAGEWIDTH%%;" title="%POLL_ANSWER_TEXT% (%POLL_ANSWER_PERCENTAGE%% | %POLL_ANSWER_VOTES% Votes)"></div></li>', 'yes'),
('1082', 'poll_template_resultbody2', '<li><strong><i>%POLL_ANSWER% <small>(%POLL_ANSWER_PERCENTAGE%%, %POLL_ANSWER_VOTES% Votes)</small></i></strong><div class="pollbar" style="width: %POLL_ANSWER_IMAGEWIDTH%%;" title="You Have Voted For This Choice - %POLL_ANSWER_TEXT% (%POLL_ANSWER_PERCENTAGE%% | %POLL_ANSWER_VOTES% Votes)"></div></li>', 'yes'),
('1083', 'poll_template_resultfooter', '</ul><p style="text-align: center;">Total Voters: <strong>%POLL_TOTALVOTERS%</strong></p></div>', 'yes'),
('1084', 'poll_template_resultfooter2', '</ul><p style="text-align: center;">Total Voters: <strong>%POLL_TOTALVOTERS%</strong></p><p style="text-align: center;"><a href="#VotePoll" onclick="poll_booth(%POLL_ID%); return false;" title="Vote For This Poll">Vote</a></p></div>', 'yes'),
('1085', 'poll_template_disable', 'Sorry, there are no polls available at the moment.', 'yes'),
('1086', 'poll_template_error', 'An error has occurred when processing your poll.', 'yes'),
('1087', 'poll_currentpoll', '0', 'yes'),
('1088', 'poll_latestpoll', '1', 'yes'),
('1089', 'poll_archive_perpage', '5', 'yes'),
('1090', 'poll_ans_sortby', 'polla_aid', 'yes'),
('1091', 'poll_ans_sortorder', 'asc', 'yes'),
('1092', 'poll_ans_result_sortby', 'polla_votes', 'yes'),
('1093', 'poll_ans_result_sortorder', 'desc', 'yes'),
('1094', 'poll_logging_method', '3', 'yes'),
('1095', 'poll_allowtovote', '2', 'yes'),
('1096', 'poll_archive_url', 'http://wordpress.server-7.ru/pollsarchive', 'yes'),
('1097', 'poll_bar', 'a:4:{s:5:"style";s:7:"default";s:10:"background";s:6:"d8e1eb";s:6:"border";s:6:"c8c8c8";s:6:"height";i:8;}', 'yes'),
('1098', 'poll_close', '1', 'yes'),
('1099', 'poll_ajax_style', 'a:2:{s:7:"loading";i:1;s:6:"fading";i:1;}', 'yes'),
('1100', 'poll_template_pollarchivelink', '<ul><li><a href="%POLL_ARCHIVE_URL%">Polls Archive</a></li></ul>', 'yes'),
('1101', 'poll_archive_displaypoll', '2', 'yes'),
('1102', 'poll_template_pollarchiveheader', '', 'yes'),
('1103', 'poll_template_pollarchivefooter', '<p>Start Date: %POLL_START_DATE%<br />End Date: %POLL_END_DATE%</p>', 'yes'),
('1104', 'poll_cookielog_expiry', '0', 'yes'),
('1105', 'poll_template_pollarchivepagingheader', '', 'yes'),
('1106', 'poll_template_pollarchivepagingfooter', '', 'yes'),
('1115', 'cpto_options', 'a:3:{s:8:"autosort";s:1:"1";s:9:"adminsort";s:1:"1";s:5:"level";i:8;}', 'yes'),
('1194', 'sp_events_cat_children', 'a:0:{}', 'yes'),
('1733', '_transient_timeout_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1378275931', 'no'),
('1734', '_transient_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1378232731', 'no'),
('1735', '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1378275931', 'no'),
('1736', '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><ul><li><a class=''rsswidget'' href=''http://wordpress.org/news/2013/08/oscar/'' title=''The latest and greatest WordPress, version 3.6, is now live to the world and includes a beautiful new blog-centric theme, bullet-proof autosave and post locking, a revamped revision browser, native support for audio and video embeds, and improved integrations with Spotify, Rdio, and SoundCloud. Here’s a video that shows off some of the features using […] [&hellip;]''>WordPress 3.6 “Oscar”</a> <span class="rss-date">01.08.2013</span><div class=''rssSummary''>The latest and greatest WordPress, version 3.6, is now live to the world and includes a beautiful new blog-centric theme, bullet-proof autosave and post locking, a revamped revision browser, native support for audio and video embeds, and improved integrations with Spotify, Rdio, and SoundCloud. Here’s a video that shows off some of the features using […] [&hellip;]</div></li><li><a class=''rsswidget'' href=''http://wordpress.org/news/2013/07/wordpress-3-6-release-candidate-2/'' title=''The second release candidate for WordPress 3.6 is now available for download and testing. We’re down to only a few remaining issues, and the final release should be available in a matter of days. In RC2, we’ve tightened up some aspects of revisions, autosave, and the media player, and fixed some bugs that were spotted […] [&hellip;]''>WordPress 3.6 Release Candidate 2</a> <span class="rss-date">24.07.2013</span><div class=''rssSummary''>The second release candidate for WordPress 3.6 is now available for download and testing. We’re down to only a few remaining issues, and the final release should be available in a matter of days. In RC2, we’ve tightened up some aspects of revisions, autosave, and the media player, and fixed some bugs that were spotted […] [&hellip;]</div></li></ul></div>', 'no'),
('1159', '_site_transient_timeout_browser_4edc633ae9e7fa7226e8d3d0d8356381', '1347134640', 'yes'),
('1160', '_site_transient_browser_4edc633ae9e7fa7226e8d3d0d8356381', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"15.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"12";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
('1195', 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
('1154', 'wp_super_heatmap_options', 'a:2:{s:28:"wp_super_heatmap_track_click";s:1:"0";s:28:"wp_super_heatmap_display_tab";s:1:"0";}', 'yes'),
('1155', 'wp_super_heatmap_date_options', 'a:3:{s:26:"wp_super_heatmap_use_dates";s:1:"0";s:27:"wp_super_heatmap_start_date";s:0:"";s:25:"wp_super_heatmap_end_date";s:0:"";}', 'yes'),
('1252', '_site_transient_timeout_browser_1dcd87cababf7258f9752cf3eeb1a9d2', '1356314680', 'yes'),
('1727', '_transient_timeout_feed_mod_786e449131cb9eb9d3848a1b24532bd0', '1378275930', 'no'),
('1728', '_transient_feed_mod_786e449131cb9eb9d3848a1b24532bd0', '1378232730', 'no'),
('1729', '_transient_timeout_dash_20494a3d90a6669585674ed0eb8dcd8f', '1378275930', 'no'),
('1730', '_transient_dash_20494a3d90a6669585674ed0eb8dcd8f', '<p>Этот виджет опрашивает <a href="http://blogsearch.google.com/">поиск Google по блогам</a>, и когда ссылка на ваш сайт появится в другом блоге, он будет показан в этом списке. Входящих ссылок не найдено&hellip; пока. Всё в порядке &#8212; торопиться некуда.</p>
', 'no'),
('1739', '_transient_timeout_feed_mod_867bd5c64f85878d03a060509cd2f92c', '1378275932', 'no'),
('1740', '_transient_feed_mod_867bd5c64f85878d03a060509cd2f92c', '1378232732', 'no'),
('1741', '_transient_timeout_dash_aa95765b5cc111c56d5993d476b1c2f0', '1378275932', 'no'),
('1742', '_transient_dash_aa95765b5cc111c56d5993d476b1c2f0', '<div class="rss-widget"><ul><li><a class=''rsswidget'' href=''http://feedproxy.google.com/~r/WordpressTavern/~3/pOEZyGzfIso/edit-flow-jetpack-and-mp6'' title=''The following plugins have either been recently updated or have an update pending. I use all three and know a bunch of other people who use them as well. Jetpack 2.4 in combination with Photon is causing problems on certain websites where images are showing at their full size instead of their specified dimensions. Meanwhile, Edit Flow has been acting up for  [&hellip;]''>WPTavern: Edit Flow, Jetpack, And MP6</a></li><li><a class=''rsswidget'' href=''http://wordpress.tv/2013/09/03/lindsay-branscombe-navigating-the-forest-of-e-commerce-a-guided-tour/'' title='' [&hellip;]''>WordPress.tv: Lindsay Branscombe: Navigating the Forest of E-commerce: A Guided Tour</a></li><li><a class=''rsswidget'' href=''http://wordpress.tv/2013/09/03/sam-hotchkiss-wordpress-security-preventing-alot-of-attacks/'' title='' [&hellip;]''>WordPress.tv: Sam Hotchkiss: WordPress Security: Preventing a Lot of Attacks</a></li><li><a class=''rsswidget'' href=''https://josephscott.org/archives/2013/09/mike-adams-on-three-security-issues-you-thought-youd-fixed/'' title=''Mike Adams spoke about Three Security Issues You Thought You’d Fixed at WordCamp San Francisco 2013. Although this was at a WordPress event, the security issues he talks about apply more broadly to PHP and web sites in general. I work with Mike at Automattic and we are hiring. If you enjoy bunny puns you should check out our list of open positions. [&hellip;]''>Joseph: Mike Adams on Three Security Issues You Thought You’d Fixed</a></li><li><a class=''rsswidget'' href=''http://wordpress.tv/2013/09/02/steph-yiu-vip-tools-for-writers-and-editors/'' title='' [&hellip;]''>WordPress.tv: Steph Yiu: VIP Tools for Writers and Editors</a></li></ul></div>', 'no'),
('1743', '_transient_timeout_feed_a5420c83891a9c88ad2a4f04584a5efc', '1378275932', 'no'),
('1744', '_transient_feed_a5420c83891a9c88ad2a4f04584a5efc', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"
	
";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:72:"
		
		
		
		
		
		
				

		
		
		
		
		
		
		
		
		
		
		
		
		
		
		

	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:39:"WordPress Plugins » View: Most Popular";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:44:"http://wordpress.org/plugins/browse/popular/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:39:"WordPress Plugins » View: Most Popular";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"en-US";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 03 Sep 2013 18:25:27 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"generator";a:1:{i:0;a:5:{s:4:"data";s:25:"http://bbpress.org/?v=1.1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:15:{i:0;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:7:"Akismet";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:45:"http://wordpress.org/plugins/akismet/#post-15";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 22:11:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:32:"15@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:98:"Akismet checks your comments against the Akismet web service to see if they look like spam or not.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"All in One SEO Pack";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:58:"http://wordpress.org/plugins/all-in-one-seo-pack/#post-753";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 30 Mar 2007 20:08:18 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"753@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:86:"WordPress SEO plugin to automatically optimize your Wordpress blog for Search Engines.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:8:"uberdose";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"Contact Form 7";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:54:"http://wordpress.org/plugins/contact-form-7/#post-2141";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 02 Aug 2007 12:45:03 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"2141@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:54:"Just another contact form plugin. Simple but flexible.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Takayuki Miyoshi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:24:"Jetpack by WordPress.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:48:"http://wordpress.org/plugins/jetpack/#post-23862";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 Jan 2011 02:21:38 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"23862@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:104:"Supercharge your WordPress site with powerful features previously only available to WordPress.com users.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:24:"Michael Adams (mdawaffe)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:22:"WordPress SEO by Yoast";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:53:"http://wordpress.org/plugins/wordpress-seo/#post-8321";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 01 Jan 2009 20:34:44 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"8321@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:131:"Improve your WordPress SEO: Write better content and have a fully optimized WordPress site using the WordPress SEO plugin by Yoast.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Joost de Valk";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:15:"NextGEN Gallery";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"http://wordpress.org/plugins/nextgen-gallery/#post-1169";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 23 Apr 2007 20:08:06 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"1169@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:122:"The most popular WordPress gallery plugin and one of the most popular plugins of all time with over 7.5 million downloads.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Alex Rabe";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"WordPress Importer";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"http://wordpress.org/plugins/wordpress-importer/#post-18101";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 May 2010 17:42:45 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"18101@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:101:"Import posts, pages, comments, custom fields, categories, tags and more from a WordPress export file.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Brian Colinger";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"Better WP Security";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"http://wordpress.org/plugins/better-wp-security/#post-21738";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 22 Oct 2010 22:06:05 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"21738@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:107:"The easiest, most effective way to secure WordPress. Improve the security of any WordPress site in seconds.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"ChrisWiegman";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"Wordfence Security";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:50:"http://wordpress.org/plugins/wordfence/#post-29832";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 04 Sep 2011 03:13:51 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"29832@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:148:"Wordfence Security is a free enterprise class security plugin that includes a firewall, virus scanning, real-time traffic with geolocation and more.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:8:"mmaunder";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"W3 Total Cache";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"http://wordpress.org/plugins/w3-total-cache/#post-12073";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 29 Jul 2009 18:46:31 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"12073@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:132:"Easy Web Performance Optimization (WPO) using caching: browser, page, object, database, minify and content delivery network support.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Frederick Townes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:10;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:7:"Captcha";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:48:"http://wordpress.org/plugins/captcha/#post-26129";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 27 Apr 2011 05:53:50 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"26129@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:79:"This plugin allows you to implement super security captcha form into web forms.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"bestwebsoft";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:11;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:21:"Really Simple CAPTCHA";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:61:"http://wordpress.org/plugins/really-simple-captcha/#post-9542";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 09 Mar 2009 02:17:35 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"9542@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:138:"Really Simple CAPTCHA is a CAPTCHA module intended to be called from other plugins. It is originally created for my Contact Form 7 plugin.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Takayuki Miyoshi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:12;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:24:"Fast Secure Contact Form";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"http://wordpress.org/plugins/si-contact-form/#post-12636";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 27 Aug 2009 01:20:04 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"12636@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:131:"A super customizable contact form that lets your visitors send you email. Blocks all automated spammers. No templates to mess with.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Mike Challis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:13;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"Google XML Sitemaps";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:63:"http://wordpress.org/plugins/google-sitemap-generator/#post-132";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 22:31:32 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"132@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:105:"This plugin will generate a special XML sitemap which will help search engines to better index your blog.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:5:"Arnee";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:14;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"Redirection";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"http://wordpress.org/plugins/redirection/#post-2286";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 10 Sep 2007 04:45:08 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"2286@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:144:"Redirection is a WordPress plugin to manage 301 redirections and keep track of 404 errors without requiring knowledge of Apache .htaccess files.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"John Godley";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"href";s:45:"http://wordpress.org/plugins/rss/view/popular";s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";a:7:{s:6:"server";s:5:"nginx";s:4:"date";s:29:"Tue, 03 Sep 2013 18:25:32 GMT";s:12:"content-type";s:23:"text/xml; charset=UTF-8";s:10:"connection";s:5:"close";s:4:"vary";s:15:"Accept-Encoding";s:13:"last-modified";s:29:"Fri, 09 Mar 2007 22:11:30 GMT";s:4:"x-nc";s:11:"HIT lax 250";}s:5:"build";s:14:"20111015034325";}', 'no'),
('1745', '_transient_timeout_feed_mod_a5420c83891a9c88ad2a4f04584a5efc', '1378275932', 'no'),
('1746', '_transient_feed_mod_a5420c83891a9c88ad2a4f04584a5efc', '1378232732', 'no'),
('1747', '_transient_timeout_feed_57bc725ad6568758915363af670fd8bc', '1378275933', 'no'),
('1748', '_transient_feed_57bc725ad6568758915363af670fd8bc', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"
	
";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:72:"
		
		
		
		
		
		
				

		
		
		
		
		
		
		
		
		
		
		
		
		
		
		

	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"WordPress Plugins » View: Newest";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:40:"http://wordpress.org/plugins/browse/new/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:33:"WordPress Plugins » View: Newest";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"en-US";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 03 Sep 2013 18:00:42 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"generator";a:1:{i:0;a:5:{s:4:"data";s:25:"http://bbpress.org/?v=1.1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:15:{i:0;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:5:"Ghost";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:46:"http://wordpress.org/plugins/ghost/#post-45494";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Nov 2012 20:10:25 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"45494@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:36:"Export your WordPress data to Ghost.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"JohnONolan";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:10:"User Stats";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"http://wordpress.org/plugins/user-stats/#post-57856";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 31 Aug 2013 10:51:13 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"57856@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:105:"Get the post count, post view count, cost per article, cost per 1000 views and more stats for your Users.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"ApinaPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:9:"MFS Sugar";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:50:"http://wordpress.org/plugins/mfs-sugar/#post-57785";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 29 Aug 2013 06:55:48 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"57785@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:71:"An introductory plugin to convert Wordpress Comments to Sugar CRM Cases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:18:"Mindfire Solutions";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"jQuery Side Menu";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:57:"http://wordpress.org/plugins/jquery-side-menu/#post-57831";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 30 Aug 2013 07:36:32 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"57831@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:150:"With jQuery Side Menu plugin you can display the list of websites along with favicon in a cool flyout sidebar. The plugin is useful to display your ne";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"shrinitech";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:24:"SO Remove WPML Menu Sync";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:65:"http://wordpress.org/plugins/so-remove-wpml-menu-sync/#post-57857";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 31 Aug 2013 11:30:23 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"57857@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:98:"This free WPML Addon removes the WP Menus Sync sub menu from the WPML sidebar menu in the backend.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Piet";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:40:"WooCommerce Payment Gateway for Saferpay";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:81:"http://wordpress.org/plugins/woocommerce-payment-gateway-for-saferpay/#post-57794";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 29 Aug 2013 14:07:37 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"57794@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:109:"WooCommerce Payment Gateway for Saferpay. Adds a Saferpay payment method to the WooCommerce eCommerce plugin.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Stefan Keller";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:23:"GoogleDrive folder list";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"http://wordpress.org/plugins/googledrive-folder-list/#post-57832";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 30 Aug 2013 08:08:14 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"57832@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:131:"GoogleDrive folder list allows you to insert a document list from any shared folder in google drive without google aauthentication.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:8:"sh4d0w28";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:13:"Attachments++";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:62:"http://wordpress.org/plugins/attachments-plus-plus/#post-57829";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 30 Aug 2013 04:58:51 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"57829@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:149:"Plussify your attachments! Attachments++ allows auto-embedding of most document,
video and audio files. No need to download that MS Word doc to read.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Dan Rossiter";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:15:"Satu Extensions";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"http://wordpress.org/plugins/satu-extensions/#post-57851";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 31 Aug 2013 05:13:21 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"57851@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:52:"Satu Extensions extends functionality to Satu Theme.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:6:"satrya";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:26:"PopTuneTrafic™ WP-Plugin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"http://wordpress.org/plugins/poptune-trafic/#post-57747";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 28 Aug 2013 08:09:35 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"57747@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:150:"Découvrez comment vous pouvez faire apparaitre votre site web dans les comptes sociaux de plus de 1 milliard d&#039;utilisateurs sur Twitter, Faceboo";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"TraficTune";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:10;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:17:"Read My Tweet Pro";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:58:"http://wordpress.org/plugins/read-my-tweet-pro/#post-57722";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 27 Aug 2013 23:23:19 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"57722@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:45:"WordPress jQuery Twitter Horizontal Scroller.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Maxx Kremer";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:11;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:44:"WooCommerce Checkout Password Strength Meter";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:85:"http://wordpress.org/plugins/woocommerce-checkout-password-strength-meter/#post-57914";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 02 Sep 2013 12:49:28 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"57914@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:66:"Add a password strength meter to the WooCommerce checkout process!";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Remi Corson";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:12;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:12:"Ework Slider";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:57:"http://wordpress.org/plugins/ework-flexslider/#post-57572";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 24 Aug 2013 18:36:45 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"57572@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:95:"Flexslider simple and easy to use with fade and slide effect, these can be arranged from admin.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Ework Group";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:13;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:29:"BP List Newest Members widget";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:63:"http://wordpress.org/plugins/bp-list-newest-members/#post-57795";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 29 Aug 2013 14:08:39 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"57795@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:62:"Show photos and names of the newest members in the widget area";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"naijaping";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:14;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"WP Keyword Suggest";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"http://wordpress.org/plugins/wp-keyword-suggest/#post-57542";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 23 Aug 2013 17:49:27 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"57542@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:103:"This SEO plugin offers keyword suggestions, taken from autocomplete google, yahoo, bing, amazon, blekko";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"nicolasmarin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"href";s:41:"http://wordpress.org/plugins/rss/view/new";s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";a:10:{s:6:"server";s:5:"nginx";s:4:"date";s:29:"Tue, 03 Sep 2013 18:25:32 GMT";s:12:"content-type";s:23:"text/xml; charset=UTF-8";s:10:"connection";s:5:"close";s:4:"vary";s:15:"Accept-Encoding";s:7:"expires";s:29:"Tue, 03 Sep 2013 18:35:42 GMT";s:13:"cache-control";s:0:"";s:6:"pragma";s:0:"";s:13:"last-modified";s:31:"Tue, 03 Sep 2013 18:00:42 +0000";s:4:"x-nc";s:11:"HIT lax 250";}s:5:"build";s:14:"20111015034325";}', 'no'),
('1749', '_transient_timeout_feed_mod_57bc725ad6568758915363af670fd8bc', '1378275933', 'no'),
('1750', '_transient_feed_mod_57bc725ad6568758915363af670fd8bc', '1378232733', 'no'),
('1287', 'post-ratings', 'a:13:{s:7:"version";s:3:"2.4";s:14:"anonymous_vote";b:1;s:10:"max_rating";i:5;s:16:"bayesian_formula";s:40:"(v / (v + MV)) * r + (MV / (v + MV)) * R";s:12:"user_formula";s:0:"";s:13:"custom_filter";s:0:"";s:11:"before_post";b:0;s:10:"after_post";b:1;s:10:"post_types";a:1:{i:0;s:4:"post";}s:10:"visibility";a:2:{i:0;s:4:"home";i:1;s:8:"singular";}s:10:"avg_rating";d:4.53763440860215094829754889360629022121429443359375;s:9:"num_votes";i:93;s:15:"num_rated_posts";i:11;}', 'yes'),
('1293', 'optionsframework', 'a:2:{s:2:"id";s:25:"optionsframework_magazine";s:12:"knownoptions";a:1:{i:0;s:25:"optionsframework_magazine";}}', 'yes'),
('1731', '_transient_timeout_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1378275931', 'no'),
('1732', '_transient_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"


";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:50:"
	
	
	
	
	
	
	
	
	
		
		
		
		
		
		
		
		
		
		
	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:3:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"WordPress News";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:25:"http://wordpress.org/news";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:14:"WordPress News";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:13:"lastBuildDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 01 Aug 2013 21:49:34 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"en-US";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"generator";a:1:{i:0;a:5:{s:4:"data";s:39:"http://wordpress.org/?v=3.7-alpha-25157";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:10:{i:0;a:6:{s:4:"data";s:42:"
		
		
		
		
		
				

		
		
				
			
		
		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:25:"WordPress 3.6 “Oscar”";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:40:"http://wordpress.org/news/2013/08/oscar/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:49:"http://wordpress.org/news/2013/08/oscar/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 01 Aug 2013 21:43:22 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://wordpress.org/news/?p=2661";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:368:"The latest and greatest WordPress, version 3.6, is now live to the world and includes a beautiful new blog-centric theme, bullet-proof autosave and post locking, a revamped revision browser, native support for audio and video embeds, and improved integrations with Spotify, Rdio, and SoundCloud. Here&#8217;s a video that shows off some of the features using [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:18626:"<p>The latest and greatest WordPress, version 3.6, is now <a href="http://wordpress.org/download/">live to the world</a> and includes a beautiful new blog-centric theme, bullet-proof autosave and post locking, a revamped revision browser, native support for audio and video embeds, and improved integrations with Spotify, Rdio, and SoundCloud. Here&#8217;s a video that shows off some of the features using our cast of professional actors:</p>
<div id="v-UmhwbWJH-1" class="video-player"><embed id="v-UmhwbWJH-1-video" src="http://s0.videopress.com/player.swf?v=1.03&amp;guid=UmhwbWJH&amp;isDynamicSeeking=true" type="application/x-shockwave-flash" width="692" height="388" title="Introducing WordPress 3.6 &quot;Oscar&quot;" wmode="direct" seamlesstabbing="true" allowfullscreen="true" allowscriptaccess="always" overstretch="true"></embed></div>
<p>We&#8217;re calling this release &#8220;Oscar&#8221; in honor of the great jazz pianist <a href="http://en.wikipedia.org/wiki/Oscar_Peterson">Oscar Peterson</a>. Here&#8217;s a bit more about some of the new features, which you can also find on the about page in your dashboard after you upgrade.</p>
<h3>User Features</h3>
<p><img class="alignright" alt="" src="https://wordpress.org/images/core/3.6/twentythirteen.png" width="300" /></p>
<ul>
<li>The <strong>new Twenty Thirteen theme</strong> inspired by modern art puts focus on your content with a colorful, single-column design made for media-rich blogging.</li>
<li><strong>Revamped Revisions</strong> save every change and the new interface allows you to scroll easily through changes to see line-by-line who changed what and when.</li>
<li><strong>Post Locking</strong> and <strong>Augmented Autosave</strong> will especially be a boon to sites where more than a single author is working on a post. Each author now has their own autosave stream, which stores things locally as well as on the server (so much harder to lose something) and there&#8217;s an interface for taking over editing of a post, as demonstrated beautifully by our bearded buddies in the video above.</li>
<li><strong>Built-in HTML5 media player</strong> for native audio and video embeds with no reliance on external services.</li>
<li>The <strong>Menu Editor</strong> is now much easier to understand and use.</li>
</ul>
<h3>Developer features</h3>
<ul>
<li>A new audio/video API gives you access to metadata like ID3 tags.</li>
<li>You can now choose HTML5 markup for things like comment and search forms, and comment lists.</li>
<li>Better filters for how revisions work, so you can store a different amount of history for different post types.</li>
<li>Tons more <a href="http://codex.wordpress.org/Version_3.6">listed on the Codex</a>, and of course you can always <a href="http://core.trac.wordpress.org/query?status=closed&amp;group=resolution&amp;milestone=3.6">browse the over 700 closed tickets</a>.</li>
</ul>
<h3>The Band</h3>
<p>This release was led by <a href="http://markjaquith.com/">Mark Jaquith</a> and <a href="http://geekreprieve.com/">Aaron Campbell</a>, and included contributions from the following fine folks. Pull up some Oscar Peterson on your music service of choice, or vinyl if you have it, and check out some of their profiles:</p>
<p><a href="http://profiles.wordpress.org/technosailor">Aaron Brazell</a>, <a href="http://profiles.wordpress.org/aaroncampbell">Aaron D. Campbell</a>, <a href="http://profiles.wordpress.org/aaronholbrook">Aaron Holbrook</a>, <a href="http://profiles.wordpress.org/jorbin">Aaron Jorbin</a>, <a href="http://profiles.wordpress.org/kawauso">Adam Harley</a>, <a href="http://profiles.wordpress.org/adamsilverstein">adamsilverstein</a>, <a href="http://profiles.wordpress.org/akted">AK Ted</a>, <a href="http://profiles.wordpress.org/xknown">Alex Concha</a>, <a href="http://profiles.wordpress.org/alexkingorg">Alex King</a>, <a href="http://profiles.wordpress.org/viper007bond">Alex Mills (Viper007Bond)</a>, <a href="http://profiles.wordpress.org/momo360modena">Amaury Balmer</a>, <a href="http://profiles.wordpress.org/sabreuse">Amy Hendrix (sabreuse)</a>, <a href="http://profiles.wordpress.org/anatolbroder">Anatol Broder</a>, <a href="http://profiles.wordpress.org/nacin">Andrew Nacin</a>, <a href="http://profiles.wordpress.org/azaozz">Andrew Ozz</a>, <a href="http://profiles.wordpress.org/andrewryno">Andrew Ryno</a>, <a href="http://profiles.wordpress.org/andy">Andy Skelton</a>, <a href="http://profiles.wordpress.org/gorgoglionemeister">Antonio</a>, <a href="http://profiles.wordpress.org/apimlott">apimlott</a>, <a href="http://profiles.wordpress.org/awellis13">awellis13</a>, <a href="http://profiles.wordpress.org/barry">Barry</a>, <a href="http://profiles.wordpress.org/beaulebens">Beau Lebens</a>, <a href="http://profiles.wordpress.org/belloswan">BelloSwan</a>, <a href="http://profiles.wordpress.org/bilalcoder">bilalcoder</a>, <a href="http://profiles.wordpress.org/bananastalktome">Billy (bananastalktome)</a>, <a href="http://profiles.wordpress.org/bobbingwide">bobbingwide</a>, <a href="http://profiles.wordpress.org/bobbravo2">Bob Gregor</a>, <a href="http://profiles.wordpress.org/bradparbs">bradparbs</a>, <a href="http://profiles.wordpress.org/bradyvercher">Brady Vercher</a>, <a href="http://profiles.wordpress.org/kraftbj">Brandon Kraft</a>, <a href="http://profiles.wordpress.org/brianlayman">Brian Layman</a>, <a href="http://profiles.wordpress.org/beezeee">Brian Zeligson</a>, <a href="http://profiles.wordpress.org/bpetty">Bryan Petty</a>, <a href="http://profiles.wordpress.org/chmac">Callum Macdonald</a>, <a href="http://profiles.wordpress.org/carldanley">Carl Danley</a>, <a href="http://profiles.wordpress.org/caspie">Caspie</a>, <a href="http://profiles.wordpress.org/charlestonsw">Charleston Software Associates</a>, <a href="http://profiles.wordpress.org/cheeserolls">cheeserolls</a>, <a href="http://profiles.wordpress.org/chipbennett">Chip Bennett</a>, <a href="http://profiles.wordpress.org/c3mdigital">Chris Olbekson</a>, <a href="http://profiles.wordpress.org/cochran">Christopher Cochran</a>, <a href="http://profiles.wordpress.org/cfinke">Christopher Finke</a>, <a href="http://profiles.wordpress.org/chriswallace">Chris Wallace</a>, <a href="http://profiles.wordpress.org/corvannoorloos">Cor van Noorloos</a>, <a href="http://profiles.wordpress.org/crazycoders">crazycoders</a>, <a href="http://profiles.wordpress.org/danielbachhuber">Daniel Bachhuber</a>, <a href="http://profiles.wordpress.org/mzaweb">Daniel Dvorkin (MZAWeb)</a>, <a href="http://profiles.wordpress.org/redsweater">Daniel Jalkut (Red Sweater)</a>, <a href="http://profiles.wordpress.org/daniloercoli">daniloercoli</a>, <a href="http://profiles.wordpress.org/dannydehaan">Danny de Haan</a>, <a href="http://profiles.wordpress.org/csixty4">Dave Ross</a>, <a href="http://profiles.wordpress.org/dfavor">David Favor</a>, <a href="http://profiles.wordpress.org/jdtrower">David Trower</a>, <a href="http://profiles.wordpress.org/davidwilliamson">David Williamson</a>, <a href="http://profiles.wordpress.org/dd32">Dion Hulse</a>, <a href="http://profiles.wordpress.org/dllh">dllh</a>, <a href="http://profiles.wordpress.org/ocean90">Dominik Schilling (ocean90)</a>, <a href="http://profiles.wordpress.org/dovyp">dovyp</a>, <a href="http://profiles.wordpress.org/drewapicture">Drew Jaynes (DrewAPicture)</a>, <a href="http://profiles.wordpress.org/dvarga">dvarga</a>, <a href="http://profiles.wordpress.org/cais">Edward Caissie</a>, <a href="http://profiles.wordpress.org/elfin">elfin</a>, <a href="http://profiles.wordpress.org/empireoflight">Empireoflight</a>, <a href="http://profiles.wordpress.org/ericlewis">Eric Andrew Lewis</a>, <a href="http://profiles.wordpress.org/ethitter">Erick Hitter</a>, <a href="http://profiles.wordpress.org/ericmann">Eric Mann</a>, <a href="http://profiles.wordpress.org/evansolomon">Evan Solomon</a>, <a href="http://profiles.wordpress.org/faishal">faishal</a>, <a href="http://profiles.wordpress.org/feedmeastraycat">feedmeastraycat</a>, <a href="http://profiles.wordpress.org/frank-klein">Frank Klein</a>, <a href="http://profiles.wordpress.org/f-j-kaiser">Franz Josef Kaiser</a>, <a href="http://profiles.wordpress.org/fstop">FStop</a>, <a href="http://profiles.wordpress.org/mintindeed">Gabriel Koen</a>, <a href="http://profiles.wordpress.org/garyc40">Gary Cao</a>, <a href="http://profiles.wordpress.org/garyj">Gary Jones</a>, <a href="http://profiles.wordpress.org/gcorne">gcorne</a>, <a href="http://profiles.wordpress.org/geertdd">GeertDD</a>, <a href="http://profiles.wordpress.org/soulseekah">Gennady Kovshenin</a>, <a href="http://profiles.wordpress.org/georgestephanis">George Stephanis</a>, <a href="http://profiles.wordpress.org/gish">gish</a>, <a href="http://profiles.wordpress.org/tivnet">Gregory Karpinsky</a>, <a href="http://profiles.wordpress.org/hakre">hakre</a>, <a href="http://profiles.wordpress.org/hbanken">hbanken</a>, <a href="http://profiles.wordpress.org/hebbet">hebbet</a>, <a href="http://profiles.wordpress.org/helen">Helen Hou-Sandi</a>, <a href="http://profiles.wordpress.org/helgatheviking">helgatheviking</a>, <a href="http://profiles.wordpress.org/hirozed">hirozed</a>, <a href="http://profiles.wordpress.org/hurtige">hurtige</a>, <a href="http://profiles.wordpress.org/hypertextranch">hypertextranch</a>, <a href="http://profiles.wordpress.org/iandunn">Ian Dunn</a>, <a href="http://profiles.wordpress.org/ipstenu">Ipstenu (Mika Epstein)</a>, <a href="http://profiles.wordpress.org/jakub">jakub</a>, <a href="http://profiles.wordpress.org/h4ck3rm1k3">James Michael DuPont</a>, <a href="http://profiles.wordpress.org/jbutkus">jbutkus</a>, <a href="http://profiles.wordpress.org/jeremyfelt">Jeremy Felt</a>, <a href="http://profiles.wordpress.org/jerrysarcastic">Jerry Bates (JerrySarcastic)</a>, <a href="http://profiles.wordpress.org/jayjdk">Jesper Johansen (Jayjdk)</a>, <a href="http://profiles.wordpress.org/joehoyle">Joe Hoyle</a>, <a href="http://profiles.wordpress.org/joen">Joen Asmussen</a>, <a href="http://profiles.wordpress.org/jkudish">Joey Kudish</a>, <a href="http://profiles.wordpress.org/johnbillion">John Blackbourn (johnbillion)</a>, <a href="http://profiles.wordpress.org/johnjamesjacoby">John James Jacoby</a>, <a href="http://profiles.wordpress.org/jond3r">Jonas Bolinder (jond3r)</a>, <a href="http://profiles.wordpress.org/desrosj">Jonathan Desrosiers</a>, <a href="http://profiles.wordpress.org/jonbishop">Jon Bishop</a>, <a href="http://profiles.wordpress.org/duck_">Jon Cave</a>, <a href="http://profiles.wordpress.org/jcastaneda">Jose Castaneda</a>, <a href="http://profiles.wordpress.org/josephscott">Joseph Scott</a>, <a href="http://profiles.wordpress.org/jvisick77">Josh Visick</a>, <a href="http://profiles.wordpress.org/jrbeilke">jrbeilke</a>, <a href="http://profiles.wordpress.org/jrf">jrf</a>, <a href="http://profiles.wordpress.org/devesine">Justin de Vesine</a>, <a href="http://profiles.wordpress.org/justinsainton">Justin Sainton</a>, <a href="http://profiles.wordpress.org/kadamwhite">kadamwhite</a>, <a href="http://profiles.wordpress.org/trepmal">Kailey (trepmal)</a>, <a href="http://profiles.wordpress.org/karmatosed">karmatosed</a>, <a href="http://profiles.wordpress.org/ryelle">Kelly Dwan</a>, <a href="http://profiles.wordpress.org/keoshi">keoshi</a>, <a href="http://profiles.wordpress.org/kovshenin">Konstantin Kovshenin</a>, <a href="http://profiles.wordpress.org/obenland">Konstantin Obenland</a>, <a href="http://profiles.wordpress.org/ktdreyer">ktdreyer</a>, <a href="http://profiles.wordpress.org/kurtpayne">Kurt Payne</a>, <a href="http://profiles.wordpress.org/kwight">kwight</a>, <a href="http://profiles.wordpress.org/lancewillett">Lance Willett</a>, <a href="http://profiles.wordpress.org/leewillis77">Lee Willis (leewillis77)</a>, <a href="http://profiles.wordpress.org/lessbloat">lessbloat</a>, <a href="http://profiles.wordpress.org/settle">Mantas Malcius</a>, <a href="http://profiles.wordpress.org/maor">Maor Chasen</a>, <a href="http://profiles.wordpress.org/macbrink">Marcel Brinkkemper</a>, <a href="http://profiles.wordpress.org/marcuspope">MarcusPope</a>, <a href="http://profiles.wordpress.org/mark-k">Mark-k</a>, <a href="http://profiles.wordpress.org/markjaquith">Mark Jaquith</a>, <a href="http://profiles.wordpress.org/markmcwilliams">Mark McWilliams</a>, <a href="http://profiles.wordpress.org/markoheijnen">Marko Heijnen</a>, <a href="http://profiles.wordpress.org/mjbanks">Matt Banks</a>, <a href="http://profiles.wordpress.org/mboynes">Matthew Boynes</a>, <a href="http://profiles.wordpress.org/matthewruddy">MatthewRuddy</a>, <a href="http://profiles.wordpress.org/mattwiebe">Matt Wiebe</a>, <a href="http://profiles.wordpress.org/maxcutler">Max Cutler</a>, <a href="http://profiles.wordpress.org/melchoyce">Mel Choyce</a>, <a href="http://profiles.wordpress.org/mgibbs189">mgibbs189</a>, <a href="http://profiles.wordpress.org/fanquake">Michael</a>, <a href="http://profiles.wordpress.org/mdawaffe">Michael Adams (mdawaffe)</a>, <a href="http://profiles.wordpress.org/tw2113">Michael Beckwith</a>, <a href="http://profiles.wordpress.org/mfields">Michael Fields</a>, <a href="http://profiles.wordpress.org/mikehansenme">Mike Hansen</a>, <a href="http://profiles.wordpress.org/dh-shredder">Mike Schroder</a>, <a href="http://profiles.wordpress.org/dimadin">Milan Dinic</a>, <a href="http://profiles.wordpress.org/mitchoyoshitaka">mitcho (Michael Yoshitaka Erlewine)</a>, <a href="http://profiles.wordpress.org/batmoo">Mohammad Jangda</a>, <a href="http://profiles.wordpress.org/najamelan">najamelan</a>, <a href="http://profiles.wordpress.org/Nao">Naoko Takano</a>, <a href="http://profiles.wordpress.org/alex-ye">Nashwan Doaqan</a>, <a href="http://profiles.wordpress.org/niallkennedy">Niall Kennedy</a>, <a href="http://profiles.wordpress.org/nickdaugherty">Nick Daugherty</a>, <a href="http://profiles.wordpress.org/celloexpressions">Nick Halsey</a>, <a href="http://profiles.wordpress.org/ninnypants">ninnypants</a>, <a href="http://profiles.wordpress.org/norcross">norcross</a>, <a href="http://profiles.wordpress.org/paradiseporridge">ParadisePorridge</a>, <a href="http://profiles.wordpress.org/pauldewouters">Paul</a>, <a href="http://profiles.wordpress.org/pdclark">Paul Clark</a>, <a href="http://profiles.wordpress.org/pavelevap">pavelevap</a>, <a href="http://profiles.wordpress.org/petemall">Pete Mall</a>, <a href="http://profiles.wordpress.org/westi">Peter Westwood</a>, <a href="http://profiles.wordpress.org/phill_brown">Phill Brown</a>, <a href="http://profiles.wordpress.org/mordauk">Pippin Williamson</a>, <a href="http://profiles.wordpress.org/pollett">Pollett</a>, <a href="http://profiles.wordpress.org/nprasath002">Prasath Nadarajah</a>, <a href="http://profiles.wordpress.org/programmin">programmin</a>, <a href="http://profiles.wordpress.org/rachelbaker">rachelbaker</a>, <a href="http://profiles.wordpress.org/ramiy">Rami Yushuvaev</a>, <a href="http://profiles.wordpress.org/redpixelstudios">redpixelstudios</a>, <a href="http://profiles.wordpress.org/reidburke">reidburke</a>, <a href="http://profiles.wordpress.org/retlehs">retlehs</a>, <a href="http://profiles.wordpress.org/greuben">Reuben Gunday</a>, <a href="http://profiles.wordpress.org/rlerdorf">rlerdorf</a>, <a href="http://profiles.wordpress.org/rodrigosprimo">Rodrigo Primo</a>, <a href="http://profiles.wordpress.org/roulandf">roulandf</a>, <a href="http://profiles.wordpress.org/rovo89">rovo89</a>, <a href="http://profiles.wordpress.org/ryanduff">Ryan Duff</a>, <a href="http://profiles.wordpress.org/ryanhellyer">Ryan Hellyer</a>, <a href="http://profiles.wordpress.org/rmccue">Ryan McCue</a>, <a href="http://profiles.wordpress.org/zeo">Safirul Alredha</a>, <a href="http://profiles.wordpress.org/saracannon">sara cannon</a>, <a href="http://profiles.wordpress.org/scholesmafia">scholesmafia</a>, <a href="http://profiles.wordpress.org/sc0ttkclark">Scott Kingsley Clark</a>, <a href="http://profiles.wordpress.org/coffee2code">Scott Reilly</a>, <a href="http://profiles.wordpress.org/wonderboymusic">Scott Taylor</a>, <a href="http://profiles.wordpress.org/scribu">scribu</a>, <a href="http://profiles.wordpress.org/tenpura">Seisuke Kuraishi (tenpura)</a>, <a href="http://profiles.wordpress.org/sergej">Sergej</a>, <a href="http://profiles.wordpress.org/sergeybiryukov">Sergey Biryukov</a>, <a href="http://profiles.wordpress.org/sim">Simon Hampel</a>, <a href="http://profiles.wordpress.org/simonwheatley">Simon Wheatley</a>, <a href="http://profiles.wordpress.org/siobhan">Siobhan</a>, <a href="http://profiles.wordpress.org/sirzooro">sirzooro</a>, <a href="http://profiles.wordpress.org/slene">slene</a>, <a href="http://profiles.wordpress.org/solarissmoke">solarissmoke</a>, <a href="http://profiles.wordpress.org/srinig">SriniG</a>, <a href="http://profiles.wordpress.org/stephenh1988">Stephen Harris</a>, <a href="http://profiles.wordpress.org/storkontheroof">storkontheroof</a>, <a href="http://profiles.wordpress.org/sunnyratilal">Sunny Ratilal</a>, <a href="http://profiles.wordpress.org/sweetie089">sweetie089</a>, <a href="http://profiles.wordpress.org/tar">Tar</a>, <a href="http://profiles.wordpress.org/tlovett1">Taylor Lovett</a>, <a href="http://profiles.wordpress.org/thomasvanderbeek">Thomas van der Beek</a>, <a href="http://profiles.wordpress.org/n7studios">Tim Carr</a>, <a href="http://profiles.wordpress.org/tjsingleton">tjsingleton</a>, <a href="http://profiles.wordpress.org/tobiasbg">TobiasBg</a>, <a href="http://profiles.wordpress.org/toscho">toscho</a>, <a href="http://profiles.wordpress.org/taupecat">Tracy Rotton</a>, <a href="http://profiles.wordpress.org/travishoffman">TravisHoffman</a>, <a href="http://profiles.wordpress.org/uuf6429">uuf6429</a>, <a href="http://profiles.wordpress.org/lightningspirit">Vitor Carvalho</a>, <a href="http://profiles.wordpress.org/wojtek">wojtek</a>, <a href="http://profiles.wordpress.org/wpewill">wpewill</a>, <a href="http://profiles.wordpress.org/wraithkenny">WraithKenny</a>, <a href="http://profiles.wordpress.org/wycks">wycks</a>, <a href="http://profiles.wordpress.org/xibe">Xavier Borderie</a>, <a href="http://profiles.wordpress.org/yoavf">Yoav Farhi</a>, <a href="http://profiles.wordpress.org/thelastcicada">Zachary Brown</a>, <a href="http://profiles.wordpress.org/tollmanz">Zack Tollman</a>, <a href="http://profiles.wordpress.org/zekeweeks">zekeweeks</a>, <a href="http://profiles.wordpress.org/ziegenberg">ziegenberg</a>, and <a href="http://profiles.wordpress.org/viniciusmassuchetto">viniciusmassuchetto</a>.</p>
<p>Time to upgrade!</p>
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:45:"http://wordpress.org/news/2013/08/oscar/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:45:"
		
		
		
		
		
				
		

		
		
				
			
		
		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"WordPress 3.6 Release Candidate 2";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:68:"http://wordpress.org/news/2013/07/wordpress-3-6-release-candidate-2/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:77:"http://wordpress.org/news/2013/07/wordpress-3-6-release-candidate-2/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 24 Jul 2013 07:25:10 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:11:"Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:7:"Testing";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://wordpress.org/news/?p=2649";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:341:"The second release candidate for WordPress 3.6 is now available for download and testing. We&#8217;re down to only a few remaining issues, and the final release should be available in a matter of days. In RC2, we&#8217;ve tightened up some aspects of revisions, autosave, and the media player, and fixed some bugs that were spotted [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Mark Jaquith";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:1325:"<p>The second release candidate for WordPress 3.6 is now available for download and testing.</p>
<p>We&#8217;re down to only a few remaining issues, and the final release should be available in a matter of days. In RC2, we&#8217;ve tightened up some aspects of revisions, autosave, and the media player, and fixed some bugs that were spotted in RC1. Please test this release candidate as much as you can, so we can deliver a smooth final release!</p>
<p><strong>Think you&#8217;ve found a bug?</strong> Please post to the <a href="http://wordpress.org/support/forum/alphabeta/">Alpha/Beta area in the support forums</a>.</p>
<p><strong>Developers,</strong> please continue to test your plugins and themes, so that if there is a compatibility issue, we can figure it out before the final release. You can find our <a href="http://core.trac.wordpress.org/report/6">list of known issues here</a>.</p>
<p>To test WordPress 3.6, try the <a href="http://wordpress.org/extend/plugins/wordpress-beta-tester/">WordPress Beta Tester</a> plugin (you&#8217;ll want &#8220;bleeding edge nightlies&#8221;). Or you can <a href="http://wordpress.org/wordpress-3.6-RC2.zip">download the release candidate here (zip)</a>.</p>
<p><em>Revisions so smooth</em><br />
<em>We autosave your changes</em><br />
<em>Data loss begone!</em></p>
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:73:"http://wordpress.org/news/2013/07/wordpress-3-6-release-candidate-2/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:45:"
		
		
		
		
		
				
		

		
		
				
			
		
		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:31:"WordPress 3.6 Release Candidate";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:66:"http://wordpress.org/news/2013/07/wordpress-3-6-release-candidate/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:75:"http://wordpress.org/news/2013/07/wordpress-3-6-release-candidate/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 13 Jul 2013 03:23:17 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:11:"Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:7:"Testing";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://wordpress.org/news/?p=2639";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:344:"The first release candidate for WordPress 3.6 is now available. We hope to ship WordPress 3.6 in a couple weeks. But to do that, we really need your help! If you haven&#8217;t tested 3.6 yet, there&#8217;s no time like the present. (But please: not on a live production site, unless you&#8217;re feeling especially adventurous.) Think [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Mark Jaquith";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:1504:"<p>The first release candidate for WordPress 3.6 is now available.</p>
<p>We hope to ship WordPress 3.6 in a couple weeks. But to do that, we really need your help! If you haven&#8217;t tested 3.6 yet, there&#8217;s no time like the present. (But please: not on a live production site, unless you&#8217;re feeling especially adventurous.)</p>
<p><strong>Think you&#8217;ve found a bug?</strong> Please post to the <a href="http://wordpress.org/support/forum/alphabeta/">Alpha/Beta area in the support forums</a>. If any known issues come up, you’ll be able to <a href="http://core.trac.wordpress.org/report/6">find them here</a>. <strong>Developers,</strong> please test your plugins and themes, so that if there is a compatibility issue, we can sort it out before the final release.</p>
<p>To test WordPress 3.6, try the <a href="http://wordpress.org/extend/plugins/wordpress-beta-tester/">WordPress Beta Tester</a> plugin (you&#8217;ll want &#8220;bleeding edge nightlies&#8221;). Or you can <a href="http://wordpress.org/wordpress-3.6-RC1.zip">download the release candidate here (zip)</a>.</p>
<p>As you may have heard, we backed the Post Format UI feature out of the release. On the other hand, our slick new revisions browser had some extra time to develop. You should see it with 200+ revisions loaded — scrubbing back and forth at lightning speed is a thing of beauty.</p>
<p><em>Delayed, but still loved</em><br />
<em>The release will be out soon</em><br />
<em>Test it, por favor</em></p>
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:71:"http://wordpress.org/news/2013/07/wordpress-3-6-release-candidate/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:45:"
		
		
		
		
		
				
		

		
		
				
			
		
		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:30:"Annual WordPress Survey & WCSF";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:63:"http://wordpress.org/news/2013/07/annual-wordpress-survey-wcsf/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:72:"http://wordpress.org/news/2013/07/annual-wordpress-survey-wcsf/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 09 Jul 2013 23:50:29 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:9:"Community";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:6:"Events";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://wordpress.org/news/?p=2625";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:347:"It&#8217;s time for our third annual user and developer survey! If you&#8217;re a WordPress user, developer, or business, we want your feedback. Just like previous years, we&#8217;ll share the data at the upcoming WordCamp San Francisco (WCSF). Results will also be sent to each survey respondent. It only takes a few minutes to fill out [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:1242:"<p><img class="alignright" alt="" align="right" src="http://wpdotorg.files.wordpress.com/2013/07/wcsf-2013.jpg" width="278" height="185" />It&#8217;s time for our third annual user and developer survey! If you&#8217;re a WordPress user, developer, or business, we want your feedback. Just like previous years, we&#8217;ll share the data at the upcoming <a href="http://2013.sf.wordcamp.org/">WordCamp San Francisco</a> (WCSF). Results will also be sent to each survey respondent.</p>
<p>It only takes a few minutes to <a href="http://wp-survey.polldaddy.com/s/wp-2013">fill out the survey</a>, which will provide an overview of how people use WordPress.</p>
<p>If you missed past State of the Word keynotes, be sure to check out them out for survey results from <a href="http://wordpress.org/news/2011/08/state-of-the-word/">2011</a> and <a href="http://ma.tt/2012/08/state-of-the-word-2012/">2012</a>.</p>
<p>Speaking of WCSF, if you didn&#8217;t get a ticket or are too far away to attend, you can still <a href="http://2013.sf.wordcamp.org/tickets/">get a ticket for the live stream</a>! Watch the live video stream from the comfort of your home on July 26 and 27; WCSF t-shirt, or any shirt, optional.</p>
<p>I hope to see you there.</p>
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:68:"http://wordpress.org/news/2013/07/annual-wordpress-survey-wcsf/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:45:"
		
		
		
		
		
				
		

		
		
				
			
		
		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:48:"WordPress 3.5.2 Maintenance and Security Release";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:50:"http://wordpress.org/news/2013/06/wordpress-3-5-2/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:59:"http://wordpress.org/news/2013/06/wordpress-3-5-2/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 21 Jun 2013 19:54:26 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Security";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://wordpress.org/news/?p=2612";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:380:"WordPress 3.5.2 is now available. This is the second maintenance release of 3.5, fixing 12 bugs. This is a security release for all previous versions and we strongly encourage you to update your sites immediately. The WordPress security team resolved seven security issues, and this release also contains some additional security hardening. The security fixes included: [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Andrew Nacin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2549:"<p>WordPress 3.5.2 is now available. This is the second maintenance release of 3.5, fixing <a href="http://core.trac.wordpress.org/query?status=closed&amp;group=resolution&amp;milestone=3.5.2">12 bugs</a>. <strong>This is a security release for all previous versions and we strongly encourage you to update your sites immediately.</strong> The WordPress security team resolved seven security issues, and this release also contains some additional security hardening.</p>
<p>The security fixes included:</p>
<ul>
<li>Blocking server-side request forgery attacks, which could potentially enable an attacker to gain access to a site.</li>
<li>Disallow contributors from improperly publishing posts, reported by <a href="http://kovshenin.com/">Konstantin Kovshenin</a>, or reassigning the post&#8217;s authorship, reported by <a href="http://www.sharefaith.com/">Luke Bryan</a>.</li>
<li>An update to the SWFUpload external library to fix cross-site scripting vulnerabilities. Reported by <a href="http://ma.la">mala</a> and <a href="http://mars.iti.pk.edu.pl/~grucha/">Szymon Gruszecki</a>. (Developers: More on SWFUpload <a href="http://make.wordpress.org/core/2013/06/21/secure-swfupload/">here</a>.)</li>
<li>Prevention of a denial of service attack, affecting sites using password-protected posts.</li>
<li>An update to an external TinyMCE library to fix a cross-site scripting vulnerability. Reported by <a href="http://twitter.com/rinakikun">Wan Ikram</a>.</li>
<li>Multiple fixes for cross-site scripting. Reported by <a href="http://webapplicationsecurity.altervista.org/">Andrea Santese</a> and Rodrigo.</li>
<li>Avoid disclosing a full file path when a upload fails. Reported by <a href="http://hauntit.blogspot.de/">Jakub Galczyk</a>.</li>
</ul>
<p>We appreciated <a href="http://codex.wordpress.org/FAQ_Security">responsible disclosure</a> of these issues directly to our security team. For more information on the changes, see the <a href="http://codex.wordpress.org/Version_3.5.2">release notes</a> or consult <a href="http://core.trac.wordpress.org/log/branches/3.5?rev=24498&amp;stop_rev=23347">the list of changes</a>.</p>
<p><a href="http://wordpress.org/wordpress-3.5.2.zip">Download WordPress 3.5.2</a> or update now from the Dashboard → Updates menu in your site’s admin area.</p>
<p><em>Also:</em> <strong>WordPress 3.6 Beta 4:</strong> If you are testing WordPress 3.6, please note that <a href="http://wordpress.org/wordpress-3.6-beta4.zip">WordPress 3.6 Beta 4</a> (zip) includes fixes for these security issues.</p>
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:55:"http://wordpress.org/news/2013/06/wordpress-3-5-2/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:42:"
		
		
		
		
		
				

		
		
				
			
		
		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"Ten Good Years";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:49:"http://wordpress.org/news/2013/05/ten-good-years/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:58:"http://wordpress.org/news/2013/05/ten-good-years/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 31 May 2013 17:54:35 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:4:"Meta";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://wordpress.org/news/?p=2606";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:343:"It&#8217;s been ten years since we started this thing, and what a long way we&#8217;ve come. From a discussion between myself and Mike Little about forking our favorite blogging software, to powering 18% of the web. It&#8217;s been a crazy, exciting, journey, and one that won&#8217;t stop any time soon. At ten years, it&#8217;s fun [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:9852:"<p><img class="alignright" alt="" align="right" src="http://wpdotorg.files.wordpress.com/2013/05/wp10.jpg" width="316" height="164" />It&#8217;s been ten years since we started this thing, and what a long way we&#8217;ve come. From a discussion between myself and <a href="http://mikelittle.org/">Mike Little</a> about <a href="http://ma.tt/2003/01/the-blogging-software-dilemma/">forking our favorite blogging software</a>, to powering 18% of the web. It&#8217;s been a crazy, exciting, journey, and one that won&#8217;t stop any time soon.</p>
<p>At ten years, it&#8217;s fun to reflect on our beginnings. We launched WordPress on 27th May 2003, but that wasn&#8217;t inception. Go back far enough, and you can <a href="http://zengun.org/weblog/archives/2001/06/post1958/">read a post by Michel Valdrighi</a> who, frustrated by the self-hosted blogging platforms available, decided to write his own software; &#8220;b2, a PHP+MySQL alternative to Blogger and GreyMatter.&#8221; b2 was easy to install, easy to configure, and easy for developers to extend. Of all the blogging platforms out there, <a href="http://cafelog.com">b2</a> was the right one for me: I could write my content and get it on the web quickly and painlessly.</p>
<p>Sometimes, however, life gets in the way. In 2002, Michel stopped maintaining b2. Over time, security flaws became apparent and updates were needed and, while the b2 community could write patches and fixes, no one was driving the software forward. We were lucky that Michel decided to release b2 under the GPL; the software may have been abandoned, but we weren&#8217;t without options. A fork was always a possibility. That was where it stood in January 2003, when <a href="http://ma.tt/2003/01/the-blogging-software-dilemma/">I posted about forking b2</a> and <a href="http://ma.tt/2003/01/the-blogging-software-dilemma/#comment-445">Mike responded</a>. The rest, as they say, is history.</p>
<p>From the very beginning to the present day, I&#8217;ve been impressed by the thought, care, and dedication that WordPress&#8217; developers have demonstrated. Each one has brought his or her unique perspective, each individual has strengthened the whole. It would be impossible to thank each of them here individually, but their achievements speak for themselves. In WordPress 1.2 the new Plugin API made it easy for developers to extend WordPress. In the same release <code>gettext()</code> internationalization opened WordPress up to every language (hat tip: <a href="http://ryan.boren.me/">Ryan Boren</a> for spending hours wrapping strings with gettext). In WordPress 1.5 our Theme system made it possible for WordPress users to quickly change their site&#8217;s design: there was huge resistance to the theme system from the wider community at the time, but can you imagine WordPress without it? Versions 2.7, 2.8, and 2.9 saw improvements that let users install and update their plugins and themes with one click. WordPress has seen a redesign by <a href="http://v2.happycog.com/create/wordpress/?p=design/wordpress/">happycog</a> (2.3) and gone under extensive user testing and redesign (<a href="http://www.slideshare.net/edanzico/riding-the-crazyhorse-future-generation-wordpress-presentation">Crazyhorse</a>, Liz Danzico and Jen Mylo, WordPress 2.5). In WordPress 3.0 we merged WordPress MU with WordPress &#8212; a huge job but 100% worth it. And in WordPress 3.5 we revamped the media uploader to make it easier for people to get their images, video, and media online.</p>
<p>In sticking to our commitment to user experience, we&#8217;ve done a few things that have made us unpopular. The <a href="http://tech.gaeatimes.com/index.php/archive/wordpress-wysiwyg-editor-is-a-disaster/">WYSIWYG editor</a> was hated by many, especially those who felt that if you have a blog you should know HTML. Some developers hated that we stuck with our code, refusing to rewrite, but it&#8217;s always been the users that matter: better a developer lose sleep than a site break for a user. Our code isn&#8217;t always beautiful, after all, when WordPress was created most of us were still learning PHP, but we try to make a flawless experience for users.</p>
<p>It&#8217;s not all about developers. WordPress&#8217; strength lies in the diversity of its community. From the start, we wanted a low barrier to entry and we came up with our &#8220;famous 5 minute install&#8221;. This brought on board users from varied technical background: people who didn&#8217;t write code wanted to help make WordPress better. If you couldn&#8217;t write code, it didn&#8217;t matter: you could answer a question in the support forums, write documentation, translate WordPress, or build your friends and family a WordPress website. There is <a href="https://make.wordpress.org/">space in the community</a> for anyone with a passion for WordPress.</p>
<p>It&#8217;s been wonderful to see all of the people who have used WordPress to build their home on the internet. Early on <a href="http://wordpress.org/news/2004/04/switchers/">we got excited</a> by <a href="http://wordpress.org/news/2004/04/more-switchers/">switchers</a>. From a community of tinkerers we grew, as writers such as <a href="http://ma.tt/2004/05/om-malik/">Om Malik</a>, <a href="http://dougal.gunters.org/blog/2004/05/15/mark-pilgrim-switches/">Mark Pilgrim</a>, and <a href="http://ma.tt/2004/07/mollycom-switches/">Molly Holzschlag</a> made the switch to WordPress. Our commitment to effortless publishing quickly paid off and has continued to do so: <strong>the WordPress 1.2 release saw 822 downloads per day, our latest release, WordPress 3.5, has seen 145,692 per day.</strong></p>
<p>I&#8217;m continually amazed by what people have built with WordPress. I&#8217;ve seen <a href="http://justintimberlake.com/main/">musicians</a> and <a href="http://ma.tt/2013/01/neil-leifer-on-wordpress/">photographers</a>, magazines such as <a href="http://life.time.com/">Life</a>, <a href="http://boingboing.net/">BoingBoing</a>, and the <a href="http://observer.com/">New York Observer</a>, <a href="http://www.compliance.gov/">government websites</a>, a <a href="http://josephscott.org/archives/2011/05/pressfs-a-wordpress-filesystem/">filesystem</a>, <a href="http://www.ymcanyc.org/association/pages/y-mvp"> mobile applications</a>, and even <a href="http://www.viper007bond.com/2010/06/12/so-apparently-wordpress-can-guide-missiles/">seen WordPress guide missiles</a>.</p>
<p>As the web evolves, WordPress evolves. Factors outside of our control will always influence WordPress&#8217; development: today it&#8217;s mobile devices and retina display, tomorrow it could be Google Glass or technology not yet conceived. A lot can happen in ten years! As technology changes and advances, WordPress has to change with it while remaining true to its core values: making publishing online easy for everyone. How we rise to these challenges will be what defines WordPress over the coming ten years.</p>
<p><strong>To celebrate ten years of WordPress, we&#8217;re working on a book about our history.</strong> We&#8217;re carrying out interviews with people who have involved with the community from the very beginning, those who are still around, and those who have left. It&#8217;s a huge project, but we wanted to have something to share with you on the 10th anniversary. To learn about the very early days of WordPress, just after Mike and I forked b2 <a href="http://wordpress.org/about/history/">you can download Chapter 3 right here</a>. We&#8217;ll be releasing the rest of the book serially, so watch out as the story of the last ten years emerges.</p>
<p>In the meantime, <a href="http://ma.tt/2013/05/dear-wordpress/"> I penned my own letter to WordPress</a> and other community members have been sharing their thoughts:</p>
<ul>
<li><a href="http://zed1.com/journalized/archives/2013/01/25/wordpress-a-10-year-journey/">Mike Little on our Ten Year Journey</a>.</li>
<li>Core contributor Helen Hou-Sandi <a href="http://helen.wordpress.com/2013/05/27/happy-10th-wordpress-and-thanks-from-my-little-family/">wishes WordPress happy birthday</a>.</li>
<li>Peter Westwood on <a href="http://blog.ftwr.co.uk/archives/2013/05/27/a-decade-gone-more-to-come/">a decade gone</a>.</li>
<li>Support rep Mika Epstein <a href="http://ipstenu.org/2013/you-me-and-wp/">on her WordPress journey</a>.</li>
<li>Dougal Campbell <a href="http://dougal.gunters.org/blog/2013/05/27/instagram-my-wife-suzecampbell-and-i-celebrating-the-wordpress-10th-anniversary-with-bbq-in-our-wordpress-shirts-wp10/">celebrating with his wife, Suze</a>.</li>
<li>Otto on <a href="http://ottodestruct.com/blog/2013/how-wp-affected-me/">how WordPress affected him</a>.</li>
</ul>
<p>You can see how WordPress&#8217; 10th Anniversary was celebrated all over the world <a href="http://wp10.wordpress.net/">by visiting the wp10 website</a>, according to Meetup we had 4,999 celebrators.</p>
<p>To finish, I just want to say thank you to everyone: to the developers who write the code, to the designers who make WordPress sing, to the worldwide community translating WordPress into so many languages, to volunteers who answer support questions, to those who make WordPress accessible, to the systems team and the plugin and theme reviewers, to documentation writers, event organisers, evangelists, detractors, supporters and friends. Thanks to the jazzers whose music inspired us and whose names are at the heart of WordPress. Thanks to everyone who uses WordPress to power their blog or website, and to everyone who will in the future. Thanks to WordPress and its community that I&#8217;m proud to be part of.</p>
<p>Thank you. I can&#8217;t wait to see what the next ten years bring.</p>
<p><em>Final thanks to <a href="http://siobhanmckeown.com/">Siobhan McKeown</a> for help with this post.</em></p>
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:54:"http://wordpress.org/news/2013/05/ten-good-years/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:42:"
		
		
		
		
		
				

		
		
				
			
		
		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:22:"The Next 10 Starts Now";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:57:"http://wordpress.org/news/2013/05/the-next-10-starts-now/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:66:"http://wordpress.org/news/2013/05/the-next-10-starts-now/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 27 May 2013 20:47:05 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:9:"Community";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://wordpress.org/news/?p=2594";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:365:"All around the globe today, people are celebrating the 10th anniversary of the first WordPress release, affectionately known as #wp10. Watching the feed of photos, tweets, and posts from Auckland to Zambia is incredible; from first-time bloggers to successful WordPress-based business owners, people are coming out in droves to raise a glass and share the [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:8:"Jen Mylo";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:3901:"<p>All around the globe today, people are celebrating the 10th anniversary of the first WordPress release, affectionately known as #wp10. <a href="http://wp10.wordpress.net">Watching the feed</a> of photos, tweets, and posts from Auckland to Zambia is incredible; from first-time bloggers to successful WordPress-based business owners, people are coming out in droves to raise a glass and share the &#8220;holiday&#8221; with their local communities. With hundreds of parties going on today, it&#8217;s more visible than ever just how popular WordPress has become.</p>
<p><strong>Thank you to everyone who has ever contributed to this project: your labors of love made this day possible.</strong></p>
<p>But today isn&#8217;t just about reflecting on how we got this far (though I thought <a href="http://ma.tt/2013/05/dear-wordpress/">Matt&#8217;s reflection on the first ten years</a> was lovely). We are constantly moving forward. As each release cycle begins and ends (3.6 will be here soon, promise!), we always see an ebb and flow in the contributor pool. Part of ensuring the longevity of WordPress means mentoring new contributors, continually bringing new talent and fresh points of view to our family table.</p>
<p>I am beyond pleased to announce that this summer we will be mentoring 8 interns, most of them new contributors, through <a href="http://www.google-melange.com/gsoc/homepage/google/gsoc2013">Google Summer of Code</a> and the <a href="https://live.gnome.org/OutreachProgramForWomen/2013/JuneSeptember">Gnome Outreach Program for Women</a>. Current contributors, who already volunteer their time working on WordPress, will provide the guidance and oversight for a variety of exciting projects  this summer. Here are the people/projects involved in the summer internships:</p>
<ul>
<li><strong><strong>Ryan McCue</strong>, </strong>from Australia, working on a JSON-based REST API. Mentors will be Bryan Petty and Eric Mann, with a reviewer assist from Andrew Norcross.</li>
<li><strong>Kat Hagan</strong>, from the United States, working on a Post by Email plugin to replace the core function. Mentors will be Justin Shreve and George Stephanis, with an assist from Peter Westwood.</li>
<li><strong>Siobhan Bamber</strong>, from Wales, working on a support (forums, training, documentation) internship. Mentors will be Mika Epstein and Hanni Ross.</li>
<li><strong>Frederick Ding</strong>, from the United States, working on improving portability. Mentors will be Andrew Nacin and Mike Schroder.</li>
<li><strong>Sayak Sakar</strong>, from India, working on porting WordPress for WebOS to Firefox OS. Mentor will be Eric Johnson.</li>
<li><strong>Alex Höreth</strong>, from Germany, working on  adding WordPress native revisions to the theme and plugin code editors. Mentors will be Dominik Schilling and Aaron Campbell, with a reviewer assist from Daniel Bachhuber.</li>
<li><strong>Mert Yazicioglu</strong>, from Turkey, working on ways to improve our community profiles at profiles.wordpress.org. Mentors will be Scott Reilly and Boone Gorges.</li>
<li><strong>Daniele Maio</strong>, from Italy, working on a native WordPress app for Blackberry 10. Mentor will be Danilo Ercoli.</li>
</ul>
<p>Did you notice that our summer cohort is as international as the #wp10 parties going on today? I can only think that this is a good sign.</p>
<p>It&#8217;s always a difficult process to decide which projects to mentor through these programs. There are always more applicants with interesting ideas with whom we&#8217;d like to work than there are opportunities. Luckily, WordPress is a free/libre open source software project, and anyone can begin contributing at any time. Is this the year for you? We&#8217;d love for you to join us as we work toward #wp20. <img src=''http://wordpress.org/news/wp-includes/images/smilies/icon_wink.gif'' alt='';)'' class=''wp-smiley'' /> </p>
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:62:"http://wordpress.org/news/2013/05/the-next-10-starts-now/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:42:"
		
		
		
		
		
				

		
		
				
			
		
		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:20:"WordPress 3.6 Beta 3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"http://wordpress.org/news/2013/05/wordpress-3-6-beta-3/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:64:"http://wordpress.org/news/2013/05/wordpress-3-6-beta-3/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 11 May 2013 03:44:41 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:11:"Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://wordpress.org/news/?p=2584";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:374:"WordPress 3.6 Beta 3 is now available! This is software still in development and we really don’t recommend that you run it on a production site — set up a test site just to play with the new version. To test WordPress 3.6, try the WordPress Beta Tester plugin (you’ll want “bleeding edge nightlies”). Or you can download the beta here (zip). Beta [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Mark Jaquith";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2452:"<p>WordPress 3.6 Beta 3 is now available!</p>
<p>This is software still in development and <strong>we <em>really</em> don’t recommend that you run it on a production site</strong> — set up a test site just to play with the new version. To test WordPress 3.6, try the <a href="http://wordpress.org/extend/plugins/wordpress-beta-tester/">WordPress Beta Tester</a> plugin (you’ll want “bleeding edge nightlies”). Or you can <a href="http://wordpress.org/wordpress-3.6-beta3.zip">download the beta here</a> (zip).</p>
<p>Beta 3 contains about a hundred changes, including improvements to the image Post Format flow (yay, drag-and-drop image upload!), a more polished revision comparison screen, and a more quote-like quote format for Twenty Thirteen.</p>
<p>As a bonus, we now have oEmbed support for the popular music-streaming services <a href="http://www.rdio.com/">Rdio</a> and <a href="http://www.spotify.com/">Spotify</a> (the latter of which kindly created an oEmbed endpoint a mere 24 hours after we lamented their lack of one). Here&#8217;s an album that&#8217;s been getting a lot of play as I&#8217;ve been working on WordPress 3.6:</p>
<p><iframe width="500" height="250" src="https://rd.io/i/Qj5r8SE//?source=oembed" frameborder="0"></iframe></p>
<p><iframe src="https://embed.spotify.com/?uri=spotify:album:6dJZDZMNdBPZrJcNv57bEq" width="300" height="380" frameborder="0" allowtransparency="true"></iframe></p>
<p>Plugin developers, theme developers, and WordPress hosts should be testing beta 3 extensively. The more you test the beta, the more stable our release candidates and our final release will be.</p>
<p>As always, if you think you’ve found a bug, you can post to the <a href="http://wordpress.org/support/forum/alphabeta">Alpha/Beta area</a> in the support forums. Or, if you’re comfortable writing a reproducible bug report, <a href="http://core.trac.wordpress.org/">file one on the WordPress Trac</a>. There, you can also find <a href="http://core.trac.wordpress.org/report/5">a list of known bugs</a> and <a href="http://core.trac.wordpress.org/query?status=closed&amp;group=component&amp;milestone=3.6">everything we&#8217;ve fixed</a> so far.</p>
<p>We&#8217;re looking forward to your feedback. If you find a bug, please report it, and if you’re a developer, try to help us fix it. We&#8217;ve already had more than 150 contributors to version 3.6 — it&#8217;s not too late to join in!</p>
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:60:"http://wordpress.org/news/2013/05/wordpress-3-6-beta-3/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:42:"
		
		
		
		
		
				

		
		
				
			
		
		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:20:"WordPress 3.6 Beta 2";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"http://wordpress.org/news/2013/04/wordpress-3-6-beta-2/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:64:"http://wordpress.org/news/2013/04/wordpress-3-6-beta-2/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 29 Apr 2013 22:48:55 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:11:"Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://wordpress.org/news/?p=2579";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:373:"WordPress 3.6 Beta 2 is now available! This is software still in development and we really don’t recommend that you run it on a production site — set up a test site just to play with the new version. To test WordPress 3.6, try the WordPress Beta Tester plugin (you’ll want “bleeding edge nightlies”). Or you can download the beta here (zip). The [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Mark Jaquith";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2057:"<p>WordPress 3.6 Beta 2 is now available!</p>
<p>This is software still in development and <strong>we <em>really</em> don’t recommend that you run it on a production site</strong> — set up a test site just to play with the new version. To test WordPress 3.6, try the <a href="http://wordpress.org/extend/plugins/wordpress-beta-tester/">WordPress Beta Tester</a> plugin (you’ll want “bleeding edge nightlies”). Or you can <a href="http://wordpress.org/wordpress-3.6-beta2.zip">download the beta here</a> (zip).</p>
<p>The longer-than-usual delay between beta 1 and beta 2 was due to poor user testing results with the Post Formats UI. Beta 2 contains a modified approach for format choosing and switching, which has done well in user testing. We&#8217;ve also made the Post Formats UI hide-able via Screen Options, and set a reasonable default based on what your theme supports.</p>
<p>There were a lot of bug fixes and polishing tweaks done for beta 2 as well, so definitely check it out if you had an issues with beta 1.</p>
<p>Plugin developers, theme developers, and WordPress hosts should be testing beta 2 extensively. The more you test the beta, the more stable our release candidates and our final release will be.</p>
<p>As always, if you think you’ve found a bug, you can post to the <a href="http://wordpress.org/support/forum/alphabeta">Alpha/Beta area</a> in the support forums. Or, if you’re comfortable writing a reproducible bug report, <a href="http://core.trac.wordpress.org/">file one on the WordPress Trac</a>. There, you can also find <a href="http://core.trac.wordpress.org/report/5">a list of known bugs</a> and <a href="http://core.trac.wordpress.org/query?status=closed&amp;group=component&amp;milestone=3.6">everything we&#8217;ve fixed</a> so far.</p>
<p>We&#8217;re looking forward to your feedback. If you find a bug, please report it, and if you’re a developer, try to help us fix it. We&#8217;ve already had more than 150 contributors to version 3.6 — it&#8217;s not too late to join in!</p>
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:60:"http://wordpress.org/news/2013/04/wordpress-3-6-beta-2/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:45:"
		
		
		
		
		
				
		

		
		
				
			
		
		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:42:"Summer Mentorship Programs: GSoC and Gnome";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:76:"http://wordpress.org/news/2013/04/summer-mentorship-programs-gsoc-and-gnome/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:85:"http://wordpress.org/news/2013/04/summer-mentorship-programs-gsoc-and-gnome/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 25 Apr 2013 03:18:41 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:9:"Community";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:11:"Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://wordpress.org/news/?p=2573";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:358:"As an open source, free software project, WordPress depends on the contributions of hundreds of people from around the globe &#8212; contributions in areas like core code, documentation, answering questions in the support forums, translation, and all the other things it takes to make WordPress the best publishing platform it can be, with the most [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:8:"Jen Mylo";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:5071:"<p>As an open source, free software project, WordPress depends on the contributions of hundreds of people from around the globe &#8212; contributions in areas like core code, documentation, answering questions in the support forums, translation, and all the other things it takes to make WordPress the best publishing platform it can be, with the most supportive community. This year, we&#8217;re happy to be participating as a mentoring organization with two respected summer internship programs: <a href="http://www.google-melange.com/gsoc/homepage/google/gsoc2013">Google Summer of Code (GSoC)</a> and the Gnome Outreach Program for Women.</p>
<h3>Google Summer of Code</h3>
<p>GSoC is a summer internship program funded by Google specifically for college/university student developers to work on open source coding projects. We have participated in the Google Summer of Code program in the past, and have enjoyed the opportunity to work with students in this way. Some of our best core developers were GSoC students once upon a time!</p>
<p><a href="http://codex.wordpress.org/GSoC2013#Mentors">Our mentors</a>, almost 30 talented developers with experience developing WordPress, will provide students with guidance and feedback over the course of the summer, culminating in the release of finished projects at the end of the program if all goes well.</p>
<p>Students who successfully complete the program earn $5,000 for their summer efforts. Interested, or know a college student (newly accepted to college counts, too) who should be? All the information you need about our participation in the program, projects, mentors, and the application process is available on the <a href="http://codex.wordpress.org/GSoC2013">GSoC 2013 page in the Codex</a>.</p>
<h3>Gnome Outreach Program for Women</h3>
<p>It&#8217;s not news that women form a low percentage of contributors in most open source projects, and WordPress is no different. We have great women in the contributor community, including some in fairly visible roles, but we still have a lot of work to do to get a representative gender balance on par with our user base.</p>
<p>The Gnome Outreach Program for Women aims to provide opportunities for women to participate in open source projects, and offers a similar stipend, but there are three key differences between GSoC and Gnome aside from the gender requirement for Gnome.</p>
<ol>
<li><span style="font-size: 13px;line-height: 19px">The Gnome program allows intern projects in many areas of contribution, not just code. In other words, interns can propose projects like documentation, community management, design, translation, or pretty much any area in which we have people contributing (including code).</span></li>
<li><span style="font-size: 13px;line-height: 19px">The Gnome Outreach Program for Women doesn&#8217;t require interns to be college students, though students are definitely welcome to participate. This means that women in all stages of life and career can take the opportunity to try working with open source communities for the summer.</span></li>
<li><span style="font-size: 13px;line-height: 19px">We have to help raise the money to pay the interns. Google funds GSoC on its own, and we only have to provide our mentors&#8217; time. Gnome doesn&#8217;t have the same funding, so we need to pitch in to raise the money to cover our interns. If your company is interested in helping with this, please check out the program&#8217;s </span><a style="font-size: 13px;line-height: 19px" href="https://live.gnome.org/OutreachProgramForWomen#For_Organizations_and_Companies">sponsorship information</a><span style="font-size: 13px;line-height: 19px"> and follow the contact instructions to get involved. You can earmark donations to support WordPress interns, or to support the program in general. (Pick us, pick us! <img src=''http://wordpress.org/news/wp-includes/images/smilies/icon_smile.gif'' alt='':)'' class=''wp-smiley'' />  )</span></li>
</ol>
<p>The summer installment of the Gnome Outreach Program for Women follows the same schedule and general application format as GSoC, though there are more potential projects since it covers more areas of contribution. Women college students interested in doing a coding project are encouraged to apply for both programs to increase the odds of acceptance. All the information you need about our participation in the program, projects, mentors, and the application process is available on the <a href="http://codex.wordpress.org/Gnome_Summer_Program_for_Women">Gnome Outreach Program for Women page in the Codex</a>.</p>
<p>The application period just started, and it lasts another week (May 1 for Gnome, May 3 for GSoC), so if you think you qualify and are interested in getting involved, check out the information pages, get in touch, and apply… Good luck!</p>
<p><a href="http://codex.wordpress.org/GSoC2013">Google Summer of Code 2013 Information</a><br />
<a href="http://codex.wordpress.org/Gnome_Summer_Program_for_Women">Gnome Summer Outreach Program for Women 2013 Information</a></p>
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:81:"http://wordpress.org/news/2013/04/summer-mentorship-programs-gsoc-and-gnome/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"href";s:31:"http://wordpress.org/news/feed/";s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:44:"http://purl.org/rss/1.0/modules/syndication/";a:2:{s:12:"updatePeriod";a:1:{i:0;a:5:{s:4:"data";s:6:"hourly";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:15:"updateFrequency";a:1:{i:0;a:5:{s:4:"data";s:1:"1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";a:8:{s:6:"server";s:5:"nginx";s:4:"date";s:29:"Tue, 03 Sep 2013 18:25:30 GMT";s:12:"content-type";s:23:"text/xml; charset=UTF-8";s:10:"connection";s:5:"close";s:4:"vary";s:15:"Accept-Encoding";s:10:"x-pingback";s:36:"http://wordpress.org/news/xmlrpc.php";s:13:"last-modified";s:29:"Thu, 01 Aug 2013 21:49:34 GMT";s:4:"x-nc";s:11:"HIT lax 250";}s:5:"build";s:14:"20111015034325";}', 'no'),
('1737', '_transient_timeout_feed_867bd5c64f85878d03a060509cd2f92c', '1378275932', 'no'),
('1738', '_transient_feed_867bd5c64f85878d03a060509cd2f92c', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"


";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:61:"
	
	
	
	




















































";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"WordPress Planet";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:28:"http://planet.wordpress.org/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:2:"en";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:47:"WordPress Planet - http://planet.wordpress.org/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:50:{i:0;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:37:"WPTavern: Edit Flow, Jetpack, And MP6";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"http://www.wptavern.com/?p=8769";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:87:"http://feedproxy.google.com/~r/WordpressTavern/~3/pOEZyGzfIso/edit-flow-jetpack-and-mp6";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3344:"<p>The following plugins have either been recently updated or have an update pending. I use all three and know a bunch of other people who use them as well. Jetpack 2.4 in combination with Photon is causing problems on certain websites where images are showing at their full size instead of their specified dimensions. Meanwhile, Edit Flow has been acting up for me since upgrading to WordPress 3.6. I just wanted to share my findings on each plugin thus far. <span id="more-8769"></span></p>
<p><strong>Edit Flow</strong> &#8211; After upgrading to WordPress 3.6, I discovered that I could not preview posts using the custom post status of Pitch. This took me forever to diagnose and figure out but it has something to do with the plugin not generating a revision which is shown as the post preview when the preview button is selected. I have demonstrated this bug to the developers at Automattic who are in control of this plugin and they are currently developing a fix. If you experience this problem with Edit Flow, I suggest you set your <em>Default</em> post status to Draft since the Draft post status works as expected. </p>
<p><strong>Jetpack 2.4</strong> &#8211; While 2.4 introduced the awesome <a href="http://www.wptavern.com/jetpack-2-4-adds-widget-visibility-module" title="http://www.wptavern.com/jetpack-2-4-adds-widget-visibility-module">Widget Visibility module</a>, it unfortunately caused images on websites to be displayed at their full size which has been determined to be an issue with Photo as outlined in <a href="http://wordpress.org/support/topic/jetpack-update-messes-up-photos?replies=17" title="http://wordpress.org/support/topic/jetpack-update-messes-up-photos?replies=17">this support thread</a>. If you&#8217;re experiencing the same issue after upgrading Jetpack to 2.4, you&#8217;re encouraged to disable Photon until an update is pushed out. </p>
<p><a href="http://i1.wp.com/www.wptavern.com/wp-content/uploads/2013/09/GearIcon.jpg" rel="thumbnail"><img src="http://i0.wp.com/www.wptavern.com/wp-content/uploads/2013/09/GearIcon.jpg?resize=145%2C150" alt="Gear Icons" class="alignright size-thumbnail wp-image-8770" /></a><strong>MP6 2.0</strong> MP6 2.0 was recently released and I&#8217;ve noticed a number of icons disappear from my menu which have been replaced with default Gear icons. I initially reported this as a bug on the <a href="http://wordpress.org/support/topic/mp6-20-replaced-menu-icons-with-gear-icon?replies=1" title="http://wordpress.org/support/topic/mp6-20-replaced-menu-icons-with-gear-icon?replies=1">support forums</a> but after reading the <a href="http://make.wordpress.org/ui/2013/08/31/mp6-2-0/" title="http://make.wordpress.org/ui/2013/08/31/mp6-2-0/">announcement post</a>, I see this is expected behaviour. Theme and plugin developers are encouraged to generate new menu icons that are compatible with MP6. Utilizing <a href="http://halfelf.org/2013/mp6uccess-tips-and-tricks/" title="http://halfelf.org/2013/mp6uccess-tips-and-tricks/">Mika Epstein&#8217;s post</a> as well as the <a href="https://github.com/tillkruess/MP6-Icon-Examples" title="https://github.com/tillkruess/MP6-Icon-Examples">MP6 icon examples</a> within the Git repository should provide a head start. </p>
<img src="http://feeds.feedburner.com/~r/WordpressTavern/~4/pOEZyGzfIso" height="1" width="1" />";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 03 Sep 2013 14:03:55 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:6:"Jeffro";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:84:"WordPress.tv: Lindsay Branscombe: Navigating the Forest of E-commerce: A Guided Tour";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wordpress.tv/?p=21720";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:100:"http://wordpress.tv/2013/09/03/lindsay-branscombe-navigating-the-forest-of-e-commerce-a-guided-tour/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:733:"<div id="v-erZZhSL0-1" class="video-player">
</div>
<br />  <a rel="nofollow" href="http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/21720/"><img alt="" border="0" src="http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/21720/" /></a> <img alt="" border="0" src="http://stats.wordpress.com/b.gif?host=wordpress.tv&blog=5089392&post=21720&subd=wptv&ref=&feed=1" width="1" height="1" /><div><a href="http://wordpress.tv/2013/09/03/lindsay-branscombe-navigating-the-forest-of-e-commerce-a-guided-tour/"><img alt="Lindsay Branscombe: Navigating the Forest of E-commerce: A Guided Tour" src="http://videos.videopress.com/erZZhSL0/e-commerce-navigating-the-forest_std.original.jpg" width="160" height="120" /></a></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 03 Sep 2013 10:47:32 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"WordPress.tv";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:76:"WordPress.tv: Sam Hotchkiss: WordPress Security: Preventing a Lot of Attacks";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wordpress.tv/?p=21722";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:91:"http://wordpress.tv/2013/09/03/sam-hotchkiss-wordpress-security-preventing-alot-of-attacks/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:723:"<div id="v-KFu6q2DD-1" class="video-player">
</div>
<br />  <a rel="nofollow" href="http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/21722/"><img alt="" border="0" src="http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/21722/" /></a> <img alt="" border="0" src="http://stats.wordpress.com/b.gif?host=wordpress.tv&blog=5089392&post=21722&subd=wptv&ref=&feed=1" width="1" height="1" /><div><a href="http://wordpress.tv/2013/09/03/sam-hotchkiss-wordpress-security-preventing-alot-of-attacks/"><img alt="Sam Hotchkiss: WordPress Security: Preventing a Lot of Attacks" src="http://videos.videopress.com/KFu6q2DD/wp-security-preventing-a-lot-of-attacks_std.original.jpg" width="160" height="120" /></a></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 03 Sep 2013 10:45:53 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"WordPress.tv";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:69:"Joseph: Mike Adams on Three Security Issues You Thought You’d Fixed";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"https://josephscott.org/?p=8826";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:100:"https://josephscott.org/archives/2013/09/mike-adams-on-three-security-issues-you-thought-youd-fixed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:625:"<p>Mike Adams spoke about <a href="http://wordpress.tv/2013/08/09/mike-adams-three-security-issues-you-thought-youd-fixed/">Three Security Issues You Thought You&#8217;d Fixed</a> at <a href="http://2013.sf.wordcamp.org/">WordCamp San Francisco 2013</a>.  Although this was at a WordPress event, the security issues he talks about apply more broadly to PHP and web sites in general.</p>
<p></p>
<p>I work with Mike at Automattic and we are <a href="http://automattic.com/work-with-us/">hiring</a>.  If you enjoy bunny puns you should check out our list of <a href="http://automattic.com/work-with-us/">open positions</a>.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 02 Sep 2013 17:44:37 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Joseph Scott";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:58:"WordPress.tv: Steph Yiu: VIP Tools for Writers and Editors";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wordpress.tv/?p=21714";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:75:"http://wordpress.tv/2013/09/02/steph-yiu-vip-tools-for-writers-and-editors/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:673:"<div id="v-9O8YRv5j-1" class="video-player">
</div>
<br />  <a rel="nofollow" href="http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/21714/"><img alt="" border="0" src="http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/21714/" /></a> <img alt="" border="0" src="http://stats.wordpress.com/b.gif?host=wordpress.tv&blog=5089392&post=21714&subd=wptv&ref=&feed=1" width="1" height="1" /><div><a href="http://wordpress.tv/2013/09/02/steph-yiu-vip-tools-for-writers-and-editors/"><img alt="Steph Yiu: VIP Tools for Writers and Editors" src="http://videos.videopress.com/9O8YRv5j/borrowing-from-the-vips_std.original.jpg" width="160" height="120" /></a></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 02 Sep 2013 10:50:41 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"WordPress.tv";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:71:"WordPress.tv: Jon Desrosiers: Plugin Development – Stirred not Shaken";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wordpress.tv/?p=21718";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:65:"http://wordpress.tv/2013/09/02/jon-desrosiers-plugin-development/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:671:"<div id="v-wDymnUvQ-1" class="video-player">
</div>
<br />  <a rel="nofollow" href="http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/21718/"><img alt="" border="0" src="http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/21718/" /></a> <img alt="" border="0" src="http://stats.wordpress.com/b.gif?host=wordpress.tv&blog=5089392&post=21718&subd=wptv&ref=&feed=1" width="1" height="1" /><div><a href="http://wordpress.tv/2013/09/02/jon-desrosiers-plugin-development/"><img alt="Jon Desrosiers: Plugin Development – Stirred not Shaken" src="http://videos.videopress.com/wDymnUvQ/plugin-development_std.original.jpg" width="160" height="120" /></a></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 02 Sep 2013 10:48:42 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"WordPress.tv";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:72:"WordPress.tv: Jared Novack: How We Built 17,170,200 Websites in 6 Months";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wordpress.tv/?p=21947";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:89:"http://wordpress.tv/2013/09/01/jared-novack-how-we-built-17170200-websites-in-6-months-2/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:650:"<div id="v-if2QpA7c-1" class="video-player">
</div>
<br />  <a rel="nofollow" href="http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/21947/"><img alt="" border="0" src="http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/21947/" /></a> <img alt="" border="0" src="http://stats.wordpress.com/b.gif?host=wordpress.tv&blog=5089392&post=21947&subd=wptv&ref=&feed=1" width="1" height="1" /><div><a href="http://wordpress.tv/2013/09/01/jared-novack-how-we-built-17170200-websites-in-6-months-2/"><img alt="jarednovak.mp4" src="http://videos.videopress.com/if2QpA7c/video-36d6b8ba58_std.original.jpg" width="160" height="120" /></a></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 01 Sep 2013 13:57:31 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"WordPress.tv";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:97:"WordPress.tv: Matthew Boynes: Rewrite Recipes: Exploring Advanced Permalink Structures by Example";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wordpress.tv/?p=21704";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:113:"http://wordpress.tv/2013/09/01/matthew-boynes-rewrite-recipes-exploring-advanced-permalink-structures-by-example/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:767:"<div id="v-mg6WDwhx-1" class="video-player">
</div>
<br />  <a rel="nofollow" href="http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/21704/"><img alt="" border="0" src="http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/21704/" /></a> <img alt="" border="0" src="http://stats.wordpress.com/b.gif?host=wordpress.tv&blog=5089392&post=21704&subd=wptv&ref=&feed=1" width="1" height="1" /><div><a href="http://wordpress.tv/2013/09/01/matthew-boynes-rewrite-recipes-exploring-advanced-permalink-structures-by-example/"><img alt="Matthew Boynes: Rewrite Recipes: Exploring Advanced Permalink Structures by Example" src="http://videos.videopress.com/mg6WDwhx/rewrite-recipes-exploring-adv-structures_std.original.jpg" width="160" height="120" /></a></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 01 Sep 2013 10:57:43 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"WordPress.tv";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:57:"WordPress.tv: Christopher Cochran: Designing Responsively";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wordpress.tv/?p=21710";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:74:"http://wordpress.tv/2013/08/31/christopher-cochran-designing-responsively/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:670:"<div id="v-ulrtukcz-1" class="video-player">
</div>
<br />  <a rel="nofollow" href="http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/21710/"><img alt="" border="0" src="http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/21710/" /></a> <img alt="" border="0" src="http://stats.wordpress.com/b.gif?host=wordpress.tv&blog=5089392&post=21710&subd=wptv&ref=&feed=1" width="1" height="1" /><div><a href="http://wordpress.tv/2013/08/31/christopher-cochran-designing-responsively/"><img alt="Christopher Cochran: Designing Responsively" src="http://videos.videopress.com/ulrtukcz/designing-responsively_std.original.jpg" width="160" height="120" /></a></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 31 Aug 2013 11:43:10 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"WordPress.tv";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:84:"WordPress.tv: Richard Dinh: Leveraging the JSON API Plugin for WordPress Maintenance";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wordpress.tv/?p=21696";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:101:"http://wordpress.tv/2013/08/31/richard-dinh-leveraging-the-json-api-plugin-for-wordpress-maintenance/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:752:"<div id="v-0au50u2y-1" class="video-player">
</div>
<br />  <a rel="nofollow" href="http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/21696/"><img alt="" border="0" src="http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/21696/" /></a> <img alt="" border="0" src="http://stats.wordpress.com/b.gif?host=wordpress.tv&blog=5089392&post=21696&subd=wptv&ref=&feed=1" width="1" height="1" /><div><a href="http://wordpress.tv/2013/08/31/richard-dinh-leveraging-the-json-api-plugin-for-wordpress-maintenance/"><img alt="Richard Dinh: Leveraging the JSON API Plugin for WordPress Maintenance" src="http://videos.videopress.com/0au50u2y/leveraging-the-json-api-pluging-for-wp-maintenance_std.original.jpg" width="160" height="120" /></a></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 31 Aug 2013 11:00:54 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"WordPress.tv";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:10;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:51:"WPTavern: Jetpack 2.4 Adds Widget Visibility Module";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"http://www.wptavern.com/?p=8754";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:103:"http://feedproxy.google.com/~r/WordpressTavern/~3/YEL7zT0yzf0/jetpack-2-4-adds-widget-visibility-module";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3888:"<p>If you use the <a href="http://wordpress.org/plugins/jetpack/" title="http://wordpress.org/plugins/jetpack/">Jetpack plugin by Automattic</a>, you&#8217;ll notice there is an update to version 2.4 available. The <a href="http://wordpress.org/plugins/jetpack/changelog/" title="http://wordpress.org/plugins/jetpack/changelog/">changelog</a> for Jetpack is usually a mile long but in this case, I was happy to see that the Widget Visibility module was added to Jetpack. Widget Visibility was made available to WordPress.com <a href="http://www.wptavern.com/widget-visibility-when-do-we-get-that" title="http://www.wptavern.com/widget-visibility-when-do-we-get-that">earlier this year</a>. <span id="more-8754"></span></p>
<div id="attachment_7009" class="wp-caption aligncenter"><a href="http://i2.wp.com/www.wptavern.com/wp-content/uploads/2013/05/WidgetVisibility.jpg" rel="thumbnail"><img src="http://i2.wp.com/www.wptavern.com/wp-content/uploads/2013/05/WidgetVisibility.jpg?resize=399%2C189" alt="Widget Visibility" class="size-full wp-image-7009" /></a><p class="wp-caption-text">Now Available In Jetpack</p></div>
<p>As I mentioned in my initial post discussing the feature, the interface is surprisingly simple to use. In 2011, <a href="http://www.wptavern.com/feedback-needed-for-new-widget-context-user-interface" title="http://www.wptavern.com/feedback-needed-for-new-widget-context-user-interface">I shared my thoughts</a> on what I think would work for a widget control interface.</p>
<blockquote><p>
I’m thinking of a plugin that’s a cross between Widget Logic and Widget Context. This plugin should work on the premise that anytime a widget is added to a sidebar, it’s viewable across the entire site where that sidebar loads. UI is added to the widget screen so that I can easily search or choose from the various template files that make up my theme to decide where the widget will be displayed. By specifically configuring where the widget will be displayed, I’ve also configured where it will not be displayed. I’m not quite sure which user interface would work best for selecting more than one area where the widgets will be displayed, perhaps the check box method that already exists in Widget Context. This is about all I’d need to satisfy my needs. It’s simple, not many options and I think covers the basis for a lot of uses. Now, if Kaspars or users suggested that they wanted rules, or more complex ways of telling their widgets where to show up or hide, I would not complain about having an Advanced tab that showed additional options. But I definitely don’t want that clutter in view as part of the default configuration UI.</p></blockquote>
<p>What I requested in 2011 is not far from what Widget Visibility offers. Instead of choosing template files within a theme, I can choose between <strong>category, author, tag, date, page</strong> which are theme agnostic and cover the gamut of options I&#8217;d need to hide or show a widget. I&#8217;m glad they didn&#8217;t listen to me when I described the interface. I only wish something this simple would have been added to WordPress a long time ago. What something like Widget Visibility offers is an easy way to make one sidebar serve multiple purposes without needing to create separate sidebars with specific widgets. This opens up a lot more versatility for displaying widgets. While I&#8217;m still excited to see this piece of functionality accessible to a large audience through Jetpack, I can&#8217;t help but think about how much more exciting it would have been to see this as an added feature back in the WordPress 3.0 days. </p>
<p>Now I can retire the Widget Logic plugin which required me to know WordPress conditional tags in order to control when and where widgets displayed.</p>
<img src="http://feeds.feedburner.com/~r/WordpressTavern/~4/YEL7zT0yzf0" height="1" width="1" />";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 30 Aug 2013 17:47:34 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:6:"Jeffro";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:11;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:53:"WordPress.tv: Frederick Townes: Business Optimization";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wordpress.tv/?p=21611";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:70:"http://wordpress.tv/2013/08/30/frederick-townes-business-optimization/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:674:"<div id="v-EICJD1L0-1" class="video-player">
</div>
<br />  <a rel="nofollow" href="http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/21611/"><img alt="" border="0" src="http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/21611/" /></a> <img alt="" border="0" src="http://stats.wordpress.com/b.gif?host=wordpress.tv&blog=5089392&post=21611&subd=wptv&ref=&feed=1" width="1" height="1" /><div><a href="http://wordpress.tv/2013/08/30/frederick-townes-business-optimization/"><img alt="Frederick Townes: Business Optimizationation" src="http://videos.videopress.com/EICJD1L0/keynote-business-optimization_std.original.jpg" width="160" height="120" /></a></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 30 Aug 2013 11:07:35 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"WordPress.tv";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:12;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:86:"WordPress.tv: Mel Choyce: What’s Your Problem, Man? Building a Successful UX Process";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wordpress.tv/?p=21702";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:98:"http://wordpress.tv/2013/08/30/mel-choyce-whats-your-problem-man-building-a-successful-ux-process/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:733:"<div id="v-0fZ1CjJ1-1" class="video-player">
</div>
<br />  <a rel="nofollow" href="http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/21702/"><img alt="" border="0" src="http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/21702/" /></a> <img alt="" border="0" src="http://stats.wordpress.com/b.gif?host=wordpress.tv&blog=5089392&post=21702&subd=wptv&ref=&feed=1" width="1" height="1" /><div><a href="http://wordpress.tv/2013/08/30/mel-choyce-whats-your-problem-man-building-a-successful-ux-process/"><img alt="Mel Choyce: What’s Your Problem, Man? Building a Successful UX Process" src="http://videos.videopress.com/0fZ1CjJ1/building-a-successful-ux-process_std.original.jpg" width="160" height="120" /></a></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 30 Aug 2013 10:58:57 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"WordPress.tv";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:13;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:53:"WPTavern: Automatic Updates Possible In WordPress 3.7";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"http://www.wptavern.com/?p=8748";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:105:"http://feedproxy.google.com/~r/WordpressTavern/~3/oqbc1vm7NYc/automatic-updates-possible-in-wordpress-3-7";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:4243:"<p><a href="http://i1.wp.com/www.wptavern.com/wp-content/uploads/2009/02/wordpresslogo.png" rel="thumbnail"><img src="http://i2.wp.com/www.wptavern.com/wp-content/uploads/2009/02/wordpresslogo.png?resize=150%2C150" alt="wordpresslogo" class="alignright size-thumbnail wp-image-422" /></a>As was stated by Matt Mullenweg in his <a href="http://wordpress.tv/2013/07/29/matt-mullenweg-state-of-the-word-2013/" title="http://wordpress.tv/2013/07/29/matt-mullenweg-state-of-the-word-2013/">State Of The Word 2013 at WordCamp San Francisco</a>, one of the goals for WordPress was to perform automatic updates similar to the Chrome browser. That is, perform automatic updates without breaking anything to the point where you don&#8217;t even know the software has updated. On the Make WordPress Core blog, <a href="http://make.wordpress.org/core/2013/08/28/core-updates-in-3-7/" title="http://make.wordpress.org/core/2013/08/28/core-updates-in-3-7/">we find out</a> how this will possibly become a reality with WordPress 3.7. A plugin created by Pento called <a href="http://wordpress.org/plugins/automatic-updater/" title="http://wordpress.org/plugins/automatic-updater/">Automatic Updater</a> will be used as the framework to provide this functionality. The first step is for the automation of minor releases. For example 3.7 to 3.7.1 would happen automatically. Andrew Nacin outlines a number of tickets that need to be addressed surrounding this functionality. <span id="more-8748"></span></p>
<p>One of the first comments on that blog post is from Joshua Strebel, CEO of <a href="http://page.ly" title="http://page.ly">Page.ly</a> which is a large managed WordPress hosting service.</p>
<blockquote><p>Please consider an opt-out constant/mechanism simply for those of us that run multi-tenancy and manage the entire core package from the top down.</p></blockquote>
<p>Andrew followed up by noting there will be a mechanism to opt out which will not be accessible from the user interface. Instead, it will most likely be a filter or a constant to not only opt-out of upgrades, but also to enable upgrading to major releases as well in case you wanted full-blown automation. However, they are looking for more feedback from hosting companies and are encouraging them to follow the development of this feature. </p>
<p>Back around September of 2011, I asked whether <a href="http://www.wptavern.com/should-automatic-upgrades-be-opt-in" title="http://www.wptavern.com/should-automatic-upgrades-be-opt-in">Automatic upgrades for WordPress should be opt-in</a>? Out of 210 votes, 67% or 141 said yes while 69 voted no. At the time, I felt like WordPress wanted to hold my hand too much when it came to managing my install. However, I am completely fine with automatic upgrades to minor releases leaving me to upgrade to major versions when I feel comfortable doing so. The <a href="http://www.wptavern.com/should-automatic-upgrades-be-opt-in#comments" title="http://www.wptavern.com/should-automatic-upgrades-be-opt-in#comments">conversation in the comments</a> following the poll are worth a read, even if the conversation was two years ago. It would be interesting to hear from those who participated in that conversation to see if their views have changed, especially since we now know that the default upgrade functionality will be for minor releases. </p>
<blockquote><p>I’m just thinking you might want to consider more than the most obvious point of view about upgrades. When was the last time you upgraded Chrome? Did you know it upgraded itself, about twice a week? Did you notice? Did you care? That’s the kind of thing I think we should shoot for. You shouldn’t notice upgrades, they should just happen. And not fail, of course. &#8211; <a href="http://www.wptavern.com/should-automatic-upgrades-be-opt-in#comment-12763" title="http://www.wptavern.com/should-automatic-upgrades-be-opt-in#comment-12763">Otto</a></p></blockquote>
<p>Hmm, Otto mentioned the way Chrome upgrades in 2011, Matt talks about it as the model for WordPress in 2013 and that&#8217;s the way we&#8217;re headed. Perhaps Otto has a future telling crystal skull?</p>
<img src="http://feeds.feedburner.com/~r/WordpressTavern/~4/oqbc1vm7NYc" height="1" width="1" />";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 30 Aug 2013 05:58:42 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:6:"Jeffro";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:14;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:58:"WPTavern: WordPress Weekly iTunes Subscription Information";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"http://www.wptavern.com/?p=8741";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:110:"http://feedproxy.google.com/~r/WordpressTavern/~3/WUn7j6tszac/wordpress-weekly-itunes-subscription-information";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2024:"<p>Since the creation of WordPress Weekly back in 2008, I&#8217;ve used <a href="http://www.talkshoe.com/tc/34224" title="http://www.talkshoe.com/tc/34224">Talkshoe.com</a> to record the show in front of a live audience. Over the years, a number of people have subscribed to the iTunes feed provided by Talkshoe. Starting this week, I will no longer be using the Talkshoe iTunes feed but rather, my own. I encourage you to subscribe to the new <a href="https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738" title="https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738">WordPress Weekly iTunes subscription link</a> as all new episodes will be published through it. This frees me from having to be attached to a service to use an iTunes link and as long as iTunes doesn&#8217;t shut down, this should be the last time you&#8217;ll have to change subscription links.</p>
<p>Alternatively, if you want to subscribe to the show via RSS feed, you can do so through the following URL <a href="http://www.wptavern.com/feed/podcast" title="http://www.wptavern.com/feed/podcast">http://www.wptavern.com/feed/podcast </a></p>
<p>As a bonus, check out the brand new piece of Podcast cover art for the show created by Becky Crockett of <a href="http://www.podcastdesigns.com" title="http://www.podcastdesigns.com">PodcastDesigns.com</a>. Be warned, the full size image is 1400 X 1400. Becky was a treat to work with and was recommended to me via <a href="http://www.wptavern.com/author/mcouch" title="http://www.wptavern.com/author/mcouch">Marcus Couch</a>. </p>
<p><a href="http://i1.wp.com/www.wptavern.com/wp-content/uploads/2013/08/WordPressWeekly_albumart2.jpg" rel="thumbnail"><img src="http://i1.wp.com/www.wptavern.com/wp-content/uploads/2013/08/WordPressWeekly_albumart2.jpg?resize=500%2C500" alt="WordPress Weekly Cover Art" class="aligncenter size-large wp-image-8715" /></a></p>
<p>What do you think?</p>
<img src="http://feeds.feedburner.com/~r/WordpressTavern/~4/WUn7j6tszac" height="1" width="1" />";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 29 Aug 2013 18:57:15 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:6:"Jeffro";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:15;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:45:"Joseph: WordPress UI Ideas From Shaun Andrews";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"https://josephscott.org/?p=9014";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:79:"https://josephscott.org/archives/2013/08/wordpress-ui-ideas-from-shaun-andrews/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:712:"<p><a href="http://www.shaunandrews.com/">Shaun Andrews</a> has been working on user interface ideas for WordPress.  One of my favorites so far has been about <a href="http://www.shaunandrews.com/wordpress/browsing-themes-in-wordpress/">browsing themes</a>.</p>
<p><a href="http://www.shaunandrews.com/wordpress/browsing-themes-in-wordpress/"><img src="https://sharedat.net/f/KE/KEwS/browsing-themes.png" width="983" height="1024" class="aligncenter" /></a></p>
<p>Reminds me of the Netflix and Amazon Prime interfaces on my old Roku box.</p>
<p>Go follow <a href="http://www.shaunandrews.com/">www.shaunandrews.com</a> to see what he has been up to.  Hopefully some of these will make it into WordPress 3.8.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 29 Aug 2013 15:15:40 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Joseph Scott";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:16;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:64:"WordPress.tv: Taylor Lovett: What You Missed in Computer Science";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wordpress.tv/?p=21688";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:81:"http://wordpress.tv/2013/08/29/taylor-lovett-what-you-missed-in-computer-science/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:697:"<div id="v-ONO5AwK4-1" class="video-player">
</div>
<br />  <a rel="nofollow" href="http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/21688/"><img alt="" border="0" src="http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/21688/" /></a> <img alt="" border="0" src="http://stats.wordpress.com/b.gif?host=wordpress.tv&blog=5089392&post=21688&subd=wptv&ref=&feed=1" width="1" height="1" /><div><a href="http://wordpress.tv/2013/08/29/taylor-lovett-what-you-missed-in-computer-science/"><img alt="Taylor Lovett: What You Missed in Computer Science" src="http://videos.videopress.com/ONO5AwK4/what-you-missed-in-computer-science_std.original.jpg" width="160" height="120" /></a></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 29 Aug 2013 11:05:27 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"WordPress.tv";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:17;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:41:"WPTavern: Plugin Review – Leaky Paywall";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"http://www.wptavern.com/?p=8496";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:89:"http://feedproxy.google.com/~r/WordpressTavern/~3/DcgKaMjn1fA/plugin-review-leaky-paywall";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:5032:"<h2>Plugin Author, License, And Pricing:</h2>
<p>Created by the same folks who created the <a href="http://www.wptavern.com/creating-a-digital-publication-in-wordpress-with-the-issuem-plugin" title="http://www.wptavern.com/creating-a-digital-publication-in-wordpress-with-the-issuem-plugin">IssueM plugin</a>. The plugin is licensed under the GPL and has three different pricing tiers. Single site for $55.00, 2-5 sites for $75.00 and 6-25 sites for $95.00. </p>
<h2>Description And Review:</h2>
<p>Leaky Paywall takes a different approach to enticing users to pay for content. Normally, paywalls are hard stops that prevent content from being consumed, or shared for that matter unless you pay up. Some of these paywalls are configured in such a way that not only can humans not consume the content, but neither can search engines. Using leaky paywall, site administrators get to decide which combination of content types can be leaked out. The choices range from <em>pages, posts, articles, and Issues</em>, if you have the <a href="http://www.wptavern.com/creating-a-digital-publication-in-wordpress-with-the-issuem-plugin" title="http://www.wptavern.com/creating-a-digital-publication-in-wordpress-with-the-issuem-plugin">IssueM plugin</a> installed. The biggest difference between this paywall system and others is that content behind the paywall can be crawled by search engines and can also be shared via social media. As long as the number of free posts is 1 or higher, articles being shared across social media will not show the paywall message for new visitors. <span id="more-8496"></span></p>
<p>Leaky Paywall is cookie based which enables it to work as intended. However, it also means that it&#8217;s as simple as deleting cookies to get around the paywall. When I asked Peter what would site administrators do to protect against people getting behind the paywall by either turning cookies off or deleting them once they&#8217;ve hit the free article limit, this was his response:</p>
<blockquote><p>Nothing, that&#8217;s the leaky part. It works for the NYTimes because 95% of humans are honest or don&#8217;t want to be bothered with having to &#8220;get around&#8221; the system.</p></blockquote>
<p>You get to choose how many articles can be viewed for free as well as when the free article cookie expires. </p>
<div id="attachment_8498" class="wp-caption aligncenter"><a href="http://i2.wp.com/www.wptavern.com/wp-content/uploads/2013/08/LeakyPaywallOptions.jpg" rel="thumbnail"><img src="http://i1.wp.com/www.wptavern.com/wp-content/uploads/2013/08/LeakyPaywallOptions.jpg?resize=500%2C379" alt="Leaky Pay Wall Options" class="size-large wp-image-8498" /></a><p class="wp-caption-text">Leaky Pay Wall Options</p></div>
<p>You can configure the subscribe or login message which is the message that will be viewed to those who have reached their free article limit. The message can either use the default CSS style that comes with the plugin or none at all. By default, it will look like this:</p>
<div id="attachment_8499" class="wp-caption aligncenter"><a href="http://i2.wp.com/www.wptavern.com/wp-content/uploads/2013/08/LeakyPaywallSubscribeCSS.jpg" rel="thumbnail"><img src="http://i1.wp.com/www.wptavern.com/wp-content/uploads/2013/08/LeakyPaywallSubscribeCSS.jpg?resize=500%2C128" alt="Subscribe Box CSS" class="size-large wp-image-8499" /></a><p class="wp-caption-text">Default CSS</p></div>
<p>Out of the box, Leaky Paywall only supports the Stripe Payment gateway for recurring payments but there will be more payment processors in the future. </p>
<h2>Support:</h2>
<p>There are a couple of different ways of obtaining support. The first is access to <a href="http://issuem.com/forums/" title="http://issuem.com/forums/">basic support forums</a> where registration is free. The second is by purchasing a 1 Month support package for $39 that provides access to the priority support section of the forum with the promise of getting you a response within 8 business hours. The third is a yearly priority support package for $129 that gives you all of the above for a year. There is also <a href="http://issuem.com/category/training/" title="http://issuem.com/category/training/">free access to training material</a> on their training page. </p>
<h2>Final Thoughts:</h2>
<p>While I was originally against the idea of Paywalls, something like what Leaky Paywall provides has changed my mind. It&#8217;s not intrusive, the built-in Stripe Payment gateway makes it easy to pay/subscribe to the site without the need for a password and content can still be shared as well as consumed by the outside world without any problems.</p>
<div class="aligncenter"></div>
<h2>Coupon Code</h2>
<p>Readers of WPTavern.com who are interested in purchasing the plugin can use the coupon code <strong>LeakyTavern2013</strong> to receive 50% off the price. There are only 10 available so it&#8217;s first come, first serve. </p>
<img src="http://feeds.feedburner.com/~r/WordpressTavern/~4/DcgKaMjn1fA" height="1" width="1" />";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 29 Aug 2013 11:00:08 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:6:"Jeffro";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:18;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:70:"WordPress.tv: Brad Parbs: Getting SASSy – Fun with CSS Preprocessors";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wordpress.tv/?p=21700";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:83:"http://wordpress.tv/2013/08/29/brad-parbs-getting-sassy-fun-with-css-preprocessors/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:687:"<div id="v-rGnRsjzP-1" class="video-player">
</div>
<br />  <a rel="nofollow" href="http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/21700/"><img alt="" border="0" src="http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/21700/" /></a> <img alt="" border="0" src="http://stats.wordpress.com/b.gif?host=wordpress.tv&blog=5089392&post=21700&subd=wptv&ref=&feed=1" width="1" height="1" /><div><a href="http://wordpress.tv/2013/08/29/brad-parbs-getting-sassy-fun-with-css-preprocessors/"><img alt="Brad Parbs: Getting SASSy – Fun with CSS Preprocessors" src="http://videos.videopress.com/rGnRsjzP/getting-sassy-fun_std.original.jpg" width="160" height="120" /></a></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 29 Aug 2013 11:00:06 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"WordPress.tv";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:19;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:52:"WPTavern: WP Site Care On WordPress Weekly This Week";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"http://www.wptavern.com/?p=8730";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:104:"http://feedproxy.google.com/~r/WordpressTavern/~3/fLKmSbegUj8/wp-site-care-on-wordpress-weekly-this-week";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1476:"<p><a href="http://i0.wp.com/www.wptavern.com/wp-content/uploads/2013/08/wpsitecarelogo.jpg" rel="thumbnail"><img src="http://i0.wp.com/www.wptavern.com/wp-content/uploads/2013/08/wpsitecarelogo.jpg?resize=300%2C42" alt="WP Site Care Logo" class="alignright size-medium wp-image-8732" /></a>Ryan Sullivan and Rami Abraham of <a href="http://www.wpsitecare.com/" title="http://www.wpsitecare.com/">WPSitecare</a> will be my special guests this week on WordPress Weekly. WP Site Care is a WordPress Support &#038; Maintenance Company. The first time I discovered a company like WP Site Care was in 2009 which was around the time <a href="http://wpcandy.com/reports/one-more-way-to-get-wordpress-help/" title="http://wpcandy.com/reports/one-more-way-to-get-wordpress-help/">WP HelpCenter</a> was created. On the show, I plan on asking these guys what its like helping people solve WordPress problems on all sorts of different server environments, their thoughts on webhosting, WordPress in general, and much more. If you have any questions you&#8217;d like me to ask them concerning their service, please publish them in the comments.</p>
<p>Point your browser to the <a href="http://www.wptavern.com/wordpress-weekly" title="http://www.wptavern.com/wordpress-weekly">Podcast page</a> this Friday evening at 9PM eastern in order to participate in the live recording of the show.</p>
<img src="http://feeds.feedburner.com/~r/WordpressTavern/~4/fLKmSbegUj8" height="1" width="1" />";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 28 Aug 2013 23:06:27 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:6:"Jeffro";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:20;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:58:"WPTavern: Ben Sibley On The State Of WordPress Themes 2013";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"http://www.wptavern.com/?p=8720";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:110:"http://feedproxy.google.com/~r/WordpressTavern/~3/t9_ConfMHyE/ben-sibley-on-the-state-of-wordpress-themes-2013";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1908:"<p><a href="http://i0.wp.com/www.wptavern.com/wp-content/uploads/2013/08/supportdashlogo.jpg" rel="thumbnail"><img src="http://i0.wp.com/www.wptavern.com/wp-content/uploads/2013/08/supportdashlogo.jpg?resize=217%2C37" alt="Supportdash Logo" class="alignright size-full wp-image-8721" /></a><a href="http://www.supportdash.com" title="http://www.supportdash.com">Supportdash</a>, a company specializing in providing customer support for WordPress developers has <a href="http://www.supportdash.com/state-wordpress-themes/" title="http://www.supportdash.com/state-wordpress-themes/">published an infographic</a> that highlights the state of WordPress themes. Their survey pretty much has nothing to do with the design of the themes themselves but of trends, where are they being sold, the marketplace, and their support structures. </p>
<p>A few things I found surprising based on their data.</p>
<p><strong>They tallied 1,001 theme shops<br />
300 of those shops were responsible for 4,044 WordPress themes<br />
872 of the 1,001 theme shops were selling on ThemeForest<br />
88% of the 1,001 theme shops in the sample offered lifetime support</strong></p>
<p>I got in touch with Ben Sibley who agreed to have a recorded conversation with me discussing the data he discovered. The short interview is 15 minutes in length where we discussed how the survey was conducted, the things that surprised him and the info surrounding the support numbers. </p>
<!--[if lt IE 9]><script>document.createElement(''audio'');</script><![endif]-->
<a href="http://www.wptavern.com/wp-content/uploads/2013/08/Short-Interview-With-Ben-Sibley.mp3">http://www.wptavern.com/wp-content/uploads/2013/08/Short-Interview-With-Ben-Sibley.mp3</a>
<p>After reading the data they compiled and listening to the interview, what do you think?</p>
<img src="http://feeds.feedburner.com/~r/WordpressTavern/~4/t9_ConfMHyE" height="1" width="1" />";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 28 Aug 2013 21:31:24 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:6:"Jeffro";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:21;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:95:"WordPress.tv: Al Caldarone: Create Your Own Member Access Templates with Custom Sidebar Widgets";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wordpress.tv/?p=21694";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:112:"http://wordpress.tv/2013/08/28/al-caldarone-create-your-own-member-access-templates-with-custom-sidebar-widgets/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:767:"<div id="v-A8ddRkgy-1" class="video-player">
</div>
<br />  <a rel="nofollow" href="http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/21694/"><img alt="" border="0" src="http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/21694/" /></a> <img alt="" border="0" src="http://stats.wordpress.com/b.gif?host=wordpress.tv&blog=5089392&post=21694&subd=wptv&ref=&feed=1" width="1" height="1" /><div><a href="http://wordpress.tv/2013/08/28/al-caldarone-create-your-own-member-access-templates-with-custom-sidebar-widgets/"><img alt="Al Caldarone: Create Your Own Member Access Templates with Custom Sidebar Widgets" src="http://videos.videopress.com/A8ddRkgy/create-member-access-templates-with-widgets_std.original.jpg" width="160" height="120" /></a></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 28 Aug 2013 11:01:56 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"WordPress.tv";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:22;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:51:"WordPress.tv: Andrew Nacin: WordPress in Transition";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wordpress.tv/?p=21732";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:68:"http://wordpress.tv/2013/08/28/andrew-nacin-wordpress-in-transition/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:675:"<div id="v-5GG16zuu-1" class="video-player">
</div>
<br />  <a rel="nofollow" href="http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/21732/"><img alt="" border="0" src="http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/21732/" /></a> <img alt="" border="0" src="http://stats.wordpress.com/b.gif?host=wordpress.tv&blog=5089392&post=21732&subd=wptv&ref=&feed=1" width="1" height="1" /><div><a href="http://wordpress.tv/2013/08/28/andrew-nacin-wordpress-in-transition/"><img alt="Andrew Nacin: WordPress in Transition WordPress" src="http://videos.videopress.com/5GG16zuu/anything-everything-wordpress_std.original.jpg" width="160" height="120" /></a></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 28 Aug 2013 10:37:50 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"WordPress.tv";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:23;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:32:"WPTavern: Mollom Security Breach";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"http://www.wptavern.com/?p=8706";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:84:"http://feedproxy.google.com/~r/WordpressTavern/~3/SeNQaf5t6Yo/mollom-security-breach";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2792:"<p><a href="http://i2.wp.com/www.wptavern.com/wp-content/uploads/2013/08/Screen-Shot-2013-08-06-at-3.50.46-PM.png" rel="thumbnail"><img src="http://i1.wp.com/www.wptavern.com/wp-content/uploads/2013/08/Screen-Shot-2013-08-06-at-3.50.46-PM.png?resize=300%2C85" alt="Mollom Logo" class="alignright size-medium wp-image-8327" /></a>Over the week-end, I received an email from Mollom notifying me that they had discovered a security breach. According to their <a href="http://mollom.com/blog/security-notice-august-2013" title="http://mollom.com/blog/security-notice-august-2013">official blog post</a> on the matter, the breach was discovered on August 21st. Mollom is a service managed by Acquia, a commercial open source software company providing products, services, and technical support for the open source Drupal social publishing system. The service works in a similar fashion to Akismet in that it scans messages such as comments to determine whether or not they are spam. <span id="more-8706"></span></p>
<blockquote><p>This is an important security notice from the Mollom team. On August 21, we identified a breach of one of our Mollom servers. Our subsequent investigation showed that unauthorized users gained access to Mollom servers and were potentially able to access Mollom data. Today we have closed the security loophole used to gain access and taken measures designed to prevent future breaches.</p>
<p>Data that may have been compromised includes usernames, account contact information, passwords, Mollom public and private keys, and billing transaction logs. PayPal account information was NOT stored on the affected servers.</p>
<p>At this time, we have no evidence that any malicious activity took place with customer data. To help assure this continues to be the case, in addition to the measures described above, we have changed all Mollom user account passwords. </p></blockquote>
<p>Mollom has automatically reset all user account passwords to access the administrative interface. This means you&#8217;ll need to access the <a href="http://mollom.com/user/password" title="http://mollom.com/user/password">following URL</a> in order to reset your password. </p>
<p>The bottom line is if you signed up to use Mollom free or as a paid customer, you should reset your password and keep a close eye on your financial records, especially if you have or had a paid account even though credit card information was not stored on the affected server. The unauthorized access was <strong>NOT</strong> a direct result of a vulnerability within Drupal. If any additional information is discovered during their investigation, the Mollom team will continue to update the blog post.</p>
<img src="http://feeds.feedburner.com/~r/WordpressTavern/~4/SeNQaf5t6Yo" height="1" width="1" />";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 27 Aug 2013 18:45:37 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:6:"Jeffro";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:24;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"Matt: Harder, Slower, Less Secure";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:21:"http://ma.tt/?p=42965";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:47:"http://ma.tt/2013/08/harder-slower-less-secure/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:352:"<p>Jay Rosen (and Barry Eisler) on the surveillance state&#8217;s efforts <a href="http://pressthink.org/2013/08/to-make-journalism-harder-slower-less-secure/">to make journalism harder, slower, less secure</a>. The gist: why would they destroy hard drives they know there are copies of, and detain couriers they know they&#8217;ll have to release?</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 27 Aug 2013 17:16:24 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Matt";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:25;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:44:"WPTavern: The Full Story Behind WP-Wallpaper";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"http://www.wptavern.com/?p=8568";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:96:"http://feedproxy.google.com/~r/WordpressTavern/~3/3luWcT9hGW8/the-full-story-behind-wp-wallpaper";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:6406:"<p>If you&#8217;ve been scouring the web for WordPress specific images to use as your desktop background, have a look at <a href="http://wp-wallpaper.com/" title="http://wp-wallpaper.com/">WP-Wallpaper</a>. The site doesn&#8217;t have a huge variety of images to choose from now but over the course of the next few months, I think that will change. I reached out to Alison Barrett who manages the site to find out about its history and what plans if any she has for the site. <span id="more-8568"></span></p>
<div id="attachment_8569" class="wp-caption aligncenter"><a href="http://i1.wp.com/www.wptavern.com/wp-content/uploads/2013/08/WordPressLights.jpg" rel="thumbnail"><img src="http://i0.wp.com/www.wptavern.com/wp-content/uploads/2013/08/WordPressLights.jpg?resize=439%2C275" alt="WordPress Lights by Alison Barrett " class="size-full wp-image-8569" /></a><p class="wp-caption-text">WordPress Lights by Alison Barrett</p></div>
<p><strong>Can you provide a brief history of the domain, considering it existed before you purchased it?</strong></p>
<p>I don&#8217;t know much about the previous owner of the domain. The original site was my main source of desktop wallpapers for a long time, and I had referred dozens of people to it. I was bummed when I learned the site was down. I went searching for the owner, and I didn&#8217;t realize the domain had expired until the whois search turned up empty.</p>
<p><strong>Do you know of any other sites that have an abundant amount of WordPress desktop wallpapers?</strong></p>
<p>I can&#8217;t think of any other dedicated WP wallpaper sites off the top of my head, though a Google search might turn up one or two. I didn&#8217;t come across any when I was searching for the creators of the wallpapers on the original site.</p>
<p>My initial reason for buying the domain was that I felt bad for referring friends to something that wasn&#8217;t even live anymore. Now I&#8217;m enjoying running the site, and I love seeing all the excitement around it. The community&#8217;s response to it is driving me to keep making it even better. I would love to find the creators of the wallpapers from the original site, because there were a lot of gorgeous images up there. I don&#8217;t want to republish them without attribution and permission.</p>
<p><strong>Any chance of getting this site linked to from the Fan Art section of WordPress.org or having a small dedicated section showing 3-6 wallpapers?</strong></p>
<p>I hadn&#8217;t thought about getting this site linked under the Fan Art section on .org—that&#8217;s a great idea! I&#8217;ll see what I can do.</p>
<p><strong>Any chance of adding a ratings system, reviews, or any other social aspects to the images similar to DeviantArt?</strong></p>
<p>I do plan on implementing a ratings system eventually, though my priority right now is supporting multiple resolutions for each wallpaper (including mobile). I will probably add some sharing tools in the near future as well.</p>
<p><strong>How can people submit images to the site and how should the submissions be licensed? </strong></p>
<p>Wallpapers can be submitted through the form on the submit page: <a href="http://wp-wallpaper.com/submit/" title="http://wp-wallpaper.com/submit/">http://wp-wallpaper.com/submit/</a> . Technical requirements are laid out there (and will be updated once I get mobile resolution support in place). Images must be released under the Creative Commons Attribution Share-Alike license, as that is what they are distributed under on the site.</p>
<h2>Oops: After The Launch</h2>
<p>After this interview was conducted with Alison, I did some research into the history of the domain since she didn&#8217;t know too much about it. I plugged the domain into the Wayback machine and didn&#8217;t see any results. For a site that Alison pointed to over the years for WordPress wallpapers, it stands to reason it would have some history behind it. Just for experimentation, I added an S to the end of the domain so it was <a href="http://wp-wallpapers.com/" title="http://wp-wallpapers.com/">http://wp-wallpapers.com/</a> and while that particular domain has expired, it did show up with quite a few results in the Wayback machine.</p>
<p>The first record on the internet archive is for <a href="http://web.archive.org/web/20111017210657/http://wp-wallpapers.com/" title="http://web.archive.org/web/20111017210657/http://wp-wallpapers.com/">October 17th 2011</a>. This entry tells us that WP-Wallpapers.com used the Expose theme from ThemeForest to show off the content of the site. That theme is still available for sale but is not 100% GPL licensed. </p>
<p><a href="http://i2.wp.com/www.wptavern.com/wp-content/uploads/2013/08/WPWallPapers.jpg" rel="thumbnail"><img src="http://i0.wp.com/www.wptavern.com/wp-content/uploads/2013/08/WPWallPapers.jpg?resize=500%2C359" alt="WP Wallpapers" class="aligncenter size-large wp-image-8699" /></a></p>
<p>The next entry was a WordPress maintenance page. However, <a href="http://web.archive.org/web/20120331034901/http://wp-wallpapers.com/" title="http://web.archive.org/web/20120331034901/http://wp-wallpapers.com/?">On March 31st 2012</a>, the site had a few pages of Wallpapers available. It&#8217;s also during this time that we discover the site was owned and operated by the Envato network. The last working entry is on <a href="http://web.archive.org/web/20130323233732/http://wp-wallpapers.com/" title="http://web.archive.org/web/20130323233732/http://wp-wallpapers.com/">March 23rd, 2013</a> with at least 5 pages worth of wallpaper images. </p>
<h2>Conclusions</h2>
<p>So not only has Alison pointed people to the wrong domain over the years, she also purchased the wrong domain. She missed it by one letter. I reached out to Envato to find out what their plans are for the domain:</p>
<blockquote><p>We&#8217;re always trying to streamline our processes and focus more on the projects that really matter to us, which is why we decided to discontinue WP-Wallpapers.com. But we&#8217;re really happy to see WP-Wallpaper spring up to fill the gap! There are definitely some beautiful, creative WordPress wallpapers around.</p></blockquote>
<p>Despite everything that&#8217;s happened up to this point with WP-Wallpaper.com, Alison is still excited to see the site grow. </p>
<img src="http://feeds.feedburner.com/~r/WordpressTavern/~4/3luWcT9hGW8" height="1" width="1" />";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 27 Aug 2013 04:45:35 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:6:"Jeffro";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:26;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:54:"WPTavern: My Experience – WordCamp Grand Rapids 2013";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"http://www.wptavern.com/?p=8635";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:102:"http://feedproxy.google.com/~r/WordpressTavern/~3/Tu_vAh6bwrA/my-experience-wordcamp-grand-rapids-2013";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:15414:"<h2>Things I Learned About The City</h2>
<p>This event marks the first time I&#8217;ve visited Grand Rapids, Michigan. I can say without any doubt that Grand Rapids is a beautiful city. I got the impression while being downtown that I was in a large city but it wasn&#8217;t large enough to feel inundated like New York or San Francisco. The skyline has large buildings but you can still see the horizon in some parts of downtown. The city also has a wide river that flows through and around the city which from what I&#8217;ve read, is the origin of the city&#8217;s name. However, I saw the river as wide, shallow, and nothing rapid about it. There is talk in the local community around the idea of placing large boulders back into the river to generate rapids but I&#8217;m unsure of that progress. <span id="more-8635"></span></p>
<p>The other thing I learned while in Grand Rapids was the number of local breweries in the region. I had the pleasure of eating at two of these breweries. One was called <a href="http://foundersbrewing.com/" title="http://foundersbrewing.com/">Founders</a>, the other was <a href="http://www.grbrewingcompany.com/" title="http://www.grbrewingcompany.com/">Grand Rapids Brewing Company</a>. The food was excellent in both locations and although I didn&#8217;t drink any beer since I&#8217;m not a hoppy kind of guy, the WordCamp attendees I was surrounded by couldn&#8217;t stop raving about some of the beers they tasted at each place. The third place I ate at in which I did try a beer (Brouwerij Lindeman Vlezenbeek, Belgium a raspberry flavored beer) was <a href="http://hopcatgr.com/main/About.aspx" title="http://hopcatgr.com/main/About.aspx">HopCat</a>. A place with something called &#8216;<strong>Crack Fries</strong>&#8216;. These crack fries are considered famous in the area because of the unique blend of spices applied to them. After eating them, you&#8217;ll understand why they have their name.</p>
<h2>The Event Itself</h2>
<p>The event was held at the <a href="http://www.gvsu.edu/" title="http://www.gvsu.edu/">DeVos Center on Grand Valley State University’s Pew Campus</a> in downtown Grand Rapids. Out of all the WordCamps I&#8217;ve attended, those that are at some sort of college campus location have gone smoothly. This one was no exception. Although I didn&#8217;t attend very many sessions, I did manage to catch up with quite a few people to talk shop and other interesting things going on in the world of WordPress. At this particular WordCamp, I moderated a panel discussion on the topic of Commercial Themes and Plugins with Pippin Williamson, Adam Pickering, Daniel Espinoza, and Jake Caputo. I think the session went over rather well and we covered a lot of information. The one thing that kept coming up multiple times during the talk was support. It&#8217;s expensive but it&#8217;s also the most valuable and potentially the most vital aspect of any business. We also discussed various methods to handle support as forums are great at the early stage but something like ZenDesk and tickets make sense for larger volumes of support requests. I definitely took some feedback to heart concerning my delivery and approach on stage during the session and if I ever moderate a panel like this again, the second one will be 10 times better than the first. Thanks to Brian Richards, one of the event organizers for giving me the opportunity to moderate the panel.</p>
<p>The session that opened my eyes was <a href="http://2013.grandrapids.wordcamp.org/session/scoping-projects-a-therapy-session-for-those-who-do-client-work/" title="http://2013.grandrapids.wordcamp.org/session/scoping-projects-a-therapy-session-for-those-who-do-client-work/">Scoping Projects</a> – A Therapy Session For Those Who Do Client Work Lisa Sabin-Wilson. Not so much from the perspective of the consultant but from the perspective of a client, realizing everything the consultant has to go through to get the job done. Her idea of scoping and how important it is to get everything on the table before starting work was key. She also discussed why having assumptions can costs you big bucks, wasted time, and make you look bad in front of the client. There should be 0 assumptions from both parties in a project. As a future client myself, I realized that I could make the process go a lot easier for both parties if I scoped out everything I wanted, every nuance, provided documentation, references for ideas and inspiration, etc. The more information I can provide the consultant about my needs, the better off we&#8217;ll both be. It was a session that I didn&#8217;t think would appeal to me but it was the most eye-opening one I&#8217;ve attended in a long time. It was an interesting experience being in a room full of people and seeing/hearing their reaction when Lisa mentioned that <a href="http://lisasabin-wilson.com/tighten-up-those-terms-and-keep-copies-of-everything-forever/" title="http://lisasabin-wilson.com/tighten-up-those-terms-and-keep-copies-of-everything-forever/">she had been investigated by the FBI</a> and to perform a Google search to read about it. I won&#8217;t spoil it for you, you&#8217;ll just have to read her post. </p>
<h2>Conclusion</h2>
<p>Most of the time during the week-end I was involved in multiple conversations with all sorts of people doing awesome things with WordPress. Overall, it was a fantastic event. The organizers as well as the volunteers should be proud of themselves. I had such a good experience within Grand Rapids that I&#8217;m thinking of taking my wife there to experience more of the city. While contributor day was awesome at WordCamp San Francisco, it was nowhere near as effective at WordCamp Grand Rapids. I think a lot of that has to do with the right people not being in attendance such as core contributors, project managers, etc. With that said, those who did show up to contributor day were working with other people on WordPress or were taking the knowledge and ideas they gained the past two days to improve their own sites or projects. This has me wondering if any other WordCamp will be able to have a contributor day as beneficial as the one held at WordCamp San Francisco 2013? </p>

<a href="http://www.wptavern.com/my-experience-wordcamp-grand-rapids-2013/attachment/565" title="CedarPoint From The Sky"><img src="http://i0.wp.com/www.wptavern.com/wp-content/uploads/2013/08/565.png?resize=150%2C150" class="attachment-thumbnail" alt="CedarPoint From The Sky" /></a>
<a href="http://www.wptavern.com/my-experience-wordcamp-grand-rapids-2013/attachment/570" title="Sandwich From Grand Rapids Brewery"><img src="http://i1.wp.com/www.wptavern.com/wp-content/uploads/2013/08/570.png?resize=150%2C150" class="attachment-thumbnail" alt="Sandwich From Grand Rapids Brewery" /></a>
<a href="http://www.wptavern.com/my-experience-wordcamp-grand-rapids-2013/attachment/571" title="View From The Amway Grand"><img src="http://i2.wp.com/www.wptavern.com/wp-content/uploads/2013/08/571.png?resize=150%2C150" class="attachment-thumbnail" alt="View From The Amway Grand" /></a>
<a href="http://www.wptavern.com/my-experience-wordcamp-grand-rapids-2013/attachment/572" title="Van Andel Arena"><img src="http://i0.wp.com/www.wptavern.com/wp-content/uploads/2013/08/572.png?resize=150%2C150" class="attachment-thumbnail" alt="Van Andel Arena" /></a>
<a href="http://www.wptavern.com/my-experience-wordcamp-grand-rapids-2013/attachment/573" title="Van Andel Statue"><img src="http://i0.wp.com/www.wptavern.com/wp-content/uploads/2013/08/573.png?resize=150%2C150" class="attachment-thumbnail" alt="Van Andel Statue" /></a>
<a href="http://www.wptavern.com/my-experience-wordcamp-grand-rapids-2013/attachment/574" title="GR Brewing Company"><img src="http://i0.wp.com/www.wptavern.com/wp-content/uploads/2013/08/574.png?resize=150%2C150" class="attachment-thumbnail" alt="GR Brewing Company" /></a>
<a href="http://www.wptavern.com/my-experience-wordcamp-grand-rapids-2013/attachment/575" title="GR Brewing Company Sign"><img src="http://i0.wp.com/www.wptavern.com/wp-content/uploads/2013/08/575.png?resize=150%2C150" class="attachment-thumbnail" alt="GR Brewing Company Sign" /></a>
<a href="http://www.wptavern.com/my-experience-wordcamp-grand-rapids-2013/attachment/576" title="J Gardellas Sign"><img src="http://i1.wp.com/www.wptavern.com/wp-content/uploads/2013/08/576.png?resize=150%2C150" class="attachment-thumbnail" alt="J Gardellas Sign" /></a>
<a href="http://www.wptavern.com/my-experience-wordcamp-grand-rapids-2013/attachment/577" title="Albert Einstein"><img src="http://i0.wp.com/www.wptavern.com/wp-content/uploads/2013/08/577.png?resize=150%2C150" class="attachment-thumbnail" alt="Albert Einstein" /></a>
<a href="http://www.wptavern.com/my-experience-wordcamp-grand-rapids-2013/attachment/580" title="Blue Bridge Skyline"><img src="http://i2.wp.com/www.wptavern.com/wp-content/uploads/2013/08/580.png?resize=150%2C150" class="attachment-thumbnail" alt="Blue Bridge Skyline" /></a>
<a href="http://www.wptavern.com/my-experience-wordcamp-grand-rapids-2013/attachment/582" title="Peace Sign In The Grand River"><img src="http://i2.wp.com/www.wptavern.com/wp-content/uploads/2013/08/582.png?resize=150%2C150" class="attachment-thumbnail" alt="Peace Sign In The Grand River" /></a>
<a href="http://www.wptavern.com/my-experience-wordcamp-grand-rapids-2013/attachment/584" title="River With Skyline"><img src="http://i0.wp.com/www.wptavern.com/wp-content/uploads/2013/08/584.png?resize=150%2C150" class="attachment-thumbnail" alt="River With Skyline" /></a>
<a href="http://www.wptavern.com/my-experience-wordcamp-grand-rapids-2013/attachment/588" title="Large Bridge"><img src="http://i2.wp.com/www.wptavern.com/wp-content/uploads/2013/08/588.png?resize=150%2C150" class="attachment-thumbnail" alt="Large Bridge" /></a>
<a href="http://www.wptavern.com/my-experience-wordcamp-grand-rapids-2013/attachment/589" title="Sign About Pew Campus"><img src="http://i2.wp.com/www.wptavern.com/wp-content/uploads/2013/08/589.png?resize=150%2C150" class="attachment-thumbnail" alt="Sign About Pew Campus" /></a>
<a href="http://www.wptavern.com/my-experience-wordcamp-grand-rapids-2013/attachment/590" title="Front Of DeVos Center"><img src="http://i1.wp.com/www.wptavern.com/wp-content/uploads/2013/08/590.png?resize=150%2C150" class="attachment-thumbnail" alt="Front Of DeVos Center" /></a>
<a href="http://www.wptavern.com/my-experience-wordcamp-grand-rapids-2013/attachment/591" title="DeVos Clock Tower"><img src="http://i0.wp.com/www.wptavern.com/wp-content/uploads/2013/08/591.png?resize=150%2C150" class="attachment-thumbnail" alt="DeVos Clock Tower" /></a>
<a href="http://www.wptavern.com/my-experience-wordcamp-grand-rapids-2013/attachment/592" title="DeVos Campus"><img src="http://i2.wp.com/www.wptavern.com/wp-content/uploads/2013/08/592.png?resize=150%2C150" class="attachment-thumbnail" alt="DeVos Campus" /></a>
<a href="http://www.wptavern.com/my-experience-wordcamp-grand-rapids-2013/attachment/593" title="WCGR Badge 1"><img src="http://i0.wp.com/www.wptavern.com/wp-content/uploads/2013/08/593.png?resize=150%2C150" class="attachment-thumbnail" alt="WCGR Badge 1" /></a>
<a href="http://www.wptavern.com/my-experience-wordcamp-grand-rapids-2013/attachment/594" title="WCGR Badge 2"><img src="http://i1.wp.com/www.wptavern.com/wp-content/uploads/2013/08/594.png?resize=150%2C150" class="attachment-thumbnail" alt="WCGR Badge 2" /></a>
<a href="http://www.wptavern.com/my-experience-wordcamp-grand-rapids-2013/attachment/595" title="WCGR Badge 3"><img src="http://i0.wp.com/www.wptavern.com/wp-content/uploads/2013/08/595.png?resize=150%2C150" class="attachment-thumbnail" alt="WCGR Badge 3" /></a>
<a href="http://www.wptavern.com/my-experience-wordcamp-grand-rapids-2013/attachment/596" title="WCGR Badge 4"><img src="http://i2.wp.com/www.wptavern.com/wp-content/uploads/2013/08/596.png?resize=150%2C150" class="attachment-thumbnail" alt="WCGR Badge 4" /></a>
<a href="http://www.wptavern.com/my-experience-wordcamp-grand-rapids-2013/attachment/597" title="WCGR Badge 5"><img src="http://i0.wp.com/www.wptavern.com/wp-content/uploads/2013/08/597.png?resize=150%2C150" class="attachment-thumbnail" alt="WCGR Badge 5" /></a>
<a href="http://www.wptavern.com/my-experience-wordcamp-grand-rapids-2013/attachment/598" title="Grand Rapids Night Shot 1"><img src="http://i2.wp.com/www.wptavern.com/wp-content/uploads/2013/08/598.png?resize=150%2C150" class="attachment-thumbnail" alt="Grand Rapids Night Shot 1" /></a>
<a href="http://www.wptavern.com/my-experience-wordcamp-grand-rapids-2013/attachment/599" title="Grand Rapids Night Shot 2"><img src="http://i0.wp.com/www.wptavern.com/wp-content/uploads/2013/08/599.png?resize=150%2C150" class="attachment-thumbnail" alt="Grand Rapids Night Shot 2" /></a>
<a href="http://www.wptavern.com/my-experience-wordcamp-grand-rapids-2013/attachment/600" title="Grand Rapids Night Shot 3"><img src="http://i2.wp.com/www.wptavern.com/wp-content/uploads/2013/08/600.png?resize=150%2C150" class="attachment-thumbnail" alt="Grand Rapids Night Shot 3" /></a>
<a href="http://www.wptavern.com/my-experience-wordcamp-grand-rapids-2013/attachment/601" title="Grand Rapids Night Shot 4"><img src="http://i1.wp.com/www.wptavern.com/wp-content/uploads/2013/08/601.png?resize=150%2C150" class="attachment-thumbnail" alt="Grand Rapids Night Shot 4" /></a>
<a href="http://www.wptavern.com/my-experience-wordcamp-grand-rapids-2013/attachment/604" title="Grand Rapids Night Shot 5"><img src="http://i1.wp.com/www.wptavern.com/wp-content/uploads/2013/08/604.png?resize=150%2C150" class="attachment-thumbnail" alt="Grand Rapids Night Shot 5" /></a>
<a href="http://www.wptavern.com/my-experience-wordcamp-grand-rapids-2013/attachment/605" title="Amway Grand Hotel"><img src="http://i2.wp.com/www.wptavern.com/wp-content/uploads/2013/08/605.png?resize=150%2C150" class="attachment-thumbnail" alt="Amway Grand Hotel" /></a>
<a href="http://www.wptavern.com/my-experience-wordcamp-grand-rapids-2013/attachment/606" title="Front Of The Amway"><img src="http://i1.wp.com/www.wptavern.com/wp-content/uploads/2013/08/606.png?resize=150%2C150" class="attachment-thumbnail" alt="Front Of The Amway" /></a>
<a href="http://www.wptavern.com/my-experience-wordcamp-grand-rapids-2013/attachment/608" title="Hop Cat Menu"><img src="http://i0.wp.com/www.wptavern.com/wp-content/uploads/2013/08/608.png?resize=150%2C150" class="attachment-thumbnail" alt="Hop Cat Menu" /></a>
<a href="http://www.wptavern.com/my-experience-wordcamp-grand-rapids-2013/attachment/609" title="Hop Cat Bruschetta"><img src="http://i2.wp.com/www.wptavern.com/wp-content/uploads/2013/08/609.png?resize=150%2C150" class="attachment-thumbnail" alt="Hop Cat Bruschetta" /></a>
<a href="http://www.wptavern.com/my-experience-wordcamp-grand-rapids-2013/attachment/610" title="Crack Fries 1"><img src="http://i2.wp.com/www.wptavern.com/wp-content/uploads/2013/08/610.png?resize=150%2C150" class="attachment-thumbnail" alt="Crack Fries 1" /></a>
<a href="http://www.wptavern.com/my-experience-wordcamp-grand-rapids-2013/attachment/611" title="Crack Fries 2"><img src="http://i2.wp.com/www.wptavern.com/wp-content/uploads/2013/08/611.png?resize=150%2C150" class="attachment-thumbnail" alt="Crack Fries 2" /></a>

<img src="http://feeds.feedburner.com/~r/WordpressTavern/~4/Tu_vAh6bwrA" height="1" width="1" />";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 27 Aug 2013 03:34:51 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:6:"Jeffro";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:27;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:41:"WordPress.tv: Al Davis: After the Install";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wordpress.tv/?p=21549";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"http://wordpress.tv/2013/08/26/al-davis-after-the-install-3/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:634:"<div id="v-OTMvdJ53-1" class="video-player">
</div>
<br />  <a rel="nofollow" href="http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/21549/"><img alt="" border="0" src="http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/21549/" /></a> <img alt="" border="0" src="http://stats.wordpress.com/b.gif?host=wordpress.tv&blog=5089392&post=21549&subd=wptv&ref=&feed=1" width="1" height="1" /><div><a href="http://wordpress.tv/2013/08/26/al-davis-after-the-install-3/"><img alt="Al Davis: After the Install" src="http://videos.videopress.com/OTMvdJ53/video-37ea15f1d5_std.original.jpg" width="160" height="120" /></a></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 26 Aug 2013 17:09:28 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"WordPress.tv";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:28;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:77:"WordPress.tv: Brewster Kahle: Internet Archive and Preserving WordPress Blogs";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wordpress.tv/?p=21510";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:94:"http://wordpress.tv/2013/08/26/brewster-kahle-internet-archive-and-preserving-wordpress-blogs/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:752:"<div id="v-WPFuoh55-1" class="video-player">
</div>
<br />  <a rel="nofollow" href="http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/21510/"><img alt="" border="0" src="http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/21510/" /></a> <img alt="" border="0" src="http://stats.wordpress.com/b.gif?host=wordpress.tv&blog=5089392&post=21510&subd=wptv&ref=&feed=1" width="1" height="1" /><div><a href="http://wordpress.tv/2013/08/26/brewster-kahle-internet-archive-and-preserving-wordpress-blogs/"><img alt="Brewster Kahle: Internet Archive and Preserving WordPress Blogs" src="http://videos.videopress.com/WPFuoh55/4-brewster-kahle-internet-archive-and-preserving-wordpress-blogs_std.original.jpg" width="160" height="120" /></a></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 26 Aug 2013 16:20:06 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"WordPress.tv";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:29;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:54:"Joseph: Salt Lake City WordPress Meetup This Wednesday";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"https://josephscott.org/?p=8983";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:88:"https://josephscott.org/archives/2013/08/salt-lake-city-wordpress-meetup-this-wednesday/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:460:"<p>The <a href="http://wpslc.com/">Salt Lake City WordPress Meetup</a> is happening this Wednesday, August 28th.  <a href="http://wpslc.com/blog/2013/08/21/august-28th-meetup-brian-petty-i-found-a-bug-what-next/">Brian Petty is going to talk</a> about how to report bugs and submit patches back to the WordPress project.</p>
<p>It will be at the MoJo Themes office in Draper at 7pm.  Check out <a href="http://wpslc.com/">wpslc.com</a> for all the details.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 26 Aug 2013 13:15:56 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Joseph Scott";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:30;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:104:"WordPress.tv: Александр Станкевич: Инфраструктура сети WordPress.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wordpress.tv/?p=21472";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:84:"http://wordpress.tv/2013/08/25/aleksandr-stankevic-wordpress-dot-com-infrastructure/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:727:"<div id="v-Jkxvy85K-1" class="video-player">
</div>
<br />  <a rel="nofollow" href="http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/21472/"><img alt="" border="0" src="http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/21472/" /></a> <img alt="" border="0" src="http://stats.wordpress.com/b.gif?host=wordpress.tv&blog=5089392&post=21472&subd=wptv&ref=&feed=1" width="1" height="1" /><div><a href="http://wordpress.tv/2013/08/25/aleksandr-stankevic-wordpress-dot-com-infrastructure/"><img alt="Александр Станкевич: Инфраструктура сети WordPress.com" src="http://videos.videopress.com/Jkxvy85K/video-7e2bb0c01c_scruberthumbnail_7.jpg" width="160" height="120" /></a></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 26 Aug 2013 06:54:19 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"WordPress.tv";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:31;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:87:"WordPress.tv: Andy Hayes: Website Critiques: How To Decide What Works And What To Ditch";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wordpress.tv/?p=21520";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:103:"http://wordpress.tv/2013/08/25/andy-hayes-website-critiques-how-to-decide-what-works-and-what-to-ditch/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:780:"<div id="v-9KgldZEa-1" class="video-player">
</div>
<br />  <a rel="nofollow" href="http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/21520/"><img alt="" border="0" src="http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/21520/" /></a> <img alt="" border="0" src="http://stats.wordpress.com/b.gif?host=wordpress.tv&blog=5089392&post=21520&subd=wptv&ref=&feed=1" width="1" height="1" /><div><a href="http://wordpress.tv/2013/08/25/andy-hayes-website-critiques-how-to-decide-what-works-and-what-to-ditch/"><img alt="Andy Hayes: Website Critiques: How To Decide What Works And What To Ditch" src="http://videos.videopress.com/9KgldZEa/6-andy-hayes-website-critiques-how-to-decide-what-works-and-what-to-ditch_std.original.jpg" width="160" height="120" /></a></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 25 Aug 2013 15:25:10 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"WordPress.tv";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:32;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:56:"WordPress.tv: Zachary Brown: WordPress DevOps Power Hour";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wordpress.tv/?p=21524";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:73:"http://wordpress.tv/2013/08/25/zachary-brown-wordpress-devops-power-hour/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:696:"<div id="v-7OzGJqil-1" class="video-player">
</div>
<br />  <a rel="nofollow" href="http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/21524/"><img alt="" border="0" src="http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/21524/" /></a> <img alt="" border="0" src="http://stats.wordpress.com/b.gif?host=wordpress.tv&blog=5089392&post=21524&subd=wptv&ref=&feed=1" width="1" height="1" /><div><a href="http://wordpress.tv/2013/08/25/zachary-brown-wordpress-devops-power-hour/"><img alt="Zachary Brown: WordPress DevOps Power Hour" src="http://videos.videopress.com/7OzGJqil/03-zachary-brown-wordpress-devops-power-hour_scruberthumbnail_0.jpg" width="160" height="120" /></a></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 25 Aug 2013 13:50:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"WordPress.tv";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:33;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:94:"WordPress.tv: Matt Boynes: Rewrite Recipes: Exploring Advanced Permalink Structures By Example";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wordpress.tv/?p=21522";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:110:"http://wordpress.tv/2013/08/24/matt-boynes-rewrite-recipes-exploring-advanced-permalink-structures-by-example/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:808:"<div id="v-PKP1IgNR-1" class="video-player">
</div>
<br />  <a rel="nofollow" href="http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/21522/"><img alt="" border="0" src="http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/21522/" /></a> <img alt="" border="0" src="http://stats.wordpress.com/b.gif?host=wordpress.tv&blog=5089392&post=21522&subd=wptv&ref=&feed=1" width="1" height="1" /><div><a href="http://wordpress.tv/2013/08/24/matt-boynes-rewrite-recipes-exploring-advanced-permalink-structures-by-example/"><img alt="Matt Boynes: Rewrite Recipes: Exploring Advanced Permalink Structures By Example" src="http://videos.videopress.com/PKP1IgNR/02-matt-boynes-rewrite-recipes-exploring-advanced-permalink-structures-by-example_scruberthumbnail_0.jpg" width="160" height="120" /></a></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 24 Aug 2013 22:50:53 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"WordPress.tv";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:34;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:55:"WordPress.tv: Kronda Adair: WordPress DevOps Power Hour";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wordpress.tv/?p=21523";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:72:"http://wordpress.tv/2013/08/24/kronda-adair-wordpress-devops-power-hour/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:687:"<div id="v-MnWo1hjG-1" class="video-player">
</div>
<br />  <a rel="nofollow" href="http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/21523/"><img alt="" border="0" src="http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/21523/" /></a> <img alt="" border="0" src="http://stats.wordpress.com/b.gif?host=wordpress.tv&blog=5089392&post=21523&subd=wptv&ref=&feed=1" width="1" height="1" /><div><a href="http://wordpress.tv/2013/08/24/kronda-adair-wordpress-devops-power-hour/"><img alt="Kronda Adair: WordPress DevOps Power Hour" src="http://videos.videopress.com/MnWo1hjG/04-kronda-adair-wordpress-devops-power-hour_std.original.jpg" width="160" height="120" /></a></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 24 Aug 2013 13:28:55 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"WordPress.tv";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:35;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:63:"WordPress.tv: Maria Erb: How WordPressCan Save Higher Education";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wordpress.tv/?p=21536";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:80:"http://wordpress.tv/2013/08/23/maria-erb-how-wordpresscan-save-higher-education/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:711:"<div id="v-R49U9Qeb-1" class="video-player">
</div>
<br />  <a rel="nofollow" href="http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/21536/"><img alt="" border="0" src="http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/21536/" /></a> <img alt="" border="0" src="http://stats.wordpress.com/b.gif?host=wordpress.tv&blog=5089392&post=21536&subd=wptv&ref=&feed=1" width="1" height="1" /><div><a href="http://wordpress.tv/2013/08/23/maria-erb-how-wordpresscan-save-higher-education/"><img alt="Maria Erb: How WordPressCan Save Higher Education" src="http://videos.videopress.com/R49U9Qeb/03-maria-erb-how-wordpresscan-save-higher-education_std.original.jpg" width="160" height="120" /></a></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 23 Aug 2013 21:13:08 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"WordPress.tv";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:36;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:73:"WPTavern: Open Discussion On Guidelines Pertaining To Non WordCamp Events";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"http://www.wptavern.com/?p=8618";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:125:"http://feedproxy.google.com/~r/WordpressTavern/~3/hTBOFW6LoLo/open-discussion-on-guidelines-pertaining-to-non-wordcamp-events";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1662:"<p>There has been a new post published on the WordPress Events site that <a href="http://make.wordpress.org/events/2013/08/20/organizing-a-non-wordcamp/" title="http://make.wordpress.org/events/2013/08/20/organizing-a-non-wordcamp/">outlines a set of proposed guidelines</a> for non-WordCamp events that are created by previous WordCamp organizers. With at least two previous WordCamp organizers putting on their own events this year outside of the WordCamp name, these guidelines are necessary to make sure both events can coexist peacefully without causing confusion to WordCamp attendees. </p>
<p>First of all, I commend Andrea Middleton and the WordPress.org Events team for putting the proposal out into the open for discussion. Not too long ago, changes like the ones presented in the proposal would have just happened with no discussion and we&#8217;ve seen in the past that this is a recipe for disaster which ends up causing a rift in the community. So far, the discussion surrounding the guidelines has been calm and level-headed. Even Matt Mullenweg has participated in the conversation. </p>
<p>The proposed guidelines come across as a bunch of common sense to me. I especially like the fact that videos from non WordCamp events are encouraged to be shared on WordPress.tv as long as they meet the <a href="http://blog.wordpress.tv/submission-guidelines/" title="http://blog.wordpress.tv/submission-guidelines/">submission guidelines</a>. If you are a current, past, or future WordCamp organizer, be sure to give the guidelines a read and weigh in. </p>
<img src="http://feeds.feedburner.com/~r/WordpressTavern/~4/hTBOFW6LoLo" height="1" width="1" />";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 23 Aug 2013 20:22:50 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:6:"Jeffro";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:37;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:73:"WordPress.tv: Christina Elmore: From URL To ISBN: Making Books From Blogs";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wordpress.tv/?p=21534";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:89:"http://wordpress.tv/2013/08/23/christina-elmore-from-url-to-isbn-making-books-from-blogs/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:745:"<div id="v-b3mX5BqG-1" class="video-player">
</div>
<br />  <a rel="nofollow" href="http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/21534/"><img alt="" border="0" src="http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/21534/" /></a> <img alt="" border="0" src="http://stats.wordpress.com/b.gif?host=wordpress.tv&blog=5089392&post=21534&subd=wptv&ref=&feed=1" width="1" height="1" /><div><a href="http://wordpress.tv/2013/08/23/christina-elmore-from-url-to-isbn-making-books-from-blogs/"><img alt="Christina Elmore: From URL To ISBN: Making Books From Blogs" src="http://videos.videopress.com/b3mX5BqG/01-christina-elmore-from-url-to-isbn-making-books-from-blogs_scruberthumbnail_0.jpg" width="160" height="120" /></a></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 23 Aug 2013 19:43:49 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"WordPress.tv";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:38;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:58:"WPTavern: Details Behind The WordPress Jobs Board Redesign";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"http://www.wptavern.com/?p=8606";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:110:"http://feedproxy.google.com/~r/WordpressTavern/~3/bfFRfLUm4VM/details-behind-the-wordpress-jobs-board-redesign";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:7472:"<p>The official <a href="http://jobs.wordpress.net/" title="http://jobs.wordpress.net/">WordPress Job board</a> was <a href="http://make.wordpress.org/meta/2013/07/17/seeking-2-moderators-for-jobs-wordpress-net/" title="http://make.wordpress.org/meta/2013/07/17/seeking-2-moderators-for-jobs-wordpress-net/">recently relaunched</a> with a brand new design. Considering the <a href="http://weblogtoolscollection.com/archives/2007/07/27/wordpress-jobs/" title="http://weblogtoolscollection.com/archives/2007/07/27/wordpress-jobs/">site has existed since 2007</a> and has not seen very much in the way of upgrades since then, I thought it would be interesting to hear from Scott Reilly and Mel Choyce if there were any difficulties upgrading the site. Mel was involved in the discussions and design portions of the project while Scott did much of the implementation. <span id="more-8606"></span></p>
<p><strong>What were some of the challenges upgrading from the previous design?</strong></p>
<p><strong>Mel Choyce</strong> &#8211; I think one of the biggest challenges we faced was trying to bring the site up to standards with the evolving WordPress.org branding. The old site just didn&#8217;t feel like it was officially sanctioned, which I think caused some trust issues. When I looked at it, I didn&#8217;t really see WordPress. I really approached the design with the concept of, how can we make this feel more like WordPress? How can we make this look more official?</p>
<p>Another part we struggled with was updating the categories. The old categories were a little vague and generic, so we tried to tighten those up to make it easier for job posters to appropriately categorize their jobs. </p>
<div id="attachment_8607" class="wp-caption aligncenter"><a href="http://i2.wp.com/www.wptavern.com/wp-content/uploads/2013/08/WPJobsBoardVersion1.jpg" rel="thumbnail"><img src="http://i2.wp.com/www.wptavern.com/wp-content/uploads/2013/08/WPJobsBoardVersion1.jpg?resize=500%2C236" alt="WordPress Jobs Board Old Design" class="size-large wp-image-8607" /></a><p class="wp-caption-text">The Old Jobs Board Design</p></div>
<div id="attachment_8608" class="wp-caption aligncenter"><a href="http://i2.wp.com/www.wptavern.com/wp-content/uploads/2013/08/WPJobsBoardVersion2.jpg" rel="thumbnail"><img src="http://i0.wp.com/www.wptavern.com/wp-content/uploads/2013/08/WPJobsBoardVersion2.jpg?resize=500%2C287" alt="WordPress Jobs Board New Design" class="size-large wp-image-8608" /></a><p class="wp-caption-text">New Jobs Board Design</p></div>
<p><strong>Scott Reilly</strong> &#8211; From the technical side of things, for the most part we reimplemented the entire site, keeping mostly just the data. Even then, we migrated and massaged some of the data in the process. But all in all, the technical implementation was fairly straightforward. The biggest challenges were mostly in coming up with a design (Mel) and then forming a team around the project. Heretofore, Mark Ghosh had been pretty much running the site singlehandedly, which was a monumental effort. This included the custom code to run the site as well as the daily moderation of job postings. So we put out the call for volunteer moderators and began to formalize the guidelines.</p>
<p><strong>One of the biggest differences between the two designs is the addition of a sidebar of icons that symbolize different position types. By the way, those icons look familiar. Was this approach considered the best way to easily dig into all of the jobs openings available or is this just one method you&#8217;re trying?</strong></p>
<p><strong>Mel Choyce</strong> &#8211; I&#8217;m not totally sure what you&#8217;re asking? We chose a vertical navigation bar to make it easier to scan for categories. The previous design had a horizontal navigation bar, and there were so many categories that it was just kind of hard to quickly look through it. </p>
<p>We ended up borrowing heavily from the MP6 aesthetic, so the inclusion of icons not only helped reinforce the brand, but also subtly reinforced the meaning of each category. I had made some icons, but they lacked finesse and polish, so I asked Ben Dunkle (lead icon designer for WordPress.org) to play around with some different ideas for each category. I think they ended up pretty slick.</p>
<div id="attachment_8610" class="wp-caption aligncenter"><a href="http://i0.wp.com/www.wptavern.com/wp-content/uploads/2013/08/DashIcons.jpg" rel="thumbnail"><img src="http://i2.wp.com/www.wptavern.com/wp-content/uploads/2013/08/DashIcons.jpg?resize=462%2C268" alt="Dashicons" class="size-full wp-image-8610" /></a><p class="wp-caption-text">Dashicons &#8211; Which One Is The Hamburger Menu Icon?</p></div>
<p><strong>Scott Reilly</strong> &#8211; The icons are Dashicons: <a href="http://melchoyce.github.io/dashicons/" title="http://melchoyce.github.io/dashicons/">http://melchoyce.github.io/dashicons/</a>, some of which were tweaked or custom-made for the site. While I wasn&#8217;t involved in the primary design itself, the sidebar of job types is a better presentation than the block of links that appeared at the top of the page. As Mel said, the use of the icons help reinforce the job types and branding, and it gives the site some graphical pizzazz.</p>
<p><strong>Was the site ever powered by bbPress, or is it entirely driven by WordPress?</strong></p>
<p><strong>Scott Reilly</strong> &#8211; I can only speak definitively to the previous and current incarnations of the site, but there isn&#8217;t any current use of bbPress nor have I seen any indication that bbPress ever powered any part of the site. The site is currently solely powered by WordPress.</p>
<p><strong>What other enhancements do you have in store for the site in the near future?</strong></p>
<p><strong>Mel Choyce</strong></p>
<p>The mantra for stage one of the redesign was get something done and ship it. Now that we&#8217;ve pushed version one out the door, we&#8217;ve started discussing and working on future enhancements. One of the first things we&#8217;re doing is working on applying better responsive styles. We&#8217;ve also talked about throwing new jobs into a single table on the homepage, instead of listing per category, but we haven&#8217;t really decided on anything yet. It&#8217;s an ongoing WIP.</p>
<p><strong>Scott Reilly</strong> &#8211; Our primary goal and focus has been to get the new design launched. We managed just about everything we wanted to include and then some, having kept our goals modest. We still need to make a few tweaks to get it fully mobile-friendly. We&#8217;ll be releasing the theme soon via the meta.svn repository (also viewable at: <a href="http://meta.trac.wordpress.org/browser/" title="http://meta.trac.wordpress.org/browser/">http://meta.trac.wordpress.org/browser/</a>) as part of our efforts to open source the code of dotorg. We&#8217;re actually open to community requests via trac tickets at <a href="http://meta.trac.wordpress.org/report/1" title="http://meta.trac.wordpress.org/report/1">http://meta.trac.wordpress.org/report/1</a> (there&#8217;s a jobs.wordpress.net component) and eventually community patches.</p>
<h2>What Does Mark Think?</h2>
<p>After the announcement was published of the redesign, I sent an email to Mark Ghosh to get his thoughts. He approved of the new look and considered it a worthy upgrade. </p>
<img src="http://feeds.feedburner.com/~r/WordpressTavern/~4/bfFRfLUm4VM" height="1" width="1" />";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 22 Aug 2013 22:57:41 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:6:"Jeffro";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:39;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:85:"WordPress.tv: Grant Landram: Creating a Better WordPress Admin Experience for Clients";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wordpress.tv/?p=21521";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:102:"http://wordpress.tv/2013/08/22/grant-landram-creating-a-better-wordpress-admin-experience-for-clients/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:777:"<div id="v-FyUM9x2l-1" class="video-player">
</div>
<br />  <a rel="nofollow" href="http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/21521/"><img alt="" border="0" src="http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/21521/" /></a> <img alt="" border="0" src="http://stats.wordpress.com/b.gif?host=wordpress.tv&blog=5089392&post=21521&subd=wptv&ref=&feed=1" width="1" height="1" /><div><a href="http://wordpress.tv/2013/08/22/grant-landram-creating-a-better-wordpress-admin-experience-for-clients/"><img alt="Grant Landram: Creating a Better WordPress Admin Experience for Clients" src="http://videos.videopress.com/FyUM9x2l/01-grant-landram-creating-a-better-wordpress-admin-experience-for-clients_std.original.jpg" width="160" height="120" /></a></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 22 Aug 2013 18:50:08 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"WordPress.tv";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:40;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:97:"WordPress.tv: Matthew Eppelsheimer: Checklists: A Path To Mistake-Free Development And Publishing";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wordpress.tv/?p=21509";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:113:"http://wordpress.tv/2013/08/22/matthew-eppelsheimer-checklists-a-path-to-mistake-free-development-and-publishing/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:810:"<div id="v-shw9WAXO-1" class="video-player">
</div>
<br />  <a rel="nofollow" href="http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/21509/"><img alt="" border="0" src="http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/21509/" /></a> <img alt="" border="0" src="http://stats.wordpress.com/b.gif?host=wordpress.tv&blog=5089392&post=21509&subd=wptv&ref=&feed=1" width="1" height="1" /><div><a href="http://wordpress.tv/2013/08/22/matthew-eppelsheimer-checklists-a-path-to-mistake-free-development-and-publishing/"><img alt="Matthew Eppelsheimer: Checklists: A Path To Mistake-Free Development And Publishing" src="http://videos.videopress.com/shw9WAXO/2-matthew-eppelsheimer-checklists-a-path-to-mistake-free-development-and-publishing_std.original.jpg" width="160" height="120" /></a></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 22 Aug 2013 18:39:40 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"WordPress.tv";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:41;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:54:"WPTavern: Dashboard Usage Survey Results Now Available";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"http://www.wptavern.com/?p=8591";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:106:"http://feedproxy.google.com/~r/WordpressTavern/~3/zu6Ufr1o9yQ/dashboard-usage-survey-results-now-available";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:6768:"<p>Dave Martin also known as Lessbloat has <a title="http://make.wordpress.org/ui/2013/08/21/3-8-dashboard-plugin/" href="http://make.wordpress.org/ui/2013/08/21/3-8-dashboard-plugin/">published the results</a> from the Dashboard survey. There were 438 responses which is a good sample to start from but Dave mentions that the survey has biased results as most of the people who participated were developers. Knowing that the majority of responses were from the developer community, the results don&#8217;t surprise me one bit.</p>
<p>Out of 416 answers, when asked <em>Which sections of the Dashboard do you never use (and think should go away?)</em> Other WordPress News took first place with 79% of the vote with QuickPress a very close second at 78% they were within 3 votes of each other. WordPress Blog, Plugins, and Incoming Links were generally close to taking the third spot. I would have thought that the Welcome Screen would have the least amount of votes to be removed but the Recent Comments widget claimed that position. <span id="more-8591"></span></p>
<p><a href="http://i0.wp.com/www.wptavern.com/wp-content/uploads/2013/08/DashboardSurveyQuestion2Results.jpg" rel="thumbnail"><img class="aligncenter size-large wp-image-8592" alt="Question 2 Results For Dashboard Survey" src="http://i0.wp.com/www.wptavern.com/wp-content/uploads/2013/08/DashboardSurveyQuestion2Results.jpg?resize=500%2C217" /></a></p>
<p><strong>Question 3</strong> asked, <em>How often do you post with QuickPress</em>? it&#8217;s almost comical to see the response of <strong>Never</strong> take 92% of the vote.</p>
<p><a href="http://i1.wp.com/www.wptavern.com/wp-content/uploads/2013/08/DashboardSurveyQuestion3Results.jpg" rel="thumbnail"><img class="aligncenter size-large wp-image-8593" alt="Question 3 Results" src="http://i0.wp.com/www.wptavern.com/wp-content/uploads/2013/08/DashboardSurveyQuestion3Results.jpg?resize=500%2C120" /></a></p>
<p><strong>Question 4</strong> asked <em>What sort of modifications do you typically make to the Dashboard (for yourself or for clients), and why?</em> There is no illustration since the results are text-based but the CSV containing the responses is <a title="http://cl.ly/3f2y1e0T1o09" href="http://cl.ly/3f2y1e0T1o09">publicly available</a>. I browsed through the document and was not surprised at the amount of people who remove most of the Dashboard widgets or completely redesign the Dashboard to fit their project.</p>
<p><strong>Question 5</strong> asked <em>If you could wave a magic wand, what types of things would you show on the Dashboard?</em> These answers are also <a title="http://cl.ly/1H1b391L3N3Y" href="http://cl.ly/1H1b391L3N3Y">publicly available</a> as a CSV file and I thought were interesting. The majority of answers revolve around the idea of creating a Quicklinks Dashboard widget that would enable a quick way to accomplish common tasks. For example: <em>A widget called &#8220;I would like to&#8230;&#8221; with a list of common tasks (add new post/page/media/theme/plugin, moderate comments, etc.) that would take the user straight to that section of wp-admin;&#8221;</em> While you can&#8217;t access all tasks within the Dashboard, the Admin Bar already facilitates a quick way to create a new Post, Media, Page, User, Role, and if you have GravityForms installed, Forms. I wonder if the Admin bar is not being seen, is not being used, or simply isn&#8217;t the answer.</p>
<p>Stats were another popular suggestion for the Dashboard whether it was the stats that come with Jetpack or Google Analytics, a lot of people just want to see stats right on the Dashboard.</p>
<h2>My Thoughts:</h2>
<p>Taking into consideration that many of the survey respondents are developers and consultants, many of their answers correlate with what they commonly experience with clients. The issue I take with those responses is that I&#8217;m not a client. Reading over the survey responses, I get the feeling that people need a ton of hand holding to get anything done or to navigate anywhere within the WordPress back-end. Maybe that&#8217;s the case but not for me. Some people even suggested to just get rid of the entire Dashboard concept and just forward people to the post creation screen or the settings screen depending on the user role.</p>
<p>Personally, I think the Dashboard concept needs to be completely rethought. Not only thinking about how the current implementation can be improved, but also what is the Dashboard really supposed to accomplish? Let&#8217;s also dedicate some time and discussion in creating an all new Dashboard concept just to see where it goes.</p>
<p>The more I think about it, the more I&#8217;d like to see the Dashboard function just like the Dashboard in my car. Give me warnings or caution signs of things that don&#8217;t seem right such as a page or link that is causing 404 errors for people, the average page load on the site increasing to an unacceptable level, etc. The Right Now box in the current implementation is the most important meta box for me. I feel that if information such as what I see in the Unpublished Content meta box from Edit Flow and the Site Stats was combined into the Right Now box, it would be much more useful and cut down the number of metaboxes on the screen. I&#8217;d like to be able to use the Right Now box to view trends on the site as well as be able to act on those trends. In fact, let&#8217;s get rid of the Right Now box and just call the whole thing Dashboard. One metabox filled with all kinds of information. Not sure how well tabs would work here because one box would quickly get cluttered with <strong>TOO MUCH</strong> information. As a site administrator, I want to see all of the information I can. This wouldn&#8217;t work for other user roles. I&#8217;d like to see user roles with fewer capabilities get a slimmed down version of what&#8217;s presented on the Dashboard. I think this already occurs to an extent where certain links are inaccessible based on capabilities.</p>
<h2>Time To Get Involved:</h2>
<p>The Dashboard revamp will take place as a plugin similar to how MP6 was developed. If you are interested in working on this plugin, you&#8217;re encouraged to leave a comment on the <a title="http://make.wordpress.org/ui/2013/08/21/3-8-dashboard-plugin/" href="http://make.wordpress.org/ui/2013/08/21/3-8-dashboard-plugin/">announcement post</a>. I love the fact that there is a discussion taking place about a major facet of WordPress and furthermore, that development will take place in a plugin rather than in core itself. I&#8217;m really digging these changes in the development approach of WordPress.</p>
<img src="http://feeds.feedburner.com/~r/WordpressTavern/~4/zu6Ufr1o9yQ" height="1" width="1" />";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 22 Aug 2013 11:00:26 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:6:"Jeffro";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:42;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:52:"WPTavern: Photocrati Hires A Lead Happiness Engineer";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"http://www.wptavern.com/?p=8573";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:104:"http://feedproxy.google.com/~r/WordpressTavern/~3/wSWHHF_bTiI/photocrati-hires-a-lead-happiness-engineer";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3881:"<p><a href="http://i1.wp.com/www.wptavern.com/wp-content/uploads/2013/08/PhotocratiLogo.jpg" rel="thumbnail"><img src="http://i2.wp.com/www.wptavern.com/wp-content/uploads/2013/08/PhotocratiLogo.jpg?resize=164%2C39" alt="Photocrati Logo" class="alignright size-full wp-image-8588" /></a>Photocrati, the company behind NextGen Gallery has hired on a lead happiness engineer. Edward Caissie who is better known throughout the WordPress community as <a href="http://profiles.wordpress.org/cais" title="http://profiles.wordpress.org/cais">JellyBeen</a> was the person hired into the position. The hiring couldn&#8217;t have come at a better time considering how many people have <strong>NOT</strong> been happy with the latest version of the plugin which lead to the company <a href="http://www.wptavern.com/nextgen-gallery-creator-publishes-open-letter" title="http://www.wptavern.com/nextgen-gallery-creator-publishes-open-letter">publishing an open letter</a> to the community. I reached out to Edward to find out why he applied for the job and what his responsibilities will be. <span id="more-8573"></span></p>
<p><strong>Why did I decide to take on a job with Photocrati?</strong></p>
<p>Well, to be honest, I had been looking for a position with a WordPress-related company for some time and kept my eyes open for promising opportunities. The position as the Lead Happiness Engineer &#8211; NextGEN Gallery pretty much was made for me. I have over 20 years of Customer Service, 10+ years in web development, and I&#8217;ve spent the last five years or so honing my WordPress skills to a point where I was able to not only write themes and plugins but also help others to do the same. The job description just seem to hit all the points I was looking for as well.</p>
<p>I get to work online, which basically means I get to work from home, or the cottage, or a coffee shop &#8230; anywhere there is decent Internet. There is also opportunity to grow with Photocrati.</p>
<p><strong>In the midst of all the hoopla surrounding the latest release of NextGen Gallery, what will you be doing to calm down all of the upset people who have broken sites due to the update?</strong></p>
<p>The thing is, we started talking back in February; long before any of the recent issues with NextGEN 2.0.x came to light. So I am on board with Photocrati to primarily help with Support. Mostly for paying customers but also for support (to a certain extent) of the free version of the NextGEN Gallery plugin as well. The opportunity to work with the developers is always there and as Photocrati grows more opportunities may become available as well.</p>
<p>Most of my primary goals and fairly much most of my first days/weeks will be supporting customers and helping to get NextGEN to a much more stable release. I&#8217;ll be doing whatever I can to help out the customers, but to be quite honest NextGEN Gallery is a very large and quite complex plugin and when I am not helping customers I am delving into the code to learn its workings as well as offer any assistance and/or enhancements/improvements I find.</p>
<p><strong>Is the position equal to that of the Automattic happiness engineer where your primary goal is to make customers happy?</strong></p>
<p>Essentially, the &#8220;Happiness Engineer&#8221; part of the title is derived from Automattic&#8217;s ideals but being a much smaller organization the role definition is probably a bit more encompassing than what Automattic&#8217;s might be.</p>
<p><strong>Edward has been a long-standing member of not only the WordPress community but of the WPTavern community as well. I congratulate him on getting a job he is happy with. If the lead happiness engineer is not happy, how would he be able to spread happiness to customers?</strong></p>
<img src="http://feeds.feedburner.com/~r/WordpressTavern/~4/wSWHHF_bTiI" height="1" width="1" />";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 21 Aug 2013 21:44:08 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:6:"Jeffro";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:43;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:104:"WPTavern: The Daily Plugin – System Snapshots, Folder Slider, Harmonia, Content Blocks, String Locator";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"http://www.wptavern.com/?p=8511";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:148:"http://feedproxy.google.com/~r/WordpressTavern/~3/SAAiZagoHq0/the-daily-plugin-system-snapshots-folder-slider-harmonia-content-blocks-string-locator";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:5917:"<p>It&#8217;s Wednesday which means it&#8217;s hump day and the week-end is in sight! Today, we&#8217;ll take a look at plugins like <strong>System Snapshot Report, Folder Slider, Harmonia, Content Blocks, String Locator and Export User Data</strong>. As always, make sure you backup and test on a staging site before taking any of these plugins live. We highlight these plugins as applications of interest and not an endorsement or official review. Let&#8217;s get plugged in!<br />
<span id="more-8511"></span></p>
<p><a href="http://www.wptavern.com/wp-content/uploads/2013/08/DailyPlugin-08212013.mp3">http://www.wptavern.com/wp-content/uploads/2013/08/DailyPlugin-08212013.mp3</a><br />
<br /><a href="http://i0.wp.com/www.wptavern.com/wp-content/uploads/2013/08/systeminfo.png" rel="thumbnail"><img class="alignleft size-thumbnail wp-image-8528" alt="System Snapshot" src="http://i2.wp.com/www.wptavern.com/wp-content/uploads/2013/08/systeminfo.png?resize=150%2C150" /></a><a title="System Snapshot Report" href="http://wordpress.org/plugins/system-snapshot-report/" target="_blank">System Snapshot Report</a> is a simple admin only plugin that provides a boatload of data about the server and related diagnostics. It provides you with quick-glance data that you can use to troubleshoot any issues you may be having with a WordPress installation. Data output includes version information for WordPress, PHP info, how your posts are displayed, how many users are active, etc. Essentially this is an all in one diagnostic and auditing tool that provides an entire snapshot of your entire WordPress operating environment. I&#8217;ve had plugins that provide some of this data, but this is the most comprehensive solution to show me all of the data I could possibly need to learn all about the internal structure of a unique WordPress installation.</p>
<p><a title="Folder Slider" href="http://wordpress.org/plugins/folder-slider/" target="_blank">Folder Slider</a> presents an alternative to the standard slider input. Generally sliders operate as being fed from either the Featured Image or as a separate slide management area within the slider plugin settings. This particular plugin is unique in that it instead pulls from a folder of images stored online to create the sliders. A basic set of transitions and options apply that allow you to present the images in a clean and aesthetically pleasing way. I&#8217;ve grown to appreciate plugins that feed directly from folders. Sometimes you just don&#8217;t need the extra management or setup that&#8217;s required when you simply want to display a slider of images without all the bells and whistles. This is a good no-frills option that can be updated simply by replacing the files in a folder via FTP.</p>
<p><a title="Harmonia Inline MP3 Player" href="http://wordpress.org/plugins/harmonia/" target="_blank">Harmonia</a> is a very interesting plugin that takes the new 3.6 inline player a bit further. This plugin finds all mp3 links in your content area and replaces the links with an inline audio player, allowing for instant listening. I like plugins that take all of the coding out of the post process, even if the coding is just a shortcode. When plugins like this come along, it makes it so much easier for WordPress novices to expand their content reach without requiring a speck of code. The player is in need of some more customization options, but it worked well for me in my staging tests thus far.</p>
<p><a title="Content Blocks" href="http://wordpress.org/plugins/wp-content-blocks/" target="_blank">Content Blocks</a> is a mystery plugin from the wordpressdotorg team that is labeled as &#8220;<em>exploratory</em>&#8220;. This has me intrigued as I hope it does for you as well. I have no idea what it does or how it will work, but I&#8217;m going to find out. I can&#8217;t wait to see what&#8217;s inside the black box.</p>
<p><a title="String Locator" href="http://wordpress.org/plugins/string-locator/" target="_blank">String Locator</a> is something that I&#8217;ve been waiting for, for a long time. It performs a site-wide search of your themes and plugins for a specific string. I can&#8217;t tell you how many times I&#8217;ve been editing a theme or CSS file and missed at least one other instance that I needed to change, but could not locate. This plugin solves that problem by providing an easy to use search function to find all those needles in your theme&#8217;s haystack. It&#8217;s also good for spotting altered or malicious code that may appear from nowhere.</p>
<p><a title="Export User Data" href="http://wordpress.org/plugins/export-user-data/" target="_blank">Export User Data</a> gives you the option to export all of your user data into an Excel sheet for offline viewing. It includes options for exporting your users by role, a range of registration dates and usermeta options. It can export in both CSV and Excel formats. Data that can be exported also includes BuddyPress and bbPress profile data. I recently exported the BuddyPress profile data on a membership site run by a client. We then took the data to invite everyone on the site to connect to the site author on LinkedIn. Though it&#8217;s just one simple use, it is nice to have a full export capability that is not a full database.</p>
<p>That&#8217;ll do &#8216;er for today&#8217;s plugin bonanza. Make sure you stop back here tomorrow for more of the plugins that could change your life, or at least your reading habits. As always you can contact me on Twitter <a title="Marcus Couch on Twitter" href="https://twitter.com/marcuscouch">@marcuscouch</a> or here on <a title="The Daily Plugin for 08-19-2013" href="http://wptavern.com/the-daily-plugin-wordpress-radio-system-snapshots-folder-slider-harmonia-content-blocks-string-locator">WPTavern</a>.</p>
<img src="http://feeds.feedburner.com/~r/WordpressTavern/~4/SAAiZagoHq0" height="1" width="1" />";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 21 Aug 2013 20:34:08 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Marcus Couch";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:44;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:61:"WordPress.tv: Bob Dunn: Making Your WordPress Knowledge Stick";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wordpress.tv/?p=21511";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:78:"http://wordpress.tv/2013/08/21/bob-dunn-making-your-wordpress-knowledge-stick/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:704:"<div id="v-EL0Y8QKK-1" class="video-player">
</div>
<br />  <a rel="nofollow" href="http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/21511/"><img alt="" border="0" src="http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/21511/" /></a> <img alt="" border="0" src="http://stats.wordpress.com/b.gif?host=wordpress.tv&blog=5089392&post=21511&subd=wptv&ref=&feed=1" width="1" height="1" /><div><a href="http://wordpress.tv/2013/08/21/bob-dunn-making-your-wordpress-knowledge-stick/"><img alt="Bob Dunn: Making Your WordPress Knowledge Stick" src="http://videos.videopress.com/EL0Y8QKK/5-bob-dunn-making-your-wordpress-knowledge-stick_std.original.jpg" width="160" height="120" /></a></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 21 Aug 2013 17:29:57 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"WordPress.tv";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:45;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:113:"WordPress.tv: Геннадий Ковшенин: Автоматизация тестирования в WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wordpress.tv/?p=21562";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:80:"http://wordpress.tv/2013/08/21/gennady-kovshenin-automated-testing-in-wordpress/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:733:"<div id="v-PEeFKRNG-1" class="video-player">
</div>
<br />  <a rel="nofollow" href="http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/21562/"><img alt="" border="0" src="http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/21562/" /></a> <img alt="" border="0" src="http://stats.wordpress.com/b.gif?host=wordpress.tv&blog=5089392&post=21562&subd=wptv&ref=&feed=1" width="1" height="1" /><div><a href="http://wordpress.tv/2013/08/21/gennady-kovshenin-automated-testing-in-wordpress/"><img alt="Геннадий Ковшенин: Автоматизация тестирования в WordPress" src="http://videos.videopress.com/PEeFKRNG/video-693a0a2bb0_scruberthumbnail_27.jpg" width="160" height="120" /></a></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 21 Aug 2013 07:15:35 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"WordPress.tv";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:46;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:37:"Matt: Using Publishing To Push Change";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:21:"http://ma.tt/?p=42957";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:53:"http://ma.tt/2013/08/using-publishing-to-push-change/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:260:"<p>Rachael Chong has an article on Fast Company Co.exist <a href="http://www.fastcoexist.com/3015907/generosity-series/the-cofounder-of-wordpress-on-using-publishing-to-push-change">that includes my thoughts on giving, charity, and impact in the world</a>.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 21 Aug 2013 07:05:35 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Matt";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:47;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:111:"WordPress.tv: Austin Gunter: Lean Product Development – 4 Steps to Build Something Your Customers Want to Buy";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wordpress.tv/?p=21535";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:124:"http://wordpress.tv/2013/08/20/austin-gunter-lean-product-development-4-steps-to-build-something-your-customers-want-to-buy/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:854:"<div id="v-fRmJ98kA-1" class="video-player">
</div>
<br />  <a rel="nofollow" href="http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/21535/"><img alt="" border="0" src="http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/21535/" /></a> <img alt="" border="0" src="http://stats.wordpress.com/b.gif?host=wordpress.tv&blog=5089392&post=21535&subd=wptv&ref=&feed=1" width="1" height="1" /><div><a href="http://wordpress.tv/2013/08/20/austin-gunter-lean-product-development-4-steps-to-build-something-your-customers-want-to-buy/"><img alt="Austin Gunter: Lean Product Development – 4 Steps to Build Something Your Customers Want to Buy" src="http://videos.videopress.com/fRmJ98kA/02-austin-gunter-lean-product-development-e28093-4-steps-to-build-something-your-customers-want-to-buy_std.original.jpg" width="160" height="120" /></a></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 20 Aug 2013 19:30:29 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"WordPress.tv";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:48;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:51:"WordPress.tv: Jen Mylo: The Only Constant Is Change";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wordpress.tv/?p=21508";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:68:"http://wordpress.tv/2013/08/20/jen-mylo-the-only-constant-is-change/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:674:"<div id="v-kQANrLn2-1" class="video-player">
</div>
<br />  <a rel="nofollow" href="http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/21508/"><img alt="" border="0" src="http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/21508/" /></a> <img alt="" border="0" src="http://stats.wordpress.com/b.gif?host=wordpress.tv&blog=5089392&post=21508&subd=wptv&ref=&feed=1" width="1" height="1" /><div><a href="http://wordpress.tv/2013/08/20/jen-mylo-the-only-constant-is-change/"><img alt="Jen Mylo: The Only Constant Is Change" src="http://videos.videopress.com/kQANrLn2/1-jen-mylo-the-only-constant-is-change_std.original.jpg" width="160" height="120" /></a></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 20 Aug 2013 17:37:31 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"WordPress.tv";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:49;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:37:"Jen Mylo: Automatticians at WordCamps";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:26:"http://jenmylo.com/?p=1900";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:58:"http://jenmylo.com/2013/08/20/automatticians-at-wordcamps/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:4732:"<p>Automattic is getting pretty big, almost 200 folks now, spread all over the world. That&#8217;s a lot of people we can send to WordCamps. I remember when it was mostly Matt and I splitting up who&#8217;d go to which events &#8212; how times have changed in five years!</p>
<p>Since we&#8217;re <a href="http://automattic.com/work-with-us/">hiring so enthusiastically</a>, my team is putting together a little guide for Automatticians on how to be an awesome Automattic representative at a WordCamp. I have a pretty giant list of tips and advice at the ready (you&#8217;d never have guessed, I know), but it occurs to me that non-Automatticians are probably the best people to ask about what we can do better when we pop in to a local WordCamp.</p>
<p>Here are some of the things from my giant list so far:</p>
<ul>
<li><strong>Don&#8217;t travel in packs.</strong> When there are a few or a bunch of Automatticians at an event, we tend to cluster together because we so rarely get to see each other &#8212; and we like each other &#8212; but it makes it less likely that we&#8217;ll meet new community members. 1. Because we&#8217;re too busy talking to each other to reach out to new people. 2. Because it&#8217;s intimidating for someone new to break into that group.</li>
<li><strong>Ask questions.</strong> A lot of WordCamp attendees will already know about Automattic, so while we should definitely be a resource for anyone interested in the company, the better use of time is getting to know the community members: who are they, how are they using WordPress, what would help them make their community more vibrant, who are the local independent consultants/themers/developers that we should know about?</li>
<li><strong>Help out.</strong> WordCamps are a lot of work. Automatticians aren&#8217;t visiting dignitaries &#8212; we&#8217;re getting paid to be there &#8212; and we should help out along with the locals, whether that&#8217;s taking a shift on the help desk, moving chairs, or passing out shirts.</li>
<li><strong>Be identifiable.</strong> Wearing the same WordPress t-shirt as everyone else is cool and all, but wearing a shirt that identifies the wearer as an Automattic employee, or a lanyard for the badge or something, would make it easier for people interested in talking about Automattic (especially people interested in jobs!) to find the Automatticians in the crowd.</li>
<li><strong>Carry cards.</strong> Saying &#8220;email me later&#8221; works better when the card with an email address is handed over at the same time. That said, getting community member contact info so the burden of follow-up isn&#8217;t on them is even better.</li>
<li><strong>Tweet It.</strong>  Using Twitter to let local followers know Automatticians are there is helpful. They might love to meet in person and talk about working at Automattic or contributing to the .org project and may not realize we&#8217;re there, especially if we&#8217;re not on the speaker list.</li>
<li><strong>Don&#8217;t hog the speaker slots.</strong> Yes, Automatticians are speakers you can rely on, and we do employ a lot of seriously smart people, but if the speaker roster is filled up with Automatticians, that doesn&#8217;t do a lot to help grow the experience of local folks, which is part of what WordCamps are about.</li>
<li><strong>Don&#8217;t be exclusionary.</strong> If planning to go off to an Automattician dinner or something after a long day of not traveling as a pack, don&#8217;t make those plans in front of other people, who will feel excluded (or might not understand what&#8217;s happening and might inadvertently show up later and crash the dinner); make <em>private</em> plans in <em>private</em> via Automattic channels. Even better, don&#8217;t go to private dinners, go to dinner with members of the local community.</li>
<li><strong>Be present.</strong> In sessions, don&#8217;t work on the laptop, just pay attention to the speaker. In the crowd, don&#8217;t focus on the phone, smile and meet new people. Be there for the whole event, don&#8217;t take off early or skip the second day. Show the local community that Automatticians are respectful and want to be there.</li>
</ul>
<p>What would you add? In the comments (or in an email to me at jenmylo/wordpress.org if you don&#8217;t want people to see what you think) make suggestions for what Automatticians can do to be awesome at WordCamps. It&#8217;s also okay to give examples of times when we have not been awesome. Learning from our mistakes is good, too. Thanks in advance for your help!</p>
<br />  <img alt="" border="0" src="http://stats.wordpress.com/b.gif?host=jenmylo.com&blog=45389656&post=1900&subd=jenmylo&ref=&feed=1" width="1" height="1" />";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 20 Aug 2013 16:24:14 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:8:"Jen Mylo";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";a:9:{s:6:"server";s:5:"nginx";s:4:"date";s:29:"Tue, 03 Sep 2013 18:25:31 GMT";s:12:"content-type";s:8:"text/xml";s:14:"content-length";s:6:"137192";s:10:"connection";s:5:"close";s:4:"vary";s:15:"Accept-Encoding";s:13:"last-modified";s:29:"Tue, 03 Sep 2013 18:15:15 GMT";s:4:"x-nc";s:11:"HIT lax 250";s:13:"accept-ranges";s:5:"bytes";}s:5:"build";s:14:"20111015034325";}', 'no'),
('1335', 'theme_mods_magazine', 'a:1:{s:18:"nav_menu_locations";a:2:{s:7:"primary";i:160;s:6:"footer";i:140;}}', 'yes'),
('1349', 'widget_latestpost', 'a:3:{i:2;a:14:{s:5:"title";s:31:"Новые публикации";s:7:"bgcolor";s:0:"";s:6:"tcolor";s:0:"";s:8:"category";s:1:"0";s:7:"orderby";s:4:"date";s:5:"order";s:4:"DESC";s:5:"count";s:1:"3";s:15:"show_post_title";s:2:"on";s:7:"tlength";s:2:"35";s:14:"show_post_time";s:2:"on";s:15:"show_post_thumb";s:2:"on";s:16:"show_post_rating";s:2:"on";s:6:"length";s:3:"100";s:8:"moretext";s:0:"";}i:3;a:14:{s:5:"title";s:10:"Новое";s:7:"bgcolor";s:0:"";s:6:"tcolor";s:0:"";s:8:"category";s:1:"0";s:7:"orderby";s:4:"date";s:5:"order";s:4:"DESC";s:5:"count";s:1:"3";s:15:"show_post_title";s:2:"on";s:7:"tlength";s:2:"20";s:14:"show_post_time";s:2:"on";s:15:"show_post_thumb";s:2:"on";s:16:"show_post_rating";s:2:"on";s:6:"length";s:3:"100";s:8:"moretext";s:6:"more»";}s:12:"_multiwidget";i:1;}', 'yes'),
('1350', 'widget_recentpostbycategory', 'a:3:{i:2;a:8:{s:5:"title";s:40:"Новости в технологиях";s:7:"bgcolor";s:0:"";s:6:"tcolor";s:0:"";s:8:"category";s:3:"147";s:7:"orderby";s:4:"date";s:5:"order";s:4:"DESC";s:5:"count";s:1:"3";s:7:"tlength";s:2:"35";}i:3;a:8:{s:5:"title";s:0:"";s:7:"bgcolor";s:6:"b8d09e";s:6:"tcolor";s:6:"FFFFFF";s:8:"category";s:1:"0";s:7:"orderby";s:4:"date";s:5:"order";s:4:"DESC";s:5:"count";s:0:"";s:7:"tlength";s:2:"35";}s:12:"_multiwidget";i:1;}', 'yes'),
('1353', 'widget_nmediagallerybox', 'a:2:{i:2;a:6:{s:11:"video_title";s:31:"Галерея новостей";s:10:"video_text";s:170:"<iframe width="100%" height="100%" src="//www.youtube.com/embed/pkRB5xC1Cw8" frameborder="0" allowfullscreen="" style="position: absolute; top: 0px; left: 0px;"></iframe>";s:10:"video_more";N;s:10:"video_link";N;s:8:"vbgcolor";s:0:"";s:7:"vtcolor";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
('1356', 'widget_magz_twitter_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
('1360', 'widget_socialmedia', 'a:3:{i:2;a:3:{s:5:"title";s:16:"Соц. сети";s:7:"bgcolor";s:0:"";s:6:"tcolor";s:0:"";}i:3;a:3:{s:5:"title";s:0:"";s:7:"bgcolor";s:6:"FF8C8C";s:6:"tcolor";s:6:"FFFFFF";}s:12:"_multiwidget";i:1;}', 'yes'),
('1722', '_transient_minimalthemes_wp-list-themes', 'O:8:"stdClass":1:{s:14:"wp-list-themes";a:1:{i:0;O:8:"stdClass":6:{s:7:"item_id";s:7:"4789838";s:9:"item_name";s:47:"Realia - Responsive Real Estate WordPress Theme";s:10:"theme_name";s:6:"Realia";s:11:"author_name";s:8:"Aviators";s:7:"version";s:5:"2.3.2";s:11:"description";s:38:"Responsive Real Estate WordPress Theme";}}}', 'no'),
('1361', 'cfTwitterToken', 'AAAAAAAAAAAAAAAAAAAAAHCDSAAAAAAA8F1Xj58qr02B4WvPY1WYOwz1XdQ%3DVNaMhxvHFFi30IVhE1ZPvYuWUoocx1KHto6FsGyH0', 'yes'),
('1359', 'widget_tag_cloud', 'a:3:{i:2;a:2:{s:5:"title";s:8:"Теги";s:8:"taxonomy";s:8:"post_tag";}i:3;a:2:{s:5:"title";s:10:"Метки";s:8:"taxonomy";s:8:"post_tag";}s:12:"_multiwidget";i:1;}', 'yes'),
('1721', '_transient_timeout_minimalthemes_wp-list-themes', '1378233027', 'no'),
('1364', 'cfNumberOfFollowers', '180', 'yes'),
('1573', 'widget_top-rated', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
('1393', '_transient_timeout_9c3b3adbcf1aee20aaf05cb4b0119309', '1385846923', 'no'),
('1394', '_transient_9c3b3adbcf1aee20aaf05cb4b0119309', 'a:3:{s:3:"lat";d:-6.9502123999999998460452843573875725269317626953125;s:3:"lng";d:107.6833366999999981317159836180508136749267578125;s:7:"address";s:53:"Jalan Riung Purna Raya, Bandung, West Java, Indonesia";}', 'no'),
('1593', '_transient_timeout_3f97e634026e80adee0865e10d3426bd', '1385851348', 'no'),
('1594', '_transient_3f97e634026e80adee0865e10d3426bd', 'a:3:{s:3:"lat";d:-6.914744400000000013051248970441520214080810546875;s:3:"lng";d:107.6098111000000017156708054244518280029296875;s:7:"address";s:29:"Bandung, West Java, Indonesia";}', 'no'),
('1664', 'widget_links', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
('2158', 'gallery-category_children', 'a:0:{}', 'yes'),
('2507', '_transient_timeout_post_ratings_ip_cache', '1384283086', 'no'),
('2508', '_transient_post_ratings_ip_cache', 'a:10:{i:0;a:1:{i:0;s:12:"134.249.4.21";}i:1;a:1:{i:0;s:13:"95.132.72.255";}i:2;a:1:{i:0;s:14:"82.209.198.203";}i:3;a:1:{i:0;s:13:"109.87.72.177";}i:4;a:1:{i:0;s:13:"109.87.72.177";}i:5;a:1:{i:0;s:13:"91.149.169.25";}i:6;a:1:{i:0;s:12:"109.68.234.4";}i:7;a:1:{i:0;s:12:"80.83.249.65";}i:8;a:1:{i:0;s:15:"130.255.134.147";}i:9;a:1:{i:0;s:13:"94.51.209.126";}}', 'no'),
('4636', '_transient_random_seed', '35bbacfe86b14f32290815bdad10d074', 'yes'),
('12868', '_transient_timeout_cfTwitterFollowers', '1383144224', 'no'),
('12869', '_transient_cfTwitterFollowers', '180', 'no');


/**
   * --------------------------------------------------------
   * Dump Table `magazine__postmeta`
   * --------------------------------------------------------
**/
CREATE TABLE IF NOT EXISTS `magazine__postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM AUTO_INCREMENT=1163 DEFAULT CHARSET=utf8;

/* DATA Table `magazine__postmeta` */
INSERT INTO `magazine__postmeta` VALUES
('1', '2', '_wp_page_template', 'default'),
('3', '2', '_edit_lock', '1327990442:1'),
('4', '2', '_edit_last', '1'),
('1161', '408', 'votes', '1'),
('7', '11', '_wp_attached_file', '2012/01/104001_or.jpg'),
('8', '11', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"800";s:6:"height";s:3:"533";s:14:"hwstring_small";s:23:"height=''85'' width=''128''";s:4:"file";s:21:"2012/01/104001_or.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:3:{s:4:"file";s:21:"104001_or-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:21:"104001_or-300x199.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"199";}s:14:"post-thumbnail";a:3:{s:4:"file";s:21:"104001_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"large-feature";a:3:{s:4:"file";s:21:"104001_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"small-feature";a:3:{s:4:"file";s:21:"104001_or-450x300.jpg";s:5:"width";s:3:"450";s:6:"height";s:3:"300";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('9', '12', '_wp_attached_file', '2012/01/104002_or.jpg'),
('10', '12', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"800";s:6:"height";s:3:"572";s:14:"hwstring_small";s:23:"height=''91'' width=''128''";s:4:"file";s:21:"2012/01/104002_or.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:3:{s:4:"file";s:21:"104002_or-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:21:"104002_or-300x214.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"214";}s:14:"post-thumbnail";a:3:{s:4:"file";s:21:"104002_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"large-feature";a:3:{s:4:"file";s:21:"104002_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"small-feature";a:3:{s:4:"file";s:21:"104002_or-419x300.jpg";s:5:"width";s:3:"419";s:6:"height";s:3:"300";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('1160', '408', 'rating', '5'),
('12', '11', '_wp_attachment_image_alt', 'Как маленький автомобильчик стал большим достижением английского автопрома'),
('17', '17', '_wp_attached_file', '2012/01/103237_or1.jpg'),
('18', '17', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"800";s:6:"height";s:3:"580";s:14:"hwstring_small";s:23:"height=''92'' width=''128''";s:4:"file";s:22:"2012/01/103237_or1.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:3:{s:4:"file";s:22:"103237_or1-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:22:"103237_or1-300x217.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"217";}s:14:"post-thumbnail";a:3:{s:4:"file";s:22:"103237_or1-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"large-feature";a:3:{s:4:"file";s:22:"103237_or1-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"small-feature";a:3:{s:4:"file";s:22:"103237_or1-413x300.jpg";s:5:"width";s:3:"413";s:6:"height";s:3:"300";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('19', '18', '_wp_attached_file', '2012/01/103239_or.jpg'),
('20', '18', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"800";s:6:"height";s:3:"533";s:14:"hwstring_small";s:23:"height=''85'' width=''128''";s:4:"file";s:21:"2012/01/103239_or.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:3:{s:4:"file";s:21:"103239_or-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:21:"103239_or-300x199.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"199";}s:14:"post-thumbnail";a:3:{s:4:"file";s:21:"103239_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"large-feature";a:3:{s:4:"file";s:21:"103239_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"small-feature";a:3:{s:4:"file";s:21:"103239_or-450x300.jpg";s:5:"width";s:3:"450";s:6:"height";s:3:"300";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('22', '18', '_wp_attachment_image_alt', 'Что говорит цвет автомобиля о характере его владельца?'),
('27', '23', '_wp_attached_file', '2012/01/103119_or.jpg'),
('28', '23', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"800";s:6:"height";s:3:"532";s:14:"hwstring_small";s:23:"height=''85'' width=''128''";s:4:"file";s:21:"2012/01/103119_or.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:3:{s:4:"file";s:21:"103119_or-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:21:"103119_or-300x199.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"199";}s:14:"post-thumbnail";a:3:{s:4:"file";s:21:"103119_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"large-feature";a:3:{s:4:"file";s:21:"103119_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"small-feature";a:3:{s:4:"file";s:21:"103119_or-451x300.jpg";s:5:"width";s:3:"451";s:6:"height";s:3:"300";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('29', '24', '_wp_attached_file', '2012/01/103121_or.jpg'),
('30', '24', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"800";s:6:"height";s:3:"533";s:14:"hwstring_small";s:23:"height=''85'' width=''128''";s:4:"file";s:21:"2012/01/103121_or.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:3:{s:4:"file";s:21:"103121_or-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:21:"103121_or-300x199.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"199";}s:14:"post-thumbnail";a:3:{s:4:"file";s:21:"103121_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"large-feature";a:3:{s:4:"file";s:21:"103121_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"small-feature";a:3:{s:4:"file";s:21:"103121_or-450x300.jpg";s:5:"width";s:3:"450";s:6:"height";s:3:"300";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('32', '24', '_wp_attachment_image_alt', 'Как стать хорошим водителем'),
('36', '32', '_wp_attached_file', '2012/01/103054_or.jpg'),
('37', '32', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"800";s:6:"height";s:3:"532";s:14:"hwstring_small";s:23:"height=''85'' width=''128''";s:4:"file";s:21:"2012/01/103054_or.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:3:{s:4:"file";s:21:"103054_or-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:21:"103054_or-300x199.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"199";}s:14:"post-thumbnail";a:3:{s:4:"file";s:21:"103054_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"large-feature";a:3:{s:4:"file";s:21:"103054_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"small-feature";a:3:{s:4:"file";s:21:"103054_or-451x300.jpg";s:5:"width";s:3:"451";s:6:"height";s:3:"300";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('38', '33', '_wp_attached_file', '2012/01/103055_or.jpg'),
('39', '33', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"800";s:6:"height";s:3:"533";s:14:"hwstring_small";s:23:"height=''85'' width=''128''";s:4:"file";s:21:"2012/01/103055_or.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:3:{s:4:"file";s:21:"103055_or-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:21:"103055_or-300x199.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"199";}s:14:"post-thumbnail";a:3:{s:4:"file";s:21:"103055_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"large-feature";a:3:{s:4:"file";s:21:"103055_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"small-feature";a:3:{s:4:"file";s:21:"103055_or-450x300.jpg";s:5:"width";s:3:"450";s:6:"height";s:3:"300";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('41', '33', '_wp_attachment_image_alt', 'Чему удивиться в Детройте-2012?'),
('45', '36', '_wp_attached_file', '2012/01/102864_or.jpg'),
('46', '36', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"800";s:6:"height";s:3:"534";s:14:"hwstring_small";s:23:"height=''85'' width=''128''";s:4:"file";s:21:"2012/01/102864_or.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:3:{s:4:"file";s:21:"102864_or-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:21:"102864_or-300x200.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"200";}s:14:"post-thumbnail";a:3:{s:4:"file";s:21:"102864_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"large-feature";a:3:{s:4:"file";s:21:"102864_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"small-feature";a:3:{s:4:"file";s:21:"102864_or-449x300.jpg";s:5:"width";s:3:"449";s:6:"height";s:3:"300";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('47', '37', '_wp_attached_file', '2012/01/102865_or.jpg'),
('48', '37', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"800";s:6:"height";s:3:"532";s:14:"hwstring_small";s:23:"height=''85'' width=''128''";s:4:"file";s:21:"2012/01/102865_or.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:3:{s:4:"file";s:21:"102865_or-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:21:"102865_or-300x199.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"199";}s:14:"post-thumbnail";a:3:{s:4:"file";s:21:"102865_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"large-feature";a:3:{s:4:"file";s:21:"102865_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"small-feature";a:3:{s:4:"file";s:21:"102865_or-451x300.jpg";s:5:"width";s:3:"451";s:6:"height";s:3:"300";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('50', '36', '_wp_attachment_image_alt', 'Как пешеходу перейти дорогу и при этом остаться в живых?'),
('55', '41', '_wp_attached_file', '2012/01/102829_or.jpg'),
('56', '41', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"800";s:6:"height";s:3:"532";s:14:"hwstring_small";s:23:"height=''85'' width=''128''";s:4:"file";s:21:"2012/01/102829_or.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:3:{s:4:"file";s:21:"102829_or-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:21:"102829_or-300x199.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"199";}s:14:"post-thumbnail";a:3:{s:4:"file";s:21:"102829_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"large-feature";a:3:{s:4:"file";s:21:"102829_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"small-feature";a:3:{s:4:"file";s:21:"102829_or-451x300.jpg";s:5:"width";s:3:"451";s:6:"height";s:3:"300";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('57', '42', '_wp_attached_file', '2012/01/102830_or.jpg'),
('58', '42', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"800";s:6:"height";s:3:"533";s:14:"hwstring_small";s:23:"height=''85'' width=''128''";s:4:"file";s:21:"2012/01/102830_or.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:3:{s:4:"file";s:21:"102830_or-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:21:"102830_or-300x199.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"199";}s:14:"post-thumbnail";a:3:{s:4:"file";s:21:"102830_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"large-feature";a:3:{s:4:"file";s:21:"102830_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"small-feature";a:3:{s:4:"file";s:21:"102830_or-450x300.jpg";s:5:"width";s:3:"450";s:6:"height";s:3:"300";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('60', '41', '_wp_attachment_image_alt', 'Женщина за рулем: кто против?'),
('64', '45', '_wp_attached_file', '2012/01/102731_or.jpg'),
('65', '45', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"800";s:6:"height";s:3:"533";s:14:"hwstring_small";s:23:"height=''85'' width=''128''";s:4:"file";s:21:"2012/01/102731_or.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:3:{s:4:"file";s:21:"102731_or-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:21:"102731_or-300x199.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"199";}s:14:"post-thumbnail";a:3:{s:4:"file";s:21:"102731_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"large-feature";a:3:{s:4:"file";s:21:"102731_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"small-feature";a:3:{s:4:"file";s:21:"102731_or-450x300.jpg";s:5:"width";s:3:"450";s:6:"height";s:3:"300";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('66', '46', '_wp_attached_file', '2012/01/102732_or.jpg'),
('67', '46', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"800";s:6:"height";s:3:"533";s:14:"hwstring_small";s:23:"height=''85'' width=''128''";s:4:"file";s:21:"2012/01/102732_or.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:3:{s:4:"file";s:21:"102732_or-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:21:"102732_or-300x199.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"199";}s:14:"post-thumbnail";a:3:{s:4:"file";s:21:"102732_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"large-feature";a:3:{s:4:"file";s:21:"102732_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"small-feature";a:3:{s:4:"file";s:21:"102732_or-450x300.jpg";s:5:"width";s:3:"450";s:6:"height";s:3:"300";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('69', '45', '_wp_attachment_image_alt', 'Ремонт радиатора. В каких случаях он необходим?'),
('74', '50', '_wp_attached_file', '2012/01/102677_or.jpg'),
('75', '50', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"800";s:6:"height";s:3:"533";s:14:"hwstring_small";s:23:"height=''85'' width=''128''";s:4:"file";s:21:"2012/01/102677_or.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:3:{s:4:"file";s:21:"102677_or-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:21:"102677_or-300x199.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"199";}s:14:"post-thumbnail";a:3:{s:4:"file";s:21:"102677_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"large-feature";a:3:{s:4:"file";s:21:"102677_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"small-feature";a:3:{s:4:"file";s:21:"102677_or-450x300.jpg";s:5:"width";s:3:"450";s:6:"height";s:3:"300";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('76', '51', '_wp_attached_file', '2012/01/102678_or.jpg'),
('77', '51', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"800";s:6:"height";s:3:"533";s:14:"hwstring_small";s:23:"height=''85'' width=''128''";s:4:"file";s:21:"2012/01/102678_or.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:3:{s:4:"file";s:21:"102678_or-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:21:"102678_or-300x199.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"199";}s:14:"post-thumbnail";a:3:{s:4:"file";s:21:"102678_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"large-feature";a:3:{s:4:"file";s:21:"102678_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"small-feature";a:3:{s:4:"file";s:21:"102678_or-450x300.jpg";s:5:"width";s:3:"450";s:6:"height";s:3:"300";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('79', '50', '_wp_attachment_image_alt', 'Стук в двигателе - что делать?'),
('83', '54', '_wp_attached_file', '2012/01/102645_or.jpg'),
('84', '54', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"800";s:6:"height";s:3:"544";s:14:"hwstring_small";s:23:"height=''87'' width=''128''";s:4:"file";s:21:"2012/01/102645_or.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:3:{s:4:"file";s:21:"102645_or-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:21:"102645_or-300x204.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"204";}s:14:"post-thumbnail";a:3:{s:4:"file";s:21:"102645_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"large-feature";a:3:{s:4:"file";s:21:"102645_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"small-feature";a:3:{s:4:"file";s:21:"102645_or-441x300.jpg";s:5:"width";s:3:"441";s:6:"height";s:3:"300";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('85', '55', '_wp_attached_file', '2012/01/102646_or.jpg'),
('86', '55', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"800";s:6:"height";s:3:"594";s:14:"hwstring_small";s:23:"height=''96'' width=''128''";s:4:"file";s:21:"2012/01/102646_or.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:3:{s:4:"file";s:21:"102646_or-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:21:"102646_or-300x222.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"222";}s:14:"post-thumbnail";a:3:{s:4:"file";s:21:"102646_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"large-feature";a:3:{s:4:"file";s:21:"102646_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"small-feature";a:3:{s:4:"file";s:21:"102646_or-404x300.jpg";s:5:"width";s:3:"404";s:6:"height";s:3:"300";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('88', '55', '_wp_attachment_image_alt', 'Как продать автомобиль?'),
('92', '58', '_wp_attached_file', '2012/01/101717_or.jpg'),
('93', '58', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"800";s:6:"height";s:3:"533";s:14:"hwstring_small";s:23:"height=''85'' width=''128''";s:4:"file";s:21:"2012/01/101717_or.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:3:{s:4:"file";s:21:"101717_or-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:21:"101717_or-300x199.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"199";}s:14:"post-thumbnail";a:3:{s:4:"file";s:21:"101717_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"large-feature";a:3:{s:4:"file";s:21:"101717_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"small-feature";a:3:{s:4:"file";s:21:"101717_or-450x300.jpg";s:5:"width";s:3:"450";s:6:"height";s:3:"300";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('94', '59', '_wp_attached_file', '2012/01/101718_or.jpg'),
('95', '59', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"800";s:6:"height";s:3:"580";s:14:"hwstring_small";s:23:"height=''92'' width=''128''";s:4:"file";s:21:"2012/01/101718_or.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:3:{s:4:"file";s:21:"101718_or-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:21:"101718_or-300x217.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"217";}s:14:"post-thumbnail";a:3:{s:4:"file";s:21:"101718_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"large-feature";a:3:{s:4:"file";s:21:"101718_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"small-feature";a:3:{s:4:"file";s:21:"101718_or-413x300.jpg";s:5:"width";s:3:"413";s:6:"height";s:3:"300";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('96', '58', '_wp_attachment_image_alt', 'Как вести машину в тумане?'),
('102', '63', '_wp_attached_file', '2012/01/100864_or.jpg'),
('103', '63', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"800";s:6:"height";s:3:"600";s:14:"hwstring_small";s:23:"height=''96'' width=''128''";s:4:"file";s:21:"2012/01/100864_or.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:3:{s:4:"file";s:21:"100864_or-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:21:"100864_or-300x225.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"225";}s:14:"post-thumbnail";a:3:{s:4:"file";s:21:"100864_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"large-feature";a:3:{s:4:"file";s:21:"100864_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"small-feature";a:3:{s:4:"file";s:21:"100864_or-400x300.jpg";s:5:"width";s:3:"400";s:6:"height";s:3:"300";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('104', '64', '_wp_attached_file', '2012/01/100865_or.jpg'),
('105', '64', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"800";s:6:"height";s:3:"532";s:14:"hwstring_small";s:23:"height=''85'' width=''128''";s:4:"file";s:21:"2012/01/100865_or.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:3:{s:4:"file";s:21:"100865_or-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:21:"100865_or-300x199.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"199";}s:14:"post-thumbnail";a:3:{s:4:"file";s:21:"100865_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"large-feature";a:3:{s:4:"file";s:21:"100865_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"small-feature";a:3:{s:4:"file";s:21:"100865_or-451x300.jpg";s:5:"width";s:3:"451";s:6:"height";s:3:"300";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('106', '64', '_wp_attachment_image_alt', 'Украли номера с машины: что делать?'),
('111', '67', '_wp_attached_file', '2012/01/100072_or.jpg'),
('112', '67', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"800";s:6:"height";s:3:"600";s:14:"hwstring_small";s:23:"height=''96'' width=''128''";s:4:"file";s:21:"2012/01/100072_or.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:3:{s:4:"file";s:21:"100072_or-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:21:"100072_or-300x225.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"225";}s:14:"post-thumbnail";a:3:{s:4:"file";s:21:"100072_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"large-feature";a:3:{s:4:"file";s:21:"100072_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"small-feature";a:3:{s:4:"file";s:21:"100072_or-400x300.jpg";s:5:"width";s:3:"400";s:6:"height";s:3:"300";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('113', '68', '_wp_attached_file', '2012/01/100073_or.jpg'),
('114', '68', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"800";s:6:"height";s:3:"580";s:14:"hwstring_small";s:23:"height=''92'' width=''128''";s:4:"file";s:21:"2012/01/100073_or.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:3:{s:4:"file";s:21:"100073_or-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:21:"100073_or-300x217.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"217";}s:14:"post-thumbnail";a:3:{s:4:"file";s:21:"100073_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"large-feature";a:3:{s:4:"file";s:21:"100073_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"small-feature";a:3:{s:4:"file";s:21:"100073_or-413x300.jpg";s:5:"width";s:3:"413";s:6:"height";s:3:"300";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('116', '67', '_wp_attachment_image_alt', 'Кто виноват, если барахлит техника? Гремлины!'),
('120', '71', '_wp_attached_file', '2012/01/103646_or.jpg'),
('121', '71', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"800";s:6:"height";s:3:"480";s:14:"hwstring_small";s:23:"height=''76'' width=''128''";s:4:"file";s:21:"2012/01/103646_or.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:3:{s:4:"file";s:21:"103646_or-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:21:"103646_or-300x180.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"180";}s:14:"post-thumbnail";a:3:{s:4:"file";s:21:"103646_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"large-feature";a:3:{s:4:"file";s:21:"103646_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"small-feature";a:3:{s:4:"file";s:21:"103646_or-500x300.jpg";s:5:"width";s:3:"500";s:6:"height";s:3:"300";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('122', '72', '_wp_attached_file', '2012/01/103647_or.jpg'),
('123', '72', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"800";s:6:"height";s:3:"533";s:14:"hwstring_small";s:23:"height=''85'' width=''128''";s:4:"file";s:21:"2012/01/103647_or.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:3:{s:4:"file";s:21:"103647_or-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:21:"103647_or-300x199.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"199";}s:14:"post-thumbnail";a:3:{s:4:"file";s:21:"103647_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"large-feature";a:3:{s:4:"file";s:21:"103647_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"small-feature";a:3:{s:4:"file";s:21:"103647_or-450x300.jpg";s:5:"width";s:3:"450";s:6:"height";s:3:"300";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('125', '72', '_wp_attachment_image_alt', 'О чем могут рассказать «говорящие» фамилии?'),
('129', '76', '_wp_attached_file', '2012/01/103585_or.jpg'),
('130', '76', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"800";s:6:"height";s:3:"529";s:14:"hwstring_small";s:23:"height=''84'' width=''128''";s:4:"file";s:21:"2012/01/103585_or.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:3:{s:4:"file";s:21:"103585_or-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:21:"103585_or-300x198.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"198";}s:14:"post-thumbnail";a:3:{s:4:"file";s:21:"103585_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"large-feature";a:3:{s:4:"file";s:21:"103585_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"small-feature";a:3:{s:4:"file";s:21:"103585_or-453x300.jpg";s:5:"width";s:3:"453";s:6:"height";s:3:"300";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('131', '77', '_wp_attached_file', '2012/01/103586_or.jpg'),
('132', '77', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"800";s:6:"height";s:3:"538";s:14:"hwstring_small";s:23:"height=''86'' width=''128''";s:4:"file";s:21:"2012/01/103586_or.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:3:{s:4:"file";s:21:"103586_or-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:21:"103586_or-300x201.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"201";}s:14:"post-thumbnail";a:3:{s:4:"file";s:21:"103586_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"large-feature";a:3:{s:4:"file";s:21:"103586_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"small-feature";a:3:{s:4:"file";s:21:"103586_or-446x300.jpg";s:5:"width";s:3:"446";s:6:"height";s:3:"300";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('133', '78', '_wp_attached_file', '2012/01/103587_or.jpg'),
('134', '78', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"800";s:6:"height";s:3:"533";s:14:"hwstring_small";s:23:"height=''85'' width=''128''";s:4:"file";s:21:"2012/01/103587_or.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:3:{s:4:"file";s:21:"103587_or-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:21:"103587_or-300x199.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"199";}s:14:"post-thumbnail";a:3:{s:4:"file";s:21:"103587_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"large-feature";a:3:{s:4:"file";s:21:"103587_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"small-feature";a:3:{s:4:"file";s:21:"103587_or-450x300.jpg";s:5:"width";s:3:"450";s:6:"height";s:3:"300";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('135', '76', '_wp_attachment_image_alt', 'Заха Хадид. Что может женщина в современном мире?'),
('136', '77', '_wp_attachment_image_alt', 'Заха Хадид. Что может женщина в современном мире?'),
('141', '81', '_wp_attached_file', '2012/01/103377_or.jpg'),
('142', '81', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"800";s:6:"height";s:3:"533";s:14:"hwstring_small";s:23:"height=''85'' width=''128''";s:4:"file";s:21:"2012/01/103377_or.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:3:{s:4:"file";s:21:"103377_or-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:21:"103377_or-300x199.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"199";}s:14:"post-thumbnail";a:3:{s:4:"file";s:21:"103377_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"large-feature";a:3:{s:4:"file";s:21:"103377_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"small-feature";a:3:{s:4:"file";s:21:"103377_or-450x300.jpg";s:5:"width";s:3:"450";s:6:"height";s:3:"300";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('143', '82', '_wp_attached_file', '2012/01/103378_or.jpg'),
('144', '82', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"800";s:6:"height";s:3:"533";s:14:"hwstring_small";s:23:"height=''85'' width=''128''";s:4:"file";s:21:"2012/01/103378_or.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:3:{s:4:"file";s:21:"103378_or-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:21:"103378_or-300x199.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"199";}s:14:"post-thumbnail";a:3:{s:4:"file";s:21:"103378_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"large-feature";a:3:{s:4:"file";s:21:"103378_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"small-feature";a:3:{s:4:"file";s:21:"103378_or-450x300.jpg";s:5:"width";s:3:"450";s:6:"height";s:3:"300";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('145', '81', '_wp_attachment_image_alt', 'Откуда родом Марко Поло - из Венеции или Корчулы?'),
('150', '85', '_wp_attached_file', '2012/01/103290_or.jpg'),
('151', '85', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"794";s:6:"height";s:3:"600";s:14:"hwstring_small";s:23:"height=''96'' width=''128''";s:4:"file";s:21:"2012/01/103290_or.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:3:{s:4:"file";s:21:"103290_or-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:21:"103290_or-300x226.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"226";}s:14:"post-thumbnail";a:3:{s:4:"file";s:21:"103290_or-794x288.jpg";s:5:"width";s:3:"794";s:6:"height";s:3:"288";}s:13:"large-feature";a:3:{s:4:"file";s:21:"103290_or-794x288.jpg";s:5:"width";s:3:"794";s:6:"height";s:3:"288";}s:13:"small-feature";a:3:{s:4:"file";s:21:"103290_or-397x300.jpg";s:5:"width";s:3:"397";s:6:"height";s:3:"300";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('152', '86', '_wp_attached_file', '2012/01/103294_or.jpg'),
('153', '86', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"800";s:6:"height";s:3:"582";s:14:"hwstring_small";s:23:"height=''93'' width=''128''";s:4:"file";s:21:"2012/01/103294_or.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:3:{s:4:"file";s:21:"103294_or-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:21:"103294_or-300x218.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"218";}s:14:"post-thumbnail";a:3:{s:4:"file";s:21:"103294_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"large-feature";a:3:{s:4:"file";s:21:"103294_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"small-feature";a:3:{s:4:"file";s:21:"103294_or-412x300.jpg";s:5:"width";s:3:"412";s:6:"height";s:3:"300";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('154', '85', '_wp_attachment_image_alt', 'Что погубило Элизабет Сиддал, музу прерафаэлитов?'),
('159', '89', '_wp_attached_file', '2012/01/103297_or.jpg'),
('160', '89', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"751";s:6:"height";s:3:"600";s:14:"hwstring_small";s:23:"height=''96'' width=''120''";s:4:"file";s:21:"2012/01/103297_or.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:3:{s:4:"file";s:21:"103297_or-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:21:"103297_or-300x239.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"239";}s:14:"post-thumbnail";a:3:{s:4:"file";s:21:"103297_or-751x288.jpg";s:5:"width";s:3:"751";s:6:"height";s:3:"288";}s:13:"large-feature";a:3:{s:4:"file";s:21:"103297_or-751x288.jpg";s:5:"width";s:3:"751";s:6:"height";s:3:"288";}s:13:"small-feature";a:3:{s:4:"file";s:21:"103297_or-375x300.jpg";s:5:"width";s:3:"375";s:6:"height";s:3:"300";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('161', '90', '_wp_attached_file', '2012/01/103299_or.jpg'),
('162', '90', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"800";s:6:"height";s:3:"554";s:14:"hwstring_small";s:23:"height=''88'' width=''128''";s:4:"file";s:21:"2012/01/103299_or.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:3:{s:4:"file";s:21:"103299_or-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:21:"103299_or-300x207.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"207";}s:14:"post-thumbnail";a:3:{s:4:"file";s:21:"103299_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"large-feature";a:3:{s:4:"file";s:21:"103299_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"small-feature";a:3:{s:4:"file";s:21:"103299_or-433x300.jpg";s:5:"width";s:3:"433";s:6:"height";s:3:"300";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('163', '89', '_wp_attachment_image_alt', 'Что погубило Элизабет Сиддал, музу прерафаэлитов?'),
('165', '90', '_wp_attachment_image_alt', 'Что погубило Элизабет Сиддал, музу прерафаэлитов?'),
('169', '93', '_wp_attached_file', '2012/01/103106_or.jpg'),
('170', '93', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"800";s:6:"height";s:3:"535";s:14:"hwstring_small";s:23:"height=''85'' width=''128''";s:4:"file";s:21:"2012/01/103106_or.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:3:{s:4:"file";s:21:"103106_or-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:21:"103106_or-300x200.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"200";}s:14:"post-thumbnail";a:3:{s:4:"file";s:21:"103106_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"large-feature";a:3:{s:4:"file";s:21:"103106_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"small-feature";a:3:{s:4:"file";s:21:"103106_or-448x300.jpg";s:5:"width";s:3:"448";s:6:"height";s:3:"300";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('171', '94', '_wp_attached_file', '2012/01/103107_or.jpg'),
('172', '94', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"800";s:6:"height";s:3:"437";s:14:"hwstring_small";s:23:"height=''69'' width=''128''";s:4:"file";s:21:"2012/01/103107_or.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:3:{s:4:"file";s:21:"103107_or-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:21:"103107_or-300x163.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"163";}s:14:"post-thumbnail";a:3:{s:4:"file";s:21:"103107_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"large-feature";a:3:{s:4:"file";s:21:"103107_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"small-feature";a:3:{s:4:"file";s:21:"103107_or-500x273.jpg";s:5:"width";s:3:"500";s:6:"height";s:3:"273";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('173', '94', '_wp_attachment_image_alt', 'Церковь в Суре, построенная Иоанном Крондштадским'),
('178', '97', '_wp_attached_file', '2012/01/102025_or.jpg'),
('179', '97', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"800";s:6:"height";s:3:"533";s:14:"hwstring_small";s:23:"height=''85'' width=''128''";s:4:"file";s:21:"2012/01/102025_or.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:3:{s:4:"file";s:21:"102025_or-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:21:"102025_or-300x199.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"199";}s:14:"post-thumbnail";a:3:{s:4:"file";s:21:"102025_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"large-feature";a:3:{s:4:"file";s:21:"102025_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"small-feature";a:3:{s:4:"file";s:21:"102025_or-450x300.jpg";s:5:"width";s:3:"450";s:6:"height";s:3:"300";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('180', '98', '_wp_attached_file', '2012/01/102026_or.jpg'),
('181', '98', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"800";s:6:"height";s:3:"533";s:14:"hwstring_small";s:23:"height=''85'' width=''128''";s:4:"file";s:21:"2012/01/102026_or.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:3:{s:4:"file";s:21:"102026_or-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:21:"102026_or-300x199.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"199";}s:14:"post-thumbnail";a:3:{s:4:"file";s:21:"102026_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"large-feature";a:3:{s:4:"file";s:21:"102026_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"small-feature";a:3:{s:4:"file";s:21:"102026_or-450x300.jpg";s:5:"width";s:3:"450";s:6:"height";s:3:"300";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('182', '97', '_wp_attachment_image_alt', 'Мадонна'),
('187', '101', '_wp_attached_file', '2012/01/101004_or.jpg'),
('188', '101', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"800";s:6:"height";s:3:"533";s:14:"hwstring_small";s:23:"height=''85'' width=''128''";s:4:"file";s:21:"2012/01/101004_or.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:3:{s:4:"file";s:21:"101004_or-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:21:"101004_or-300x199.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"199";}s:14:"post-thumbnail";a:3:{s:4:"file";s:21:"101004_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"large-feature";a:3:{s:4:"file";s:21:"101004_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"small-feature";a:3:{s:4:"file";s:21:"101004_or-450x300.jpg";s:5:"width";s:3:"450";s:6:"height";s:3:"300";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('421', '231', '_wp_old_slug', '%d1%87%d0%b5%d1%80%d0%bd%d0%be%d0%b2%d0%b8%d0%ba'),
('195', '111', '_wp_attached_file', '2012/01/100790_or.jpg'),
('196', '111', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"800";s:6:"height";s:3:"600";s:14:"hwstring_small";s:23:"height=''96'' width=''128''";s:4:"file";s:21:"2012/01/100790_or.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:3:{s:4:"file";s:21:"100790_or-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:21:"100790_or-300x225.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"225";}s:14:"post-thumbnail";a:3:{s:4:"file";s:21:"100790_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"large-feature";a:3:{s:4:"file";s:21:"100790_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"small-feature";a:3:{s:4:"file";s:21:"100790_or-400x300.jpg";s:5:"width";s:3:"400";s:6:"height";s:3:"300";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('197', '112', '_wp_attached_file', '2012/01/100792_or.jpg'),
('198', '112', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"799";s:6:"height";s:3:"599";s:14:"hwstring_small";s:23:"height=''96'' width=''128''";s:4:"file";s:21:"2012/01/100792_or.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:3:{s:4:"file";s:21:"100792_or-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:21:"100792_or-300x224.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"224";}s:14:"post-thumbnail";a:3:{s:4:"file";s:21:"100792_or-799x288.jpg";s:5:"width";s:3:"799";s:6:"height";s:3:"288";}s:13:"large-feature";a:3:{s:4:"file";s:21:"100792_or-799x288.jpg";s:5:"width";s:3:"799";s:6:"height";s:3:"288";}s:13:"small-feature";a:3:{s:4:"file";s:21:"100792_or-400x300.jpg";s:5:"width";s:3:"400";s:6:"height";s:3:"300";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('199', '111', '_wp_attachment_image_alt', 'Угличский кремль, церковь Димитрия на крови, 1692 г.'),
('204', '116', '_wp_attached_file', '2012/01/100589_or.jpg'),
('205', '116', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"800";s:6:"height";s:3:"533";s:14:"hwstring_small";s:23:"height=''85'' width=''128''";s:4:"file";s:21:"2012/01/100589_or.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:3:{s:4:"file";s:21:"100589_or-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:21:"100589_or-300x199.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"199";}s:14:"post-thumbnail";a:3:{s:4:"file";s:21:"100589_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"large-feature";a:3:{s:4:"file";s:21:"100589_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"small-feature";a:3:{s:4:"file";s:21:"100589_or-450x300.jpg";s:5:"width";s:3:"450";s:6:"height";s:3:"300";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('206', '117', '_wp_attached_file', '2012/01/100590_or.jpg'),
('207', '117', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"800";s:6:"height";s:3:"571";s:14:"hwstring_small";s:23:"height=''91'' width=''128''";s:4:"file";s:21:"2012/01/100590_or.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:3:{s:4:"file";s:21:"100590_or-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:21:"100590_or-300x214.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"214";}s:14:"post-thumbnail";a:3:{s:4:"file";s:21:"100590_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"large-feature";a:3:{s:4:"file";s:21:"100590_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"small-feature";a:3:{s:4:"file";s:21:"100590_or-420x300.jpg";s:5:"width";s:3:"420";s:6:"height";s:3:"300";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('208', '117', '_wp_attachment_image_alt', 'Самые знаменитые женщины в Web 2.0'),
('213', '120', '_wp_attached_file', '2012/01/100069_or.jpg'),
('214', '120', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"800";s:6:"height";s:3:"532";s:14:"hwstring_small";s:23:"height=''85'' width=''128''";s:4:"file";s:21:"2012/01/100069_or.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:3:{s:4:"file";s:21:"100069_or-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:21:"100069_or-300x199.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"199";}s:14:"post-thumbnail";a:3:{s:4:"file";s:21:"100069_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"large-feature";a:3:{s:4:"file";s:21:"100069_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"small-feature";a:3:{s:4:"file";s:21:"100069_or-451x300.jpg";s:5:"width";s:3:"451";s:6:"height";s:3:"300";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('215', '121', '_wp_attached_file', '2012/01/100070_or.jpg'),
('216', '121', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"800";s:6:"height";s:3:"533";s:14:"hwstring_small";s:23:"height=''85'' width=''128''";s:4:"file";s:21:"2012/01/100070_or.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:3:{s:4:"file";s:21:"100070_or-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:21:"100070_or-300x199.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"199";}s:14:"post-thumbnail";a:3:{s:4:"file";s:21:"100070_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"large-feature";a:3:{s:4:"file";s:21:"100070_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"small-feature";a:3:{s:4:"file";s:21:"100070_or-450x300.jpg";s:5:"width";s:3:"450";s:6:"height";s:3:"300";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('217', '120', '_wp_attachment_image_alt', 'Какая она, судьба польской интеллигенции XX века?'),
('222', '124', '_wp_attached_file', '2012/01/99984_or.jpg'),
('223', '124', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"800";s:6:"height";s:3:"531";s:14:"hwstring_small";s:23:"height=''84'' width=''128''";s:4:"file";s:20:"2012/01/99984_or.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:3:{s:4:"file";s:20:"99984_or-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:20:"99984_or-300x199.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"199";}s:14:"post-thumbnail";a:3:{s:4:"file";s:20:"99984_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"large-feature";a:3:{s:4:"file";s:20:"99984_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"small-feature";a:3:{s:4:"file";s:20:"99984_or-451x300.jpg";s:5:"width";s:3:"451";s:6:"height";s:3:"300";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('224', '125', '_wp_attached_file', '2012/01/99985_or.jpg'),
('225', '125', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"800";s:6:"height";s:3:"534";s:14:"hwstring_small";s:23:"height=''85'' width=''128''";s:4:"file";s:20:"2012/01/99985_or.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:3:{s:4:"file";s:20:"99985_or-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:20:"99985_or-300x200.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"200";}s:14:"post-thumbnail";a:3:{s:4:"file";s:20:"99985_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"large-feature";a:3:{s:4:"file";s:20:"99985_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"small-feature";a:3:{s:4:"file";s:20:"99985_or-449x300.jpg";s:5:"width";s:3:"449";s:6:"height";s:3:"300";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('226', '125', '_wp_attachment_image_alt', 'Как Яльмар Шахт спасал экономику Германии?'),
('231', '128', '_wp_attached_file', '2012/01/103770_or.jpg'),
('232', '128', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"738";s:6:"height";s:3:"600";s:14:"hwstring_small";s:23:"height=''96'' width=''118''";s:4:"file";s:21:"2012/01/103770_or.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:3:{s:4:"file";s:21:"103770_or-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:21:"103770_or-300x243.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"243";}s:14:"post-thumbnail";a:3:{s:4:"file";s:21:"103770_or-738x288.jpg";s:5:"width";s:3:"738";s:6:"height";s:3:"288";}s:13:"large-feature";a:3:{s:4:"file";s:21:"103770_or-738x288.jpg";s:5:"width";s:3:"738";s:6:"height";s:3:"288";}s:13:"small-feature";a:3:{s:4:"file";s:21:"103770_or-369x300.jpg";s:5:"width";s:3:"369";s:6:"height";s:3:"300";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('233', '129', '_wp_attached_file', '2012/01/103771_or.jpg'),
('234', '129', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"800";s:6:"height";s:3:"533";s:14:"hwstring_small";s:23:"height=''85'' width=''128''";s:4:"file";s:21:"2012/01/103771_or.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:3:{s:4:"file";s:21:"103771_or-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:21:"103771_or-300x199.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"199";}s:14:"post-thumbnail";a:3:{s:4:"file";s:21:"103771_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"large-feature";a:3:{s:4:"file";s:21:"103771_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"small-feature";a:3:{s:4:"file";s:21:"103771_or-450x300.jpg";s:5:"width";s:3:"450";s:6:"height";s:3:"300";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('235', '128', '_wp_attachment_image_alt', 'Как цивилизованно сдать квартиру в аренду?'),
('242', '135', '_wp_attached_file', '2012/01/103757_or.jpg'),
('243', '135', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"800";s:6:"height";s:3:"568";s:14:"hwstring_small";s:23:"height=''90'' width=''128''";s:4:"file";s:21:"2012/01/103757_or.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:3:{s:4:"file";s:21:"103757_or-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:21:"103757_or-300x213.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"213";}s:14:"post-thumbnail";a:3:{s:4:"file";s:21:"103757_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"large-feature";a:3:{s:4:"file";s:21:"103757_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"small-feature";a:3:{s:4:"file";s:21:"103757_or-422x300.jpg";s:5:"width";s:3:"422";s:6:"height";s:3:"300";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('244', '136', '_wp_attached_file', '2012/01/103758_or.jpg'),
('245', '136', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"800";s:6:"height";s:3:"505";s:14:"hwstring_small";s:23:"height=''80'' width=''128''";s:4:"file";s:21:"2012/01/103758_or.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:3:{s:4:"file";s:21:"103758_or-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:21:"103758_or-300x189.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"189";}s:14:"post-thumbnail";a:3:{s:4:"file";s:21:"103758_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"large-feature";a:3:{s:4:"file";s:21:"103758_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"small-feature";a:3:{s:4:"file";s:21:"103758_or-475x300.jpg";s:5:"width";s:3:"475";s:6:"height";s:3:"300";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('246', '135', '_wp_attachment_image_alt', 'Адекватность покупок'),
('252', '140', '_wp_attached_file', '2012/01/103173_or.jpg'),
('253', '140', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"800";s:6:"height";s:3:"533";s:14:"hwstring_small";s:23:"height=''85'' width=''128''";s:4:"file";s:21:"2012/01/103173_or.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:3:{s:4:"file";s:21:"103173_or-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:21:"103173_or-300x199.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"199";}s:14:"post-thumbnail";a:3:{s:4:"file";s:21:"103173_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"large-feature";a:3:{s:4:"file";s:21:"103173_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"small-feature";a:3:{s:4:"file";s:21:"103173_or-450x300.jpg";s:5:"width";s:3:"450";s:6:"height";s:3:"300";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('254', '141', '_wp_attached_file', '2012/01/103174_or.jpg'),
('255', '141', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"800";s:6:"height";s:3:"481";s:14:"hwstring_small";s:23:"height=''76'' width=''128''";s:4:"file";s:21:"2012/01/103174_or.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:3:{s:4:"file";s:21:"103174_or-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:21:"103174_or-300x180.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"180";}s:14:"post-thumbnail";a:3:{s:4:"file";s:21:"103174_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"large-feature";a:3:{s:4:"file";s:21:"103174_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"small-feature";a:3:{s:4:"file";s:21:"103174_or-500x300.jpg";s:5:"width";s:3:"500";s:6:"height";s:3:"300";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('256', '140', '_wp_attachment_image_alt', 'Три приметы, чтобы не проспать кризис'),
('261', '144', '_wp_attached_file', '2012/01/102992_or.jpg'),
('262', '144', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"800";s:6:"height";s:3:"553";s:14:"hwstring_small";s:23:"height=''88'' width=''128''";s:4:"file";s:21:"2012/01/102992_or.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:3:{s:4:"file";s:21:"102992_or-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:21:"102992_or-300x207.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"207";}s:14:"post-thumbnail";a:3:{s:4:"file";s:21:"102992_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"large-feature";a:3:{s:4:"file";s:21:"102992_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"small-feature";a:3:{s:4:"file";s:21:"102992_or-433x300.jpg";s:5:"width";s:3:"433";s:6:"height";s:3:"300";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('263', '145', '_wp_attached_file', '2012/01/102993_or.jpg'),
('264', '145', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"800";s:6:"height";s:3:"533";s:14:"hwstring_small";s:23:"height=''85'' width=''128''";s:4:"file";s:21:"2012/01/102993_or.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:3:{s:4:"file";s:21:"102993_or-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:21:"102993_or-300x199.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"199";}s:14:"post-thumbnail";a:3:{s:4:"file";s:21:"102993_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"large-feature";a:3:{s:4:"file";s:21:"102993_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"small-feature";a:3:{s:4:"file";s:21:"102993_or-450x300.jpg";s:5:"width";s:3:"450";s:6:"height";s:3:"300";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('265', '145', '_wp_attachment_image_alt', 'Как и где застраховать автомобиль?'),
('270', '148', '_wp_attached_file', '2012/01/102872_or.jpg'),
('271', '148', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"800";s:6:"height";s:3:"533";s:14:"hwstring_small";s:23:"height=''85'' width=''128''";s:4:"file";s:21:"2012/01/102872_or.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:3:{s:4:"file";s:21:"102872_or-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:21:"102872_or-300x199.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"199";}s:14:"post-thumbnail";a:3:{s:4:"file";s:21:"102872_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"large-feature";a:3:{s:4:"file";s:21:"102872_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"small-feature";a:3:{s:4:"file";s:21:"102872_or-450x300.jpg";s:5:"width";s:3:"450";s:6:"height";s:3:"300";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('272', '149', '_wp_attached_file', '2012/01/102873_or.jpg'),
('273', '149', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"800";s:6:"height";s:3:"539";s:14:"hwstring_small";s:23:"height=''86'' width=''128''";s:4:"file";s:21:"2012/01/102873_or.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:3:{s:4:"file";s:21:"102873_or-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:21:"102873_or-300x202.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"202";}s:14:"post-thumbnail";a:3:{s:4:"file";s:21:"102873_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"large-feature";a:3:{s:4:"file";s:21:"102873_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"small-feature";a:3:{s:4:"file";s:21:"102873_or-445x300.jpg";s:5:"width";s:3:"445";s:6:"height";s:3:"300";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('274', '148', '_wp_attachment_image_alt', 'Как сэкономить при покупке продуктов?'),
('279', '152', '_wp_attached_file', '2012/01/102625_or.jpg'),
('280', '152', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"800";s:6:"height";s:3:"532";s:14:"hwstring_small";s:23:"height=''85'' width=''128''";s:4:"file";s:21:"2012/01/102625_or.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:3:{s:4:"file";s:21:"102625_or-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:21:"102625_or-300x199.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"199";}s:14:"post-thumbnail";a:3:{s:4:"file";s:21:"102625_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"large-feature";a:3:{s:4:"file";s:21:"102625_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"small-feature";a:3:{s:4:"file";s:21:"102625_or-451x300.jpg";s:5:"width";s:3:"451";s:6:"height";s:3:"300";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('281', '153', '_wp_attached_file', '2012/01/102626_or.jpg'),
('282', '153', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"726";s:6:"height";s:3:"600";s:14:"hwstring_small";s:23:"height=''96'' width=''116''";s:4:"file";s:21:"2012/01/102626_or.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:3:{s:4:"file";s:21:"102626_or-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:21:"102626_or-300x247.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"247";}s:14:"post-thumbnail";a:3:{s:4:"file";s:21:"102626_or-726x288.jpg";s:5:"width";s:3:"726";s:6:"height";s:3:"288";}s:13:"large-feature";a:3:{s:4:"file";s:21:"102626_or-726x288.jpg";s:5:"width";s:3:"726";s:6:"height";s:3:"288";}s:13:"small-feature";a:3:{s:4:"file";s:21:"102626_or-363x300.jpg";s:5:"width";s:3:"363";s:6:"height";s:3:"300";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('283', '152', '_wp_attachment_image_alt', '«подводные камни» шопинга по-русски'),
('289', '157', '_wp_attached_file', '2012/01/102623_or.jpg'),
('290', '157', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"800";s:6:"height";s:3:"592";s:14:"hwstring_small";s:23:"height=''94'' width=''128''";s:4:"file";s:21:"2012/01/102623_or.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:3:{s:4:"file";s:21:"102623_or-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:21:"102623_or-300x222.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"222";}s:14:"post-thumbnail";a:3:{s:4:"file";s:21:"102623_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"large-feature";a:3:{s:4:"file";s:21:"102623_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"small-feature";a:3:{s:4:"file";s:21:"102623_or-405x300.jpg";s:5:"width";s:3:"405";s:6:"height";s:3:"300";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('291', '158', '_wp_attached_file', '2012/01/102624_or.jpg'),
('292', '158', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"800";s:6:"height";s:3:"533";s:14:"hwstring_small";s:23:"height=''85'' width=''128''";s:4:"file";s:21:"2012/01/102624_or.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:3:{s:4:"file";s:21:"102624_or-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:21:"102624_or-300x199.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"199";}s:14:"post-thumbnail";a:3:{s:4:"file";s:21:"102624_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"large-feature";a:3:{s:4:"file";s:21:"102624_or-800x288.jpg";s:5:"width";s:3:"800";s:6:"height";s:3:"288";}s:13:"small-feature";a:3:{s:4:"file";s:21:"102624_or-450x300.jpg";s:5:"width";s:3:"450";s:6:"height";s:3:"300";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('293', '158', '_wp_attachment_image_alt', 'Кому и как принято давать «на чай»?'),
('296', '160', '_menu_item_type', 'custom'),
('297', '160', '_menu_item_menu_item_parent', '0'),
('298', '160', '_menu_item_object_id', '160'),
('299', '160', '_menu_item_object', 'custom'),
('300', '160', '_menu_item_target', ''),
('301', '160', '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
('302', '160', '_menu_item_xfn', ''),
('303', '160', '_menu_item_url', '/'),
('355', '168', '_edit_lock', '1378074981:1'),
('305', '161', '_menu_item_type', 'post_type'),
('306', '161', '_menu_item_menu_item_parent', '0'),
('307', '161', '_menu_item_object_id', '2'),
('308', '161', '_menu_item_object', 'page'),
('309', '161', '_menu_item_target', ''),
('310', '161', '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
('311', '161', '_menu_item_xfn', ''),
('312', '161', '_menu_item_url', ''),
('354', '168', '_wp_page_template', 'contact.php'),
('352', '166', '_wp_page_template', 'template-blog.php'),
('351', '166', '_edit_lock', '1378074921:1'),
('350', '166', '_edit_last', '1'),
('425', '231', '_OrganizerEmail', 'support@morestyle.ru'),
('424', '231', '_OrganizerWebsite', 'morestyle.ru'),
('423', '231', '_OrganizerPhone', '123456'),
('422', '231', '_OrganizerOrganizer', 'Organizer Name'),
('420', '231', '_edit_last', '1'),
('353', '168', '_edit_last', '1'),
('356', '171', '_menu_item_type', 'post_type'),
('357', '171', '_menu_item_menu_item_parent', '0'),
('358', '171', '_menu_item_object_id', '168'),
('359', '171', '_menu_item_object', 'page'),
('360', '171', '_menu_item_target', ''),
('361', '171', '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
('362', '171', '_menu_item_xfn', ''),
('363', '171', '_menu_item_url', ''),
('365', '172', '_menu_item_type', 'post_type'),
('366', '172', '_menu_item_menu_item_parent', '0'),
('367', '172', '_menu_item_object_id', '166'),
('368', '172', '_menu_item_object', 'page'),
('369', '172', '_menu_item_target', ''),
('370', '172', '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
('371', '172', '_menu_item_xfn', ''),
('372', '172', '_menu_item_url', ''),
('426', '231', '_OrganizerOrganizerID', '231'),
('427', '231', '_edit_lock', '1346530725:1'),
('428', '232', '_edit_last', '1'),
('429', '232', '_wp_old_slug', '%d1%87%d0%b5%d1%80%d0%bd%d0%be%d0%b2%d0%b8%d0%ba'),
('430', '232', '_VenueVenue', 'Venue Name'),
('431', '232', '_VenueAddress', 'Адрес'),
('432', '232', '_VenueCity', 'Город'),
('433', '232', '_VenueProvince', ''),
('434', '232', '_VenueState', ''),
('435', '232', '_VenueCountry', 'Russian Federation'),
('436', '232', '_VenueZip', ''),
('437', '232', '_VenuePhone', '123456'),
('438', '232', '_VenueVenueID', '232'),
('439', '232', '_VenueStateProvince', ''),
('440', '232', '_edit_lock', '1346596276:1'),
('441', '233', '_edit_last', '1'),
('442', '233', '_EventShowMapLink', 'true'),
('443', '233', '_EventShowMap', 'false'),
('444', '233', '_EventStartDate', '2012-09-03 00:00:00'),
('445', '233', '_EventEndDate', '2012-09-04 23:59:00'),
('446', '233', '_edit_lock', '1346530999:1'),
('447', '233', '_EventAllDay', 'yes'),
('448', '233', '_EventVenueID', '232'),
('449', '233', '_EventCost', '$250'),
('450', '233', '_EventOrganizerID', '231'),
('451', '235', '_edit_last', '1'),
('452', '235', '_EventShowMapLink', 'true'),
('453', '235', '_EventShowMap', 'false'),
('454', '235', '_EventStartDate', '2012-09-05 00:00:00'),
('455', '235', '_EventEndDate', '2012-09-06 23:59:00'),
('456', '235', '_edit_lock', '1346531099:1'),
('457', '235', '_EventAllDay', 'yes'),
('458', '235', '_EventVenueID', '232'),
('459', '235', '_EventCost', '$250'),
('460', '235', '_EventOrganizerID', '231'),
('461', '237', '_edit_last', '1'),
('462', '237', '_EventShowMapLink', 'true'),
('463', '237', '_EventShowMap', 'false'),
('464', '237', '_EventStartDate', '2012-09-16 00:00:00'),
('465', '237', '_EventEndDate', '2012-09-18 23:59:00'),
('466', '237', '_edit_lock', '1346531155:1'),
('467', '237', '_EventAllDay', 'yes'),
('468', '237', '_EventVenueID', '232'),
('469', '237', '_EventCost', '$250'),
('470', '237', '_EventOrganizerID', '231'),
('471', '168', 'et_ptemplate_settings', 'a:3:{s:16:"et_fullwidthpage";s:1:"0";s:21:"et_regenerate_numbers";s:1:"0";s:11:"et_email_to";s:0:"";}'),
('866', '414', 'wpb_post_views_count', '133'),
('865', '416', 'wpb_post_views_count', '153'),
('1061', '537', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"774";s:6:"height";s:3:"320";s:14:"hwstring_small";s:23:"height=''52'' width=''128''";s:4:"file";s:42:"2013/08/shutterstock_109209743-774x320.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:3:{s:4:"file";s:42:"shutterstock_109209743-774x320-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:42:"shutterstock_109209743-774x320-300x124.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"124";}s:14:"post-thumbnail";a:3:{s:4:"file";s:42:"shutterstock_109209743-774x320-225x136.jpg";s:5:"width";s:3:"225";s:6:"height";s:3:"136";}s:5:"slide";a:3:{s:4:"file";s:42:"shutterstock_109209743-774x320-546x291.jpg";s:5:"width";s:3:"546";s:6:"height";s:3:"291";}s:10:"post-first";a:3:{s:4:"file";s:42:"shutterstock_109209743-774x320-371x177.jpg";s:5:"width";s:3:"371";s:6:"height";s:3:"177";}s:6:"thumbs";a:3:{s:4:"file";s:42:"shutterstock_109209743-774x320-225x136.jpg";s:5:"width";s:3:"225";s:6:"height";s:3:"136";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('1060', '537', '_wp_attached_file', '2013/08/shutterstock_109209743-774x320.jpg'),
('1059', '390', '_edit_lock', '1378072387:1'),
('1057', '396', '_thumbnail_id', '535'),
('965', '509', '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
('964', '509', '_menu_item_target', ''),
('963', '509', '_menu_item_object', 'page'),
('962', '509', '_menu_item_object_id', '463'),
('961', '509', '_menu_item_menu_item_parent', '0'),
('960', '509', '_menu_item_type', 'post_type'),
('516', '249', '_menu_item_type', 'taxonomy'),
('517', '249', '_menu_item_menu_item_parent', '0'),
('518', '249', '_menu_item_object_id', '144'),
('519', '249', '_menu_item_object', 'category'),
('520', '249', '_menu_item_target', ''),
('521', '249', '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
('522', '249', '_menu_item_xfn', ''),
('523', '249', '_menu_item_url', ''),
('524', '250', '_menu_item_type', 'taxonomy'),
('525', '250', '_menu_item_menu_item_parent', '0'),
('526', '250', '_menu_item_object_id', '145'),
('527', '250', '_menu_item_object', 'category'),
('528', '250', '_menu_item_target', ''),
('529', '250', '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
('530', '250', '_menu_item_xfn', ''),
('531', '250', '_menu_item_url', ''),
('532', '251', '_menu_item_type', 'taxonomy'),
('533', '251', '_menu_item_menu_item_parent', '0'),
('534', '251', '_menu_item_object_id', '146'),
('535', '251', '_menu_item_object', 'category'),
('536', '251', '_menu_item_target', ''),
('537', '251', '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
('538', '251', '_menu_item_xfn', ''),
('539', '251', '_menu_item_url', ''),
('540', '252', '_menu_item_type', 'taxonomy'),
('541', '252', '_menu_item_menu_item_parent', '0'),
('542', '252', '_menu_item_object_id', '147'),
('543', '252', '_menu_item_object', 'category'),
('544', '252', '_menu_item_target', ''),
('545', '252', '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
('546', '252', '_menu_item_xfn', ''),
('547', '252', '_menu_item_url', ''),
('548', '253', '_menu_item_type', 'taxonomy'),
('549', '253', '_menu_item_menu_item_parent', '0'),
('550', '253', '_menu_item_object_id', '148'),
('551', '253', '_menu_item_object', 'category'),
('552', '253', '_menu_item_target', ''),
('553', '253', '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
('554', '253', '_menu_item_xfn', ''),
('555', '253', '_menu_item_url', ''),
('556', '254', '_menu_item_type', 'taxonomy'),
('557', '254', '_menu_item_menu_item_parent', '0'),
('558', '254', '_menu_item_object_id', '144'),
('559', '254', '_menu_item_object', 'category'),
('560', '254', '_menu_item_target', ''),
('561', '254', '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
('562', '254', '_menu_item_xfn', ''),
('563', '254', '_menu_item_url', ''),
('564', '255', '_menu_item_type', 'taxonomy'),
('565', '255', '_menu_item_menu_item_parent', '0'),
('566', '255', '_menu_item_object_id', '145'),
('567', '255', '_menu_item_object', 'category'),
('568', '255', '_menu_item_target', ''),
('569', '255', '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
('570', '255', '_menu_item_xfn', ''),
('571', '255', '_menu_item_url', ''),
('572', '420', '_edit_last', '1'),
('573', '420', 'magz2_posttype', '4'),
('574', '421', '_edit_last', '1'),
('575', '421', 'magz2_posttype', '3'),
('576', '422', '_edit_last', '1'),
('577', '422', 'magz2_posttype', '2'),
('578', '423', '_edit_last', '1'),
('579', '423', 'magz2_posttype', '1'),
('580', '424', '_edit_last', '1'),
('581', '424', 'magz2_posttype', '4'),
('582', '425', '_edit_last', '1'),
('583', '425', 'magz2_posttype', '3'),
('584', '426', '_edit_last', '1'),
('585', '426', 'magz2_posttype', '2'),
('586', '427', '_edit_last', '1'),
('587', '427', 'magz2_posttype', '1'),
('1056', '535', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"774";s:6:"height";s:3:"320";s:14:"hwstring_small";s:23:"height=''52'' width=''128''";s:4:"file";s:40:"2013/08/shutterstock_2114081-774x320.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:3:{s:4:"file";s:40:"shutterstock_2114081-774x320-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:40:"shutterstock_2114081-774x320-300x124.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"124";}s:14:"post-thumbnail";a:3:{s:4:"file";s:40:"shutterstock_2114081-774x320-225x136.jpg";s:5:"width";s:3:"225";s:6:"height";s:3:"136";}s:5:"slide";a:3:{s:4:"file";s:40:"shutterstock_2114081-774x320-546x291.jpg";s:5:"width";s:3:"546";s:6:"height";s:3:"291";}s:10:"post-first";a:3:{s:4:"file";s:40:"shutterstock_2114081-774x320-371x177.jpg";s:5:"width";s:3:"371";s:6:"height";s:3:"177";}s:6:"thumbs";a:3:{s:4:"file";s:40:"shutterstock_2114081-774x320-225x136.jpg";s:5:"width";s:3:"225";s:6:"height";s:3:"136";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('1055', '535', '_wp_attached_file', '2013/08/shutterstock_2114081-774x320.jpg'),
('1054', '396', '_edit_lock', '1378072318:1'),
('1053', '396', 'wpb_post_views_count', '107'),
('1051', '400', '_thumbnail_id', '533'),
('1007', '514', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:4:"2000";s:6:"height";s:4:"1333";s:14:"hwstring_small";s:23:"height=''85'' width=''128''";s:4:"file";s:36:"2013/07/shutterstock_110700254_2.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:3:{s:4:"file";s:36:"shutterstock_110700254_2-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:36:"shutterstock_110700254_2-300x199.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"199";}s:5:"large";a:3:{s:4:"file";s:37:"shutterstock_110700254_2-1024x682.jpg";s:5:"width";s:4:"1024";s:6:"height";s:3:"682";}s:14:"post-thumbnail";a:3:{s:4:"file";s:36:"shutterstock_110700254_2-225x136.jpg";s:5:"width";s:3:"225";s:6:"height";s:3:"136";}s:5:"slide";a:3:{s:4:"file";s:36:"shutterstock_110700254_2-546x291.jpg";s:5:"width";s:3:"546";s:6:"height";s:3:"291";}s:10:"post-first";a:3:{s:4:"file";s:36:"shutterstock_110700254_2-371x177.jpg";s:5:"width";s:3:"371";s:6:"height";s:3:"177";}s:6:"thumbs";a:3:{s:4:"file";s:36:"shutterstock_110700254_2-225x136.jpg";s:5:"width";s:3:"225";s:6:"height";s:3:"136";}s:6:"single";a:3:{s:4:"file";s:36:"shutterstock_110700254_2-774x320.jpg";s:5:"width";s:3:"774";s:6:"height";s:3:"320";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('1006', '514', '_wp_attached_file', '2013/07/shutterstock_110700254_2.jpg'),
('652', '436', '_menu_item_type', 'taxonomy'),
('653', '436', '_menu_item_menu_item_parent', '0'),
('654', '436', '_menu_item_object_id', '147'),
('655', '436', '_menu_item_object', 'category'),
('656', '436', '_menu_item_target', ''),
('657', '436', '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
('658', '436', '_menu_item_xfn', ''),
('659', '436', '_menu_item_url', ''),
('1003', '513', '_menu_item_url', ''),
('1002', '513', '_menu_item_xfn', ''),
('1001', '513', '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
('1000', '513', '_menu_item_target', ''),
('999', '513', '_menu_item_object', 'page'),
('1050', '533', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"774";s:6:"height";s:3:"320";s:14:"hwstring_small";s:23:"height=''52'' width=''128''";s:4:"file";s:44:"2013/08/photodune-3517559-idea-s-774x320.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:3:{s:4:"file";s:44:"photodune-3517559-idea-s-774x320-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:44:"photodune-3517559-idea-s-774x320-300x124.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"124";}s:14:"post-thumbnail";a:3:{s:4:"file";s:44:"photodune-3517559-idea-s-774x320-225x136.jpg";s:5:"width";s:3:"225";s:6:"height";s:3:"136";}s:5:"slide";a:3:{s:4:"file";s:44:"photodune-3517559-idea-s-774x320-546x291.jpg";s:5:"width";s:3:"546";s:6:"height";s:3:"291";}s:10:"post-first";a:3:{s:4:"file";s:44:"photodune-3517559-idea-s-774x320-371x177.jpg";s:5:"width";s:3:"371";s:6:"height";s:3:"177";}s:6:"thumbs";a:3:{s:4:"file";s:44:"photodune-3517559-idea-s-774x320-225x136.jpg";s:5:"width";s:3:"225";s:6:"height";s:3:"136";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('1049', '533', '_wp_attached_file', '2013/08/photodune-3517559-idea-s-774x320.jpg'),
('1048', '400', '_edit_lock', '1378072215:1'),
('1045', '406', '_thumbnail_id', '529'),
('1008', '402', 'wpb_post_views_count', '181'),
('987', '512', '_menu_item_type', 'post_type'),
('988', '512', '_menu_item_menu_item_parent', '0'),
('984', '511', '_menu_item_xfn', ''),
('985', '511', '_menu_item_url', ''),
('983', '511', '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
('982', '511', '_menu_item_target', ''),
('1042', '406', '_edit_lock', '1378075077:1'),
('1043', '529', '_wp_attached_file', '2013/08/photodune-2043745-college-student-s-774x320.jpg'),
('1044', '529', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"774";s:6:"height";s:3:"320";s:14:"hwstring_small";s:23:"height=''52'' width=''128''";s:4:"file";s:55:"2013/08/photodune-2043745-college-student-s-774x320.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:3:{s:4:"file";s:55:"photodune-2043745-college-student-s-774x320-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:55:"photodune-2043745-college-student-s-774x320-300x124.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"124";}s:14:"post-thumbnail";a:3:{s:4:"file";s:55:"photodune-2043745-college-student-s-774x320-225x136.jpg";s:5:"width";s:3:"225";s:6:"height";s:3:"136";}s:5:"slide";a:3:{s:4:"file";s:55:"photodune-2043745-college-student-s-774x320-546x291.jpg";s:5:"width";s:3:"546";s:6:"height";s:3:"291";}s:10:"post-first";a:3:{s:4:"file";s:55:"photodune-2043745-college-student-s-774x320-371x177.jpg";s:5:"width";s:3:"371";s:6:"height";s:3:"177";}s:6:"thumbs";a:3:{s:4:"file";s:55:"photodune-2043745-college-student-s-774x320-225x136.jpg";s:5:"width";s:3:"225";s:6:"height";s:3:"136";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('1014', '367', '_edit_lock', '1378071277:1'),
('1013', '462', '_edit_lock', '1378071314:1'),
('1012', '468', '_edit_lock', '1378075004:1'),
('1011', '470', '_edit_lock', '1378074931:1'),
('1010', '469', '_edit_lock', '1378074990:1'),
('1009', '463', '_edit_lock', '1378071250:1'),
('764', '462', '_wp_page_template', 'contact.php'),
('765', '462', '_edit_last', '1'),
('766', '463', '_wp_page_template', 'full-width.php'),
('767', '463', '_wp_page_template', 'full-width.php'),
('768', '463', '_edit_last', '1'),
('769', '468', '_edit_last', '1'),
('770', '468', '_wp_page_template', 'default'),
('771', '469', '_edit_last', '1'),
('772', '469', '_wp_page_template', 'contact.php'),
('773', '470', 'wpb_post_views_count', '0'),
('774', '470', '_wp_page_template', 'template-blog.php'),
('775', '470', '_edit_last', '1'),
('776', '364', '_wp_page_template', 'default'),
('777', '364', '_edit_last', '1'),
('778', '367', '_wp_page_template', 'magazine.php'),
('779', '367', '_edit_last', '1'),
('780', '367', 'wpb_post_views_count', '0'),
('781', '390', '_edit_last', '1'),
('782', '390', 'magz_headline', 'on'),
('783', '390', 'magz2_posttype', '1'),
('784', '392', '_edit_last', '1'),
('785', '392', 'magz2_posttype', '1'),
('786', '394', '_edit_last', '1'),
('787', '394', 'magz_slider', 'on'),
('788', '394', 'magz2_posttype', '1'),
('789', '396', '_edit_last', '1'),
('790', '396', 'magz_headline', 'on'),
('791', '396', 'magz_topnews', 'on'),
('792', '396', 'magz2_posttype', '1'),
('793', '398', '_edit_last', '1'),
('794', '398', 'magz2_posttype', '1'),
('795', '400', '_edit_last', '1'),
('796', '400', 'magz_headline', 'on'),
('797', '400', 'magz_topnews', 'on'),
('798', '400', 'magz2_posttype', '1'),
('799', '402', '_edit_last', '1'),
('1118', '402', 'magz_slider', 'on'),
('802', '402', 'magz2_posttype', '1'),
('803', '404', '_edit_last', '1'),
('804', '404', 'magz2_posttype', '1'),
('805', '406', '_edit_last', '1'),
('806', '406', 'magz_headline', 'on'),
('807', '406', 'magz_slider', 'on'),
('808', '406', 'magz_topnews', 'on'),
('809', '406', 'magz2_posttype', '1'),
('810', '408', '_edit_last', '1'),
('811', '408', 'magz_slider', 'on'),
('812', '408', 'magz2_posttype', '1'),
('813', '410', '_edit_last', '1'),
('814', '410', 'magz2_posttype', '1'),
('815', '412', '_edit_last', '1'),
('816', '412', 'magz2_posttype', '1'),
('817', '414', '_edit_last', '1'),
('818', '414', 'magz2_posttype', '1'),
('819', '416', '_edit_last', '1'),
('820', '416', 'magz2_posttype', '1'),
('1157', '404', 'rating', '2'),
('1158', '404', 'votes', '1'),
('998', '513', '_menu_item_object_id', '462'),
('997', '513', '_menu_item_menu_item_parent', '0'),
('996', '513', '_menu_item_type', 'post_type'),
('1005', '406', 'wpb_post_views_count', '537'),
('994', '512', '_menu_item_url', ''),
('993', '512', '_menu_item_xfn', ''),
('833', '472', '_menu_item_type', 'post_type'),
('834', '472', '_menu_item_menu_item_parent', '0'),
('835', '472', '_menu_item_object_id', '468'),
('836', '472', '_menu_item_object', 'page'),
('837', '472', '_menu_item_target', ''),
('838', '472', '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
('839', '472', '_menu_item_xfn', ''),
('840', '472', '_menu_item_url', ''),
('841', '473', '_menu_item_type', 'post_type'),
('842', '473', '_menu_item_menu_item_parent', '0'),
('843', '473', '_menu_item_object_id', '470'),
('844', '473', '_menu_item_object', 'page'),
('845', '473', '_menu_item_target', ''),
('846', '473', '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
('847', '473', '_menu_item_xfn', ''),
('848', '473', '_menu_item_url', ''),
('981', '511', '_menu_item_object', 'page'),
('980', '511', '_menu_item_object_id', '469'),
('978', '511', '_menu_item_type', 'post_type'),
('979', '511', '_menu_item_menu_item_parent', '172'),
('967', '509', '_menu_item_url', ''),
('966', '509', '_menu_item_xfn', ''),
('992', '512', '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
('991', '512', '_menu_item_target', ''),
('990', '512', '_menu_item_object', 'page'),
('989', '512', '_menu_item_object_id', '469'),
('1162', '421', 'wpb_post_views_count', '2'),
('1159', '420', 'wpb_post_views_count', '8'),
('958', '508', '_wp_attached_file', '2013/06/logo1.png'),
('959', '508', '_wp_attachment_metadata', 'a:5:{s:5:"width";s:3:"113";s:6:"height";s:2:"20";s:14:"hwstring_small";s:23:"height=''20'' width=''113''";s:4:"file";s:17:"2013/06/logo1.png";s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('1062', '390', '_thumbnail_id', '537'),
('1064', '408', '_edit_lock', '1378072657:1'),
('1065', '539', '_wp_attached_file', '2013/08/photodune-3834701-laughing-girl-xs-774x320.jpg'),
('1066', '539', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"774";s:6:"height";s:3:"320";s:14:"hwstring_small";s:23:"height=''52'' width=''128''";s:4:"file";s:54:"2013/08/photodune-3834701-laughing-girl-xs-774x320.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:3:{s:4:"file";s:54:"photodune-3834701-laughing-girl-xs-774x320-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:54:"photodune-3834701-laughing-girl-xs-774x320-300x124.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"124";}s:14:"post-thumbnail";a:3:{s:4:"file";s:54:"photodune-3834701-laughing-girl-xs-774x320-225x136.jpg";s:5:"width";s:3:"225";s:6:"height";s:3:"136";}s:5:"slide";a:3:{s:4:"file";s:54:"photodune-3834701-laughing-girl-xs-774x320-546x291.jpg";s:5:"width";s:3:"546";s:6:"height";s:3:"291";}s:10:"post-first";a:3:{s:4:"file";s:54:"photodune-3834701-laughing-girl-xs-774x320-371x177.jpg";s:5:"width";s:3:"371";s:6:"height";s:3:"177";}s:6:"thumbs";a:3:{s:4:"file";s:54:"photodune-3834701-laughing-girl-xs-774x320-225x136.jpg";s:5:"width";s:3:"225";s:6:"height";s:3:"136";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('1067', '408', '_thumbnail_id', '539'),
('1069', '402', '_edit_lock', '1378075206:1'),
('1070', '541', '_wp_attached_file', '2013/08/shutterstock_123603871-774x320.jpg'),
('1071', '541', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"774";s:6:"height";s:3:"320";s:14:"hwstring_small";s:23:"height=''52'' width=''128''";s:4:"file";s:42:"2013/08/shutterstock_123603871-774x320.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:3:{s:4:"file";s:42:"shutterstock_123603871-774x320-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:42:"shutterstock_123603871-774x320-300x124.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"124";}s:14:"post-thumbnail";a:3:{s:4:"file";s:42:"shutterstock_123603871-774x320-225x136.jpg";s:5:"width";s:3:"225";s:6:"height";s:3:"136";}s:5:"slide";a:3:{s:4:"file";s:42:"shutterstock_123603871-774x320-546x291.jpg";s:5:"width";s:3:"546";s:6:"height";s:3:"291";}s:10:"post-first";a:3:{s:4:"file";s:42:"shutterstock_123603871-774x320-371x177.jpg";s:5:"width";s:3:"371";s:6:"height";s:3:"177";}s:6:"thumbs";a:3:{s:4:"file";s:42:"shutterstock_123603871-774x320-225x136.jpg";s:5:"width";s:3:"225";s:6:"height";s:3:"136";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('1072', '402', '_thumbnail_id', '541'),
('1074', '394', 'wpb_post_views_count', '34'),
('1075', '394', '_edit_lock', '1378072854:1'),
('1076', '543', '_wp_attached_file', '2013/08/shutterstock_109209743-774x3201.jpg'),
('1077', '543', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"774";s:6:"height";s:3:"320";s:14:"hwstring_small";s:23:"height=''52'' width=''128''";s:4:"file";s:43:"2013/08/shutterstock_109209743-774x3201.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:3:{s:4:"file";s:43:"shutterstock_109209743-774x3201-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:43:"shutterstock_109209743-774x3201-300x124.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"124";}s:14:"post-thumbnail";a:3:{s:4:"file";s:43:"shutterstock_109209743-774x3201-225x136.jpg";s:5:"width";s:3:"225";s:6:"height";s:3:"136";}s:5:"slide";a:3:{s:4:"file";s:43:"shutterstock_109209743-774x3201-546x291.jpg";s:5:"width";s:3:"546";s:6:"height";s:3:"291";}s:10:"post-first";a:3:{s:4:"file";s:43:"shutterstock_109209743-774x3201-371x177.jpg";s:5:"width";s:3:"371";s:6:"height";s:3:"177";}s:6:"thumbs";a:3:{s:4:"file";s:43:"shutterstock_109209743-774x3201-225x136.jpg";s:5:"width";s:3:"225";s:6:"height";s:3:"136";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('1078', '394', '_thumbnail_id', '543'),
('1080', '416', '_edit_lock', '1378072905:1'),
('1081', '545', '_wp_attached_file', '2013/08/shutterstock_134257640-774x320.jpg'),
('1082', '545', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"774";s:6:"height";s:3:"320";s:14:"hwstring_small";s:23:"height=''52'' width=''128''";s:4:"file";s:42:"2013/08/shutterstock_134257640-774x320.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:3:{s:4:"file";s:42:"shutterstock_134257640-774x320-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:42:"shutterstock_134257640-774x320-300x124.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"124";}s:14:"post-thumbnail";a:3:{s:4:"file";s:42:"shutterstock_134257640-774x320-225x136.jpg";s:5:"width";s:3:"225";s:6:"height";s:3:"136";}s:5:"slide";a:3:{s:4:"file";s:42:"shutterstock_134257640-774x320-546x291.jpg";s:5:"width";s:3:"546";s:6:"height";s:3:"291";}s:10:"post-first";a:3:{s:4:"file";s:42:"shutterstock_134257640-774x320-371x177.jpg";s:5:"width";s:3:"371";s:6:"height";s:3:"177";}s:6:"thumbs";a:3:{s:4:"file";s:42:"shutterstock_134257640-774x320-225x136.jpg";s:5:"width";s:3:"225";s:6:"height";s:3:"136";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('1083', '416', '_thumbnail_id', '545'),
('1085', '414', '_edit_lock', '1378073009:1'),
('1086', '547', '_wp_attached_file', '2013/08/shutterstock_70184773-774x320.jpg'),
('1087', '547', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"774";s:6:"height";s:3:"320";s:14:"hwstring_small";s:23:"height=''52'' width=''128''";s:4:"file";s:41:"2013/08/shutterstock_70184773-774x320.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:3:{s:4:"file";s:41:"shutterstock_70184773-774x320-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:41:"shutterstock_70184773-774x320-300x124.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"124";}s:14:"post-thumbnail";a:3:{s:4:"file";s:41:"shutterstock_70184773-774x320-225x136.jpg";s:5:"width";s:3:"225";s:6:"height";s:3:"136";}s:5:"slide";a:3:{s:4:"file";s:41:"shutterstock_70184773-774x320-546x291.jpg";s:5:"width";s:3:"546";s:6:"height";s:3:"291";}s:10:"post-first";a:3:{s:4:"file";s:41:"shutterstock_70184773-774x320-371x177.jpg";s:5:"width";s:3:"371";s:6:"height";s:3:"177";}s:6:"thumbs";a:3:{s:4:"file";s:41:"shutterstock_70184773-774x320-225x136.jpg";s:5:"width";s:3:"225";s:6:"height";s:3:"136";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('1088', '414', '_thumbnail_id', '547'),
('1090', '412', '_edit_lock', '1378074093:1'),
('1091', '549', '_wp_attached_file', '2013/08/photodune-2043745-college-student-s-774x3201.jpg'),
('1092', '549', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"774";s:6:"height";s:3:"320";s:14:"hwstring_small";s:23:"height=''52'' width=''128''";s:4:"file";s:56:"2013/08/photodune-2043745-college-student-s-774x3201.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:3:{s:4:"file";s:56:"photodune-2043745-college-student-s-774x3201-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:56:"photodune-2043745-college-student-s-774x3201-300x124.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"124";}s:14:"post-thumbnail";a:3:{s:4:"file";s:56:"photodune-2043745-college-student-s-774x3201-225x136.jpg";s:5:"width";s:3:"225";s:6:"height";s:3:"136";}s:5:"slide";a:3:{s:4:"file";s:56:"photodune-2043745-college-student-s-774x3201-546x291.jpg";s:5:"width";s:3:"546";s:6:"height";s:3:"291";}s:10:"post-first";a:3:{s:4:"file";s:56:"photodune-2043745-college-student-s-774x3201-371x177.jpg";s:5:"width";s:3:"371";s:6:"height";s:3:"177";}s:6:"thumbs";a:3:{s:4:"file";s:56:"photodune-2043745-college-student-s-774x3201-225x136.jpg";s:5:"width";s:3:"225";s:6:"height";s:3:"136";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('1093', '412', '_thumbnail_id', '549'),
('1095', '410', '_edit_lock', '1378073184:1'),
('1096', '551', '_wp_attached_file', '2013/08/shutterstock_58382248-774x320.jpg'),
('1097', '551', '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"774";s:6:"height";s:3:"320";s:14:"hwstring_small";s:23:"height=''52'' width=''128''";s:4:"file";s:41:"2013/08/shutterstock_58382248-774x320.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:3:{s:4:"file";s:41:"shutterstock_58382248-774x320-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:41:"shutterstock_58382248-774x320-300x124.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"124";}s:14:"post-thumbnail";a:3:{s:4:"file";s:41:"shutterstock_58382248-774x320-225x136.jpg";s:5:"width";s:3:"225";s:6:"height";s:3:"136";}s:5:"slide";a:3:{s:4:"file";s:41:"shutterstock_58382248-774x320-546x291.jpg";s:5:"width";s:3:"546";s:6:"height";s:3:"291";}s:10:"post-first";a:3:{s:4:"file";s:41:"shutterstock_58382248-774x320-371x177.jpg";s:5:"width";s:3:"371";s:6:"height";s:3:"177";}s:6:"thumbs";a:3:{s:4:"file";s:41:"shutterstock_58382248-774x320-225x136.jpg";s:5:"width";s:3:"225";s:6:"height";s:3:"136";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
('1098', '410', '_thumbnail_id', '551'),
('1100', '404', '_edit_lock', '1378073252:1'),
('1101', '404', '_thumbnail_id', '551'),
('1103', '427', '_edit_lock', '1378073484:1'),
('1104', '427', '_thumbnail_id', '551'),
('1105', '426', '_edit_lock', '1378073506:1'),
('1106', '426', '_thumbnail_id', '547'),
('1107', '425', '_edit_lock', '1378073526:1'),
('1108', '425', '_thumbnail_id', '543'),
('1109', '424', '_edit_lock', '1378073555:1'),
('1110', '424', '_thumbnail_id', '533'),
('1111', '423', '_edit_lock', '1378073591:1'),
('1112', '423', '_thumbnail_id', '535'),
('1113', '422', '_edit_lock', '1378073643:1'),
('1114', '422', '_thumbnail_id', '539'),
('1119', '402', 'magz_topnews', 'on'),
('1122', '412', 'wpb_post_views_count', '69'),
('1123', '410', 'wpb_post_views_count', '88'),
('1124', '408', 'wpb_post_views_count', '79'),
('1125', '404', 'wpb_post_views_count', '34'),
('1127', '400', 'wpb_post_views_count', '169'),
('1128', '398', 'wpb_post_views_count', '11'),
('1129', '392', 'wpb_post_views_count', '4'),
('1130', '390', 'wpb_post_views_count', '83'),
('1131', '427', 'wpb_post_views_count', '61'),
('1132', '424', 'wpb_post_views_count', '37'),
('1133', '424', 'wpb_post_views_count', '37'),
('1134', '426', 'wpb_post_views_count', '42'),
('1135', '424', 'wpb_post_views_count', '37'),
('1136', '425', 'wpb_post_views_count', '42'),
('1137', '396', 'rating', '5'),
('1138', '396', 'votes', '12'),
('1139', '423', 'wpb_post_views_count', '13'),
('1140', '422', 'wpb_post_views_count', '6'),
('1141', '402', 'rating', '5'),
('1142', '402', 'votes', '5'),
('1143', '400', 'rating', '4.8125000000001'),
('1144', '400', 'votes', '16'),
('1145', '414', 'rating', '4.3'),
('1146', '414', 'votes', '10'),
('1147', '416', 'rating', '4.2307692307693'),
('1148', '416', 'votes', '13'),
('1149', '390', 'rating', '4.1428571428571'),
('1150', '390', 'votes', '7'),
('1151', '406', 'rating', '4.3684210526315'),
('1152', '406', 'votes', '19'),
('1153', '412', 'rating', '4.6666666666667'),
('1154', '412', 'votes', '6'),
('1155', '410', 'rating', '5'),
('1156', '410', 'votes', '3');


/**
   * --------------------------------------------------------
   * Dump Table `magazine__posts`
   * --------------------------------------------------------
**/
CREATE TABLE IF NOT EXISTS `magazine__posts` (
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
  `post_content_filtered` text NOT NULL,
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
) ENGINE=MyISAM AUTO_INCREMENT=564 DEFAULT CHARSET=utf8;

/* DATA Table `magazine__posts` */
INSERT INTO `magazine__posts` VALUES
('2', '1', '2012-01-24 09:41:51', '2012-01-24 09:41:51', '<h1>(Заголовок 1) Психология</h1>
<h2>(Заголовок 2) Как достичь успеха в любом деле?</h2>
<h3>(Заголовок 3) Как часто мы беремся за какое-нибудь дело и не доводим его до конца. Хотя мечтаем о результатах и свершениях… А бывает, начинаем нелюбимую деятельность в поиске успеха и побед. И опять ничего не получается. Почему так? Что важно помнить, знать и делать для достижения успеха?</h3>
<h4>(Заголовок 4) Сразу оговорюсь: здесь нет ни капельки надежды для тех, кого интересует только успех. Как достичь успеха, ничего не делая, я не знаю. И никто этого не знает. Потому что волшебным образом все получается только в сказках. А в жизни все по-другому.</h4>
<h5>(Заголовок 5) Во-первых, определитесь с той деятельностью, которая вам нравится. Не вашим родителям, не знакомым и никому другому. А именно вам. И приоритетом в выборе должно быть желание: «Я хочу», а не степень прибыльности, перспективы, престижность и т.п. Все остальное – на втором, третьем и четвертом планах.</h5>
<h6>(Заголовок 6) Во-вторых, для достижения любых результатов необходимо нарастить уверенность в себе. Без внутренней веры и выбор толком сделать не получится. Поверьте в себя, станьте сильным человеком. Пройдите свой путь по преодолению потребности в одобрении, поддержке и т.д. И тогда вам откроются новые горизонты себя. Но это будет только началом долгого пути.</h6>
<address>(Адрес) Многие книжки рекомендуют поверить в успех. Я рекомендую быть с этим осторожнее. Вера нужна, но слепое стремление к успеху может все испортить. Если вы озадачены только целью, мечтами о результате, грезами о своей великости, вы рискуете ничего не добиться и бросить дело незавершенным. Все и сразу не приходит.</address>
<pre>(Отформатированный) Поэтому следующий пункт я уточнила: верьте в свое дело, 
даже если оно всем кажется не успешным.
Четвертое, и самое главное: углубитесь в процесс полностью. 
Бесконечно совершенствуйтесь в деталях. Ставьте перед собой маленькие цели
и достигайте их. Не стремитесь к горным вершинам. Но стремитесь сделать так,
чтобы каждая отточенная мелочь доставляла вам удовольствие. 
Ступенька за ступенькой, неторопливо, но настойчиво преодолевайте каждый этап. 
Не ждите поддержки и одобрения. Делайте вопреки, а иногда «против ветра» 
(против общественного мнения). Чувствуйте свой путь.</pre>
<strong>Расширяйте свой кругозор. Читайте книги, закладывайте в себя новые знания. Учитесь там, где никто не учит, ищите там, где ничего не видно. Перенимайте опыт других людей. Наслаждайтесь процессом. Нудным, каждодневным неинтересным процессом.</strong>
<ul>
	<li>И ничего не ждите взамен.</li>
	<li>Ни от кого.</li>
	<li>Само по себе дело должно приносить вам удовольствие, без результатов.</li>
	<li>Получайте радость от внешней пустоты и внутренней наполненности.</li>
</ul>
<ol>
	<li>И через долгое время, когда вы будете безусловно радоваться своим новым достижениям, когда вы будете чувствовать значимость своих знаний, и этого вам будет уже достаточно. Когда вы не будете нуждаться в общественном признании, тогда потихоньку оно будет к вам приходить. Маленькими несмелыми шажочками...</li>
	<li>И человек, который стал асом в своей деятельности, вовсе не считает себя великим. Он знает, что просто делал свое дело. Долго, настойчиво делал. Он знает, что разгадка успеха вовсе не в великости, а в труде.</li>
	<li>И каждый, каждый из нас может стать успешным, но не это главное. Главное, чтобы ты нашел свое, делал свое, получал от этого удовольствие и был этим сыт, ничего не ждал и ни на что не рассчитывал. Иногда забывал поесть, забывал поспать, забывал о себе, обо всем. Настолько был поглощен своими стремлениями.</li>
	<li>А все, что приложилось потом, это всего лишь маленький незначительный «бонус», который появился сам собой, вдруг, неожиданно.</li>
</ol>
<blockquote>А ты, уже успешный, достигший высот, ощущаешь себя всего лишь у подножия большой великой горы. И только теперь почувствовал всю глубину слов, сказанных однажды: «Я знаю, что ничего не знаю... А некоторые и этого не знают» (Сократ).</blockquote>
Желаю вам счастья и успехов в вашей деятельности!', 'О нас', '', 'publish', 'open', 'open', '', 'sample-page', '', '', '2012-01-25 08:28:19', '2012-01-25 08:28:19', '', '0', 'http://wordpress.server-7.ru/?page_id=2', '0', 'page', '', '0'),
('167', '1', '2012-01-31 06:15:41', '2012-01-31 06:15:41', '', 'Блог', '', 'inherit', 'open', 'open', '', '166-revision', '', '', '2012-01-31 06:15:41', '2012-01-31 06:15:41', '', '166', 'http://wordpress.server-7.ru/?p=167', '0', 'revision', '', '0'),
('166', '1', '2012-01-31 06:15:50', '2012-01-31 06:15:50', '', 'Блог', '', 'publish', 'open', 'open', '', '%d0%b1%d0%bb%d0%be%d0%b3', '', '', '2013-09-01 22:37:09', '2013-09-01 22:37:09', '', '0', 'http://wordpress.server-7.ru/?page_id=166', '0', 'page', '', '0'),
('5', '1', '2012-01-25 08:27:56', '2012-01-25 08:27:56', '<h1>(Заголовок 1) Психология</h1>
<h2>(Заголовок 2) Как достичь успеха в любом деле?</h2>
<h3>(Заголовок 3) Как часто мы беремся за какое-нибудь дело и не доводим его до конца. Хотя мечтаем о результатах и свершениях… А бывает, начинаем нелюбимую деятельность в поиске успеха и побед. И опять ничего не получается. Почему так? Что важно помнить, знать и делать для достижения успеха?</h3>
<h4>(Заголовок 4) Сразу оговорюсь: здесь нет ни капельки надежды для тех, кого интересует только успех. Как достичь успеха, ничего не делая, я не знаю. И никто этого не знает. Потому что волшебным образом все получается только в сказках. А в жизни все по-другому.</h4>
<h5>(Заголовок 5) Во-первых, определитесь с той деятельностью, которая вам нравится. Не вашим родителям, не знакомым и никому другому. А именно вам. И приоритетом в выборе должно быть желание: «Я хочу», а не степень прибыльности, перспективы, престижность и т.п. Все остальное – на втором, третьем и четвертом планах.</h5>
<h6>(Заголовок 6) Во-вторых, для достижения любых результатов необходимо нарастить уверенность в себе. Без внутренней веры и выбор толком сделать не получится. Поверьте в себя, станьте сильным человеком. Пройдите свой путь по преодолению потребности в одобрении, поддержке и т.д. И тогда вам откроются новые горизонты себя. Но это будет только началом долгого пути.</h6>
<address>(Адрес) Многие книжки рекомендуют поверить в успех. Я рекомендую быть с этим осторожнее. Вера нужна, но слепое стремление к успеху может все испортить. Если вы озадачены только целью, мечтами о результате, грезами о своей великости, вы рискуете ничего не добиться и бросить дело незавершенным. Все и сразу не приходит.</address>
<pre>(Отформатированный) Поэтому следующий пункт я уточнила: верьте в свое дело, 
даже если оно всем кажется не успешным.
Четвертое, и самое главное: углубитесь в процесс полностью. 
Бесконечно совершенствуйтесь в деталях. Ставьте перед собой маленькие цели
и достигайте их. Не стремитесь к горным вершинам. Но стремитесь сделать так,
чтобы каждая отточенная мелочь доставляла вам удовольствие. 
Ступенька за ступенькой, неторопливо, но настойчиво преодолевайте каждый этап. 
Не ждите поддержки и одобрения. Делайте вопреки, а иногда «против ветра» 
(против общественного мнения). Чувствуйте свой путь.</pre>
<strong>Расширяйте свой кругозор. Читайте книги, закладывайте в себя новые знания. Учитесь там, где никто не учит, ищите там, где ничего не видно. Перенимайте опыт других людей. Наслаждайтесь процессом. Нудным, каждодневным неинтересным процессом.</strong>
<ul>
	<li>И ничего не ждите взамен.</li>
	<li>Ни от кого.</li>
	<li>Само по себе дело должно приносить вам удовольствие, без результатов.</li>
	<li>Получайте радость от внешней пустоты и внутренней наполненности.</li>
</ul>
<ol>
	<li>И через долгое время, когда вы будете безусловно радоваться своим новым достижениям, когда вы будете чувствовать значимость своих знаний, и этого вам будет уже достаточно. Когда вы не будете нуждаться в общественном признании, тогда потихоньку оно будет к вам приходить. Маленькими несмелыми шажочками...</li>
	<li>И человек, который стал асом в своей деятельности, вовсе не считает себя великим. Он знает, что просто делал свое дело. Долго, настойчиво делал. Он знает, что разгадка успеха вовсе не в великости, а в труде.</li>
	<li>И каждый, каждый из нас может стать успешным, но не это главное. Главное, чтобы ты нашел свое, делал свое, получал от этого удовольствие и был этим сыт, ничего не ждал и ни на что не рассчитывал. Иногда забывал поесть, забывал поспать, забывал о себе, обо всем. Настолько был поглощен своими стремлениями.</li>
	<li>А все, что приложилось потом, это всего лишь маленький незначительный «бонус», который появился сам собой, вдруг, неожиданно.</li>
</ol>
А ты, уже успешный, достигший высот, ощущаешь себя всего лишь у подножия большой великой горы. И только теперь почувствовал всю глубину слов, сказанных однажды: «Я знаю, что ничего не знаю... А некоторые и этого не знают» (Сократ).

Желаю вам счастья и успехов в вашей деятельности!', 'О нас', '', 'inherit', 'open', 'open', '', '2-autosave', '', '', '2012-01-25 08:27:56', '2012-01-25 08:27:56', '', '2', 'http://wordpress.server-7.ru/?p=5', '0', 'revision', '', '0'),
('6', '1', '2012-01-24 09:41:51', '2012-01-24 09:41:51', 'Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:

<blockquote>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>

...или так:

<blockquote>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>

Перейдите <a href="http://wordpress.server-7.ru/wp-admin/">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'Пример страницы', '', 'inherit', 'open', 'open', '', '2-revision', '', '', '2012-01-24 09:41:51', '2012-01-24 09:41:51', '', '2', 'http://wordpress.server-7.ru/?p=6', '0', 'revision', '', '0'),
('7', '1', '2012-01-25 08:04:03', '2012-01-25 08:04:03', '<h1>Фридрих Ницше</h1>
&nbsp;

&nbsp;
<ol>
	<li><em>Высшее мужество познающего обнаруживается не там, где он вызывает удивление и ужас, - но там, где далекие от познания люди воспринимают его поверхностным, низменным, трусливым, равнодушным. Это свойственное познаванию хорошее, тонкое, строгое чувство, из которого вы вовсе не хотите сотворить себе добродетели, есть цвет многих добродетелей: но заповедь "ты должен", из которого оно возникло, уже не предстает взору; корень ее сокрыт под землей.</em></li>
	<li><em>Желать чего-то и добиваться этого - считается признаком сильного характера. Но даже не желая чего-то, все-таки добиваться этого - свойственно сильнейшим, которые ощущают себя воплощенным фатумом.</em><em></em></li>
	<li><em>Когда-нибудь все будет иметь свой конец - далекий день, которого я уже не увижу, - тогда откроют мои книги и у меня будут читатели. Я должен писать для них, для них я должен закончить мои основные идеи. Сейчас я не могу бороться - у меня нет даже противников.</em></li>
</ol>', 'О нас', '', 'inherit', 'open', 'open', '', '2-revision-2', '', '', '2012-01-25 08:04:03', '2012-01-25 08:04:03', '', '2', 'http://wordpress.server-7.ru/?p=7', '0', 'revision', '', '0'),
('8', '1', '2012-01-25 08:04:16', '2012-01-25 08:04:16', '<h1>Фридрих Ницше</h1>
<ol>
	<li><em>Высшее мужество познающего обнаруживается не там, где он вызывает удивление и ужас, - но там, где далекие от познания люди воспринимают его поверхностным, низменным, трусливым, равнодушным. Это свойственное познаванию хорошее, тонкое, строгое чувство, из которого вы вовсе не хотите сотворить себе добродетели, есть цвет многих добродетелей: но заповедь "ты должен", из которого оно возникло, уже не предстает взору; корень ее сокрыт под землей.</em></li>
	<li><em>Желать чего-то и добиваться этого - считается признаком сильного характера. Но даже не желая чего-то, все-таки добиваться этого - свойственно сильнейшим, которые ощущают себя воплощенным фатумом.</em><em></em></li>
	<li><em>Когда-нибудь все будет иметь свой конец - далекий день, которого я уже не увижу, - тогда откроют мои книги и у меня будут читатели. Я должен писать для них, для них я должен закончить мои основные идеи. Сейчас я не могу бороться - у меня нет даже противников.</em></li>
</ol>', 'О нас', '', 'inherit', 'open', 'open', '', '2-revision-3', '', '', '2012-01-25 08:04:16', '2012-01-25 08:04:16', '', '2', 'http://wordpress.server-7.ru/?p=8', '0', 'revision', '', '0'),
('9', '1', '2012-01-25 08:20:55', '2012-01-25 08:20:55', '<h1>Психология</h1>
<h2>Как достичь успеха в любом деле?</h2>
<h3>Как часто мы беремся за какое-нибудь дело и не доводим его до конца. Хотя мечтаем о результатах и свершениях… А бывает, начинаем нелюбимую деятельность в поиске успеха и побед. И опять ничего не получается. Почему так? Что важно помнить, знать и делать для достижения успеха?</h3>
<h4>Сразу оговорюсь: здесь нет ни капельки надежды для тех, кого интересует только успех. Как достичь успеха, ничего не делая, я не знаю. И никто этого не знает. Потому что волшебным образом все получается только в сказках. А в жизни все по-другому.</h4>
<h5>Во-первых, определитесь с той деятельностью, которая вам нравится. Не вашим родителям, не знакомым и никому другому. А именно вам. И приоритетом в выборе должно быть желание: «Я хочу», а не степень прибыльности, перспективы, престижность и т.п. Все остальное – на втором, третьем и четвертом планах.</h5>
<h6>Во-вторых, для достижения любых результатов необходимо нарастить уверенность в себе. Без внутренней веры и выбор толком сделать не получится. Поверьте в себя, станьте сильным человеком. Пройдите свой путь по преодолению потребности в одобрении, поддержке и т.д. И тогда вам откроются новые горизонты себя. Но это будет только началом долгого пути.</h6>
Многие книжки рекомендуют поверить в успех. Я рекомендую быть с этим осторожнее. Вера нужна, но слепое стремление к успеху может все испортить. Если вы озадачены только целью, мечтами о результате, грезами о своей великости, вы рискуете ничего не добиться и бросить дело незавершенным. Все и сразу не приходит.

Поэтому следующий пункт я уточнила: верьте в свое дело, даже если оно всем кажется не успешным.

Четвертое, и самое главное: углубитесь в процесс полностью. Бесконечно совершенствуйтесь в деталях. Ставьте перед собой маленькие цели и достигайте их. Не стремитесь к горным вершинам. Но стремитесь сделать так, чтобы каждая отточенная мелочь доставляла вам удовольствие. Ступенька за ступенькой, неторопливо, но настойчиво преодолевайте каждый этап. Не ждите поддержки и одобрения. Делайте вопреки, а иногда «против ветра» (против общественного мнения). Чувствуйте свой путь.

Расширяйте свой кругозор. Читайте книги, закладывайте в себя новые знания. Учитесь там, где никто не учит, ищите там, где ничего не видно. Перенимайте опыт других людей. Наслаждайтесь процессом. Нудным, каждодневным неинтересным процессом.

И ничего не ждите взамен. Ни от кого. Само по себе дело должно приносить вам удовольствие, без результатов. Получайте радость от внешней пустоты и внутренней наполненности.

И через долгое время, когда вы будете безусловно радоваться своим новым достижениям, когда вы будете чувствовать значимость своих знаний, и этого вам будет уже достаточно. Когда вы не будете нуждаться в общественном признании, тогда потихоньку оно будет к вам приходить. Маленькими несмелыми шажочками...

И человек, который стал асом в своей деятельности, вовсе не считает себя великим. Он знает, что просто делал свое дело. Долго, настойчиво делал. Он знает, что разгадка успеха вовсе не в великости, а в труде.

И каждый, каждый из нас может стать успешным, но не это главное. Главное, чтобы ты нашел свое, делал свое, получал от этого удовольствие и был этим сыт, ничего не ждал и ни на что не рассчитывал. Иногда забывал поесть, забывал поспать, забывал о себе, обо всем. Настолько был поглощен своими стремлениями.

А все, что приложилось потом, это всего лишь маленький незначительный «бонус», который появился сам собой, вдруг, неожиданно.

А ты, уже успешный, достигший высот, ощущаешь себя всего лишь у подножия большой великой горы. И только теперь почувствовал всю глубину слов, сказанных однажды: «Я знаю, что ничего не знаю... А некоторые и этого не знают» (Сократ).

Желаю вам счастья и успехов в вашей деятельности!', 'О нас', '', 'inherit', 'open', 'open', '', '2-revision-4', '', '', '2012-01-25 08:20:55', '2012-01-25 08:20:55', '', '2', 'http://wordpress.server-7.ru/?p=9', '0', 'revision', '', '0'),
('11', '1', '2012-01-25 09:00:30', '2012-01-25 09:00:30', 'Как маленький автомобильчик стал большим достижением английского автопрома', 'Как маленький автомобильчик стал большим достижением английского автопрома', 'Как маленький автомобильчик стал большим достижением английского автопрома', 'inherit', 'open', 'open', '', '104001_or', '', '', '2012-01-25 09:00:30', '2012-01-25 09:00:30', '', '0', 'http://wordpress.server-7.ru/wp-content/uploads/2012/01/104001_or.jpg', '0', 'attachment', 'image/jpeg', '0'),
('12', '1', '2012-01-25 09:00:33', '2012-01-25 09:00:33', '', '104002_or', '', 'inherit', 'open', 'open', '', '104002_or', '', '', '2012-01-25 09:00:33', '2012-01-25 09:00:33', '', '0', 'http://wordpress.server-7.ru/wp-content/uploads/2012/01/104002_or.jpg', '0', 'attachment', 'image/jpeg', '0'),
('17', '1', '2012-01-25 09:10:19', '2012-01-25 09:10:19', '', '103237_or', '', 'inherit', 'open', 'open', '', '103237_or', '', '', '2012-01-25 09:10:19', '2012-01-25 09:10:19', '', '0', 'http://wordpress.server-7.ru/wp-content/uploads/2012/01/103237_or1.jpg', '0', 'attachment', 'image/jpeg', '0'),
('18', '1', '2012-01-25 09:10:21', '2012-01-25 09:10:21', 'Что говорит цвет автомобиля о характере его владельца?', 'Что говорит цвет автомобиля о характере его владельца?', 'Что говорит цвет автомобиля о характере его владельца?', 'inherit', 'open', 'open', '', '103239_or', '', '', '2012-01-25 09:10:21', '2012-01-25 09:10:21', '', '0', 'http://wordpress.server-7.ru/wp-content/uploads/2012/01/103239_or.jpg', '0', 'attachment', 'image/jpeg', '0'),
('23', '1', '2012-01-25 09:24:33', '2012-01-25 09:24:33', '', '103119_or', '', 'inherit', 'open', 'open', '', '103119_or', '', '', '2012-01-25 09:24:33', '2012-01-25 09:24:33', '', '0', 'http://wordpress.server-7.ru/wp-content/uploads/2012/01/103119_or.jpg', '0', 'attachment', 'image/jpeg', '0'),
('24', '1', '2012-01-25 09:24:35', '2012-01-25 09:24:35', 'Как стать хорошим водителем', 'Как стать хорошим водителем', 'Как стать хорошим водителем', 'inherit', 'open', 'open', '', '103121_or', '', '', '2012-01-25 09:24:35', '2012-01-25 09:24:35', '', '0', 'http://wordpress.server-7.ru/wp-content/uploads/2012/01/103121_or.jpg', '0', 'attachment', 'image/jpeg', '0'),
('237', '1', '2012-09-01 20:27:22', '2012-09-01 20:27:22', 'bla-bla-bla

bla-bla', 'Event  3', '', 'publish', 'closed', 'closed', '', 'event-3', '', '', '2012-09-01 20:27:22', '2012-09-01 20:27:22', '', '0', 'http://wordpress.server-7.ru/?post_type=sp_events&#038;p=237', '0', 'sp_events', '', '0'),
('32', '1', '2012-01-25 10:16:30', '2012-01-25 10:16:30', '', '103054_or', '', 'inherit', 'open', 'open', '', '103054_or', '', '', '2012-01-25 10:16:30', '2012-01-25 10:16:30', '', '0', 'http://wordpress.server-7.ru/wp-content/uploads/2012/01/103054_or.jpg', '0', 'attachment', 'image/jpeg', '0'),
('33', '1', '2012-01-25 10:16:36', '2012-01-25 10:16:36', 'Чему удивиться в Детройте-2012?', 'Чему удивиться в Детройте-2012?', 'Чему удивиться в Детройте-2012?', 'inherit', 'open', 'open', '', '103055_or', '', '', '2012-01-25 10:16:36', '2012-01-25 10:16:36', '', '0', 'http://wordpress.server-7.ru/wp-content/uploads/2012/01/103055_or.jpg', '0', 'attachment', 'image/jpeg', '0'),
('36', '1', '2012-01-25 10:18:57', '2012-01-25 10:18:57', 'Как пешеходу перейти дорогу и при этом остаться в живых?', 'Как пешеходу перейти дорогу и при этом остаться в живых?', 'Как пешеходу перейти дорогу и при этом остаться в живых?', 'inherit', 'open', 'open', '', '102864_or', '', '', '2012-01-25 10:18:57', '2012-01-25 10:18:57', '', '0', 'http://wordpress.server-7.ru/wp-content/uploads/2012/01/102864_or.jpg', '0', 'attachment', 'image/jpeg', '0'),
('37', '1', '2012-01-25 10:19:00', '2012-01-25 10:19:00', '', '102865_or', '', 'inherit', 'open', 'open', '', '102865_or', '', '', '2012-01-25 10:19:00', '2012-01-25 10:19:00', '', '0', 'http://wordpress.server-7.ru/wp-content/uploads/2012/01/102865_or.jpg', '0', 'attachment', 'image/jpeg', '0'),
('41', '1', '2012-01-25 10:25:37', '2012-01-25 10:25:37', 'Женщина за рулем: кто против?', 'Женщина за рулем: кто против?', 'Женщина за рулем: кто против?', 'inherit', 'open', 'open', '', '102829_or', '', '', '2012-01-25 10:25:37', '2012-01-25 10:25:37', '', '0', 'http://wordpress.server-7.ru/wp-content/uploads/2012/01/102829_or.jpg', '0', 'attachment', 'image/jpeg', '0'),
('42', '1', '2012-01-25 10:25:40', '2012-01-25 10:25:40', '', '102830_or', '', 'inherit', 'open', 'open', '', '102830_or', '', '', '2012-01-25 10:25:40', '2012-01-25 10:25:40', '', '0', 'http://wordpress.server-7.ru/wp-content/uploads/2012/01/102830_or.jpg', '0', 'attachment', 'image/jpeg', '0'),
('45', '1', '2012-01-25 10:33:48', '2012-01-25 10:33:48', 'Ремонт радиатора. В каких случаях он необходим?', 'Ремонт радиатора. В каких случаях он необходим?', 'Ремонт радиатора. В каких случаях он необходим?', 'inherit', 'open', 'open', '', '102731_or', '', '', '2012-01-25 10:33:48', '2012-01-25 10:33:48', '', '0', 'http://wordpress.server-7.ru/wp-content/uploads/2012/01/102731_or.jpg', '0', 'attachment', 'image/jpeg', '0'),
('46', '1', '2012-01-25 10:33:50', '2012-01-25 10:33:50', '', '102732_or', '', 'inherit', 'open', 'open', '', '102732_or', '', '', '2012-01-25 10:33:50', '2012-01-25 10:33:50', '', '0', 'http://wordpress.server-7.ru/wp-content/uploads/2012/01/102732_or.jpg', '0', 'attachment', 'image/jpeg', '0'),
('50', '1', '2012-01-25 10:38:07', '2012-01-25 10:38:07', 'Стук в двигателе - что делать?', 'Стук в двигателе - что делать?', 'Стук в двигателе - что делать?', 'inherit', 'open', 'open', '', '102677_or', '', '', '2012-01-25 10:38:07', '2012-01-25 10:38:07', '', '0', 'http://wordpress.server-7.ru/wp-content/uploads/2012/01/102677_or.jpg', '0', 'attachment', 'image/jpeg', '0'),
('51', '1', '2012-01-25 10:38:09', '2012-01-25 10:38:09', '', '102678_or', '', 'inherit', 'open', 'open', '', '102678_or', '', '', '2012-01-25 10:38:09', '2012-01-25 10:38:09', '', '0', 'http://wordpress.server-7.ru/wp-content/uploads/2012/01/102678_or.jpg', '0', 'attachment', 'image/jpeg', '0'),
('54', '1', '2012-01-25 10:45:12', '2012-01-25 10:45:12', '', '102645_or', '', 'inherit', 'open', 'open', '', '102645_or', '', '', '2012-01-25 10:45:12', '2012-01-25 10:45:12', '', '0', 'http://wordpress.server-7.ru/wp-content/uploads/2012/01/102645_or.jpg', '0', 'attachment', 'image/jpeg', '0'),
('55', '1', '2012-01-25 10:45:14', '2012-01-25 10:45:14', 'Как продать автомобиль?', 'Как продать автомобиль?', 'Как продать автомобиль?', 'inherit', 'open', 'open', '', '102646_or', '', '', '2012-01-25 10:45:14', '2012-01-25 10:45:14', '', '0', 'http://wordpress.server-7.ru/wp-content/uploads/2012/01/102646_or.jpg', '0', 'attachment', 'image/jpeg', '0'),
('58', '1', '2012-01-25 10:51:52', '2012-01-25 10:51:52', 'Как вести машину в тумане?', 'Как вести машину в тумане?', 'Как вести машину в тумане?', 'inherit', 'open', 'open', '', '101717_or', '', '', '2012-01-25 10:51:52', '2012-01-25 10:51:52', '', '0', 'http://wordpress.server-7.ru/wp-content/uploads/2012/01/101717_or.jpg', '0', 'attachment', 'image/jpeg', '0'),
('59', '1', '2012-01-25 10:51:53', '2012-01-25 10:51:53', '', '101718_or', '', 'inherit', 'open', 'open', '', '101718_or', '', '', '2012-01-25 10:51:53', '2012-01-25 10:51:53', '', '0', 'http://wordpress.server-7.ru/wp-content/uploads/2012/01/101718_or.jpg', '0', 'attachment', 'image/jpeg', '0'),
('63', '1', '2012-01-25 10:57:49', '2012-01-25 10:57:49', '', '100864_or', '', 'inherit', 'open', 'open', '', '100864_or', '', '', '2012-01-25 10:57:49', '2012-01-25 10:57:49', '', '0', 'http://wordpress.server-7.ru/wp-content/uploads/2012/01/100864_or.jpg', '0', 'attachment', 'image/jpeg', '0'),
('64', '1', '2012-01-25 10:57:51', '2012-01-25 10:57:51', 'Украли номера с машины: что делать?', 'Украли номера с машины: что делать?', 'Украли номера с машины: что делать?', 'inherit', 'open', 'open', '', '100865_or', '', '', '2012-01-25 10:57:51', '2012-01-25 10:57:51', '', '0', 'http://wordpress.server-7.ru/wp-content/uploads/2012/01/100865_or.jpg', '0', 'attachment', 'image/jpeg', '0'),
('67', '1', '2012-01-25 11:11:32', '2012-01-25 11:11:32', 'Кто виноват, если барахлит техника? Гремлины!', 'Кто виноват, если барахлит техника? Гремлины!', 'Кто виноват, если барахлит техника? Гремлины!', 'inherit', 'open', 'open', '', '100072_or', '', '', '2012-01-25 11:11:32', '2012-01-25 11:11:32', '', '0', 'http://wordpress.server-7.ru/wp-content/uploads/2012/01/100072_or.jpg', '0', 'attachment', 'image/jpeg', '0'),
('68', '1', '2012-01-25 11:11:36', '2012-01-25 11:11:36', '', '100073_or', '', 'inherit', 'open', 'open', '', '100073_or', '', '', '2012-01-25 11:11:36', '2012-01-25 11:11:36', '', '0', 'http://wordpress.server-7.ru/wp-content/uploads/2012/01/100073_or.jpg', '0', 'attachment', 'image/jpeg', '0'),
('71', '1', '2012-01-25 11:41:08', '2012-01-25 11:41:08', '', '103646_or', '', 'inherit', 'open', 'open', '', '103646_or', '', '', '2012-01-25 11:41:08', '2012-01-25 11:41:08', '', '0', 'http://wordpress.server-7.ru/wp-content/uploads/2012/01/103646_or.jpg', '0', 'attachment', 'image/jpeg', '0'),
('72', '1', '2012-01-25 11:41:10', '2012-01-25 11:41:10', 'О чем могут рассказать «говорящие» фамилии?', 'О чем могут рассказать «говорящие» фамилии?', 'О чем могут рассказать «говорящие» фамилии?', 'inherit', 'open', 'open', '', '103647_or', '', '', '2012-01-25 11:41:10', '2012-01-25 11:41:10', '', '0', 'http://wordpress.server-7.ru/wp-content/uploads/2012/01/103647_or.jpg', '0', 'attachment', 'image/jpeg', '0'),
('76', '1', '2012-01-25 11:46:38', '2012-01-25 11:46:38', 'Заха Хадид. Что может женщина в современном мире?', 'Заха Хадид. Что может женщина в современном мире?', 'Заха Хадид. Что может женщина в современном мире?', 'inherit', 'open', 'open', '', '103585_or', '', '', '2012-01-25 11:46:38', '2012-01-25 11:46:38', '', '0', 'http://wordpress.server-7.ru/wp-content/uploads/2012/01/103585_or.jpg', '0', 'attachment', 'image/jpeg', '0'),
('77', '1', '2012-01-25 11:46:42', '2012-01-25 11:46:42', 'Заха Хадид. Что может женщина в современном мире?', 'Заха Хадид. Что может женщина в современном мире?', 'Заха Хадид. Что может женщина в современном мире?', 'inherit', 'open', 'open', '', '103586_or', '', '', '2012-01-25 11:46:42', '2012-01-25 11:46:42', '', '0', 'http://wordpress.server-7.ru/wp-content/uploads/2012/01/103586_or.jpg', '0', 'attachment', 'image/jpeg', '0'),
('78', '1', '2012-01-25 11:46:43', '2012-01-25 11:46:43', '', '103587_or', '', 'inherit', 'open', 'open', '', '103587_or', '', '', '2012-01-25 11:46:43', '2012-01-25 11:46:43', '', '0', 'http://wordpress.server-7.ru/wp-content/uploads/2012/01/103587_or.jpg', '0', 'attachment', 'image/jpeg', '0'),
('81', '1', '2012-01-25 11:51:55', '2012-01-25 11:51:55', 'Откуда родом Марко Поло - из Венеции или Корчулы?', 'Откуда родом Марко Поло - из Венеции или Корчулы?', 'Откуда родом Марко Поло - из Венеции или Корчулы?', 'inherit', 'open', 'open', '', '103377_or', '', '', '2012-01-25 11:51:55', '2012-01-25 11:51:55', '', '0', 'http://wordpress.server-7.ru/wp-content/uploads/2012/01/103377_or.jpg', '0', 'attachment', 'image/jpeg', '0'),
('82', '1', '2012-01-25 11:51:58', '2012-01-25 11:51:58', '', '103378_or', '', 'inherit', 'open', 'open', '', '103378_or', '', '', '2012-01-25 11:51:58', '2012-01-25 11:51:58', '', '0', 'http://wordpress.server-7.ru/wp-content/uploads/2012/01/103378_or.jpg', '0', 'attachment', 'image/jpeg', '0'),
('85', '1', '2012-01-25 11:56:10', '2012-01-25 11:56:10', 'Что погубило Элизабет Сиддал, музу прерафаэлитов?', 'Что погубило Элизабет Сиддал, музу прерафаэлитов?', 'Что погубило Элизабет Сиддал, музу прерафаэлитов?', 'inherit', 'open', 'open', '', '103290_or', '', '', '2012-01-25 11:56:10', '2012-01-25 11:56:10', '', '0', 'http://wordpress.server-7.ru/wp-content/uploads/2012/01/103290_or.jpg', '0', 'attachment', 'image/jpeg', '0'),
('86', '1', '2012-01-25 11:56:13', '2012-01-25 11:56:13', '', '103294_or', '', 'inherit', 'open', 'open', '', '103294_or', '', '', '2012-01-25 11:56:13', '2012-01-25 11:56:13', '', '0', 'http://wordpress.server-7.ru/wp-content/uploads/2012/01/103294_or.jpg', '0', 'attachment', 'image/jpeg', '0'),
('89', '1', '2012-01-25 11:59:59', '2012-01-25 11:59:59', 'Что погубило Элизабет Сиддал, музу прерафаэлитов?', 'Что погубило Элизабет Сиддал, музу прерафаэлитов?', 'Что погубило Элизабет Сиддал, музу прерафаэлитов?', 'inherit', 'open', 'open', '', '103297_or', '', '', '2012-01-25 11:59:59', '2012-01-25 11:59:59', '', '0', 'http://wordpress.server-7.ru/wp-content/uploads/2012/01/103297_or.jpg', '0', 'attachment', 'image/jpeg', '0'),
('90', '1', '2012-01-25 12:00:00', '2012-01-25 12:00:00', 'Что погубило Элизабет Сиддал, музу прерафаэлитов?', 'Что погубило Элизабет Сиддал, музу прерафаэлитов?', 'Что погубило Элизабет Сиддал, музу прерафаэлитов?', 'inherit', 'open', 'open', '', '103299_or', '', '', '2012-01-25 12:00:00', '2012-01-25 12:00:00', '', '0', 'http://wordpress.server-7.ru/wp-content/uploads/2012/01/103299_or.jpg', '0', 'attachment', 'image/jpeg', '0'),
('93', '1', '2012-01-25 12:06:16', '2012-01-25 12:06:16', '', '103106_or', '', 'inherit', 'open', 'open', '', '103106_or', '', '', '2012-01-25 12:06:16', '2012-01-25 12:06:16', '', '0', 'http://wordpress.server-7.ru/wp-content/uploads/2012/01/103106_or.jpg', '0', 'attachment', 'image/jpeg', '0'),
('94', '1', '2012-01-25 12:06:17', '2012-01-25 12:06:17', 'Церковь в Суре, построенная Иоанном Крондштадским', 'Церковь в Суре, построенная Иоанном Крондштадским', 'Церковь в Суре, построенная Иоанном Крондштадским', 'inherit', 'open', 'open', '', '103107_or', '', '', '2012-01-25 12:06:17', '2012-01-25 12:06:17', '', '0', 'http://wordpress.server-7.ru/wp-content/uploads/2012/01/103107_or.jpg', '0', 'attachment', 'image/jpeg', '0'),
('97', '1', '2012-01-25 12:10:30', '2012-01-25 12:10:30', 'Мадонна', 'Мадонна', 'Мадонна', 'inherit', 'open', 'open', '', '102025_or', '', '', '2012-01-25 12:10:30', '2012-01-25 12:10:30', '', '0', 'http://wordpress.server-7.ru/wp-content/uploads/2012/01/102025_or.jpg', '0', 'attachment', 'image/jpeg', '0'),
('98', '1', '2012-01-25 12:10:32', '2012-01-25 12:10:32', '', '102026_or', '', 'inherit', 'open', 'open', '', '102026_or', '', '', '2012-01-25 12:10:32', '2012-01-25 12:10:32', '', '0', 'http://wordpress.server-7.ru/wp-content/uploads/2012/01/102026_or.jpg', '0', 'attachment', 'image/jpeg', '0'),
('101', '1', '2012-01-25 12:14:23', '2012-01-25 12:14:23', '', '101004_or', '', 'inherit', 'open', 'open', '', '101004_or', '', '', '2012-01-25 12:14:23', '2012-01-25 12:14:23', '', '0', 'http://wordpress.server-7.ru/wp-content/uploads/2012/01/101004_or.jpg', '0', 'attachment', 'image/jpeg', '0'),
('234', '1', '2012-09-01 20:24:30', '2012-09-01 20:24:30', 'bla-bla-bla-bla', 'Event 1', '', 'inherit', 'open', 'open', '', '233-autosave', '', '', '2012-09-01 20:24:30', '2012-09-01 20:24:30', '', '233', 'http://wordpress.server-7.ru/?p=234', '0', 'revision', '', '0'),
('235', '1', '2012-09-01 20:25:49', '2012-09-01 20:25:49', 'bla-bla

bla-bla-bla', 'Event 2', '', 'publish', 'closed', 'closed', '', 'event-2', '', '', '2012-09-01 20:25:49', '2012-09-01 20:25:49', '', '0', 'http://wordpress.server-7.ru/?post_type=sp_events&#038;p=235', '0', 'sp_events', '', '0'),
('111', '1', '2012-01-26 09:51:27', '2012-01-26 09:51:27', 'Угличский кремль, церковь Димитрия на крови, 1692 г.', 'Угличский кремль, церковь Димитрия на крови, 1692 г.', 'Угличский кремль, церковь Димитрия на крови, 1692 г.', 'inherit', 'open', 'open', '', '100790_or', '', '', '2012-01-26 09:51:27', '2012-01-26 09:51:27', '', '0', 'http://wordpress.server-7.ru/wp-content/uploads/2012/01/100790_or.jpg', '0', 'attachment', 'image/jpeg', '0'),
('112', '1', '2012-01-26 09:51:28', '2012-01-26 09:51:28', '', '100792_or', '', 'inherit', 'open', 'open', '', '100792_or', '', '', '2012-01-26 09:51:28', '2012-01-26 09:51:28', '', '0', 'http://wordpress.server-7.ru/wp-content/uploads/2012/01/100792_or.jpg', '0', 'attachment', 'image/jpeg', '0'),
('116', '1', '2012-01-26 09:58:06', '2012-01-26 09:58:06', '', '100589_or', '', 'inherit', 'open', 'open', '', '100589_or', '', '', '2012-01-26 09:58:06', '2012-01-26 09:58:06', '', '0', 'http://wordpress.server-7.ru/wp-content/uploads/2012/01/100589_or.jpg', '0', 'attachment', 'image/jpeg', '0'),
('117', '1', '2012-01-26 09:58:08', '2012-01-26 09:58:08', 'Самые знаменитые женщины в Web 2.0', 'Самые знаменитые женщины в Web 2.0', 'Самые знаменитые женщины в Web 2.0', 'inherit', 'open', 'open', '', '100590_or', '', '', '2012-01-26 09:58:08', '2012-01-26 09:58:08', '', '0', 'http://wordpress.server-7.ru/wp-content/uploads/2012/01/100590_or.jpg', '0', 'attachment', 'image/jpeg', '0'),
('120', '1', '2012-01-26 10:02:41', '2012-01-26 10:02:41', 'Какая она, судьба польской интеллигенции XX века?', 'Какая она, судьба польской интеллигенции XX века?', 'Какая она, судьба польской интеллигенции XX века?', 'inherit', 'open', 'open', '', '100069_or', '', '', '2012-01-26 10:02:41', '2012-01-26 10:02:41', '', '0', 'http://wordpress.server-7.ru/wp-content/uploads/2012/01/100069_or.jpg', '0', 'attachment', 'image/jpeg', '0'),
('121', '1', '2012-01-26 10:02:44', '2012-01-26 10:02:44', '', '100070_or', '', 'inherit', 'open', 'open', '', '100070_or', '', '', '2012-01-26 10:02:44', '2012-01-26 10:02:44', '', '0', 'http://wordpress.server-7.ru/wp-content/uploads/2012/01/100070_or.jpg', '0', 'attachment', 'image/jpeg', '0'),
('124', '1', '2012-01-26 10:04:46', '2012-01-26 10:04:46', '', '99984_or', '', 'inherit', 'open', 'open', '', '99984_or', '', '', '2012-01-26 10:04:46', '2012-01-26 10:04:46', '', '0', 'http://wordpress.server-7.ru/wp-content/uploads/2012/01/99984_or.jpg', '0', 'attachment', 'image/jpeg', '0'),
('125', '1', '2012-01-26 10:04:47', '2012-01-26 10:04:47', 'Как Яльмар Шахт спасал экономику Германии?', 'Как Яльмар Шахт спасал экономику Германии?', 'Как Яльмар Шахт спасал экономику Германии?', 'inherit', 'open', 'open', '', '99985_or', '', '', '2012-01-26 10:04:47', '2012-01-26 10:04:47', '', '0', 'http://wordpress.server-7.ru/wp-content/uploads/2012/01/99985_or.jpg', '0', 'attachment', 'image/jpeg', '0'),
('128', '1', '2012-01-26 10:13:16', '2012-01-26 10:13:16', 'Как цивилизованно сдать квартиру в аренду?', 'Как цивилизованно сдать квартиру в аренду?', 'Как цивилизованно сдать квартиру в аренду?', 'inherit', 'open', 'open', '', '103770_or', '', '', '2012-01-26 10:13:16', '2012-01-26 10:13:16', '', '0', 'http://wordpress.server-7.ru/wp-content/uploads/2012/01/103770_or.jpg', '0', 'attachment', 'image/jpeg', '0'),
('129', '1', '2012-01-26 10:13:20', '2012-01-26 10:13:20', '', '103771_or', '', 'inherit', 'open', 'open', '', '103771_or', '', '', '2012-01-26 10:13:20', '2012-01-26 10:13:20', '', '0', 'http://wordpress.server-7.ru/wp-content/uploads/2012/01/103771_or.jpg', '0', 'attachment', 'image/jpeg', '0'),
('135', '1', '2012-01-26 10:22:08', '2012-01-26 10:22:08', 'Адекватность покупок', 'Адекватность покупок', 'Адекватность покупок', 'inherit', 'open', 'open', '', '103757_or', '', '', '2012-01-26 10:22:08', '2012-01-26 10:22:08', '', '0', 'http://wordpress.server-7.ru/wp-content/uploads/2012/01/103757_or.jpg', '0', 'attachment', 'image/jpeg', '0'),
('136', '1', '2012-01-26 10:22:10', '2012-01-26 10:22:10', '', '103758_or', '', 'inherit', 'open', 'open', '', '103758_or', '', '', '2012-01-26 10:22:10', '2012-01-26 10:22:10', '', '0', 'http://wordpress.server-7.ru/wp-content/uploads/2012/01/103758_or.jpg', '0', 'attachment', 'image/jpeg', '0'),
('140', '1', '2012-01-26 10:39:10', '2012-01-26 10:39:10', 'Три приметы, чтобы не проспать кризис', 'Три приметы, чтобы не проспать кризис', 'Три приметы, чтобы не проспать кризис', 'inherit', 'open', 'open', '', '103173_or', '', '', '2012-01-26 10:39:10', '2012-01-26 10:39:10', '', '0', 'http://wordpress.server-7.ru/wp-content/uploads/2012/01/103173_or.jpg', '0', 'attachment', 'image/jpeg', '0'),
('141', '1', '2012-01-26 10:39:11', '2012-01-26 10:39:11', '', '103174_or', '', 'inherit', 'open', 'open', '', '103174_or', '', '', '2012-01-26 10:39:11', '2012-01-26 10:39:11', '', '0', 'http://wordpress.server-7.ru/wp-content/uploads/2012/01/103174_or.jpg', '0', 'attachment', 'image/jpeg', '0'),
('144', '1', '2012-01-26 12:11:53', '2012-01-26 12:11:53', '', '102992_or', '', 'inherit', 'open', 'open', '', '102992_or', '', '', '2012-01-26 12:11:53', '2012-01-26 12:11:53', '', '0', 'http://wordpress.server-7.ru/wp-content/uploads/2012/01/102992_or.jpg', '0', 'attachment', 'image/jpeg', '0'),
('145', '1', '2012-01-26 12:11:58', '2012-01-26 12:11:58', 'Как и где застраховать автомобиль?', 'Как и где застраховать автомобиль?', 'Как и где застраховать автомобиль?', 'inherit', 'open', 'open', '', '102993_or', '', '', '2012-01-26 12:11:58', '2012-01-26 12:11:58', '', '0', 'http://wordpress.server-7.ru/wp-content/uploads/2012/01/102993_or.jpg', '0', 'attachment', 'image/jpeg', '0'),
('148', '1', '2012-01-26 12:16:58', '2012-01-26 12:16:58', 'Как сэкономить при покупке продуктов?', 'Как сэкономить при покупке продуктов?', 'Как сэкономить при покупке продуктов?', 'inherit', 'open', 'open', '', '102872_or', '', '', '2012-01-26 12:16:58', '2012-01-26 12:16:58', '', '0', 'http://wordpress.server-7.ru/wp-content/uploads/2012/01/102872_or.jpg', '0', 'attachment', 'image/jpeg', '0'),
('149', '1', '2012-01-26 12:17:06', '2012-01-26 12:17:06', '', '102873_or', '', 'inherit', 'open', 'open', '', '102873_or', '', '', '2012-01-26 12:17:06', '2012-01-26 12:17:06', '', '0', 'http://wordpress.server-7.ru/wp-content/uploads/2012/01/102873_or.jpg', '0', 'attachment', 'image/jpeg', '0'),
('152', '1', '2012-01-26 12:37:25', '2012-01-26 12:37:25', '«подводные камни» шопинга по-русски', '«подводные камни» шопинга по-русски', '«подводные камни» шопинга по-русски', 'inherit', 'open', 'open', '', '102625_or', '', '', '2012-01-26 12:37:25', '2012-01-26 12:37:25', '', '0', 'http://wordpress.server-7.ru/wp-content/uploads/2012/01/102625_or.jpg', '0', 'attachment', 'image/jpeg', '0'),
('153', '1', '2012-01-26 12:37:28', '2012-01-26 12:37:28', '', '102626_or', '', 'inherit', 'open', 'open', '', '102626_or', '', '', '2012-01-26 12:37:28', '2012-01-26 12:37:28', '', '0', 'http://wordpress.server-7.ru/wp-content/uploads/2012/01/102626_or.jpg', '0', 'attachment', 'image/jpeg', '0'),
('157', '1', '2012-01-26 12:44:52', '2012-01-26 12:44:52', '', '102623_or', '', 'inherit', 'open', 'open', '', '102623_or', '', '', '2012-01-26 12:44:52', '2012-01-26 12:44:52', '', '0', 'http://wordpress.server-7.ru/wp-content/uploads/2012/01/102623_or.jpg', '0', 'attachment', 'image/jpeg', '0'),
('158', '1', '2012-01-26 12:44:56', '2012-01-26 12:44:56', 'Кому и как принято давать «на чай»?', 'Кому и как принято давать «на чай»?', 'Кому и как принято давать «на чай»?', 'inherit', 'open', 'open', '', '102624_or', '', '', '2012-01-26 12:44:56', '2012-01-26 12:44:56', '', '0', 'http://wordpress.server-7.ru/wp-content/uploads/2012/01/102624_or.jpg', '0', 'attachment', 'image/jpeg', '0'),
('160', '1', '2012-01-31 06:15:22', '2012-01-31 06:15:22', '', 'Главная', '', 'publish', 'open', 'open', '', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f', '', '', '2013-09-01 20:44:52', '2013-09-01 20:44:52', '', '0', 'http://wordpress.server-7.ru/?p=160', '1', 'nav_menu_item', '', '0'),
('161', '1', '2012-01-31 06:15:22', '2012-01-31 06:15:22', ' ', '', '', 'publish', 'open', 'open', '', '161', '', '', '2013-09-01 20:44:52', '2013-09-01 20:44:52', '', '0', 'http://wordpress.server-7.ru/?p=161', '2', 'nav_menu_item', '', '0'),
('168', '1', '2012-01-31 06:16:03', '2012-01-31 06:16:03', '', 'Контакты', '', 'publish', 'open', 'open', '', '%d0%ba%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d1%8b', '', '', '2013-09-01 22:38:13', '2013-09-01 22:38:13', '', '0', 'http://wordpress.server-7.ru/?page_id=168', '0', 'page', '', '0'),
('169', '1', '2012-01-31 06:15:55', '2012-01-31 06:15:55', '', 'Черновик', '', 'inherit', 'open', 'open', '', '168-revision', '', '', '2012-01-31 06:15:55', '2012-01-31 06:15:55', '', '168', 'http://wordpress.server-7.ru/?p=169', '0', 'revision', '', '0'),
('236', '1', '2012-09-01 20:26:51', '2012-09-01 20:26:51', 'bla-bla

bla-bla-bla', 'Event 2', '', 'inherit', 'open', 'open', '', '235-autosave', '', '', '2012-09-01 20:26:51', '2012-09-01 20:26:51', '', '235', 'http://wordpress.server-7.ru/?p=236', '0', 'revision', '', '0'),
('171', '1', '2012-01-31 06:18:57', '2012-01-31 06:18:57', ' ', '', '', 'publish', 'open', 'open', '', '171', '', '', '2013-09-01 20:44:52', '2013-09-01 20:44:52', '', '0', 'http://wordpress.server-7.ru/?p=171', '5', 'nav_menu_item', '', '0'),
('172', '1', '2012-01-31 06:18:57', '2012-01-31 06:18:57', ' ', '', '', 'publish', 'open', 'open', '', '172', '', '', '2013-09-01 20:44:52', '2013-09-01 20:44:52', '', '0', 'http://wordpress.server-7.ru/?p=172', '3', 'nav_menu_item', '', '0'),
('231', '1', '2012-09-01 20:20:22', '2012-09-01 20:20:22', '', 'Organizer Name', '', 'publish', 'closed', 'open', '', 'organizer-name', '', '', '2012-09-01 20:20:22', '2012-09-01 20:20:22', '', '0', 'http://wordpress.server-7.ru/?post_type=sp_organizer&#038;p=231', '0', 'sp_organizer', '', '0'),
('232', '1', '2012-09-01 20:21:55', '2012-09-01 20:21:55', '', 'Venue Name', '', 'publish', 'closed', 'open', '', 'venue-name', '', '', '2012-09-01 20:21:55', '2012-09-01 20:21:55', '', '0', 'http://wordpress.server-7.ru/?post_type=sp_venue&#038;p=232', '0', 'sp_venue', '', '0'),
('233', '1', '2012-09-01 20:23:22', '2012-09-01 20:23:22', 'bla-bla-bla-bla', 'Event 1', '', 'publish', 'closed', 'closed', '', 'event-1', '', '', '2012-09-01 20:23:22', '2012-09-01 20:23:22', '', '0', 'http://wordpress.server-7.ru/?post_type=sp_events&#038;p=233', '0', 'sp_events', '', '0'),
('240', '1', '2012-01-31 06:16:03', '2012-01-31 06:16:03', '', 'Контакты', '', 'inherit', 'open', 'open', '', '168-revision-2', '', '', '2012-01-31 06:16:03', '2012-01-31 06:16:03', '', '168', 'http://wordpress.server-7.ru/?p=240', '0', 'revision', '', '0'),
('509', '1', '2013-09-01 20:41:18', '2013-09-01 20:41:18', ' ', '', '', 'publish', 'open', 'open', '', '509', '', '', '2013-09-01 21:49:04', '2013-09-01 21:49:04', '', '0', 'http://magazine.lunatik.dev.morestyle.ru/?p=509', '3', 'nav_menu_item', '', '0'),
('249', '1', '2013-09-01 20:31:30', '2013-09-01 20:31:30', ' ', '', '', 'publish', 'open', 'open', '', '249', '', '', '2013-09-01 20:31:30', '2013-09-01 20:31:30', '', '0', 'http://magazine.lunatik.dev.morestyle.ru/?p=249', '3', 'nav_menu_item', '', '0'),
('250', '1', '2013-09-01 20:31:30', '2013-09-01 20:31:30', ' ', '', '', 'publish', 'open', 'open', '', '250', '', '', '2013-09-01 20:31:30', '2013-09-01 20:31:30', '', '0', 'http://magazine.lunatik.dev.morestyle.ru/?p=250', '4', 'nav_menu_item', '', '0'),
('251', '1', '2013-09-01 20:31:30', '2013-09-01 20:31:30', ' ', '', '', 'publish', 'open', 'open', '', '251', '', '', '2013-09-01 20:31:30', '2013-09-01 20:31:30', '', '0', 'http://magazine.lunatik.dev.morestyle.ru/?p=251', '5', 'nav_menu_item', '', '0'),
('252', '1', '2013-09-01 20:31:30', '2013-09-01 20:31:30', ' ', '', '', 'publish', 'open', 'open', '', '252', '', '', '2013-09-01 20:31:30', '2013-09-01 20:31:30', '', '0', 'http://magazine.lunatik.dev.morestyle.ru/?p=252', '16', 'nav_menu_item', '', '0'),
('253', '1', '2013-09-01 20:31:30', '2013-09-01 20:31:30', ' ', '', '', 'publish', 'open', 'open', '', '253', '', '', '2013-09-01 20:31:30', '2013-09-01 20:31:30', '', '0', 'http://magazine.lunatik.dev.morestyle.ru/?p=253', '17', 'nav_menu_item', '', '0'),
('254', '1', '2013-09-01 20:31:30', '2013-09-01 20:31:30', '', 'Новости моды', '', 'publish', 'open', 'open', '', '254', '', '', '2013-09-01 21:49:04', '2013-09-01 21:49:04', '', '0', 'http://magazine.lunatik.dev.morestyle.ru/?p=254', '4', 'nav_menu_item', '', '0'),
('255', '1', '2013-09-01 20:31:30', '2013-09-01 20:31:30', '', 'Игровые новости', '', 'publish', 'open', 'open', '', '255', '', '', '2013-09-01 21:49:04', '2013-09-01 21:49:04', '', '0', 'http://magazine.lunatik.dev.morestyle.ru/?p=255', '5', 'nav_menu_item', '', '0'),
('420', '1', '2013-08-29 08:13:07', '2013-08-29 08:13:07', 'Phasellus scelerisque massa porta molestie iaculis. Praesent in consectetur magna. Nunc blandit diam ligula, eu cursus tellus tempus in. Donec scelerisque sollicitudin tempor. Nunc eget suscipit lorem. Etiam non tempor urna. Suspendisse vehicula ante sit amet diam euismod, eu aliquam justo vulputate. In venenatis ligula eget aliquam sodales. Nam porta, magna a sollicitudin tincidunt, erat ante volutpat felis, in rutrum massa dui auctor nisl. Pellentesque sagittis molestie metus, sit amet rutrum risus pharetra ut. Nam rutrum commodo eros, non feugiat nisl placerat sed. Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi eleifend eget metus lacinia vulputate. Nunc eleifend congue sem, consequat tempus magna gravida eget. Duis lacinia molestie accumsan.', 'Vivamus ultrices luctus nunc sem sit amet interdum consectetuer', '', 'publish', 'open', 'open', '', 'vivamus-ultrices-luctus-nunc-sem-sit-amet-interdum-consectetuer', '', '', '2013-08-29 08:13:07', '2013-08-29 08:13:07', '', '0', 'http://localhost/2013/08/magazine/?post_type=galleries&#038;p=420', '0', 'galleries', '', '0'),
('421', '1', '2013-08-29 08:14:02', '2013-08-29 08:14:02', 'Phasellus scelerisque massa porta molestie iaculis. Praesent in consectetur magna. Nunc blandit diam ligula, eu cursus tellus tempus in. Donec scelerisque sollicitudin tempor. Nunc eget suscipit lorem. Etiam non tempor urna. Suspendisse vehicula ante sit amet diam euismod, eu aliquam justo vulputate. In venenatis ligula eget aliquam sodales. Nam porta, magna a sollicitudin tincidunt, erat ante volutpat felis, in rutrum massa dui auctor nisl. Pellentesque sagittis molestie metus, sit amet rutrum risus pharetra ut. Nam rutrum commodo eros, non feugiat nisl placerat sed. Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi eleifend eget metus lacinia vulputate. Nunc eleifend congue sem, consequat tempus magna gravida eget. Duis lacinia molestie accumsan.', 'Proin malesuada adipiscing lacus imperdiet nibh feugiat', '', 'publish', 'open', 'open', '', 'proin-malesuada-adipiscing-lacus-imperdiet-nibh-feugiat', '', '', '2013-08-29 08:14:02', '2013-08-29 08:14:02', '', '0', 'http://localhost/2013/08/magazine/?post_type=galleries&#038;p=421', '0', 'galleries', '', '0'),
('422', '1', '2013-08-29 08:15:19', '2013-08-29 08:15:19', 'Phasellus scelerisque massa porta molestie iaculis. Praesent in consectetur magna. Nunc blandit diam ligula, eu cursus tellus tempus in. Donec scelerisque sollicitudin tempor. Nunc eget suscipit lorem. Etiam non tempor urna. Suspendisse vehicula ante sit amet diam euismod, eu aliquam justo vulputate. In venenatis ligula eget aliquam sodales. Nam porta, magna a sollicitudin tincidunt, erat ante volutpat felis, in rutrum massa dui auctor nisl. Pellentesque sagittis molestie metus, sit amet rutrum risus pharetra ut. Nam rutrum commodo eros, non feugiat nisl placerat sed. Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi eleifend eget metus lacinia vulputate. Nunc eleifend congue sem, consequat tempus magna gravida eget. Duis lacinia molestie accumsan.', 'Из каждого из перечисленных домов, а evenpages', '', 'publish', 'open', 'open', '', 'quisque-fermentum-penatibus-et-magnis-dis-parturient-montes', '', '', '2013-09-01 22:15:36', '2013-09-01 22:15:36', '', '0', 'http://localhost/2013/08/magazine/?post_type=galleries&#038;p=422', '0', 'galleries', '', '0'),
('423', '1', '2013-08-29 08:16:01', '2013-08-29 08:16:01', 'Phasellus scelerisque massa porta molestie iaculis. Praesent in consectetur magna. Nunc blandit diam ligula, eu cursus tellus tempus in. Donec scelerisque sollicitudin tempor. Nunc eget suscipit lorem. Etiam non tempor urna. Suspendisse vehicula ante sit amet diam euismod, eu aliquam justo vulputate. In venenatis ligula eget aliquam sodales. Nam porta, magna a sollicitudin tincidunt, erat ante volutpat felis, in rutrum massa dui auctor nisl. Pellentesque sagittis molestie metus, sit amet rutrum risus pharetra ut. Nam rutrum commodo eros, non feugiat nisl placerat sed. Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi eleifend eget metus lacinia vulputate. Nunc eleifend congue sem, consequat tempus magna gravida eget. Duis lacinia molestie accumsan.', 'Наши потребительские товары мягкие водорода белка арахиса', '', 'publish', 'open', 'open', '', 'fusce-accumsan-mollis-eros-amet-interdum-consectetuer', '', '', '2013-09-01 22:15:03', '2013-09-01 22:15:03', '', '0', 'http://localhost/2013/08/magazine/?post_type=galleries&#038;p=423', '0', 'galleries', '', '0'),
('424', '1', '2013-08-29 08:16:55', '2013-08-29 08:16:55', 'Phasellus scelerisque massa porta molestie iaculis. Praesent in consectetur magna. Nunc blandit diam ligula, eu cursus tellus tempus in. Donec scelerisque sollicitudin tempor. Nunc eget suscipit lorem. Etiam non tempor urna. Suspendisse vehicula ante sit amet diam euismod, eu aliquam justo vulputate. In venenatis ligula eget aliquam sodales. Nam porta, magna a sollicitudin tincidunt, erat ante volutpat felis, in rutrum massa dui auctor nisl. Pellentesque sagittis molestie metus, sit amet rutrum risus pharetra ut. Nam rutrum commodo eros, non feugiat nisl placerat sed. Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi eleifend eget metus lacinia vulputate. Nunc eleifend congue sem, consequat tempus magna gravida eget. Duis lacinia molestie accumsan.', 'Розничный отдел продаж развиваться без поддержки макросов членов', '', 'publish', 'open', 'open', '', 'vestibulum-volutpat-tortor-libero-sodales-leo-mauris-ut-lectus', '', '', '2013-09-01 22:14:27', '2013-09-01 22:14:27', '', '0', 'http://localhost/2013/08/magazine/?post_type=galleries&#038;p=424', '0', 'galleries', '', '0'),
('425', '1', '2013-08-29 08:17:57', '2013-08-29 08:17:57', 'Phasellus scelerisque massa porta molestie iaculis. Praesent in consectetur magna. Nunc blandit diam ligula, eu cursus tellus tempus in. Donec scelerisque sollicitudin tempor. Nunc eget suscipit lorem. Etiam non tempor urna. Suspendisse vehicula ante sit amet diam euismod, eu aliquam justo vulputate. In venenatis ligula eget aliquam sodales. Nam porta, magna a sollicitudin tincidunt, erat ante volutpat felis, in rutrum massa dui auctor nisl. Pellentesque sagittis molestie metus, sit amet rutrum risus pharetra ut. Nam rutrum commodo eros, non feugiat nisl placerat sed. Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi eleifend eget metus lacinia vulputate. Nunc eleifend congue sem, consequat tempus magna gravida eget. Duis lacinia molestie accumsan.', 'Независимость Тауншип, пожалуйста, не более расширительном баке', '', 'publish', 'open', 'open', '', 'integer-malesuada-commodo-nulla-ligula-vulputate-sem-tristique', '', '', '2013-09-01 22:13:58', '2013-09-01 22:13:58', '', '0', 'http://localhost/2013/08/magazine/?post_type=galleries&#038;p=425', '0', 'galleries', '', '0'),
('426', '1', '2013-08-29 08:19:04', '2013-08-29 08:19:04', 'Phasellus scelerisque massa porta molestie iaculis. Praesent in consectetur magna. Nunc blandit diam ligula, eu cursus tellus tempus in. Donec scelerisque sollicitudin tempor. Nunc eget suscipit lorem. Etiam non tempor urna. Suspendisse vehicula ante sit amet diam euismod, eu aliquam justo vulputate. In venenatis ligula eget aliquam sodales. Nam porta, magna a sollicitudin tincidunt, erat ante volutpat felis, in rutrum massa dui auctor nisl. Pellentesque sagittis molestie metus, sit amet rutrum risus pharetra ut. Nam rutrum commodo eros, non feugiat nisl placerat sed. Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi eleifend eget metus lacinia vulputate. Nunc eleifend congue sem, consequat tempus magna gravida eget. Duis lacinia molestie accumsan.', 'На рынке недвижимости просто нет улыбки Промо', '', 'publish', 'open', 'open', '', 'praesent-placerat-risus-quis-pellentesque-suscipit-nibh-ultricies-nulla', '', '', '2013-09-01 22:13:38', '2013-09-01 22:13:38', '', '0', 'http://localhost/2013/08/magazine/?post_type=galleries&#038;p=426', '0', 'galleries', '', '0'),
('427', '1', '2013-08-29 08:20:02', '2013-08-29 08:20:02', 'Phasellus scelerisque massa porta molestie iaculis. Praesent in consectetur magna. Nunc blandit diam ligula, eu cursus tellus tempus in. Donec scelerisque sollicitudin tempor. Nunc eget suscipit lorem. Etiam non tempor urna. Suspendisse vehicula ante sit amet diam euismod, eu aliquam justo vulputate. In venenatis ligula eget aliquam sodales. Nam porta, magna a sollicitudin tincidunt, erat ante volutpat felis, in rutrum massa dui auctor nisl. Pellentesque sagittis molestie metus, sit amet rutrum risus pharetra ut. Nam rutrum commodo eros, non feugiat nisl placerat sed. Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi eleifend eget metus lacinia vulputate. Nunc eleifend congue sem, consequat tempus magna gravida eget. Duis lacinia molestie accumsan.', 'Больше промо массовой информации портала целевых сотрудника', '', 'publish', 'open', 'open', '', 'fusce-pellentesque-suscipit-nibh-massa-porta-molestie-iaculis', '', '', '2013-09-01 22:13:16', '2013-09-01 22:13:16', '', '0', 'http://localhost/2013/08/magazine/?post_type=galleries&#038;p=427', '0', 'galleries', '', '0'),
('436', '1', '2013-09-01 20:31:30', '2013-09-01 20:31:30', '', 'Технологии', '', 'publish', 'open', 'open', '', '436', '', '', '2013-09-01 21:49:04', '2013-09-01 21:49:04', '', '0', 'http://magazine.lunatik.dev.morestyle.ru/?p=436', '6', 'nav_menu_item', '', '0'),
('514', '1', '2013-09-01 21:06:24', '2013-09-01 21:06:24', '', 'shutterstock_110700254_2', '', 'inherit', 'open', 'open', '', 'shutterstock_110700254_2', '', '', '2013-09-01 21:06:24', '2013-09-01 21:06:24', '', '456', 'http://magazine.lunatik.dev.morestyle.ru/wp-content/uploads/2013/07/shutterstock_110700254_2.jpg', '0', 'attachment', 'image/jpeg', '0'),
('515', '1', '2013-09-01 21:31:37', '2013-09-01 21:31:37', '[magz_title style="blue"] Аккардион стиль [/magz_title]

[magz_toggle title="Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi. " state="closed"] Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi. architecto. Beatae
totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi...[/magz_toggle]

[magz_toggle title="Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi. " state="open"] Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi. architecto. Beatae
totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi...[/magz_toggle]

[magz_toggle title="Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi. " state="closed"] Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi. architecto. Beatae
totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi...[/magz_toggle]

[magz_one_third][magz_title style="blue"] Стиль табов [/magz_title][magz_tabs] [magz_tab title="Title1"] Tab Content1 [/magz_tab] [magz_tab title="Title2"] Tab Content2 [/magz_tab] [magz_tab title="Title3"] Tab Content3 [/magz_tab] [/magz_tabs] [/magz_one_third]

[magz_two_third_last] [magz_title style="blue"] Типография [/magz_title]
<h1>H1 Стиль Шрифта, размер 24px</h1>
Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi...

&nbsp;
<h2>H2 Стиль Шрифта, размер 20px</h2>
Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi...

&nbsp;
<h3>H3 Стиль Шрифта, размер 16px</h3>
Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi...

&nbsp;
<h4>H4 Стиль Шрифта, размер 13px</h4>
Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi...

&nbsp;

[magz_title style="blue"] Warning Style [/magz_title]

[magz_alert style="red"] Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam,.. [/magz_alert][magz_alert style="blue"] Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam,.. [/magz_alert][magz_alert style="green"] Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam,.. [/magz_alert][magz_alert style="yellow"] Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam,.. [/magz_alert]

[/magz_two_third_last]

[magz_title style="yellow"] Block Quote [/magz_title]

&nbsp;
<blockquote>Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque accusantium doloremque laudantium, totam rem aperiam,
quae ab illo inventore veritatis et quasi. architecto. Beatae vitae dicta sunt...</blockquote>
&nbsp;

[magz_title style="yellow"] Form Style [/magz_title]

[magz_cform]

&nbsp;', 'Elements', '', 'inherit', 'open', 'open', '', '463-autosave', '', '', '2013-09-01 21:31:37', '2013-09-01 21:31:37', '', '463', 'http://magazine.lunatik.dev.morestyle.ru/?p=515', '0', 'revision', '', '0'),
('448', '1', '2013-06-27 04:25:45', '0000-00-00 00:00:00', '', 'Puri Logo', '', 'draft', 'closed', 'closed', '', 'of-puri_logo', '', '', '2013-06-27 04:25:45', '0000-00-00 00:00:00', '', '0', 'http://localhost/demo/?p=5', '0', 'optionsframework', '', '0'),
('449', '1', '2013-06-27 10:03:43', '0000-00-00 00:00:00', '', 'Magz Logo', '', 'draft', 'closed', 'closed', '', 'of-magz_logo', '', '', '2013-06-27 10:03:43', '0000-00-00 00:00:00', '', '0', 'http://localhost/demo/?post_type=optionsframework&#038;p=6', '0', 'optionsframework', '', '0'),
('450', '1', '2013-06-27 10:03:44', '0000-00-00 00:00:00', '', 'Magz Favicon', '', 'draft', 'closed', 'closed', '', 'of-magz_favicon', '', '', '2013-06-27 10:03:44', '0000-00-00 00:00:00', '', '0', 'http://localhost/demo/?post_type=optionsframework&#038;p=7', '0', 'optionsframework', '', '0'),
('451', '1', '2013-07-01 09:52:39', '0000-00-00 00:00:00', '', 'Magz Header Bg', '', 'draft', 'closed', 'closed', '', 'of-magz_header_bg', '', '', '2013-07-01 09:52:39', '0000-00-00 00:00:00', '', '0', 'http://localhost/demo/?post_type=optionsframework&#038;p=13', '0', 'optionsframework', '', '0'),
('452', '1', '2013-07-02 03:35:26', '0000-00-00 00:00:00', '', 'Primary Color', '', 'draft', 'closed', 'closed', '', 'of-primary_color', '', '', '2013-07-02 03:35:26', '0000-00-00 00:00:00', '', '0', 'http://localhost/demo/?post_type=optionsframework&#038;p=14', '0', 'optionsframework', '', '0'),
('453', '1', '2013-07-02 03:56:54', '0000-00-00 00:00:00', '', 'Header Bg', '', 'draft', 'closed', 'closed', '', 'of-header_bg', '', '', '2013-07-02 03:56:54', '0000-00-00 00:00:00', '', '0', 'http://localhost/demo/?post_type=optionsframework&#038;p=15', '0', 'optionsframework', '', '0'),
('454', '1', '2013-07-02 05:14:15', '0000-00-00 00:00:00', '', 'Hdr Bg Color', '', 'draft', 'closed', 'closed', '', 'of-hdr_bg_color', '', '', '2013-07-02 05:14:15', '0000-00-00 00:00:00', '', '0', 'http://localhost/demo/?post_type=optionsframework&#038;p=16', '0', 'optionsframework', '', '0'),
('455', '1', '2013-07-02 05:17:53', '0000-00-00 00:00:00', '', 'Background-one', '', 'draft', 'closed', 'closed', '', 'of-background-one', '', '', '2013-07-02 05:17:53', '0000-00-00 00:00:00', '', '0', 'http://localhost/demo/?post_type=optionsframework&#038;p=17', '0', 'optionsframework', '', '0'),
('456', '1', '2013-07-02 05:58:09', '0000-00-00 00:00:00', '', 'Body Bg', '', 'draft', 'closed', 'closed', '', 'of-body_bg', '', '', '2013-07-02 05:58:09', '0000-00-00 00:00:00', '', '0', 'http://localhost/demo/?post_type=optionsframework&#038;p=18', '0', 'optionsframework', '', '0'),
('457', '1', '2013-07-03 05:20:18', '0000-00-00 00:00:00', '', 'Magz Logo', '', 'draft', 'closed', 'closed', '', 'of-magz_logo', '', '', '2013-07-03 05:20:18', '0000-00-00 00:00:00', '', '0', 'http://demo.puriwp.com/magazine/?post_type=optionsframework&#038;p=26', '0', 'optionsframework', '', '0'),
('458', '1', '2013-07-03 05:20:18', '0000-00-00 00:00:00', '', 'Magz Favicon', '', 'draft', 'closed', 'closed', '', 'of-magz_favicon', '', '', '2013-07-03 05:20:18', '0000-00-00 00:00:00', '', '0', 'http://demo.puriwp.com/magazine/?post_type=optionsframework&#038;p=27', '0', 'optionsframework', '', '0'),
('28', '1', '2013-07-03 05:20:18', '0000-00-00 00:00:00', '', 'Body Bg', '', 'draft', 'closed', 'closed', '', 'of-body_bg', '', '', '2013-07-03 05:20:18', '0000-00-00 00:00:00', '', '0', 'http://demo.puriwp.com/magazine/?post_type=optionsframework&#038;p=28', '0', 'optionsframework', '', '0'),
('459', '1', '2013-06-27 04:25:45', '0000-00-00 00:00:00', '', 'Puri Favicon', '', 'draft', 'closed', 'closed', '', 'of-puri_favicon', '', '', '2013-06-27 04:25:45', '0000-00-00 00:00:00', '', '0', 'http://localhost/demo/?p=4', '0', 'optionsframework', '', '0'),
('462', '1', '2013-06-29 10:38:09', '2013-06-29 10:38:09', 'Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa
quae ab illo inventore veritatis et quasi. architecto. Beatae vitae dicta sunt. sit voluptatem accusantium doloremque laudantium,
totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi...', 'Показать на карте', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2013-09-01 21:35:14', '2013-09-01 21:35:14', '', '0', 'http://demo.puriwp.com/magazine/?page_id=2', '0', 'page', '', '0'),
('29', '1', '2013-07-03 05:20:18', '0000-00-00 00:00:00', '', 'Header Bg', '', 'draft', 'closed', 'closed', '', 'of-header_bg', '', '', '2013-07-03 05:20:18', '0000-00-00 00:00:00', '', '0', 'http://demo.puriwp.com/magazine/?post_type=optionsframework&#038;p=29', '0', 'optionsframework', '', '0'),
('463', '1', '2013-06-26 02:11:47', '2013-06-26 02:11:47', '[magz_title style="blue"] Аккардион стиль [/magz_title]

[magz_toggle title="Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi. " state="closed"] Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi. architecto. Beatae
totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi...[/magz_toggle]

[magz_toggle title="Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi. " state="open"] Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi. architecto. Beatae
totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi...[/magz_toggle]

[magz_toggle title="Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi. " state="closed"] Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi. architecto. Beatae
totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi...[/magz_toggle]

[magz_one_third][magz_title style="blue"] Стиль табов [/magz_title][magz_tabs] [magz_tab title="Title1"] Tab Content1 [/magz_tab] [magz_tab title="Title2"] Tab Content2 [/magz_tab] [magz_tab title="Title3"] Tab Content3 [/magz_tab] [/magz_tabs] [/magz_one_third]

[magz_two_third_last] [magz_title style="blue"] Типография [/magz_title]
<h1>H1 Стиль Шрифта, размер 24px</h1>
Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi...

&nbsp;
<h2>H2 Стиль Шрифта, размер 20px</h2>
Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi...

&nbsp;
<h3>H3 Стиль Шрифта, размер 16px</h3>
Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi...

&nbsp;
<h4>H4 Стиль Шрифта, размер 13px</h4>
Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi...

&nbsp;

[magz_title style="blue"] Стиль оповещений [/magz_title]

[magz_alert style="red"] Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam,.. [/magz_alert][magz_alert style="blue"] Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam,.. [/magz_alert][magz_alert style="green"] Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam,.. [/magz_alert][magz_alert style="yellow"] Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam,.. [/magz_alert]

[/magz_two_third_last]

[magz_title style="yellow"] Блок цитаты [/magz_title]

&nbsp;
<blockquote>Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque accusantium doloremque laudantium, totam rem aperiam,
quae ab illo inventore veritatis et quasi. architecto. Beatae vitae dicta sunt...</blockquote>
&nbsp;

[magz_title style="yellow"] Стиль формы [/magz_title]

[magz_cform]

&nbsp;', 'Элементы', '', 'publish', 'closed', 'closed', '', 'sample-page-2', '', '', '2013-09-01 21:34:09', '2013-09-01 21:34:09', '', '0', 'http://localhost/demo/?page_id=2', '0', 'page', '', '0'),
('464', '1', '2013-07-15 10:05:58', '0000-00-00 00:00:00', '', 'Magz Footer Logo', '', 'draft', 'closed', 'closed', '', 'of-magz_footer_logo', '', '', '2013-07-15 10:05:58', '0000-00-00 00:00:00', '', '0', 'http://demo.puriwp.com/magazine/?post_type=optionsframework&#038;p=151', '0', 'optionsframework', '', '0'),
('465', '1', '2013-07-23 10:14:25', '0000-00-00 00:00:00', '', 'Wrapper Bg', '', 'draft', 'closed', 'closed', '', 'of-wrapper_bg', '', '', '2013-07-23 10:14:25', '0000-00-00 00:00:00', '', '0', 'http://demo.puriwp.com/magazine/?post_type=optionsframework&#038;p=159', '0', 'optionsframework', '', '0'),
('466', '1', '2013-07-23 10:14:25', '0000-00-00 00:00:00', '', 'Footwidget Bg', '', 'draft', 'closed', 'closed', '', 'of-footwidget_bg', '', '', '2013-07-23 10:14:25', '0000-00-00 00:00:00', '', '0', 'http://demo.puriwp.com/magazine/?post_type=optionsframework&#038;p=160', '0', 'optionsframework', '', '0'),
('467', '1', '2013-07-23 10:14:25', '0000-00-00 00:00:00', '', 'Footer Bg', '', 'draft', 'closed', 'closed', '', 'of-footer_bg', '', '', '2013-07-23 10:14:25', '0000-00-00 00:00:00', '', '0', 'http://demo.puriwp.com/magazine/?post_type=optionsframework&#038;p=161', '0', 'optionsframework', '', '0'),
('468', '1', '2013-08-10 16:52:19', '2013-08-10 16:52:19', 'Fusce aliquet non ipsum vitae scelerisque. Nullam ultricies adipiscing erat, quis bibendum enim congue porttitor. Etiam bibendum nibh at tincidunt varius. Fusce gravida tortor sit amet mauris scelerisque rhoncus. Aliquam erat volutpat. Nunc fringilla ligula non felis convallis tempus. Nunc id pulvinar nibh. Suspendisse mattis lobortis tellus non semper. In a suscipit nisl, et blandit elit. Donec nec ligula a metus sodales molestie. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin ante mauris, sodales ut nisl condimentum, dapibus fringilla nisl.', 'Об авторе', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2013-09-01 21:34:25', '2013-09-01 21:34:25', '', '0', 'http://demo.puriwp.com/magazine/?page_id=204', '0', 'page', '', '0'),
('469', '1', '2013-08-10 16:52:54', '2013-08-10 16:52:54', '', 'Контакты', '', 'publish', 'closed', 'closed', '', 'contact-2', '', '', '2013-09-01 22:38:22', '2013-09-01 22:38:22', '', '0', 'http://demo.puriwp.com/magazine/?page_id=206', '0', 'page', '', '0'),
('470', '1', '2013-08-10 18:06:45', '2013-08-10 18:06:45', '', 'Блог', '', 'publish', 'open', 'closed', '', 'blog', '', '', '2013-09-01 22:37:23', '2013-09-01 22:37:23', '', '0', 'http://demo.puriwp.com/magazine/?page_id=210', '0', 'page', '', '0'),
('364', '1', '2013-08-26 14:20:15', '0000-00-00 00:00:00', '[magz_cform]', 'Test Contact', '', 'draft', 'open', 'open', '', '', '', '', '2013-08-26 14:20:15', '0000-00-00 00:00:00', '', '0', 'http://demo.puriwp.com/magazine/?page_id=364', '0', 'page', '', '0'),
('367', '1', '2013-08-28 17:25:56', '2013-08-28 17:25:56', '', 'Главная', '', 'publish', 'open', 'closed', '', 'home', '', '', '2013-09-01 21:34:37', '2013-09-01 21:34:37', '', '0', 'http://demo.puriwp.com/magazine/?page_id=367', '0', 'page', '', '0'),
('390', '1', '2013-08-29 07:49:28', '2013-08-29 07:49:28', 'Эта тепловая масса ворот обучения сотрудников. Добавить помидоры, большие. Теперь федеральные ученые всего мира, футбол время в ходе развития. Доступен до шоколадных конфет. Повторите теперь нужны. Не Существует также нет. Массаж является важным финансовым инвестиционных раньше, начать только с супергероями. В Напряженность некоторых членов потребностей. А для ворот, дайвинг-остановка, до центра города была поражена, сообщает официальный сайт эталонов массы корпуса. Адрес ночь посетителей, смех является лучшим макияж дрожать. Образовательные возможности для осмотра достопримечательностей, но не гарантируется порадовать поклонников. Время от времени в горле и голода консультации и перед собой в первую очередь. Олимпийская Японии футбольной команды малярии. Япония сейчас Sky Television, время больших эмоциональных потребностей в развитии. Оклахома телевизионный фильм слоя.', 'Эта тепловая масса телевидения волейбол и целевые игры', '', 'publish', 'open', 'open', '', 'phasellus-scelerisque-massa-molestie-iaculis-lectus-pulvinar', '', '', '2013-09-01 21:54:39', '2013-09-01 21:54:39', '', '0', 'http://localhost/2013/08/magazine/?p=390', '0', 'post', '', '0'),
('392', '1', '2013-08-29 07:50:31', '2013-08-29 07:50:31', 'Fusce aliquet non ipsum vitae scelerisque. Nullam ultricies adipiscing erat, quis bibendum enim congue porttitor. Etiam bibendum nibh at tincidunt varius. Fusce gravida tortor sit amet mauris scelerisque rhoncus. Aliquam erat volutpat. Nunc fringilla ligula non felis convallis tempus. Nunc id pulvinar nibh. Suspendisse mattis lobortis tellus non semper. In a suscipit nisl, et blandit elit. Donec nec ligula a metus sodales molestie. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin ante mauris, sodales ut nisl condimentum, dapibus fringilla nisl.', 'Ectus non rutrum pulvinar urna leo dignissim lorem', '', 'publish', 'open', 'open', '', 'ectus-non-rutrum-pulvinar-urna-leo-dignissim-lorem', '', '', '2013-08-29 07:50:31', '2013-08-29 07:50:31', '', '0', 'http://localhost/2013/08/magazine/?p=392', '0', 'post', '', '0'),
('394', '1', '2013-08-29 07:51:44', '2013-08-29 07:51:44', 'Наша экономическая жизнь не шоколад. Добро пожаловать в местах обгонять было, тех, кто продает на пароме по всей стране. Да, пить на заднем дворе учится в казино. Контактные линзы могут быть использованы для создания макро оранжевый шоколад. Результаты. Арсенал сейчас не ожидается, вызовет начала. Теперь это круто. Все права политика не всегда приземляются. В аэропорту немного, и уговоры Элит. Технические показатели по Рейтинг члены телевидения. Время от времени в горле и голода консультации и перед собой в первую очередь. Перед развитием городских, члены изменены без соуса, экологические Player Impact.', 'Наши велосипеды или может быть горшок', '', 'publish', 'open', 'open', '', 'vestibulum-auctor-dapibus-neque-pulvinar-urna-leo', '', '', '2013-09-01 22:01:39', '2013-09-01 22:01:39', '', '0', 'http://localhost/2013/08/magazine/?p=394', '0', 'post', '', '0'),
('396', '1', '2013-08-29 07:53:18', '2013-08-29 07:53:18', 'Наша экономическая жизнь не шоколад. Добро пожаловать в местах обгонять было, тех, кто продает на пароме по всей стране. Да, пить на заднем дворе учится в казино. Контактные линзы могут быть использованы для создания макро оранжевый шоколад. Результаты. Арсенал сейчас не ожидается, вызовет начала. Теперь это круто. Все права политика не всегда приземляются. В аэропорту немного, и уговоры Элит. Технические показатели по Рейтинг члены телевидения. Время от времени в горле и голода консультации и перед собой в первую очередь. Перед развитием городских, члены изменены без соуса, экологические Player Impact.', 'Профессиональный футбол в Китае', '', 'publish', 'open', 'open', '', 'aliquam-quam-lectus-pulvinar-urna-leo-dignissim-lorem', '', '', '2013-09-01 21:53:49', '2013-09-01 21:53:49', '', '0', 'http://localhost/2013/08/magazine/?p=396', '0', 'post', '', '0'),
('398', '1', '2013-08-29 07:54:37', '2013-08-29 07:54:37', 'Fusce aliquet non ipsum vitae scelerisque. Nullam ultricies adipiscing erat, quis bibendum enim congue porttitor. Etiam bibendum nibh at tincidunt varius. Fusce gravida tortor sit amet mauris scelerisque rhoncus. Aliquam erat volutpat. Nunc fringilla ligula non felis convallis tempus. Nunc id pulvinar nibh. Suspendisse mattis lobortis tellus non semper. In a suscipit nisl, et blandit elit. Donec nec ligula a metus sodales molestie. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin ante mauris, sodales ut nisl condimentum, dapibus fringilla nisl.', 'Nullam malesuada erat ut turpis risus egestas placerat', '', 'publish', 'open', 'open', '', 'nullam-malesuada-erat-ut-turpis-risus-egestas-placerat', '', '', '2013-08-29 07:54:37', '2013-08-29 07:54:37', '', '0', 'http://localhost/2013/08/magazine/?p=398', '0', 'post', '', '0'),
('400', '1', '2013-08-29 07:55:47', '2013-08-29 07:55:47', 'Бюджет для легкой атлетики, теннисный клуб, но цена, это, как ворота. Дома девелоперы и инвесторы до телевидения. Пить сейчас или самого продавца, который, как раз, что предпочтения. В продажах, деньги одного инвестора, не тратя больше, ни, на данном этапе он не выбран ранее. Пожалуйста, страхование вкладов, это талантливый профессиональной индустрии коучинга. Это помогает нам предотвратить автоматизированную evenpages представлений, смешно мыши родятся. Больше расходов сейчас, в лучшем парке в смехе. Все права на десятки тысяч, гарантированно соответствуют требованиям жизни, развития и льва. Нет образования или для телевидения Японии. А завтра в массе блокировка, блокировка Блоги, лопата раньше. Почтовый целевой потребитель, который не будет захватывать победителем.', 'Китай нуждается в американском рынке', '', 'publish', 'open', 'open', '', 'nam-nibh-arcu-tristique-eget-pretium-vitae-libero-ac-risus', '', '', '2013-09-01 21:52:07', '2013-09-01 21:52:07', '', '0', 'http://localhost/2013/08/magazine/?p=400', '0', 'post', '', '0'),
('402', '1', '2013-08-29 07:57:19', '2013-08-29 07:57:19', 'Члены каждой даты. Озера парка, они создали, но я действительно беременна. Болезни от Рыночной автора. Добро пожаловать в десятки здравоохранения, не более, мэр больше. Больше раз, чем любой профессиональный инвестор. Билеты на смех, затрат, как промышленное производство, целевые стипендии. Но это мягкое воздействие. Добро пожаловать на советы для аэропорта, но подъезд был футбол, много отзывов для. Городская бедность, боль или сайта казино или любого другого жилья, сказал работу масс-медиа. Викинги путешествовать к клиенту, не всегда легко, как раньше. Как массовый потребитель, служащий отеля и стрелы жизни. Для функциональной, чем эстетическая. Но он не чувствовал себя хорошо, но нет реализации. Никаких прав на использование комплектов и больше ничего не сказал. Ведение болезни, говорится в сообщении компании любимца фотографии, макро ориентиром для любителей спорта, но результат был чистым.', 'Члены каждой даты и смех свободной жизни', '', 'publish', 'open', 'open', '', 'quisque-sodales-viverra-ornare-vitae-libero-ac-risus', '', '', '2013-09-01 22:25:25', '2013-09-01 22:25:25', '', '0', 'http://localhost/2013/08/magazine/?p=402', '0', 'post', '', '0'),
('404', '1', '2013-08-29 07:58:23', '2013-08-29 07:58:23', 'Наша экономическая жизнь не шоколад. Добро пожаловать в местах обгонять было, тех, кто продает на пароме по всей стране. Да, пить на заднем дворе учится в казино. Контактные линзы могут быть использованы для создания макро оранжевый шоколад. Результаты. Арсенал сейчас не ожидается, вызовет начала. Теперь это круто. Все права политика не всегда приземляются. В аэропорту немного, и уговоры Элит. Технические показатели по Рейтинг члены телевидения. Время от времени в горле и голода консультации и перед собой в первую очередь. Перед развитием городских, члены изменены без соуса, экологические Player Impact.', 'Мы кисть автомобиля дизельное триггер смеха', '', 'publish', 'open', 'open', '', 'aenean-dignissim-dignissim-lorem-pellentesque-felis-risus', '', '', '2013-09-01 22:08:50', '2013-09-01 22:08:50', '', '0', 'http://localhost/2013/08/magazine/?p=404', '0', 'post', '', '0'),
('406', '1', '2013-08-29 08:01:18', '2013-08-29 08:01:18', 'Наша экономическая жизнь не шоколад. Добро пожаловать в местах обгонять было, тех, кто продает на пароме по всей стране. Да, пить на заднем дворе учится в казино. Контактные линзы могут быть использованы для создания макро оранжевый шоколад. Результаты. Арсенал сейчас не ожидается, вызовет начала. Теперь это круто. Все права политика не всегда приземляются. В аэропорту немного, и уговоры Элит. Технические показатели по Рейтинг члены телевидения. Время от времени в горле и голода консультации и перед собой в первую очередь. Перед развитием городских, члены изменены без соуса, экологические Player Impact.', 'Корейский салат из говядины для основного блюда', '', 'publish', 'open', 'open', '', 'donec-consectetuer-ligula-vulputate-sem-tristique-cursus', '', '', '2013-09-01 22:39:21', '2013-09-01 22:39:21', '', '0', 'http://localhost/2013/08/magazine/?p=406', '0', 'post', '', '0'),
('408', '1', '2013-08-29 08:02:23', '2013-08-29 08:02:23', 'Наша экономическая жизнь не шоколад. Добро пожаловать в местах обгонять было, тех, кто продает на пароме по всей стране. Да, пить на заднем дворе учится в казино. Контактные линзы могут быть использованы для создания макро оранжевый шоколад. Результаты. Арсенал сейчас не ожидается, вызовет начала. Теперь это круто. Все права политика не всегда приземляются. В аэропорту немного, и уговоры Элит. Технические показатели по Рейтинг члены телевидения. Время от времени в горле и голода консультации и перед собой в первую очередь. Перед развитием городских, члены изменены без соуса, экологические Player Impact.', 'Футбол - это игра не требующая макияжа', '', 'publish', 'open', 'open', '', 'morbi-est-est-lectus-non-rutrum-commodo-felis-quis-tortor', '', '', '2013-09-01 21:59:20', '2013-09-01 21:59:20', '', '0', 'http://localhost/2013/08/magazine/?p=408', '0', 'post', '', '0'),
('410', '1', '2013-08-29 08:04:08', '2013-08-29 08:04:08', 'Наша экономическая жизнь не шоколад. Добро пожаловать в местах обгонять было, тех, кто продает на пароме по всей стране. Да, пить на заднем дворе учится в казино. Контактные линзы могут быть использованы для создания макро оранжевый шоколад. Результаты. Арсенал сейчас не ожидается, вызовет начала. Теперь это круто. Все права политика не всегда приземляются. В аэропорту немного, и уговоры Элит. Технические показатели по Рейтинг члены телевидения. Время от времени в горле и голода консультации и перед собой в первую очередь. Перед развитием городских, члены изменены без соуса, экологические Player Impact.

<!--nextpage-->

В аэропорту немного, и уговоры Элит. Технические показатели по Рейтинг члены телевидения. Время от времени в горле и голода консультации и перед собой в первую очередь. Перед развитием городских, члены изменены без соуса, экологические Player Impact.
', 'Вся жизнь, свободу и необходимость инвестировать больше смеха', '', 'publish', 'open', 'open', '', 'integer-vitae-libero-ac-risus-egestas-placerat-urna', '', '', '2013-09-01 22:07:41', '2013-09-01 22:07:41', '', '0', 'http://localhost/2013/08/magazine/?p=410', '0', 'post', '', '0'),
('412', '1', '2013-08-29 08:05:21', '2013-08-29 08:05:21', 'Мы убедимся, что пользователи могут оставлять комментарии. Пожалуйста, заполните иды, не больше. До этого, очень хороший соус, и ход которых, раздражительность раньше. Студенты теперь пить суп, бабушка, моя удобным и функциональным. Для начала, бассейны, баскетбол в студенты и, было сказано, или для отдыха. Оставить объектов диаграммы и страх перед экологической, экономической смеха. Викинги не настаивать на федеральных займов образования. Со скидкой или нет времени. Чтобы восстановить, потребление электрических транспортных средств, транспортных средств некоторый страх, если таковые имеются, необходимо создать большие транспортные средства. Добро пожаловать и Контакты. Я действительно хочу, чтобы покататься с. Бизнес хочет инвестировать некоторую косметику, но иногда оранжевого льва. Сделать это мультфильма. На самом деле, не было в трауре гриле. Целые и забеременеть.', 'Прадва на воротах это боль или смех', '', 'publish', 'open', 'open', '', 'porta-lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-risus', '', '', '2013-09-01 22:06:10', '2013-09-01 22:06:10', '', '0', 'http://localhost/2013/08/magazine/?p=412', '0', 'post', '', '0'),
('414', '1', '2013-08-29 08:06:19', '2013-08-29 08:06:19', 'Наша экономическая жизнь не шоколад. Добро пожаловать в местах обгонять было, тех, кто продает на пароме по всей стране. Да, пить на заднем дворе учится в казино. Контактные линзы могут быть использованы для создания макро оранжевый шоколад. Результаты. Арсенал сейчас не ожидается, вызовет начала. Теперь это круто. Все права политика не всегда приземляются. В аэропорту немного, и уговоры Элит. Технические показатели по Рейтинг члены телевидения. Время от времени в горле и голода консультации и перед собой в первую очередь. Перед развитием городских, члены изменены без соуса, экологические Player Impact.', 'Подвеска для велосипеда, автор или горшок?', '', 'publish', 'open', 'open', '', 'suspen-disse-auctor-dapibus-neque-pulvinar-urna-leo', '', '', '2013-09-01 22:04:44', '2013-09-01 22:04:44', '', '0', 'http://localhost/2013/08/magazine/?p=414', '0', 'post', '', '0'),
('416', '1', '2013-08-29 08:07:37', '2013-08-29 08:07:37', 'Наша экономическая жизнь не шоколад. Добро пожаловать в местах обгонять было, тех, кто продает на пароме по всей стране. Да, пить на заднем дворе учится в казино. Контактные линзы могут быть использованы для создания макро оранжевый шоколад. Результаты. Арсенал сейчас не ожидается, вызовет начала. Теперь это круто. Все права политика не всегда приземляются. В аэропорту немного, и уговоры Элит. Технические показатели по Рейтинг члены телевидения. Время от времени в горле и голода консультации и перед собой в первую очередь. Перед развитием городских, члены изменены без соуса, экологические Player Impact.', 'В настоящее время инвестиции - бесполезное занятие!', '', 'publish', 'open', 'open', '', 'lectus-non-rutrum-pulvinar-urna-leo-dignissim-lorem', '', '', '2013-09-01 22:03:36', '2013-09-01 22:03:36', '', '0', 'http://localhost/2013/08/magazine/?p=416', '0', 'post', '', '0'),
('513', '1', '2013-09-01 20:45:22', '2013-09-01 20:45:22', ' ', '', '', 'publish', 'open', 'open', '', '513', '', '', '2013-09-01 21:49:04', '2013-09-01 21:49:04', '', '0', 'http://magazine.lunatik.dev.morestyle.ru/?p=513', '7', 'nav_menu_item', '', '0'),
('472', '1', '2013-09-01 20:31:31', '2013-09-01 20:31:31', ' ', '', '', 'publish', 'open', 'open', '', '472', '', '', '2013-09-01 21:49:04', '2013-09-01 21:49:04', '', '0', 'http://magazine.lunatik.dev.morestyle.ru/?p=472', '1', 'nav_menu_item', '', '0'),
('473', '1', '2013-09-01 20:31:31', '2013-09-01 20:31:31', ' ', '', '', 'publish', 'open', 'open', '', '473', '', '', '2013-09-01 21:49:04', '2013-09-01 21:49:04', '', '0', 'http://magazine.lunatik.dev.morestyle.ru/?p=473', '2', 'nav_menu_item', '', '0'),
('511', '1', '2013-09-01 20:44:52', '2013-09-01 20:44:52', ' ', '', '', 'publish', 'open', 'open', '', '511', '', '', '2013-09-01 20:44:52', '2013-09-01 20:44:52', '', '0', 'http://magazine.lunatik.dev.morestyle.ru/?p=511', '4', 'nav_menu_item', '', '0'),
('512', '1', '2013-09-01 20:45:22', '2013-09-01 20:45:22', '', 'Конакты', '', 'publish', 'open', 'open', '', '512', '', '', '2013-09-01 21:49:04', '2013-09-01 21:49:04', '', '0', 'http://magazine.lunatik.dev.morestyle.ru/?p=512', '8', 'nav_menu_item', '', '0'),
('508', '1', '2013-09-01 20:36:00', '2013-09-01 20:36:00', '', 'logo', '', 'inherit', 'open', 'open', '', 'logo', '', '', '2013-09-01 20:36:00', '2013-09-01 20:36:00', '', '449', 'http://magazine.lunatik.dev.morestyle.ru/wp-content/uploads/2013/06/logo1.png', '0', 'attachment', 'image/png', '0'),
('516', '1', '2013-06-26 02:11:47', '2013-06-26 02:11:47', '[magz_title style="blue"] Accordion Style [/magz_title]

[magz_toggle title="Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi. " state="closed"] Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi. architecto. Beatae
totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi...[/magz_toggle]

[magz_toggle title="Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi. " state="open"] Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi. architecto. Beatae
totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi...[/magz_toggle]

[magz_toggle title="Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi. " state="closed"] Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi. architecto. Beatae
totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi...[/magz_toggle]

[magz_one_third][magz_title style="blue"] Tab Style [/magz_title][magz_tabs] [magz_tab title="Title1"] Tab Content1 [/magz_tab] [magz_tab title="Title2"] Tab Content2 [/magz_tab] [magz_tab title="Title3"] Tab Content3 [/magz_tab] [/magz_tabs] [/magz_one_third]

[magz_two_third_last] [magz_title style="blue"] Typograph Style [/magz_title]
<h1>H1 Style Font size 24px</h1>
Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi...

&nbsp;
<h2>H2 Style Font size 20px</h2>
Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi...

&nbsp;
<h3>H3 Style Font size 16px</h3>
Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi...

&nbsp;
<h4>H4 Style Font size 13px</h4>
Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi...

&nbsp;

[magz_title style="blue"] Warning Style [/magz_title]

[magz_alert style="red"] Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam,.. [/magz_alert][magz_alert style="blue"] Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam,.. [/magz_alert][magz_alert style="green"] Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam,.. [/magz_alert][magz_alert style="yellow"] Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam,.. [/magz_alert]

[/magz_two_third_last]

[magz_title style="yellow"] Block Quote [/magz_title]

&nbsp;
<blockquote>Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque accusantium doloremque laudantium, totam rem aperiam,
quae ab illo inventore veritatis et quasi. architecto. Beatae vitae dicta sunt...</blockquote>
&nbsp;

[magz_title style="yellow"] Form Style [/magz_title]

[magz_cform]

&nbsp;', 'Elements', '', 'inherit', 'open', 'open', '', '463-revision', '', '', '2013-06-26 02:11:47', '2013-06-26 02:11:47', '', '463', 'http://magazine.lunatik.dev.morestyle.ru/?p=516', '0', 'revision', '', '0'),
('517', '1', '2013-09-01 21:31:58', '2013-09-01 21:31:58', '[magz_title style="blue"] Аккардион стиль [/magz_title]

[magz_toggle title="Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi. " state="closed"] Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi. architecto. Beatae
totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi...[/magz_toggle]

[magz_toggle title="Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi. " state="open"] Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi. architecto. Beatae
totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi...[/magz_toggle]

[magz_toggle title="Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi. " state="closed"] Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi. architecto. Beatae
totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi...[/magz_toggle]

[magz_one_third][magz_title style="blue"] Стиль табов [/magz_title][magz_tabs] [magz_tab title="Title1"] Tab Content1 [/magz_tab] [magz_tab title="Title2"] Tab Content2 [/magz_tab] [magz_tab title="Title3"] Tab Content3 [/magz_tab] [/magz_tabs] [/magz_one_third]

[magz_two_third_last] [magz_title style="blue"] Типография [/magz_title]
<h1>H1 Стиль Шрифта, размер 24px</h1>
Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi...

&nbsp;
<h2>H2 Стиль Шрифта, размер 20px</h2>
Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi...

&nbsp;
<h3>H3 Стиль Шрифта, размер 16px</h3>
Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi...

&nbsp;
<h4>H4 Стиль Шрифта, размер 13px</h4>
Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi...

&nbsp;

[magz_title style="blue"] Стиль оповещений [/magz_title]

[magz_alert style="red"] Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam,.. [/magz_alert][magz_alert style="blue"] Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam,.. [/magz_alert][magz_alert style="green"] Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam,.. [/magz_alert][magz_alert style="yellow"] Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam,.. [/magz_alert]

[/magz_two_third_last]

[magz_title style="yellow"] Блок цитаты [/magz_title]

&nbsp;
<blockquote>Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque accusantium doloremque laudantium, totam rem aperiam,
quae ab illo inventore veritatis et quasi. architecto. Beatae vitae dicta sunt...</blockquote>
&nbsp;

[magz_title style="yellow"] Стиль формы [/magz_title]

[magz_cform]

&nbsp;', 'Elements', '', 'inherit', 'open', 'open', '', '463-revision-2', '', '', '2013-09-01 21:31:58', '2013-09-01 21:31:58', '', '463', 'http://magazine.lunatik.dev.morestyle.ru/?p=517', '0', 'revision', '', '0'),
('518', '1', '2013-09-01 21:32:36', '2013-09-01 21:32:36', '[magz_title style="blue"] Аккардион стиль [/magz_title]

[magz_toggle title="Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi. " state="closed"] Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi. architecto. Beatae
totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi...[/magz_toggle]

[magz_toggle title="Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi. " state="open"] Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi. architecto. Beatae
totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi...[/magz_toggle]

[magz_toggle title="Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi. " state="closed"] Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi. architecto. Beatae
totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi...[/magz_toggle]

[magz_one_third][magz_title style="blue"] Стиль табов [/magz_title][magz_tabs] [magz_tab title="Title1"] Tab Content1 [/magz_tab] [magz_tab title="Title2"] Tab Content2 [/magz_tab] [magz_tab title="Title3"] Tab Content3 [/magz_tab] [/magz_tabs] [/magz_one_third]

[magz_two_third_last] [magz_title style="blue"] Типография [/magz_title]
<h1>H1 Стиль Шрифта, размер 24px</h1>
Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi...

&nbsp;
<h2>H2 Стиль Шрифта, размер 20px</h2>
Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi...

&nbsp;
<h3>H3 Стиль Шрифта, размер 16px</h3>
Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi...

&nbsp;
<h4>H4 Стиль Шрифта, размер 13px</h4>
Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi...

&nbsp;

[magz_title style="blue"] Стиль оповещений [/magz_title]

[magz_alert style="red"] Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam,.. [/magz_alert][magz_alert style="blue"] Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam,.. [/magz_alert][magz_alert style="green"] Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam,.. [/magz_alert][magz_alert style="yellow"] Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam,.. [/magz_alert]

[/magz_two_third_last]

[magz_title style="yellow"] Блок цитаты [/magz_title]

&nbsp;
<blockquote>Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque accusantium doloremque laudantium, totam rem aperiam,
quae ab illo inventore veritatis et quasi. architecto. Beatae vitae dicta sunt...</blockquote>
&nbsp;

[magz_title style="yellow"] Стиль формы [/magz_title]

[magz_cform]

&nbsp;', 'Elements', '', 'inherit', 'open', 'open', '', '463-revision-3', '', '', '2013-09-01 21:32:36', '2013-09-01 21:32:36', '', '463', 'http://magazine.lunatik.dev.morestyle.ru/?p=518', '0', 'revision', '', '0'),
('519', '1', '2013-08-10 16:52:54', '2013-08-10 09:52:54', '', 'Contact', '', 'inherit', 'open', 'open', '', '469-revision', '', '', '2013-08-10 16:52:54', '2013-08-10 09:52:54', '', '469', 'http://magazine.lunatik.dev.morestyle.ru/?p=519', '0', 'revision', '', '0'),
('520', '1', '2013-08-10 18:06:45', '2013-08-10 11:06:45', '', 'Blog', '', 'inherit', 'open', 'open', '', '470-revision', '', '', '2013-08-10 18:06:45', '2013-08-10 11:06:45', '', '470', 'http://magazine.lunatik.dev.morestyle.ru/?p=520', '0', 'revision', '', '0'),
('521', '1', '2013-08-10 16:52:19', '2013-08-10 09:52:19', 'Fusce aliquet non ipsum vitae scelerisque. Nullam ultricies adipiscing erat, quis bibendum enim congue porttitor. Etiam bibendum nibh at tincidunt varius. Fusce gravida tortor sit amet mauris scelerisque rhoncus. Aliquam erat volutpat. Nunc fringilla ligula non felis convallis tempus. Nunc id pulvinar nibh. Suspendisse mattis lobortis tellus non semper. In a suscipit nisl, et blandit elit. Donec nec ligula a metus sodales molestie. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin ante mauris, sodales ut nisl condimentum, dapibus fringilla nisl.', 'About', '', 'inherit', 'open', 'open', '', '468-revision', '', '', '2013-08-10 16:52:19', '2013-08-10 09:52:19', '', '468', 'http://magazine.lunatik.dev.morestyle.ru/?p=521', '0', 'revision', '', '0'),
('522', '1', '2013-06-29 10:38:09', '2013-06-29 10:38:09', 'Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa
quae ab illo inventore veritatis et quasi. architecto. Beatae vitae dicta sunt. sit voluptatem accusantium doloremque laudantium,
totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi...', 'Find us on Map', '', 'inherit', 'open', 'open', '', '462-revision', '', '', '2013-06-29 10:38:09', '2013-06-29 10:38:09', '', '462', 'http://magazine.lunatik.dev.morestyle.ru/?p=522', '0', 'revision', '', '0'),
('523', '1', '2013-08-28 17:25:56', '2013-08-28 10:25:56', '', 'Home', '', 'inherit', 'open', 'open', '', '367-revision', '', '', '2013-08-28 17:25:56', '2013-08-28 10:25:56', '', '367', 'http://magazine.lunatik.dev.morestyle.ru/?p=523', '0', 'revision', '', '0'),
('524', '1', '2013-09-01 21:34:15', '2013-09-01 21:34:15', '', 'Контакты', '', 'inherit', 'open', 'open', '', '469-revision-2', '', '', '2013-09-01 21:34:15', '2013-09-01 21:34:15', '', '469', 'http://magazine.lunatik.dev.morestyle.ru/?p=524', '0', 'revision', '', '0'),
('525', '1', '2013-09-01 21:34:32', '2013-09-01 21:34:32', 'Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa
quae ab illo inventore veritatis et quasi. architecto. Beatae vitae dicta sunt. sit voluptatem accusantium doloremque laudantium,
totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi...', 'Показать на карте', '', 'inherit', 'open', 'open', '', '462-revision-2', '', '', '2013-09-01 21:34:32', '2013-09-01 21:34:32', '', '462', 'http://magazine.lunatik.dev.morestyle.ru/?p=525', '0', 'revision', '', '0'),
('530', '1', '2013-08-29 08:01:18', '2013-08-29 08:01:18', 'Fusce aliquet non ipsum vitae scelerisque. Nullam ultricies adipiscing erat, quis bibendum enim congue porttitor. Etiam bibendum nibh at tincidunt varius. Fusce gravida tortor sit amet mauris scelerisque rhoncus. Aliquam erat volutpat. Nunc fringilla ligula non felis convallis tempus. Nunc id pulvinar nibh. Suspendisse mattis lobortis tellus non semper. In a suscipit nisl, et blandit elit. Donec nec ligula a metus sodales molestie. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin ante mauris, sodales ut nisl condimentum, dapibus fringilla nisl.', 'Donec consectetuer ligula vulputate sem tristique cursus', '', 'inherit', 'open', 'open', '', '406-revision', '', '', '2013-08-29 08:01:18', '2013-08-29 08:01:18', '', '406', 'http://magazine.lunatik.dev.morestyle.ru/?p=530', '0', 'revision', '', '0'),
('529', '1', '2013-09-01 21:49:40', '2013-09-01 21:49:40', '', 'photodune-2043745-college-student-s-774x320', '', 'inherit', 'open', 'open', '', 'photodune-2043745-college-student-s-774x320', '', '', '2013-09-01 21:49:40', '2013-09-01 21:49:40', '', '406', 'http://magazine.lunatik.dev.morestyle.ru/wp-content/uploads/2013/08/photodune-2043745-college-student-s-774x320.jpg', '0', 'attachment', 'image/jpeg', '0'),
('531', '1', '2013-09-01 21:50:49', '2013-09-01 21:50:49', 'Fusce aliquet non ipsum vitae scelerisque. Nullam ultricies adipiscing erat, quis bibendum enim congue porttitor. Etiam bibendum nibh at tincidunt varius. Fusce gravida tortor sit amet mauris scelerisque rhoncus. Aliquam erat volutpat. Nunc fringilla ligula non felis convallis tempus. Nunc id pulvinar nibh. Suspendisse mattis lobortis tellus non semper. In a suscipit nisl, et blandit elit. Donec nec ligula a metus sodales molestie. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin ante mauris, sodales ut nisl condimentum, dapibus fringilla nisl.', 'Корейский салат из говядины для основого блюда', '', 'inherit', 'open', 'open', '', '406-autosave', '', '', '2013-09-01 21:50:49', '2013-09-01 21:50:49', '', '406', 'http://magazine.lunatik.dev.morestyle.ru/?p=531', '0', 'revision', '', '0'),
('532', '1', '2013-09-01 21:49:47', '2013-09-01 21:49:47', 'Fusce aliquet non ipsum vitae scelerisque. Nullam ultricies adipiscing erat, quis bibendum enim congue porttitor. Etiam bibendum nibh at tincidunt varius. Fusce gravida tortor sit amet mauris scelerisque rhoncus. Aliquam erat volutpat. Nunc fringilla ligula non felis convallis tempus. Nunc id pulvinar nibh. Suspendisse mattis lobortis tellus non semper. In a suscipit nisl, et blandit elit. Donec nec ligula a metus sodales molestie. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin ante mauris, sodales ut nisl condimentum, dapibus fringilla nisl.', 'Donec consectetuer ligula vulputate sem tristique cursus', '', 'inherit', 'open', 'open', '', '406-revision-2', '', '', '2013-09-01 21:49:47', '2013-09-01 21:49:47', '', '406', 'http://magazine.lunatik.dev.morestyle.ru/?p=532', '0', 'revision', '', '0'),
('533', '1', '2013-09-01 21:51:48', '2013-09-01 21:51:48', '', 'photodune-3517559-idea-s-774x320', '', 'inherit', 'open', 'open', '', 'photodune-3517559-idea-s-774x320', '', '', '2013-09-01 21:51:48', '2013-09-01 21:51:48', '', '400', 'http://magazine.lunatik.dev.morestyle.ru/wp-content/uploads/2013/08/photodune-3517559-idea-s-774x320.jpg', '0', 'attachment', 'image/jpeg', '0'),
('534', '1', '2013-08-29 07:55:47', '2013-08-29 07:55:47', 'Nam nibh arcu, tristique eget pretium sed, porta id quam. Praesent dignissim ante ac tincidunt molestie. Nunc quis turpis vel ipsum bibendum fringilla id et risus. In ultricies, eros quis viverra pretium, neque purus tincidunt neque, at egestas est lectus non ante. Phasellus imperdiet laoreet sapien, quis consectetur urna adipiscing placerat. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nunc euismod purus purus, in commodo risus facilisis in. Vestibulum at enim pulvinar, feugiat metus vitae, consectetur leo. Nulla viverra enim vel eleifend molestie. Cras in massa venenatis, venenatis nibh nec, rutrum ante. Donec adipiscing iaculis dolor, quis porta lorem iaculis non.', 'Nam nibh arcu tristique eget pretium vitae libero ac risus ', '', 'inherit', 'open', 'open', '', '400-revision', '', '', '2013-08-29 07:55:47', '2013-08-29 07:55:47', '', '400', 'http://magazine.lunatik.dev.morestyle.ru/?p=534', '0', 'revision', '', '0'),
('535', '1', '2013-09-01 21:53:28', '2013-09-01 21:53:28', '', 'shutterstock_2114081-774x320', '', 'inherit', 'open', 'open', '', 'shutterstock_2114081-774x320', '', '', '2013-09-01 21:53:28', '2013-09-01 21:53:28', '', '396', 'http://magazine.lunatik.dev.morestyle.ru/wp-content/uploads/2013/08/shutterstock_2114081-774x320.jpg', '0', 'attachment', 'image/jpeg', '0'),
('536', '1', '2013-08-29 07:53:18', '2013-08-29 07:53:18', 'Fusce aliquet non ipsum vitae scelerisque. Nullam ultricies adipiscing erat, quis bibendum enim congue porttitor. Etiam bibendum nibh at tincidunt varius. Fusce gravida tortor sit amet mauris scelerisque rhoncus. Aliquam erat volutpat. Nunc fringilla ligula non felis convallis tempus. Nunc id pulvinar nibh. Suspendisse mattis lobortis tellus non semper. In a suscipit nisl, et blandit elit. Donec nec ligula a metus sodales molestie. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin ante mauris, sodales ut nisl condimentum, dapibus fringilla nisl.', 'Aliquam quam lectus pulvinar urna leo dignissim lorem', '', 'inherit', 'open', 'open', '', '396-revision', '', '', '2013-08-29 07:53:18', '2013-08-29 07:53:18', '', '396', 'http://magazine.lunatik.dev.morestyle.ru/?p=536', '0', 'revision', '', '0'),
('537', '1', '2013-09-01 21:54:33', '2013-09-01 21:54:33', '', 'shutterstock_109209743-774x320', '', 'inherit', 'open', 'open', '', 'shutterstock_109209743-774x320', '', '', '2013-09-01 21:54:33', '2013-09-01 21:54:33', '', '390', 'http://magazine.lunatik.dev.morestyle.ru/wp-content/uploads/2013/08/shutterstock_109209743-774x320.jpg', '0', 'attachment', 'image/jpeg', '0'),
('538', '1', '2013-08-29 07:49:28', '2013-08-29 07:49:28', 'Phasellus scelerisque massa porta molestie iaculis. Praesent in consectetur magna. Nunc blandit diam ligula, eu cursus tellus tempus in. Donec scelerisque sollicitudin tempor. Nunc eget suscipit lorem. Etiam non tempor urna. Suspendisse vehicula ante sit amet diam euismod, eu aliquam justo vulputate. In venenatis ligula eget aliquam sodales. Nam porta, magna a sollicitudin tincidunt, erat ante volutpat felis, in rutrum massa dui auctor nisl. Pellentesque sagittis molestie metus, sit amet rutrum risus pharetra ut. Nam rutrum commodo eros, non feugiat nisl placerat sed. Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi eleifend eget metus lacinia vulputate. Nunc eleifend congue sem, consequat tempus magna gravida eget. Duis lacinia molestie accumsan.', 'Phasellus scelerisque massa molestie iaculis lectus pulvinar', '', 'inherit', 'open', 'open', '', '390-revision', '', '', '2013-08-29 07:49:28', '2013-08-29 07:49:28', '', '390', 'http://magazine.lunatik.dev.morestyle.ru/?p=538', '0', 'revision', '', '0'),
('539', '1', '2013-09-01 21:59:15', '2013-09-01 21:59:15', '', 'photodune-3834701-laughing-girl-xs-774x320', '', 'inherit', 'open', 'open', '', 'photodune-3834701-laughing-girl-xs-774x320', '', '', '2013-09-01 21:59:15', '2013-09-01 21:59:15', '', '408', 'http://magazine.lunatik.dev.morestyle.ru/wp-content/uploads/2013/08/photodune-3834701-laughing-girl-xs-774x320.jpg', '0', 'attachment', 'image/jpeg', '0'),
('540', '1', '2013-08-29 08:02:23', '2013-08-29 08:02:23', 'Fusce aliquet non ipsum vitae scelerisque. Nullam ultricies adipiscing erat, quis bibendum enim congue porttitor. Etiam bibendum nibh at tincidunt varius. Fusce gravida tortor sit amet mauris scelerisque rhoncus. Aliquam erat volutpat. Nunc fringilla ligula non felis convallis tempus. Nunc id pulvinar nibh. Suspendisse mattis lobortis tellus non semper. In a suscipit nisl, et blandit elit. Donec nec ligula a metus sodales molestie. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin ante mauris, sodales ut nisl condimentum, dapibus fringilla nisl.', 'Morbi est est lectus non rutrum commodo felis quis tortor', '', 'inherit', 'open', 'open', '', '408-revision', '', '', '2013-08-29 08:02:23', '2013-08-29 08:02:23', '', '408', 'http://magazine.lunatik.dev.morestyle.ru/?p=540', '0', 'revision', '', '0'),
('541', '1', '2013-09-01 22:00:16', '2013-09-01 22:00:16', '', 'shutterstock_123603871-774x320', '', 'inherit', 'open', 'open', '', 'shutterstock_123603871-774x320', '', '', '2013-09-01 22:00:16', '2013-09-01 22:00:16', '', '402', 'http://magazine.lunatik.dev.morestyle.ru/wp-content/uploads/2013/08/shutterstock_123603871-774x320.jpg', '0', 'attachment', 'image/jpeg', '0'),
('542', '1', '2013-08-29 07:57:19', '2013-08-29 07:57:19', 'Quisque sodales viverra ornare. Aenean posuere lacus sed facilisis gravida. Morbi auctor consectetur mauris a ultrices. Quisque sed justo sollicitudin, facilisis quam non, euismod felis. Aliquam interdum quam sed odio ultrices viverra. Ut turpis risus, rutrum ut odio eget, iaculis vestibulum enim. Sed id mollis ligula. Aliquam sapien elit, vestibulum at erat eu, consequat tincidunt sem. Proin egestas, dolor vel varius iaculis, tortor dui aliquam neque, a dictum massa nibh laoreet eros. Pellentesque malesuada velit lacus, non semper ante facilisis ut. Ut tristique massa orci, ac molestie orci sagittis vitae. Nam eget ultricies quam. Sed sed nulla nec dui consequat tempor. Aenean nec nulla ut tortor dictum rhoncus et nec eros. Morbi condimentum, dolor dictum gravida consequat, tortor velit fermentum enim, at ultrices nisl quam id purus.', 'Quisque sodales viverra ornare vitae libero ac risus', '', 'inherit', 'open', 'open', '', '402-revision', '', '', '2013-08-29 07:57:19', '2013-08-29 07:57:19', '', '402', 'http://magazine.lunatik.dev.morestyle.ru/?p=542', '0', 'revision', '', '0'),
('543', '1', '2013-09-01 22:01:32', '2013-09-01 22:01:32', '', 'shutterstock_109209743-774x320', '', 'inherit', 'open', 'open', '', 'shutterstock_109209743-774x320-2', '', '', '2013-09-01 22:01:32', '2013-09-01 22:01:32', '', '394', 'http://magazine.lunatik.dev.morestyle.ru/wp-content/uploads/2013/08/shutterstock_109209743-774x3201.jpg', '0', 'attachment', 'image/jpeg', '0'),
('544', '1', '2013-08-29 07:51:44', '2013-08-29 07:51:44', 'Fusce aliquet non ipsum vitae scelerisque. Nullam ultricies adipiscing erat, quis bibendum enim congue porttitor. Etiam bibendum nibh at tincidunt varius. Fusce gravida tortor sit amet mauris scelerisque rhoncus. Aliquam erat volutpat. Nunc fringilla ligula non felis convallis tempus. Nunc id pulvinar nibh. Suspendisse mattis lobortis tellus non semper. In a suscipit nisl, et blandit elit. Donec nec ligula a metus sodales molestie. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin ante mauris, sodales ut nisl condimentum, dapibus fringilla nisl.', 'Vestibulum auctor dapibus neque pulvinar urna leo', '', 'inherit', 'open', 'open', '', '394-revision', '', '', '2013-08-29 07:51:44', '2013-08-29 07:51:44', '', '394', 'http://magazine.lunatik.dev.morestyle.ru/?p=544', '0', 'revision', '', '0'),
('545', '1', '2013-09-01 22:03:30', '2013-09-01 22:03:30', '', 'shutterstock_134257640-774x320', '', 'inherit', 'open', 'open', '', 'shutterstock_134257640-774x320', '', '', '2013-09-01 22:03:30', '2013-09-01 22:03:30', '', '416', 'http://magazine.lunatik.dev.morestyle.ru/wp-content/uploads/2013/08/shutterstock_134257640-774x320.jpg', '0', 'attachment', 'image/jpeg', '0'),
('546', '1', '2013-08-29 08:07:37', '2013-08-29 08:07:37', 'Fusce aliquet non ipsum vitae scelerisque. Nullam ultricies adipiscing erat, quis bibendum enim congue porttitor. Etiam bibendum nibh at tincidunt varius. Fusce gravida tortor sit amet mauris scelerisque rhoncus. Aliquam erat volutpat. Nunc fringilla ligula non felis convallis tempus. Nunc id pulvinar nibh. Suspendisse mattis lobortis tellus non semper. In a suscipit nisl, et blandit elit. Donec nec ligula a metus sodales molestie. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin ante mauris, sodales ut nisl condimentum, dapibus fringilla nisl.', 'Lectus non rutrum pulvinar urna leo dignissim lorem', '', 'inherit', 'open', 'open', '', '416-revision', '', '', '2013-08-29 08:07:37', '2013-08-29 08:07:37', '', '416', 'http://magazine.lunatik.dev.morestyle.ru/?p=546', '0', 'revision', '', '0'),
('547', '1', '2013-09-01 22:04:38', '2013-09-01 22:04:38', '', 'shutterstock_70184773-774x320', '', 'inherit', 'open', 'open', '', 'shutterstock_70184773-774x320', '', '', '2013-09-01 22:04:38', '2013-09-01 22:04:38', '', '414', 'http://magazine.lunatik.dev.morestyle.ru/wp-content/uploads/2013/08/shutterstock_70184773-774x320.jpg', '0', 'attachment', 'image/jpeg', '0'),
('548', '1', '2013-08-29 08:06:19', '2013-08-29 08:06:19', 'Fusce aliquet non ipsum vitae scelerisque. Nullam ultricies adipiscing erat, quis bibendum enim congue porttitor. Etiam bibendum nibh at tincidunt varius. Fusce gravida tortor sit amet mauris scelerisque rhoncus. Aliquam erat volutpat. Nunc fringilla ligula non felis convallis tempus. Nunc id pulvinar nibh. Suspendisse mattis lobortis tellus non semper. In a suscipit nisl, et blandit elit. Donec nec ligula a metus sodales molestie. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin ante mauris, sodales ut nisl condimentum, dapibus fringilla nisl.', 'Suspen disse auctor dapibus neque pulvinar urna leo', '', 'inherit', 'open', 'open', '', '414-revision', '', '', '2013-08-29 08:06:19', '2013-08-29 08:06:19', '', '414', 'http://magazine.lunatik.dev.morestyle.ru/?p=548', '0', 'revision', '', '0'),
('549', '1', '2013-09-01 22:06:03', '2013-09-01 22:06:03', '', 'photodune-2043745-college-student-s-774x320', '', 'inherit', 'open', 'open', '', 'photodune-2043745-college-student-s-774x320-2', '', '', '2013-09-01 22:06:03', '2013-09-01 22:06:03', '', '412', 'http://magazine.lunatik.dev.morestyle.ru/wp-content/uploads/2013/08/photodune-2043745-college-student-s-774x3201.jpg', '0', 'attachment', 'image/jpeg', '0'),
('550', '1', '2013-08-29 08:05:21', '2013-08-29 08:05:21', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer placerat id augue non dapibus. Morbi ut ipsum condimentum, cursus quam et, molestie ante. Nunc ornare bibendum elit, eget laoreet mi commodo ac. Sed mauris lacus, adipiscing et ultrices in, dictum vel tellus. Donec sed lectus ornare, fringilla metus et, aliquet risus. Nam malesuada urna non diam viverra porttitor. Aenean vel tempor nulla. Ut interdum, nisl a vehicula ultrices, risus lectus aliquam metus, eget vehicula magna mauris vel nulla. Suspendisse ac eleifend odio. Aenean egestas suscipit libero a scelerisque. Aliquam placerat velit vitae sapien rutrum, sed interdum leo rhoncus. Fusce id viverra est. Nam rhoncus venenatis nulla in luctus. Integer nec gravida diam.', 'Porta lorem ipsum dolor sit amet, consectetur adipiscing risus', '', 'inherit', 'open', 'open', '', '412-revision', '', '', '2013-08-29 08:05:21', '2013-08-29 08:05:21', '', '412', 'http://magazine.lunatik.dev.morestyle.ru/?p=550', '0', 'revision', '', '0'),
('551', '1', '2013-09-01 22:07:35', '2013-09-01 22:07:35', '', 'shutterstock_58382248-774x320', '', 'inherit', 'open', 'open', '', 'shutterstock_58382248-774x320', '', '', '2013-09-01 22:07:35', '2013-09-01 22:07:35', '', '410', 'http://magazine.lunatik.dev.morestyle.ru/wp-content/uploads/2013/08/shutterstock_58382248-774x320.jpg', '0', 'attachment', 'image/jpeg', '0'),
('552', '1', '2013-08-29 08:04:08', '2013-08-29 08:04:08', 'Fusce aliquet non ipsum vitae scelerisque. Nullam ultricies adipiscing erat, quis bibendum enim congue porttitor. Etiam bibendum nibh at tincidunt varius. Fusce gravida tortor sit amet mauris scelerisque rhoncus. Aliquam erat volutpat. Nunc fringilla ligula non felis convallis tempus. Nunc id pulvinar nibh. Suspendisse mattis lobortis tellus non semper. In a suscipit nisl, et blandit elit. Donec nec ligula a metus sodales molestie. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin ante mauris, sodales ut nisl condimentum, dapibus fringilla nisl.

<!--nextpage-->

In a suscipit nisl, et blandit elit. Donec nec ligula a metus sodales molestie. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin ante mauris, sodales ut nisl condimentum, dapibus fringilla nisl.', 'Integer vitae libero ac risus egestas placerat urna', '', 'inherit', 'open', 'open', '', '410-revision', '', '', '2013-08-29 08:04:08', '2013-08-29 08:04:08', '', '410', 'http://magazine.lunatik.dev.morestyle.ru/?p=552', '0', 'revision', '', '0'),
('553', '1', '2013-08-29 07:58:23', '2013-08-29 07:58:23', 'Fusce aliquet non ipsum vitae scelerisque. Nullam ultricies adipiscing erat, quis bibendum enim congue porttitor. Etiam bibendum nibh at tincidunt varius. Fusce gravida tortor sit amet mauris scelerisque rhoncus. Aliquam erat volutpat. Nunc fringilla ligula non felis convallis tempus. Nunc id pulvinar nibh. Suspendisse mattis lobortis tellus non semper. In a suscipit nisl, et blandit elit. Donec nec ligula a metus sodales molestie. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin ante mauris, sodales ut nisl condimentum, dapibus fringilla nisl.', 'Aenean dignissim dignissim lorem pellentesque felis risus', '', 'inherit', 'open', 'open', '', '404-revision', '', '', '2013-08-29 07:58:23', '2013-08-29 07:58:23', '', '404', 'http://magazine.lunatik.dev.morestyle.ru/?p=553', '0', 'revision', '', '0'),
('554', '1', '2013-09-01 22:00:25', '2013-09-01 22:00:25', 'Члены каждой даты. Озера парка, они создали, но я действительно беременна. Болезни от Рыночной автора. Добро пожаловать в десятки здравоохранения, не более, мэр больше. Больше раз, чем любой профессиональный инвестор. Билеты на смех, затрат, как промышленное производство, целевые стипендии. Но это мягкое воздействие. Добро пожаловать на советы для аэропорта, но подъезд был футбол, много отзывов для. Городская бедность, боль или сайта казино или любого другого жилья, сказал работу масс-медиа. Викинги путешествовать к клиенту, не всегда легко, как раньше. Как массовый потребитель, служащий отеля и стрелы жизни. Для функциональной, чем эстетическая. Но он не чувствовал себя хорошо, но нет реализации. Никаких прав на использование комплектов и больше ничего не сказал. Ведение болезни, говорится в сообщении компании любимца фотографии, макро ориентиром для любителей спорта, но результат был чистым.', 'Члены каждой даты и смех свободной жизни', '', 'inherit', 'open', 'open', '', '402-revision-2', '', '', '2013-09-01 22:00:25', '2013-09-01 22:00:25', '', '402', 'http://magazine.lunatik.dev.morestyle.ru/?p=554', '0', 'revision', '', '0'),
('555', '1', '2013-09-01 22:23:36', '2013-09-01 22:23:36', 'Члены каждой даты. Озера парка, они создали, но я действительно беременна. Болезни от Рыночной автора. Добро пожаловать в десятки здравоохранения, не более, мэр больше. Больше раз, чем любой профессиональный инвестор. Билеты на смех, затрат, как промышленное производство, целевые стипендии. Но это мягкое воздействие. Добро пожаловать на советы для аэропорта, но подъезд был футбол, много отзывов для. Городская бедность, боль или сайта казино или любого другого жилья, сказал работу масс-медиа. Викинги путешествовать к клиенту, не всегда легко, как раньше. Как массовый потребитель, служащий отеля и стрелы жизни. Для функциональной, чем эстетическая. Но он не чувствовал себя хорошо, но нет реализации. Никаких прав на использование комплектов и больше ничего не сказал. Ведение болезни, говорится в сообщении компании любимца фотографии, макро ориентиром для любителей спорта, но результат был чистым.', 'Члены каждой даты и смех свободной жизни', '', 'inherit', 'open', 'open', '', '402-revision-3', '', '', '2013-09-01 22:23:36', '2013-09-01 22:23:36', '', '402', 'http://magazine.lunatik.dev.morestyle.ru/?p=555', '0', 'revision', '', '0'),
('556', '1', '2013-09-01 22:23:40', '2013-09-01 22:23:40', 'Члены каждой даты. Озера парка, они создали, но я действительно беременна. Болезни от Рыночной автора. Добро пожаловать в десятки здравоохранения, не более, мэр больше. Больше раз, чем любой профессиональный инвестор. Билеты на смех, затрат, как промышленное производство, целевые стипендии. Но это мягкое воздействие. Добро пожаловать на советы для аэропорта, но подъезд был футбол, много отзывов для. Городская бедность, боль или сайта казино или любого другого жилья, сказал работу масс-медиа. Викинги путешествовать к клиенту, не всегда легко, как раньше. Как массовый потребитель, служащий отеля и стрелы жизни. Для функциональной, чем эстетическая. Но он не чувствовал себя хорошо, но нет реализации. Никаких прав на использование комплектов и больше ничего не сказал. Ведение болезни, говорится в сообщении компании любимца фотографии, макро ориентиром для любителей спорта, но результат был чистым.', 'Члены каждой даты и смех свободной жизни', '', 'inherit', 'open', 'open', '', '402-revision-4', '', '', '2013-09-01 22:23:40', '2013-09-01 22:23:40', '', '402', 'http://magazine.lunatik.dev.morestyle.ru/?p=556', '0', 'revision', '', '0'),
('557', '1', '2013-09-01 22:23:55', '2013-09-01 22:23:55', 'Члены каждой даты. Озера парка, они создали, но я действительно беременна. Болезни от Рыночной автора. Добро пожаловать в десятки здравоохранения, не более, мэр больше. Больше раз, чем любой профессиональный инвестор. Билеты на смех, затрат, как промышленное производство, целевые стипендии. Но это мягкое воздействие. Добро пожаловать на советы для аэропорта, но подъезд был футбол, много отзывов для. Городская бедность, боль или сайта казино или любого другого жилья, сказал работу масс-медиа. Викинги путешествовать к клиенту, не всегда легко, как раньше. Как массовый потребитель, служащий отеля и стрелы жизни. Для функциональной, чем эстетическая. Но он не чувствовал себя хорошо, но нет реализации. Никаких прав на использование комплектов и больше ничего не сказал. Ведение болезни, говорится в сообщении компании любимца фотографии, макро ориентиром для любителей спорта, но результат был чистым.', 'Члены каждой даты и смех свободной жизни', '', 'inherit', 'open', 'open', '', '402-revision-5', '', '', '2013-09-01 22:23:55', '2013-09-01 22:23:55', '', '402', 'http://magazine.lunatik.dev.morestyle.ru/?p=557', '0', 'revision', '', '0'),
('558', '1', '2013-09-01 22:24:14', '2013-09-01 22:24:14', 'Члены каждой даты. Озера парка, они создали, но я действительно беременна. Болезни от Рыночной автора. Добро пожаловать в десятки здравоохранения, не более, мэр больше. Больше раз, чем любой профессиональный инвестор. Билеты на смех, затрат, как промышленное производство, целевые стипендии. Но это мягкое воздействие. Добро пожаловать на советы для аэропорта, но подъезд был футбол, много отзывов для. Городская бедность, боль или сайта казино или любого другого жилья, сказал работу масс-медиа. Викинги путешествовать к клиенту, не всегда легко, как раньше. Как массовый потребитель, служащий отеля и стрелы жизни. Для функциональной, чем эстетическая. Но он не чувствовал себя хорошо, но нет реализации. Никаких прав на использование комплектов и больше ничего не сказал. Ведение болезни, говорится в сообщении компании любимца фотографии, макро ориентиром для любителей спорта, но результат был чистым.', 'Члены каждой даты и смех свободной жизни', '', 'inherit', 'open', 'open', '', '402-revision-6', '', '', '2013-09-01 22:24:14', '2013-09-01 22:24:14', '', '402', 'http://magazine.lunatik.dev.morestyle.ru/?p=558', '0', 'revision', '', '0'),
('559', '1', '2012-01-31 06:15:50', '2012-01-31 06:15:50', '', 'Блог', '', 'inherit', 'open', 'open', '', '166-revision-2', '', '', '2012-01-31 06:15:50', '2012-01-31 06:15:50', '', '166', 'http://magazine.lunatik.dev.morestyle.ru/?p=559', '0', 'revision', '', '0'),
('560', '1', '2013-09-01 21:34:20', '2013-09-01 21:34:20', '', 'Блог', '', 'inherit', 'open', 'open', '', '470-revision-2', '', '', '2013-09-01 21:34:20', '2013-09-01 21:34:20', '', '470', 'http://magazine.lunatik.dev.morestyle.ru/?p=560', '0', 'revision', '', '0'),
('561', '1', '2012-09-10 21:03:04', '2012-09-10 21:03:04', '', 'Контакты', '', 'inherit', 'open', 'open', '', '168-revision-3', '', '', '2012-09-10 21:03:04', '2012-09-10 21:03:04', '', '168', 'http://magazine.lunatik.dev.morestyle.ru/?p=561', '0', 'revision', '', '0'),
('562', '1', '2013-09-01 21:35:00', '2013-09-01 21:35:00', '', 'Контакты', '', 'inherit', 'open', 'open', '', '469-revision-3', '', '', '2013-09-01 21:35:00', '2013-09-01 21:35:00', '', '469', 'http://magazine.lunatik.dev.morestyle.ru/?p=562', '0', 'revision', '', '0'),
('563', '1', '2013-09-01 21:50:51', '2013-09-01 21:50:51', 'Fusce aliquet non ipsum vitae scelerisque. Nullam ultricies adipiscing erat, quis bibendum enim congue porttitor. Etiam bibendum nibh at tincidunt varius. Fusce gravida tortor sit amet mauris scelerisque rhoncus. Aliquam erat volutpat. Nunc fringilla ligula non felis convallis tempus. Nunc id pulvinar nibh. Suspendisse mattis lobortis tellus non semper. In a suscipit nisl, et blandit elit. Donec nec ligula a metus sodales molestie. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin ante mauris, sodales ut nisl condimentum, dapibus fringilla nisl.', 'Корейский салат из говядины для основного блюда', '', 'inherit', 'open', 'open', '', '406-revision-3', '', '', '2013-09-01 21:50:51', '2013-09-01 21:50:51', '', '406', 'http://magazine.lunatik.dev.morestyle.ru/?p=563', '0', 'revision', '', '0');


/**
   * --------------------------------------------------------
   * Dump Table `magazine__term_relationships`
   * --------------------------------------------------------
**/
CREATE TABLE IF NOT EXISTS `magazine__term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/* DATA Table `magazine__term_relationships` */
INSERT INTO `magazine__term_relationships` VALUES
('1', '2', '0'),
('2', '2', '0'),
('3', '2', '0'),
('4', '2', '0'),
('5', '2', '0'),
('6', '2', '0'),
('7', '2', '0'),
('160', '140', '0'),
('161', '140', '0'),
('235', '142', '0'),
('172', '140', '0'),
('171', '140', '0'),
('233', '141', '0'),
('237', '143', '0'),
('509', '160', '0'),
('249', '161', '0'),
('250', '161', '0'),
('251', '161', '0'),
('252', '161', '0'),
('253', '161', '0'),
('254', '160', '0'),
('255', '160', '0'),
('436', '160', '0'),
('512', '160', '0'),
('390', '144', '0'),
('392', '146', '0'),
('394', '146', '0'),
('396', '145', '0'),
('398', '147', '0'),
('400', '146', '0'),
('402', '144', '0'),
('402', '146', '0'),
('402', '147', '0'),
('404', '144', '0'),
('404', '145', '0'),
('406', '149', '0'),
('406', '150', '0'),
('406', '151', '0'),
('406', '152', '0'),
('406', '154', '0'),
('406', '155', '0'),
('406', '156', '0'),
('406', '158', '0'),
('406', '159', '0'),
('406', '145', '0'),
('406', '147', '0'),
('408', '145', '0'),
('410', '145', '0'),
('412', '147', '0'),
('414', '144', '0'),
('416', '144', '0'),
('472', '160', '0'),
('473', '160', '0'),
('511', '140', '0'),
('513', '160', '0');


/**
   * --------------------------------------------------------
   * Dump Table `magazine__term_taxonomy`
   * --------------------------------------------------------
**/
CREATE TABLE IF NOT EXISTS `magazine__term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM AUTO_INCREMENT=162 DEFAULT CHARSET=utf8;

/* DATA Table `magazine__term_taxonomy` */
INSERT INTO `magazine__term_taxonomy` VALUES
('1', '1', 'category', '', '0', '0'),
('2', '2', 'link_category', '', '0', '7'),
('7', '7', 'post_tag', '', '0', '0'),
('8', '8', 'post_tag', '', '0', '0'),
('9', '9', 'post_tag', '', '0', '0'),
('10', '10', 'post_tag', '', '0', '0'),
('11', '11', 'post_tag', '', '0', '0'),
('12', '12', 'post_tag', '', '0', '0'),
('13', '13', 'post_tag', '', '0', '0'),
('14', '14', 'post_tag', '', '0', '0'),
('15', '15', 'post_tag', '', '0', '0'),
('16', '16', 'post_tag', '', '0', '0'),
('17', '17', 'post_tag', '', '0', '0'),
('18', '18', 'post_tag', '', '0', '0'),
('19', '19', 'post_tag', '', '0', '0'),
('20', '20', 'post_tag', '', '0', '0'),
('21', '21', 'post_tag', '', '0', '0'),
('22', '22', 'post_tag', '', '0', '0'),
('23', '23', 'post_tag', '', '0', '0'),
('24', '24', 'post_tag', '', '0', '0'),
('25', '25', 'post_tag', '', '0', '0'),
('26', '26', 'post_tag', '', '0', '0'),
('27', '27', 'post_tag', '', '0', '0'),
('28', '28', 'post_tag', '', '0', '0'),
('29', '29', 'post_tag', '', '0', '0'),
('30', '30', 'post_tag', '', '0', '0'),
('31', '31', 'post_tag', '', '0', '0'),
('32', '32', 'post_tag', '', '0', '0'),
('33', '33', 'post_tag', '', '0', '0'),
('34', '34', 'post_tag', '', '0', '0'),
('35', '35', 'post_tag', '', '0', '0'),
('36', '36', 'post_tag', '', '0', '0'),
('37', '37', 'post_tag', '', '0', '0'),
('38', '38', 'post_tag', '', '0', '0'),
('39', '39', 'post_tag', '', '0', '0'),
('40', '40', 'post_tag', '', '0', '0'),
('41', '41', 'post_tag', '', '0', '0'),
('42', '42', 'post_tag', '', '0', '0'),
('43', '43', 'post_tag', '', '0', '0'),
('44', '44', 'post_tag', '', '0', '0'),
('45', '45', 'post_tag', '', '0', '0'),
('46', '46', 'post_tag', '', '0', '0'),
('47', '47', 'post_tag', '', '0', '0'),
('48', '48', 'post_tag', '', '0', '0'),
('49', '49', 'post_tag', '', '0', '0'),
('50', '50', 'post_tag', '', '0', '0'),
('51', '51', 'post_tag', '', '0', '0'),
('52', '52', 'post_tag', '', '0', '0'),
('53', '53', 'post_tag', '', '0', '0'),
('54', '54', 'post_tag', '', '0', '0'),
('55', '55', 'post_tag', '', '0', '0'),
('56', '56', 'post_tag', '', '0', '0'),
('57', '57', 'post_tag', '', '0', '0'),
('58', '58', 'post_tag', '', '0', '0'),
('59', '59', 'post_tag', '', '0', '0'),
('60', '60', 'post_tag', '', '0', '0'),
('61', '61', 'post_tag', '', '0', '0'),
('62', '62', 'post_tag', '', '0', '0'),
('63', '63', 'post_tag', '', '0', '0'),
('64', '64', 'post_tag', '', '0', '0'),
('65', '65', 'post_tag', '', '0', '0'),
('66', '66', 'post_tag', '', '0', '0'),
('67', '67', 'post_tag', '', '0', '0'),
('68', '68', 'post_tag', '', '0', '0'),
('69', '69', 'post_tag', '', '0', '0'),
('70', '70', 'post_tag', '', '0', '0'),
('71', '71', 'post_tag', '', '0', '0'),
('72', '72', 'post_tag', '', '0', '0'),
('73', '73', 'post_tag', '', '0', '0'),
('74', '74', 'post_tag', '', '0', '0'),
('75', '75', 'post_tag', '', '0', '0'),
('76', '76', 'post_tag', '', '0', '0'),
('77', '77', 'post_tag', '', '0', '0'),
('78', '78', 'post_tag', '', '0', '0'),
('79', '79', 'post_tag', '', '0', '0'),
('80', '80', 'post_tag', '', '0', '0'),
('81', '81', 'post_tag', '', '0', '0'),
('82', '82', 'post_tag', '', '0', '0'),
('83', '83', 'post_tag', '', '0', '0'),
('84', '84', 'post_tag', '', '0', '0'),
('85', '85', 'post_tag', '', '0', '0'),
('86', '86', 'post_tag', '', '0', '0'),
('87', '87', 'post_tag', '', '0', '0'),
('88', '88', 'post_tag', '', '0', '0'),
('89', '89', 'post_tag', '', '0', '0'),
('90', '90', 'post_tag', '', '0', '0'),
('91', '91', 'post_tag', '', '0', '0'),
('92', '92', 'post_tag', '', '0', '0'),
('93', '93', 'post_tag', '', '0', '0'),
('94', '94', 'post_tag', '', '0', '0'),
('95', '95', 'post_tag', '', '0', '0'),
('96', '96', 'post_tag', '', '0', '0'),
('97', '97', 'post_tag', '', '0', '0'),
('98', '98', 'post_tag', '', '0', '0'),
('99', '99', 'post_tag', '', '0', '0'),
('100', '100', 'post_tag', '', '0', '0'),
('101', '101', 'post_tag', '', '0', '0'),
('102', '102', 'post_tag', '', '0', '0'),
('103', '103', 'post_tag', '', '0', '0'),
('104', '104', 'post_tag', '', '0', '0'),
('105', '105', 'post_tag', '', '0', '0'),
('106', '106', 'post_tag', '', '0', '0'),
('107', '107', 'post_tag', '', '0', '0'),
('108', '108', 'post_tag', '', '0', '0'),
('109', '109', 'post_tag', '', '0', '0'),
('110', '110', 'post_tag', '', '0', '0'),
('111', '111', 'post_tag', '', '0', '0'),
('112', '112', 'post_tag', '', '0', '0'),
('113', '113', 'post_tag', '', '0', '0'),
('114', '114', 'post_tag', '', '0', '0'),
('115', '115', 'post_tag', '', '0', '0'),
('116', '116', 'post_tag', '', '0', '0'),
('117', '117', 'post_tag', '', '0', '0'),
('118', '118', 'post_tag', '', '0', '0'),
('119', '119', 'post_tag', '', '0', '0'),
('120', '120', 'post_tag', '', '0', '0'),
('121', '121', 'post_tag', '', '0', '0'),
('122', '122', 'post_tag', '', '0', '0'),
('123', '123', 'post_tag', '', '0', '0'),
('124', '124', 'post_tag', '', '0', '0'),
('125', '125', 'post_tag', '', '0', '0'),
('126', '126', 'post_tag', '', '0', '0'),
('127', '127', 'post_tag', '', '0', '0'),
('128', '128', 'post_tag', '', '0', '0'),
('129', '129', 'post_tag', '', '0', '0'),
('130', '130', 'post_tag', '', '0', '0'),
('131', '131', 'post_tag', '', '0', '0'),
('132', '132', 'post_tag', '', '0', '0'),
('133', '133', 'post_tag', '', '0', '0'),
('134', '134', 'post_tag', '', '0', '0'),
('135', '135', 'post_tag', '', '0', '0'),
('136', '136', 'post_tag', '', '0', '0'),
('137', '137', 'post_tag', '', '0', '0'),
('138', '138', 'post_tag', '', '0', '0'),
('139', '139', 'post_tag', '', '0', '0'),
('140', '140', 'nav_menu', '', '0', '5'),
('141', '141', 'sp_events_cat', '', '0', '1'),
('142', '142', 'sp_events_cat', '', '0', '1'),
('143', '143', 'sp_events_cat', '', '0', '1'),
('144', '144', 'category', '', '0', '5'),
('145', '145', 'category', '', '0', '5'),
('146', '146', 'category', '', '0', '4'),
('147', '147', 'category', '', '0', '4'),
('148', '148', 'category', '', '0', '0'),
('149', '149', 'post_tag', '', '0', '1'),
('150', '150', 'post_tag', '', '0', '1'),
('151', '151', 'post_tag', '', '0', '1'),
('152', '152', 'post_tag', '', '0', '1'),
('153', '153', 'post_tag', '', '0', '0'),
('154', '154', 'post_tag', '', '0', '1'),
('155', '155', 'post_tag', '', '0', '1'),
('156', '156', 'post_tag', '', '0', '1'),
('157', '157', 'post_tag', '', '0', '0'),
('158', '158', 'post_tag', '', '0', '1'),
('159', '159', 'post_tag', '', '0', '1'),
('160', '160', 'nav_menu', '', '0', '8'),
('161', '161', 'nav_menu', '', '0', '5');


/**
   * --------------------------------------------------------
   * Dump Table `magazine__terms`
   * --------------------------------------------------------
**/
CREATE TABLE IF NOT EXISTS `magazine__terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=162 DEFAULT CHARSET=utf8;

/* DATA Table `magazine__terms` */
INSERT INTO `magazine__terms` VALUES
('1', 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', '0'),
('2', 'Ссылки', '%d1%81%d1%81%d1%8b%d0%bb%d0%ba%d0%b8', '0'),
('7', 'история автомобилестроения', '%d0%b8%d1%81%d1%82%d0%be%d1%80%d0%b8%d1%8f-%d0%b0%d0%b2%d1%82%d0%be%d0%bc%d0%be%d0%b1%d0%b8%d0%bb%d0%b5%d1%81%d1%82%d1%80%d0%be%d0%b5%d0%bd%d0%b8%d1%8f', '0'),
('8', 'англия', '%d0%b0%d0%bd%d0%b3%d0%bb%d0%b8%d1%8f', '0'),
('9', 'автомобили', '%d0%b0%d0%b2%d1%82%d0%be%d0%bc%d0%be%d0%b1%d0%b8%d0%bb%d0%b8', '0'),
('10', 'интересный факт', '%d0%b8%d0%bd%d1%82%d0%b5%d1%80%d0%b5%d1%81%d0%bd%d1%8b%d0%b9-%d1%84%d0%b0%d0%ba%d1%82', '0'),
('11', 'изобретения', '%d0%b8%d0%b7%d0%be%d0%b1%d1%80%d0%b5%d1%82%d0%b5%d0%bd%d0%b8%d1%8f', '0'),
('12', 'психологические типы', '%d0%bf%d1%81%d0%b8%d1%85%d0%be%d0%bb%d0%be%d0%b3%d0%b8%d1%87%d0%b5%d1%81%d0%ba%d0%b8%d0%b5-%d1%82%d0%b8%d0%bf%d1%8b', '0'),
('13', 'цвета', '%d1%86%d0%b2%d0%b5%d1%82%d0%b0', '0'),
('14', 'темперамент', '%d1%82%d0%b5%d0%bc%d0%bf%d0%b5%d1%80%d0%b0%d0%bc%d0%b5%d0%bd%d1%82', '0'),
('15', 'водитель', '%d0%b2%d0%be%d0%b4%d0%b8%d1%82%d0%b5%d0%bb%d1%8c', '0'),
('16', 'характер', '%d1%85%d0%b0%d1%80%d0%b0%d0%ba%d1%82%d0%b5%d1%80', '0'),
('17', 'ученики', '%d1%83%d1%87%d0%b5%d0%bd%d0%b8%d0%ba%d0%b8', '0'),
('18', 'полезные советы', '%d0%bf%d0%be%d0%bb%d0%b5%d0%b7%d0%bd%d1%8b%d0%b5-%d1%81%d0%be%d0%b2%d0%b5%d1%82%d1%8b', '0'),
('19', 'вождение', '%d0%b2%d0%be%d0%b6%d0%b4%d0%b5%d0%bd%d0%b8%d0%b5', '0'),
('20', 'дорога', '%d0%b4%d0%be%d1%80%d0%be%d0%b3%d0%b0', '0'),
('21', 'обучение', '%d0%be%d0%b1%d1%83%d1%87%d0%b5%d0%bd%d0%b8%d0%b5', '0'),
('22', 'выставка', '%d0%b2%d1%8b%d1%81%d1%82%d0%b0%d0%b2%d0%ba%d0%b0', '0'),
('23', 'новинки', '%d0%bd%d0%be%d0%b2%d0%b8%d0%bd%d0%ba%d0%b8', '0'),
('24', 'безопасность движения', '%d0%b1%d0%b5%d0%b7%d0%be%d0%bf%d0%b0%d1%81%d0%bd%d0%be%d1%81%d1%82%d1%8c-%d0%b4%d0%b2%d0%b8%d0%b6%d0%b5%d0%bd%d0%b8%d1%8f', '0'),
('25', 'пешеход', '%d0%bf%d0%b5%d1%88%d0%b5%d1%85%d0%be%d0%b4', '0'),
('26', 'дорожная обстановка', '%d0%b4%d0%be%d1%80%d0%be%d0%b6%d0%bd%d0%b0%d1%8f-%d0%be%d0%b1%d1%81%d1%82%d0%b0%d0%bd%d0%be%d0%b2%d0%ba%d0%b0', '0'),
('27', 'правила дорожного движения', '%d0%bf%d1%80%d0%b0%d0%b2%d0%b8%d0%bb%d0%b0-%d0%b4%d0%be%d1%80%d0%be%d0%b6%d0%bd%d0%be%d0%b3%d0%be-%d0%b4%d0%b2%d0%b8%d0%b6%d0%b5%d0%bd%d0%b8%d1%8f', '0'),
('28', 'мужчины', '%d0%bc%d1%83%d0%b6%d1%87%d0%b8%d0%bd%d1%8b', '0'),
('29', 'женщины', '%d0%b6%d0%b5%d0%bd%d1%89%d0%b8%d0%bd%d1%8b', '0'),
('30', 'риск', '%d1%80%d0%b8%d1%81%d0%ba', '0'),
('31', 'автолюбитель', '%d0%b0%d0%b2%d1%82%d0%be%d0%bb%d1%8e%d0%b1%d0%b8%d1%82%d0%b5%d0%bb%d1%8c', '0'),
('32', 'ремонт', '%d1%80%d0%b5%d0%bc%d0%be%d0%bd%d1%82', '0'),
('33', 'неисправность', '%d0%bd%d0%b5%d0%b8%d1%81%d0%bf%d1%80%d0%b0%d0%b2%d0%bd%d0%be%d1%81%d1%82%d1%8c', '0'),
('34', 'двигатель', '%d0%b4%d0%b2%d0%b8%d0%b3%d0%b0%d1%82%d0%b5%d0%bb%d1%8c', '0'),
('35', 'техосмотр', '%d1%82%d0%b5%d1%85%d0%be%d1%81%d0%bc%d0%be%d1%82%d1%80', '0'),
('36', 'причина', '%d0%bf%d1%80%d0%b8%d1%87%d0%b8%d0%bd%d0%b0', '0'),
('37', 'объявления', '%d0%be%d0%b1%d1%8a%d1%8f%d0%b2%d0%bb%d0%b5%d0%bd%d0%b8%d1%8f', '0'),
('38', 'продажа', '%d0%bf%d1%80%d0%be%d0%b4%d0%b0%d0%b6%d0%b0', '0'),
('39', 'характеристика', '%d1%85%d0%b0%d1%80%d0%b0%d0%ba%d1%82%d0%b5%d1%80%d0%b8%d1%81%d1%82%d0%b8%d0%ba%d0%b0', '0'),
('40', 'туман', '%d1%82%d1%83%d0%bc%d0%b0%d0%bd', '0'),
('41', 'трудности', '%d1%82%d1%80%d1%83%d0%b4%d0%bd%d0%be%d1%81%d1%82%d0%b8', '0'),
('42', 'юмор', '%d1%8e%d0%bc%d0%be%d1%80', '0'),
('43', 'безопасность', '%d0%b1%d0%b5%d0%b7%d0%be%d0%bf%d0%b0%d1%81%d0%bd%d0%be%d1%81%d1%82%d1%8c', '0'),
('44', 'законодательство', '%d0%b7%d0%b0%d0%ba%d0%be%d0%bd%d0%be%d0%b4%d0%b0%d1%82%d0%b5%d0%bb%d1%8c%d1%81%d1%82%d0%b2%d0%be', '0'),
('45', 'кражи', '%d0%ba%d1%80%d0%b0%d0%b6%d0%b8', '0'),
('46', 'транспорт', '%d1%82%d1%80%d0%b0%d0%bd%d1%81%d0%bf%d0%be%d1%80%d1%82', '0'),
('47', 'права', '%d0%bf%d1%80%d0%b0%d0%b2%d0%b0', '0'),
('48', 'воровство', '%d0%b2%d0%be%d1%80%d0%be%d0%b2%d1%81%d1%82%d0%b2%d0%be', '0'),
('49', 'домовой', '%d0%b4%d0%be%d0%bc%d0%be%d0%b2%d0%be%d0%b9', '0'),
('50', 'сша', '%d1%81%d1%88%d0%b0', '0'),
('51', 'словообразование', '%d1%81%d0%bb%d0%be%d0%b2%d0%be%d0%be%d0%b1%d1%80%d0%b0%d0%b7%d0%be%d0%b2%d0%b0%d0%bd%d0%b8%d0%b5', '0'),
('52', 'названия', '%d0%bd%d0%b0%d0%b7%d0%b2%d0%b0%d0%bd%d0%b8%d1%8f', '0'),
('53', 'переводы', '%d0%bf%d0%b5%d1%80%d0%b5%d0%b2%d0%be%d0%b4%d1%8b', '0'),
('54', 'слова', '%d1%81%d0%bb%d0%be%d0%b2%d0%b0', '0'),
('55', 'имена', '%d0%b8%d0%bc%d0%b5%d0%bd%d0%b0', '0'),
('56', 'фамилия', '%d1%84%d0%b0%d0%bc%d0%b8%d0%bb%d0%b8%d1%8f', '0'),
('57', 'достижение целей', '%d0%b4%d0%be%d1%81%d1%82%d0%b8%d0%b6%d0%b5%d0%bd%d0%b8%d0%b5-%d1%86%d0%b5%d0%bb%d0%b5%d0%b9', '0'),
('58', 'биографии', '%d0%b1%d0%b8%d0%be%d0%b3%d1%80%d0%b0%d1%84%d0%b8%d0%b8', '0'),
('59', 'архитектура', '%d0%b0%d1%80%d1%85%d0%b8%d1%82%d0%b5%d0%ba%d1%82%d1%83%d1%80%d0%b0', '0'),
('60', 'ирак', '%d0%b8%d1%80%d0%b0%d0%ba', '0'),
('61', 'мусульманство', '%d0%bc%d1%83%d1%81%d1%83%d0%bb%d1%8c%d0%bc%d0%b0%d0%bd%d1%81%d1%82%d0%b2%d0%be', '0'),
('62', 'таланты', '%d1%82%d0%b0%d0%bb%d0%b0%d0%bd%d1%82%d1%8b', '0'),
('63', 'личность', '%d0%bb%d0%b8%d1%87%d0%bd%d0%be%d1%81%d1%82%d1%8c', '0'),
('64', 'искусство', '%d0%b8%d1%81%d0%ba%d1%83%d1%81%d1%81%d1%82%d0%b2%d0%be', '0'),
('65', 'мореплаватель', '%d0%bc%d0%be%d1%80%d0%b5%d0%bf%d0%bb%d0%b0%d0%b2%d0%b0%d1%82%d0%b5%d0%bb%d1%8c', '0'),
('66', 'кругосветка', '%d0%ba%d1%80%d1%83%d0%b3%d0%be%d1%81%d0%b2%d0%b5%d1%82%d0%ba%d0%b0', '0'),
('67', 'европа', '%d0%b5%d0%b2%d1%80%d0%be%d0%bf%d0%b0', '0'),
('68', 'путешествия', '%d0%bf%d1%83%d1%82%d0%b5%d1%88%d0%b5%d1%81%d1%82%d0%b2%d0%b8%d1%8f', '0'),
('69', 'история', '%d0%b8%d1%81%d1%82%d0%be%d1%80%d0%b8%d1%8f', '0'),
('70', 'живописец', '%d0%b6%d0%b8%d0%b2%d0%be%d0%bf%d0%b8%d1%81%d0%b5%d1%86', '0'),
('71', 'трагедия', '%d1%82%d1%80%d0%b0%d0%b3%d0%b5%d0%b4%d0%b8%d1%8f', '0'),
('72', 'художники', '%d1%85%d1%83%d0%b4%d0%be%d0%b6%d0%bd%d0%b8%d0%ba%d0%b8', '0'),
('73', 'живопись', '%d0%b6%d0%b8%d0%b2%d0%be%d0%bf%d0%b8%d1%81%d1%8c', '0'),
('74', 'италия', '%d0%b8%d1%82%d0%b0%d0%bb%d0%b8%d1%8f', '0'),
('75', 'любовь', '%d0%bb%d1%8e%d0%b1%d0%be%d0%b2%d1%8c', '0'),
('76', 'святые', '%d1%81%d0%b2%d1%8f%d1%82%d1%8b%d0%b5', '0'),
('77', 'санкт-петербург', '%d1%81%d0%b0%d0%bd%d0%ba%d1%82-%d0%bf%d0%b5%d1%82%d0%b5%d1%80%d0%b1%d1%83%d1%80%d0%b3', '0'),
('78', 'православие', '%d0%bf%d1%80%d0%b0%d0%b2%d0%be%d1%81%d0%bb%d0%b0%d0%b2%d0%b8%d0%b5', '0'),
('79', 'молитва', '%d0%bc%d0%be%d0%bb%d0%b8%d1%82%d0%b2%d0%b0', '0'),
('80', 'церковь', '%d1%86%d0%b5%d1%80%d0%ba%d0%be%d0%b2%d1%8c', '0'),
('81', 'певцы', '%d0%bf%d0%b5%d0%b2%d1%86%d1%8b', '0'),
('82', 'голливуд', '%d0%b3%d0%be%d0%bb%d0%bb%d0%b8%d0%b2%d1%83%d0%b4', '0'),
('83', 'знаменитости', '%d0%b7%d0%bd%d0%b0%d0%bc%d0%b5%d0%bd%d0%b8%d1%82%d0%be%d1%81%d1%82%d0%b8', '0'),
('84', 'актеры', '%d0%b0%d0%ba%d1%82%d0%b5%d1%80%d1%8b', '0'),
('85', 'бриллианты', '%d0%b1%d1%80%d0%b8%d0%bb%d0%bb%d0%b8%d0%b0%d0%bd%d1%82%d1%8b', '0'),
('86', 'секты', '%d1%81%d0%b5%d0%ba%d1%82%d1%8b', '0'),
('87', 'российская империя', '%d1%80%d0%be%d1%81%d1%81%d0%b8%d0%b9%d1%81%d0%ba%d0%b0%d1%8f-%d0%b8%d0%bc%d0%bf%d0%b5%d1%80%d0%b8%d1%8f', '0'),
('88', 'иван грозный', '%d0%b8%d0%b2%d0%b0%d0%bd-%d0%b3%d1%80%d0%be%d0%b7%d0%bd%d1%8b%d0%b9', '0'),
('89', 'царь', '%d1%86%d0%b0%d1%80%d1%8c', '0'),
('90', 'современность', '%d1%81%d0%be%d0%b2%d1%80%d0%b5%d0%bc%d0%b5%d0%bd%d0%bd%d0%be%d1%81%d1%82%d1%8c', '0'),
('91', 'успешность', '%d1%83%d1%81%d0%bf%d0%b5%d1%88%d0%bd%d0%be%d1%81%d1%82%d1%8c', '0'),
('92', 'достижения', '%d0%b4%d0%be%d1%81%d1%82%d0%b8%d0%b6%d0%b5%d0%bd%d0%b8%d1%8f', '0'),
('93', 'интернет', '%d0%b8%d0%bd%d1%82%d0%b5%d1%80%d0%bd%d0%b5%d1%82', '0'),
('94', 'польша', '%d0%bf%d0%be%d0%bb%d1%8c%d1%88%d0%b0', '0'),
('95', 'эмиграция', '%d1%8d%d0%bc%d0%b8%d0%b3%d1%80%d0%b0%d1%86%d0%b8%d1%8f', '0'),
('96', 'писатели', '%d0%bf%d0%b8%d1%81%d0%b0%d1%82%d0%b5%d0%bb%d0%b8', '0'),
('97', 'интеллигенция', '%d0%b8%d0%bd%d1%82%d0%b5%d0%bb%d0%bb%d0%b8%d0%b3%d0%b5%d0%bd%d1%86%d0%b8%d1%8f', '0'),
('98', 'фашизм', '%d1%84%d0%b0%d1%88%d0%b8%d0%b7%d0%bc', '0'),
('99', 'германия', '%d0%b3%d0%b5%d1%80%d0%bc%d0%b0%d0%bd%d0%b8%d1%8f', '0'),
('100', 'банк', '%d0%b1%d0%b0%d0%bd%d0%ba', '0'),
('101', 'финансы', '%d1%84%d0%b8%d0%bd%d0%b0%d0%bd%d1%81%d1%8b', '0'),
('102', 'экономика', '%d1%8d%d0%ba%d0%be%d0%bd%d0%be%d0%bc%d0%b8%d0%ba%d0%b0', '0'),
('103', 'юрист', '%d1%8e%d1%80%d0%b8%d1%81%d1%82', '0'),
('104', 'жилье', '%d0%b6%d0%b8%d0%bb%d1%8c%d0%b5', '0'),
('105', 'договор', '%d0%b4%d0%be%d0%b3%d0%be%d0%b2%d0%be%d1%80', '0'),
('106', 'аренда', '%d0%b0%d1%80%d0%b5%d0%bd%d0%b4%d0%b0', '0'),
('107', 'квартира', '%d0%ba%d0%b2%d0%b0%d1%80%d1%82%d0%b8%d1%80%d0%b0', '0'),
('108', 'правила', '%d0%bf%d1%80%d0%b0%d0%b2%d0%b8%d0%bb%d0%b0', '0'),
('109', 'доход', '%d0%b4%d0%be%d1%85%d0%be%d0%b4', '0'),
('110', 'деньги', '%d0%b4%d0%b5%d0%bd%d1%8c%d0%b3%d0%b8', '0'),
('111', 'кредитная история', '%d0%ba%d1%80%d0%b5%d0%b4%d0%b8%d1%82%d0%bd%d0%b0%d1%8f-%d0%b8%d1%81%d1%82%d0%be%d1%80%d0%b8%d1%8f', '0'),
('112', 'долги', '%d0%b4%d0%be%d0%bb%d0%b3%d0%b8', '0'),
('113', 'осторожность', '%d0%be%d1%81%d1%82%d0%be%d1%80%d0%be%d0%b6%d0%bd%d0%be%d1%81%d1%82%d1%8c', '0'),
('114', 'зарплата', '%d0%b7%d0%b0%d1%80%d0%bf%d0%bb%d0%b0%d1%82%d0%b0', '0'),
('115', 'кредит', '%d0%ba%d1%80%d0%b5%d0%b4%d0%b8%d1%82', '0'),
('116', 'выбор', '%d0%b2%d1%8b%d0%b1%d0%be%d1%80', '0'),
('117', 'покупка', '%d0%bf%d0%be%d0%ba%d1%83%d0%bf%d0%ba%d0%b0', '0'),
('118', 'банк-клиент', '%d0%b1%d0%b0%d0%bd%d0%ba-%d0%ba%d0%bb%d0%b8%d0%b5%d0%bd%d1%82', '0'),
('119', 'финансовая безопасность', '%d1%84%d0%b8%d0%bd%d0%b0%d0%bd%d1%81%d0%be%d0%b2%d0%b0%d1%8f-%d0%b1%d0%b5%d0%b7%d0%be%d0%bf%d0%b0%d1%81%d0%bd%d0%be%d1%81%d1%82%d1%8c', '0'),
('120', 'кризис', '%d0%ba%d1%80%d0%b8%d0%b7%d0%b8%d1%81', '0'),
('121', 'планирование', '%d0%bf%d0%bb%d0%b0%d0%bd%d0%b8%d1%80%d0%be%d0%b2%d0%b0%d0%bd%d0%b8%d0%b5', '0'),
('122', 'признаки', '%d0%bf%d1%80%d0%b8%d0%b7%d0%bd%d0%b0%d0%ba%d0%b8', '0'),
('123', 'аварии', '%d0%b0%d0%b2%d0%b0%d1%80%d0%b8%d0%b8', '0'),
('124', 'каско', '%d0%ba%d0%b0%d1%81%d0%ba%d0%be', '0'),
('125', 'осаго', '%d0%be%d1%81%d0%b0%d0%b3%d0%be', '0'),
('126', 'ущерб', '%d1%83%d1%89%d0%b5%d1%80%d0%b1', '0'),
('127', 'страхование', '%d1%81%d1%82%d1%80%d0%b0%d1%85%d0%be%d0%b2%d0%b0%d0%bd%d0%b8%d0%b5', '0'),
('128', 'дтп', '%d0%b4%d1%82%d0%bf', '0'),
('129', 'продукты', '%d0%bf%d1%80%d0%be%d0%b4%d1%83%d0%ba%d1%82%d1%8b', '0'),
('130', 'бюджет', '%d0%b1%d1%8e%d0%b4%d0%b6%d0%b5%d1%82', '0'),
('131', 'магазины', '%d0%bc%d0%b0%d0%b3%d0%b0%d0%b7%d0%b8%d0%bd%d1%8b', '0'),
('132', 'экономия', '%d1%8d%d0%ba%d0%be%d0%bd%d0%be%d0%bc%d0%b8%d1%8f', '0'),
('133', 'шопинг', '%d1%88%d0%be%d0%bf%d0%b8%d0%bd%d0%b3', '0'),
('134', 'обслуживание', '%d0%be%d0%b1%d1%81%d0%bb%d1%83%d0%b6%d0%b8%d0%b2%d0%b0%d0%bd%d0%b8%d0%b5', '0'),
('135', 'благодарность', '%d0%b1%d0%bb%d0%b0%d0%b3%d0%be%d0%b4%d0%b0%d1%80%d0%bd%d0%be%d1%81%d1%82%d1%8c', '0'),
('136', 'правила поведения', '%d0%bf%d1%80%d0%b0%d0%b2%d0%b8%d0%bb%d0%b0-%d0%bf%d0%be%d0%b2%d0%b5%d0%b4%d0%b5%d0%bd%d0%b8%d1%8f', '0'),
('137', 'чаевые', '%d1%87%d0%b0%d0%b5%d0%b2%d1%8b%d0%b5', '0'),
('138', 'традиции', '%d1%82%d1%80%d0%b0%d0%b4%d0%b8%d1%86%d0%b8%d0%b8', '0'),
('139', 'этикет', '%d1%8d%d1%82%d0%b8%d0%ba%d0%b5%d1%82', '0'),
('140', 'Top', 'top', '0'),
('141', 'Event Category 1', 'event-category-1', '0'),
('142', 'Event Category 2', 'event-category-2', '0'),
('143', 'Event Category 3', 'event-category-3', '0'),
('144', 'Новости моды', 'fashion-news', '0'),
('145', 'Игровой мир', 'game-news', '0'),
('146', 'Новости спорта', 'sport-news', '0'),
('147', 'Технологии', 'technology', '0'),
('148', 'Безкатегории', 'uncategorized', '0'),
('149', 'Блог', 'blog', '0'),
('150', 'Фраемворк', 'framework', '0'),
('151', 'Линия', 'grid', '0'),
('152', 'Магазин', 'magazine', '0'),
('153', 'Журнал', 'magazine-th', '0'),
('154', 'Мобильный', 'mobile', '0'),
('155', 'Адаптивный', 'responsive', '0'),
('156', 'Сайдбар', 'sidebar', '0'),
('157', 'Слайдер', 'sidebarswe', '0'),
('158', 'Тема', 'themes', '0'),
('159', 'WordPress', 'wordpress', '0'),
('160', 'Primary', 'primary', '0'),
('161', 'Primary Docs', 'primary-docs', '0');


/**
   * --------------------------------------------------------
   * Dump Table `magazine__usermeta`
   * --------------------------------------------------------
**/
CREATE TABLE IF NOT EXISTS `magazine__usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

/* DATA Table `magazine__usermeta` */
INSERT INTO `magazine__usermeta` VALUES
('1', '1', 'first_name', ''),
('2', '1', 'last_name', ''),
('3', '1', 'nickname', 'author'),
('4', '1', 'description', ''),
('5', '1', 'rich_editing', 'true'),
('6', '1', 'comment_shortcuts', 'false'),
('7', '1', 'admin_color', 'fresh'),
('8', '1', 'use_ssl', '0'),
('9', '1', 'show_admin_bar_front', 'true'),
('10', '1', 'magazine__capabilities', 'a:1:{s:13:"administrator";s:1:"1";}'),
('11', '1', 'magazine__user_level', '10'),
('12', '1', 'dismissed_wp_pointers', 'wp330_toolbar,wp330_media_uploader,wp330_saving_widgets,wp340_customize_current_theme_link'),
('13', '1', 'show_welcome_panel', '0'),
('14', '1', 'magazine__user-settings', 'editor=html&align=left&hidetb=1&imgsize=full&galfile=1&galcols=4&urlbutton=file&wplink=1&wooframeworkhidebannerwoodojo=1&wooframeworkhidebannerwoosbm=1'),
('15', '1', 'magazine__user-settings-time', '1378071118'),
('16', '1', 'magazine__dashboard_quick_press_last_post_id', '242'),
('17', '1', 'managenav-menuscolumnshidden', 'a:1:{i:0;s:0:"";}'),
('20', '1', 'closedpostboxes_page', 'a:0:{}'),
('18', '1', 'metaboxhidden_nav-menus', 'a:2:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";}'),
('19', '1', 'nav_menu_recently_edited', '160'),
('21', '1', 'metaboxhidden_page', 'a:0:{}'),
('22', '1', 'closedpostboxes_post', 'a:0:{}'),
('23', '1', 'metaboxhidden_post', 'a:2:{i:0;s:9:"authordiv";i:1;s:12:"revisionsdiv";}');


/**
   * --------------------------------------------------------
   * Dump Table `magazine__users`
   * --------------------------------------------------------
**/
CREATE TABLE IF NOT EXISTS `magazine__users` (
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/* DATA Table `magazine__users` */
INSERT INTO `magazine__users` VALUES
('1', 'admin', MD5('admin'), 'author', 'regestration@pisem.net', '', '2012-01-24 09:41:51', 'mnbodtKyzC0L7wfbne3q', '0', 'Администратор');


