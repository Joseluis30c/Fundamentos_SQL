--USO DE IDENTITY
if object_id('libros') is not null
	drop table libros;

create table libros(
	codigo int identity(100,2), --comienze desde 100 y de 2 en 2 ej. 100,102,104...
	titulo varchar(20),
	autor varchar(30),
	precio float
);

insert into libros(titulo,autor,precio)values('el angel','nombre',20);
insert into libros(titulo,autor,precio)values('libro','autor',23);
insert into libros(titulo,autor,precio)values('el resplandor','quien coño sera',26);

select * from libros;

--Para saber el valor inicial del campo identity
select indent_seed('libros'); --100

--Para ingresar manualmente un valor en el campo identity
set identity_insert libros on;

--Ahora al insert sera obligatorio ingresar el campo identity, de lo contrario saldra error
insert into libros(codigo,titulo,autor)values(1,'Pinocho','quien chu sera');

--Para desactivar
set identity_insert libros off;


--Al activar identity_insert,manualmente se podría duplicar el campo identity con otro reegistro, cuidao con eso.
