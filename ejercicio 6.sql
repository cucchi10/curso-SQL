CREATE DATABASE Todo_Moda;
USE Todo_Moda;

CREATE TABLE modita (
producto varchar(20),
stock int,
precio int,
categoria varchar(30)
);

INSERT INTO modita VALUES
("anillo" , 21 , 230 , "accesorio"),
("pañuelo" , 16 , 1200 , "ropa"),
("rush" , 46 , 315 , "makeup"),
("pulsera" , 44 , 210 , "accesorio"),
("agenda" , 12 , 2300 , "libreria"),
("gorro" , 12 , 1490 , "ropa"),
("aro" , 20 , 180 , "accesorio"),
("anteojos" , 6 , 1500 , "accesorio"),  
("delineador" , 4 , 210 , "makeup"),
("dije" , 21 , 200 , "accesorio"),
("resaltador" , 10 , 300 , "libreria"),
("lapicera" , 1 , 140 , "libreria"),
("cartera" , 2 , 3600 , "accesorio");

SELECT AVG (precio) FROM modita;

SELECT sum(precio) FROM modita;

SELECT producto FROM modita WHERE precio > (SELECT AVG (precio) as promedio FROM modita);

SELECT categoria, COUNT(producto) FROM modita group by categoria;

SELECT producto FROM modita WHERE stock = (SELECT MAX(stock) FROM modita) or stock =(SELECT MIN(stock) FROM modita);

CREATE TABLE encargado (
empleado varchar(50),
categoria varchar(30)
);

INSERT INTO encargado VALUES
("Juan Perez", "accesorio"),
("Pablo Marmol","ropa"),
("Pedro Picapiedras","makeup"),
("Jose Rodriguez","libreria");

SELECT modita.producto, modita.categoria, encargado.empleado
from modita join encargado
on modita.categoria = encargado.categoria
where precio <> (SELECT MAX(precio) from modita);



