-- Su función es crear un itinerario con transbordo entre
--dos paradas de diferente línea. Para eso las condiciones es que cada parada se encuentre
--entre la origen o la transbordo, o entre la destino y la transbordo.
--La parada transbordo se saca por medio de una subconsulta, comprobando que tiene un
--ide_lin2 que coincide con la línea destino. Esto se aplica para ambas líneas y así se
--obtiene el resultado, el cual se ordena posteriormente según las paradas escogidas.
SELECT
p.nom_par AS 'Itinerario'
FROM
paradas p1 JOIN paradas p2 JOIN paradas p
WHERE
p1.nom_par = 'primavera' AND p2.nom_par = 'azul'

AND (((p.ide_par BETWEEN p1.ide_par and (select ide_par from paradas where
ide_lin2=p2.ide_lin))
OR (p.ide_par BETWEEN (select ide_par from paradas where ide_lin2=p2.ide_lin) and
p1.ide_par))
OR ((p.ide_par BETWEEN (select ide_par from paradas where ide_lin2=p1.ide_lin) and
p2.ide_par)
OR (p.ide_par BETWEEN p2.ide_par and (select ide_par from paradas where
ide_lin2=p1.ide_lin))))
AND p1.ide_lin <> p2.ide_lin
AND ( p.ide_lin = p1.ide_lin or p.ide_lin=p2.ide_lin )
ORDER BY
(CASE WHEN p.ide_lin = p1.ide_lin AND p1.orden>(select orden from paradas where
ide_lin2=p2.ide_lin) THEN p.orden else -p.orden END) DESC,
(CASE WHEN p.ide_lin = p2.ide_lin AND p2.orden<(select orden from paradas where
ide_lin2=p1.ide_lin) THEN p.orden else -p.orden END)DESC ;
