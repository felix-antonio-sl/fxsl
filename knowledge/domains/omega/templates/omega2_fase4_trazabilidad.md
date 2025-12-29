# Matriz de Trazabilidad
# Template Omega 2.0 - Fase 4: Coherencia
# Verificación cruzada de las 3 vistas

sistema: "[Nombre del Sistema]"
fecha: "[YYYY-MM-DD]"
version: "1.0"

---

## 1. Trazabilidad: Propósito → Datos

*¿Cada producto/servicio tiene las entidades necesarias para existir?*

| Beneficiario | Producto/Servicio | Entidades Requeridas | ¿Están Definidas? |
| ------------ | ----------------- | -------------------- | ----------------- |
| B-01         | [Producto 1]      | ENT-001, ENT-002     | ✅ / ❌             |
| B-02         | [Producto 2]      | ENT-003              | ✅ / ❌             |

**Huérfanos Detectados:**
- [ ] Productos sin entidades: [Listar]

---

## 2. Trazabilidad: Datos → Procesos

*¿Cada entidad tiene procesos que la gestionan?*

| Entidad | Procesos que la CREAN | Procesos que la MODIFICAN | Procesos que la LEEN |
| ------- | --------------------- | ------------------------- | -------------------- |
| ENT-001 | [PROC-XXX]            | [PROC-YYY]                | [PROC-ZZZ]           |
| ENT-002 | [PROC-001]            | [PROC-002]                | [PROC-003, PROC-004] |

**Huérfanos Detectados:**
- [ ] Entidades sin proceso de creación: [Listar]
- [ ] Entidades que nadie lee: [Listar]

---

## 3. Trazabilidad: Procesos → Propósito

*¿Cada proceso contribuye al valor de algún beneficiario?*

| Proceso  | Beneficiario Servido | Valor Aportado | ¿Justificado? |
| -------- | -------------------- | -------------- | ------------- |
| PROC-001 | B-01                 | [Descripción]  | ✅ / ❌         |
| PROC-002 | B-02                 | [Descripción]  | ✅ / ❌         |

**Huérfanos Detectados:**
- [ ] Procesos sin beneficiario claro: [Listar]

---

## 4. Cobertura de Ciclos de Vida

| Entidad (con estados) | ¿Tiene Ciclo de Vida? | ¿Estado Inicial? | ¿Estado Final? |
| --------------------- | --------------------- | ---------------- | -------------- |
| ENT-002               | ✅ / ❌                 | ✅ / ❌            | ✅ / ❌          |

---

## 5. Resumen de Coherencia

| Dimensión            | Elementos Totales | Huérfanos | % Cobertura |
| -------------------- | ----------------- | --------- | ----------- |
| Propósito → Datos    | [N]               | [X]       | [%]         |
| Datos → Procesos     | [N]               | [X]       | [%]         |
| Procesos → Propósito | [N]               | [X]       | [%]         |

---

## 6. Incertidumbres Pendientes

| ID              | Elemento | Tipo de Incertidumbre      | Responsable de Resolver |
| --------------- | -------- | -------------------------- | ----------------------- |
| [?]-001         | ENT-XXX  | Definición incompleta      | [Persona]               |
| [TBD]-001       | PROC-YYY | Pendiente de confirmación  | [Persona]               |
| [CONFLICTO]-001 | [Tema]   | Stakeholders en desacuerdo | [Mediador]              |

---

## 7. Checklist Final

- [ ] No hay huérfanos en Propósito → Datos
- [ ] No hay huérfanos en Datos → Procesos
- [ ] No hay huérfanos en Procesos → Propósito
- [ ] Todas las incertidumbres tienen responsable
- [ ] Cobertura general ≥ 90%

---
*Criterio de Completitud: Todos los checks marcados ✅*
