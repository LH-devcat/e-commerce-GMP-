<?php
	class controleur_accueil{
		
		
		function affichVueAccueil(){
			include MOD_BASEPATH."/modele/modele_accueil.php";
			include MOD_BASEPATH."/vue/vue_accueil.php";
			$modele=modele_accueil::getProduit();
			vue_accueil::affichVueAccueil($modele);
		}
		
		
		function affichageProduitCat($idCat){
			include MOD_BASEPATH."/modele/modele_accueil.php";
			include MOD_BASEPATH."/vue/vue_accueil.php";
			$modele = modele_accueil::affichageProduitCat($idCat);
			vue_accueil::affichVueAccueil($modele);
		}
	}

?>
