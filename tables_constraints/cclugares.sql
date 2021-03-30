alter table LUGARES add(
 constraint lug_fk_lug_ubic foreign key (UBICADO) references LUGARES (ID_LUGAR),
 constraint lug_ck_tipo check (TIPO in ('M'/*MUNICIPIO*/,'D'/*DEPARTAMENTO*/,'P'/*PAIS*/) and TIPO = upper(TIPO))
);