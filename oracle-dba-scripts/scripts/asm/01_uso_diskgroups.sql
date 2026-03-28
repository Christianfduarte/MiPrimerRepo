/*
  Nombre: 01_uso_diskgroups.sql
  Objetivo: ver uso de disk groups ASM.
  Requiere: SELECT en V$ASM_DISKGROUP
  Compatible: Oracle 12c+
*/

SELECT
  name,
  state,
  type,
  total_mb,
  free_mb,
  ROUND((1 - (free_mb / NULLIF(total_mb,0))) * 100, 2) AS pct_usado
FROM v$asm_diskgroup
ORDER BY name;
