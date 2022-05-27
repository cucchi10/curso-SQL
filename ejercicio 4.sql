create database garbarino;

use garbarino;

create table electro(
cod int primary key,
producto varchar(20),
precio int not null);

insert into electro values
(021 , "heladera" , 54000),
(903 , "licuadora" , 8700),
(808 , "cocina" , 32000),
(721 , "lavarrpas" , 60200);

create table compu(
cod int primary key,
producto varchar(20),
precio int not null);

insert into compu values
(404 , "notebook" , 180000),
(410 , "tables" , 27000),
(458 , "smartphone" , 43000),
(440 , "pc" , 75000),
(430 , "smarttv" , 78000);


insert into electro values
(530, "secarropas", 47000);

UPDATE electro SET producto="lavarropas" WHERE producto="lavarrpas" ;

ALTER TABLE compu DROP cod;

ALTER TABLE compu ADD
( estado tinyint COMMENT "0. Malo - 1. Bueno" default 1,
marca varchar(25) default "Sin Marca");

ALTER TABLE electro RENAME TO electrodomesticos;

ALTER TABLE electrodomesticos RENAME COLUMN precio TO valor;

ALTER TABLE compu RENAME COLUMN precio TO valor;

ALTER TABLE electrodomesticos MODIFY valor DOUBLE(10,2);

ALTER TABLE compu MODIFY valor DOUBLE(10,2);

INSERT INTO electrodomesticos VALUES
(550 , "minipimer" , 9000.00),
(4860 , "afilador" , 1000.00);

INSERT INTO compu VALUES
("proyector" , 90000.00, 1, "Samgung"),
("teclado" , 500.00, 1, "Logitech");

DELETE FROM electrodomesticos WHERE producto like "s%";

DELETE FROM compu WHERE producto like "s%";

SELECT * FROM electrodomesticos where valor>50000;
SELECT * FROM compu where valor>50000;