/*
  Nombre: 02_pdbs_sin_save_state.sql
  Objetivo: PDBs sin estado persistente de apertura.
  Requiere: SELECT en CDB_PDBS y DBA_PDB_SAVED_STATES
  Compatible: Oracle 12.2+
*/

SELECT
  p.con_id,
  p.pdb_name,
  p.status,
  NVL(s.state, 'NOT_SAVED') AS saved_state
FROM cdb_pdbs p
LEFT JOIN dba_pdb_saved_states s
  ON s.con_id = p.con_id
ORDER BY p.con_id;
