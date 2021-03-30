/*==============================================================*/
/* Table: CONTRATOS                                             */
/*==============================================================*/
create table CONTRATOS  (
   NUMERO_CONTRATO      NUMBER(4)                       not null,
   DOCUMENTO            NUMBER(11)                      not null,
   FECHA_INICIO         DATE                            not null,
   FECHA_FIN            DATE,
   PORCENTAJE_COMISION  NUMBER(3,1)                    default 10 not null,
   SALARIO_BASICO       NUMBER(8)                       not null,
   constraint contr_pk_num_contr primary key (NUMERO_CONTRATO)
);
