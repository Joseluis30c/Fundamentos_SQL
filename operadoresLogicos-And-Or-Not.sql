---OPERADORES LOGICOS AND OR NOT---------

--AND ambas condiciones deben cumplirse
select * from libros where (autor='Jose')and(precio<=20);

--OR cualquiera de las condiciones se debe cumplir
select * from libros where autor='Jose' or editorial='Planeta';

--NOT no cumpla la condicion dada
select * from libros where not editorial='Planeta';

--Combinar operadores
select * from libros where (autor='Jose') or (editorial='Panda' and precio<20);

select * from libros where (autor='Jose' or editorial='Panda') and (precio<20);