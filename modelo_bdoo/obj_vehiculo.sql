-- Objeto vehiculo

create or replace type Obj_vehiculo as object(
	placa				varchar2(6),
	lugar_matricula		number(5),
	id_marca			number(2),
	documento			number(11),
	capacidad			number(2),
	numero				number(3),
	modelo				number(4),
	estado				varchar2(1),
	mantenimientos		mantenimiento_array,
	-- Logic
	member function calcular_deuda_total_vehiculo return number,
	-- toString
	-- Getters
	member function get_placa return varchar2,
	member function get_lugar_matricula return number,
	member function get_id_marca return number,
	member function get_documento return number,
	member function get_capacidad return number,
	member function get_numero return number,
	member function get_modelo return number,
	member function get_estado return varchar2,
	member function get_mantenimientos return mantenimiento_array,
	-- Setters
	member procedure set_lugar_matricula(newLugarM number),
	member procedure set_id_marca(newIdMarca number),
	member procedure set_documento(newDoc number),
	member procedure set_capacidad(newCapacidad number),
	member procedure set_numero(newNumero number),
	member procedure set_modelo(newModelo number),
	member procedure set_estado(newEstado varchar2),
	member procedure set_mantenimientos(newMantenimientos mantenimiento_array)
);
/