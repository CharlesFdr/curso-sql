SELECT p.Prod_Id, p.Prod_Descripcion, case SUBSTR(p.Prod_Descripcion, 1,1)
													when 'A' then 'Letra A'
													when 'B' then 'Letra B'
													END AS ejercicio
FROM productos p