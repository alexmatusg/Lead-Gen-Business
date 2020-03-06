/* 8. ¿Qué consulta ejecutaría para obtener una lista de nombres de clientes y el número total de clientes potenciales que 
hemos generado para cada uno de los sitios de nuestros clientes entre el 1 de enero de 2011 y el 31 de diciembre de 2011? 
Solicite esta consulta por ID de cliente. Presente una segunda consulta que muestre todos los clientes, los nombres del sitio
y el número total de clientes potenciales generados en cada sitio en todo momento. */

select a.client_id, concat(a.first_name," ", a.last_name) as name, count(leads_id) as p_clients, b.domain_name, DATE_FORMAT(c.registered_datetime, "%M %d, %Y") as fecha from clients a 
left join sites as b on a.client_id = b.client_id
left join leads as c on b.site_id = c.site_id
where year(registered_datetime) =2011
group by b.domain_name
