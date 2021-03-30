alter table VEHICULOS add(
 constraint veh_fk_lug_lug_mat foreign key (LUGAR_MATRICULA) references LUGARES (ID_LUGAR),
 constraint veh_fk_mar_id_mar foreign key (ID_MARCA) references MARCAS (ID_MARCA),
 constraint veh_fk_prop_prop foreign key (DOCUMENTO) references PERSONAS (DOCUMENTO),
 constraint veh_ck_est check (ESTADO in ('D'/*DISPONIBLE*/,'M'/*MANTENIMIENTO*/,'S'/*FUERA DE SERVICIO*/,'F'/*FUERA DE OPERACION*/) and ESTADO = upper(ESTADO))
);