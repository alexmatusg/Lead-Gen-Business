/* 4. ¿Qué consulta ejecutaría para obtener el número total de sitios creados por 
mes por año para el cliente con una identificación de 1? ¿Qué pasa con el cliente = 20? */

select client_id, count(site_id), monthname(created_datetime), year(created_datetime) from sites where client_id=1
group by created_datetime;