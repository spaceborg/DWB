CREATE VIEW vw_mediosPago
AS
SELECT m.idMedioPago as idPago
     , m.nomMedioPago as nomPago
	 , o.nomOrigen as origenPago
  FROM mediosPago m INNER JOIN origenes o
    ON m.idOrigen = o.idOrigen


