---
description: Catálogo centralizado de workspaces y sesiones con encadenamiento
---

# Workflow: Catálogo de Sesiones

Gestiona un registro centralizado de todas las sesiones de trabajo.

## Archivo de Catálogo
Ubicación: `{workspace}/.antigravity/catalogo.yml`

## Comandos

### Ver árbol de sesiones (Visualización Jerárquica)
// turbo
```bash
/catalogo-sesiones arbol
```

### Otras opciones
- `/catalogo-sesiones`: Ver lista plana
- `/catalogo-sesiones actualizar`: Actualizar timestamp sesión actual
- `/catalogo-sesiones buscar {tag}`: Filtrar por tag

## Estructura de Datos (v2)

```yaml
workspace:
  nombre: "fxsl"
  ruta: "/Users/felixsanhueza/Developer/fxsl"
  creado: "2026-01-16"

sesiones:
  - id: "sesion-padre"
    nombre: "Diseño API"
    estado: "cerrada"
    cadena:
      tipo: "bifurcacion"
      siguientes: ["rama-rest", "rama-graphql"]

  - id: "rama-rest"
    nombre: "Impl. REST"
    estado: "activa"
    cadena:
      tipo: "continuacion"
      anterior: "sesion-padre"
      rama: "REST"

  - id: "rama-graphql"
    nombre: "Impl. GraphQL"
    estado: "standby"
    cadena:
      tipo: "continuacion"
      anterior: "sesion-padre"
      rama: "GraphQL"
```

## Pasos de Ejecución "Arbol"

El agente debe parsear el YAML y renderizar ASCII art:

```
Diseño API (cerrada)
├── Impl. REST (activa) 🟢
└── Impl. GraphQL (standby) 🟡
```

## Notas
- **Migración:** Si detecta formato antiguo (`siguiente: string`), debe convertirlo a `siguientes: []`.
