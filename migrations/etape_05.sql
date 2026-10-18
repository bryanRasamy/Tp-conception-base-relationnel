CREATE TABLE serveur(
    id_serveur SERIAL PRIMARY KEY,
    nom VARCHAR(100)
);

CREATE TABLE tables(
    id_table SERIAL PRIMARY KEY,
    libelle VARCHAR(100)
);

INSERT INTO serveur(nom) VALUES
('Njaka Rakoto'),
('Lalao Rasoa');

INSERT INTO tables(libelle) VALUES
('Table 1'),
('Table 2'),
('Table 3'),
('Table 4'),
('Table 5'),
('Table 6'),
('Table 7'),
('Table 8');

ALTER TABLE commande ADD COLUMN id_serveur INTEGER REFERENCES serveur(id_serveur);
ALTER TABLE commande ADD COLUMN id_table INTEGER REFERENCES tables(id_table);

UPDATE commande SET id_serveur=1,id_table=1 WHERE id_commande,=1;
UPDATE commande SET id_serveur=2,id_table=2 WHERE id_commande=2;
UPDATE commande SET id_serveur=1 WHERE id_commande=3;

ALTER TABLE commande ALTER COLUMN id_serveur SET NOT NULL;
