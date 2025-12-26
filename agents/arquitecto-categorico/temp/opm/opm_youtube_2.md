**Contenido Detallado de la Guía Completa de MBSE OPM y UP Cloud**

**Sección 600: Comportamiento Condicional y Decisiones**

* **611 - Condiciones y Decisiones Simples**
  * **Comportamiento Condicional y Nodos de Decisión**: Los sistemas complejos, como un sistema para crear modelos OPM en Up Cloud, exhiben un comportamiento complejo que incluye el comportamiento condicional y la presencia de nodos de decisión. Los **nodos de decisión** son objetos informáticos que representan elecciones, permitiendo que un sistema pueda tomar dos o más rutas diferentes en ciertas etapas de su ciclo de vida. No es obligatorio en OPM, pero es una buena práctica nombrar un nodo de decisión como una pregunta para clarificar su propósito.
  * **Objetos Booleanos**: Un nodo de decisión con dos estados opuestos, como "Sí" y "No", se denomina **objeto booleano**. Cada estado conduce a un curso de acción diferente.
  * **Enlaces de Condición (Condition Links)**: Para modelar las diferentes rutas que puede tomar la ejecución del sistema, se utilizan **enlaces de condición**. Estos son enlaces procedimentales que conectan objetos a procesos. Un enlace de condición, específicamente un **enlace de condición de instrumento** (instrument condition link), indica que el objeto o estado de origen es una condición para la ocurrencia del proceso conectado. Si el objeto de origen no existe o no está en el estado requerido, el proceso conectado se salta. Por ejemplo, si una función principal no está suficientemente detallada (estado "No"), un proceso de construcción ocurre; de lo contrario, se salta.
  * **Diferencia entre Enlaces de Condición Instrumental y Enlaces de Instrumento**: Es crucial distinguir entre un enlace de condición y un **enlace de instrumento** (instrument link) que no es una condición. En un enlace de condición, si la condición no se cumple, el proceso se salta y se realiza el siguiente proceso en la línea de tiempo. Sin embargo, si un proceso está conectado por un enlace de instrumento (no de condición) y el objeto requerido no existe o no está en el estado necesario, la ejecución del sistema se detendrá al llegar a ese proceso, y solo se reanudará cuando el instrumento exista o transicione al estado requerido.

* **612 - Decisiones Complejas**
  * **Operadores Lógicos en OPM: AND, OR y EXOR**: OPM permite el uso de operadores lógicos (AND, OR, EXOR) en relación con los enlaces de condición para modelar decisiones más complejas.
  * **Relación EXOR (OR Exclusivo)**: Este operador lógico se utiliza cuando **solo una** de dos o más opciones es una condición para que un proceso ocurra. Es una relación lógica entre dos o más enlaces procedimentales del mismo tipo, conectados al mismo objeto o proceso, que expresa que **exactamente uno** de esos enlaces es aplicable cuando el sistema se ejecuta. Por ejemplo, para un proceso de búsqueda de alojamiento, solo una de las tres opciones de criterios de búsqueda (rango de precios, calificación del anfitrión, número de habitaciones) debe ser una condición para que la búsqueda se ejecute.

* **621 - AND y OR Lógicos**
  * **Relación OR**: Una relación lógica que se aplica a dos o más enlaces procedimentales del mismo tipo, conectados al mismo objeto o proceso, expresando que **cualquier combinación** de esos enlaces es aplicable cuando el sistema se ejecuta. Se utiliza para mostrar que una o más condiciones pueden causar un resultado, como retrasar un lanzamiento si *al menos una* de varias verificaciones (ej. estado del complejo de lanzamiento, tiempo, área de lanzamiento) resulta en un fallo.
  * **Relación AND**: Una relación lógica que se aplica a dos o más enlaces procedimentales del mismo tipo, que se originan o llegan a diferentes puntos en el contorno de un "thing" (objeto/proceso), expresando que **todos** esos enlaces son aplicables cuando el sistema se ejecuta. Es el valor por defecto cuando se conectan múltiples enlaces al mismo proceso. Por ejemplo, para que un lanzamiento se lleve a cabo, *todas* las condiciones (complejo operacional, clima adecuado, área despejada) deben cumplirse.

* **622 - EXOR Lógico y Condiciones de Consumo**
  * **Enlace de Condición de Consumo (Consumption Condition Link)**: Un enlace que conecta un objeto o estado a un proceso, indicando que el objeto o estado es una condición para la ocurrencia del proceso, y que, si el proceso se ejecuta, el objeto o estado será "consumido". Si el objeto de origen no existe o no está en el estado de origen, el proceso conectado se salta.
  * **Aplicación de EXOR para requerir exactamente una condición**: La relación EXOR se utiliza para especificar que, de múltiples opciones, *exactamente una* debe cumplirse. A diferencia de la relación OR, que permite que una, dos o todas las condiciones se cumplan, EXOR exige la exclusividad. Por ejemplo, un proceso de retraso de lanzamiento podría requerir que *exactamente una* de tres condiciones (componente defectuoso, velocidad del viento alta, área perturbada) se cumpla.
  * **Enlaces de Invocación para reiniciar procesos**: Un **enlace de invocación** (invocation link) permite que un proceso invoque (reinicie) otro proceso. Esto es útil para modelar la naturaleza cíclica o iterativa de un proceso. Por ejemplo, si un proceso de lanzamiento se retrasa, un enlace de invocación puede reiniciar el conjunto de verificaciones previas al lanzamiento. Al reiniciar, ciertos subprocesos pueden omitirse si sus condiciones de entrada (por ejemplo, el objeto ya está en el estado requerido) ya se cumplen.

**Sección 630: Rutas de Ejecución (Paths)**

* **631 - Rutas Simples**
  * **Rutas de Ejecución (Paths)**: Son una forma más compacta y menos detallada de representar un sistema sin la necesidad de refinar un Diagrama de Sistema (SD) mediante la creación de OPDs adicionales. Una ruta es una serie de dos o más enlaces procedimentales consecutivos.
  * **Etiquetas de Ruta (Path Labels)**: Para resolver la ambigüedad en el flujo de ejecución cuando múltiples enlaces pueden salir de un proceso, se utilizan **etiquetas de ruta**. Una etiqueta de ruta es una etiqueta adjunta a todos los enlaces que pertenecen a la misma ruta de ejecución. Estas etiquetas permiten seguir hilos de ejecución específicos. Aunque no son procesos en sí, son "etiquetas" que permiten expresar y seguir secuencias de ejecución.

* **632 - Rutas Complejas**
  * **Par de Enlaces de Entrada/Salida (In/Out Link Pair)**: Un par de enlaces procedimentales (entrada/salida) que indican un cambio de estado o valor de un objeto. Estos pares ayudan a modelar cómo un proceso transforma un objeto a través de diferentes estados o valores.
  * **Uso de etiquetas de ruta para resolver ambigüedad y especificar escenarios**: Las etiquetas de ruta son fundamentales para resolver la ambigüedad cuando hay múltiples enlaces que salen de un proceso, asegurando que el flujo de ejecución sea claro. Permiten especificar transiciones de estado de manera inequívoca. Las etiquetas de ruta también pueden usarse para especificar una **ruta de ejecución** que contenga más de dos enlaces y que no necesariamente se realicen en secuencia. Uno o más etiquetas de ruta que determinan un conjunto específico de enlaces procedimentales a seguir definen un **escenario**. La utilidad de las rutas crece con la complejidad del sistema, permitiendo modelar múltiples escenarios basados en decisiones, eventos y probabilidades.

**Sección 700: Detalles Avanzados del Modelo**

* **712 - Invocación Proceso-a-Proceso**
  * **Enlaces de Invocación**: Permiten que un proceso invoque (reinicie) otro proceso. Son particularmente útiles para modelar la naturaleza cíclica o iterativa de un proceso. Por ejemplo, en un sistema de refrigeración, el proceso de "evaporación" puede invocar el proceso principal de "refrigeración por compresión de vapor de alimentos" para expresar su naturaleza iterativa y cíclica. Identificar el estado actual del refrigerante puede ayudar a determinar qué parte del refrigerador está fallando, lo que puede llevar a una reparación y reiniciar el ciclo.

* **721 - Duración del Proceso**
  * **Duración del Proceso**: Es el tiempo que tarda un proceso en ejecutarse, y puede ser fija o distribuida aleatoriamente.
  * **Duración Nominal del Proceso**: Es la duración esperada, media, promedio o normal de un proceso. Se indica dentro de la elipse del proceso, debajo del nombre del proceso y la unidad de tiempo.
  * **Especificación de Duraciones Mínima y Máxima**: Las duraciones mínimas y máximas de un proceso se especifican añadiéndolas a la izquierda y a la derecha de la duración esperada, respectivamente. Esto permite modelar rangos de tiempo para la ejecución de un proceso.

* **722 - Excepción del Proceso**
  * **Excepciones por Tiempo Extra (Overtime)**: En algunos sistemas, ciertos procesos pueden necesitar activarse dependiendo del paso del tiempo de otros procesos. Esto se modela con **enlaces de excepción por tiempo extra** (overtime exception link).
  * **Enlace de Excepción por Tiempo Extra**: Un enlace procedimental que va de un proceso a otro, indicando que si se excede la **duración máxima del proceso** de origen (maximal process duration), entonces se activa el proceso de destino. Por ejemplo, si un proceso de finalización de transferencia de crédito no termina en 15 minutos, un proceso de reinicio puede ser activado, lo que resulta en la pérdida de la entrada y la necesidad de repetir el proceso. La **duración mínima del proceso** (minimal process duration) también puede definir un umbral por debajo del cual se dispara una excepción por tiempo insuficiente.

* **731 - Eventos de Instrumento**
  * **Unidades de Medida**: Para atributos cuantitativos, las unidades de medida se denotan entre corchetes en OPM (ej. `[kg]` para kilogramos).
  * **Enlace de Evento de Instrumento (Instrument Event Link)**: Un enlace de instrumento con la letra 'e' junto al círculo blanco. Indica que si el objeto de origen existe o está en el estado desde el cual se origina el enlace, entonces el proceso de destino se activa para su ejecución. Este tipo de enlace se utiliza para modelar interrupciones o eventos, como la detección y desviación de una partícula espacial cuando su proximidad a la ISS es menor o igual a 100 kilómetros, disparando un proceso de defensa.

* **732 - Estados Iniciales y Finales**
  * **Estado Inicial / Valor Inicial**: El **estado inicial** es el estado que asume un objeto al ser creado. De manera similar, el **valor inicial** es el valor que asume un atributo al crearse su "exhibidor" (el objeto al que pertenece). Se pueden marcar estados como iniciales para indicar el punto de partida del ciclo de vida de un objeto, por ejemplo, que un sistema de lanzamiento es "en la tierra" al ser creado.
  * **Estado Final / Valor Final**: El **estado final** es el estado de un objeto al final de su ciclo de vida, del cual no puede salir ni ser cambiado. Un **valor final** es el valor de un atributo al final del ciclo de vida de su exhibidor, que no puede ser cambiado. Por ejemplo, el estado "descartado" de la integridad estructural de un sistema de lanzamiento repetible puede marcarse como final, lo que significa que una vez en ese estado, el sistema no volverá a estar intacto o estrellado.

* **741 - Probabilidades de Enlaces Procedimentales**
  * **Probabilidad del Enlace Procedimental**: Es la probabilidad registrada a lo largo de un enlace procedimental del resultado indicado por la semántica del enlace. Permite cuantificar la probabilidad de diferentes resultados de un proceso.
  * **Suma de Probabilidades**: Las probabilidades para los posibles resultados de un proceso deben sumar uno. Esto es útil para modelar escenarios como la duración de un viaje (corta, mediana, larga) y las implicaciones para el entrenamiento de los astronautas, asignando una probabilidad a cada resultado.

* **742 - Multiplicidad y Restricciones**
  * **Vistas (View Diagrams)**: Un Diagrama de Objeto-Proceso (OPD) que presenta una colección de hechos del modelo de varios OPDs. Su propósito es explicar un fenómeno o hacer hincapié en un punto específico del sistema. Una vista puede crearse seleccionando cualquier elemento del modelo y añadiendo elementos conectados a él de cualquier manera útil para comprender y explicar el sistema.
  * **Restricción de Participación (Participation Constraint)**: Un número o un parámetro en el extremo aplicable de un enlace que indica el número de objetos que participan en una relación estructural o procedimental. Por ejemplo, para un grupo de usuarios, se puede especificar que contenga cualquier número de usuarios de cero a muchos, indicado en el extremo del enlace de agregación.
  * **Definición de rangos de valores y restricciones**: Se pueden definir rangos de valores y restricciones para atributos, como los requisitos de una contraseña (ej. longitud mínima y máxima, cantidad de letras, dígitos, caracteres especiales). Esto se hace añadiendo un atributo llamado "tamaño" a un conjunto de caracteres, cuyo valor indica el rango de números de caracteres permitidos.

**Sección 800: Refinamientos y Ordenamiento**

* **811 - Refinamiento del Diagrama del Sistema 1**
  * **Principio de Jerarquía de Detalles OPD**: Todos los OPDs se organizan jerárquicamente en una estructura de árbol, siendo el Diagrama del Sistema (SD) la raíz.
  * **Refinamiento (Zoom In)**: Es la práctica de crear un nuevo OPD para mostrar más detalles de un proceso o un objeto. Esto es crucial para evitar la sobrecarga de información en un solo diagrama. Al refinar, se considera si el proceso es síncrono o asíncrono. Refinar un proceso en SD1 (el primer nivel de detalle del SD) puede resultar en más de un OPD descendiente, ya que SD1 normalmente incluye múltiples procesos sistémicos.
  * **Atributos Ambientales y Procesos Ambientales**: Los atributos de objetos ambientales (ej. `speed relative to docking port` del `shuttle`) también son ambientales. De igual manera, los procesos que se realizan por el entorno (ej. `approaching` realizado por `shuttle`) son procesos ambientales.

* **813 - Subprocesos Iterativos**
  * **Modelado de Subprocesos Iterativos**: Los subprocesos iterativos, que se repiten hasta que se cumple una condición, se modelan refinando el proceso iterativo en un nuevo OPD. Dentro de este OPD, se utilizan nodos de decisión (objetos booleanos) y enlaces de invocación. Por ejemplo, un proceso de "maduración y cosecha" puede repetir hasta que toda la fruta sea cosechada, con un nodo de decisión que verifica si aún hay fruta madura, y un enlace de invocación que reinicia el proceso si la hay.
  * **No violación de la línea de tiempo**: Es importante no violar la línea de tiempo de un proceso "in-zoom" (refinado) al modelar iteraciones. Esto significa no ir en contra del orden predeterminado de ejecución de arriba hacia abajo dentro del proceso refinado, a pesar de los cambios en el flujo de control.

* **814 - Ordenamiento Espacial**
  * **Ordenamiento Espacial en Objetos "In-Zoom"**: Cuando se realiza un "zoom in" en un objeto, la ubicación espacial de los objetos dentro del objeto refinado tiene significado. Esto se diferencia de los procesos "in-zoom", donde solo importa la línea de tiempo vertical (orden temporal). Por ejemplo, al diseñar un espacio físico como un cuarto, la disposición de los objetos dentro de él es importante.
  * **Aplicación a objetos informáticos**: El ordenamiento espacial también puede usarse para especificar el orden de las partes de objetos informáticos, como las secciones de un artículo científico (título, resumen, cuerpo, etc.), donde el orden de lectura es unidimensional.

**Sección 900: Metodología y Conceptos de Ingeniería de Sistemas**

* **911 - Visión General**
  * **Ingeniería de Sistemas Basada en Modelos (MBSE)**: Es una metodología que utiliza modelos conceptuales para diseñar y desarrollar sistemas complejos. Su propósito es proporcionar a los interesados un mejor control sobre el proceso de ingeniería de sistemas. MBSE ayuda a visualizar y comprender el sistema, evitar errores y omisiones, y establecer consenso dentro del equipo de ingeniería. OPM y Up Cloud se integran en MBSE sirviendo como infraestructura y herramientas para la creación de modelos.
  * **Limitaciones de los enfoques tradicionales**: Los enfoques tradicionales de ingeniería de sistemas se basan principalmente en texto, careciendo de una forma estandarizada o un lenguaje como OPM, y no utilizan características avanzadas de modelado. Esto impide que los sistemas representados puedan ser formalmente verificados o validados, lo que potencialmente disminuye el valor del sistema entregado a los interesados.

* **931 - Conceptos de Solución Alternativos**
  * **Generación de Conceptos de Solución Alternativos**: Implica crear al menos tres modelos conceptuales distintos, cada uno añadiendo un nivel de detalle al modelo de requisitos. Para generar estos conceptos, se requiere:
    * **Pensamiento Creativo**: Pensar en un problema desde una perspectiva holística en lugar de empantanarse en los detalles.
    * **Destilación de Conceptos Centrales**: Identificar la idea principal (principio físico o lógico) en la que se basará la arquitectura del sistema de solución. Por ejemplo, para cruzar un río, los conceptos centrales podrían ser "pasar por encima" (puente, teleférico) o "pasar a través" (ferry, submarino).
    * **Hacer Explícitas las Suposiciones Implícitas**: Identificar y cuestionar suposiciones que son tan obvias que se dan por sentado y no se discuten. Por ejemplo, la suposición de que se debe cruzar un río directamente de un punto a otro, o que el cruce es siquiera necesario. Al cuestionarlas, pueden surgir soluciones alternativas.
  * **Concepto (Concept)**: Una idea basada en un principio físico o lógico que subyace a la arquitectura de un sistema de solución.
  * **Conceptos de Solución Alternativos (Alternative Solution Concepts)**: Un conjunto de dos o más conceptos distintos, cada uno dando lugar a una arquitectura de sistema de solución diferente.

* **932 - Diseño de Soluciones**
  * **Revisión Preliminar de Diseño (PDR - Preliminary Design Review)**: Una revisión de diseño que se lleva a cabo después del modelado conceptual y el diseño de alto nivel del sistema de solución seleccionado. La PDR sirve como base para diseñar y desarrollar el sistema elegido.
  * **Secciones de la PDR**: Una PDR completa incluye varias secciones clave:
    * **Portada**: Con el nombre de los autores, afiliaciones, nombre e imagen del producto/sistema.
    * **Problema**: Explica la necesidad del sistema, utilizando el modelo de problema.
    * **Propósito**: Describe la función principal del sistema, usando el OPD de nivel superior.
    * **Suposiciones y Restricciones**: Detalla las suposiciones y limitaciones del sistema y su proceso de desarrollo.
    * **Soluciones Alternativas Consideradas**: Presenta los conceptos y modelos alternativos, con sus criterios de evaluación y comparación.
    * **Solución Seleccionada y Justificada**: Presenta y justifica la solución elegida con su modelo OPM completo y explicaciones adicionales.
    * **Estimaciones de Costos**: Incluye costos a lo largo de todo el ciclo de vida del sistema (desde el concepto hasta el retiro). El modelo OPM detallado con atributos de costo para los componentes es un buen punto de partida.
    * **Cronograma**: Un calendario para el proyecto de entrega del sistema, incluyendo hitos, fechas de entrega, pagos, etc..
    * **Riesgos y Mitigación**: Describe los riesgos del sistema (durante desarrollo y operación) y cómo se mitigarán. El **análisis de riesgos basado en modelos** implica identificar modos de falla y mecanismos de prevención o recuperación (ej. monitoreo, redundancia), incluyéndolos en el modelo y evaluando sus costos.

* **941 - Desarrollo de Software**
  * **El Modelo OPM como un Plan Común (Blueprint)**: En el diseño detallado de sistemas complejos, donde diversas disciplinas tienen sus propios lenguajes y herramientas, el modelo OPM sirve como un plan común y una especificación neutral. Contiene especificaciones de interfaces en un lenguaje independiente de la disciplina, lo que permite que todas las áreas se relacionen y confíen en él. Los modelos detallados suelen oscilar entre cinco y diez niveles de detalle.

* **942 - Integración Virtual**
  * **Integración Virtual**: Es la integración de dos tipos de objetos: el conjunto de modelos conceptuales de componentes de hardware y el conjunto de módulos de software. El conjunto de hardware permanece como modelos conceptuales, mientras que el software es código ejecutable real generado manual o automáticamente. En la integración virtual, los módulos de software controlan virtualmente los modelos de hardware mediante simulación, probando el software real con los modelos de componentes de hardware.

---

Espero que esta explicación detallada te sea de gran ayuda para comprender a fondo cada aspecto de la guía.

¿Hay alguna sección en particular que te gustaría que profundicemos aún más, o quizás te gustaría que te hiciera algunas preguntas para confirmar tu comprensión del material?
