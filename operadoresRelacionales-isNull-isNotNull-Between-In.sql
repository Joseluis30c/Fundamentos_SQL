--OPERADORES RELACIONALES ---
--is null - is not null

--listar los registros donde el campo editorial tenga valores null
select * from libros where editorial is null;

--listar los registros donde el campo editorial NO tenga valores null
select * from libros where editorial is not null;

--between significa entre
--mostrar los libros con precio >=20 y <=40 
select * from libros where precio>=20 and precio<=40;

--SE PUEDE SIMPLIFICAR LA CONDICION CON EL OPERADOR BETWEEN
select * from libros where precio between 20 and 40; --si el campo (precio) esta ENTRE los valores minimo(20) y maximo(40) respectivamente

-- not between
select * from libros where precio not between 20 and 35; --muestra los libros que NO se encuentre ENTRE 20 y 35


--IN 

--Antes para recuperar los libros cuyo autor sea Jose o Luis se usaba 2 condiciones
select * from libros where autor='Jose' or autor='Luis';

--Se puede simplicar con el operador in
select * from libros where autor in ('Jose','Luis');

--Para recupera cuyo auntor no sea Jose ni Luis se usaba <>
select * from libros where autor<>Jose and autor<>Luis

--Se puede usar in con not
select * from libros where not in ('Jose','Luis');
