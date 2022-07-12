--Ver estructura de una tabla
exec sp_columns nombretabla;

--Borrar tabla
drop table nombretabla;

--Borrar registros de una tabla
delete * from nombretabla;

--Borrar registros con where
delete * from nombretable where campotabla='datoregistro';

--Ver tablas existentes
exec sp_tables @table_owner='dbo';

--si existe una tabla que lo elimine
if object_id('nombretabla') is not null
  drop table nombretabla;
