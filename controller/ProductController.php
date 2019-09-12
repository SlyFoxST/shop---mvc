<?
include_once (ROOT.'/model/Category.php');
class ProductController{
	public function actionView($id){
		$categorys = array();
        $categorys = Category::getCategoryList();
		require_once(ROOT . '/view/product/view.php');
		return true;
	}
}

?>