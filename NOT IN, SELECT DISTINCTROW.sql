SELECT * FROM productos p
WHERE p.Prod_Id NOT IN (SELECT DISTINCTROW (vd.VD_ProdId) AS producto
FROM ventas_detalle vd
