/*
  Nombre: 03_top_eventos_espera.sql
  Objetivo: top eventos de espera no idle.
  Requiere: SELECT en V$SYSTEM_EVENT
  Compatible: Oracle 12c+
*/

SELECT *
FROM (
  SELECT
    event,
    total_waits,
    time_waited,
    average_wait
  FROM v$system_event
  WHERE wait_class <> 'Idle'
  ORDER BY time_waited DESC
)
WHERE ROWNUM <= 20;
