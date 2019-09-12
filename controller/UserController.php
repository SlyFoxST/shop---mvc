<?php
require_once(ROOT.'/model/User.php');
class UserController{

	public function actionRegister(){
	$name = '';
	$email = '';
	$password = '';	
		if(isset($_POST['btn_register'])){
			$name = $_POST['name'];
			$email = $_POST['email'];
			$password = $_POST['password'];
			$errors = false;

			if(User::checkName($name)){
				echo $name . '<br>';
			}
			else {
				echo $errors[] = 'Name user should be min 2 characters';
			}


			if(User::checkEmail($email)){
				echo $email . '<br>';
			}
			else {
				echo $errors[] = 'Do not varificate email'; 
			}
            if(User::checkEmailExist($email)){
            	$errors[] = 'Пользователь с таким email уже зарегестрирован';
            }

			if(User::checkPassword($password)){
				echo $password . '<br>';
			}
			else{
				echo $errors[] = 'password should be min characters 6';
			}

            if($errors == false){
            	$result = User::register($name,$email,$password);
            
            }
		}
require_once(ROOT.'/view/user/register.php');
		return true;
	}

		public function actionLogin(){
			$email = '';
			$password = '';
			if(isset($_POST['btn_vhod'])){
            $email = $_POST['email'];
            $password = $_POST['password'];
            $errors = false;
            if(!User::checkEmail($email)){
             $errors[] = 'Не вверно введеный email';
            }
            if(!User::checkPassword($password)){
            	$errors[] = 'Не верно введенный пароль';
            }
            //проверяем существует ли пользователь
            $userId = User::checkUserDate($email,$password);
            if($userId == false){
            	$errors[] = 'Такой ползователь не зарегестрирован';
            }
            else {
             User::auth($userId);
            	header('Location:/cabinet/');
            }
			}
			include_once(ROOT.'/view/user/login.php');
			return true;
		}
		public function actionLogout(){
			unset($_SESSION['user']);
			header("Location: /");
		}

}

?>