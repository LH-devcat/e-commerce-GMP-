<?php
if (! defined ('TEST_INCLUDE'))
   die ("Vous ne pouvez pas accéder directement à ce fichier");


	define("MOD_BASEPATH","modules/mod_accueil");
	include MOD_BASEPATH."/controleur/controleur_accueil.php";

	if (empty($_GET['accueil'])){
	$accueil = "affichAccueil";
	}else{
	$accueil = $_GET['accueil'];
	}
	
	switch ($accueil){
		case "affichAccueil":
			$controleur=new controleur_accueil();
			$controleur->affichVueAccueil();
		break;
		case"affichProduitCat":
			$controleur=new controleur_accueil();
			$controleur->affichageProduitCat($_GET['idCat']);
		break;
		break;
		default:
			echo "default !";
	}

?>
