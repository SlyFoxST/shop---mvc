<?
include_once(ROOT.'/view/layouts/header.php');
?>
<div class="container">
	<div class="row">
<h1>Напишите нам</h1>
<?if($result):?>
	<p>Ваше сообщение успешно отправленно, мывскоре вам ответим на указаный email</p>
	<?else:?>
		<?if(isset($errors) && is_array($errors)):?>
			<?foreach($errors as $key):?>
				<li><?= $key;?></li>
				<?endforeach;?>
<?endif;?>
<form action="#" method="post" multipart="form/data">
	<label>Ваше имя
	<input type="text" name="name" value="<?= $name;?>"/>
</label>
<label>Ваш email
	<input type="email" name="email" value="<?= $email;?>" />
</label><br />
<label>Ваше сообщение
	<textarea name="text">	
	</textarea>
	<input type="submit" name="btn_otpr" value="OK" />
</label>
</form>

	<?endif;?>
</div>
</div>
<?
include_once(ROOT.'/view/layouts/footer.php');
?>