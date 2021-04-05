CREATE OR REPLACE PROCEDURE reporte_mantenimientos(p_placa IN varchar2) AS
	v_obj_vehiculo Obj_vehiculo;
	v_mantenimientos mantenimiento_array;
	BEGIN
		SELECT mv.vehi
		INTO v_obj_vehiculo
		FROM MIVEHICULO mv
		WHERE mv.vehi.get_placa() LIKE p_placa;
	v_mantenimientos := v_obj_vehiculo.get_mantenimientos();	
		for i in 1..v_mantenimientos.count loop
 			DBMS_OUTPUT.PUT_LINE('Id del mantenimiento: '||v_mantenimientos(i).get_id_mantenimiento()||' - fecha de mantenimiento: '|| v_mantenimientos(i).get_fecha()||' - estado: '||v_mantenimientos(i).get_estado());
			DBMS_OUTPUT.PUT_LINE('Coste mantenimiento: '||v_mantenimientos(i).calcular_coste_mantenimiento());
             	end loop;
		EXCEPTION
			WHEN NO_DATA_FOUND THEN
				DBMS_OUTPUT.PUT_LINE('El vehiculo con placa '||p_placa||' no existe !');
	END;
/
