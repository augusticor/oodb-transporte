/*==============================================================*/
/* Table: MANTENIMIENTOS                                        */
/*==============================================================*/
create table MANTENIMIENTOS  (
   ID_MANTENIMIENTO     NUMBER(4)                       not null,
   PLACA                VARCHAR2(6)                     not null,
   FECHA                DATE                            not null,
   ESTADO               VARCHAR2(1)                    default 'P' not null,
   constraint mant_pk_id_mant primary key (ID_MANTENIMIENTO)
);