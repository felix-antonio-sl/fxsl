---
description: Registrar continuación de una sesión anterior (Unificado en /sesion)
---

# Workflow: Encadenar Sesión

> **NOTA:** Este workflow ha sido integrado en `/sesion iniciar`.
> Se mantiene como utilidad de bajo nivel.

## Uso
```
/encadenar-sesion {id-anterior} [--rama {nombre}]
```

## Pasos Actualizados (v5)

### 1. Buscar Handoff Específico
Si se especifica `--rama {nombre}`:
   - Buscar `_handoff_{nombre}.md`
   - Si no existe, buscar `_handoff.md` genérico

### 2. Validar y Cargar
// turbo
```bash
ID=$1
RAMA="${2:---rama}" # default empty if not set properly logic needed here
# Simple check
if [ -d ".antigravity/sesiones/$ID" ]; then
   echo "✅ Sesión encontrada"
else
   echo "❌ No existe sesión $ID"
fi
```

### 3. Actualizar Catálogo (Bifurcación)
Si es una rama:
- Registra `tipo: bifurcacion`
- Registra `rama: {nombre}`
- Linkea `anterior: {id-padre}`

### 4. Recuperar Contexto
Lee el handoff y carga estado.
