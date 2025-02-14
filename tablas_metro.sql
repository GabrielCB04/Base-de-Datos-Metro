create table Lineas ( ide_lin int unsigned not null AUTO_INCREMENT primary key, nom_lin
varchar(50) );

create table fec_ope_lineas (ide_lin int unsigned not null, fec_ini date, fec_fin date,
FOREIGN KEY (ide_lin) REFERENCES lineas(ide_lin) );

create table paradas ( ide_par int unsigned not null AUTO_INCREMENT primary key, ide_lin
int unsigned not null, nom_par varchar(50), ide_lin2 int unsigned not null, orden int,
FOREIGN KEY (ide_lin) REFERENCES lineas(ide_lin),FOREIGN KEY (ide_lin) REFERENCES
lineas(ide_lin) );

create table disp_lineas ( ide_lin int unsigned not null, dis_LUN boolean, dis_MAR
boolean, dis_MIE boolean, dis_JUE boolean, dis_VIE boolean, dis_SAB boolean, disp_DOM
boolean, FOREIGN KEY (ide_lin) REFERENCES lineas(ide_lin) );

create table sal_lle_lineas ( ide_lin int unsigned not null, sal_pri time, lle_pri time,
sal_ult time, lle_ult time, FOREIGN KEY (ide_lin) REFERENCES lineas(ide_lin) );

