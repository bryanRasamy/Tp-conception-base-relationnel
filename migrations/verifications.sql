/*Etape 1*/
SELECT * FROM plat ORDER BY prix DESC;

/*Etape 2*/
SELECT categorie.libelle as categorie,COUNT(nom) as nbr_plats FROM plat RIGHT JOIN categorie ON plat.id_categorie=categorie.id_categorie GROUP BY categorie.libelle;

/*Etape 3*/
SELECT commande.id_commande as commande, SUM(quantite*prix) as montant_total FROM detail_commande JOIN commande ON detail_commande.id_commande=commande.id_commande GROUP BY commande.id_commande;

/*Etape 4*/
SELECT commande.id_commande as commande, nom FROM client RIGHT JOIN commande ON client.id_client=commande.id_client;

/*Etape 5*/
CREATE view v_commande as SELECT commande.id_commande as commande, SUM(quantite*prix) as montant_total, id_serveur, id_table FROM detail_commande JOIN commande ON detail_commande.id_commande=commande.id_commande GROUP BY commande.id_commande;
SELECT id_serveur, COUNT(commande) as nbr_commande, SUM(montant_total) as chiffre_affaire FROM v_commande GROUP BY id_serveur;