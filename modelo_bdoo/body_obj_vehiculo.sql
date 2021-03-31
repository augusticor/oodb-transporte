-- Body obj_vehiculo

create or replace type body obj_vehiculo as
	-- Logic
	member function calcular_deuda_total_vehiculo return number IS
		v_total_deuda NUMBER := 0;
		BEGIN
			IF self.mantenimientos.COUNT > 0 THEN
				FOR i IN self.mantenimientos.FIRST..self.mantenimientos.LAST LOOP
					v_total_deuda := v_total_deuda + self.mantenimientos(i).calcular_deuda_mantenimiento();
				END LOOP;

				RETURN v_total_deuda;
			END IF;

			RETURN -1;
		END;
	-- Getters
	member function get_placa return varchar2 IS
		BEGIN
			return self.placa;
		END;
	member function get_lugar_matricula return number IS
		BEGIN
			return self.lugar_matricula;
		END;
	member function get_id_marca return number IS
		BEGIN
			return self.id_marca;
		END;
	member function get_documento return number IS
		BEGIN
			return self.documento;
		END;
	member function get_capacidad return number IS
		BEGIN
			return self.capacidad;
		END;
	member function get_numero return number IS
		BEGIN
			return self.numero;
		END;
	member function get_modelo return number IS
		BEGIN
			return self.modelo;
		END;
	member function get_estado return varchar2 IS
		BEGIN
			return self.estado;
		END;
	member function get_mantenimientos return mantenimiento_array IS
		BEGIN
			return self.mantenimientos;
		END;
	-- Setters
	member procedure set_lugar_matricula(newLugarM number) IS
		BEGIN
			self.lugar_matricula := newLugarM;
		END;
	member procedure set_id_marca(newIdMarca number) IS
		BEGIN
			self.id_marca := newIdMarca;
		END;
	member procedure set_documento(newDoc number) IS
		BEGIN
			self.documento := newDoc;
		END;
	member procedure set_capacidad(newCapacidad number) IS
		BEGIN
			self.capacidad := newCapacidad;
		END;
	member procedure set_numero(newNumero number) IS
		BEGIN
			self.numero := newNumero;
		END;
	member procedure set_modelo(newModelo number) IS
		BEGIN
			self.modelo := newModelo;
		END;
	member procedure set_estado(newEstado varchar2) IS
		BEGIN
			self.estado := newEstado;
		END;
	member procedure set_mantenimientos(newMantenimientos mantenimiento_array) IS
		BEGIN
			self.mantenimientos := newMantenimientos;
		END;
end;
/