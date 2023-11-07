<?php
	class vue_inscription{

		static function affichageForm(){
				 ?>
				<h1>Formulaire d'ajout</h1>
				<form action="index.php?module=inscription&action=traitementForm" method="POST" >
				<p>	
					description :
					<input type='text' name='description' required="required"/>
					</br>
					<input type='submit' name='submit' />
				</p>		
				</form>
			<?php
		}

	
	}


?>
