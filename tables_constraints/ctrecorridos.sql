/*==============================================================*/
/* Table: RECORRIDOS                                            */
/*==============================================================*/
create table RECORRIDOS  (
   ID_RECORRIDO         NUMBER(6)                       not null,
   ID_RUTA              NUMBER(2)                       not null,
   ID_ASIGNACION        NUMBER(3)                       not null,
   PASAJEROS            NUMBER(2)                       not null,
   RECAUDO              NUMBER(8)                       not null,
   SALIDA               DATE                            not null,
   LLEGADA              DATE                            not null,
   constraint rec_pk_id_rec primary key (ID_RECORRIDO)
);
