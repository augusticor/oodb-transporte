/*==============================================================*/
/* Table: ASIGNACIONES                                          */
/*==============================================================*/
create table ASIGNACIONES  (
   ID_ASIGNACION        NUMBER(6)                       not null,
   DOCUMENTO            NUMBER(11)                      not null,
   PLACA                VARCHAR2(6)                     not null,
   FECHA_INICIO         DATE                            not null,
   FECHA_FIN            DATE,
   constraint asig_pk_id_asig primary key (ID_ASIGNACION)
);
