-- DISTINCT

-- Seleccionar los nombres únicos de estudiantes
SELECT DISTINCT nombre
FROM escuela.estudiantes;

-- Seleccionar las carreras únicas ofrecidas en la universidad
SELECT DISTINCT carrera
FROM escuela.estudiantes;

-- Seleccionar los grados únicos de los grupos
SELECT DISTINCT grado
FROM escuela.grupos;


-- limit

-- Obtener los primeros 5 estudiantes
SELECT * 
FROM escuela.estudiantes
LIMIT 5;

-- Obtener los primeros 3 maestros con más experiencia
SELECT nombre, experiencia
FROM escuela.maestros
ORDER BY experiencia DESC
LIMIT 3;

-- Obtener las primeras 10 materias
SELECT * 
FROM escuela.materias
LIMIT 10;

-- ORDER BY

-- Ordenar los estudiantes por edad (ascendente)
SELECT * 
FROM escuela.estudiantes
ORDER BY edad ASC;

-- Ordenar los grupos por número de alumnos (descendente)
SELECT * 
FROM escuela.grupos
ORDER BY num_alumnos DESC;

-- Ordenar los maestros por especialidad (alfabéticamente)
SELECT * 
FROM escuela.maestros
ORDER BY especialidad;

-- Operadores de comparación

-- Obtener estudiantes mayores de 20 años
SELECT * 
FROM escuela.estudiantes
WHERE edad > 20;

-- Obtener maestros con más de 10 años de experiencia
SELECT * 
FROM escuela.maestros
WHERE experiencia >= 10;

-- Obtener grupos con más de 30 alumnos
SELECT * 
FROM escuela.grupos
WHERE num_alumnos > 30;

-- LIKE

-- Buscar estudiantes cuyo nombre comienza con 'Ma'
SELECT * 
FROM escuela.estudiantes
WHERE nombre LIKE 'Ma%';

-- Buscar materias que contienen la palabra "arte"
SELECT * 
FROM escuela.materias
WHERE nombre LIKE '%arte%';

-- Buscar maestros cuya dirección contiene "Calle"
SELECT * 
FROM escuela.maestros
WHERE direccion LIKE '%Calle%';

-- BETWEEN

-- Buscar estudiantes entre 18 y 22 años
SELECT * 
FROM escuela.estudiantes
WHERE edad BETWEEN 18 AND 22;

-- Buscar grupos con entre 25 y 30 alumnos
SELECT * 
FROM escuela.grupos
WHERE num_alumnos BETWEEN 25 AND 30;

-- Buscar materias con horarios entre las 10 y las 14 horas
SELECT * 
FROM escuela.materias
WHERE horario BETWEEN '10:00' AND '14:00';


 -- AND
 
-- Buscar estudiantes mayores de 18 años que estudian ingeniería
SELECT * 
FROM escuela.estudiantes
WHERE edad > 18 AND carrera = 'Ingeniería';

-- Buscar grupos con más de 30 alumnos y grado "1º"
SELECT * 
FROM escuela.grupos
WHERE num_alumnos > 30 AND grado = '1º';

-- Buscar maestros con experiencia mayor a 10 años y especialidad en matemáticas
SELECT * 
FROM escuela.maestros
WHERE experiencia > 10 AND especialidad = 'Matemáticas';


-- OR

-- Buscar estudiantes de ingeniería o psicología
SELECT * 
FROM escuela.estudiantes
WHERE carrera = 'Ingeniería' OR carrera = 'Psicología';

-- Buscar grupos con más de 30 alumnos o grado "2º"
SELECT * 
FROM escuela.grupos
WHERE num_alumnos > 30 OR grado = '2º';

-- Buscar maestros con experiencia menor a 5 años o dirección en "Avenida"
SELECT * 
FROM escuela.maestros
WHERE experiencia < 5 OR direccion LIKE '%Avenida%';

-- NOT

-- Buscar estudiantes cuya carrera no sea ingeniería
SELECT * 
FROM escuela.estudiantes
WHERE carrera NOT LIKE '%Ingeniería%';

-- Buscar grupos que no sean del grado "6º"
SELECT * 
FROM escuela.grupos
WHERE grado NOT IN ('6º');

-- Buscar maestros cuya especialidad no sea química
SELECT * 
FROM escuela.maestros
WHERE especialidad NOT LIKE '%Química%';

-- IN

-- Buscar estudiantes que estudian en Ingeniería, Psicología o Biología
SELECT * 
FROM escuela.estudiantes
WHERE carrera IN ('Ingeniería', 'Psicología', 'Biología');

-- Buscar grupos que pertenezcan a los grados 1º, 3º o 5º
SELECT * 
FROM escuela.grupos
WHERE grado IN ('1º', '3º', '5º');

-- Buscar maestros con especialidades en Matemáticas, Historia o Química
SELECT * 
FROM escuela.maestros
WHERE especialidad IN ('Matemáticas', 'Historia', 'Química');

-- Operaciones matemáticas

-- Calcular la edad promedio de los estudiantes
SELECT AVG(edad) AS promedio_edad
FROM escuela.estudiantes;

-- Calcular el total de alumnos en todos los grupos
SELECT SUM(num_alumnos) AS total_alumnos
FROM escuela.grupos;

-- Incrementar los años de experiencia de todos los maestros en 2 años
SELECT nombre, (experiencia + 2) AS nueva_experiencia
FROM escuela.maestros;

-- COUNT

-- Contar el número total de estudiantes
SELECT COUNT(*) AS total_estudiantes
FROM escuela.estudiantes;

-- Contar cuántos grupos tienen más de 30 alumnos
SELECT COUNT(*) AS grupos_grandes
FROM escuela.grupos
WHERE num_alumnos > 30;

-- Contar el número de maestros con experiencia mayor a 10 años
SELECT COUNT(*) AS maestros_experimentados
FROM escuela.maestros
WHERE experiencia > 10;

-- SUM

-- Sumar todas las edades de los estudiantes
SELECT SUM(edad) AS suma_edades
FROM escuela.estudiantes;

-- Calcular el número total de alumnos en todos los grupos
SELECT SUM(num_alumnos) AS total_alumnos
FROM escuela.grupos;

-- Calcular la suma total de experiencia de los maestros
SELECT SUM(experiencia) AS experiencia_total
FROM escuela.maestros;

-- AVG

-- Calcular el promedio de edad de los estudiantes
SELECT AVG(edad) AS promedio_edad
FROM escuela.estudiantes;

-- Calcular el promedio de alumnos por grupo
SELECT AVG(num_alumnos) AS promedio_alumnos
FROM escuela.grupos;

-- Calcular el promedio de experiencia de los maestros
SELECT AVG(experiencia) AS promedio_experiencia
FROM escuela.maestros;

-- CONCAT

-- Concatenar el nombre y la carrera de los estudiantes
SELECT CONCAT(nombre, ' - ', carrera) AS estudiante_carrera
FROM escuela.estudiantes;

-- Concatenar el grado y el tutor de cada grupo
SELECT CONCAT(grado, ' (Tutor: ', tutor, ')') AS detalle_grupo
FROM escuela.grupos;

-- Concatenar el nombre y la especialidad de los maestros
SELECT CONCAT(nombre, ' - ', especialidad) AS maestro_especialidad
FROM escuela.maestros;

-- UPPER

-- Mostrar los nombres de los estudiantes en mayúsculas
SELECT UPPER(nombre) AS nombre_mayusculas
FROM escuela.estudiantes;

-- Convertir las especialidades de los maestros en mayúsculas
SELECT UPPER(especialidad) AS especialidad_mayusculas
FROM escuela.maestros;

-- Convertir los nombres de las materias a mayúsculas
SELECT UPPER(nombre) AS materias_mayusculas
FROM escuela.materias;

-- LOWER

-- Mostrar los nombres de los estudiantes en minúsculas
SELECT LOWER(nombre) AS nombre_minusculas
FROM escuela.estudiantes;

-- Convertir las direcciones de los maestros a minúsculas
SELECT LOWER(direccion) AS direccion_minusculas
FROM escuela.maestros;

-- Convertir los nombres de los grados a minúsculas
SELECT LOWER(grado) AS grado_minusculas
FROM escuela.grupos;

-- OFFSET

-- Mostrar estudiantes a partir del sexto registro (paginación)
SELECT * 
FROM escuela.estudiantes
LIMIT 5 OFFSET 5;

-- Mostrar grupos a partir del cuarto registro
SELECT * 
FROM escuela.grupos
LIMIT 3 OFFSET 3;

-- Mostrar maestros a partir del tercer registro
SELECT * 
FROM escuela.maestros
LIMIT 5 OFFSET 2;

-- GROUP BY

-- Agrupar estudiantes por carrera y contar cuántos hay en cada una
SELECT carrera, COUNT(*) AS total_estudiantes
FROM escuela.estudiantes
GROUP BY carrera;

-- Agrupar grupos por grado y contar cuántos alumnos hay en total en cada grado
SELECT grado, SUM(num_alumnos) AS total_alumnos
FROM escuela.grupos
GROUP BY grado;

-- Agrupar maestros por especialidad y contar cuántos hay por especialidad
SELECT especialidad, COUNT(*) AS total_maestros
FROM escuela.maestros
GROUP BY especialidad;

-- HAVING

-- Grupos con más de 30 alumnos (agrupados por grado)
SELECT grado, SUM(num_alumnos) AS total_alumnos
FROM escuela.grupos
GROUP BY grado
HAVING SUM(num_alumnos) > 30;

-- Carreras con más de 5 estudiantes inscritos
SELECT carrera, COUNT(*) AS total_estudiantes
FROM escuela.estudiantes
GROUP BY carrera
HAVING COUNT(*) > 5;

-- Especialidades con más de 2 maestros
SELECT especialidad, COUNT(*) AS total_maestros
FROM escuela.maestros
GROUP BY especialidad
HAVING COUNT(*) > 2;

-- case 

-- Mostrar si los estudiantes son mayores o menores de edad
SELECT nombre,
CASE 
    WHEN edad >= 18 THEN 'Mayor de edad'
    ELSE 'Menor de edad'
END AS estado
FROM escuela.estudiantes;

-- Mostrar si los grupos tienen pocos o muchos alumnos
SELECT grado,
CASE 
    WHEN num_alumnos > 25 THEN 'Grupo grande'
    ELSE 'Grupo pequeño'
END AS tamaño_grupo
FROM escuela.grupos;

-- Determinar el nivel de experiencia de los maestros
SELECT nombre,
CASE 
    WHEN experiencia > 10 THEN 'Alta experiencia'
    WHEN experiencia BETWEEN 5 AND 10 THEN 'Experiencia media'
    ELSE 'Baja experiencia'
END AS nivel_experiencia
FROM escuela.maestros;

-- IFNULL

-- Reemplazar valores nulos en el teléfono de los estudiantes por 'Sin teléfono'
SELECT nombre, IFNULL(telefono, 'Sin teléfono') AS telefono
FROM escuela.estudiantes;

-- Reemplazar valores nulos en el número de maestros con '0'
SELECT grado, IFNULL(num_maestros, 0) AS num_maestros
FROM escuela.grupos;

-- Reemplazar valores nulos en la dirección de los maestros por 'No especificada'
SELECT nombre, IFNULL(direccion, 'No especificada') AS direccion
FROM escuela.maestros;