/*==============================================================*/
/* Table: VEHICULOS                                             */
/*==============================================================*/
create table VEHICULOS  (
   PLACA                VARCHAR2(6)                     not null,
   LUGAR_MATRICULA      NUMBER(5)                       not null,
   ID_MARCA             NUMBER(2)                       not null,
   DOCUMENTO            NUMBER(11)                      not null,
   CAPACIDAD            NUMBER(2)                       not null,
   NUMERO               NUMBER(3)                       not null,
   MODELO               NUMBER(4)                       not null,
   ESTADO               VARCHAR2(1)                    default 'D' not null,   
   constraint veh_pk_placa primary key (PLACA)
);