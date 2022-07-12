--Tipos de datos(texto)
/*
varchar(x) - su rango va de 1-8000 caracteres, si no se especifica el rango pordefecto tiene valor 1
char(x) - su rango va de 1-8000 caracteres
text - su longitud va de 2000000000 caracteres
nvarchar(x)- es similar al varchar, excepto que permite caracteres Unicode, rango de 0 - 4000
nchar(x) - es similar al char, excepto que permite caracteres Unicode, rango es 0-4000, emplea 2 byte por caracter
ntext - es similar al text, excepto que permite caracteres Unicode, su longitud es 1000000000
*/

--Tipo de dato(numerico)
/*
Para almacenar valores ENTEROS.

Integer o int - su rango es -2000000000 a 2000000000 aprox.
subtipos de int:
	-smallint - hasta 5 digitos, su rango es -32000 a 32000
	-tinyint - almacena valores de 0 y 255
	-bigint - de -9000000000000000 a 90000000000000000 aprox.
Para almacenar valores EXACTOS.
decimal o numeric(t,d) - almacena hasta 38 digitos, (t)indica el total de digitos y (d)cantidad de decimales, si al insertar un registro se supera la cantidad de decimales automaticamente lo redondea.

Para almacenar valores APROXIMADOS.
float - de 1.79E+308 a 1.79E+38
real - de 3.40E+308 a 3.40E+38

Para almacenar valores MONETARIOS
money - 19 digitos y solo 4 de ellos puede ir luego de la coma decimal - rango es de -900000000000000.5808 a 900000000000000.5807 
smallmoney - entre -200000.3648 y 200000.3647

Tipo de dato(Fecha y hora)
	*datetime - valores desde 01 enero de 1753 hasta 31 de diciembre de 9999
	*smalldatetime - valores desde 01 enero de 1900 hasta el 06 de Junio 2079
Para almacenar se permite separadores "/","-"y"."
Para establecer el order de (dia,mes y año) se usa set dateformat
	-mdy: 4/15/96 mes/dia/año
	-myd: 4/96/15
	-dmy: 15/4/96
	-dym: 15/96/4
	-ydm: 96/15/4

set dateformat dmy;  dia/mes/año

el formato por defecto es mdy



*/