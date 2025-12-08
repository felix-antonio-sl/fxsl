# A Formal Category Theoretical Framework for Multi-Model Data Transformations

## Abstract

Data integration and migration in polystores and multi-model database systems benefit from data and schema transformations. This work defines category theoretical foundations for relational, graph, and hierarchical data models using functors to represent data instances. Data and schema transformations are formalized as Kan lifts, which consist of schema transformation and data transformation mappings satisfying universal properties.

## 1 Introduction

Polystores and multi-model databases handle diverse data models, necessitating a rigorous mathematical framework to model data and schema transformations. Category theory offers a compact notation capable of capturing complex structures, aiming to unify various transformation frameworks under a solid theoretical foundation.

## 2 Prerequisites

### 2.1 Categories

#### Definition 1 (Category)

A **category** \( C \) consists of:
- A collection of objects \( \text{Obj}(C) \).
- A collection of morphisms \( \text{Hom}(C) \).

For each morphism \( f \in \text{Hom}(C) \), there exist objects \( A, B \in \text{Obj}(C) \) such that \( f: A \rightarrow B \). Morphism composition is associative, and each object has an identity morphism \( \text{id}_A: A \rightarrow A \) satisfying:
\[
f \circ \text{id}_A = f \quad \text{and} \quad \text{id}_A \circ f = f
\]
whenever the composition is defined.

**Example:**  
See Figure 1 for a simple category with four objects and three non-trivial morphisms \( f, g, h \).

### 2.2 Functors

#### Definition 2 (Functor)

Given categories \( C \) and \( D \), a **functor** \( F: C \rightarrow D \) satisfies:
- For every object \( c \in C \), \( F(c) \) is an object in \( D \).
- For every morphism \( f: c \rightarrow d \) in \( C \), \( F(f): F(c) \rightarrow F(d) \) is a morphism in \( D \).

Functors must preserve identities and composition:
\[
F(\text{id}_c) = \text{id}_{F(c)} \quad \text{and} \quad F(g \circ f) = F(g) \circ F(f)
\]

A functor \( F \) is **full** if every morphism in \( D \) has a preimage in \( C \).

**Example:**  
See Figure 2(a) for a simple functor between two categories.

### 2.3 Natural Transformations

#### Definition 3 (Natural Transformation)

Given functors \( F, G: C \rightarrow D \), a **natural transformation** \( \alpha: F \Rightarrow G \) assigns to each object \( c \in C \) a morphism \( \alpha_c: F(c) \rightarrow G(c) \) in \( D \) such that for every morphism \( f: c \rightarrow d \) in \( C \), the following diagram commutes:
\[
G(f) \circ \alpha_c = \alpha_d \circ F(f)
\]

**Example:**  
See Figure 2(b) for a natural transformation between two functors.

### 2.4 Kan Lifts

#### Definition 4 (Kan Lift)

Given functors \( F: A \rightarrow C \) and \( G: B \rightarrow C \), a **right Kan lift** of \( F \) through \( G \) consists of:
- A functor \( \text{Rift}_G F: A \rightarrow B \).
- A natural transformation \( \epsilon: G \circ \text{Rift}_G F \Rightarrow F \).

This pair satisfies the universal property: for any other pair \( (H: A \rightarrow B, \eta: G \circ H \Rightarrow F) \), there exists a unique natural transformation \( \gamma: H \Rightarrow \text{Rift}_G F \) such that \( \eta = \epsilon \circ (G \circ \gamma) \).

**Diagrammatically:**
\[
\begin{array}{ccc}
A & \xrightarrow{F} & C \\
\downarrow{H} & \searrow{\eta} & \uparrow{G} \\
B & \xrightarrow{\text{Rift}_G F} & C \\
\end{array}
\]

### 2.5 Graphs

#### Definition 5 (Graph)

A **graph** \( G \) is a quadruple \( G = (V, E, \text{src}, \text{tgt}) \) where:
- \( V \) is a set of vertices.
- \( E \) is a set of edges.
- \( \text{src}: E \rightarrow V \) assigns a source vertex to each edge.
- \( \text{tgt}: E \rightarrow V \) assigns a target vertex to each edge.

#### Definition 6 (Path)

For a graph \( G = (V, E, \text{src}, \text{tgt}) \), a **path** \( p \) of length \( n \) is a sequence of connected edges. The set of all paths of length \( n \) is denoted \( \text{Path}(n)_G \), and the set of all paths is \( \text{Path}_G = \bigcup_{n \in \mathbb{N}} \text{Path}(n)_G \).

## 3 Functorial Instances and Databases

### 3.1 Functorial Representation of Relational Data

#### Definition 7 (Categorical Path Equivalence Relation)

Given a graph \( G = (V, E, \text{src}, \text{tgt}) \), a **categorical path equivalence relation** \( \sim \) is an equivalence relation on \( \text{Path}_G \) satisfying specific properties.

#### Definition 8 (Categorical Schema)

A **categorical schema** is a pair \( C = (G, \sim) \), where \( G \) is a graph and \( \sim \) is a categorical path equivalence relation on \( \text{Path}_G \).

#### Definition 9 (Schema Category)

Given a categorical schema \( C = (G, \sim) \), the **schema category** \( C \) has:
- Objects: vertices of \( G \).
- Morphisms: equivalence classes of paths in \( G \) under \( \sim \).
- Composition: path composition respecting \( \sim \).

#### Definition 10 (Instance Functor)

For a schema category \( C = (G, \sim) \), an **instance functor** \( I: C \rightarrow \text{Set} \) maps:
- Objects \( c \in C \) to sets \( I(c) \in \text{Set} \).
- Morphisms \( f: c \rightarrow d \) to functions \( I(f): I(c) \rightarrow I(d) \).

It satisfies \( I(p) = I(q) \) whenever \( p \sim q \).

**Example:**  
See Figure 3(a) for a relational instance functor mapping schema to sets.

### 3.2 Functorial Representation of Graph and Hierarchical Data

#### Definition 11 (Graph as Functor)

A **graph** \( G \) can be represented as a functor \( G: \mathcal{G} \rightarrow \text{Set} \), where \( \mathcal{G} \) is a two-object category with morphisms representing source and target functions:
\[
G(0) = E, \quad G(1) = V, \quad G(s) = \text{src}, \quad G(t) = \text{tgt}
\]

#### Definition 12 (Tree as Functor)

A **tree** is a functor \( T: \mathcal{T} \rightarrow \text{Set} \), where \( \mathcal{T} \) is a one-object category with a single non-trivial morphism \( p: 0 \rightarrow 0 \). The functor maps:
- The single object to the set of tree nodes.
- The morphism \( p \) to the parent function, with \( T(p)(r) = r \) for the root \( r \).

## 4 Data Transformations Between Functorial Instances

### 4.1 Intuition Behind Transformations Represented in Terms of Category Theory

Transformations between data instances \( I_1: C_1 \rightarrow \text{Set} \) and \( I_2: C_2 \rightarrow \text{Set} \) are modeled using functors and natural transformations. Functoriality ensures structure preservation, while natural transformations handle data mapping.

### 4.2 Data Transformation as Lifting Problem

#### Definition 13 (Data and Schema Transformation)

Given data instances \( I_1: C_1 \rightarrow \text{Set} \) and \( I_2: C_2 \rightarrow \text{Set} \), a **transformation** from \( I_1 \) to \( I_2 \) is a Kan lift \( (\text{Rift}_{I_2} I_1: C_1 \rightarrow C_2, \epsilon: I_2 \circ \text{Rift}_{I_2} I_1 \Rightarrow I_1) \) where \( \text{Rift}_{I_2} I_1 \) is a full functor.

**Example:**  
See Figure 4 for a transformation from a relational to a property graph instance.

**Note:**  
Functoriality alone does not ensure meaningful transformations. Full functors are required to preserve the necessary structure for practical transformations.

## 5 Conclusions and Future Work

A category theoretical framework formalizes relational, graph, and hierarchical data models and their transformations. Kan lifts provide a promising basis for data and schema transformations. Future work includes:
- Formalizing query transformations.
- Modeling temporal data within category theory to handle dynamic data changes.

**Remark:**  
A solid theoretical foundation using category theory can unify disparate transformation frameworks and support the complexity of polystores and multi-model databases.

## References

[References are omitted in the distilled version as they do not contain mathematical content.]
