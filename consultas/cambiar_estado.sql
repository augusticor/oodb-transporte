CREATE OR REPLACE PROCEDURE cambiar_estado(id_mantenimiento_in IN number) AS
     v_mantenimiento mantenimientos%rowtype;
     v_obj_vehiculo Obj_vehiculo;
     v_mantenimientos mantenimiento_array;
     v_Obj_mantenimiento Obj_mantenimiento;
     BEGIN
             SELECT *
             INTO v_mantenimiento
            FROM mantenimientos m
             WHERE m.id_mantenimiento = id_mantenimiento_in;
     SELECT mv.vehi
             INTO v_obj_vehiculo
            FROM MIVEHICULO mv
            WHERE mv.vehi.get_placa() LIKE v_mantenimiento.placa;
     v_mantenimientos := v_obj_vehiculo.get_mantenimientos();
     for i in 1..v_mantenimientos.count loop
 		if v_mantenimientos(i).get_id_mantenimiento() = id_mantenimiento_in then
			IF v_mantenimientos(i).get_estado() like 'P' then
    				 v_mantenimientos(i).set_estado('D');
    			 else
     				v_mantenimientos(i).set_estado('P');
     			END IF;
            	EXIT; 
             end if;
             end loop;
update mivehiculo mv set mv.vehi.mantenimientos = v_mantenimientos where mv.vehi.placa LIKE v_mantenimiento.placa;
END;
/
