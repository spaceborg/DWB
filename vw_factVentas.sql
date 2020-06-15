CREATE VIEW vw_factVentas
AS
SELECT ROW_NUMBER() OVER(ORDER BY COUNT(idVenta) DESC) AS idTiempo
     , det.idDetVenta
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


	SELECT ROW_NUMBER() OVER(ORDER BY COUNT(v.idVenta) DESC) AS Correlativo
	 , v.idVenta
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
 GROUP BY v.idVenta
		 , v.fecVenta, v.idCliente
	 , d.idProducto
	 , v.idEmpleado
	 , v.idMedioPago
	 , d.cantDetVenta
	 , d.precioDetVenta
	 , totalDetVenta