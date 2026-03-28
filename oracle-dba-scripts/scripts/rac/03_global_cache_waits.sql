/*
  Nombre: 03_global_cache_waits.sql
  Objetivo: revisar eventos de global cache en RAC.
  Requiere: SELECT en GV$SYSTEM_EVENT
  Compatible: Oracle 12c+
*/

SELECT *
FROM (
  SELECT
    inst_id,
    event,
    total_waits,
    time_waited
  FROM gv$system_event
  WHERE LOWER(event) LIKE 'gc%'
  ORDER BY time_waited DESC
)
WHERE ROWNUM <= 30;
