# Cómo usar la biblioteca de scripts Oracle DBA

## 1) Prerrequisitos

- Acceso a Oracle con usuario DBA (o privilegios específicos requeridos por script).
- Herramienta cliente: **SQL*Plus** o **SQLcl**.
- Conectividad al ambiente destino (DEV/QA/PROD).

## 2) Flujo recomendado

1. Identifica la necesidad (ejemplo: backup, performance, RAC, Data Guard).
2. Entra a la carpeta de categoría correspondiente bajo `scripts/`.
3. Abre el script y valida:
   - vistas usadas (`DBA_*`, `V$*`, `GV$*`)
   - parámetros (`:USERNAME`, fechas, etc.)
4. Ejecuta en ambiente no productivo.
5. Si aplica en producción, ejecuta con `spool` para guardar evidencia.

## 3) Ejemplos de ejecución

### SQL*Plus

```bash
sqlplus usuario/password@SERVICIO @scripts/performance/01_top_sql_por_cpu.sql
```

### SQLcl

```bash
sql usuario/password@SERVICIO @scripts/rman/01_ultimos_backups_rman.sql
```

### Con spool de auditoría

```sql
SPOOL evidencia_$(date +%Y%m%d).log
@scripts/monitoreo/01_sesiones_activas.sql
SPOOL OFF
```

## 4) Buenas prácticas

- No hardcodear credenciales dentro de scripts.
- Evitar cambios destructivos en scripts genéricos.
- Documentar en encabezado cualquier prerrequisito adicional.


## 5) Paquetes de revisión Senior DBA (sugerido)

Ejecuta por bloques para revisiones profundas:

- **Performance**: `scripts/performance/01..04_*.sql`
- **Resiliencia**: `scripts/rman/01..03_*.sql`, `scripts/dataguard/01..03_*.sql`, `scripts/rac/01..03_*.sql`
- **Seguridad y cumplimiento**: `scripts/seguridad/01..03_*.sql`, `scripts/auditoria/01..02_*.sql`, `scripts/usuarios/01..03_*.sql`
- **Capacidad/almacenamiento**: `scripts/storage/01..03_*.sql`, `scripts/asm/01..02_*.sql`
