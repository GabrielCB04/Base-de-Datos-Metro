--Esta consulta selecciona las paradas que se encuentren entre dos paradas (origen y
--destino) que se introducen en la condición where y deben pertenecer a una misma línea.
--Esto lo hace buscando todas las paradas cuyo id se encuentre entre los id de las dos
--paradas seleccionadas. En caso de que la parada origen sea una posterior en el orden, se
--ordenará de manera descendiente.
SELECT
p.nom_par AS 'Línea directa'
FROM
paradas p1
JOIN paradas p2 ON p1.ide_lin = p2.ide_lin
JOIN paradas p ON p.ide_par BETWEEN p1.ide_par AND p2.ide_par or p.ide_par BETWEEN
p2.ide_par AND p1.ide_par

WHERE
p1.nom_par = 'invierno'
AND p2.nom_par = 'primavera'
ORDER BY CASE
WHEN p2.orden < p1.orden then p.orden
else -p.orden
end desc;   
