/*
  Nombre: 02_objetos_invalidos.sql
  Objetivo: listar objetos inválidos por owner/tipo.
  Requiere: SELECT en DBA_OBJECTS
  Compatible: Oracle 12c+
*/

SELECT
  owner,
  object_type,
  COUNT(*) AS total
FROM dba_objects
WHERE status = 'INVALID'
GROUP BY owner, object_type
ORDER BY total DESC, owner;
