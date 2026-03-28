/*
  Nombre: 03_iorm_consumer_groups.sql
  Objetivo: revisar estadísticas de IORM por consumer group.
  Requiere: SELECT en V$RSRC_CONSUMER_GROUP
  Compatible: Oracle 12c+
*/

SELECT
  name,
  active_sess_limit,
  mgmt_method,
  parallel_degree_limit_p1
FROM v$rsrc_consumer_group
ORDER BY name;
