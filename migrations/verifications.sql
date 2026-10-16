/*Etape 1*/
SELECT * FROM plat ORDER BY prix DESC;

/*Etape 2*/
SELECT categorie.libelle as categorie,COUNT(nom) as nbr_plats FROM plat RIGHT JOIN categorie ON plat.id_categorie=categorie.id_categorie GROUP BY categorie.libelle;