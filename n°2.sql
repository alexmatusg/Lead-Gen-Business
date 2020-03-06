/*2. ¿Qué consulta ejecutaría para obtener los ingresos totales recaudados del cliente con una identificación de 2?*/

select sum(amount) from billing where client_id =2