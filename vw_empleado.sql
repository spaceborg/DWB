CREATE VIEW vw_empleado
AS
SELECT m.idEmpleado
     , m.nomEmpleado
	 , m.apeEmpleado
	 , car.nomCargo as cargoEmpleado
	 , com.nomComuna as comunaEmpleado
	 , r.nomRegion as regionEmpleado
  FROM empleados m INNER JOIN cargos car
    ON m.idCargo = car.idCargo INNER JOIN comunas com
	ON m.idComuna = com.idComuna INNER JOIN regiones r
	ON com.idRegion = r.idRegion



	