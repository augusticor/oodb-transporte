/*==============================================================*/
/* Table: REPUESTOS                                             */
/*==============================================================*/
create table REPUESTOS  (
   ID_REPUESTO          NUMBER(2)                       not null,
   ID_MARCA             NUMBER(2)                       not null,
   NOMBRE               VARCHAR2(20)                    not null,
   VALOR                NUMBER(7)                       not null,
   STOCK                NUMBER(2)                       not null,
   constraint rep_pk_id_rep primary key (ID_REPUESTO)
);