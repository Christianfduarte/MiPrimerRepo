/*
  Nombre: 01_estado_dataguard.sql
  Objetivo: revisar rol, modo de protección y estado Data Guard.
  Requiere: SELECT en V$DATABASE, V$DATAGUARD_STATS
  Compatible: Oracle 12c+
*/

SELECT name, db_unique_name, database_role, open_mode, protection_mode
FROM v$database;

SELECT name, value, unit
FROM v$dataguard_stats
WHERE name IN ('transport lag', 'apply lag');
