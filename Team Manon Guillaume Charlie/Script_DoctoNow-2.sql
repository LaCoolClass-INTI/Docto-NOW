create table PATIENTS(
id_patients int identity primary key,
nom_usage varchar(20) not null,
nom_naissance varchar(20) not null,
prenom varchar(20) not null,
rue varchar(40),
ville varchar(20),
code_postal int,
sexe varchar(10),
check (sexe in ('Féminin', 'Masculin')),
date_naissance date,
email varchar(40) unique,
)

create table DIPLOMES_DOCTEURS(
id_patients int identity primary key,
généraliste varchar(30),
pediatre varchar(30),
cardiologue varchar(30),
dermathologue varchar(30),
)