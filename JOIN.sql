SELECT v.Ventas_NroFactura, c.Cli_Id, c.Cli_RazonSocial, p.Prod_Id, p.Prod_Descripcion
FROM productos p
	JOIN ventas_detalle vd ON vd.VD_ProdId =  p.Prod_Id AND vd.VD_Costo>1000
	JOIN proveedores pr ON pr.Prov_Id = p.Prod_ProvId
	JOIN ventas v ON vd.VD_VentasId  = v.Ventas_Id AND v.ventas_fecha BETWEEN '2018-01-22' AND '2018-01-26'
	JOIN clientes c ON v.Ventas_CliId = c.Cli_Id
	
	