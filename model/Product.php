<?
class Product{
	const SHOW_BY_DEFAULT = 10;
	public static function getProductList($count = self::SHOW_BY_DEFAULT){
$count = intval($count);
$db = Db::getConnection();
$productList = array();
$result = $db->query("SELECT id,name,price,is_new,images FROM product WHERE status = '1' ORDER BY id DESC LIMIT ".$count);
$i= 0;
while($row = $result->fetch()){
$productList[$i]['id'] = $row['id'];
$productList[$i]['name'] = $row['name'];
$productList[$i]['price'] = $row['price'];
$productList[$i]['images'] = $row['images'];
$productList[$i]['is_new'] = $row['is_new'];
$i++;
} 
return $productList; 
	}

public static function getCategoryByProduct($categoryId = false){
if($categoryId){
$db = Db::getConnection();
$products = array();
$x = self::SHOW_BY_DEFAULT;
$result = $db -> query("SELECT id,name,price,is_new,images FROM product WHERE status = '1' AND category_id = '$categoryId' ORDER BY id DESC LIMIT $x");
$i = 0;
while($row = $result->fetch()){
	$products[$i]['id'] = $row['id'];
	$products[$i]['name'] = $row['name'];
	$products[$i]['price'] = $row['price'];
	$products[$i]['images'] = $row['images'];
	$products[$i]['is_new'] = $row['is_new'];
	$i++;
}
return $products;
   }
	
  }	

}


?>