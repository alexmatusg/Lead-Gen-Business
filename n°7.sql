/* 7. ¿Qué consulta ejecutaría para obtener una lista de nombres de clientes y el número total de 
clientes potenciales que hemos generado para cada cliente cada mes entre los meses 1 y 6 del año 2011? */

select a.client_id, concat(a.first_name," ", a.last_name) as name, count(c.leads_id) as total, MONTHNAME(registered_datetime) as month
from clients as a
left join sites as b on a.client_id = b.client_id
left join leads as c on b.site_id = c.site_id
WHERE month(registered_datetime) >= 1 
AND month(registered_datetime) <= 6 and year(registered_datetime) = 2011
group by a.client_id


