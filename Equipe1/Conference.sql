Create table Conference (idconf int not null identity,
							titre varchar(255) not null,
							dateconf date not null, 
							dateconfend date not null,
							heuredebut time(0) not null,
							heurefin time(0) not null,
							lieu varchar(50) not null,
							adresse varchar(50) not null,
							code int not null,
							ville varchar(50) not null,
							primary key (idconf),
							);
							
							
INSERT INTO Conference (titre, dateconf, dateconfend, heuredebut, heurefin, lieu, adresse, code, ville)
Values ('Big Internationnal Best Medical Conference', '2021-05-14', '2021-05-14', '07:30:00', '23:59:59', 'Salle des fetes', 'Impasse des de la petite huitre', 33120, 'Archachon'), 
('Comment ne pas tuer ses patients', '2022-03-04', '2021-03-08', '09:30:00', '17:30:00', 'Salle des survivants', '15 rue de la morgue', 75019, 'Paris'), 
('Comment facturer ses clients au max', '2024-08-12', '2024-08-15', '09:00:00', '19:00:00', 'Salle Hercule', '22 ruede la tune', 13000, 'Marseille');

