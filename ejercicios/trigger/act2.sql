DELIMITER //
-- Escuela
-- Trigger: Se ejecuta después de actualizar un maestro
CREATE TRIGGER actualizar_direccion_maestro
AFTER UPDATE ON maestros
FOR EACH ROW
BEGIN
    UPDATE maestros SET nombre = NEW.nombre WHERE id_maestros = NEW.id_maestros;
END;
//
DELIMITER ;

-- Consulta para verificar cambios en la tabla maestros
SELECT id_maestros, nombre, direccion, especialidad FROM maestros;



DELIMITER //
-- tienda
-- Trigger: Actualiza el precio de un artículo
CREATE TRIGGER actualizar_precio_articulo
AFTER UPDATE ON articulos
FOR EACH ROW
BEGIN
    IF OLD.precio <> NEW.precio THEN
        UPDATE articulos SET precio = NEW.precio WHERE id = NEW.id;
    END IF;
END;
//
DELIMITER ;
SELECT id, nombre, precio FROM articulos;



DELIMITER //
-- liga deportiva
-- Trigger: Actualiza el equipo de un jugador
CREATE TRIGGER actualizar_equipo_jugador
AFTER UPDATE ON jugadores
FOR EACH ROW
BEGIN
    UPDATE jugadores SET equipo = NEW.equipo WHERE id_jugadores = NEW.id_jugadores;
END;
//
DELIMITER ;

SELECT id_jugadores, nombre, equipo, posicion, edad FROM jugadores;




DELIMITER //
-- videpjuego
-- Trigger: Actualiza la vida de un enemigo
CREATE TRIGGER actualizar_vida_enemigo
AFTER UPDATE ON enemigos
FOR EACH ROW
BEGIN
    UPDATE enemigos SET vida = NEW.vida WHERE id_enemigos = NEW.id_enemigos;
END;
//
DELIMITER ;
SELECT id_enemigos, nombre, dificultad, vida FROM enemigos;