-- Funcion que retorna el mantenimiento total de un id mantenimiento recibido por parametro

CREATE OR REPLACE FUNCTION mantenimiento_total(p_id_mantenimiento IN NUMBER) RETURN NUMBER IS 
	v_total_mantenimiento NUMBER;

	BEGIN
		SELECT SUM(valor * cantidad)
		INTO v_total_mantenimiento
		FROM DETALLES
		WHERE id_mantenimiento = p_id_mantenimiento;

		RETURN v_total_mantenimiento;
	END;
/