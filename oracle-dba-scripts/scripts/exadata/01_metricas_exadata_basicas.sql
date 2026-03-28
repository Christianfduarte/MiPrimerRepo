/*
  Nombre: 01_metricas_exadata_basicas.sql
  Objetivo: consultar métricas básicas relacionadas con Exadata (si aplica).
  Requiere: SELECT en V$SYSSTAT
  Compatible: Oracle 12c+
*/

SELECT name, value
FROM v$sysstat
WHERE LOWER(name) LIKE '%cell%'
ORDER BY name;
