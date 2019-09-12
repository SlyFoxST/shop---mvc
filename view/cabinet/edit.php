<?include_once(ROOT.'/view/layouts/header.php');?>
<h3>Редактировать данные</h3>
<?if($result):?>
	<p>Данные отредактированны</p>
	<?else:?>
		<?if(isset($errors) && is_array($errors)):?>
			<?foreach($errors as $key):?>
				<li><?php echo $key;?></li>
              <?endforeach;?>
			<?endif;?>
<form action="#" method="post" multipart="form/data">
	<input type="name" name="name" value="<?= $name ?>" />
	<input type="email" name="email" value = "<?= $email?>"/>
	<input type="password" name="password" value="<?= $password?>"/>
	<input type="submit" name="btn_edit" value="ok" />
	</form>
	<?endif;?>
<?include_once(ROOT.'/view/layouts/footer.php');?>