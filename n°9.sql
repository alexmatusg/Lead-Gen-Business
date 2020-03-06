/* 9. Escriba una sola consulta que recupere los ingresos totales 
recaudados de cada cliente para cada mes del año. Pídalo por ID de cliente. */

SELECT a.client_id,concat(a.first_name," ",a.last_name) as name,sum(b.amount) suma, monthname(b.charged_datetime) as mes,year(b.charged_datetime) as año
from clients a
join billing b ON a.client_id= b.client_id
group by mes,año