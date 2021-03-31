-- Body de obj_mantenimiento

create or replace type body Obj_mantenimiento as
	-- Logic
	member function calcular_coste_mantenimiento return number IS
		v_total_mantenimiento NUMBER := 0;
		BEGIN
			SELECT SUM(valor * cantidad)
			INTO v_total_mantenimiento
			FROM DETALLES
			WHERE id_mantenimiento = self.id_mantenimiento;

			RETURN v_total_mantenimiento;
		END;
	member function calcular_deuda_mantenimiento return number IS
		BEGIN
			IF self.estado LIKE 'D' THEN
				RETURN self.calcular_coste_mantenimiento();
			END IF;

			RETURN 0;
		END;
	-- Getters
	member function get_id_mantenimiento return number IS
		BEGIN
			return self.id_mantenimiento;
		END;
	member function get_placa return varchar2 IS
		BEGIN
			return self.placa;
		END;
	member function get_fecha return date IS
		BEGIN
			return self.fecha;
		END;
	member function get_estado return varchar2 IS
		BEGIN
			return self.estado;
		END;
	-- Setters
	member procedure set_fecha(newFecha date) IS
		BEGIN
			self.fecha := newFecha;
		END;
	member procedure set_estado(newEstado varchar2) IS
		BEGIN
			self.estado := newEstado;
		END;
end;
/