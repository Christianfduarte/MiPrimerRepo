/*
  Nombre: 01_top_sql_por_cpu.sql
  Objetivo: identificar SQL con mayor consumo de CPU.
  Requiere: SELECT en V$SQL
  Compatible: Oracle 12c+
*/

SELECT *
FROM (
  SELECT
    sql_id,
    parsing_schema_name,
    executions,
    cpu_time,
    elapsed_time,
    buffer_gets
  FROM v$sql
  WHERE executions > 0
  ORDER BY cpu_time DESC
)
WHERE ROWNUM <= 20;
