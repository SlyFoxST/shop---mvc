<?
class User{
	public static function register($name,$email,$password){
		$db = Db::getConnection();
		$sql = "INSERT INTO user (name,email,password) VALUES(:name,:email,:password)";
		$result = $db -> prepare($sql);
		$result -> bindParam(':name',$name,PDO::PARAM_STR);
		$result -> bindParam(':email',$email,PDO::PARAM_STR);
		$result -> bindParam(':password',$password,PDO::PARAM_STR);
		$result->execute();
		return $result;
	}
public static function checkName($name){
if(strlen($name) >=2){
	return true;
}
return false;
}
public static function checkEmail($email){
if(filter_var($email,FILTER_VALIDATE_EMAIL)){
	return true;
}
return false;
}
public static function checkPassword($password){
if(strlen($password) >= 3){
	return true;
}
return false;
}
public static function checkEmailExist($email){
	$db = Db::getConnection();
	$sql = 'SELECT COUNT(*) FROM user WHERE email = :email';
	$result = $db->prepare($sql);
	$result -> bindParam(':email',$email,PDO::PARAM_STR);
	$result -> execute();
	if($result -> fetchColumn()) return true;
	return false;
}
public static function checkUserDate($email,$password){
	$db = Db::getConnection();
	$sql = 'SELECT * FROM user WHERE email = :email AND password = :password';
	$result = $db -> prepare($sql);
	$result -> bindParam(':email',$email,PDO::PARAM_STR);
	$result -> bindParam(':password',$password,PDO::PARAM_INT);
	$result -> execute();
	$user = $result->fetch();
	if($user){
		return $user['id_user'];
	}
	 return false;
}
public static function auth($userId){
	$_SESSION['user'] = $userId;
}
public static function checkLoged(){
	if(isset($_SESSION['user'])){
		return $_SESSION['user'];
	}
	else header("Location: /user/login");
}
public static function isGuest(){
	if(isset($_SESSION['user'])){
		return false;
	}else return true;
}
public static function getUserById($id){
if($id){
$db = Db::getConnection();
$sql = "SELECT * FROM user WHERE id_user = :id";
$result = $db->prepare($sql);
$result -> bindParam(':id',$id,PDO::PARAM_INT);
$result -> setFetchMode(PDO::FETCH_ASSOC);
$result -> execute();
return $result->fetch();
}
}
public static function edit($userId,$name,$email,$password){
	$db = Db::getConnection();
	$sql = "UPDATE user SET name = :name,  email= :email, password = :password WHERE id_user = :userId";
	$result = $db -> prepare($sql);
	$result -> bindParam(':userId',$userId,PDO::PARAM_STR);
	$result -> bindParam(':name',$name,PDO::PARAM_STR);
	$result -> bindParam(':email',$email,PDO::PARAM_STR);
	$result -> bindParam(':password',$password,PDO::PARAM_STR);
	return $result -> execute();
}
}
?>