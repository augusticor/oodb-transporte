alter table REPUESTOS add(
 constraint rep_fk_mar_id_mar foreign key (ID_MARCA) references MARCAS (ID_MARCA)
);
