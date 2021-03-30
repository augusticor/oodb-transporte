alter table DETALLES add(
 constraint det_fk_mant_id_mant foreign key (ID_MANTENIMIENTO) references MANTENIMIENTOS (ID_MANTENIMIENTO),
 constraint det_fk_rep_id_rep foreign key (ID_REPUESTO) references REPUESTOS (ID_REPUESTO)
);
