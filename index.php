<?
ini_set('display_errors',1);
error_reporting(E_ALL);
session_start();
define('ROOT',dirname(__FILE__));
require_once (ROOT.'/components/Autoload.php');
require_once (ROOT.'/components/Router.php');
require_once (ROOT.'/components/Db.php');
$routs = new Router;
$routs -> run();


?>