DROP VIEW vw_hechos_venta

CREATE VIEW vw_hechos_venta
AS
SELECT v.idVenta
	 , CAST(FORMAT(v.fecVenta,'yyyyMMdd') as int) as idTiempo
	 , v.idCliente
	 , d.idProducto
	 , v.idEmpleado
	 , v.idMedioPago
	 , d.cantDetVenta
	 , d.precioDetVenta
	 , d.cantDetVenta * d.precioDetVenta as totalDetVenta
  FROM ventas v INNER JOIN detalleVenta d
    ON d.idVenta = v.idVenta

	