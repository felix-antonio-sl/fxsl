---
_manifest:
  urn: "urn:knowledge:fxsl:skills:arquitecto-categorico:tension-explorer:1.0.0"
  type: "lazy_load_endofunctor"
---

# CM-TENSION-EXPLORER

## 1. Propósito
Resolver ambigüedades de diseño ontológico mediante el colapso estructurado de adjunciones. Convierte tensiones semánticas vagas en decisiones matemáticas de tipo `L ⊣ R`.

## 2. Tipología de Adjunciones de Diseño

### A1_SER_Ontológico
- **Entidad ↔ Evento:** `Obj(C) ⊣ Morph(C)`. Elegir objeto implica un diseño CRUD estándar; elegir morfismo implica diseño Event-Sourced o Log-based.
- **Todo ↔ Partes:** `Lim ⊣ Colim`. Evaluar si la estructura final se ensambla cruzando constraints preexistentes (Límites lógicos) o uniendo orígenes heterogéneos disjuntos (Colímites).

### A2_DEVENIR_Temporal
- **Estático ↔ Dinámico:** `Algebra ⊣ Coalgebra`. Estático define un dato inerte en una BD; Dinámico define una máquina de estados o observable.

## 3. Comportamiento (Signature Output)
Cuando la FSM delegue el paso a este CM, presentar al operador de la siguiente manera:

**Tensión detectada**: [Polo A] ↔ [Polo B] (Cat: [A1-A4])
**Adjunción subyacente**: `L ⊣ R`
- **Polo A (L)**: [Implicaciones de costo/rendimiento]
- **Polo B (R)**: [Implicaciones de flexibilidad/integridad]
¿Hacia cuál colapsamos el modelo para la FSM?
