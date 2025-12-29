# Omega 2.0: Framework Pragmático de Modelado de Sistemas

**Versión 2.0.0 | Simplificación Radical**

---

## Principio Fundacional

> **Un modelo es útil si y solo si ayuda a tomar decisiones.**

Omega 2.0 no es una teoría. Es un **checklist operativo** para modelar sistemas de forma completa sin parálisis analítica.

---

## Las 3 Vistas (El Mínimo Necesario)

Todo sistema se entiende desde tres ángulos. Si falta uno, el modelo está incompleto.

| Vista         | Pregunta Central       | Responde a                   | Símbolo |
| ------------- | ---------------------- | ---------------------------- | ------- |
| **Propósito** | ¿Para quién y por qué? | Stakeholders, Valor          | 🎯       |
| **Datos**     | ¿De qué hablamos?      | Entidades, Tipos, Relaciones | 📦       |
| **Proceso**   | ¿Cómo cambia?          | Acciones, Estados, Flujos    | ⚙️       |

**Regla de Oro:** Cada elemento importante del sistema DEBE aparecer en las 3 vistas.

---

## Las 5 Fases (El Flujo de Trabajo)

### Fase 0: Inmersión (Nivel -1)

*Antes de modelar, entender.*

**Actividades:**

- [ ] Leer documentos del dominio (leyes, manuales, contratos)
- [ ] Identificar 3-5 stakeholders clave
- [ ] Hacer 1 entrevista exploratoria de 30 min

**Entregable:** `mapa_stakeholders.md`

```markdown
# Mapa de Stakeholders

## Stakeholders Primarios (Beneficiarios directos)
1. [Nombre/Rol]: [Qué necesitan del sistema]

## Stakeholders Secundarios (Afectados indirectamente)
1. [Nombre/Rol]: [Cómo les afecta]

## Fuentes de Información
- [Documento 1]: [Qué aprendí]
- [Persona 1]: [Qué me dijo]
```

**Criterio de Completitud:** "Puedo explicar en 2 minutos qué hace el sistema y para quién."

---

### Fase 1: Propósito (Vista 🎯)

*Anclar el "para qué" antes del "cómo".*

**Actividades:**

- [ ] Definir la Propuesta de Valor (qué problema resuelve)
- [ ] Identificar Beneficiarios y qué reciben
- [ ] Delimitar qué está DENTRO y qué está FUERA del sistema

**Entregable:** `canvas_proposito.md`

```markdown
# Canvas de Propósito

## Propuesta de Valor
[Una frase: "Este sistema permite a [QUIÉN] hacer [QUÉ] para obtener [BENEFICIO]"]

## Beneficiarios
| Beneficiario | Qué Reciben         | Frecuencia            |
| ------------ | ------------------- | --------------------- |
| [Rol 1]      | [Producto/Servicio] | [Diaria/Mensual/etc.] |

## Límites del Sistema
- **Dentro:** [Funciones incluidas]
- **Fuera:** [Funciones explícitamente excluidas]

## Métricas de Éxito
1. [Indicador medible 1]
2. [Indicador medible 2]
```

**Criterio de Completitud:** "Cada beneficiario tiene al menos un producto/servicio asociado."

---

### Fase 2: Datos (Vista 📦)

*Nombrar y tipificar todo lo que importa.*

**Actividades:**

- [ ] Listar todas las Entidades (sustantivos del dominio)
- [ ] Asignar Tipo a cada entidad
- [ ] Definir Relaciones entre entidades
- [ ] Establecer Invariantes (reglas que siempre deben cumplirse)

**Entregable:** `glosario_datos.yml`

```yaml
# Glosario de Datos del Sistema
version: "1.0"
dominio: "[Nombre del Sistema]"

entidades:
  - id: ENT-001
    nombre: "[Nombre Singular]"
    tipo: "[Persona | Documento | Evento | Recurso | Concepto]"
    descripcion: "[Definición en 1 línea]"
    identidad: "[Por ID | Por Valor]"  # ¿Es único por clave o por contenido?
    dueño: "[Rol responsable de su integridad]"
    estados: ["Estado1", "Estado2"]  # Si aplica
    
  - id: ENT-002
    nombre: "[Otro]"
    # ...

relaciones:
  - id: REL-001
    desde: ENT-001
    hacia: ENT-002
    tipo: "[tiene | pertenece_a | crea | aprueba | ...]"
    cardinalidad: "[1:1 | 1:N | N:M]"

invariantes:
  - id: INV-001
    descripcion: "[Regla que siempre debe cumplirse]"
    ejemplo: "Todo Documento debe tener exactamente un Autor"
```

**Criterio de Completitud:** "Cada sustantivo mencionado en Fase 1 tiene una entrada en el glosario."

---

### Fase 3: Proceso (Vista ⚙️)

*Definir cómo cambian las cosas.*

**Actividades:**

- [ ] Identificar Procesos que transforman entidades
- [ ] Definir Estados de cada entidad mutable
- [ ] Mapear Transiciones (qué evento causa qué cambio)
- [ ] Asignar Actores a cada proceso

**Entregable:** `procesos.yml`

```yaml
# Catálogo de Procesos
version: "1.0"

procesos:
  - id: PROC-001
    nombre: "[Verbo en infinitivo + Objeto]"  # Ej: "Aprobar Solicitud"
    proposito: "[Por qué existe este proceso - link a Fase 1]"
    actor: "[Quién lo ejecuta]"
    entrada: ["ENT-XXX"]  # Entidades que consume
    salida: ["ENT-YYY"]   # Entidades que produce o modifica
    precondicion: "[Estado requerido antes de ejecutar]"
    postcondicion: "[Estado garantizado después de ejecutar]"
    
ciclos_de_vida:
  - entidad: ENT-001
    estados:
      - nombre: "Borrador"
        inicial: true
      - nombre: "En Revisión"
      - nombre: "Aprobado"
        final: true
      - nombre: "Rechazado"
        final: true
    transiciones:
      - desde: "Borrador"
        hacia: "En Revisión"
        evento: "Enviar a Revisión"
        actor: "Autor"
      - desde: "En Revisión"
        hacia: "Aprobado"
        evento: "Aprobar"
        actor: "Revisor"
```

**Criterio de Completitud:** "Cada entidad con `estados` en Fase 2 tiene un ciclo de vida definido aquí."

---

### Fase 4: Coherencia (Validación Cruzada)

*Verificar que las 3 vistas son consistentes.*

**Actividades:**

- [ ] Verificar Trazabilidad Propósito→Datos
- [ ] Verificar Trazabilidad Datos→Procesos
- [ ] Verificar Trazabilidad Procesos→Propósito
- [ ] Identificar Huérfanos (elementos sin conexión)

**Entregable:** `matriz_trazabilidad.md`

```markdown
# Matriz de Trazabilidad

## Propósito → Datos
| Beneficiario | Producto/Servicio | Entidades Involucradas |
| ------------ | ----------------- | ---------------------- |
| [Rol]        | [Producto]        | ENT-001, ENT-002       |

## Datos → Procesos
| Entidad | Procesos que la Crean | Procesos que la Modifican | Procesos que la Leen |
| ------- | --------------------- | ------------------------- | -------------------- |
| ENT-001 | PROC-001              | PROC-002, PROC-003        | PROC-004             |

## Procesos → Propósito
| Proceso  | Contribuye al Valor de | ¿Cómo?              |
| -------- | ---------------------- | ------------------- |
| PROC-001 | [Beneficiario]         | [Explicación breve] |

## Huérfanos Detectados
- [ ] Entidades sin proceso que las cree: [Lista]
- [ ] Procesos sin contribución a valor: [Lista]
- [ ] Beneficiarios sin producto definido: [Lista]
```

**Criterio de Completitud:** "No hay huérfanos. Cada elemento tiene conexión en las 3 vistas."

---

## Heurísticas de Extracción de Entidades

¿Cómo encontrar entidades que no son obvias?

### Desde el Lenguaje

| Patrón en el Texto               | Posible Entidad                 |
| -------------------------------- | ------------------------------- |
| "El **Ciudadano** solicita..."   | → Ciudadano (Persona)           |
| "Se genera un **Informe**..."    | → Informe (Documento)           |
| "La **Evaluación** determina..." | ⚠️ ¿Es Proceso o Entidad-Evento? |

**Test:** Si tiene ciclo de vida persistente (se guarda, se consulta después) → Entidad.
Si desaparece al terminar la acción → Es parte del Proceso, no entidad.

### Desde los Procesos

| Si en un Proceso...          | Entonces Existe...             |
| ---------------------------- | ------------------------------ |
| Algo cambia de estado        | Una Entidad Mutable            |
| Se "pasa información" a otro | Una Entidad Documento/Registro |
| Se "consume" algo            | Una Entidad Recurso            |

### Desde el Propósito

| Si el Beneficiario...   | Entonces Existe...              |
| ----------------------- | ------------------------------- |
| "Recibe un Certificado" | Entidad: Certificado (Producto) |
| "Necesita Presupuesto"  | Entidad: Presupuesto (Recurso)  |

---

## Criterios de Atomicidad (Cuándo Dejar de Descomponer)

Un proceso es **atómico** (no requiere más detalle) si:

1. **Un solo actor** puede ejecutarlo de principio a fin
2. **Una sola sesión** de trabajo (sin interrupciones de días)
3. **Un solo sistema** lo soporta (no requiere integración)

Si cualquiera falla → Descomponer en sub-procesos.

---

## Notación para Incertidumbre

El mundo real tiene información incompleta. Usa estos marcadores:

| Marcador      | Significado                                           |
| ------------- | ----------------------------------------------------- |
| `[?]`         | Entidad/Proceso tentativo (necesita confirmación)     |
| `[TBD]`       | Por definir (se sabe que existe pero no los detalles) |
| `[CONFLICTO]` | Stakeholders tienen visiones contradictorias          |

**Regla:** Un modelo con `[?]` es mejor que un modelo "completo" con suposiciones ocultas.

---

## Cuándo Usar Teoría de Categorías

La formalización categórica (pullbacks, functores, adjunciones) es útil para:

- ✅ Verificar que las vistas son matemáticamente consistentes
- ✅ Automatizar validaciones en herramientas
- ✅ Comunicar con otros teóricos

**NO** es necesaria para:

- ❌ El trabajo diario de un analista
- ❌ Comunicar con stakeholders
- ❌ Generar los entregables de las 5 fases

Si necesitas la formalización, consulta `kb_omega_categorical_ontology.yml` como referencia teórica.

---

## Checklist Final del Modelador

Antes de considerar el modelo "listo para uso":

- [ ] **Fase 0:** ¿Puedo explicar el sistema en 2 minutos?
- [ ] **Fase 1:** ¿Cada beneficiario tiene al menos un producto?
- [ ] **Fase 2:** ¿Cada sustantivo importante está en el glosario?
- [ ] **Fase 3:** ¿Cada entidad mutable tiene ciclo de vida?
- [ ] **Fase 4:** ¿La matriz de trazabilidad no tiene huérfanos?
- [ ] **Incertidumbre:** ¿Están marcados los `[?]` y `[TBD]`?

---

*Omega 2.0: Menos teoría, más acción.*
