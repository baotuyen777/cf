<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'cafe');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

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
define('AUTH_KEY',         'MeMex}.DJOHpy&KeGeYQo$b!mOMDrbX6^j2GS# J9arBsN@7()[Q:tE2`}>+%iHH');
define('SECURE_AUTH_KEY',  'H_.A{<!qyG81S9X09Mj/jOMH:tbF;ZaZGkyP3d9AV:oNP#ZZ#D80Da/LM_(Fm8:%');
define('LOGGED_IN_KEY',    'X-{=xlIsQo}DzTg+b1NxT_Y]:QoxS;qP!TTW&})[YpV)D JsipjS6R!=be;)xfum');
define('NONCE_KEY',        'e5l4#t3y>1r9U5i0WE0c0v7Oe$la Nl44pw>Y]Y+&s}i2%)XD2ECm3zje/wvQTCm');
define('AUTH_SALT',        '6Tg~&RzQVCXEH4]vG$%+1;v/cOnSkI/H:LKYa [# ~NWaT7Ok6>;_qr+fNFoa}Wf');
define('SECURE_AUTH_SALT', '##<)?;pPgMXc%)V:x3Q6%ZI6;17C.PTj@[y.3(GRjN%WS:SPJ-htYHMCo_?6^kPk');
define('LOGGED_IN_SALT',   'Calx@<*h/1R0Zj_}x%h|CmhA+<2wErYfA%S!Qp),* 7H6x57.[yuEn2+K@#sB4+n');
define('NONCE_SALT',       'rQL=THyXx)]5<HKUi,V:ni6u0w[y^oxOC#dcvX;HY1|IG+3xkZ0WOCbOay.t_?C+');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'cf_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
