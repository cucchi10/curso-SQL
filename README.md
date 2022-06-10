------------------------------------------------------------------------------
Ejercicio 1

1. Crear una base de datos llamada FAB LAB.
2. Crear en ella una tabla llamada ALUMNOS que contenga los campos APELLIDO, DNI, EDAD y PARTIDO.
3. Crear otra tabla en la misma bbdd que se llame DOCENTES que contenga APELLIDO, CURSO y LEGAJO.
4. Crear una segunda base de datos llamada BASE que contenga una tabla con los campos ALUMNO, GENERO y CONDICIÓN (la condición podrá ser aprobado o no aprobado).
5. Borrar la tabla docentes de la primer base de datos.
6. Borrar la bbdd BASE
7. Mostrar todas las tablas de la base de datos.
8. Mostrar la descripción de cada una de ellas.
9. Mostrar todas las bases de datos.


IMPORTANTE: Seleccionar con criterio el tipo de dato para cada campo y sus atributos. Se debe entregar el archivo SQL con todas las instrucciones. Ejecutar línea por línea

------------------------------------------------------------------------------
Ejercicio 2

1. Crear una base de datos llamada futbolistas.
2. Crear en dicha bbdd las tablas argentinos, internacionales y goleadores como lo indica el pfd adjunto. Definir con criterio los tipos de campo y atributos.
3. Ver la descripción de cada una de las tablas para verificar que los campos estén correctos.
4. Realizar en cada tabla la inserción de datos para que las mismas queden conformadas como lo muestra el archivo adjunto.
5. Mostrar todos los campos de cada una de las tablas para verificar que la inserción de datos es correcta.
7. Mostrar de la tabla argentinos todos los apellidos y posiciones.
8. De la tabla internacionales mostrar solo los apellidos.
9. Mostrar de la tabla goleadores los apellidos y goles de los máximos 5 goleadores.

------------------------------------------------------------------------------
Ejercicio 3

Ejercicio 3 - Selección de datos
1. Crear una base de datos llamada Escuela.
2. En ella crear do tablas, una llamada materias y otra alumnos.
3. La primera deberá contener los campos código, materia, docente y carga horaria. La segunda los campos orden, apellido y promedio.
4. Insertar en la tabla materias los siguientes datos:
(23,"lengua","lopez",4),
(34,"matemática","gimenez",6),
(98,"física","juarez",4),
(76,"historia","fernández",4),
(93,"química","juarez",2),
(66,"geogrfía","fernández",2),
(12,"arte","peñalba",4),
(55,"gimnasia","antúnez",4),
(36,"biología","gonzález",3)
5. Insertar en la tabla alumnos los siguientes datos:
(1,"fernández",8),
(2,"silva",5),
(3,"derecho",8),
(4,"saletes"7),
(5,"martinez",3),
(6,"gonzález",8),
(7,"casimiro",6),
(8,"martinez",4),
(9,"soria",10),
(10,"alvarez",7)
6. Seleccionar todos lo datos de la tabla alumnos.
7. Seleccionar todos los dato de los alumnos que se apelliden martinez.
8. Seleccionar todas las materias que tengan una carga horaria de 4 o 2 horas.
9. Seleccionar los apellidos de los alumnos que estén aprobados.
10. Seleccionar todos los alumnos cuyo apellido termine en "ez"

------------------------------------------------------------------------------

Ejercicio 4

Crear una base de datos  con las siguientes tablas y registros:

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


1. Insertar un registro más en la tabla electro con un secarropas cuyo código es 530 y su precio es de 47000.
2. Corregir el nombre del producto lavarrpas por lavarropas.
3. Eliminar el campo cod de la tabla compu y agregar uno llamado estado que admita "bueno" o "malo" como dato y otro campo llamado marca.
4. Cambiar el nombre de la tabla electro por electrodomesticos.
5. Cambiar el nombre del campo precio por valor en ambas tablas y que admita valores con decimales.
6. Insertar dos registro nuevos en cada una de las tablas (con todos los datos posibles) y eliminar todo registro cuyo producto comience con la letra S.
7. Mostrar todos los productos de a base de datos cuyo precio se mayor a 50000.
------------------------------------------------------------------------------

Ejercicio 5

1. Abrir el script Ejercicio Unions y Joins.sql y ejecutarlo para la creación de la bbss, las tablas y la inserción de datos.
2. Seleccionar todos los campos de la lista internacionales cuyo idioma es distinto al inglés.
3.Mostrar la banda y el tema de la tabla internacionales y nacionales juntos.
4. Seleccionar la banda y el año de todos los registros de ambas tablas editados después de 1990.
5. Mostrar las bandas de la tabla nacionales con sus respectivos estilos musicales.
6. Seleccionar la banda, el año y el estilo de todos los temas de la base de datos.
7. Mostrar las bandas internacionales con su respectivo estilo y discográfica.
8. Mostrar las bandas, sus estilos y discográficas de la tabla nacionales incluyendo los estilos que no pertenecen a la misma.

------------------------------------------------------------------------------

Ejercicio 6

1. Crear una base de datos llamada Todo_Moda. En ella crear una tabla que incluya lo campos producto, stock, precio y categoría.
2. Insertar en la tabla los siguientes datos:
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

3. Obtener el promedio de precio de todos los productos de la categoría ropa.
4. Mostrar el costo total de todos los productos de la tabla.
5. Seleccionar los productos cuyo precio sea mayor al promedio de precios general.
6. Mostrar la cantidad de productos en cada una de las categorías
7.Mostrar los productos con mayor y menor stock de la tabla.
8. Agregar una segunda tabla llamada encargados con los campos empleado y categoría.
9. Ingresar un encargado a cada una de las categorías.
10. Mostrar el producto, su categoría y el encargado de todos los productos menos aquel que tenga el mayor precio.

------------------------------------------------------------------------------
