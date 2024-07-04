- es una consulta anidada dentro de otra consulta.
-- Se utiliza para realizar consultas más complejas al incorporar los resultados de una consulta interna en la lógica de una consulta externa.
-- sitaxius de una consulta normal: select <lista de campos> from <tablas> where <condiciones>
-- las subconsultas van entre parentesis ()
SELECT p.Prod_Id,
			p.Prod_Descripcion,
			p.Prod_Color,
			(SELECT SUM(vd.VD_Cantidad) FROM ventas_detalle vd WHERE vd.VD_ProdId = p.Prod_Id) AS 'total ventas',
			(SELECT SUM(vd.VD_Precio) FROM ventas_detalle vd WHERE vd.VD_ProdId = p.Prod_Id) AS 'Total ventas dinero'
FROM productos p 
 WHERE 
