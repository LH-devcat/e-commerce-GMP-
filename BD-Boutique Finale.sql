DROP SCHEMA BOUTIQUE;
CREATE SCHEMA IF NOT EXISTS BOUTIQUE;

CREATE TABLE IF NOT EXISTS BOUTIQUE.user (
			  id int(11) NOT NULL AUTO_INCREMENT,
			  pseudo varchar(32) NOT NULL,
			  password varchar(64) NOT NULL,
			  nom varchar(32) NOT NULL,
			  prenom varchar(32) NOT NULL,
			  adresse varchar(128) NOT NULL,
			  droit int(11) NOT NULL,
			  PRIMARY KEY (id)
			) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;
			
insert into BOUTIQUE.user values (1,'clem','$2y$10$uKRc7augk1rUQUm267T.MO7F4Vj0W4uE87Xjo20rDXek2j/hpKwwG','ADMIN','ADMIN','ADMIN',1);
insert into BOUTIQUE.user values (2,'mathieu','$2y$10$VTPjMVhlGj6csDA7NTu2/uLa0RHG.SK4nv40oMdVr2hPs06//fDB6','ADMIN','ADMIN','ADMIN',1);
insert into BOUTIQUE.user values (3,'julien','$2y$10$gwtgjXA7.Q1MI1Hb4Oqgiu2mWSCHF/5CEXg6DX4sjoklFIEWOGwdi','ADMIN','ADMIN','ADMIN',1);
insert into BOUTIQUE.user values (4,'star','$2y$10$G16mV3qCdTjLzHipZsf0r.4aPQcHmQz7Ku40lM5mWJJ22/iQoIZNK','Michel','Dupont','10, rue du client satisfait',2);




CREATE TABLE IF NOT EXISTS BOUTIQUE.categorie (
			  id int(8) NOT NULL AUTO_INCREMENT,
			  nom varchar(32) NOT NULL,
			  PRIMARY KEY (id)
			) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

insert into BOUTIQUE.categorie values (1,'Jeu Video');
insert into BOUTIQUE.categorie values (2,'Accessoires');
insert into BOUTIQUE.categorie values (3,'Hardware');
insert into BOUTIQUE.categorie values (4,'Figurine');
insert into BOUTIQUE.categorie values (5,'Abonnement');
insert into BOUTIQUE.categorie values (6,'Livres');
insert into BOUTIQUE.categorie values (7,'CD');
insert into BOUTIQUE.categorie values (8,'DVD');

	
CREATE TABLE IF NOT EXISTS BOUTIQUE.produit (
			  idProduit varchar(64) NOT NULL,
			  nom varchar(32) NOT NULL,
			  des TEXT NOT NULL,
			  date DATETIME NOT NULL,
			  image varchar(32),
			  idCategorie int(8) NOT NULL,
			  prix int (11) NOT NULL,
			  PRIMARY KEY (idproduit),
			  foreign key (idCategorie) references categorie (id)
			) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

			
insert into BOUTIQUE.produit values ("9PiHYFSHEF",'The Binding of isaac','A propos de ce jeu</br>
Lorsque la mere dIsaac commença a entendre la voix de Dieu lui demandant un sacrifice pour prouver sa foi, Isaac s echappa dans la cave.
</br> De nombreux ennemis ly attendent.
</br>The Binding of Isaac est un jeu d action, de tir et de role. Suivez Isaac dans son aventure et utilisez les tresors etranges qui vont lui donner des pouvoirs speciaux pour combattre les creatures mysterieuses et trouver le chemin vers la liberte.
</br></br>Comprend :
</br>Donjons generes de façon aleatoire, ainsi que les objets, les ennemis et les boss. Vous ne jouerez jamais deux fois au meme jeu.
</br>Plus de 100 objets qui vous donnent des pouvoirs et changent votre personnage.
</br>Plus de 50 ennemis avec chacun leur type special. Plus ils sont mortels plus les tresors seront interessants.
</br>Plus de 20 boss.</br>4 chapitres sur 8 niveaux.
</br>Plus de 3 classes deblocables.
</br>Fins multiples.
</br>Des tonnes d objets, boss, ennemis... deblocables.</br>
Attention:</br>Cet achat consiste en une clef steam, vous devez posseder un compte steam pour pouvoir jouer.',
'2014-12-24 16:45:12', 'images/Produit/isaac.jpg',1,5);
insert into BOUTIQUE.produit values ("k4aVODS8gD",'PAYDAY 2','À propos de ce jeu</br>
PAYDAY 2 est un jeu de shoot coopératif jusquà quatre joueurs, qui permet une fois de plus aux joueurs de se mettre dans la peau de la célèbre équipe de braqueurs de PAYDAY
 - Dallas, Hoxton, Wolf et Chains - qui débarquent à Washington DC pour une série de crimes épiques.</br>
 Le nouveau réseau CRIMENET offre une vaste gamme de contrats dynamiques, et les joueurs sont libres de choisir la nature des contrats qui les intéressent, 
 allant des forfaits relativement rapides à exécuter, tels que des vols de bijouteries ou des kidnapping, 
 à des braquages très complexes nécessitant des plans bien échafaudés pour vider les coffres des plus grandes banques. 
 Tant que vous êtes en ville, pourquoi ne pas en profiter pour faire quelques courses ?</br>Quatre amis peuvent coopérer sur les différents coups, 
 et au fur et à mesure que léquipe progresse, les contrats deviennent plus difficiles mais surtout plus gratifiant. En plus de gagner plus dargent et de devenir un criminel légendaire, 
 vous pourrez aussi personnaliser les braqueurs et le système dartisanat vous permettra de modifier les armes et matériels.
 </br>Attention:</br>
 Cet achat consiste en une clef steam, vous devez posseder un compte steam pour pouvoir jouer.',
 '2012-03-24 17:45:12', 'images/Produit/payday2.jpg',1,28);
insert into BOUTIQUE.produit values ("evmjw2gr7R",'OUTLAST','À propos de ce jeu</br>Vous allez vivre l enfers dans Outlast, 
un survival horror en vue a la premiere personne develope par des veterants de plusieurs franchises historiques. 
Dans la peau du journaliste Miles Upshur, explorez l asile de Mount Massive et essayez de survive assez longtemp pour decouvrir son terrible secret... 
si vous l osez.</br>Synopsis:</br>
Dans les montagnes reculees du Colorado, l horreur attend dans l asile de Mount Massive. 
Une maison pour malades menteaux abandonee depuis longtemp, rouverte reçament par la branche “recherche et charitee” de la transnationale Murkoff Corporation, 
l asile fonctionnait dans le plus grand secret... jusqu a maintenant.</br>
Suivant les infos d une source annonyme, le journaliste independant Miles Upshur cede a la facilite, 
et va decouvrir une fusion terrifiante entre science et religion, nature et d autres choses. 
Une fois a l interieur, sa seule chance de s echapper est de decouvrir la terrible veritee qui se cache dans Mount Massive.</br>
Outlast est une vraie experience survival horror qui montre les pires monstres de l inconcient humain.
</br>Comprend :</br>
Vraie experience Survival Horror: Vous n etes pas un combatant, si vous voulez survivre aux horreurs de l asile, votre seule chance est de courir... ou de vous cacher
</br>Graphismes immersif: Des graphismes de qualite AAA donne au joueur un monde detaille et terrifiant a explorer
</br>Enemis imprevisibles: Vous ne pouvez pas les comprendre - and from where - one of the asylum’s terrifying inhabitants will finally catch up to them
</br>Reele Horreur: Les mecaniques d Outlast et ces personnages sont inspires par de vrais asiles et de vrais cas de criminal insanity
</br>Et bien plus encore ...</br>Attention:</br>Outlast contient  une intense violence, du gore...</br>
Cet achat consiste en une clef steam, vous devez posseder un compte steam pour pouvoir jouer.','2009-03-24 17:55:12',
'images/Produit/outlast.jpg',1,17);


insert into BOUTIQUE.produit values ("krU2QD7JS0",'Souris sans Fil','Une souris sans fil ayant une longévité allant jusqu à trois ans avec un seul jeu de piles.',
'2013-01-01 17:55:12', 'images/Produit/souris.jpg',2,25);
insert into BOUTIQUE.produit values ("AXcl5XmPWd",'Casque Gamer','Le nouveau casque gamer de Sound Blaster</br> Casque stéréo gaming, réponse en fréquence : 20 Hz - 20 KHz, 
impédance : 32 Ohms 225 g, câble de 3 m, connecteur jack 3,5 mm</br>Type de casque 	Arceau de tête</br>Bande passante 	20000 Hz
</br>Contrôle du volume 	Oui</br>Connectivité 	Prise jack 3.5mm ','2015-01-01 17:55:12', 
'images/Produit/casque.jpg',2,50);
insert into BOUTIQUE.produit values ("WxG69D3p7D",'Tapis Souris Razers','Tapis de souris Razers en materiaux composite pour les pro-gamers en mal de reponse rapide et de confors d usage.',
'2015-01-03 17:55:12', 'images/Produit/tapissouris.jpg',2,10);
insert into BOUTIQUE.produit values ("AAAAAAAAAA",'Oculus Rift','L Oculus Rift kit de developpement 2 est le dernier kit de developpement pour l oculus rift avec un ecran OLED et un detecteur de movement de tete.',
'2015-01-26 10:00:12', 'images/Produit/oculus.jpg',2,350);


insert into BOUTIQUE.produit values ("aXorGRkDaR",'NVIDIA GTX 780','GTX 780 by NVIDIA out now !','2015-01-02 17:55:12',
'images/Produit/GTX780.jpg',3,700);
insert into BOUTIQUE.produit values ("AAAAAAAAHA",'Cooler Master Centurion 6 Argent','Le boîtier Cooler Master Centurion 6 affiche un design sobre et élégant. C est néanmoins un boîtier performant, idéal pour installer une ou plusieurs cartes graphiques ultra-puissantes, grâce à son large espace intérieur et son système de ventilation performant.',
'2015-01-26 10:00:12', 'images/Produit/boitier.jpg',3,80);
insert into BOUTIQUE.produit values ("AAAAAAAAHB",'CORSAIR - Alimentation PC - VS350 - CP-9020095-EU - 80+ - 350W','Le VS350 Corsair est un excellent choix si vous construisez une maison ou d un système de bureau avec les demandes de faible puissance, mais vous avez encore exiger la compatibilité et de fiabilité que Corsair est connu pour.',
'2015-01-26 10:00:12', 'images/Produit/alim.jpg',3,16);


insert into BOUTIQUE.produit values ("AAAAAAAAFA",'R2-D2','Tous les héros de la saga Star Wars à collectionner avec leurs équipements!',
'2015-01-26 10:00:12', 'images/Produit/R2-D2.jpg',4,12);
insert into BOUTIQUE.produit values ("AAAAAAAAFB",'Clone Trooper','Tous les héros de la saga Star Wars à collectionner avec leurs équipements!',
'2015-01-26 10:00:12', 'images/Produit/Clone Trooper.jpg',4,22);
insert into BOUTIQUE.produit values ("AAAAAAAAFC",'Gandalf','Statuette en résine dimensions env. 15 x 11 x 12 cm sur socle. Modèle sculpté par Steven Saunders (Weta Workshop), fini et peint à la main en édition limitée numérotée.',
'2015-01-26 10:00:12', 'images/Produit/Gandalf.jpg',4,80);
insert into BOUTIQUE.produit values ("AAAAAAAAFD",'Gollum','Statuette en résine dimensions env. 15 x 11 x 12 cm sur socle.',
'2015-01-26 10:00:12', 'images/Produit/Gollum.jpg',4,99);
insert into BOUTIQUE.produit values ("AAAAAAAAFE",'Aragorn','Statuette en résine dimensions env. 15 x 11 x 12 cm sur socle.',
'2015-01-26 10:00:12', 'images/Produit/Aragorn.jpg',4,80);
insert into BOUTIQUE.produit values ("AAAAAAAAFF",'Frodo et Sam','Statuette en résine dimensions env. 15 x 11 x 12 cm sur socle.',
'2015-01-26 10:00:12', 'images/Produit/FrodonSam.jpg',4,274);
insert into BOUTIQUE.produit values ("AAAAAAAAFG",'Roi-Sorcier','Statuette en résine dimensions env. 15 x 11 x 12 cm sur socle.',
'2015-01-26 10:00:12', 'images/Produit/Roi-Sorcier.jpg',4,355);


insert into BOUTIQUE.produit values ("AAAAAAAABA",'Playstation Plus Abonnement 1 an LiveCard Sony PS+','code Playstation Plus Abonnement 1 an LiveCard Sony PS+',
'2015-01-26 10:00:12', 'images/Produit/ps+.jpg',5,50);
insert into BOUTIQUE.produit values ("AAAAAAAABB",'Xbox Live Gold 12 mois','Xbox Live Gold 12 mois',
'2015-01-26 10:00:12', 'images/Produit/Xboxlive.jpg',5,36);


insert into BOUTIQUE.produit values ("AAAAAAAALA",'Minecraft: The Complete Handbook Collection','La collection complete des livres de poche Minecraft.',
'2015-01-26 10:00:12', 'images/Produit/MNL.jpg',6,20);
insert into BOUTIQUE.produit values ("AAAAAAAALB",'Bloodborne Collectors Edition Strategy Guide','Guide strategique edition collector pour le jeu Bloodborne',
'2015-01-26 10:00:12', 'images/Produit/BbL.jpg',6,25);
insert into BOUTIQUE.produit values ("AAAAAAAALC",'Guinness World Records 2015 Gamers Edition','Guinness World 2015 des jeux et joueurs',
'2015-01-26 10:00:12', 'images/Produit/GWL.jpg',6,10);
insert into BOUTIQUE.produit values ("AAAAAAAALD",'The Art of Dragon Age','The Art of Dragon Age: Inquisition',
'2015-01-26 10:00:12', 'images/Produit/DAL.jpg',6,27);

insert into BOUTIQUE.produit values ("AAAAAAAACA",'Le Monde plus gros que mes yeux','BLACK M - Le Monde plus gros que mes yeux - Edition Deluxe - Inclus 7 titres inédits',
'2015-01-26 10:00:12', 'images/Produit/BMC.jpg',7,16);
insert into BOUTIQUE.produit values ("AAAAAAAACB",'Listen (Deluxe)','Listen - David Guetta (Interprète) CD album - Paru le 24 novembre 2014',
'2015-01-26 10:00:12', 'images/Produit/DLC.jpg',7,25);
insert into BOUTIQUE.produit values ("AAAAAAAACC",'Scary monsters and nice sprites','Skrillex (Interprète) CD album, import - Paru le 1 mars 2011',
'2015-01-26 10:00:12', 'images/Produit/SSC.jpg',7,10);
insert into BOUTIQUE.produit values ("AAAAAAAACD",'Piece of Mind','Piece of Mind est le quatrième album du groupe de heavy metal britannique Iron Maiden, sorti le 28 mai 1983.',
'2015-01-26 10:00:12', 'images/Produit/IPC.jpg',7,30);
insert into BOUTIQUE.produit values ("AAAAAAAACE",'Recalibrated vol. 1','Desert Dwellers Digital Album, Includes unlimited streaming via the free Bandcamp app, plus high-quality download in MP3, FLAC and more.',
'2015-01-26 10:00:12', 'images/Produit/DRC.jpg',7,10);

insert into BOUTIQUE.produit values ("AAAAAAAADA",'Tonnerre sous les tropiques','Tonnerre sous les tropiques est un film américano-anglo-allemand réalisé par Ben Stiller et sorti en salles en 2008.',
'2015-01-26 10:00:12', 'images/Produit/TTD.jpg',8,20);
insert into BOUTIQUE.produit values ("AAAAAAAADB",'Pulp Fiction','Pulp Fiction, ou Fiction pulpeuse au Québec, est un film de gangsters américain réalisé par Quentin Tarantino et sorti en 1994. Le scénario est co-écrit par Tarantino et Roger Avary.',
'2015-01-26 10:00:12', 'images/Produit/PFD.jpg',8,25);
insert into BOUTIQUE.produit values ("AAAAAAAADC",'Django Unchained','Django Unchained ou Django déchaîné au Québec et au Nouveau-Brunswick est un western spaghetti américain écrit et réalisé par Quentin Tarantino, sorti en 2012.',
'2015-01-26 10:00:12', 'images/Produit/DUD.jpg',8,25);
insert into BOUTIQUE.produit values ("AAAAAAAADD",'Avatar','Avatar est un film américain de science-fiction appartenant au genre planet opera, écrit, réalisé et tourné par le Canadien James Cameron pouvant être regardé en relief 3D, sorti en Europe le 16 décembre 2009.',
'2015-01-26 10:00:12', 'images/Produit/AVD.jpg',8,20);
insert into BOUTIQUE.produit values ("AAAAAAAADE",'Le Hobbit','Le Hobbit est une série cinématographique américano-britannico-néo-zélandaise de fantasy coécrite, produite et réalisée par Peter Jackson, inspirée par le roman Le Hobbit de l écrivain britannique J. R. R. Tolkien.',
'2015-01-26 10:00:12', 'images/Produit/LHD.jpg',8,25);

CREATE TABLE IF NOT EXISTS BOUTIQUE.panier(
			  idPanier int(8) NOT NULL AUTO_INCREMENT,
			  idClient int(11) NOT NULL,
			  prixTotal int (11) NOT NULL,
			  PRIMARY KEY (idPanier),
			  UNIQUE KEY idClient (idClient),
			  foreign key (idClient) references user (id)
			) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

insert into BOUTIQUE.panier values (1,4,0);
			
CREATE TABLE IF NOT EXISTS BOUTIQUE.contenir(
			  idPanier int(8) NOT NULL,
			  idProduit varchar(64) NOT NULL,
			  quantite int(11) NOT NULL,
			  PRIMARY KEY (idPanier,idProduit),
			  foreign key (idProduit) references produit (idProduit),
			  foreign key (idPanier) references panier(idPanier)
			) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

			
			
			
			
CREATE TABLE IF NOT EXISTS BOUTIQUE.facture (
			  NoCommande int(11) NOT NULL,
			  idClient int(11) NOT NULL,
			  prix int (11) NOT NULL,
			  statut boolean,
			  PRIMARY KEY (NoCommande),
			  foreign key (idClient) references user (id)
			) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;
			
CREATE TABLE IF NOT EXISTS BOUTIQUE.factContenu(
			  NoCommande int(8) NOT NULL,
			  idProduit varchar(64) NOT NULL,
			  quantite int(11) NOT NULL,
			  PRIMARY KEY (NoCommande,idProduit),
			  foreign key (idProduit) references produit (idProduit),
			  foreign key (NoCommande) references facture (NoCommande)
			) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;










