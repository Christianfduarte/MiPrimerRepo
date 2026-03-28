/*
  Nombre: 02_componentes_registry.sql
  Objetivo: estado de componentes Oracle registrados.
  Requiere: SELECT en DBA_REGISTRY
  Compatible: Oracle 12c+
*/

SELECT
  comp_id,
  comp_name,
  version,
  status,
  modified
FROM dba_registry
ORDER BY comp_id;
