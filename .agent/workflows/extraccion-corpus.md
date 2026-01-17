---
description: Extracción recursiva de corpus extensos con esqueleto semántico
---

# Workflow: Extracción de Corpus

Para procesar documentos extensos (legal, médico, organizacional) sin saturar contexto.

## Patrón: Esqueleto → Búsqueda → Síntesis → Refinamiento

## Fases

### Fase 0: Esqueleto Semántico
**Objetivo:** Crear mapa de navegación basado en estructura Y contenido.

1. **Escaneo estructural:**
   > "Lista todos los headings/secciones del documento {ruta}"

2. **Muestreo de contenido:**
   > "Lee los primeros 2 párrafos de cada sección principal"

3. **Análisis temático:**
   > "Identifica: conceptos clave, entidades, relaciones entre secciones"

4. **Generar esqueleto:**
   Crear `.antigravity/sesiones/{id}/_esqueleto.md`:
   ```markdown
   # Esqueleto: [Nombre Documento]
   
   ## Estructura
   - Sección 1: Título (líneas 1-100)
   - Sección 2: Título (líneas 101-250)
   
   ## Conceptos Clave
   - Concepto A: definición breve
   - Concepto B: relación con A
   
   ## Entidades Identificadas
   - Entidad X: rol/función
   
   ## Secciones Relevantes para Objetivo
   - Sección 2.3: Alta relevancia (contiene X)
   - Sección 4.1: Media relevancia (menciona Y)
   ```

### Fase 1: Búsqueda Dirigida
Usar el esqueleto para focalizar:
// turbo
```bash
grep -n "término_clave" documento.txt | head -20
```

### Fase 2: Muestreo Selectivo
> "Lee las líneas {inicio}-{fin} identificadas en el esqueleto"

Extraer en `.antigravity/sesiones/{id}/_extractos.md`

### Fase 3: Síntesis Iterativa
> "Resume cada fragmento en 1-2 oraciones"
> "Consolida en respuesta coherente"

### Fase 4: Validación
> "Verifica cada afirmación contra la fuente original"
> "Marca incertidumbres con [?]"

## Ejemplo de Uso
```
Usuario: Necesito extraer los artículos sobre presupuesto 
         de emergencia de la Ley 21.000
         
Agente:  Fase 0: Generando esqueleto semántico...
         [Esqueleto creado con 15 secciones, 8 conceptos clave]
         
         Fase 1: Buscando "presupuesto" + "emergencia"...
         [Encontrados 12 fragmentos relevantes]
         
         Fase 2: Extrayendo artículos 45, 47, 52...
         
         Fase 3: Síntesis:
         "El Art. 45 establece que... [cita]"
```
