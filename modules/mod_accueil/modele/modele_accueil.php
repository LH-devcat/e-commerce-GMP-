<?php 

	class modele_accueil{

		static function getProduit(){
			require('dns.php');
			$connexion = new PDO ($dns, $user, $password);
			
			$selectprepare=$connexion->prepare('SELECT * from projet_prevu.item');
			$selectprepare->execute();
			return $selectprepare;
		}
		
		
		static function affichageProduitCat($idCat){
			require('dns.php');
			$connexion = new PDO ($dns, $user, $password);
			$selectprepare=$connexion->prepare('SELECT * from projet_prevu.item2');
			$tabids=array($idCat);
			$selectprepare->execute($tabids);	
			return $selectprepare;
			
		}
	}
?>
