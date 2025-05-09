-- escuela

/*inner join*/
SELECT 
m.nombre AS Materia, 
ma.nombre AS Maestro
FROM materias m
INNER JOIN maestros ma ON m.id_maestro = ma.id_maestros;


SELECT 
  m.nombre AS Materia, 
  g.grado AS Grupo
FROM materias m
INNER JOIN grupos g ON m.grupo = g.grado;

/*left join*/
SELECT 
  ma.nombre AS Maestro, 
  m.nombre AS Materia
FROM maestros ma
LEFT JOIN materias m ON ma.id_maestros = m.id_maestro;

SELECT 
  g.grado AS Grupo, 
  m.nombre AS Materia
FROM grupos g
LEFT JOIN materias m ON g.grado = m.grupo;


/* right join*/

SELECT 
  m.nombre AS Materia, 
  ma.nombre AS Maestro
FROM maestros ma
RIGHT JOIN materias m ON ma.id_maestros = m.id_maestro;

SELECT 
  m.nombre AS Materia, 
  g.grado AS Grupo
FROM grupos g
RIGHT JOIN materias m ON g.grado = m.grupo;
