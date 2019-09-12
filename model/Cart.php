<?
class Cart{
	public static function addProduct($id){
        $id = intval($id);
        $productInCart = array();
        if(isset($_SESSION['products'])){
   $productInCart = $_SESSION['products'];
        }
        if(array_key_exists($id, $productInCart)){
        	$productInCart[$id] ++;
        }else{
        	$productInCart[$id] = 1;
        }
        $_SESSION['products'] = $productInCart;
	}
    public static function countItems(){
        if(isset($_SESSION['products'])){
            $count = 0;
            foreach($_SESSION['products'] as $id => $quntity){
                $count = $count + $quntity;
            }
            return $count;
        } return 0;
    }
}

?>