/*
  Nombre: 02_lag_y_apply_rate.sql
  Objetivo: validar lag y rate de apply en standby.
  Requiere: SELECT en V$DATAGUARD_STATS
  Compatible: Oracle 12c+
*/

SELECT
  name,
  value,
  unit,
  time_computed
FROM v$dataguard_stats
WHERE name IN ('transport lag', 'apply lag', 'apply finish time')
ORDER BY name;
