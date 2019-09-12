<?
include_once(ROOT.'/model/User.php');
class CabinetController{
	public function actionIndex(){
        $userId = User::checkLoged();
        $user = User::getUserById($userId);
		include_once(ROOT.'/view/cabinet/index.php');
		return true;

	}
  public function actionEdit(){
  	 $userId = User::checkLoged();
     $user = User::getUserById($userId);
     $name = $user['name'];
     $email = $user['email'];
     $password = $user['password'];
     $result = false;
     if(isset($_POST['btn_edit'])){
     	$name = $_POST['name'];
     	$email = $_POST['email'];
     	$password = $_POST['password'];
     	$errors = false;
if(!User::checkName($name)){
	$errors[] = 'Длина имени должна быть не менее 2-х символов';
}
if(!User::checkEmail($email)){
	$errors[] = 'Не коректно введеный email';
}
if(!User::checkPassword($password)){
	$errors[] = "Длина пароля не должна быть менее 3-х символов";
}
 if($errors == false){
 	$result = User::edit($userId,$name,$email,$password);
     }
 }
  	include_once(ROOT.'/view/cabinet/edit.php');
  	return true;
  }
}
?>