<?php

$online = ($_SERVER['HTTP_HOST'] == "localhost" || $_SERVER['HTTP_HOST'] == "127.0.0.1" || $_SERVER['HTTP_HOST'] == "192.168.101.5" || $_SERVER['HTTP_HOST'] == "abc.bajra") ? false : true;

defined('SITE_FOLDER')  ? '' : define('SITE_FOLDER', 'skygarden');
defined('SITE_STR')     ? '' : define('SITE_STR', '');

if ($online) { // ONLINE SETUP

    define('DB_SERVER', 'localhost');
    define('DB_USER',   'ambassadornepal_ambassadornepal');
    define('DB_PASS',   '}@,b#FGu2U3S');
    define('DB_NAME',   'ambassadornepal_ambassadornepal');

} else {    // LOCAL SETUP

    define('DB_SERVER', 'localhost');
    define('DB_USER',   'root');
    define('DB_PASS',   '');
    define('DB_NAME',   'skygarden');

}

?>
