<?
include_once(ROOT.'/view/layouts/header.php');
?>

<div class="container">
	<div class="row">
		<div class="col-md-12">
			<?if(isset($errors) && is_array($errors)):?>
				<?foreach($errors as $key):?>
					<? echo $key;?>
					<?endforeach;?>
				<?endif;?>
		<h3>Вход</h3>	
		<form action="#" method="post" multipart="form/data">
			<input type="email" name="email" placeholder="Введите свой email" value="<?= $email;?>" />
			<input type="password" name="password" placeholder="Введите свой пароль" value="<?= $password;?>"/>
			<input type="submit" name="btn_vhod" value="Ok" />
		</form>
		</div>
	</div>
</div>
<?
include_once(ROOT.'/view/layouts/footer.php');
?>