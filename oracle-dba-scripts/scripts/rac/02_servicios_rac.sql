/*
  Nombre: 02_servicios_rac.sql
  Objetivo: validar servicios y su distribución RAC.
  Requiere: SELECT en GV$SERVICES
  Compatible: Oracle 12c+
*/

SELECT
  inst_id,
  name,
  network_name,
  creation_date,
  aq_ha_notifications
FROM gv$services
ORDER BY name, inst_id;
