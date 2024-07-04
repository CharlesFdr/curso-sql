-- nos permite adicionar dias a una fecha 
-- como para calcular fechas de vencimiento
SELECT adddate(CURRENT_DATE(),10);

-- sumar tiempo determinado a una hora determinada
SELECT CURRENT_TIMESTAMP(), ADDTIME(CURRENT_TIMESTAMP(), '00:15:00');

-- convertir un tipo de dato a un tipo de dato determinado
SELECT CAST('2023-06-25' AS DATE);
SELECT CAST(12345 AS CHAR);
SELECT ADDDATE(CAST('2024-01-17' as date),10);

-- nos da el largo de un campo
-- (en esta consulta ya mostramos varios campos de una tabla y al final muestra el largo del campo Prod_descripcion)
SELECT p.Prod_Id, p.Prod_Descripcion, CHAR_LENGTH(p.Prod_Descripcion) AS largo FROM productos p

-- comprimir y descomprimir datos
SELECT COMPRESS (p.Prod_Descripcion) AS comprimido FROM productos p
SELECT UNCOMPRESS (COMPRESS (p.Prod_Descripcion)) AS orginal FROM productos p

-- concatenar texto separado por comas
SELECT CONCAT("(",p.Prod_Id,") ", p.Prod_Descripcion," ",p.Prod_Color) AS descripcion FROM productos p

-- una variante del concatenar, nos permite ingresa un delimitador
-- primero fijamos el delimitador " " y nos acorta la expresion anterior
SELECT CONCAT_WS(" ",p.Prod_Id,p.Prod_Descripcion,p.Prod_Color) AS descripcion FROM productos p

-- sistema de conversion numerico
-- primero dato a convertir,sistema acutal,sistema de conversion
SELECT CONV ("10",10,2)
SELECT CONV ("A",16,10)

-- una variante para sumar tiempo dias,meses,años
SELECT DATE_ADD(CURRENT_DATE, INTERVAL 1 YEAR);

-- restar tiempo
SELECT DATE_SUB(CURRENT_DATE, INTERVAL 10 DAY);

-- formatear las fechas la w minuscula muestra el numero del dia
SELECT DATE_FORMAT ('2024-01-17', '%d');
SELECT DATE_FORMAT ('2024-01-16', '%W');
%y: año de 2 digitos
%Y: año de 4 digitos
%m: mes (00...12)
%d dia del mes (00...31)
%H: Horas(00..23)
%i: Minutos (00..59)
%s: Seguntos (00..59)
%p: AM o PM
%W: nombre del día en ingles
