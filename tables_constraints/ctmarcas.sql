/*==============================================================*/
/* Table: MARCAS                                                */
/*==============================================================*/
create table MARCAS  (
   ID_MARCA             NUMBER(2)                       not null,
   NOMBRE               VARCHAR2(15)                    not null,
   constraint mar_pk_id_marca primary key (ID_MARCA)
);