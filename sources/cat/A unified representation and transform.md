# A unified representation and transformation of multi‑model data using category theory

## Abstract
The support for multi-model data has become common in many DBMSs. In this document, we introduce a unifying mathematical representation for multi-model data based on **category theory**. We define a **schema category** and **instance category**, provide a mapping between multi-model data and this categorical representation, and present high-level algorithms for transformations. We discuss how these transformations can be applied to data management tasks such as querying, evolution, and migration.

## Introduction
Multi-model data occurs when several different data models (e.g., relational, document, graph, or wide-column) are combined within one database or across multiple databases. Conceptual modeling languages like ER or UML can describe such data, but logical designs vary widely. We propose a unifying category-theory-based model for representing and transforming multi-model schemas and instances.

**Example 1.1**  
A multi-model scenario can contain a relational part with customer data, a graph part describing friendships, a document part storing orders, a wide-column model referencing those orders, and a key/value model for shopping carts. A possible cross-model query is: *“For each customer who lives in Prague, find a friend who ordered the most expensive product among all that customer’s friends.”*

We consider both polystores (managing multiple DBMSs) and single multi-model DBMSs. Regardless of the approach, logically combining heterogeneous data models poses challenges. We rely on category theory to provide a common conceptual framework.

## Unified view of multi‑model data
We focus on popular structured and semi-structured data models: relational, key/value, document, wide-column, and graph. We unify terminology (e.g., “record” can mean tuple, document, node, etc.) in a single scheme and note distinctions like *aggregate-oriented* vs. *aggregate-ignorant* systems.

### Basic Concepts of Category Theory
A **category** \(C = (O, M, \circ)\) has:
- A set of **objects** \(O\), denoted \(\mathrm{Obj}(C)\).
- A set of **morphisms** \(M\), also \(\mathrm{Hom}(C)\). Each morphism is an arrow \(f: A \to B\) with domain \(A\) and codomain \(B\).
- A **composition** operation \(\circ\) that is associative: \((h \circ g) \circ f = h \circ (g \circ f)\), and each object \(A\) has an **identity morphism** \(1_A\) acting as a unit element.

**Example 2.1**  
In a small category with three objects \(\{a,b,c\}\), there might be morphisms \(f: a \to b\), \(g: b \to c\), and their composition \(g \circ f\).

**Example 2.2**  
\(\mathbf{Set}\) is a well-known category where objects are sets and morphisms are functions. \(\mathbf{Rel}\) is another category whose objects are sets and morphisms are binary relations.

A **functor** \(F: C_1 \to C_2\) maps objects and morphisms from one category to another, preserving identities and composition.

## Categorical Representation of Multi‑Model Data
We define two main categories:

### Schema Category
A **schema category** \(S = (O_S, M_S, \circ_S)\) models the *structure* of the data (analogous to a conceptual schema):
- Each object \(o \in O_S\) is a tuple \((key, label, superid, ids)\).  
  - \(superid\) is the set of attributes for object \(o\).  
  - \(ids\) is a collection of identifiers (subsets of \(superid\)).  
- Each morphism \(m \in M_S\) is \((signature, dom, cod, min, max)\).  
  - \(signature\) is drawn from \(M^*\), used to compose base morphisms.  
  - \(dom\) and \(cod\) are domain and codomain objects.  
  - \(min, max \in \{0,1,*\}\) represent cardinalities.  
- Composition obeys:  
  \[
  m_2 \circ_S m_1 = (signature_2 \cdot signature_1, dom_1, cod_2, \min, \max),
  \]
  applying cardinality rules for \(\min\) and \(\max\).

There must be a dual morphism \(m^{-1}: Y \to X\) for each \(m: X \to Y\), so relationships in both directions are captured. If the schema is derived from an ER diagram, objects correspond to entity types, attributes, and relationships, while morphisms capture structural connections.

**Example 2.4**  
An ER schema for Customers, Orders, etc., can be transformed into a schema category with objects like *Customer*, *Order*, *Address*, *Product*, and so on. Each object’s \(superid\) and \(ids\) follow from the conceptual identifiers in the ER model.

### Instance Category
An **instance category** \(I = (O_I, M_I, \circ_I)\) models the *actual data* in a database:
- Objects in \(O_I\) correspond to objects in \(O_S\). Each \(o_I \in O_I\) is a set of tuples (the *active domain*) conforming to the attributes in \(superid\).
- Morphisms in \(M_I\) are relations between these tuples, reflecting cardinalities \((\min, \max)\). Identity morphisms are reflexive relations on object sets.
- Composition \(\circ_I\) is standard relational composition.

**Example 2.5**  
If *Customer* in \(O_S\) has attributes \(\{id, name, surname\}\), then *Customer* in \(O_I\) is a set of tuples like:  
\[
\{
\{(id,1),(name,\text{Mary}),(surname,\text{Smith})\},\;
\{(id,2),(name,\text{Anne}),(surname,\text{Maxwell})\},\dots
\}.
\]

**Example 2.6**  
A morphism from *Customer* to *Surname* is a subset of \(*Customer* \times *Surname*\), matching each tuple to its respective surname.

Using functors, we map between schema and instance categories.

## Category‑to‑Data Mapping
We define how a schema category (and its instances) map onto actual DBMS kinds (e.g., tables, documents, column families). Each **kind** is associated with a *root object or root morphism*, a chosen **primary key**, optional **references**, and an **access path** describing how schema objects or morphisms appear as properties/columns.

### Formal Definitions
A kind \(\kappa\) is given by \((D, name_\kappa, root_\kappa, morph_\kappa, pkey_\kappa, ref_\kappa, P_\kappa)\), where:
- \(D\) is the DBMS.  
- \(root_\kappa \in O_S\) or \(\in M_S\), specifying the main object/morphism.  
- \(pkey_\kappa\) is the collection of signatures forming the identifier.  
- \(ref_\kappa\) is a set of references to other kinds.  
- \(P_\kappa\) is the **access path** describing how properties are nested or inlined.

Access paths can be visualized in a tree or in a JSON-like format. Cardinalities drive whether a property is a single value or an array.

### JSON‑like Representation
We use a grammar-based specification to describe nested properties, arrays, maps, or dynamic property names. This representation accommodates document and column models, including arrays, maps, etc.

## Transformations
We propose two main transformations:

### Model‑to‑Category Transformation
**Algorithm 1** (high level):  
1. Extract records from a DBMS kind \(\kappa\).  
2. Represent them as **forests of records** (trees).  
3. Traverse the forest and fill the **instance category** \(I\) with objects and morphisms, respecting cardinalities and compositions.  

Properties or arrays are mapped to objects or morphisms based on the **access path**. Missing values produce empty sets of superidentifiers.

### Category‑to‑Model Transformation
**Algorithm 2** (DDL) creates or alters the schema in the target DBMS based on the category’s structure (using a wrapper for each system).  
**Algorithm 3** (DML) takes the instance category and inserts data into the new schema.  
**Algorithm 4** (IC) finalizes references and constraints (e.g., primary keys, foreign keys).

### Multi‑model‑to‑Multi‑model Migration
By using the categorical representation as an intermediary, we avoid direct pairwise mappings among many models. We can:
1. Transform model(s) to the **instance category**.
2. Transform from the instance category to the new model(s).  

Inter-model references and different consistency or schema strategies are captured in the category, simplifying data migration.

## Framework MM‑cat
A tool implementing these ideas:

### Architecture and Implementation
It includes:
- **Schema Category** + **Instance Category** as core data structures.
- **Wrappers** for each DBMS implementing an interface for creating schemas, adding references, pushing/pulling data, etc.
- **Transformation Modules** that apply the Model-to-Category and Category-to-Model transformations in a unified manner.

### Wrappers
Each wrapper handles specifics of one DBMS or data model:
- `AbstractPathWrapper` for mapping objects/morphisms to DBMS properties.
- `AbstractDDLWrapper` for creating or altering schema definitions.
- `AbstractPushWrapper`, `AbstractPullWrapper`, `AbstractICWrapper` for data insertion, retrieval, and integrity constraints.

### Performance
The transformation algorithms are generally linear in the number of records, possibly with logarithmic overhead if indexing is required. They can be parallelized by splitting input data or distributing composition tasks across threads.

## Benefits of Category Theory
A categorical view elegantly unifies multi-model structures, enabling:
- *Cross-model representation* without forcing each model’s constructs onto the others.
- *Proper handling of relationships* (including composite morphisms) for powerful operations like joins and transformations.
- *Generic expansions* to advanced operations like conceptual querying, evolution management, and partial schema usage in schema-less contexts.

### Application—Querying
A conceptual query language can be derived from category theory, letting us represent cross-model joins and navigations (like from a relational table to a graph edge to a document) through morphism compositions. The combination of partial results can be joined via **pullbacks** in the category, avoiding complicated ad-hoc bridging in each system.

## Related Work
Previous efforts to unify multi-model data include polystore approaches and attempts at universal schemas. Category theory has been applied to single-model data (e.g., relational). Our contribution is applying it broadly to widely used data models and their combinations, including references and overlapping identifiers.

## Conclusion
We presented a **category-theory-based** formalism for multi-model data. A **schema category** describes the structure, while an **instance category** holds the data. Transformations allow us to map data to/from these categories. This enables:
- Flexible multi-model schema design,
- Cross-model data querying and integration,
- Controlled schema evolution,
- Multi-model-to-multi-model migration.

**Future Work** will integrate a comprehensive query language and advanced evolution management based on these categorical foundations.
