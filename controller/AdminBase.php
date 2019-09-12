<?
include_once(ROOT.'/model/User.php');
abstract class AdminBase
{
	public static function checkAdmin(){
   $userLogged = User::checkLoged();
   $user =  User::getUserById($id);
if($user['role'] == 'admin'){ 
	return true;
}
die ('Error! You do not admin');
}
}
?>