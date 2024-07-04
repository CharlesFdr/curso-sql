SELECT v.Ventas_NroFactura, v.Ventas_CliId, c.Cli_RazonSocial, 
			v.Ventas_Fecha, vd.VD_ProdId, p.Prod_Descripcion, pr.Prov_Id, pr.Prov_Nombre
FROM ventas v, clientes c, ventas_detalle vd, productos p, proveedores pr
WHERE v.Ventas_CliId = c.Cli_Id AND v.Ventas_CliId > 1 
		AND vd.VD_VentasId = v.Ventas_Id AND vd.VD_ProdId = p.Prod_Id AND p.Prod_provId = pr.Prov_Id
		 


