<?php	
class modele_inscription{
	
		
		static function traitementForm($description){
				require('dns.php');
				$connexion = new PDO ($dns, $user, $password);
				$mdp=password_hash($pass,PASSWORD_DEFAULT,array(""=>"jaimeLesEndiveAuJambon"));
				$insertprepare=$connexion->prepare('insert into projet_prevu.item(description)  values(?)');
				$tableauIds=array($description) ;
				$insertprepare->execute($tableauIds);
				echo "</br>La création à bien eu lieu";
		}
	
	}

	
?>