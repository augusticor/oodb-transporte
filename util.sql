-- Utilidades

-- Conocer todos las funciones creadas en el actual usuario
SELECT * FROM USER_OBJECTS WHERE object_type = 'FUNCTION';

-- Ver los errores al crear una funcion o procedimiento
SELECT * FROM SYS.USER_ERRORS WHERE type = 'FUNCTION';

-- Mostrar todos los objetos creados (tablas, views, index)
SELECT OBJECT_NAME, OBJECT_TYPE FROM USER_OBJECTS ORDER BY 2;
-- ó
SELECT * FROM USER_OBJECTS WHERE OBJECT_TYPE IN ('FUNCTION','PROCEDURE','PACKAGE');
-- ó
SELECT OBJECT_NAME, OBJECT_TYPE FROM USER_OBJECTS WHERE OBJECT_TYPE IN ('TYPE', 'TYPE BODY') ORDER BY 2;

-- Mostrar la cantidad de mantenimientos que hay por placa, de mayor a menor
SELECT PLACA, COUNT(PLACA) FROM MANTENIMIENTOS GROUP BY PLACA ORDER BY 2 DESC;

-- Bloque anonimo para mostrar la cantidad de mantenimientos por placa
-- (size de el vector de mantenimientos)
DECLARE
	CURSOR cur_mivehiculo IS
							SELECT *
							FROM MIVEHICULO;
BEGIN
	FOR veh_cur IN cur_mivehiculo LOOP
		DBMS_OUTPUT.PUT_LINE(veh_cur.vehi.get_placa()||' '||veh_cur.vehi.get_mantenimientos().COUNT);
	END LOOP;
END;
/

-- Query para mostrar los detalles de todos los mantenimientos de una placa
SELECT d.*, me.estado
FROM DETALLES d, MANTENIMIENTOS me
WHERE d.id_mantenimiento IN (
							SELECT m.id_mantenimiento
							FROM MANTENIMIENTOS m
							WHERE m.placa LIKE 'ATW287'
							)
AND me.id_mantenimiento = d.id_mantenimiento
/

-- Query para mostrar la placa de los vehiculos que no tienen mantenimientos
SELECT V.PLACA
FROM VEHICULOS V
WHERE V.PLACA NOT IN (
						SELECT PLACA
						FROM MANTENIMIENTOS
					)
/