alter table CONTRATOS add(
 constraint contr_fk_cond_doc foreign key (DOCUMENTO) references PERSONAS (DOCUMENTO), 
 constraint contr_ck_porc check (PORCENTAJE_COMISION between 0 and 60)
);