/*==============================================================*/
/* Table: DETALLES                                              */
/*==============================================================*/
create table DETALLES  (
   ID_REPUESTO          NUMBER(2)                       not null,
   ID_MANTENIMIENTO     NUMBER(4)                       not null,
   VALOR                NUMBER(7)                       not null,
   CANTIDAD             NUMBER(2)                       not null,
   constraint det_pk_id_rep_man primary key (ID_REPUESTO, ID_MANTENIMIENTO)
);