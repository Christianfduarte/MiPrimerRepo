/*
  Nombre: 04_uso_temp_por_sesion.sql
  Objetivo: detectar sesiones con alto consumo de TEMP.
  Requiere: SELECT en GV$SORT_USAGE, GV$SESSION
  Compatible: Oracle 12c+
*/

SELECT
  su.inst_id,
  s.sid,
  s.serial#,
  s.username,
  su.tablespace,
  ROUND(SUM(su.blocks) * ts.block_size / 1024 / 1024, 2) AS mb_temp
FROM gv$sort_usage su
JOIN gv$session s ON s.saddr = su.session_addr AND s.inst_id = su.inst_id
JOIN dba_tablespaces ts ON ts.tablespace_name = su.tablespace
GROUP BY su.inst_id, s.sid, s.serial#, s.username, su.tablespace, ts.block_size
ORDER BY mb_temp DESC;
