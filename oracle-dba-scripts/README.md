# Oracle DBA Scripts Library

Biblioteca de scripts SQL/PLSQL para administración de Oracle organizada por **categorías técnicas** (operación diaria y plataformas enterprise).

## Categorías disponibles

- `asm` → administración de ASM disk groups
- `auditoria` → consultas de auditoría y cumplimiento
- `dataguard` → monitoreo de Primary/Standby
- `exadata` → diagnóstico de celdas y smart scan
- `mantenimiento` → estado general de objetos y tablespaces
- `monitoreo` → sesiones, bloqueos y salud operativa
- `multitenant` → CDB/PDB
- `networking` → sesiones de red/listener
- `parcheo` → inventario y estado de parches
- `performance` → SQL top, waits, AWR quick checks
- `rac` → estado de instancias/servicios cluster
- `rman` → backup, restore y validación
- `seguridad` → roles, privilegios y hardening
- `storage` → uso de filesystems/tablespaces/datafiles
- `usuarios` → cuentas, perfiles y vencimientos

## Estructura

```text
oracle-dba-scripts/
├── docs/
│   ├── como_usarlo.md
│   └── convenciones.md
└── scripts/
    ├── asm/
    ├── auditoria/
    ├── dataguard/
    ├── exadata/
    ├── mantenimiento/
    ├── monitoreo/
    ├── multitenant/
    ├── networking/
    ├── parcheo/
    ├── performance/
    ├── rac/
    ├── rman/
    ├── seguridad/
    ├── storage/
    └── usuarios/
```

## Cómo usarlo rápidamente

1. Revisa `docs/convenciones.md`.
2. Lee `docs/como_usarlo.md` para flujo completo.
3. Usa `docs/revisiones_senior_dba.md` como checklist Senior DBA.
4. Entra a la categoría que necesitas y ejecuta el script con SQL*Plus o SQLcl.

## Convención de nombres

`NN_descripcion_corta.sql`

Ejemplo: `01_top_sql_por_cpu.sql`.

## Recomendaciones operativas

- Ejecutar primero en QA/UAT.
- Guardar salida en archivos (`spool`) para auditoría.
- Versionar cambios por script, no por carpetas completas.
