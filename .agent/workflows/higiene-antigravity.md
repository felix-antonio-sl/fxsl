---
description: Mantenimiento preventivo del entorno Antigravity
---

# Workflow: Higiene Antigravity

Ejecutar cuando notes:
- Truncamiento de contexto
- Lentitud
- Errores de escritura

## Pasos

### 1. Diagnóstico Rápido
// turbo
```bash
du -sh ~/.gemini/antigravity/brain/*/
```

### 2. Limpieza de Contexto
Si detectas saturación, usa la transición de sesión:
> "Saturación detectada. Ejecuta `/sesion cerrar` para guardar y reiniciar."

### 3. Referencias Cruzadas (Suite Completa)
- **Saturación:** Usar `/sesion cerrar` (opción: continuar o bifurcar)
- **Errores 429:** Usar `/quota-status`
- **Diagnóstico Profundo:** Usar `/diagnostico-ag`

### 4. Reinicio Navegador (Errores CDP)
1. Cierra tabs de Antigravity
2. Reinicia VS Code

### 5. Limpieza de Artefactos Huérfanos
// turbo
```bash
find ~/.gemini/antigravity/brain/ -name "*.md" -mtime +7 | head -10
```
