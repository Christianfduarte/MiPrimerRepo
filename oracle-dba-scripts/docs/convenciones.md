# Convenciones de scripts Oracle DBA

## Encabezado estándar
Cada archivo SQL debería iniciar con un comentario como este:

```sql
/*
  Nombre: 01_nombre_script.sql
  Objetivo: descripción breve
  Requiere: privilegios necesarios (por ejemplo, SELECT_CATALOG_ROLE)
  Compatible: Oracle 12c+
  Autor: Equipo DBA
*/
```

## Reglas

1. Usar nombres descriptivos.
2. No incluir credenciales en texto plano.
3. Agregar comentarios antes de cada bloque complejo.
4. Si el script modifica datos, incluir validación previa y rollback plan.
