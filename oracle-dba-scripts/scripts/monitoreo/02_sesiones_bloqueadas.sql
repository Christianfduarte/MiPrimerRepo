/*
  Nombre: 02_sesiones_bloqueadas.sql
  Objetivo: identificar blockers y waiters en tiempo real.
  Requiere: SELECT en GV$SESSION
  Compatible: Oracle 12c+
*/

SELECT
  w.inst_id AS waiter_inst,
  w.sid AS waiter_sid,
  w.serial# AS waiter_serial,
  w.username AS waiter_user,
  w.blocking_instance,
  w.blocking_session,
  b.username AS blocker_user,
  w.event,
  w.seconds_in_wait
FROM gv$session w
LEFT JOIN gv$session b
  ON b.inst_id = w.blocking_instance
 AND b.sid = w.blocking_session
WHERE w.blocking_session IS NOT NULL
ORDER BY w.seconds_in_wait DESC;
