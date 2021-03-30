alter table PERSONAS add(
 constraint per_fk_lug_lug_vive foreign key (LUGAR_VIVE) references LUGARES (ID_LUGAR),
 constraint per_ck_gen check (GENERO in ('M'/*MASCULINO*/,'F'/*FEMENINO*/) and GENERO = upper(GENERO)),
 constraint per_ck_tipo_per check (TIPO in ('C'/*CONDUCTOR*/,'P'/*PROPIETARIO*/) and TIPO = upper(TIPO)),
 constraint per_ck_tipo_doc check (TIPO_DOCUMENTO in ('C'/*CEDULA*/,'T'/*TARJETA*/,'E'/*EXTRANGERIA*/) and TIPO_DOCUMENTO = upper(TIPO_DOCUMENTO))
);