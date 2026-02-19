---
description: resync del agente OpenClaw con docs.openclaw.ai
última_revisión: "2026-02-19"
agente_objetivo: agent_ingeniero_openclaw_composicional.yaml
---

# Workflow: Resync Ingeniero OpenClaw Composicional

Mantiene `agent_ingeniero_openclaw_composicional.yaml` sincronizado con
la documentación oficial dinámica de OpenClaw (`https://docs.openclaw.ai/`).

## Cuándo ejecutar

- Ante un release mayor de OpenClaw (nuevos canales, tools, CLI, arquitectura)
- Si el agente encarnado reporta información desactualizada en una sesión
- Revisión periódica recomendada: cada 1-2 meses

## Pasos

### 1. Revisar la documentación oficial

Leer exhaustivamente las secciones que reflejan partes estructurales del YAML:

| Sección                          | URL                                            |
| -------------------------------- | ---------------------------------------------- |
| Features (canales, tools, nodes) | https://docs.openclaw.ai/concepts/features     |
| Canales soportados               | https://docs.openclaw.ai/channels              |
| Tools e inventario               | https://docs.openclaw.ai/tools                 |
| Providers disponibles            | https://docs.openclaw.ai/providers             |
| Arquitectura Gateway             | https://docs.openclaw.ai/concepts/architecture |
| Multi-agent routing              | https://docs.openclaw.ai/concepts/multi-agent  |
| Configuración                    | https://docs.openclaw.ai/gateway/configuration |
| Nodos                            | https://docs.openclaw.ai/nodes                 |
| CLI reference                    | https://docs.openclaw.ai/cli                   |
| Directorio completo              | https://docs.openclaw.ai/start/docs-directory  |

### 2. Comparar con el YAML actual

Identificar divergencias en estas secciones del agente:

- `CM-CHANNEL-INTEGRATOR`: canales core y plugin, librerías, config keys
- `CM-KB-GUIDANCE-OPENCLAW.routing_map`: nuevas secciones en docs
- `knowledge_base_interaction_and_governance_rules.key_doc_sections`: URLs nuevas
- `CM-TOOLS-DESIGNER`: nuevos tools, tool profiles o grupos
- `agent_identity_and_global_configuration.role`: componentes clave actualizados
- `CM-GATEWAY-ARCHITECT`: cambios en defaults de providers/modelos
- `few_shot_behavior_examples`: comandos CLI desactualizados

### 3. Actualizar el YAML

Aplicar solo los cambios necesarios. Criterio de inclusión:

- ✅ Nuevo canal soportado (core o plugin)
- ✅ Nuevo tool o tool profile documentado
- ✅ Nuevo provider o cambio de modelo default
- ✅ Cambio en comandos CLI oficiales
- ✅ Nueva sección en docs.openclaw.ai no mapeada en `CM-KB-GUIDANCE-OPENCLAW`
- ❌ No cambiar comportamiento del agente (estados, CMs de razonamiento) sin motivo
- ❌ No agregar conocimiento no respaldado por docs.openclaw.ai

### 4. Actualizar la provenance

```yaml
provenance:
  last_modified_at: "YYYY-MM-DD"
  version_notes: "vX.Y.Z - Resync con docs.openclaw.ai (YYYY-MM-DD)"
```

Incrementar versión menor (`1.1.0 → 1.2.0`) si hay cambios de contenido.

### 5. Registrar en el catálogo

Si se incrementó la versión, actualizar la entrada correspondiente en:
`catalog/catalog_master_fxsl.yml`

## Ejemplo de invocación

```
/encarnacion koda/agents/koda-smith/agent_koda_smith.yaml
→ "Ejecutar resync del agente OpenClaw según
   fxsl/agents/ingeniero-openclaw-composicional/resync_openclaw_agent.md"
```

O directamente:

```
Revisa exhaustivamente https://docs.openclaw.ai/ y actualiza
agents/ingeniero-openclaw-composicional/agent_ingeniero_openclaw_composicional.yaml
según el workflow resync_openclaw_agent.md
```
