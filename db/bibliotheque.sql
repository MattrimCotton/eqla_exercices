DROP DATABASE IF EXISTS biblio;
create database biblio;
USE biblio;

create table auteur(nom varchar(30) not null, prenom varchar(30) not null, datenaissance date not null, nationalite varchar(30) not null,  IdAuteur int not null PRIMARY KEY)\p;

create table theme(libele varchar(30) not null PRIMARY KEY)\p;

create table livre(titre varchar(30) not null, isbn varchar(20), langue varchar(8), datePublication date not null, nombrePages int not null, DateAchat date, IdLivre int not null PRIMARY KEY AUTO_INCREMENT,  NbExemplaires int not null,libeleTheme varchar(30) not null, IdAuteur int not null, FOREIGN KEY(IdAuteur) REFERENCES Auteur(IdAuteur), FOREIGN KEY(libeleTheme) REFERENCES Theme(libele))\p;
create table lecteur(nom varchar(30) not null, prenom varchar(30) not null, IdLecteur int not null PRIMARY KEY AUTO_INCREMENT)\p;
create table emprunt(datedebut date, datefin date, rendu boolean, IdEmprunt int not null PRIMARY KEY, IdLecteur int NOT NULL, IdLivre INT NOT NULL, FOREIGN KEY (IdLecteur) REFERENCES Lecteur(IdLecteur), FOREIGN KEY (IdLivre) REFERENCES Livre(IdLivre))\p;

/**
* Insertion d'auteurs
* Les Dates sont souvent fictives!
*/
insert into auteur(nom, prenom, datenaissance, nationalite, IdAuteur) VALUES('Boterro', 'Pierre', '1984-02-13', 'Français', 1)\p;
insert into auteur(nom, prenom, datenaissance, nationalite, IdAuteur) VALUES('Sanderson', 'Brandon', '1975-12-19', 'américain', 2)\p;
insert into auteur(nom, prenom, datenaissance, nationalite, IdAuteur) VALUES('Lee', 'Child', '1960-03-07', 'américain', 3)\p;
insert into auteur(nom, prenom, datenaissance, nationalite, IdAuteur) VALUES('Crichton', 'Michael', '1975-05-01', 'américain',4)\p;
insert into auteur(nom, prenom, datenaissance, nationalite, IdAuteur) VALUES('Patterson', 'James', '1969-12-06', 'américain', 5)\p;
/**
* Insertion des thèmes;
*/
insert into theme(libele) VALUES('roman')\p;
insert into theme(libele) VALUEs('programmation')\p;
insert into theme(libele) VALUEs ('fantasy')\p;
insert into theme(libele) VALUES('science-fiction')\p;
insert into theme(libele) VALUES('policier')\p;
insert into theme(libele) VALUES('thriller')\p;
/**	
* Ajout des livres
*/
--
 insert into livre(titre, isbn, langue, datePublication, nombrePages, NbExemplaires, DateAchat, libeleTheme, IdAuteur) VALUES('Jurasic Park', 'isbn12-13-12', 'fr', '1981-12-11', 471, 123, '1999-12-14', 'roman', 4)\p;
 
 insert into livre(titre, isbn, langue, datePublication, nombrePages, NbExemplaires, DateAchat, libeleTheme, IdAuteur) VALUES ('Elantris', 'isbn 15-28-269-30', 'fr', '1990-11-30', 489, 123, '2008-08-22', 'fantasy', 2)\p;
 insert into livre(titre, isbn, langue, datePublication, nombrePages, NbExemplaires, DateAchat, libeleTheme, IdAuteur) VALUES('Soufle le vent', 'isbn 22-59-27-99', 'fr', '2007-11-18', 672, 22, '2017-07-18', 'science-fiction', 5)\p;
 
-- Ajout de lecteurs

insert into lecteur(nom, prenom) VALUES ('Dehoust', 'David')\p;
insert into lecteur(nom, prenom) VALUES ('Fagnard', 'Jules')\p;
insert into lecteur(nom, prenom) VALUES ('Desomer', 'Géraldine')\p;

-- Insertion de données dans la table emprunt
insert into emprunt(datedebut, datefin, rendu, IdEmprunt, IdLecteur, IdLivre) VALUES ('2015-11-21', '2016-01-21', true, 1, 1, 1)\p;

insert into emprunt(datedebut, datefin, rendu, IdEmprunt, IdLecteur, IdLivre) VALUES ('2004-04-03', NULL, false, 2, 2, 3)\p;

insert into emprunt(datedebut, datefin, rendu, IdEmprunt, IdLecteur, IdLivre) VALUES ('2006-05-03', NULL, false, 3, 2, 2)\p;