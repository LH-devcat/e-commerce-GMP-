<?php
ini_set("display_errors",1);
define('TEST_INCLUDE', 1);
session_start();

if (empty($_GET['module'])){
	$module ='accueil';
}
else{
	$module = $_GET['module'];
}


?>
<!DOCTYPE html>
		<html>
			<head> 
				<meta charset = "utf-8"/>
				<link rel='stylesheet' media='screen' type='text/css' href='./Tools/css/style.css'/>
				<link rel="alternate stylesheet" href='./Tools/css/style2.css' type="text/css" title="css2"> 
				<link rel="alternate stylesheet" href='./Tools/css/style3.css' type="text/css" title="css3"> 
				<script type="text/javascript" src="styleswitcher.js"></script> 
				<link rel="icon" type="image/x-icon" href="images/logo.jpg"/>
				<title>GMP</title>
			</head>

			<body>
				<header>
					<ul id="menuStyle">
							<li>
							Style
							<ul class="niveau2">
							<li><a href="#" onclick="setActiveStyleSheet('standard'); return false;">style 1</a></li>
							<li><a href="#" onclick="setActiveStyleSheet('css2'); return false;">style 2</a></li>
							<li><a href="#" onclick="setActiveStyleSheet('css3'); return false;">style 3</a></li>
							</ul>
							</li>
					</ul>
					<a href="index.php"><img src="images/logo.jpg" alt="logo" height="150" width="200"/></a>
				</header>

				<br/>

				<section>

					

					<div id="centre">
						
						<?php
						include "modules/mod_$module/$module.php";
						?>
						

					</div>

					<div id="droite">
						</br>
						<?php
						/*	include "vue_user_connected.php";
							echo "</br></br>";
							if (! empty($_SESSION['id'])){		
								//deconnexion				
								echo '<a class="boutonDroite" href="modules/mod_deconnexion/deconnexion.php"> Deconnexion </a>';
								//verifie si l'utilisateur est admin
								if ($_SESSION['droit']==1){
									//lien de gestion admin
									echo '<a class="boutonDroite" href="index.php?module=Admin">Administrator</a>';
								}else{
									//affichage du gestion panier
									echo '<a class="boutonDroite" href="index.php?module=panier">Gerer mon panier</a>';
								}
							}
						?>
						</br></br>
						<?php
						//si l'utilisateur est connecté et ne gère pas son panier (mini affichage du panier à droite)
						if ($module!="panier" && !empty($_SESSION['id'])){
							$optionPanier="miniAffichage";
							include "modules/mod_panier/panier.php";
						}
						//si l'uitlisateur n'est pas connecté
						else if(empty($_SESSION['id'])) {
							echo '<a class="boutonDroite" href="index.php?module=connexion">Connexion</a>';
							echo '<a class="boutonDroite" href="index.php?module=inscription&action=affichForm" > S\'inscrire ?</a>';
						}
						//si l'utilisateur est en train de gérer son panier
						else{
							echo "Gestion du panier en cours";
						}
						?>
						</br></br></br></br>
					</div>*/

				</section>

				<footer>
				Copyright team links tout droits réservés </br>   <a class="boutonFooter" href="index.php?module=contact">Nous contacter</a>
				</footer>
			</body>
		</html>
