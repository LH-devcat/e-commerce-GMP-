<?php
	class controleur_connexion{
		function affichageFormCo(){
			include MOD_BASEPATH."/vue/vue_connexion.php";
			$vue=new vue_connexion();
			$vue->affichageFormCo();
		}

		function verifUser(){
			include MOD_BASEPATH."/modele/modele_connexion.php";
			
			$pseudo=$_POST['pseudo'];
			$password=$_POST['password'];
			
			$traitement=new modele_connexion();
			$traitement->getIdUser($pseudo,$password);
		}
	}

?>
