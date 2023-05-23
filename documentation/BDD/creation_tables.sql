#+---------------------------------------------------------------------------------+
#|                                  Infos utiles                                   |
#+---------------------------------------------------------------------------------+
#| Description : script SQL de créations des tables de la base de données Restiloc |
#| Date de création : le 15/03/2023 à 10h42                                        |
#| Créé par : Louis Nichanian                                                      |
#| Dernière modification : le 27/03/2023 à 19h41 par Louis Nichanian               |
#+---------------------------------------------------------------------------------+

-- Schéma original
-- SOCIETE(id_societe, nom)
-- id_societe : clé primaire
--
-- RDV(codeDossier, id_societe, dateHeureRDV, lieuRDV, adresse, immatriculation, marque, modele)
-- codeDossier : clé primaire
-- id_societe : clé étrangère en référence à id_societe de SOCIETE

-- RDV_CLIENT(id_client, codeDossier, nom, telephone, mail)
-- codeDossier, id_client : clé primaire
-- codeDossier : clé étrangère en référence à codeDossier de RDV

-- GARAGE(id_garage, codeDossier nom)
-- id_garage, codeDossier : clé primaire
-- codeDossier : clé étrangère en référence à codeDossier de DOSSIER
-- 
-- Simplification
-- SOCIETE(id_societe, nom)
-- id_societe : clé primaire
--
-- RDV(codeDossier, id_societe, dateHeureRDV, lieuRDV, adresse, immatriculation, 
-- marque, modele, nom_garage, nom_client, telephone_client, mail_client)
-- codeDossier : clé primaire
-- id_societe : clé étrangère en référence à id_societe de SOCIETE

DROP TABLE IF EXISTS `societe`;
CREATE TABLE IF NOT EXISTS `societe`
(
	`ID_societe` CHAR(10) NOT NULL,
	`Nom` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,

	PRIMARY KEY(`id_societe`)
)ENGINE=InnoDB;

DROP TABLE IF EXISTS `rdv`;
CREATE TABLE IF NOT EXISTS `rdv`
(
	`Code_dossier` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`ID_societe` CHAR(10) NOT NULL,
	`Date_heure_RDV` DATETIME NOT NULL,
	`Adresse_RDV` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`Immatriculation` CHAR(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`Nom_garage` VARCHAR(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
	`Nom_client` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
	`Telephone_client` INT(10) NULL DEFAULT NULL,
	`Mail_client` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,

	PRIMARY KEY(`Code_dossier`),
	FOREIGN KEY `FK_RDV_societe` (`ID_societe`) REFERENCES societe(`ID_societe`)
)ENGINE=InnoDB;