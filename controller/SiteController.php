<?
include_once(ROOT.'/model/Category.php');
include_once(ROOT.'/model/Product.php');
include_once(ROOT.'/model/User.php');
class SiteController{
public function actionIndex(){
$categorys = array();
$categorys = Category::getCategoryList();
$listProduct = array();
$listProduct = Product::getProductList(6);
	require_once(ROOT . '/view/site/index.php');
	return true;
}
public function actionContact(){
	$name = '';
	$email = '';
	$text = '';
	$result = false;
	if(isset($_POST['btn_otpr'])){
		$name = $_POST['name'];
		$email = $_POST['email'];
		$text = $_POST['text'];
		$errors = false;
		if(!User::checkName($name)){
			$erorrs[] = 'Не верно введенное имя';
		}
        if(!User::checkEmail($email)){
        	$errors[] = "Не верно введенный email";
        }
        else if($errors == false){
        	$adminEmail = 'yagoda303@gmail.com';
        	$message = "Письмо от {$name} . Текст {$text} . Email пользователя {$email} ";
        	$subject = "Письмо от ползователя";
        	$result = mail($adminEmail, $subject, $message);
        	$result = true;
        }
	}
	include_once(ROOT.'/view/site/contact.php');
}
}
?>