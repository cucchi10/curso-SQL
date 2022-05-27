CREATE DATABASE fab_lab;
USE fab_lab;

CREATE TABLE alumnos(
dni INT PRIMARY KEY,
nombre VARCHAR(15) NOT NULL,
apellido VARCHAR(20) NOT NULL,
edad VARCHAR(3),
partido VARCHAR(30) DEFAULT "Vicente Lopez");


CREATE TABLE docentes (
legajo INT PRIMARY KEY,
nombre VARCHAR(15) NOT NULL,
apellido VARCHAR(20) NOT NULL,
curos VARCHAR(50) DEFAULT "Sin Curso Asignado");

CREATE DATABASE esecuele;
USE esecuele;

CREATE TABLE tabla_esecuele(
alumno TEXT NOT NULL,
genero ENUM("No Definido", "Masculino", "Femenino") DEFAULT "No Definido",
condificion TINYINT COMMENT "0. Desaprobado - 1. Aprobado" DEFAULT 0);

USE fab_lab;
DROP TABLE docentes;

USE fab_lab;
SHOW TABLES;
DESCRIBE alumnos;

SHOW DATABASES;