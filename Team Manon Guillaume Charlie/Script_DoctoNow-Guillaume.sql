
CREATE TABLE LIEU(
id_lieu int IDENTITY PRIMARY KEY,
lieu varchar(30),
rue varchar(30) NOT NULL,
cp int NOT NULL,
ville varchar(20) NOT NULL,
);

CREATE TABLE PATIENT(
id_patient int IDENTITY PRIMARY KEY,
nom varchar(20) NOT NULL,
prenom varchar(20) NOT NULL,
sexe varchar(10) CHECK('Homme', 'Femme'),
date_naissance date,
email varchar(40) unique,
mdp varchar(40),
FOREIGN KEY (id_lieu) REFERENCES LIEU,
);

CREATE TABLE MEDECIN(
id_medecin int IDENTITY PRIMARY KEY,
civilite varchar(5) CHECK('Mme', 'M.'),
prenom varchar(20),
nom varchar(20),
Date_naissance date,
Lieu_naissance varchar(20),
FOREIGN KEY (id_lieu) REFERENCES LIEU,
);

CREATE TABLE DIPLOME(
id_diplome int IDENTITY PRIMARY KEY,
intitule varchar(50),
specialite varchar(30),
pays varchar(30),
numero-diplome varchar(30),
universite varvhar(20),
date_validite date,
date_obtention_diplome date,
pdf varchar(30),
FOREIGN KEY (id_medecin) REFERENCES MEDECIN,
);

CREATE TABLE CONFERENCE(
id_conference int IDENTITY PRIMARY KEY,
titre varchar(50),
date_debut date,
date_fin date,
heure_debut time,
heure_fin time,
FOREIGN KEY (id_lieu) REFERENCES LIEU,
);


