
<body>
    <?
include_once(ROOT .'/view/layouts/header.php');
?>   
        <section>
            <div class="container">
                <div class="row">
                    <div class="col-sm-3">
                        <div class="left-sidebar">
                            <h2>Каталог</h2>
                            <div class="panel-group category-products">
                                <?php foreach($categorys as $key):?>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title"><a href="/category/<?= $key['id'];?>" class="<?php if($categoryId == $key['id']) echo 'active';?>"><?= $key['name'];?></a></h4>
                                    </div>
                                </div>
                            <?php endforeach;?>
                            
                            </div>

                        </div>
                    </div>

                    <div class="col-sm-9 padding-right">
                        <div class="features_items"><!--features_items-->
                            <h2 class="title text-center">Последние товары</h2>
                            <? foreach($listProduct as $key):?>
                            <div class="col-sm-4">
                                <div class="product-image-wrapper">
                                    <div class="single-products">
                                        <div class="productinfo text-center">
                                            <img src="/template/images/home/product1.jpg" alt="" />
                                            <h2><?= $key['price'];?></h2>
                                            <p><a href="/product/<?= $key['id']?>"><?= $key['name'];?></p>
                                            <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>В корзину</a>
                                        </div>
                                        <? if($key['is_new']):?>
                                        <img src="/template/images/home/new.png" class="new" alt="" />
                                    <? endif;?>
                                    </div>
                                </div>
                            </div>
                        <?php endforeach;?>
                           

                    </div>
                </div>
            </div>
        </section>
<?
include_once(ROOT.'/view/layouts/footer.php');

?>