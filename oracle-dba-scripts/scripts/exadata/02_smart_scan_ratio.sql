/*
  Nombre: 02_smart_scan_ratio.sql
  Objetivo: calcular ratio básico de offload smart scan.
  Requiere: SELECT en V$SYSSTAT
  Compatible: Oracle 12c+
*/

WITH s AS (
  SELECT
    SUM(CASE WHEN name = 'cell physical IO bytes eligible for predicate offload' THEN value END) AS eligible,
    SUM(CASE WHEN name = 'cell physical IO interconnect bytes returned by smart scan' THEN value END) AS returned
  FROM v$sysstat
)
SELECT
  eligible,
  returned,
  ROUND((1 - returned / NULLIF(eligible, 0)) * 100, 2) AS pct_offload_ahorro
FROM s;
