-- Borra toda la base de datos
drop table CONTRATOS cascade constraints;
drop table DETALLES cascade constraints;
drop table RECORRIDOS cascade constraints;
drop table RUTAS cascade constraints;
drop table MANTENIMIENTOS cascade constraints;
drop table REPUESTOS cascade constraints;
drop table MARCAS cascade constraints;
drop table ASIGNACIONES cascade constraints;
drop table VEHICULOS cascade constraints;
drop table LUGARES cascade constraints;
drop table PERSONAS cascade constraints;
--
purge recyclebin;