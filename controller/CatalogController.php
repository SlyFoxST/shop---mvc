<?
include_once(ROOT.'/model/Category.php');
include_once(ROOT.'/model/Product.php');
class CatalogController{
public function actionIndex(){
$categorys = array();
$categorys = Category::getCategoryList();
$listProduct = array();
$listProduct = Product::getProductList(10);
	require_once(ROOT . '/view/catalog/index.php');
	return true;
}
public function actionCategory($categoryId){
	$categorys = array();
	$categorys = Category::getCategoryList();
    $categoryProduct = Product::getCategoryByProduct($categoryId);
	require_once(ROOT.'/view/catalog/category.php');
	return true;
}
}
?>