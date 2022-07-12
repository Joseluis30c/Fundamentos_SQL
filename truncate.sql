--Truncate

--Al utilizar truncate table se borrar todos los registros de una tabla y 
--al ingresar un nuevo registro el campo identity se inicia nuevamente en 1
truncate table nombretable; -- reinicia el campo identity en 1
delete * from nombretable; -- no reinicia y continua el campo identity 
