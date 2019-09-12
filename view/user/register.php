<?
require_once(ROOT.'/view/layouts/header.php');
?>
<div class="container">
	<div class="row">
		<div class="col-md-12">
			<ul>
				<? if(isset($result)):?>
					<p>Вы успешно зарегестрировались!!!</p>
					<?else:?>
				<? if(isset($errors) && is_array($errors)):?>
				
						<? foreach($errors as $key):?> 
					<li>	<?  echo $key;?></li>
						<? endforeach;?>
					
			<? endif;?>

			</ul>
			<form action="#" method="post" multipart="form/data" />
<input type="text" name="name" placeholder="Name" value="<?= $name;?>" />
<input type="email" name="email" placeholder="Email" value="<?= $email;?>" />
<input type="password" name="password" placeholder="Password" value="<?= $password;?>"/>
<input type="submit" name="btn_register" value="Ok" />
			</form>
		<? endif;?>
		</div>
	</div>
</div>

<?
require_once(ROOT.'/view/layouts/footer.php');
?>