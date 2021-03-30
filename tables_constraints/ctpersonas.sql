/*==============================================================*/
/* Table: PERSONAS                                              */
/*==============================================================*/
create table PERSONAS  (
   DOCUMENTO            NUMBER(11)                      not null,
   TIPO_DOCUMENTO       VARCHAR2(1)                    default 'C' not null,      
   LUGAR_VIVE           NUMBER(5)                       not null,
   NOMBRE               VARCHAR2(20)                    not null,
   APELLIDO             VARCHAR2(20)                    not null,
   GENERO               VARCHAR2(1)                    default 'M' not null,
   TIPO                 VARCHAR2(1)                    default 'C' not null,
   LICENCIA_CONDUCCION  NUMBER(11),
   FECHA_AFILIACION     DATE,
   FECHA_NACIMIENTO     DATE,
   NUMERO_INFRACCIONES  NUMBER(2),
   constraint per_pk_doc primary key (DOCUMENTO)
);