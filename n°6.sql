 /*
 6. ¿Qué consulta ejecutaría para obtener una lista de nombres de clientes y  el número 
 total de clientes potenciales que hemos generado para cada uno de nuestros clientes 
 entre el 1 de enero de 2011 y el 31 de diciembre de 2011?
*/

select a.first_name, a.last_name, count(c.leads_id) from clients a
left join sites b on a.client_id = b.client_id
left join leads c on b.site_id = c.site_id
where c.registered_datetime >="2011/01/01" and c.registered_datetime <= "2011/12/31"
group by a.client_id