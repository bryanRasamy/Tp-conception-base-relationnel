CREATE TABLE commande(
    id_commande SERIAL PRIMARY KEY,
    date DATE NOT NULL
);

CREATE TABLE detail_commande(
    id_detail_commande SERIAL PRIMARY KEY,
    id_commande INTEGER NOT NULL,
    id_plat INTEGER NOT NULL,
    quantite NUMERIC(5,2),
    prix INTEGER,
    FOREIGN KEY (id_plat) REFERENCES plat(id_plat),
    FOREIGN KEY (id_commande) REFERENCES commande(id_commande)
);

INSERT INTO commande(date) VALUES
('2026-10-16'),
('2026-10-17'),
('2026-10-18');

INSERT INTO detail_commande(id_commande,id_plat,quantite,prix) VALUES
(1,1,2,8000),
(1,7,2,500),
(2,4,1,6000),
(2,5,1,5000),
(3,1,2,8000),
(3,3,1,8500);