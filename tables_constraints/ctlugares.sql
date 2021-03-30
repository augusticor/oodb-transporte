/*==============================================================*/
/* Table: LUGARES                                               */
/*==============================================================*/
create table LUGARES  (
   ID_LUGAR             NUMBER(5)                       not null,
   NOMBRE               VARCHAR2(20)                    not null,
   TIPO                 VARCHAR2(1)                    default 'M' not null,
   UBICADO              NUMBER(5),
   constraint lug_pk_id_lug primary key (ID_LUGAR)
);