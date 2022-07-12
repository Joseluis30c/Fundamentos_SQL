--Funciones para el manejo de cadenas
/*
substring(cadena,inicio,longitud): devuelve una parte de la cadena especificada
como primer argumento, empezando desde la posicion especificada por el segundo 
argumento y de tantos caracteres de longitud como indica el  tercer argumento
*/

select substring('Buenas tardes',8,6); -- tardes

/*
str(numero,longitud,cantidaddedecimales): convierte numeros a caracteres, el
primer argumento indica el valor numerico a convertir, el segundo la longitud
(debe ser mayor o igual a la parte entera del numero), y el tercer, la cantidad
de decimales.
el segundo y tercer argumento son opcionales y deben ser positivos.
*/

select str(123.456,7,3); -- 123.456
select str(-123.456,7,3); -- -123.46 los signos cuentan como un espacio mas

--si no colocamos argumentos 2 y 3
select str(123.456); -- 123 - la longitud predeterminada es 10 y cantidaddecimales es 0

--colocando el segundo argumento
select str(123.456,3); -- 123

--Si el segundo parametro  es menor a la parte entera del numero, devuleve *
select str(123.456,2,3); -- **

/*
stuff(cadena,inicio,cantidad,cadena2): inserta la cadena2 en la posicion indicada en el 2do argumento
reemplazando la cantidad de caracteres indicada por el 3er argumento en la cadena del 1er argumento
stuff significa rellenar
*/

select stuff('abcde',3,2,'opqrs'); --abopqrse Coloca en la 2da posicion la cadena opqrs 
--y reemplaza 2 caracteres de la primera cadena

--Los argumentos numericos deben ser menor o igual a la longitud de la primera cadena caso contrario retorna null
--Si el 3er argumento es mayor que la primera cadena, se eliminara hasta el primer caracter

/*
len(cadena): retorna la longitud de una cadena
*/

select len('Hola'); -- 4

/*
char(x): retorna un caracter en codigo ASCII del entero enviado como argumento
*/

select char(65); -- A

/*
left(cadena,longitud): retorna la cantidad de caracteres comenzando desde la izquierda
*/

select left('buenos dias',8); -- buenos d

/*
right(cadena,longitud): retorna la cantidad de caracteres comenzando desde la derecha
*/

select right('buenos dias',8); --nos dias

/*
lower(cadena): retorna la cadena con todo los caracteres en minuscula
*/

select lower('HOLA ESTUDIAnte'); --hola estudiante

/*
upper(cadena): retorna la cadena con todo sus caracteres en mayuscula
*/ 

select upper('HOLA ESTUDIAnte'); --HOLA ESTUDIANTES

/*
ltrim(cadena): elimina los espacios vacios de la izquierda eliminandolas 
*/

select ltrim('	Hola	'); 	--Hola	;

/*
rtrim(cadena): elimina los espacios vacios de la derecha eliminandolas
*/

select rtrim('	Hola	'); --	Hola;

/*
replace(cadena,cadenareemplazo,cadenareemplazar): 
*/
-- 2do argumento -selecciona el caracter que quieres reemplazar del 1er argumento
--3er argumento - escoge por cual cadena reemplazar por el 2do argumento

select replace('xxx.replace.com','x','w'); --www.replace.com

/*
reverse(cadena): devuelve la cadena inviertiendo el order de los caracteres
*/

select reverse('Hola'); --aloH

/*
patindex(patron,cadena): devuelve la posicion de comienzo 1er argumento del patron,
especificado en la cadena 2do argumento. Si no lo encuentra devuelve 0 
*/

select patindex('%os%', 'Jose Luis Rivas'); -- 2

select patindex('%ui%', 'Jose Luis Rivas'); -- 7

/*
charindex(subcadena,cadena,inicio): Devuelve la posicion donde comienza la subcadena
en la cadena, comenzando la busqueda desde la  posicion indicada por inicio.
Si no se coloca el 3 argumento, la busqueda inicia desde 0.
*/

select charindex('or','Jorge Luis Borges',5); -- 13 

select charindex('or', 'Jorge Luis Borges'); -- 2

select charindex('or', 'Jorge Luis Borges',14); -- 0

/*
replicate(cadena,cantidad): repite una cadena la cantidad de veces especificanda
*/

select replicate('Hola',3); --HolaHolaHola


-----------------EJEMPLO CON TABLAS -------------------------

--Trabajamos con la tabla "libros" de una librería.
--Eliminamos la tabla si existe:

 if object_id ('libros') is not null
  drop table libros;
--Creamos la tabla:

 create table libros(
  codigo int identity,
  titulo varchar(40) not null,
  autor varchar(20) default 'Desconocido',
  editorial varchar(20),
  precio decimal(6,2),
  cantidad tinyint default 0,
  primary key (codigo)
 );
--Ingresamos algunos registros:

 insert into libros (titulo,autor,editorial,precio)
  values('El aleph','Borges','Emece',25);
 insert into libros
  values('Java en 10 minutos','Mario Molina','Siglo XXI',50.40,100);
 insert into libros (titulo,autor,editorial,precio,cantidad)
  values('Alicia en el pais de las maravillas','Lewis Carroll','Emece',15,50);

--Mostramos sólo los 12 primeros caracteres de los títulos de los libros y sus autores, empleando la función "substring()":

 select substring(titulo,1,12) as titulo
  from libros;

--Mostramos sólo los 12 primeros caracteres de los títulos de los libros y sus autores, ahora empleando la función "left()":

 select left(titulo,12) as titulo
  from libros;

--Mostramos los títulos de los libros y sus precios convirtiendo este último a cadena de caracteres con un solo decimal, empleando la función "str":

 select titulo,
  str(precio,6,1)
  from libros;

--Mostramos los títulos de los libros y sus precios convirtiendo este último a cadena de caracteres especificando un solo argumento:

 select titulo,
  str(precio)
  from libros;
--Se redondea a entero.

--Mostramos los títulos, autores y editoriales de todos libros, al último campo lo queremos en mayúsculas:

  select titulo, autor, upper(editorial)
   from libros;


