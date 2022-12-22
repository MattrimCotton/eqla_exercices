CREATE DATABASE Exercice27;
USE Exercice27;
create table equipe(
IdEquipe int unsigned NOT NULL PRIMARY KEY auto_increment,
nomClub varchar(30) NOT NULL,
Localite varchar(30) NOT NULL,
division TINYINT unsigned NOT NULL);
create table joueur(
IdJoueur int unsigned NOT NULL PRIMARY KEY auto_increment,
Nom varchar(30) NOT NULL,
Prenom varchar(30) NOT NULL,
DateNaissance date NOT NULL,
IdEquipe int unsigned NOT NULL,
FOREIGN KEY (IdEquipe) references equipe(IdEquipe));