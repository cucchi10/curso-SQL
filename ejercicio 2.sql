CREATE DATABASE futbolista;
USE futbolista;

CREATE TABLE nacionales(
orden INT AUTO_INCREMENT PRIMARY KEY ,
apellido VARCHAR(20) NOT NULL,
edad VARCHAR(3),
posicion ENUM("Arquero", "Defensor", "Volante", "Delantero"),
pais VARCHAR(30) DEFAULT "Argentina");

CREATE TABLE internacionales(
orden INT AUTO_INCREMENT PRIMARY KEY,
apellido VARCHAR(20) NOT NULL,
nacionalidad VARCHAR(30));

CREATE TABLE goleadores(
orden INT AUTO_INCREMENT PRIMARY KEY,
apellido VARCHAR(20) NOT NULL,
nacionalidad VARCHAR(30),
goles INT NOT NULL,
partidos INT);


INSERT INTO nacionales (apellido, edad, posicion) VALUES
("Fillol", 73, "Arquero"),
("Perfumo", null, "Defensor"),
("Sorin", 43, "Defensor"), 
("Zanetti", 49, "Defensor"), 
("Redondo", 54, "Volante"), 
("Pasarella", 75, "Defensor"),
("Caniggia", 60, "Defensor"), 
("Simeone", 53, "Volante"), 
("Batistuta", 56, "Delantero"),
("Maradona", null , "Volante"), 
("Messi", 37, "Delantero");

INSERT INTO internacionales (apellido, nacionalidad) VALUES
("Yashin", "URRSS"),
("Beckenbauer", "Aleman"),
("Maldini", "Italiano"),
("Cafu", "Brasilero"),
("Varela", "Uruguayo"),
("Matthaus", "Aleman"),
("Ronaldo", "Portugues"),
("Messi", "Argentino"),
("Ronaldo", "Brasilero"),
("Maradona", "Argentino"),
("Pele", "Brasilero");

INSERT INTO Goleadores (apellido, nacionalidad, goles, partidos) VALUES
("Klose", "Aleman", 16, 24),
("Ronaldo", "Brasilero", 15, 19),
("Muller", "Aleman", 14, 13),
("Fontaine", "Frances", 13, 6),
("Pele", "Brasilero", 12, 14),
("Klinsmann", "Aleman", 11, 17),
("Kocsis", "Hungaro", 11, 5),
("Rahn", "Aleman", 10, 10),
("Batistuta", "Argentino", 10, 12),
("Lineker", "Ingles", 10, 12);


USE futbolista;
SELECT * FROM nacionales;
SELECT * FROM internacionales;
SELECT * FROM goleadores;








