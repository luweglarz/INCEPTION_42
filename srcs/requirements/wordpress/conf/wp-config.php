<?php

// ** MySQL settings - You can get this info from your web host ** //
define( 'DB_NAME', 'DB_NAME_TO_SED' );
define( 'DB_USER', 'USERNAME_TO_SED' );
define( 'DB_PASSWORD', 'PASS_TO_SED' );
define( 'DB_HOST', 'mariadb' );
define( 'DB_CHARSET', 'utf8' );
define( 'DB_COLLATE', '' );

define ('WP_ALLOW_REPAIR', true);

/** Authentication Unique Keys and Salts.*/
define('AUTH_KEY',         '#>s{y=y,>2Y4+{vivZW}t}|qidAX#~<|tOfA>7fYa<:j1}V+wyhrikVPEzjlAtL}');
define('SECURE_AUTH_KEY',  'URn{+:?,-YkSM|Rk4cOO!<hoSOHW+Ri4 !mm4p6,!dRXy|dAg&`!G8OfJ4y&X wA');
define('LOGGED_IN_KEY',    'mD! DApx`#Ay<R+2}NC1Q+F`e``4i>T|mzd|Z;88}j6/ yytJ8&kK9H8)Q|-Hb3U');
define('NONCE_KEY',        '0T7r- #Rmj+)FTe:i[qrAp5G|S9a5XY)xv>;.<=i9!-[zk/BGDA0Y-lJN-WWt-aK');
define('AUTH_SALT',        'kX:5_:$Zu`7|&CnF)MN;~ e0!1lQskB|MI%.f@6m62EF~A=io,I=}OFO8$i-`x~m');
define('SECURE_AUTH_SALT', 'v1eCXnP0<8,|~OaMVThuFk!?HdmAIyExLI-pz@*--2>c}qyq+rTm[m/dzMVXO#Bs');
define('LOGGED_IN_SALT',   'd=|v<LL;$?FmP9S~}*wU;tnvE&H+%B-$OJ(D77Ru/--CfRRX|Q-+<>%+X0l571<-');
define('NONCE_SALT',       '&(fg[n,m*R-ZZJ08m<IK#rZh)+M`-nA&}^|lKVSe2Mq)ks:Hk:?BNc}Ekid.LN{>');

/**WordPress Database Table prefix.*/
$table_prefix = 'wp_';


define( 'WP_DEBUG', false );

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
        define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';