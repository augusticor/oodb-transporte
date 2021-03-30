alter table ASIGNACIONES add(
 constraint asig_fk_per_perso  foreign key (DOCUMENTO) references PERSONAS  (DOCUMENTO),
 constraint asig_fk_vehi_placa foreign key (PLACA)     references VEHICULOS (PLACA)
);