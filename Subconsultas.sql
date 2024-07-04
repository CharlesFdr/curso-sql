-- sintaxis
-- select <lista de campos> from <tablas> where condiciones>
-- un SELECT dentro de SELECT, puede ser colocado en la lista de campos, tambien en las tablas y en las condiciones "where"

/*
Select <lista de campos>
from <tablas>
where <condiciones>
*/

SELECT p.prod_Id,
			p.Prod_Descripcion,
			p.Prod_Color
			(SELECT SUM(vd.VD_Cantidad) FROM ventas_detalle vd WHERE vd.VD_ProdId = p.Prod_ID) AS 'Total unidades',
			(SELECT SUM(vd.VD_Precio) FROM ventas_detalle vd WHERE vd.VD_Id = p.Prod_ID) AS 'Totales ventas dinero'
FROM productos p


Otro ejemplo
-- SELECT p.Prod_ID,
			p.Prod_Descripcion,
			p.Prod_Color,
			(SELECT SUM(vd.VD_Costo) FROM ventas_detalle vd WHERE vd.VD_ProdId = p.Prod_ID) AS 'Total precio'
-- FROM productos p