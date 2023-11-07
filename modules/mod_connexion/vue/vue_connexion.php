<?php
	class vue_connexion{

		static function affichageFormCo(){
				 ?>
				<h1>Connexion</h1>
				<form action="index.php?module=connexion&action=verifUser" method="POST" >
				<p>	
					entrez votre pseudo :
					<input type='text' name='pseudo' required="required"/>
					</br>
					entrez votre password :
					<input type="password" name="password" required="required"/>
					</br>
					<input type='submit' name='submit' />
				</p>		
				</form>


				<a  class="boutonDroite" href="index.php?module=inscription&action=affichForm" > Vous ne possedez pas de compte ?</a>
			<?php
		}

	
	}


?>
