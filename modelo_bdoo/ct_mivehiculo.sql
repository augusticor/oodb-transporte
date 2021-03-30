-- Tabla MiVehiculo

create table MIVEHICULO(
	id		number			PRIMARY KEY,
	vehi	Obj_vehiculo
)
NESTED TABLE vehi.mantenimientos STORE AS vehi_mantenimientos_store;
/