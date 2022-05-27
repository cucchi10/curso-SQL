create database musica;

create table nacionales(
titulo varchar(20),
banda varchar(10),
año int,
idioma enum("ES" , "IN" , "OTRO") default "ES"
);

create table internacionales(
titulo varchar(20),
banda varchar(10),
año int,
idioma enum("ES" , "IN" , "OTRO")
);

insert into nacionales (titulo , banda , año) values
("La Balsa" , "Los Gatos" , 1960),
("Muchacha" , "Almendra" , 1972),
("El estudiante" , "Los Twist" , 1980),
("El arriero" , "Divididos" , 1994),
("Los piojos" , "Ruleta" , 2001);

insert into internacionales  values
("Yesterday" , "Beatles" , 1969 , "IN"),
("Blowing in the wind" , "Bob Dylan" , 1977 , "IN"),
("La isla Bonita" , "Madonna" , 1982 , "ES"),
("Dont Cry" , "Guns" , 1992 , "IN"),
("Opel Gang" , "DTH" , 2000 , "OTRO");

create table estilos(
banda varchar(10),
estilo enum("Rock" , "punk" , "pop" , "Hard" , "folk")
);

insert into estilos values
("Los Gatos" , "Rock"),
("Almendra" , "Rock"),
("Los Twist" , "Rock"),
("Divididos" , "Hard"),
("Ruleta" , "Rock"),
("Beatles" , "Rock"),
("Bob Dylan" , "Rock"),
("Madonna" , "pop"),
("Guns" , "Hard"),
("DTH" , "punk");

create table discograficas(
estilo varchar(10),
discografica varchar(10)
);

insert into discograficas values
("rock" , "Sony"),
("hard" , "Sony"),
("pop" , "warner"),
("punk" , "columbia"),
("folk" , "BGA");


use musica;

select * from internacionales where idioma <> "IN";

select banda, titulo from nacionales
union
select banda, titulo from internacionales;

select banda, año from nacionales where año > 1990
union
select banda, año from internacionales where año > 1990;

select nacionales.banda, estilo
from nacionales JOIN estilos
on nacionales.banda = estilos.banda
union
select internacionales.banda, estilo
from internacionales JOIN estilos
on internacionales.banda = estilos.banda;

select internacionales.banda, estilos.estilo
from internacionales JOIN estilos
on internacionales.banda = estilos.banda
right join discograficas
on discograficas.estilo = estilos.estilo;

select estilos.banda, estilos.estilo, discograficas.discografica
from estilos join discograficas
on estilos.estilo = discograficas.estilo
join internacionales
on internacionales.banda = estilos.banda;


select  nacionales.banda, discograficas.estilo, discograficas.discografica
from nacionales join estilos
on nacionales.banda = estilos.banda
right join discograficas
on discograficas.estilo = estilos.estilo;


