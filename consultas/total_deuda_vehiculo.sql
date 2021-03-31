-- Total de deuda que tiene un vehículo (ingresa placa)
CREATE OR REPLACE PROCEDURE total_deuda_vehiculo(p_placa IN varchar2) AS
	v_obj_vehiculo Obj_vehiculo;
	v_deuda number;

	BEGIN
		SELECT mv.vehi
		INTO v_obj_vehiculo
		FROM MIVEHICULO mv
		WHERE mv.vehi.get_placa() LIKE p_placa;


		v_deuda := v_obj_vehiculo.calcular_deuda_total_vehiculo();
		IF v_deuda < 0 THEN
			DBMS_OUTPUT.PUT_LINE('Este vehiculo nunca ha tenido mantenimientos por lo tanto su deuda es $0');
		ELSE
			DBMS_OUTPUT.PUT_LINE('El vehiculo con placa '||p_placa||' tiene una deuda de :');
			DBMS_OUTPUT.PUT_LINE('$ '||v_deuda);
		END IF;
		
		EXCEPTION
			WHEN NO_DATA_FOUND THEN
				DBMS_OUTPUT.PUT_LINE('El vehiculo con placa '||p_placa||' no existe !');
	END;
/