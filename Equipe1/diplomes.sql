Create table Diplome (iddip int not null identity,
						Nom varchar(255) not null, 
						Prenom varchar(255) not null,
						Nomdip varchar(255) not null, 
						datedip date not null, 
						universite varchar(255) not null, 
						primary key (iddip),
						check (Nomdip in ('Généraliste', 'Pédiatre', 'Dermotologue'))
						); 
						
INSERT INTO Diplome (Nom, Prenom, Nomdip, datedip, universite)
Values ('Mongéné', 'Marc', 'Généraliste', '2019-04-23', 'Sorbonne'), 
('Hamou', 'Laila', 'Généraliste', '1990-09-08', 'Paris 5'), 
('Dureigne', 'Serge', 'Généraliste', '2017-01-12', 'Paul Sabatier'), 
('Powel', 'Lydie', 'Pédiatre', '2003-12-23', 'Hopital'), 
('Bohbot', 'Isaac', 'Dermatologue', '2022-02-20', 'Universite des nouveaux medecins');
