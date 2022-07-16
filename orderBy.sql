----ORDER BY -----
--sintaxis
select * from nombretabla order by campo;

-------EJEMPLOS----------
--listar tabla libros ordenados por el titulo
select * from libros order by titulo;

--Ordenar por precio
select titulo,autor,precio from libros order by 3; --se puede ordenar por la posicion del select

--ordenar de mayor a menor
select * from libros order by editorial desc;

--ordenar por varios campos
select * from libros order by titulo,editorial;

-ordenar en distintos sentidos
select * from libros order by titulo asc, editorial desc;

--ordenar por un campo que no esta en el select
select titulo, autor from libros order by precio;

--ordenar por un valor calculado
select titulo, autor, precio+(precio*0.1) as 'Precio con desc.' from libros order by 4;
