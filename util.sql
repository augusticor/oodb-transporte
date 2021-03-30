-- Utilidades

-- Conocer todos las funciones creadas en el actual usuario
SELECT * FROM USER_OBJECTS WHERE object_type = 'FUNCTION';

-- Ver los errores al crear una funcion o procedimiento
SELECT * FROM SYS.USER_ERRORS WHERE type = 'FUNCTION';