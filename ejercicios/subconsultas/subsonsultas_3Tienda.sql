-- tienda 

-- 1. Clientes que pertenecen al mismo departamento que 'Cliente1'
SELECT nombre FROM clientes
WHERE departamento_id = (SELECT departamento_id FROM clientes WHERE nombre = 'Cliente1');

-- 2. Artículos con el mismo precio que 'Laptop'
SELECT nombre FROM articulos
WHERE precio = (SELECT precio FROM articulos WHERE nombre = 'Laptop');

-- 3. Departamentos con más de 2 clientes asignados
SELECT nombre FROM departamentos
WHERE id IN (
    SELECT departamento_id FROM clientes
    GROUP BY departamento_id
    HAVING COUNT(*) > 2
);

-- 4. Empleados que tienen el mismo puesto que 'Empleado3'
SELECT nombre FROM empleados
WHERE puesto = (SELECT puesto FROM empleados WHERE nombre = 'Empleado3');

-- 5. Proveedores con el mismo teléfono que 'Proveedor1'
SELECT nombre FROM proveedores
WHERE telefono = (SELECT telefono FROM proveedores WHERE nombre = 'Proveedor1');