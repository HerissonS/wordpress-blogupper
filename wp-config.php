<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the website, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://developer.wordpress.org/advanced-administration/wordpress/wp-config/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'nome_db' );

/** Database username */
define( 'DB_USER', 'usuario_db' );

/** Database password */
define( 'DB_PASSWORD', 'senha_db' );

/** Database hostname */
define( 'DB_HOST', 'Endececo_do_DB' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'BW)QB-4g^v(x4FPQy6KULy=y9<#CYp411uqv.u)v[o*!X/;x3QJ1Bn/<,oh&I*E&' );
define( 'SECURE_AUTH_KEY',  '^Yxb#`Y@Wqp=+VU[V/6)dH0!t28!,D<[_+n2k_GFSDkR]CvTmyI{.~yrg 06XoKV' );
define( 'LOGGED_IN_KEY',    'TLVHQGfR_J]8>L1^ Q!;BW~[ce2nDo2v3!Ua;rr!fr*57FYV@[#4g]AbhtBMV^Ol' );
define( 'NONCE_KEY',        't ,uCoE@grmg&z4}h7/ LrFC%`8#*;fE/-76]c:0weLOH*/c}:(6y%:HbY.+qw 3' );
define( 'AUTH_SALT',        ':$syov&z7==Bur/IlJI9_H%b0w(RYO NvBqN+bHZwVIL52KA3:^]ix)Q,meNnQj;' );
define( 'SECURE_AUTH_SALT', '+4v0nQ dH0BzLS54<WnaicD)>k1Ysk%`ZA[|N=MoqG72bZ6DGz=%hxSQru:KB|=P' );
define( 'LOGGED_IN_SALT',   '@P[o%v2P*=_%?5|s4w^1iy(F:,qPXI1ZqBt1+z!lLl#.[,z&Lc(&Y>x}zOuI]N3I' );
define( 'NONCE_SALT',       '$:f!3Lw|`%c$@PEa1Qp+ 2@Fcvf)jnF$q{X4?98cQSGt&7)K8*}Cj:!2/pwA/E E' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://developer.wordpress.org/advanced-administration/debug/debug-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */


if ( isset( $_SERVER['HTTPS'] ) && $_SERVER['HTTPS'] === 'on' ) {
    $protocol = 'https://';
} else {
    $protocol = 'http://';
}

define('WP_HOME', $protocol . $_SERVER['HTTP_HOST']);
define('WP_SITEURL', $protocol . $_SERVER['HTTP_HOST']);



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
