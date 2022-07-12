--FUNCIONES PARA EL MANEJO DE NUEMEROS
/*
abs(x): retorna el valor absoluto del argumento x
*/

select abs(-20); -- 20

/*
ceiling(x): redondea hacia arriba el argumento x 
*/

select ceiling(12.34); -- 13

/*
floor(x): redondea hacia abajo el argumento x
*/

select floor(12.34); -- 12

/*
power(x,y): retorna valor de x elevado a la y potencia
*/

select power(2,3); -- 8 

/*
round(numero,longitud): retorna un numero redondeado a la longitud especificada
*/

select round(123.456,1); -- 123.400
select round(123.456,2); -- 123.46

/*
square(x): retorna el cuadrado de x
*/
select square(3); -- 9

/*
sqrt(x): devuelve la raiz cuadrada de x 
*/

select sqrt(9); -- 3