create table PATIENT (
	ID varchar(255) not null,
	nom varchar (255) not null,
	prenom varchar (255) not null,
	sexe varchar (255) not null,
	datedenaissance date not null,
	adresse varchar (255) not null,
	CP int not null,
	ville varchar (250) not null,
	mail varchar (250) not null,
	Mdp varchar (255) not null,
	primary key (ID),
	check (sexe in ('H', 'F')),
	);

insert into PATIENT values (1, 'n1','p1','H','2000-01-01','ad1','75001','paris','m1','mdp1')
insert into PATIENT values (2, 'n2','p2','F','2000-01-02','ad2','70010','paris','m2','mdp2')
insert into PATIENT values (3, 'n1','p3','H','2000-01-03','ad1','75001','paris','m3','mdp3')
insert into PATIENT values (4, 'n3','p2','F','2000-01-04','ad3','75019','paris','m4','mdp4')
insert into PATIENT values (5, 'n4','p4','H','2000-01-05','ad2','13001','marseille','m5','mdp5')

CREATE TABLE MEDECIN(
	id_medecin int,
	primary key (id_medecin),
	civilite varchar(5) CHECK (civilite in ('Mme', 'M')),
	prenom varchar (20),
	nom varchar (20),
	Date_naissance date,
	Lieu_naissance varchar(20),
);
insert into MEDECIN values (1, 'Mme','Alexandra','DAda','1977-04-04','Harfleur')
insert into MEDECIN values (2, 'M','pn2','n2','1977-04-05','ln2')
insert into MEDECIN values (3, 'M','pn3','n3','1977-04-06','ln3')
insert into MEDECIN values (4, 'M','pn4','n4','1977-04-07','ln4')

CREATE TABLE DIPLOME(
	id_diplome int,
	primary key (id_diplome),
	intitule varchar(50),
	specialite varchar(30),
	pays varchar(30),
	numdiplome varchar(30) not null,
	universite varchar(20),
	date_validite date,
	date_obtention_diplome date,
	pdf varchar(250),
	id_medecin int not null,
	FOREIGN KEY (id_medecin) REFERENCES MEDECIN(id_medecin),
);

insert into DIPLOME values (1, 'diplôme d Etat de docteur en médecine','généraliste','France','PARV 8812469','Paris 5','2009-02-02', '2039-02-02', 'dada.pdf', 1)
insert into DIPLOME values (2, 'diplôme d Etat de docteur en médecine','généraliste','France','n2','Paris 5','2009-02-03', '2039-02-03', 'n2', 2)
insert into DIPLOME values (3, 'diplôme d Etat de docteur en médecine','généraliste','France','n3','Paris 10','2009-02-04', '2039-02-04', 'n3', 3)
insert into DIPLOME values (4, 'diplôme de pédiatrie','pédiatre','France','n4','Marseille','2009-02-05', '2039-02-05', 'n5', 1)
insert into DIPLOME values (5, 'dîplome de dermatologie','dermatologue','Angleterre','n5','Londres','2009-02-06', '2039-02-06', 'n6', 4)

CREATE TABLE CONFERENCE(
	id_conference int IDENTITY PRIMARY KEY,
	titre varchar(50),
	date_debut date,
	date_fin date,
	heure_debut int,
	heure_fin int,
	id_lieu int not null,
	FOREIGN KEY(id_lieu) REFERENCES LIEU(id_lieu)
);
insert into CONFERENCE values ('covid-19-saison-1','2020-06-01','2020-06-02',18,21)
insert into CONFERENCE values ('covid 19 saison 1','2020-06-05','2020-06-06',18,21)
insert into CONFERENCE values ('covid 19 saison 2','2020-06-08','2020-06-09',18,21)
select * from CONFERENCE


CREATE TABLE LIEU (
	id_lieu int,
	primary key (id_lieu),
	lieu varchar(30),
	rue varchar(30) NOT NULL,
	cp int NOT NULL,
	ville varchar(20) NOT NULL,
);
insert into LIEU values (1,'université paris 1','ad1','275001','Paris')
insert into LIEU values (2,'IFLM','ad2','13000','Marseille')