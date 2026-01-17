---
description: Análisis de diagnóstico Antigravity con recomendaciones
---

# Workflow: Diagnóstico Antigravity

Analiza el archivo de diagnóstico y genera recomendaciones accionables.

## Ruta por Defecto
`/Users/felixsanhueza/Downloads/Antigravity-diagnostics.txt`

## Pasos

### 1. Obtener Diagnóstico
Instruir al usuario:
> "Ejecuta en VS Code: `Antigravity: Download Antigravity Diagnostics`"
> "El archivo se guardará en Downloads."

### 2. Verificar Archivo
// turbo
```bash
if [ -f "/Users/felixsanhueza/Downloads/Antigravity-diagnostics.txt" ]; then
  echo "✅ Diagnóstico encontrado"
  wc -l /Users/felixsanhueza/Downloads/Antigravity-diagnostics.txt
else
  echo "❌ No encontrado en ruta por defecto"
  echo "Buscar alternativas..."
  ls -t ~/Downloads/Antigravity* 2>/dev/null | head -3
fi
```

### 3. Parsear Secciones Clave
Buscar patrones:
- `Checkpoint summary was too long` → Truncamiento
- `429 Too Many Requests` → Rate limiting
- `failed to create CDP session` → Error navegador
- `VERY LONG TASK` → Renderer lento
- `argument order was not respected` → Error de herramienta

### 4. Generar Reporte
```markdown
# Reporte de Diagnóstico Antigravity
Fecha: {fecha}

## Problemas Detectados

### 🔴 Críticos
- [Descripción]: [Cantidad de ocurrencias]
  - Acción: [Recomendación]

### 🟡 Medios
- ...

### 🟢 Informativos
- ...

## Workflows Recomendados
- `/higiene-antigravity`: Para errores de truncamiento
- `/transicion-sesion`: Si hay saturación de contexto
- `/quota-status`: Si hay errores 429
```

### 5. Guardar Reporte
Crear `.antigravity/diagnosticos/{fecha}_reporte.md`

## Categorías de Errores

| Patrón                | Severidad | Workflow                 |
| --------------------- | --------- | ------------------------ |
| Checkpoint truncated  | 🔴         | /higiene-antigravity     |
| 429 Too Many Requests | 🔴         | /quota-status            |
| CDP session failed    | 🟡         | Reiniciar VS Code        |
| VERY LONG TASK        | 🟡         | Cerrar tabs innecesarias |
| argument order        | 🟢         | Informativo              |
