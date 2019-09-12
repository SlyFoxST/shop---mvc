<?
include_once(ROOT.'/model/User.php');
include_once(ROOT.'/controller/AdminBase.php');
class AdminController extends AdminBase
{
public function actionIndex(){
	self::checkAdmin();
	include_once(ROOT.'/view/admin/index.php');
	return true;
}
}

?>