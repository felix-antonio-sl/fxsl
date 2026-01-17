---
description: Handoff limpio entre sesiones con mínimo uso de contexto
---

# Workflow: Transición de Sesión

Ejecutar cuando necesites cerrar una sesión y continuar el trabajo en una nueva.

## Cuándo usar
- La sesión actual está saturada (errores de truncamiento)
- Vas a cambiar de contexto drásticamente
- Quieres preservar el estado antes de un reinicio

## Pasos

### 1. Generar Resumen Ejecutivo
Pide al agente:
> "Resume el trabajo realizado en esta sesión en máximo 500 tokens. Incluye: objetivo, logros, pendientes."

### 2. Listar Artefactos Clave
// turbo
```bash
find . -name "*.md" -newer /tmp/session_start 2>/dev/null | head -20
```

### 3. Capturar Próximos Pasos
Pide al agente:
> "Lista los próximos pasos como checklist Markdown."

### 4. Crear Paquete de Handoff
El agente debe crear `.antigravity/sesiones/{id}/_handoff.md` con:
- Resumen ejecutivo
- Lista de artefactos
- Próximos pasos
- Fecha y hora

### 5. Actualizar Catálogo
Ejecuta `/catalogo-sesiones actualizar` para registrar el cierre.

### 6. Instrucciones para Nueva Sesión
En la nueva sesión, inicia con:
> "Lee `.antigravity/sesiones/{id-anterior}/_handoff.md` y continúa el trabajo."

O usa `/encadenar-sesion {id-anterior}` para automatizar.
