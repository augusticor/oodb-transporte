-- Objeto mantenimiento

create or replace type Obj_mantenimiento as object(
	id_mantenimiento	number(4),
	placa				varchar2(6),
	fecha				date,
	estado				varchar2(1),
	-- Logic
	member function calcular_coste_mantenimiento return number,
	member function calcular_deuda_mantenimiento return number,
	-- toString
	-- ...
	-- Getters
	member function get_id_mantenimiento return number,
	member function get_placa return varchar2,
	member function get_fecha return date,
	member function get_estado return varchar2,
	-- Setters
	member procedure set_fecha(newFecha date),
	member procedure set_estado(newEstado varchar2)
);
/