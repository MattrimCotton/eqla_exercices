CREATE DATABASE Exercice26;
USE Exercice26;
create table equipe(
IdEquipe int unsigned NOT NULL PRIMARY KEY auto_increment,
  nomClub varchar(30) NOT NULL,
  Localite varchar(30) NOT NULL,
  division TINYINT unsigned NOT NULL
);