SELECT * FROM nombre_de_la_vista;

--escuela

-- 1. Vista de estudiantes con la misma edad que 'Mario Ramírez'
CREATE VIEW estudiantes_misma_edad AS
SELECT nombre, edad FROM estudiantes
WHERE edad = (SELECT edad FROM estudiantes WHERE nombre = 'Mario Ramírez');

-- 2. Vista de grupos con más alumnos que el promedio
CREATE VIEW grupos_mas_promedio AS
SELECT grado, num_alumnos FROM grupos
WHERE num_alumnos > (SELECT AVG(num_alumnos) FROM grupos);

-- 3. Vista de maestros con más experiencia que el mínimo registrado
CREATE VIEW maestros_mas_experiencia AS
SELECT nombre, experiencia FROM maestros
WHERE experiencia > (SELECT MIN(experiencia) FROM maestros);

-- 4. Vista de materias con el mismo horario que 'Historia Universal'
CREATE VIEW materias_mismo_horario AS
SELECT nombre, horario FROM materias
WHERE horario = (SELECT horario FROM materias WHERE nombre = 'Historia Universal');

-- 5. Vista de tutores de grupos con más alumnos que el total de estudiantes
CREATE VIEW tutores_grupos_mayores AS
SELECT tutor FROM grupos
WHERE num_alumnos > (SELECT COUNT(*) FROM estudiantes);