alter table RUTAS add(
 constraint rut_fk_lug_desde foreign key (DESDE) references LUGARES (ID_LUGAR),
 constraint rut_fk_lug_hasta foreign key (HASTA) references LUGARES (ID_LUGAR)
);

