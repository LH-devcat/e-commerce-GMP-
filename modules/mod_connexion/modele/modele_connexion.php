<?php	
class modele_connexion{
	
		
		static function getIdUser($pseudo,$pass){	
			require('dns.php');
			$connexion = new PDO ($dns, $user, $password);

			$selectprepare=$connexion->prepare('SELECT user.pseudo,user.password,user.id,user.droit FROM boutique.user 
										WHERE user.pseudo=?');
			$tableauIds=array($pseudo) ;
			$selectprepare->execute($tableauIds);
			$reponse = $selectprepare->fetch();

			
			
			if ($reponse !== false && password_verify($pass,$reponse['password'])){
				
				$_SESSION['pseudo'] = $pseudo;
				$_SESSION['id'] = $reponse['id'];
				$_SESSION['droit'] = $reponse['droit'];
				
				header('location: index.php');
			}else{
				echo "Erreur : la combinaison entree est incorrecte verifier si votre login ou mot de pass sont correct\n";
				$delai= 2;						
				$url= 'index.php?module=connexion';
				echo "Vous serez redirigé dans $delai secondes";
				header("refresh:$delai ; $url");
				
			}
			
			
		}
						
	}
?>

