-- siempre utilizar Where; para especificar el registro que vamos a actualizar para no modificar toda la tabla
UPDATE productos p 
SET p.Prod_Descripcion = 'Descripcion modificada' 
WHERE p.Prod_Id  = 6990

-- para modificar varios campos debemos separarlos por comas
UPDATE productos p 
SET p.Prod_Descripcion = 'Descripcion modificada 2',
	p.Prod_Status=0,
	p.Prod_Color= 'modificacion color 3'
WHERE p.Prod_Id  = 6990

-- En el WHERE puede haber combinaciones de filtros y condiciones utilizando AND y demas...
-- otro ejemplo, aqui le decimos que modifique registros cuando son mayor que 6990
UPDATE productos p 
SET p.Prod_Descripcion = 'Descripcion modificada 9',
	p.Prod_Status=0,
	p.Prod_Color= 'modificacion color 9'
WHERE p.Prod_Id > 6990   