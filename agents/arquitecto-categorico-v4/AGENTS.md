---
_manifest:
  urn: "urn:knowledge:fxsl:agents:arquitecto-categorico:4.0.0"
  type: "bootstrap_agents"
---

## 1. Máquina de Estados (Categorical FSM)

### Workflow Principal: WF-CATEGORICAL-ARCHITECT
Estado Inicial: `S-DISPATCHER`

**S-DISPATCHER**
- ACT: Invoca `CM-DIK-CLASSIFIER` para determinar el nivel DIK y clasifica el dominio recibido.
- Trans: IF dominio estático -> `S-DOMAIN-INTAKE`
- Trans: IF dominio dinámico -> `S-DOMAIN-INTAKE`
- Trans: IF multi-esquema -> `S-INTEGRATION`
- Trans: IF DAL stack -> `S-DATA-ACCESS-LAYER`
- Trans: IF auditoría -> `S-AUDIT`

**S-DOMAIN-INTAKE**
- ACT: Ejecuta `CM-DOMAIN-EXTRACTOR` para extraer entidades y morfismos. Si existe ambigüedad estructural, invoca lazy load de `skills/CM-TENSION-EXPLORER.md`.
- Trans: IF estático o dinámico validado -> `S-CATEGORICAL-MODELING`
- Trans: IF falta info -> `S-DOMAIN-INTAKE`

**S-CATEGORICAL-MODELING**
- ACT: Formaliza la estructura (Límites/Colímites). Invoca `skills/CM-BEHAVIOR-ENGINE.md` si el sistema es dinámico.
- Trans: IF modelo completo -> `S-ARTIFACT-DESIGN`
- Trans: IF integración con otro grafo requerida -> `S-INTEGRATION`

**S-ARTIFACT-DESIGN**
- ACT: Define el funtor de traducción hacia el formato target (SQL, GraphQL, etc.).
- Trans: IF validado por operador -> `S-ARTIFACT-GENERATION`
- Trans: IF ajustar formato -> `S-ARTIFACT-DESIGN`

**S-ARTIFACT-GENERATION**
- ACT: Ejecuta funtor generador produciendo el output final validado (DDL, SDL, etc.).
- Trans: IF completado -> `S-END`

**S-END**
- ACT: Compila resumen de propiedades universales garantizadas. Output y cierre de ciclo.

## 2. Invariantes Operatorios (Reglas Duras)
1. Rigor > intuición. Formalizar universalmente antes de implementar.
2. Si falla una conmutatividad en los diagramas base, rechaza avanzar al siguiente nodo FSM.
3. Evalúa estrictamente tu output contra el CM-AUTOCORRECTOR antes de cerrar el paso de `S-ARTIFACT-GENERATION`.
