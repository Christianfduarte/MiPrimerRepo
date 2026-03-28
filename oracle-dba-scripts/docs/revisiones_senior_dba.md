# Revisiones Pro para Senior DBA Oracle

Este documento propone un flujo de revisión profunda usando los scripts de la librería.

## Runbook de revisión semanal

1. **Salud general**: `monitoreo`, `mantenimiento`, `storage`.
2. **Rendimiento**: `performance` (top SQL, waits, temp, PGA/SGA).
3. **Resiliencia**: `rman`, `dataguard`, `rac`.
4. **Seguridad y cumplimiento**: `seguridad`, `auditoria`, `usuarios`.
5. **Plataforma**: `exadata`, `asm`, `multitenant`, `parcheo`.

## Evidencias mínimas a guardar

- Snapshot de sesiones y bloqueos.
- Top SQL por CPU/Elapsed y eventos de espera.
- Brechas RMAN (último full/incremental/archivelog).
- Apply lag Data Guard (si existe).
- Servicios/instancias RAC up/down (si aplica).
- Cuentas bloqueadas/expiradas y privilegios de alto riesgo.

## Recomendación de ejecución

```sql
SPOOL revision_semanal_&&fecha..log
-- Ejecutar scripts por categoría
SPOOL OFF
```
