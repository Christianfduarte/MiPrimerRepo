/*
  Nombre: 01_estado_pdbs.sql
  Objetivo: listar estado de PDBs en arquitectura multitenant.
  Requiere: SELECT en V$PDBS
  Compatible: Oracle 12c+
*/

SELECT con_id, name, open_mode, restricted, total_size
FROM v$pdbs
ORDER BY con_id;
