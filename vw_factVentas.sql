CREATE VIEW vw_factVentas
AS
SELECT det.idDetVenta
     , ven.fecVenta
	 , ven.idCliente
	 , det.idProducto
	 , ven.idEmpleado
	 , ven.idMedioPago as idPago
	 , det.cantDetVenta as cantidadVenta
	 , det.precioDetVenta as precioVenta
	 , det.cantDetVenta * det.precioDetVenta as montoVenta
  FROM detalleVentas det INNER JOIN ventas ven
    ON det.idVenta = ven.idVenta 