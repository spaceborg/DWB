SELECT * FROM DimCliente
SELECT * FROM DimEmpleado
SELECT * FROM DimMedioPago
SELECT * FROM DimProducto
SELECT * FROM DimTiempo
SELECT * FROM HechoVentas

sp_help HechoVentas
sp_help DimCliente

DELETE HechoVentas
DELETE DimCliente
DELETE DimEmpleado
DELETE DimMedioPago
DELETE DimProducto
DELETE DimTiempo

