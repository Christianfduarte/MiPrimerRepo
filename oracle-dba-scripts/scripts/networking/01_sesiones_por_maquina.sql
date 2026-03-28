/*
  Nombre: 01_sesiones_por_maquina.sql
  Objetivo: contar sesiones por máquina origen.
  Requiere: SELECT en V$SESSION
  Compatible: Oracle 12c+
*/

SELECT
  machine,
  COUNT(*) AS total_sesiones
FROM v$session
WHERE type = 'USER'
GROUP BY machine
ORDER BY total_sesiones DESC;
