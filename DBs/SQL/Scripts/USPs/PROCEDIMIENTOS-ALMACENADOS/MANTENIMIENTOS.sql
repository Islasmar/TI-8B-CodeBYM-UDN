CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_genera_mantenimientos`(IN cantidad INT)
BEGIN
    DECLARE i INT DEFAULT 1;
    DECLARE total_equipos INT;
    DECLARE equipo_id INT;

    -- Obtener el total de equipos registrados
    SELECT COUNT(*) INTO total_equipos FROM tbb_equipamientos;

    -- Verificar que haya equipos disponibles
    IF total_equipos > 0 THEN
        WHILE i <= cantidad DO
            -- Selecciona un ID de equipamiento aleatorio existente
            SELECT Id INTO equipo_id
            FROM tbb_equipamientos
            ORDER BY RAND()
            LIMIT 1;

            -- Depuración: Verifica el valor de equipo_id
            SELECT equipo_id;  -- Esto te mostrará el valor de equipo_id seleccionado

            -- Inserta el mantenimiento en la tabla tbb_mantenimiento
            INSERT INTO tbb_mantenimiento (
                Id_equipamiento,  -- Aquí utilizas el campo correcto de la tabla tbb_mantenimiento
                Descripcion,
                Responsable,
                Costo,
                Estatus,
                Fecha_mantenimiento,
                Fecha_Actualizacion
            )
            VALUES (
                equipo_id,  -- Se utiliza el Id del equipamiento aleatorio seleccionado
                CONCAT('Mantenimiento de rutina ', i),
                CONCAT('Técnico ', CHAR(65 + FLOOR(RAND() * 26))), -- Técnico A-Z
                FLOOR(500 + RAND() * 5000), -- Costo entre 500 y 5500
                FLOOR(RAND() * 2), -- Estatus: 0 o 1
                NOW(),
                NOW()
            );

            SET i = i + 1;
        END WHILE;
    ELSE
        -- Si no hay equipos registrados, puedes generar un mensaje de error o salida
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'No hay equipos registrados';
    END IF;
END