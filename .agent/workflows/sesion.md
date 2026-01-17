---
description: Gestión unificada del ciclo de vida de sesiones
---

# Workflow: Sesión

Comando central para iniciar, gestionar y cerrar sesiones de trabajo.
Reemplaza y unifica `/transicion-sesion` y `/encadenar-sesion`.

## Uso
```
/sesion [iniciar | cerrar | estado | catalogo]
```
Si se invoca sin argumentos, muestra el menú principal.

---

## 🚀 /sesion iniciar

Inicia una nueva sesión de trabajo.

### Opciones de Inicio

1. **Nueva Tarea (Desde Cero)**
   - Crea nueva entrada en catálogo.
   - Limpia contexto previo.

2. **Continuar Sesión (Handoff)**
   - Lista sesiones recientes.
   - Lee `_handoff.md`.
   - Carga contexto y artefactos.

3. **Bifurcar Sesión (Branching)**
   - Lista sesiones cerradas que tienen handoffs múltiples.
   - Permite elegir qué rama continuar.

### Comandos Internos
```bash
# Listar sesiones recientes para continuar
/catalogo-sesiones
```

---

## 🏁 /sesion cerrar

Finaliza la sesión actual y guarda el estado.

### Opciones de Cierre

| Opción              | Descripción                               | Cuándo usar                                |
| ------------------- | ----------------------------------------- | ------------------------------------------ |
| **Continuar (1→1)** | Guarda estado para seguir en otra sesión. | Pausas, fin del día, cambio de PC.         |
| **Bifurcar (1→N)**  | Crea múltiples puntos de partida (ramas). | Probar varios enfoques, delegar subtareas. |
| **Standby**         | Pausa sin crear handoff explícito.        | Breve interrupción, volverá pronto.        |
| **Eliminar**        | Borra datos y handoffs de esta sesión.    | Experimentación fallida, pruebas basura.   |

### Flujo de Bifurcación (1→N)
1. **Definir Ramas:** El agente pregunta cuántas y sus nombres.
   - *Ejemplo:* "Rama A: Refactor CSS", "Rama B: Refactor JS"
2. **Generar Handoffs:** Crea archivos `_handoff_{rama}.md` independientes.
   - Cada uno con contexto específico para esa rama.
3. **Actualizar Catálogo:**
   - Marca sesión actual como `cerrada`.
   - Registra `siguientes: [rama-a, rama-b]`.

---

## 📊 /sesion estado

Muestra información de la sesión activa:
- **ID:** uuid-actual
- **Nombre:** Nombre descriptivo
- **Origen:** ¿Viene de otra sesión? (Parent ID)
- **Tiempo activo:** Duración desde inicio
- **Handoffs generados:** Lista si existen

---

## 📂 /sesion catalogo

Alias para `/catalogo-sesiones`.
Muestra árbol de sesiones y estado global.
