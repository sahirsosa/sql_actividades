DELIMITER //

-- 1. Actualizar last_update de customer cuando se actualice su dirección
CREATE TRIGGER update_customer_last_update
AFTER UPDATE ON customer
FOR EACH ROW
BEGIN
    IF OLD.address_id <> NEW.address_id THEN
        UPDATE customer SET last_update = NOW() WHERE customer_id = NEW.customer_id;
    END IF;
END;
//

-- 2. Actualizar last_update de rental al insertar un payment
CREATE TRIGGER update_rental_last_update
AFTER INSERT ON payment
FOR EACH ROW
BEGIN
    UPDATE rental SET last_update = NOW()
    WHERE rental_id = NEW.rental_id;
END;
//

-- 3. Actualizar last_update de inventory al actualizar film_id
CREATE TRIGGER update_inventory_last_update
AFTER UPDATE ON inventory
FOR EACH ROW
BEGIN
    IF OLD.film_id <> NEW.film_id THEN
        UPDATE inventory SET last_update = NOW() WHERE inventory_id = NEW.inventory_id;
    END IF;
END;
//

-- 4. Actualizar last_update de staff cuando se modifique su nombre
CREATE TRIGGER update_staff_last_update
AFTER UPDATE ON staff
FOR EACH ROW
BEGIN
    IF OLD.first_name <> NEW.first_name OR OLD.last_name <> NEW.last_name THEN
        UPDATE staff SET last_update = NOW() WHERE staff_id = NEW.staff_id;
    END IF;
END;
//

DELIMITER ;