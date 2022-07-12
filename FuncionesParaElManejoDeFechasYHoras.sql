--FUNCIONES PARA EL MANEJO DE FECHAS Y HORAS
/*
getdate(): retorna la fecha y hora actual
*/
select getdate();

/*
datepart(partedefecha,fecha): retorna la parte especifica de una fecha, el año
trimestre, dia,hora,etc.
year - año
quarter - cuarto
month - mes
day - dia
week - semana
hour - hora
minute - minuto
second - segundo
milisecond - milisegundo
*/

select datepart(month.getdate()); -- retorna el numero del mes
select datepart(day.getdate()); -- retorna el dia actual
select datepart(hour.getdate()); -- retorna la hora actual

/*
datename(partedefecha,fecha): retorna el nombre especifico de una fecha
*/

select datename(month.getdate()); -- retorna el nombre del mes actual

/*
dateadd(partedefecha,numero,fecha): agrega un intervalo a la fecha especificada
*/

set dateformat ymd;
select dateadd(day,3,'1980/11/02'); -- 1980/11/05, agrega 3 dias
select dateadd(month,3,'1980/02/02'); -- 1980/05/02, agrega 3 meses
select dateadd(hour,2,'1980/11/02'); -- 1980/05/02 02:00:00, agrega 2 horas
select dateadd(minute,16,'1980/11/02'); --1980/05/02 00:16:00, agrega 16 minutos

/*
datediff(partedefecha,fecha,fecha2): calcula el intervalo de tiempo entre las 2 fechas
*/

set dateformat ymd;
select datediff(day,'2005/10/28','2006/10/28'); -- 365
select datediff(month,'2005/10/28','2006/11/29'); -- 13


-- day(fecha): retorna el dia de la fecha especificada
select day(getdate()); -- dia actual

--month(fecha): retorna el mes de la fecha especificada
select month(getdate()); -- mes actual 

--year(fecha): retorna el año de la fecha especificada
select year(getdate()); -- año actual


--------EJEMPLO-----------

--Trabajamos con la tabla "libros" de una librería.
--Eliminamos la tabla si existe:

 if object_id ('libros') is not null
  drop table libros;
--Creamos la tabla:

 create table libros(
  titulo varchar(40) not null,
  autor varchar(20) default 'Desconocido',
  editorial varchar(20),
  edicion datetime,
  precio decimal(6,2)
 );
--Ingresamos algunos registros:

 insert into libros 
  values('El aleph','Borges','Emece','1980/10/10',25.33);
 insert into libros 
  values('Java en 10 minutos','Mario Molina','Siglo XXI','2000/05/05',50.65);
 insert into libros 
  values('Alicia en el pais de las maravillas','Lewis Carroll','Emece','2000/08/09',19.95);
 insert into libros 
  values('Aprenda PHP','Mario Molina','Siglo XXI','2000/02/04',45);

--Mostramos el título del libro y el año de edición:

 select titulo, datepart (year,edicion) from libros;

--Mostramos el título del libro y el nombre del mes de edición:

 select titulo, datename (month,edicion) from libros;

--Mostramos el título del libro y los años que tienen de editados:

 select titulo, datediff(year,edicion,getdate()) from libros;

--Muestre los títulos de los libros que se editaron el día 9, de cualquier mes de cualquier año:

 select titulo from libros
  where datepart(day,edicion)=9; 