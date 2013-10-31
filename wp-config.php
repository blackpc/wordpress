<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, WordPress Language, and ABSPATH. You can find more information
 * by visiting {@link http://codex.wordpress.org/Editing_wp-config.php Editing
 * wp-config.php} Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'TEMPLATE_DATABASE_NAME');

/** MySQL database username */
define('DB_USER', 'TEMPLATE_DB_USER');

/** MySQL database password */
define('DB_PASSWORD', 'TEMPLATE_DATABASE_PASSWORD');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'U4:Er-}Tl Cq?g1]3pIHbqSr?>Ss^@A9[n+N_({6Q:G)Ni<J>ZAi[$-O@@*z-`WB');
define('SECURE_AUTH_KEY',  'sD37,2C=-g9Ct1p+EX^-hVBrb}|Y*//|+v<.5eKjsE+z0+@5#d500KISrW+/X,pS');
define('LOGGED_IN_KEY',    '{+[^o{O6lH,y<43bF0qF@]ZZ2:HU[h{M#>oT2h^[JrxxK!iXn-]oxzu,&{MtcOlJ');
define('NONCE_KEY',        '|f9J)L^UJH/MqH`|%Qa>BU{b|xb/NZgHBoYoa}N|oVvtD= 6[W=(lU=+1 5M~*`I');
define('AUTH_SALT',        '%0g-<wK89Zgce69<vZL&F5Gq[G.zeyVQL!8Ye4yQenv*5^]OBPKpUb-^B,ccQLFR');
define('SECURE_AUTH_SALT', '9TBd/-vT7/ncM[%eYwhd`0Nvo;cESl?8Z$_.>6;ou-;]Sc#+65O-U633AV=0^*3/');
define('LOGGED_IN_SALT',   'o=!gw-wg@B*4V6(^YSpJ.j7tbvkP>aOKf4i<,Yl!|%M/YNk?/p_Kz+-pJnVV5DCT');
define('NONCE_SALT',       'n5ewFbdS>dVAE/$:))`~05/Q@||@+saM1*VLvKd@<!X@ |5TrX!O&:V^hpf}~*~q');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'TEMPLATE_TABLE_PREFIX';

/**
 * WordPress Localized Language, defaults to English.
 *
 * Change this to localize WordPress. A corresponding MO file for the chosen
 * language must be installed to wp-content/languages. For example, install
 * de_DE.mo to wp-content/languages and set WPLANG to 'de_DE' to enable German
 * language support.
 */
define('WPLANG', '');

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
