<?php
	class controleur_inscription{
		
		function affichageForm(){
			include MOD_BASEPATH."/vue/vue_inscription.php";
			$vue=new vue_inscription();
			$vue->affichageForm();
		}
		
		function traitementForm(){
			include MOD_BASEPATH."/modele/modele_inscription.php";
			
			$description= isset($_POST['description']) ? $_POST['description'] : "test";			
			$traitement=new modele_inscription();
			$traitement->traitementForm($description);
		}
	
	}


?>
