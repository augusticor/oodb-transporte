-- Total de deuda que tiene un vehículo (ingresa placa)
CREATE OR REPLACE PROCEDURE total_deuda_vehiculo(p_placa IN varchar2) AS
	v_obj_vehiculo Obj_vehiculo;

	BEGIN
		SELECT mv.vehi
		INTO v_obj_vehiculo
		FROM MIVEHICULO mv
		WHERE mv.vehi.get_placa() LIKE p_placa;

		DBMS_OUTPUT.PUT_LINE('El vehiculo con placa '||p_placa||' tiene una deuda de :');
		DBMS_OUTPUT.PUT_LINE('$ '||v_obj_vehiculo.calcular_deuda_total_vehiculo());
		
		EXCEPTION
			WHEN NO_DATA_FOUND THEN
				DBMS_OUTPUT.PUT_LINE('El vehiculo con placa '||p_placa||' no existe !');
	END;
/