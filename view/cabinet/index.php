<?
include_once(ROOT.'/view/layouts/header.php');
?>

<div class="container">	
	<div class="row">
		<div class="col-md-12">
			<h2>Кабинет пользователя</h2>
			Привет,<?= $user['name'];?>
			<ul>
				<li><a href="/cabinet/edit/">Редактировать данные </a></li>
					<li><a href="/cabinet/history">История покупок</a></li>
			</ul>
		</div>

	</div>
</div>
<?
include_once(ROOT.'/view/layouts/footer.php');
?>