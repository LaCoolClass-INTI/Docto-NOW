

Create table Patient (id int not null identity,
						Nom varchar(255) not null, 
						Prenom varchar(255) not null, 
						Adresse varchar(255) not null, 
						Code_postal int not null,  
						Ville varchar (255) not null,
						Sexe varchar (255) not null,
						Birth date not null,
						Mail varchar (255) not null,
						mdp varchar (255) not null,
						primary key (id),
						
						Check (Sexe in ('Homme', 'Femme'))
						);
						
SET IDENTITY_INSERT Patient ON
						
INSERT INTO Patient (Nom, Prenom, Adresse, Code_postal, Ville, Sexe, Birth, Mail, mdp)
Values ('Dupont', 'Pierre', '12 avenue des tulipes', 31000, 'Toulouse', 'Homme', '1992-12-31', 'pierredupont@gmail.com', 'pierrot31'),
('Dupond', 'Paul', '150 rue des roses', 34000, 'Montpellier', 'Homme', '1970-08-15', 'pauldupond@gmail.com', '123motdepasse'),
('Vol', 'Emma', '21 Impasse du Lys', 84000, 'Avignon', 'Femme', '1990-03-11', 'Emma90@gmail.com', 'Emma90'),
('Santini', 'Georgette', '30 avenue des rosiers', 86000, 'Poitier', 'Femme', '2005-04-26', 'Georgettelabest@gmail.com', 'Justinbieberjtm'),
('Bouvier', 'Léa', '8 rue des tilleul', 32000, 'Auch', 'Femme', '1960-08-12', 'leabouvier@gmail.com', 'boubou32');

--- Ne pas mettre de colonne ID lorque que identity est utiliser. 

--- Drop table patient pour retirer les patients.  