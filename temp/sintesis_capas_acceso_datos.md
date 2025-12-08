# Síntesis: El Espacio Entre el Modelo de Datos y la Presentación

> **Tema Central**: Las capas de abstracción, transformación y comunicación que conectan el almacenamiento persistente con la interfaz de usuario.

---

## 1. Arquitectura en Capas

```
┌─────────────────────────────────────────────────────┐
│              CAPA DE PRESENTACIÓN (UI)              │
└─────────────────────────────────────────────────────┘
                         ▲ DTOs, ViewModels, JSON
┌─────────────────────────────────────────────────────┐
│         CAPA DE API (REST, GraphQL, gRPC)           │
└─────────────────────────────────────────────────────┘
                         ▲ Use Cases, Commands/Queries
┌─────────────────────────────────────────────────────┐
│     CAPA DE APLICACIÓN (Use Cases, Services)        │
└─────────────────────────────────────────────────────┘
                         ▲ Entities, Value Objects
┌─────────────────────────────────────────────────────┐
│    CAPA DE DOMINIO (Lógica de Negocio Pura)         │
└─────────────────────────────────────────────────────┘
                         ▲ Repositories, ORMs
┌─────────────────────────────────────────────────────┐
│         CAPA DE ACCESO A DATOS (DAL)                │
└─────────────────────────────────────────────────────┘
                         ▲ SQL, NoSQL, APIs externas
┌─────────────────────────────────────────────────────┐
│              CAPA DE PERSISTENCIA                   │
└─────────────────────────────────────────────────────┘
```

---

## 2. Alternativas y Ejes de Decisión

### 2.1 SQL vs NoSQL

| Eje de Clivaje | **Estructura vs Flexibilidad** |
|----------------|--------------------------------|
| **SQL** | Esquema fijo, ACID, joins, relaciones complejas |
| **NoSQL** | Esquema flexible, escalabilidad horizontal, eventual consistency |

**Elegir SQL**: Datos relacionales, transacciones críticas, integridad  
**Elegir NoSQL**: Esquema cambiante, alta escritura, datos jerárquicos

---

### 2.2 REST vs GraphQL vs gRPC

| Eje de Clivaje | **Control del cliente vs Simplicidad** |
|----------------|----------------------------------------|
| **REST** | Recursos, verbos HTTP, caching nativo |
| **GraphQL** | Cliente define estructura, un endpoint |
| **gRPC** | Binario, streaming, alto rendimiento |

**Elegir REST**: CRUD simple, APIs públicas, caching  
**Elegir GraphQL**: Múltiples clientes, evitar over-fetching  
**Elegir gRPC**: Microservicios internos, latencia crítica

---

### 2.3 ORM vs Query Builder vs SQL Crudo

| Eje de Clivaje | **Productividad vs Control** |
|----------------|------------------------------|
| **ORM** | Mapeo objeto-tabla, abstracción alta |
| **Query Builder** | SQL programático, control medio |
| **SQL Crudo** | Máximo control, mínima abstracción |

**Elegir ORM**: CRUD dominante, desarrollo rápido  
**Elegir Query Builder**: Queries dinámicas complejas  
**Elegir SQL Crudo**: Rendimiento crítico, features específicos de DB

---

### 2.4 Monolito vs Microservicios

| Eje de Clivaje | **Simplicidad vs Autonomía de equipos** |
|----------------|-----------------------------------------|
| **Monolito** | Una unidad, despliegue simple, ACID local |
| **Microservicios** | Servicios independientes, polyglot, complejidad distribuida |

**Elegir Monolito**: Equipo pequeño, dominio no claro, time-to-market  
**Elegir Microservicios**: Equipos autónomos, escala diferenciada, bounded contexts claros

---

### 2.5 Sync vs Async

| Eje de Clivaje | **Inmediatez vs Resiliencia** |
|----------------|-------------------------------|
| **Síncrono** | Request-response, bloqueante, simple |
| **Asíncrono** | Message queues, desacoplado, retry integrado |

**Elegir Sync**: Respuesta inmediata requerida, operaciones cortas  
**Elegir Async**: Procesamiento largo, tolerancia a fallos, event-driven

---

### 2.6 CQRS (Command Query Responsibility Segregation)

| Eje de Clivaje | **Simplicidad vs Optimización por uso** |
|----------------|------------------------------------------|
| **CRUD tradicional** | Mismo modelo para leer y escribir |
| **CQRS** | Modelos separados optimizados por operación |

**Elegir CRUD**: Read/write similares, volumen bajo  
**Elegir CQRS**: Read/write ratio extremo, views desnormalizadas

---

## 3. Transformaciones en el Flujo

```
Row/Document  →  Entity (Domain)  →  DTO  →  JSON/XML
   (Storage)      (Business Logic)  (Transfer)  (Wire)
```

Cada capa transforma los datos para su propósito específico, manteniendo separación de responsabilidades.

---

## 4. Principios Clave

1. **Separación de responsabilidades**: Cada capa tiene un rol claro
2. **Abstracción progresiva**: De lo concreto (storage) a lo abstracto (UI)
3. **Inversión de dependencias**: Dominio no depende de infraestructura
4. **Trade-offs explícitos**: Toda decisión tiene pros y contras
5. **Contexto determina elección**: No hay solución universalmente correcta
