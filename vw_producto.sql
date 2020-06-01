DROP VIEW vw_producto

CREATE VIEW vw_producto
AS
SELECT p.idProducto
     , p.nomProducto 
	 , m.nomMarca 
	 , s.nomSubCategoria 
	 , c.nomCategoria 
  FROM productos p INNER JOIN marcas m
    ON p.idMarca = m.idMarca INNER JOIN subcategorias s
	ON p.idSubCategoria = s.idCategoria INNER JOIN categorias c
	ON s.idCategoria = c.idCategoria
