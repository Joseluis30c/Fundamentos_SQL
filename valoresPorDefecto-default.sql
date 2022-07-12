--VALORES POR DEFECTO (default)
if object_id('libros') is not null
	drop table libros;

create table libros(
codigo int identity,
titulo varchar(30),
autor varchar(40) not null default 'Desconocido',
editorial varchar(20),
precio decimal(5,2),
cantidad tinyint default 0
);

go

--Insertar registro omitiendo los valores para el campo autor y cantidad
insert into libros(titulo,editorial,precio)values('Java','Paldos',50.40);
select * from libros; --1 Java Desconocido Paldos 50.40 0

--Si ingresamos un registro sin valor al campo precio se ingresara NULL
insert into libros(titulo,editorial)values('PHP','Siglo');
select * from libros; -- 2 PHP Desconocido Siglo NULL 0

--Como todo los campos tienen valores predeterminados podemos insertar
insert into libros default values;
select * from libros; -- 3 NULL Desconocido NULL NULL 0