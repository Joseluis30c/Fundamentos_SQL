--Operadores Aritmeticos y de Concatenacion
if object_id('libros') is not null
	drop table libros;

create table libros(
codigo int identity,
titulo varchar(40) not null,
autor varchar(40) default 'Desconocido',
editorial varchar(20),
precio decimal(6,2),
cantidad tinyint default 0,
primary key (codigo)
);

go

insert into libros(titulo,autor,editorial,precio)values('Java','Comin','Siglo',50.40,100);

select* from libros;

--Queremos saber el monto total 
select titulo,precio,cantidad,precio*cantidad from libros; --1 Java 50.40 100 5040.00

--Conocer el precio con un descuento del 10%
select titulo, precio, precio-(precio*0.1) from libros; -- 1 Java 50.40 43.360

--Actualizar los precios con un 10% de descuento
update libros set precio=precio-(precio*0.1);

--Concatenar campo titulo autor editorial en un solo campo
select titulo+'-'+autor+'-'+editorial from libros; --1 Java-Comin-Siglo


