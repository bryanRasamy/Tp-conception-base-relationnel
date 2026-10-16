# Schema realationnel

## Etape 1: La carte
- PLAT (**id_plat**, nom, prix)

On choisit le type `INTEGER` pour le prix.

**Identifiant:** id_plat

## Etape 2: Les categories
- CATEGORIE (**id_categorie**, libelle)
- PLAT (**id_plat**, nom, prix, #id_categorie)

On ne peut pas simplement ajouter une colonne `categorie VARCHAR(50)` dans la table des plats car on peut donc donner une meme categorie mais de nom different si c'est en `VARCHAR(50)` et donc lister des plats selon la categorie sera fausse.

**Exemple:**
- Romazava: Plat malagasy
- Ravitoto sy henakisoa: Plat malgache