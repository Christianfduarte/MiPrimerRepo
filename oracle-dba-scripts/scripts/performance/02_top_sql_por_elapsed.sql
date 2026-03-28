/*
  Nombre: 02_top_sql_por_elapsed.sql
  Objetivo: SQL más costosas por elapsed time.
  Requiere: SELECT en V$SQL
  Compatible: Oracle 12c+
*/

SELECT *
FROM (
  SELECT
    sql_id,
    plan_hash_value,
    parsing_schema_name,
    executions,
    elapsed_time,
    cpu_time,
    disk_reads,
    buffer_gets
  FROM v$sql
  WHERE executions > 0
  ORDER BY elapsed_time DESC
)
WHERE ROWNUM <= 30;
