CREATE VIEW vw_cliente
AS
SELECT cli.idCliente
     , cli.nomCliente
	 , cli.apeCliente
	 , cli.emailCliente
	 , cli.dirCliente
	 , com.nomComuna as comunaCliente
	 , reg.nomRegion as regionCliente
  FROM clientes cli INNER JOIN comunas com 
    ON cli.idComuna = com.idComuna INNER JOIN regiones reg
	ON com.idRegion = reg.idRegion

