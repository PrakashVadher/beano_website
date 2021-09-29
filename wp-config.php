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
define( 'DB_NAME', 'beano_website' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'KF6tUAEB.x}Uj`ui^Z([J,+vu0&fh#x^R,koo==cNN#32iQCJY:a-DoQm%,r$O<P' );
define( 'SECURE_AUTH_KEY',  'l8O $wCafZ #[K#a}sk)=n6[j1Z-IV?%_UP|:P&0|T@)_6g/^T).o,pgGa(&u,mg' );
define( 'LOGGED_IN_KEY',    'm)s.Q(zB(L1xY|Z3]Xp1{}Xc,0.a3Cm^kAc>J#B.P*xqcn;{q;l+1Oj@-4@N~F`7' );
define( 'NONCE_KEY',        '&)K50D~C58gQ3Kof)critl4w%L5J?,x82t? G =cV:!2UCJj!;&.csPz8PRoD0<(' );
define( 'AUTH_SALT',        '!FatG*4.r?FBJ]=R=.H|/UW|<Cd*fGd=zGyz,a0`TM8&&I4jz|8Z*4GX!K-~A$2V' );
define( 'SECURE_AUTH_SALT', ']88:bHX:10v!~t`INoE3)fpj,Ar#N~~%b?Y:$}z5O9mw}/BWW,g/0k#)?[{~[)9F' );
define( 'LOGGED_IN_SALT',   'O+)M_{+RQm%4=jtb^o?i|zG6}MXT~~z&7an9Dcq}b~UG,b%?y<`ViBo%w$D4(:Ey' );
define( 'NONCE_SALT',       'w;X*5(f|Rz;#Q}5c$I,1~(~#|7x8}5NJpE4`]$B#Shq`%6DmWvTfAZ$++e-*L/L:' );


/* Squareup payment gateway Credentials */

define( 'SANDBOX_APPLICATION_ID','sandbox-sq0idb-203QopUroYryTNVANwzqcA' );
define( 'SANDBOX_ACCESS_TOKEN', 'EAAAEJsCPzDBM3kNj6KBTjDJpK_OGDiB778-aX58Ab4bqu6bSBbXvnov3S-X4w4S' );
define( 'SANDBOX_LOCATION_ID', 'L8R2V1HCAP2PQ' );

define( 'LIVE_APPLICATION_ID','' );
define( 'LIVE_ACCESS_TOKEN', '' );
define( 'LIVE_LOCATION_ID', '' );



/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'beano_';

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
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );

define( 'WP_AUTO_UPDATE_CORE', false );

// define('WP_CACHE', false);