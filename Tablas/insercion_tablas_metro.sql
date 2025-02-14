insert into lineas (ide_lin, nom_lin) values (1, 'Linea 1'), (2, 'Linea 2'), (3, 'Linea
3');

INSERT INTO paradas (ide_lin, nom_par, ide_lin2, orden) VALUES (1, 'primavera', 0, 1),
(1, 'verano', 2, 2), (1, 'otoño', 0, 3), (1, 'invierno', 0, 4), (2, 'roja', 0, 1), (2,
'verde', 0, 2), (2, 'verano', 1, 3), (2, 'azul', 0, 4), (3, 'helada', 0, 1), (3, 'fría',
0, 2), (3, 'templada', 0, 3), (3, 'caliente', 0, 4);

insert into disp_lineas values (1, TRUE, TRUE, TRUE, TRUE, TRUE, FALSE, FALSE), (2, TRUE,
TRUE, TRUE, TRUE, TRUE, FALSE, FALSE), (3, TRUE, TRUE, TRUE, TRUE, TRUE, FALSE, FALSE);

INSERT INTO sal_lle_lineas (ide_lin, sal_pri, lle_pri, sal_ult, lle_ult) VALUES (1,
'06:30:00', '07:00:00', '06:30:00', '07:00:00'), (2, '06:30:00', '07:00:00', '06:30:00',
'07:00:00'), (3, '06:30:00', '07:00:00', '06:30:00', '07:00:00');

INSERT INTO fec_ope_lineas (ide_lin, fec_ini, fec_fin) VALUES (1, '2022-01-01', '2022-12-
31'), (2, '2022-01-01', '2022-12-31'), (3, '2022-01-01', '2022-12-31');
