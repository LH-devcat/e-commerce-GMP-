<?php
	class vue_accueil{

		static function affichVueAccueil($donnees){
			foreach ($donnees as $k => $v)
			{
				echo "<div id=\"ensembleResume\">";
				echo "  <div id=\"imageResume\"><img src=\"".$v['image']."\" height=\"150\" width=\"150\"></div>
						<div id=\"nomResume\">".$v['nom']."</div>
						<div id=\"desResume\">".$v['prix']."€</div>
						<a class=\"boutonCentre\" href=\"index.php?module=produit&action=affichProduit&idProduit=".$v['idProduit']."\">Voir le produit</a>
						</div>";
			}
		}

	}
 ?>
				



