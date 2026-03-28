/*
  Nombre: 02_servicios_y_handlers.sql
  Objetivo: revisar servicios disponibles y handlers locales.
  Requiere: SELECT en V$ACTIVE_SERVICES
  Compatible: Oracle 12c+
*/

SELECT
  name,
  network_name,
  creation_date
FROM v$active_services
ORDER BY name;
