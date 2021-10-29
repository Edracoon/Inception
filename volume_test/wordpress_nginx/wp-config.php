<?php
define( 'DB_NAME', 'db');

/** Utilisateur de la base de données MySQL. */
define('DB_USER', 'user');

/** Mot de passe de la base de données MySQL. */
define('DB_PASSWORD', 'pass');

define('DB_HOST', 'mariadb:3306');
define('DB_CHARSET', 'utf8');
define( 'WP_SITEURL', 'localhost' );
define( 'WP_HOME', 'localhost' );

define( 'DB_COLLATE', '' );


define('AUTH_KEY',         'mEU]L68@,kS||47_yPKX@xsmO76{,DLCbiEyomB]TePB/uL,buzPrk94qyx*[1XV');
define('SECURE_AUTH_KEY',  'ql+EK$S,ZH9/8@0P?D5I}0Zq|=1pCv_+!vuHZ5:{|-$Mg<+IYW%t?/[d~<dxQ&fa');
define('LOGGED_IN_KEY',    'J-6I|LLSx,T/Grgm^(/wfi@;F/g$|v:m+j`a~d{Ix@IY*0`SbT}z^|f3[< 50q-C');
define('NONCE_KEY',        'xfRq6Tj_,nR@w$UWPp6<K-IS)A/Q%/ebFz:Xi)r7#AN:O^cC/HQLy]$FcOj2*f0o');
define('AUTH_SALT',        '_{!0$}H-ETI;SG~K2/9qFm-|wqZl=R%R.3Tgguk=+q8[q 2EAY&Z[EP(m`,G[?wp');
define('SECURE_AUTH_SALT', ':.V~v 7#2^a^wV]v}imcqMJ~MhRbU24l-W80m&iQIAhe}fuCY^6ACR%JGPzbWvF$');
define('LOGGED_IN_SALT',   'Ybm21O3JG5{J^nfscsR99|/>Xhg<rHPj6Jbitzq<(H5UYI1 Z!Sy]gd(x}*V/oER');
define('NONCE_SALT',       '(_7DRIcVMB)%{hqEzSdTk|;W3G+-if`<?nZR|{jLSq)E=%r%KTgoM>?`3livGGvg');
define('CONCATENATE_SCRIPTS', false);
define( 'WP_CACHE_KEY_SALT', 'localhost' );


$table_prefix = 'wp_';

define('WP_DEBUG', false);
if ( ! defined( 'ABSPATH' ) ) {
    define( 'ABSPATH', __DIR__ . '/' );
}

require_once ABSPATH . 'wp-settings.php';