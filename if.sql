SELECT
		p.Prod_Id, p.Prod_Descripcion, if(p.Prod_Status=1, 'habproductosilitado', 'deshabilitado') AS estado
FROM productos p