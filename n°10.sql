/* 10. Escriba una sola consulta que recupere todos los sitios que posee cada cliente. Agrupe los resultados para
 que cada fila muestre un nuevo cliente. Se volverá más claro cuando agregue un nuevo campo llamado 'sitios' que
 tiene todos los sitios que posee el cliente. (SUGERENCIA: use GROUP_CONCAT) */
 
 select concat(a.first_name," ", a.last_name) as name, GROUP_CONCAT(b.domain_name, " / ") as sites from clients as a
 join sites as b on a.client_id = b.client_id
 group by a.client_id
 
 