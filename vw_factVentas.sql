CREATE VIEW vw_factVentas
AS
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
		, v.fecVenta
		, v.idCliente
		, d.idProducto
		, v.idEmpleado
		, v.idMedioPago
		, d.cantDetVenta
		, d.precioDetVenta
		, totalDetVenta