<?php
if (! defined ('TEST_INCLUDE'))
   die ("Vous ne pouvez pas accéder directement à ce fichier");
if ( defined ('$_SESSION["id_user"]'))
   die ("Vous possédez deja un compte");
	

	define("MOD_BASEPATH","modules/mod_inscription");
	include MOD_BASEPATH."/controleur/controleur_inscription.php";

	echo "Module inscription : point d'entree</br>";
	
	if (empty($_GET['action'])){
	$action = "affichForm";
	}else{
	$action = $_GET['action'];
	}

	switch ($action){
	case"affichForm":
		$controleur=new controleur_inscription();
		$controleur->affichageForm();
	break;
	case"traitementForm":
		$controleur=new controleur_inscription();
		$controleur->traitementForm();
	break;
	default:
	echo "default !";
	}

?>
