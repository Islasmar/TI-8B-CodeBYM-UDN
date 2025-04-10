CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_genera_usuarios`(IN cantidad INT)
BEGIN
  DECLARE i INT DEFAULT 0;

  WHILE i < cantidad DO
    INSERT INTO tbb_usuarios (
      Nombre_Usuario,
      Correo_Electronico,
      Contrasena,
      Numero_Telefonico_Movil,
      Estatus,
      Fecha_Registro,
      Fecha_Actualizacion
    )
    VALUES (
      fn_genera_nombre_usuario(),
      fn_genera_correo(),
      SHA2(CONCAT('pass', FLOOR(RAND() * 100000)), 256), -- Simulación de hash
      fn_genera_telefono(),
      fn_genera_estatus(),
      NOW(),
      NOW()
    );

    SET i = i + 1;
  END WHILE;
END