<?
class Article{
	public static function getArticleById($id){
		$id = intval($id);
		if($id){
	$db = Db::getConnection();
$result = $db -> query('SELECT * FROM article WHERE id=' .$id);
//$result -> setFetchMode(PDO::FETCH_NUM);
$result -> setFetchMode(PDO::FETCH_ASSOC);
$articleItem = $result->fetch();
    return $articleItem;
}
	}


	public static function getArticleList(){
		$db = Db::getConnection();
  $articleList = array();
  $result = $db->query('SELECT id , title, date, schort_content FROM article'
);
 
 $i = 0;
 while($row = $result -> fetch()){
 	$articleList[$i]['id'] = $row['id'];
 	$articleList[$i]['title'] = $row['title'];
 	$articleList[$i]['date'] = $row['date'];
 	$articleList[$i]['schort_content'] = $row['schort_content'];
 	$i++;
 }
return $articleList;
	}

}
?>