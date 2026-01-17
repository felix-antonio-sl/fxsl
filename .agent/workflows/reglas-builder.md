---
description: Constructor de reglas Antigravity por diálogo guiado
---

# Workflow: Constructor de Reglas

Diálogo guiado para crear y refinar reglas de Antigravity.

## Uso
```
/reglas-builder
```

## Flujo de Diálogo

### Paso 1: Determinar Alcance
> **Agente:** "¿Esta regla aplica a:"
> 1. **Global** - Todas mis sesiones y proyectos
> 2. **Workspace** - Solo este proyecto
> 3. **Sesión** - Solo esta sesión actual

### Paso 2: Categoría
> **Agente:** "¿Qué tipo de regla?"
> 1. Estilo de código/escritura
> 2. Convención de nombres
> 3. Comportamiento del agente
> 4. Preferencia de herramientas
> 5. Otra (describir)

### Paso 3: Redacción
> **Agente:** "Describe la regla en lenguaje natural."
> **Usuario:** "Siempre usar español para comentarios de código"

### Paso 4: Refinamiento
El agente convierte a formato Antigravity Rules:
```markdown
# Regla: Comentarios en Español
- Alcance: workspace
- Categoría: estilo
- Descripción: Usar español para todos los comentarios de código
- Ejemplo: `// Calcula el total` en vez de `// Calculate total`
```

> **Agente:** "¿Es correcta esta regla? (sí/modificar/cancelar)"

### Paso 5: Guardar
Ubicación según alcance:
- Global: `~/.gemini/user/rules/`
- Workspace: `.antigravity/rules/`
- Sesión: `.antigravity/sesiones/{id}/rules/`

// turbo
```bash
mkdir -p .antigravity/rules
echo "Directorio de reglas listo"
```

### Paso 6: Confirmar
> **Agente:** "✅ Regla guardada en {ubicación}"
> "Para ver todas las reglas: `/memoria-gestion {nivel} ver`"

## Ejemplos de Reglas Comunes

### Estilo
- "Preferir funciones pequeñas (< 20 líneas)"
- "Usar nombres descriptivos en español"

### Comportamiento
- "Siempre crear backup antes de modificar archivos"
- "Pedir confirmación antes de borrar"

### Preferencias
- "Usar Markdown para documentación"
- "Preferir YAML sobre JSON para configuración"
