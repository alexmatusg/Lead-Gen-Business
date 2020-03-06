/* 5. ¿Qué consulta ejecutaría para obtener el número total de clientes potenciales generados
 para cada uno de los sitios entre el 1 de enero de 2011 y el 15 de febrero de 2011? */
 
select a.site_id, a.domain_name, count(b.leads_id), b.registered_datetime from sites a
join leads b on a.site_id = b.site_id
WHERE registered_datetime >= '2011-01-01' AND registered_datetime < '2011-02-15'
group by a.domain_name;