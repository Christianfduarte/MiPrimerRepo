/*
  Nombre: 03_archivelogs_sin_backup.sql
  Objetivo: identificar archivelogs potencialmente sin respaldo.
  Requiere: SELECT en V$ARCHIVED_LOG
  Compatible: Oracle 12c+
*/

SELECT
  thread#,
  COUNT(*) AS archs_sin_backup,
  MIN(first_time) AS primer_arch,
  MAX(next_time) AS ultimo_arch
FROM v$archived_log
WHERE deleted = 'NO'
  AND NVL(backed_up, 0) = 0
GROUP BY thread#
ORDER BY thread#;
