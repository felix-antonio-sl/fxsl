# Re-auditoría de alineamiento Gist 14.0 — goreNubleOntology.ttl

- Fuente: `/Users/felixsanhueza/Developer/gorenuble/ontologies/goreNubleOntology.ttl`
- SHA-256: `ca8146b563c2ae298bab0d35a652264423311a5d997cec320f1da55098df8754`
- Tamaño: 39460 bytes
- mtime (UTC): 2026-01-04T04:44:45.305353+00:00
- Ejecutado (UTC): 2026-01-04T04:56:16.870420+00:00

## Resumen
- Ontología: `https://gorenuble.gob.cl/ontology/goreNubleOntology`
- owl:imports: `https://w3id.org/semanticarts/ontology/gistCore14.0.0`
- owl:versionIRI: `https://gorenuble.gob.cl/ontology/goreNubleOntology1.0.0`
- Conteos: clases=47, objProps=43, dataProps=8, otros=0

## Hallazgos (Gist)
- Importación versionada de Gist: **OK**
- Gobernanza unificada (`gnub:governs` inverseOf `gist:isGovernedBy`): **OK**
- Magnitudes (`gist:Magnitude`) usadas en: `gnub:hasMaxAdminCost`, `gnub:hasMaxExecTime`, `gnub:hasThreshold`
- Principales oportunidades pendientes:
  - Mapear roles de participación a `gist:hasParticipant/hasParty` (p.ej. `gnub:hasApplicant`, `gnub:isEvaluatedBy`).
  - Alinear módulo legal a superpropiedades Gist (`gist:isGovernedBy`, `gist:isPartOf`) y añadir inversas navegables donde aplica.
  - Revisar `gnub:Province` (GeoRegion vs GovernedGeoRegion) y nombres que puedan confundir Category vs entidad.

## Auditoría por elemento
### Ontología
- IRI: `https://gorenuble.gob.cl/ontology/goreNubleOntology`
- owl:imports: `https://w3id.org/semanticarts/ontology/gistCore14.0.0`
- owl:versionIRI: `https://gorenuble.gob.cl/ontology/goreNubleOntology1.0.0`

### Clases
### `gnub:ANFAcquisition`
- Tipo: `owl:Class`
- Etiqueta: "Adquisición ANF"@es
- Definición: "Adquisición de Activos No Financieros (Vehículos, Equipos) vía Circular 33."@es
- Superclase: `gnub:IPRProject`
- Alineamiento Gist: **OK**

### `gnub:AdmissibilityState`
- Tipo: `owl:Class`
- Etiqueta: "Estado de Admisibilidad"@es
- Definición: "Estado de admisibilidad de una IPR en el proceso de gestión."@es
- Superclase: `gist:Category`
- Alineamiento Gist: **OK**

### `gnub:AdvisoryBody`
- Tipo: `owl:Class`
- Etiqueta: "Órgano Asesor"@es
- Definición: "Órgano asesor o consultivo sin jerarquía lineal (ej. COSOC, Comité CTCI)."@es
- Superclase: `gist:Organization`
- Alineamiento Gist: **REVIEW**

### `gnub:ApplicantInstitution`
- Tipo: `owl:Class`
- Etiqueta: "Institución Postulante"@es
- Definición: "Tipo de entidad habilitada para postular a fondos (ej. Municipalidad, ONG, Univ)."@es
- Superclase: `gist:Category`
- Alineamiento Gist: **REVIEW**
- Recomendaciones:
  - Si es ‘tipo de institución’, considerar renombrar a `gnub:ApplicantInstitutionType` para evitar lectura como entidad concreta (Category paradigm).

### `gnub:BasicStudy`
- Tipo: `owl:Class`
- Etiqueta: "Estudio Básico"@es
- Definición: "Iniciativa de inversión (Subt. 31 Item 01) destinada a generar información para decisiones futuras (diagnósticos, planes)."@es
- Superclase: `gnub:IPR`
- DisjointWith: `gnub:IPRProject, gnub:InvestmentProgram, gnub:OperationalProgram`
- Alineamiento Gist: **OK**

### `gnub:BudgetChapter`
- Tipo: `owl:Class`
- Etiqueta: "Capítulo Presupuestario"@es
- Definición: "Desagregación institucional de una Partida (ej. Capítulo 01)."@es
- Superclase: `gist:Category`
- Alineamiento Gist: **OK**

### `gnub:BudgetPartida`
- Tipo: `owl:Class`
- Etiqueta: "Partida Presupuestaria"@es
- Definición: "Nivel superior de la clasificación institucional del presupuesto (ej. Partida 31)."@es
- Superclase: `gist:Category`
- Alineamiento Gist: **OK**

### `gnub:BudgetProgram`
- Tipo: `owl:Class`
- Etiqueta: "Programa Presupuestario"@es
- Definición: "División presupuestaria base asignada a un servicio o propósito específico (ej. Programa 19: GORE Ñuble)."@es
- Superclase: `gist:Category`
- Alineamiento Gist: **OK**

### `gnub:BudgetSubtitle`
- Tipo: `owl:Class`
- Etiqueta: "Subtítulo Presupuestario"@es
- Definición: "Clasificador presupuestario del gasto público chileno (Subtítulo 21-33)."@es
- Superclase: `gist:Category`
- Alineamiento Gist: **OK**

### `gnub:BudgetaryRule`
- Tipo: `owl:Class`
- Etiqueta: "Regla Presupuestaria"@es
- Definición: "Regla operativa definida en la Ley de Presupuestos o normativa financiera que restringe el uso de recursos."@es
- Superclase: `gnub:LegalMandate`
- Alineamiento Gist: **OK**

### `gnub:CTCIInitiative`
- Tipo: `owl:Class`
- Etiqueta: "Categoría CTCI"@es
- Definición: "Categorización temática CTCI que aplica a proyectos y programas de Ciencia, Tecnología, Conocimiento e Innovación."@es
- Superclase: `gist:Category`
- Alineamiento Gist: **OK**

### `gnub:Commune`
- Tipo: `owl:Class`
- Etiqueta: "Comuna"@es
- Definición: "Unidad territorial básica de administración local en Chile, gobernada por una Municipalidad."@es
- Superclase: `gist:GovernedGeoRegion`
- Alineamiento Gist: **OK**

### `gnub:CompetencyType`
- Tipo: `owl:Class`
- Etiqueta: "Tipo de Competencia"@es
- Definición: "Tipo de competencia administrativa transferible (temporal o definitiva)."@es
- Superclase: `gist:Category`
- Alineamiento Gist: **OK**

### `gnub:Department`
- Tipo: `owl:Class`
- Etiqueta: "Departamento"@es
- Definición: "Unidad organizacional de segundo nivel, subordinada a una División."@es
- Superclase: `gist:Organization`
- Alineamiento Gist: **REVIEW**

### `gnub:DesarrolloSocialFunction`
- Tipo: `owl:Class`
- Etiqueta: "Función de Desarrollo Social"@es
- Definición: "Funciones relacionadas con el desarrollo social y cultural (Art. 19 LOC)."@es
- Superclase: `gnub:GOREFunction`
- Alineamiento Gist: **OK**

### `gnub:Division`
- Tipo: `owl:Class`
- Etiqueta: "División"@es
- Definición: "Unidad organizacional de primer nivel dentro del GORE, con responsabilidad sobre un área funcional específica."@es
- Superclase: `gist:Organization`
- Alineamiento Gist: **REVIEW**
- Recomendaciones:
  - Tensión Gist: si no necesitas inferencias fuertes por tipo, modelar como `gist:Organization` + `gist:isCategorizedBy` (con instancias de `gnub:OrganizationalUnitType`) en vez de subclases.

### `gnub:EvaluationResult`
- Tipo: `owl:Class`
- Etiqueta: "Resultado de Evaluación"@es
- Definición: "Resultado de la evaluación técnico-económica de una IPR."@es
- Superclase: `gist:Category`
- Alineamiento Gist: **OK**

### `gnub:EvaluationTier`
- Tipo: `owl:Class`
- Etiqueta: "Nivel de Evaluación"@es
- Definición: "Nivel de proporcionalidad de la evaluación SNI (Nivel 0 a 3)."@es
- Superclase: `gist:Category`
- Alineamiento Gist: **OK**

### `gnub:EvaluationTrack`
- Tipo: `owl:Class`
- Etiqueta: "Track de Evaluación"@es
- Definición: "Vía o sistema de evaluación técnico-económica de IPR (RATE, Glosa06, Local, CTCI)."@es
- Superclase: `gist:Category`
- Alineamiento Gist: **OK**

### `gnub:FRILCategory`
- Tipo: `owl:Class`
- Etiqueta: "Categoría FRIL"@es
- Definición: "Categoría temática de proyectos FRIL (A, B, C, D)."@es
- Superclase: `gist:Category`
- Alineamiento Gist: **OK**

### `gnub:FinancingMechanism`
- Tipo: `owl:Class`
- Etiqueta: "Mecanismo de Financiamiento"@es
- Definición: "Especificación de la vía de aplicación y evaluación de una IPR. Define proceso, criterios y responsables de evaluación técnica."@es
- Superclase: `gist:CatalogItem`
- Alineamiento Gist: **OK**

### `gnub:FomentoProductivoFunction`
- Tipo: `owl:Class`
- Etiqueta: "Función de Fomento Productivo"@es
- Definición: "Funciones relacionadas con el fomento productivo y la innovación (Art. 18 LOC)."@es
- Superclase: `gnub:GOREFunction`
- Alineamiento Gist: **OK**

### `gnub:GOREFunction`
- Tipo: `owl:Class`
- Etiqueta: "Función del GORE"@es
- Definición: "Función del Gobierno Regional según LOC GORE: planificar, financiar, ejecutar, coordinar, normar."@es
- Superclase: `gist:Function`
- Alineamiento Gist: **OK**

### `gnub:GestionInternaFunction`
- Tipo: `owl:Class`
- Etiqueta: "Función de Gestión Interna"@es
- Definición: "Atribuciones de gestión administrativa y financiera interna (Art. 20 LOC)."@es
- Superclase: `gnub:GOREFunction`
- Alineamiento Gist: **OK**

### `gnub:GlossType`
- Tipo: `owl:Class`
- Etiqueta: "Tipo de Glosa"@es
- Definición: "Tipo de glosa presupuestaria según su naturaleza y estructura."@es
- Superclase: `gist:Category`
- Alineamiento Gist: **OK**

### `gnub:IPR`
- Tipo: `owl:Class`
- Etiqueta: "Intervención Pública Regional"@es
- Definición: "Intervención Pública Regional: término paraguas para cualquier acción (proyecto, programa, estudio) financiada por el GORE para objetivos de desarrollo."@es
- Superclase: `gist:Project`
- Alineamiento Gist: **OK**

### `gnub:IPRPhase`
- Tipo: `owl:Class`
- Etiqueta: "Fase de IPR"@es
- Definición: "Fase del ciclo de vida de una IPR según proceso estándar GORE."@es
- Superclase: `gist:Category`
- Alineamiento Gist: **OK**

### `gnub:IPRProject`
- Tipo: `owl:Class`
- Etiqueta: "Proyecto de Inversión"@es
- Definición: "IPR de gasto de capital (Subtítulo 31 o 33) orientada a crear, ampliar, reponer o mejorar activos físicos o intangibles de larga duración."@es
- Superclase: `gnub:IPR`
- DisjointWith: `gnub:InvestmentProgram, gnub:OperationalProgram, gnub:BasicStudy`
- Alineamiento Gist: **OK**

### `gnub:ImplementationMode`
- Tipo: `owl:Class`
- Etiqueta: "Modalidad de Implementación"@es
- Definición: "Modalidad de ejecución administrativa de una iniciativa (Directa GORE, Transferencia)."@es
- Superclase: `gist:Category`
- Alineamiento Gist: **OK**

### `gnub:InvestmentProgram`
- Tipo: `owl:Class`
- Etiqueta: "Programa de Inversión (SNI)"@es
- Definición: "Conjunto de proyectos de inversión (Subt. 31 Item 03) articulados bajo un propósito común y duración finita."@es
- Superclase: `gnub:IPR`
- DisjointWith: `gnub:IPRProject, gnub:OperationalProgram, gnub:BasicStudy`
- Alineamiento Gist: **OK**

### `gnub:InvestmentTypology`
- Tipo: `owl:Class`
- Etiqueta: "Tipología de Inversión"@es
- Definición: "Tipología de inversión que determina los Requisitos de Información Sectorial (RIS) aplicables."@es
- Superclase: `gist:Category`
- Alineamiento Gist: **OK**

### `gnub:LegalArticle`
- Tipo: `owl:Class`
- Etiqueta: "Artículo Legal"@es
- Definición: "Artículo específico dentro de un documento legal que contiene una o más disposiciones normativas."@es
- Superclase: `gist:Content`
- Alineamiento Gist: **OK**

### `gnub:LegalDocument`
- Tipo: `owl:Class`
- Etiqueta: "Documento Legal"@es
- Definición: "Cuerpo normativo formal (ley, decreto, reglamento) que establece obligaciones y derechos."@es
- Superclase: `gist:Content`
- Alineamiento Gist: **OK**

### `gnub:LegalMandate`
- Tipo: `owl:Class`
- Etiqueta: "Mandato Legal"@es
- Definición: "Obligación, atribución o deber impuesto por una ley o norma jurídica a un órgano o autoridad."@es
- Superclase: `gist:Requirement`
- Alineamiento Gist: **OK**

### `gnub:OperationalProgram`
- Tipo: `owl:Class`
- Etiqueta: "Programa Operacional"@es
- Definición: "IPR de gasto corriente (Subtítulo 24) orientada a entregar servicios o prestaciones continuas a una población objetivo (PPR)."@es
- Superclase: `gnub:IPR`
- DisjointWith: `gnub:IPRProject, gnub:InvestmentProgram, gnub:BasicStudy`
- Alineamiento Gist: **OK**

### `gnub:OrdenamientoTerritorialFunction`
- Tipo: `owl:Class`
- Etiqueta: "Función de Ordenamiento Territorial"@es
- Definición: "Funciones relacionadas con la organización del territorio (Art. 17 LOC)."@es
- Superclase: `gnub:GOREFunction`
- Alineamiento Gist: **OK**

### `gnub:OrganizationalUnitType`
- Tipo: `owl:Class`
- Etiqueta: "Tipo de Unidad Organizacional"@es
- Definición: "Tipo de unidad organizacional (ej. División, Departamento, Unidad)."@es
- Superclase: `gist:Category`
- Alineamiento Gist: **OK**

### `gnub:PlanningInstrument`
- Tipo: `owl:Class`
- Etiqueta: "Instrumento de Planificación"@es
- Definición: "Instrumento de planificación regional vinculante (ERD, PROT, ARI, etc.)."@es
- Superclase: `gist:Specification`
- Alineamiento Gist: **OK**

### `gnub:PopulationType`
- Tipo: `owl:Class`
- Etiqueta: "Tipo de Población"@es
- Definición: "Tipo de población según Marco Lógico (Potencial, Objetivo, Beneficiaria)."@es
- Superclase: `gist:Category`
- Alineamiento Gist: **OK**

### `gnub:PositionType`
- Tipo: `owl:Class`
- Etiqueta: "Tipo de Cargo"@es
- Definición: "Tipo de cargo o posición dentro de la estructura organizacional."@es
- Superclase: `gist:Category`
- Alineamiento Gist: **OK**

### `gnub:PreinvestmentStage`
- Tipo: `owl:Class`
- Etiqueta: "Etapa de Preinversión"@es
- Definición: "Etapa de madurez del estudio preinversional según normas SNI (Perfil, Factibilidad)."@es
- Superclase: `gist:Category`
- Alineamiento Gist: **OK**

### `gnub:ProgramComponent`
- Tipo: `owl:Class`
- Etiqueta: "Componente de Programa"@es
- Definición: "Bien o servicio directo (producto) entregado a la población objetivo como parte de un Programa Operacional."@es
- Superclase: `gist:Category`
- Alineamiento Gist: **OK**

### `gnub:Province`
- Tipo: `owl:Class`
- Etiqueta: "Provincia"@es
- Definición: "División político-administrativa intermedia entre región y comuna en Chile."@es
- Superclase: `gist:GeoRegion`
- Alineamiento Gist: **REVIEW**
- Recomendaciones:
  - Revisar si debe ser `gist:GovernedGeoRegion` (unidad político‑administrativa) en vez de `gist:GeoRegion`.

### `gnub:RegionalFund`
- Tipo: `owl:Class`
- Etiqueta: "Fondo Regional"@es
- Definición: "Fondo de inversión o financiamiento administrado por el GORE."@es
- Superclase: `gist:Account`
- Alineamiento Gist: **OK**

### `gnub:StaffUnit`
- Tipo: `owl:Class`
- Etiqueta: "Unidad de Staff"@es
- Definición: "Unidad de apoyo o staff, con funciones transversales (ej. Gabinete, Jurídica, Auditoría)."@es
- Superclase: `gist:Organization`
- Alineamiento Gist: **REVIEW**

### `gnub:ThematicFund`
- Tipo: `owl:Class`
- Etiqueta: "Fondo Temático"@es
- Definición: "Fondo temático específico dentro de la Subvención 8%."@es
- Superclase: `gist:Category`
- Alineamiento Gist: **OK**

### `gnub:Unit`
- Tipo: `owl:Class`
- Etiqueta: "Unidad"@es
- Definición: "Unidad organizacional de tercer nivel, subordinada a un Departamento o División."@es
- Superclase: `gist:Organization`
- Alineamiento Gist: **REVIEW**

### Object properties
### `gnub:allocatesBudgetTo`
- Tipo: `owl:ObjectProperty`
- Etiqueta: "asigna presupuesto"@es
- Definición: "Relación de asignación de presupuesto (p.ej., DIPRES asigna presupuesto al GORE)."@es
- Dominio: `gist:GovernmentOrganization`
- Rango: `gist:GovernmentOrganization`
- subPropertyOf: `gnub:governs`
- Alineamiento Gist: **OK**

### `gnub:audits`
- Tipo: `owl:ObjectProperty`
- Etiqueta: "fiscaliza"@es
- Definición: "Relación de fiscalización/auditoría (p.ej., CGR fiscaliza al GORE; CORE fiscaliza a la administración regional)."@es
- Dominio: `gist:Organization`
- Rango: `gist:Organization`
- subPropertyOf: `gnub:governs`
- Alineamiento Gist: **OK**

### `gnub:belongsToLegalDocument`
- Tipo: `owl:ObjectProperty`
- Etiqueta: "pertenece a documento"@es
- Definición: "Relaciona un artículo con el documento legal al que pertenece."@es
- Dominio: `gnub:LegalArticle`
- Rango: `gnub:LegalDocument`
- Alineamiento Gist: **REVIEW**
- Recomendaciones:
  - Agregar `rdfs:subPropertyOf gist:isPartOf` para alinearlo al patrón parte‑todo de Gist.

### `gnub:binds`
- Tipo: `owl:ObjectProperty`
- Etiqueta: "obliga a"@es
- Definición: "Indica a qué organización obliga o aplica un mandato legal."@es
- Dominio: `gnub:LegalMandate`
- Rango: `gist:Organization`
- Alineamiento Gist: **OK**

### `gnub:chairs`
- Tipo: `owl:ObjectProperty`
- Etiqueta: "preside"@es
- Definición: "Relación de presidencia de órgano colegiado (p.ej., Gobernador preside el CORE)."@es
- Dominio: `gist:Assignment`
- Rango: `gist:Organization`
- Alineamiento Gist: **OK**

### `gnub:containsGeoRegion`
- Tipo: `owl:ObjectProperty`
- Etiqueta: "contiene geo-región"@es
- Definición: "Relaciona una región geográfica con una sub-región contenida (atajo orientado a lectura; complementa relaciones parte-de/contención ya modeladas)."@es
- Dominio: `gist:GeoRegion`
- Rango: `gist:GeoRegion`
- inverseOf: `gist:isGeoContainedIn`
- Alineamiento Gist: **REVIEW**
- Recomendaciones:
  - Ya está alineada como `owl:inverseOf gist:isGeoContainedIn`. Opcional: declarar explícitamente `a owl:TransitiveProperty` si tu reasoner no infiere transitividad del inverso.

### `gnub:coordinatesPlansWith`
- Tipo: `owl:ObjectProperty`
- Etiqueta: "coordina planes"@es
- Definición: "Relación de coordinación de planes (p.ej., DIPLADE coordina planes con SEREMIs)."@es
- Dominio: `gist:GovernmentOrganization`
- Rango: `gist:Organization`
- Alineamiento Gist: **OK**

### `gnub:coordinatesProductivelyWith`
- Tipo: `owl:ObjectProperty`
- Etiqueta: "articulación productiva"@es
- Definición: "Relación de articulación productiva (p.ej., DIFOI articula con servicios públicos regionales)."@es
- Dominio: `gist:GovernmentOrganization`
- Rango: `gist:Organization`
- Alineamiento Gist: **OK**

### `gnub:currentPreinvestmentStage`
- Tipo: `owl:ObjectProperty`
- Etiqueta: "está en etapa de preinversión"@es
- Definición: "Etapa actual de preinversión en formulación."@es
- Dominio: `gnub:IPR`
- Rango: `gnub:PreinvestmentStage`
- Alineamiento Gist: **REVIEW**
- Recomendaciones:
  - Si la intención es sólo clasificar, preferir `gist:isCategorizedBy` (y mantener la propiedad específica sólo si agrega claridad/compatibilidad).

### `gnub:deliversPublicWorksIn`
- Tipo: `owl:ObjectProperty`
- Etiqueta: "obras públicas"@es
- Definición: "Relación del diagrama: DIINF ejecuta/coordina obras públicas en el territorio."@es
- Dominio: `gist:GovernmentOrganization`
- Rango: `gist:GeoRegion`
- Alineamiento Gist: **OK**

### `gnub:deliversSocialProgramsIn`
- Tipo: `owl:ObjectProperty`
- Etiqueta: "programas sociales"@es
- Definición: "Relación del diagrama: DIDESO ejecuta/coordina programas sociales en el territorio."@es
- Dominio: `gist:GovernmentOrganization`
- Rango: `gist:GeoRegion`
- Alineamiento Gist: **OK**

### `gnub:derivesFromArticle`
- Tipo: `owl:ObjectProperty`
- Etiqueta: "deriva de artículo"@es
- Definición: "Relaciona un mandato legal con el artículo específico de ley del que deriva."@es
- Dominio: `gnub:LegalMandate`
- Rango: `gnub:LegalArticle`
- Alineamiento Gist: **OK**

### `gnub:designates`
- Tipo: `owl:ObjectProperty`
- Etiqueta: "designa"@es
- Definición: "Relación institucional de designación/nombramiento (p.ej., Presidencia designa Delegado Presidencial Regional)."@es
- Dominio: `gist:GovernmentOrganization`
- Rango: `gist:GovernmentOrganization`
- subPropertyOf: `gnub:governs`
- Alineamiento Gist: **OK**

### `gnub:establishes`
- Tipo: `owl:ObjectProperty`
- Etiqueta: "establece"@es
- Definición: "Relaciona un artículo con los mandatos que establece."@es
- Dominio: `gnub:LegalArticle`
- Rango: `gnub:LegalMandate`
- Alineamiento Gist: **REVIEW**
- Recomendaciones:
  - Declarar `owl:inverseOf gnub:derivesFromArticle` (coherencia navegable).

### `gnub:exercisesInteriorGovernmentOver`
- Tipo: `owl:ObjectProperty`
- Etiqueta: "gobierno interior"@es
- Definición: "Relación del diagrama: Delegación Presidencial ejerce gobierno interior sobre un territorio (provincia/región)."@es
- Dominio: `gist:GovernmentOrganization`
- Rango: `gist:GeoRegion`
- subPropertyOf: `gnub:governs`
- Alineamiento Gist: **OK**

### `gnub:funds`
- Tipo: `owl:ObjectProperty`
- Etiqueta: "financia"@es
- Definición: "Relación de financiamiento institucional (p.ej., SUBDERE financia al GORE)."@es
- Dominio: `gist:GovernmentOrganization`
- Rango: `gist:GovernmentOrganization`
- subPropertyOf: `gnub:governs`
- Alineamiento Gist: **OK**

### `gnub:governs`
- Tipo: `owl:ObjectProperty`
- Etiqueta: "gobierna"@es
- Definición: "Superpropiedad que agrupa todas las formas de ejercicio de autoridad, control, financiamiento o regulación."@es
- Dominio: `gist:Organization`
- Rango: `owl:Thing`
- inverseOf: `gist:isGovernedBy`
- Alineamiento Gist: **OK**

### `gnub:hasAdmissibilityState`
- Tipo: `owl:ObjectProperty`
- Etiqueta: "tiene estado de admisibilidad"@es
- Definición: "Estado de admisibilidad actual de la IPR."@es
- Dominio: `gnub:IPR`
- Rango: `gnub:AdmissibilityState`
- Alineamiento Gist: **REVIEW**
- Recomendaciones:
  - Si la intención es sólo clasificar, preferir `gist:isCategorizedBy` (y mantener la propiedad específica sólo si agrega claridad/compatibilidad).

### `gnub:hasApplicant`
- Tipo: `owl:ObjectProperty`
- Etiqueta: "tiene postulante"@es
- Definición: "Organización que postula la iniciativa (distinto del ejecutor financiero)."@es
- Dominio: `gnub:IPR`
- Rango: `gist:Organization`
- Alineamiento Gist: **REVIEW**
- Recomendaciones:
  - Agregar `rdfs:subPropertyOf gist:hasParty` (o `gist:hasParticipant`) para alinearse con el patrón de participación de Gist.

### `gnub:hasEvaluationTier`
- Tipo: `owl:ObjectProperty`
- Etiqueta: "tiene nivel de evaluación"@es
- Definición: "Nivel de proporcionalidad asignado para evaluación (0, 1, 2, 3)."@es
- Dominio: `gnub:IPRProject`
- Rango: `gnub:EvaluationTier`
- Alineamiento Gist: **REVIEW**
- Recomendaciones:
  - Si la intención es sólo clasificar, preferir `gist:isCategorizedBy` (y mantener la propiedad específica sólo si agrega claridad/compatibilidad).

### `gnub:hasEvaluationTrack`
- Tipo: `owl:ObjectProperty`
- Etiqueta: "pertenece a track"@es
- Definición: "Track de evaluación al que pertenece este resultado."@es
- Dominio: `gnub:EvaluationResult`
- Rango: `gnub:EvaluationTrack`
- Alineamiento Gist: **REVIEW**
- Recomendaciones:
  - Si la intención es sólo clasificar, preferir `gist:isCategorizedBy` (y mantener la propiedad específica sólo si agrega claridad/compatibilidad).

### `gnub:hasFundingSource`
- Tipo: `owl:ObjectProperty`
- Etiqueta: "tiene fuente de financiamiento"@es
- Definición: "Fondo regional fuente de recursos para la IPR."@es
- Dominio: `gnub:IPR`
- Rango: `gnub:RegionalFund`
- Alineamiento Gist: **OK**

### `gnub:hasImplementationMode`
- Tipo: `owl:ObjectProperty`
- Etiqueta: "tiene modalidad de implementación"@es
- Definición: "Modalidad de ejecución del IPR (Directa o Transferencia)."@es
- Dominio: `gnub:IPR`
- Rango: `gnub:ImplementationMode`
- Alineamiento Gist: **REVIEW**
- Recomendaciones:
  - Si la intención es sólo clasificar, preferir `gist:isCategorizedBy` (y mantener la propiedad específica sólo si agrega claridad/compatibilidad).

### `gnub:hasInvestmentTypology`
- Tipo: `owl:ObjectProperty`
- Etiqueta: "tiene tipología de inversión"@es
- Definición: "Clasificación sectorial (RIS) requerida para iniciativas evaluadas bajo el Sistema Nacional de Inversiones (SNI) (ej. Edificación, Patrimonio)."@es
- Dominio: `gnub:IPR`
- Rango: `gnub:InvestmentTypology`
- Alineamiento Gist: **REVIEW**
- Recomendaciones:
  - Si la intención es sólo clasificar, preferir `gist:isCategorizedBy` (y mantener la propiedad específica sólo si agrega claridad/compatibilidad).

### `gnub:hasLegalMandate`
- Tipo: `owl:ObjectProperty`
- Etiqueta: "tiene mandato legal"@es
- Definición: "Relaciona un órgano o autoridad con un mandato legal específico."@es
- Dominio: `unionOf(gist:Organization gist:Person)`
- Rango: `gnub:LegalMandate`
- Alineamiento Gist: **REVIEW**
- Recomendaciones:
  - Agregar `rdfs:subPropertyOf gist:isGovernedBy` (un mandato legal gobierna/dirige conducta).
  - Si requieres vigencia/historial de aplicabilidad, reificar con `gist:TemporalRelation`.

### `gnub:hasMaxAdminCost`
- Tipo: `owl:ObjectProperty`
- Etiqueta: "máximo gasto administrativo"@es
- Definición: "Porcentaje máximo del presupuesto total permitido para gastos administrativos."@es
- Dominio: `gnub:FinancingMechanism`
- Rango: `gist:Magnitude`
- Alineamiento Gist: **OK**

### `gnub:hasMaxExecTime`
- Tipo: `owl:ObjectProperty`
- Etiqueta: "plazo máximo ejecución"@es
- Definición: "Plazo máximo de ejecución."@es
- Dominio: `gnub:FinancingMechanism`
- Rango: `gist:Magnitude`
- Alineamiento Gist: **OK**

### `gnub:hasProgramComponent`
- Tipo: `owl:ObjectProperty`
- Etiqueta: "tiene componente"@es
- Definición: "Relaciona un programa con sus componentes (bienes/servicios)."@es
- Dominio: `gnub:OperationalProgram`
- Rango: `gnub:ProgramComponent`
- Alineamiento Gist: **REVIEW**
- Recomendaciones:
  - Si la intención es sólo clasificar, preferir `gist:isCategorizedBy` (y mantener la propiedad específica sólo si agrega claridad/compatibilidad).

### `gnub:hasThreshold`
- Tipo: `owl:ObjectProperty`
- Etiqueta: "tiene umbral máximo"@es
- Definición: "Umbral o monto máximo aplicable (requiere magnitud con unidad: UTM, CLP, etc)."@es
- Dominio: `gnub:FinancingMechanism`
- Rango: `gist:Magnitude`
- Alineamiento Gist: **OK**

### `gnub:hasTutelaOver`
- Tipo: `owl:ObjectProperty`
- Etiqueta: "tutela"@es
- Definición: "Relación de tutela administrativa (p.ej., Ministerio del Interior tutela al Gobierno Interior regional)."@es
- Dominio: `gist:GovernmentOrganization`
- Rango: `gist:GovernmentOrganization`
- subPropertyOf: `gnub:governs`
- Alineamiento Gist: **OK**

### `gnub:isCapitalOf`
- Tipo: `owl:ObjectProperty`
- Etiqueta: "es capital de"@es
- Definición: "Indica que una comuna es la capital administrativa de una provincia."@es
- Dominio: `gnub:Commune`
- Rango: `gnub:Province`
- Alineamiento Gist: **OK**

### `gnub:isEvaluatedBy`
- Tipo: `owl:ObjectProperty`
- Etiqueta: "es evaluada por"@es
- Definición: "Organización responsable de la evaluación técnica (se puede aplicar tanto a una IPR concreta como a un mecanismo de financiamiento)."@es
- Dominio: (no declarado)
- Rango: `gist:Organization`
- Alineamiento Gist: **REVIEW**
- Recomendaciones:
  - Agregar `rdfs:subPropertyOf gist:hasParticipant` (y opcionalmente restringir a `gist:hasParty` si sólo aplica a Org/Person).

### `gnub:isManagedBy`
- Tipo: `owl:ObjectProperty`
- Etiqueta: "es administrado por"@es
- Definición: "Indica la organización que administra operacionalmente un fondo regional."@es
- Dominio: `gnub:RegionalFund`
- Rango: `gist:Organization`
- subPropertyOf: `gist:isGovernedBy`
- Alineamiento Gist: **OK**

### `gnub:isOwnedBy`
- Tipo: `owl:ObjectProperty`
- Etiqueta: "es propiedad de"@es
- Definición: "Indica la organización responsable/propietaria (en términos institucionales) de un instrumento de planificación."@es
- Dominio: `gnub:PlanningInstrument`
- Rango: `gist:Organization`
- subPropertyOf: `gist:isGovernedBy`
- Alineamiento Gist: **OK**

### `gnub:isProvidedBy`
- Tipo: `owl:ObjectProperty`
- Etiqueta: "es provista por"@es
- Definición: "Indica qué organización provee o ejerce una función institucional."@es
- Dominio: `gnub:GOREFunction`
- Rango: `gist:Organization`
- subPropertyOf: `gist:hasParticipant`
- Alineamiento Gist: **OK**

### `gnub:managesFundingFor`
- Tipo: `owl:ObjectProperty`
- Etiqueta: "gestiona financiamiento para"@es
- Definición: "Relación de gestión de financiamiento para proyectos (p.ej., DIPIR gestiona financiamiento para servicios públicos regionales)."@es
- Dominio: `gist:GovernmentOrganization`
- Rango: `gist:Organization`
- Alineamiento Gist: **OK**

### `gnub:nominatesCandidatesFor`
- Tipo: `owl:ObjectProperty`
- Etiqueta: "nomina terna para"@es
- Definición: "Relación de nominación de terna del diagrama: el Gobernador nomina candidatos para cargos SEREMI."@es
- Dominio: `gist:Assignment`
- Rango: `gist:Organization`
- Alineamiento Gist: **OK**

### `gnub:producesResult`
- Tipo: `owl:ObjectProperty`
- Etiqueta: "produce resultado"@es
- Definición: "Tipo de resultado/dictamen que produce este track de evaluación."@es
- Dominio: `gnub:EvaluationTrack`
- Rango: `gnub:EvaluationResult`
- Alineamiento Gist: **REVIEW**
- Recomendaciones:
  - Si la intención es sólo clasificar, preferir `gist:isCategorizedBy` (y mantener la propiedad específica sólo si agrega claridad/compatibilidad).

### `gnub:promotesProductiveDevelopmentIn`
- Tipo: `owl:ObjectProperty`
- Etiqueta: "fomento productivo"@es
- Definición: "Relación del diagrama: DIFOI ejecuta/coordina fomento productivo en el territorio."@es
- Dominio: `gist:GovernmentOrganization`
- Rango: `gist:GeoRegion`
- Alineamiento Gist: **OK**

### `gnub:regulates`
- Tipo: `owl:ObjectProperty`
- Etiqueta: "norma"@es
- Definición: "Relación de regulación normativa (p.ej., SUBDERE norma al GORE)."@es
- Dominio: `gist:GovernmentOrganization`
- Rango: `gist:GovernmentOrganization`
- subPropertyOf: `gnub:governs`
- Alineamiento Gist: **OK**

### `gnub:requiresEvaluation`
- Tipo: `owl:ObjectProperty`
- Etiqueta: "requiere evaluación"@es
- Definición: "Track de evaluación técnica requerido por el mecanismo."@es
- Dominio: `gnub:FinancingMechanism`
- Rango: `gnub:EvaluationTrack`
- Alineamiento Gist: **REVIEW**
- Recomendaciones:
  - Si la intención es sólo clasificar, preferir `gist:isCategorizedBy` (y mantener la propiedad específica sólo si agrega claridad/compatibilidad).

### `gnub:supervises`
- Tipo: `owl:ObjectProperty`
- Etiqueta: "supervisa"@es
- Definición: "Relación de supervisión jerárquica entre Asignaciones (ej. Jefatura de División supervisa a Jefatura de Departamento)."@es
- Dominio: `gist:Assignment`
- Rango: `gist:Assignment`
- Alineamiento Gist: **OK**

### `gnub:usesFinancingMechanism`
- Tipo: `owl:ObjectProperty`
- Etiqueta: "usa mecanismo de financiamiento"@es
- Definición: "Mecanismo/track de postulación y evaluación utilizado por la IPR."@es
- Dominio: `gnub:IPR`
- Rango: `gnub:FinancingMechanism`
- Alineamiento Gist: **OK**

### Datatype properties
### `gnub:allowsPersonnelExpenses`
- Tipo: `owl:DatatypeProperty`
- Etiqueta: "Permite Gastos Personal"@es
- Definición: "Indica si la regla permite imputar gastos en personal."@es
- Dominio: `gnub:BudgetaryRule`
- Rango: `xsd:boolean`
- Alineamiento Gist: **OK**

### `gnub:articleNumber`
- Tipo: `owl:DatatypeProperty`
- Etiqueta: "número de artículo"@es
- Definición: "Número del artículo dentro del documento legal (ej. '16', '21 bis')."@es
- Dominio: `gnub:LegalArticle`
- Rango: `xsd:string`
- Alineamiento Gist: **OK**

### `gnub:beneficiaryCount`
- Tipo: `owl:DatatypeProperty`
- Etiqueta: "cantidad beneficiarios"@es
- Definición: "Cantidad estimada de beneficiarios anuales."@es
- Dominio: `gnub:OperationalProgram`
- Rango: `xsd:integer`
- Alineamiento Gist: **OK**

### `gnub:hasValidityPeriod`
- Tipo: `owl:DatatypeProperty`
- Etiqueta: "vigencia (años)"@es
- Definición: "Vigencia del resultado de evaluación en años."@es
- Dominio: `gnub:EvaluationResult`
- Rango: `xsd:integer`
- Alineamiento Gist: **OK**

### `gnub:isBNUP`
- Tipo: `owl:DatatypeProperty`
- Etiqueta: "es BNUP"@es
- Definición: "Indica si el terreno de intervención es Bien Nacional de Uso Público."@es
- Dominio: `gnub:IPRProject`
- Rango: `xsd:boolean`
- Alineamiento Gist: **OK**

### `gnub:maxExecutionMonths`
- Tipo: `owl:DatatypeProperty`
- Etiqueta: "Meses Máximos Ejecución"@es
- Definición: "Plazo máximo de ejecución en meses permitido por la normativa del mecanismo."@es
- Dominio: `gnub:IPR`
- Rango: `xsd:integer`
- Alineamiento Gist: **REVIEW**

### `gnub:requiresCoFinancing`
- Tipo: `owl:DatatypeProperty`
- Etiqueta: "Requiere Cofinanciamiento"@es
- Definición: "Indica si la regla exige cofinanciamiento por parte de la entidad postulante."@es
- Dominio: `gnub:BudgetaryRule`
- Rango: `xsd:boolean`
- Alineamiento Gist: **OK**

### `gnub:targetPopulationDescription`
- Tipo: `owl:DatatypeProperty`
- Etiqueta: "descripción población objetivo"@es
- Definición: "Descripción cualitativa de la población objetivo."@es
- Dominio: `gnub:OperationalProgram`
- Rango: `xsd:string`
- Alineamiento Gist: **OK**

## Roadmap sugerido
- Añadir axiomas de alineamiento (sin cambiar datos):
  - `gnub:hasApplicant rdfs:subPropertyOf gist:hasParty`.
  - `gnub:isEvaluatedBy rdfs:subPropertyOf gist:hasParticipant`.
  - `gnub:hasLegalMandate rdfs:subPropertyOf gist:isGovernedBy`.
  - `gnub:belongsToLegalDocument rdfs:subPropertyOf gist:isPartOf`.
  - `gnub:establishes owl:inverseOf gnub:derivesFromArticle` (si aplica).
- Mantener el patrón de magnitudes (ya alineado) y, si crece el uso de plazos, reconsiderar `gnub:maxExecutionMonths` hacia `gist:Magnitude` para homogeneidad.
