--Actualizar registros de una tabla - Set
if object_id('usuarios') is not null
	drop table usuarios;
create table usuarios(
nombre varchar(20),
clave varchar(10)
);
go

insert into usuarios(nombre,clave)values('Jose','123');
insert into usuarios(nombre,clave)values('imanol','emple');
insert into usuarios(nombre,clave)values('rosa','jefe');
insert into usuarios(nombre,clave)values('Syl','vendedor');

select * from usuarios;

update usuarios set clave='hola'; --cambiar la clave de todos los registros a 'hola'

update usuarios set clave='boca' where nombre='Jose'; --Cambiar la clave a boca de todos los registros que tengan de nombre Jose

update usuario set nombre='emple', clave='emple' where nombre='imanol'; --Cambiar el nombre y clave de los registros con nombre imanol
