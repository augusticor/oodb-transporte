-- Eliminar el modelo orientado a objetos

DROP TABLE MIVEHICULO CASCADE CONSTRAINTS PURGE;
DROP TYPE Obj_vehiculo FORCE;
DROP TYPE mantenimiento_array FORCE;
DROP TYPE Obj_mantenimiento FORCE;
PURGE RECYCLEBIN;