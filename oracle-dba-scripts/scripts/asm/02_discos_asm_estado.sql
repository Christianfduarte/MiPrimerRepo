/*
  Nombre: 02_discos_asm_estado.sql
  Objetivo: estado de discos ASM por diskgroup.
  Requiere: SELECT en V$ASM_DISK
  Compatible: Oracle 12c+
*/

SELECT
  group_number,
  disk_number,
  name,
  path,
  header_status,
  mode_status,
  state
FROM v$asm_disk
ORDER BY group_number, disk_number;
