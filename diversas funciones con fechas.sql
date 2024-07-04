-- Mostar la fecha del sistema
-- podemos terminar con un AS 'nombre para mostrar'
SELECT CURRENT_DATE;

-- Mostrar la hora del sistema
SELECT CURRENT_TIME;

-- mostrar la fecha y hora del sistema
SELECT CURRENT_TIMESTAMP;

-- mostrar el ususario de la base de datos
SELECT CURRENT_USER;

-- conteo de días a parteri de la fecha que elegimos
SELECT DATEDIFF ('2023-06-25','2023-01-01') AS 'dias desde el comiezo del año';

--
SELECT DATEDIFF (CURRENT_DATE, v.Ventas_Fecha ) AS 'antiguedad en días', v.Ventas_NroFactura FROM ventas v

-- dia de la semana
SELECT DAYOFWEEK (CURRENT_DATE) AS 'dia de la semana'