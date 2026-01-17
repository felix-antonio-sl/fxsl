---
description: Gestión de memoria en 3 niveles (global/workspace/sesión)
---

# Workflow: Gestión de Memoria

Sistema de memoria complementario a Knowledge Items nativos de Antigravity.

## Niveles de Alcance

| Nivel     | Ubicación                     | Uso                              |
| --------- | ----------------------------- | -------------------------------- |
| Global    | `~/.gemini/user/`             | Conocimiento personal permanente |
| Workspace | `.antigravity/conocimiento/`  | Dominio del proyecto             |
| Sesión    | `.antigravity/sesiones/{id}/` | Contexto temporal                |

## Comandos

### Ver memoria
```
/memoria-gestion {nivel} ver
```
Niveles: `global`, `workspace`, `sesion`

### Agregar conocimiento
```
/memoria-gestion {nivel} agregar {archivo.md}
```

### Limpiar
```
/memoria-gestion sesion limpiar
```

## Estructura de Archivos

```
~/.gemini/user/                    # GLOBAL
├── glosario.md                    # Términos personales
├── convenciones.md                # Estilo y preferencias
└── rules/
    └── global_rules.md

{workspace}/.antigravity/          # WORKSPACE
├── catalogo.yml
├── conocimiento/
│   ├── dominio.md                 # Conocimiento de dominio
│   ├── stakeholders.md            # Personas/roles clave
│   └── indice_corpus.md           # Mapa de documentos
├── rules/
│   └── workspace_rules.md
└── sesiones/{id}/                 # SESIÓN
    ├── _contexto.md               # Estado actual
    ├── _esqueleto.md              # Mapa de documento
    ├── _extractos.md              # Fragmentos extraídos
    ├── _handoff.md                # Paquete de transición
    └── rules/
        └── session_rules.md
```

## Pasos de Ejecución

### Para "ver"
// turbo
```bash
case "$1" in
  global)   ls -la ~/.gemini/user/ 2>/dev/null || echo "No existe" ;;
  workspace) ls -la .antigravity/conocimiento/ 2>/dev/null || echo "No existe" ;;
  sesion)   ls -la .antigravity/sesiones/*/  2>/dev/null | head -20 ;;
esac
```

### Para "agregar"
1. Verificar que el archivo existe
2. Copiar a la ubicación correspondiente
3. Confirmar

### Para "limpiar"
1. Listar archivos de sesión
2. Confirmar eliminación
3. Preservar `_handoff.md` si existe

## Integración con KIs Nativos
> Los Knowledge Items de Antigravity se generan automáticamente.
> Este sistema es **complementario**: archivos explícitos que el agente
> puede leer bajo demanda, sin conflicto con KIs.
