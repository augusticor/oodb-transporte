alter table MANTENIMIENTOS add(
 constraint mant_fk_veh_placa foreign key (PLACA) references VEHICULOS (PLACA),
 constraint mant_ck_est check (ESTADO in ('P'/*PAGADO*/,'D'/*DEUDA*/) and ESTADO = upper(ESTADO))
);