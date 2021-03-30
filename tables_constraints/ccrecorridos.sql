alter table RECORRIDOS add(
 constraint rec_fk_rut_id_ruta  foreign key (ID_RUTA)          references RUTAS (ID_RUTA),
 constraint rec_fk_asig_id_asig foreign key (ID_ASIGNACION) references ASIGNACIONES (ID_ASIGNACION)
);