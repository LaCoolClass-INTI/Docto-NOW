
-- Creation du tableau medecin correspondant au document excel du cours Modelisation BDR - P1  
-- Ajout des contraintes pour faire en sorte de données soit presente et correspondent aux attentes

Create table Medecin (iddoc int not null identity,
						fonc varchar(20), 
						Nom varchar(20), 
						Prenom varchar(20), 
						Specialite varchar(20), 
						tarif varchar(20),  
						adresse varchar (40),
						Code int,
						Ville varchar (20),
						age int,
						photo varchar (100),
						Primary Key (iddoc),
						CONSTRAINT Fonction_doc CHECK (fonc IN ('PR', 'DR')),
						CONSTRAINT Tarif_doc CHECK (tarif IN ('Hors Secteur', 'Secteur 1', 'Secteur 2')),
						);
						
					
						
						
-- Ajout des informations relatives aux medecin dans le tableau
-- (utiliser des , pour inserer plusieur Values en meme temps)
INSERT INTO Medecin (fonc, nom, prenom, Specialite, tarif, adresse, Code, Ville, age, photo)
Values ('PR', 'El Jabri', 'Abner', 'Cardiologue', 'Hors Secteur', '55 avenue Machin', 75014, 'Paris', 51, 'NULL'), 
('DR', 'Bohbot', 'Isaac', 'Dermatologue', 'Secteur 2', '12 rue des bancs', 75001, 'Paris', 27, 'NULL'),
('PR', 'Maderma', 'Julie', 'Dermatologue', 'Hors Secteur', '32 avenue Machin', 75014, 'Paris', 42, 'NULL'),
('DR', 'Mongéné', 'Marc', 'Généraliste', 'Secteur 2', '27 impasse de la couronne', 75002, 'Paris', 29, 'NULL'),
('DR', 'Hamou', 'Laila', 'Généraliste', 'Secteur 2', '72 rue du stéthoscope', 75015, 'Paris', 61, 'NULL'),
('DR', 'Dureigne', 'Serge', 'Généraliste', 'Hors Secteur', '3 rue Chose', 75010, 'Paris', 31, 'NULL'),
('DR', 'Maderma', 'Julie', 'Généraliste', 'Hors Secteur', '3 rue Chose', 75010, 'Paris', 56, 'NULL'),
('DR', 'Mongéné', 'Alban', 'Généraliste', 'Secteur 1', '17 rue Truc', 75019, 'Paris', 37, 'NULL'),
('DR', 'Powel', 'Lydie', 'Pédiatre', 'Secteur 2', '111 avenue classroom', 75019, 'Paris', 45, 'NULL'),
('DR', 'Sipani', 'Luigi', 'Chirurgien', 'Secteur 1', '80 rue du Scalpel', 75013, 'Paris', 45, 'NULL'),
('DR','Servajean', 'Nathalie', 'Généraliste', 'Hors Secteur', '8 bis rue des contractions', 75014, 'Paris', 51, 'NULL');
