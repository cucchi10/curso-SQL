CREATE DATABASE Escuela;
USE Escuela;

CREATE TABLE materias(
codigo INT PRIMARY KEY,
materia varchar(50) NOT NULL,
docente varchar(20),
carga_horaria INT
);

CREATE TABLE alumnos(
orden INT AUTO_INCREMENT PRIMARY KEY,
apellido varchar(20),
promedio INT
);

INSERT INTO materias VALUES
(23,"lengua","lopez",4),
(34,"matemática","gimenez",6),
(98,"física","juarez",4),
(76,"historia","fernández",4),
(93,"química","juarez",2),
(66,"geogrfía","fernández",2),
(12,"arte","peñalba",4),
(55,"gimnasia","antúnez",4),
(36,"biología","gonzález",3);

INSERT INTO alumnos (apellido, promedio) VALUES
("fernández",8),
("silva",5),
("derecho",8),
("saletes",7),
("martinez",3),
("gonzález",8),
("casimiro",6),
("martinez",4),
("soria",10),
("alvarez",7);

USE Escuela;
SELECT * FROM alumnos;
SELECT * FROM alumnos WHERE apellido = "martinez";

SELECT materia FROM materias WHERE carga_horaria = 2 OR carga_horaria = 4;

SELECT * FROM alumnos WHERE promedio >= 7;
SELECT * FROM alumnos WHERE apellido LIKE "%ez";
