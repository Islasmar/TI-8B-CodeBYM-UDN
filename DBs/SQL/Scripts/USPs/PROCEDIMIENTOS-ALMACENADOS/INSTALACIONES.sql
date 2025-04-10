CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_genera_instalaciones`(IN cantidad INT)
BEGIN
    DECLARE i INT DEFAULT 1;
    DECLARE tipos TEXT;
    DECLARE tipo_instalacion VARCHAR(50);

    SET tipos = 'Área de Cardio,Área de Pesas,Alberca,Salón de Yoga,Cancha,Recepción,Vestidores,Sauna';

    WHILE i <= cantidad DO
        -- Selecciona un tipo aleatorio
        SET tipo_instalacion = SUBSTRING_INDEX(SUBSTRING_INDEX(tipos, ',', 1 + FLOOR(RAND() * 8)), ',', -1);

        INSERT INTO tbb_instalaciones (
            Descripcion,
            Tipo,
            Observaciones,
            Estatus,
            Fecha_Registro,
            Fecha_Actualizacion
        )
        VALUES (
            CONCAT(tipo_instalacion, ' equipada con lo necesario.'),
            tipo_instalacion,
            'Sin observaciones.',
            FLOOR(RAND() * 2),
            NOW(),
            NULL
        );

        SET i = i + 1;
    END WHILE;
END