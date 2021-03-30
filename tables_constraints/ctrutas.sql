/*==============================================================*/
/* Table: RUTAS                                                 */
/*==============================================================*/
create table RUTAS  (
   ID_RUTA              NUMBER(2)                       not null,
   DESDE                NUMBER(5)                       not null,
   HASTA                NUMBER(5)                       not null,
   DISTANCIA            NUMBER(4,1)                     not null,
   VALOR_TIQUETE        NUMBER(6)                       not null,
   constraint rut_pk_id_ruta primary key (ID_RUTA)
);