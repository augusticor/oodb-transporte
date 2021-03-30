-- LLenar la tabla MIVEHICULO de datos

DECLARE
	CURSOR cur_vehiculos IS
							SELECT rownum, v.*
							FROM VEHICULOS v;

	v_placa varchar2(6);

	CURSOR cur_mantenimientos IS
								SELECT *
								FROM MANTENIMIENTOS
								WHERE placa LIKE v_placa;

	mantenimientos mantenimiento_array := mantenimiento_array();
BEGIN
	FOR veh_cur IN cur_vehiculos LOOP
		v_placa := veh_cur.placa;

		FOR man_cur IN cur_mantenimientos LOOP
			mantenimientos.EXTEND;

			mantenimientos(mantenimientos.LAST) := Obj_mantenimiento(
														man_cur.id_mantenimiento,
														man_cur.placa,
														man_cur.fecha,
														man_cur.estado
													);
		END LOOP;

		INSERT INTO MIVEHICULO VALUES (veh_cur.rownum, Obj_vehiculo(
															veh_cur.placa,
															veh_cur.lugar_matricula,
															veh_cur.id_marca,
															veh_cur.documento,
															veh_cur.capacidad,
															veh_cur.numero,
															veh_cur.modelo,
															veh_cur.estado,
															mantenimientos
														));

		mantenimientos.DELETE;
	END LOOP;
END;
/