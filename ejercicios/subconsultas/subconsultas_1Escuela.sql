-- escuela 

SELECT nombre, edad FROM estudiantes
WHERE edad = (SELECT edad FROM estudiantes WHERE nombre = 'Mario Ramírez');

SELECT grado, num_alumnos FROM grupos
WHERE num_alumnos > (SELECT AVG(num_alumnos) FROM grupos);

SELECT nombre, experiencia FROM maestros
WHERE experiencia > (SELECT MIN(experiencia) FROM maestros);

SELECT nombre, horario FROM materias
WHERE horario = (SELECT horario FROM materias WHERE nombre = 'Historia Universal');

SELECT tutor FROM grupos
WHERE num_alumnos > (SELECT COUNT(*) FROM estudiantes);