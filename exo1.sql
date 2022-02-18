------Création du tableau des medecins


CREATE TABLE Docteur (
	
	id int not null identity,
	photo varchar(200),
	civilite varchar(200) not null,
	typeMedecin varchar(200),
	nom varchar(200) not null,
	prenom varchar(200) not null,
	age int not null,
	specialite varchar(200) not null,
	adresse varchar(255) not null,
	codePostal int not null,
	ville varchar(200),
	typeTarif varchar(200),
	primary key(id),
	check (civilite in ('Monsieur', 'Madame', 'Mademoiselle')),
	check (typeMedecin in ('Pr', 'Dr'))

)



INSERT INTO Docteur VALUES (' ','Madame', 'Dr', 'Maderma', 'Julie', 56, 'Généraliste', '3 rue Chose', 75010, 'Paris', 'Hors Secteur');
INSERT INTO Docteur VALUES (' ','Madame', 'Dr', 'Velter', 'Maria', 30, 'Généraliste', '231 boulevard des patients', 75017, 'Paris', 'Secteur 2');
INSERT INTO Docteur VALUES (' ','Monsieur', 'Dr', 'Mongéné', 'Alban', 37, 'Généraliste', '17 rue Truc', 75019, 'Paris', 'Secteur 1');
INSERT INTO Docteur VALUES (' ','Monsieur', 'Dr', 'Sipani', 'Luigi', 45, 'Chirurgien', '80 rue du Scalpel', 75013, 'Paris', 'Secteur 1');
INSERT INTO Docteur VALUES (' ','Madame', 'Dr', 'Servajean', 'Nathalie', 51, 'Généraliste', '8 bis rue des contractions', 75014, 'Paris', 'Secteur 2');
INSERT INTO Docteur VALUES (' ','Madame', 'Dr', 'Powel', 'Lydie', 45, 'Pédiatre', '111 avenue classroom', 75019, 'Paris', 'Secteur 2');

SELECT * FROM Docteur