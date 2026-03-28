/*
  Nombre: 01_estado_instancias_rac.sql
  Objetivo: visualizar estado de instancias RAC.
  Requiere: SELECT en GV$INSTANCE
  Compatible: Oracle 12c+
*/

SELECT
  inst_id,
  instance_name,
  host_name,
  version,
  status,
  parallel,
  thread#
FROM gv$instance
ORDER BY inst_id;
