SELECT p.Prod_Id, p.Prod_Descripcion, vd.VD_Cantidad
FROM productos p, ventas_detalle vd
WHERE p.Prod_Descripcion = 'TARUGOS Nº 6 COMUN S/ TOPE'