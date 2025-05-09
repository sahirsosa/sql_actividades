-- videojuego

-- inner join 

 SELECT 
  j.nombre AS Jugador, 
  h.nombre AS Habilidad, 
  h.descripcion AS Descripcion
FROM jugadores j
INNER JOIN habilidades h ON j.habilidad = h.id_habilidades;

SELECT 
  n.mapa AS Mapa, 
  n.dificultad AS Dificultad, 
  e.nombre AS Enemigo, 
  e.vida AS Vida
FROM niveles n
INNER JOIN enemigos e ON n.enemigos = e.id_enemigos;

-- left join

SELECT 
  j.nombre AS Jugador, 
  h.nombre AS Habilidad, 
  h.descripcion AS Descripcion
FROM jugadores j
LEFT JOIN habilidades h ON j.habilidad = h.id_habilidades;

SELECT 
  n.mapa AS Mapa, 
  n.dificultad AS Dificultad, 
  o.nombre AS Objeto, 
  o.funcion AS Funcion
FROM niveles n
LEFT JOIN objetos o ON n.objetos = o.id_objetos;

-- right join 

SELECT 
  e.nombre AS Enemigo, 
  e.dificultad AS Dificultad, 
  n.mapa AS Mapa
FROM niveles n
RIGHT JOIN enemigos e ON n.enemigos = e.id_enemigos;

SELECT 
  o.nombre AS Objeto, 
  o.funcion AS Funcion, 
  n.mapa AS Mapa, 
  n.dificultad AS Dificultad
FROM niveles n
RIGHT JOIN objetos o ON n.objetos = o.id_objetos;