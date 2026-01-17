---
description: Estado de quota y próxima renovación (Cockpit + API + Inferencia)
---

# Workflow: Estado de Quota

Informa el uso de quota mediante múltiples métodos.

## Métodos Disponibles

### 1. Antigravity Cockpit (Recomendado)
Si tienes instalada la extensión "Antigravity Cockpit":
- Presiona `Ctrl/Cmd+Shift+Q`
- O revisa la barra de estado.
Muestra quota real, countdown y reset exacto.

### 2. API Local (Experimental)
// turbo
Intenta consultar el language server local:
```bash
# Buscar proceso
PID=$(pgrep -f "antigravity" | head -1)
if [ -n "$PID" ]; then
   # Intentar encontrar puerto (esto puede variar según versión)
   PORT=$(lsof -p $PID -i -P 2>/dev/null | grep LISTEN | awk '{print $9}' | cut -d: -f2 | head -1)
   if [ -n "$PORT" ]; then
      echo "📡 Antigravity LS detectado en puerto $PORT"
      # Nota: Se requeriría token de auth para curl real
      echo "⚠️ Para quota exacta, usa el Cockpit (método 1)"
   fi
else
   echo "❌ Proceso Antigravity no detectado"
fi
```

### 3. Inferencia (Fallback)
Analiza el diagnósticos en busca de errores recientes.

// turbo
```bash
DIAG="/Users/felixsanhueza/Downloads/Antigravity-diagnostics.txt"
if [ -f "$DIAG" ]; then
  COUNT=$(grep -c "429 Too Many Requests" "$DIAG" 2>/dev/null)
  LAST=$(grep "429 Too Many Requests" "$DIAG" 2>/dev/null | tail -1 | cut -c 1-24)
  
  echo "📊 Estado Inferido:"
  echo "├── Errores 429 totales: $COUNT"
  if [ -n "$LAST" ]; then
     echo "└── Último error: $LAST"
     echo "💡 Si es reciente (<1h), tu quota está baja/agotada."
  else
     echo "└── Sin errores recientes. Quota saludable ✅"
  fi
else
   echo "ℹ️ Ejecuta 'Antigravity: Download Diagnostics' para inferencia"
fi
```

## Renovación Estimada
| Plan | Frecuencia   |
| ---- | ------------ |
| Free | Semanal      |
| Pro  | Cada 5 horas |
