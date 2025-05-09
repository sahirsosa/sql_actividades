-- tienda departamental
-- inner join 

SELECT 
  c.nombre AS Cliente, 
  d.nombre AS Departamento
FROM clientes c
INNER JOIN departamentos d ON c.departamento_id = d.id;

SELECT 
  a.nombre AS Articulo, 
  m.nombre AS Marca
FROM articulos a
INNER JOIN marcas m ON a.marca_id = m.id;

-- left join 

SELECT 
  d.nombre AS Departamento, 
  c.nombre AS Cliente
FROM departamentos d
LEFT JOIN clientes c ON d.id = c.departamento_id;

SELECT 
  a.nombre AS Articulo, 
  m.nombre AS Marca
FROM articulos a
LEFT JOIN marcas m ON a.marca_id = m.id;

-- right join 

SELECT 
  d.nombre AS Departamento, 
  c.nombre AS Cliente
FROM clientes c
RIGHT JOIN departamentos d ON c.departamento_id = d.id;

SELECT 
  m.nombre AS Marca, 
  a.nombre AS Articulo
FROM articulos a
RIGHT JOIN marcas m ON a.marca_id = m.id;