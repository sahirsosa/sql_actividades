-- liga_futbol
/*(inner join)*/
SELECT 
  e.nombre AS Equipo, 
  c.masculino AS Categoria
FROM equipos e
INNER JOIN categorias c ON e.categoria = c.id_categorias;

SELECT 
  j.nombre AS Jugador, 
  e.nombre AS Equipo
FROM jugadores j
INNER JOIN equipos e ON j.equipo = e.id_equipos;

/*(left join)*/
SELECT 
  e.nombre AS Equipo, 
  j.nombre AS Jugador
FROM equipos e
LEFT JOIN jugadores j ON e.id_equipos = j.equipo;

SELECT 
  c.masculino AS Categoria, 
  e.nombre AS Equipo
FROM categorias c
LEFT JOIN equipos e ON c.id_categorias = e.categoria;


/*(right join)*/

SELECT 
  e.nombre AS Equipo, 
  c.masculino AS Categoria
FROM categorias c
RIGHT JOIN equipos e ON c.id_categorias = e.categoria;

SELECT 
  j.nombre AS Jugador, 
  e.nombre AS Equipo
FROM equipos e
RIGHT JOIN jugadores j ON e.id_equipos = j.equipo;