CREATE VIEW vw_tiempo
AS
SELECT ROW_NUMBER() OVER(ORDER BY COUNT(idVenta) DESC) AS idTiempo
     , v.fecVenta as fecha
     , datepart(WEEKDAY,v.fecVenta) as diaSemana
	 , datepart(DAY, v.fecVenta) as diaMes
	 , datepart(DAYOFYEAR, v.fecVenta) as diaAnyo
	 , datepart(WEEK, v.fecVenta) as semanaAnyo
	 , datepart(MONTH, v.fecVenta) as mes
	 , CASE WHEN datepart(MONTH, v.fecVenta) BETWEEN 1 AND 3 THEN 1
            WHEN datepart(MONTH, v.fecVenta) BETWEEN 4 AND 6 THEN 2
			WHEN datepart(MONTH, v.fecVenta) BETWEEN 7 AND 9 THEN 3
			WHEN datepart(MONTH, v.fecVenta) BETWEEN 10 AND 12 THEN 4
	   END as trimestre
	 , CASE WHEN datepart(MONTH, v.fecVenta) BETWEEN 1 AND 6 THEN 1
            WHEN datepart(MONTH, v.fecVenta) BETWEEN 7 AND 12 THEN 2
	   END as semestre
	 , datepart(YEAR, v.fecVenta) as anyo
  FROM ventas v
  GROUP BY v.fecVenta
