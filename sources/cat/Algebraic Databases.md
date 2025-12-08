# Algebraic Databases

Patrick Schultz, David I. Spivak, Christina Vasilakopoulou, and Ryan Wisnesky

**Abstract.** Databases have been studied category-theoretically for decades. In this work, we propose an extension of the earlier set-valued functor model to incorporate multi-sorted algebraic theories, capturing operations like comparing integers or concatenating strings. We also package schemas, instances, change-of-schema functors, and queries in a single double categorical structure called a proarrow equipment.

## Contents
1. Introduction  
2. Profunctors and Proarrow Equipments  
3. Algebraic Theories  
4. Presentations and Syntax  
5. Algebraic Database Schemas  
6. Algebraic Database Instances  
7. The Fundamental Data Migration Functors  
8. The Double Category $\mathbf{Data}$  
9. Queries and Uber-Queries  
10. Implementation  
A. Componentwise Composition and Exponentiation in $\mathbf{Data}$

---

## 1. Introduction

*(Introductory text is omitted except for key definitions or remarks that appear formally in later sections.)*

---

## 2. Profunctors and Proarrow Equipments

### 2.1. Profunctors

**Definition.** A profunctor $M$ from a category $C$ to a category $D$, written 
$$
M : C \nrightarrow D,
$$
is a functor
$$
M : C^{op} \times D \to \mathbf{Set}.
$$

**Remark.** Profunctors are also called correspondences or distributors, and can be viewed as bimodules or generalizations of relations.

**Notation.** Composition of two profunctors 
$$
M : C \nrightarrow D \quad\text{and}\quad N : D \nrightarrow E
$$
is given by
$$
(M \,\otimes\, N)(c, e) \;=\; \int^{\,d \in D} M(c, d)\,\times\,N(d, e),
$$
using the coend formula.

### 2.2. Profunctor Morphisms

A morphism of profunctors $\phi : M \Rightarrow N$ is a natural transformation $M \to N$ respecting the left and right actions. The bicategory of small categories, profunctors, and transformations is written $\mathbf{Prof}$.

### 2.3. Proarrow Equipments

A **double category** $D$ has objects and vertical morphisms forming a category $D_0$, horizontal 1-cells forming a category $D_1$ with functors $L,R : D_1 \to D_0$, a unit functor $U : D_0 \to D_1$, and a composition $\otimes : D_1 \times_{D_0} D_1 \to D_1$ subject to coherence. A **proarrow equipment** (or framed bicategory) is a double category in which the frame functor $(L,R): D_1 \to D_0 \times D_0$ is a fibration.

### 2.4. Prof as an Equipment

$\mathbf{Prof}$ is a proarrow equipment with:
- Objects: small categories,
- Vertical morphisms: functors,
- Horizontal 1-cells: profunctors,
- 2-cells: transformations.  

Composition is given by coends as above.

### 2.5. Collages

A proarrow $M: A \nrightarrow B$ in an equipment can be “collaged” into a new object $M$ along with inclusions $A \to M \leftarrow B$. This construction in $\mathbf{Prof}$ is the usual collage of a profunctor.

**Definition.** An equipment $D$ has **collages** if every proarrow $M: A \nrightarrow B$ has a universal cocone from $M$ to a single object. If every such collage is a cartesian lifting, the collages are **normal**.

**Proposition (2.19 in text).** In $\mathbf{Prof}$, the collage $M$ of a profunctor $M : C \nrightarrow D$ has
- Objects: $\mathrm{Ob}(C) \,\sqcup\, \mathrm{Ob}(D)$,
- Hom-sets defined piecewise by $C(c,c')$, $D(d,d')$, and $M(c,d)$.

### 2.6. Extensive Collages

**Definition.** An equipment $D$ has **extensive collages** if it has local colimits, normal collages, and a certain functor $MResN$ is an equivalence of categories. 

**Proposition (2.27 in text).** $\mathbf{Prof}$ has extensive collages.

---

## 3. Algebraic Theories

### 3.1. Definition

A **(multi-sorted) algebraic theory** is a cartesian strict monoidal category $T$ with a set $S_T$ of base sorts, such that the monoid of objects of $T$ is free on $S_T$. A morphism of theories $T \to T'$ is a product-preserving functor sending base sorts to base sorts.

### 3.2. Algebras of an Algebraic Theory

An **algebra** over $T$ is a product-preserving functor $T \to \mathbf{Set}$. The category of such algebras is denoted $T\text{-Alg}$.

### 3.3. Yoneda and Sifted Colimits

If $T$ is an algebraic theory, the Yoneda embedding $y : T^{op} \to [T,\mathbf{Set}]$ factors through $T\text{-Alg}$. The category $T\text{-Alg}$ is cocomplete, but not necessarily with pointwise colimits.

### 3.4. Algebraic Profunctors

**Definition.** A profunctor $M : C \nrightarrow T$, where $T$ is an algebraic theory, is **algebraic** if $M(c,-) : T \to \mathbf{Set}$ preserves finite products for each $c\in C$. Equivalently, $M : T \to \mathbf{Set}^{C^{op}}$ factors through $T\text{-Alg}$.

### 3.5. Left Action $\otimes$

For $M : C \nrightarrow D$ and an algebraic profunctor $N : D \nrightarrow T$, their **left tensor** $M \otimes N : C \nrightarrow T$ is given by the composition:
$$
\Lambda_N \circ M : C^{op} \;\longrightarrow\; T\text{-Alg}.
$$

---

## 4. Presentations and Syntax

### 4.1. Presentations of Algebraic Theories

An **algebraic signature** $\Sigma$ has a set $S_\Sigma$ of base sorts and a set $\Phi_\Sigma$ of function symbols $f: (s_1,\dots,s_n)\to s'$. A **morphism** of signatures maps sorts to sorts and function symbols accordingly.

A **presentation** $(\Sigma,E)$ of an algebraic theory $T$ is a signature $\Sigma$ and a set $E$ of equations over $\Sigma$ such that $T \cong \mathbf{Cxt}_\Sigma / E$ (the free theory on $\Sigma$ quotiented by $E$).

### 4.2. Presentations of Categories

A **category presentation** is a pair $(G,E)$ where $G$ is a graph (unary signature) and $E$ is a set of unary equations. The category is $\mathrm{Fr}(G)/E$.

### 4.3. Presentations of Functors

Given $(G,E)$, a functor $C \to \mathbf{Set}$ can be presented as an algebra for $(\mathbf{Cxt}_G/E)$.

### 4.4. Presentations of Algebraic Profunctors

**Definition.** For $C=\mathrm{Fr}(G)/E_G$ and $T=\mathbf{Cxt}_\Sigma/E_\Sigma$, a profunctor signature $\Upsilon$ from $G$ to $\Sigma$ plus a set of profunctor equations $E_\Upsilon$ yield an algebraic profunctor $ \kappa[\Upsilon]/E_\Upsilon : C \nrightarrow T$.

---

## 5. Algebraic Database Schemas

### 5.1. Definition

A **database schema** $S$ over an algebraic theory $\mathrm{Type}$ is a pair $(S_e,S_o)$ where
- $S_e$ is a category (the entity category),
- $S_o : S_e \nrightarrow \mathrm{Type}$ is an algebraic profunctor (the observables profunctor).

We sometimes write $S$ for its collage, with $S \to 2$ and pullbacks giving the entity side $S_e$ and $\mathrm{Type}$.

### 5.2. Presentations of Schemas

A **schema signature** $\Xi=(G_\Xi,\Upsilon_\Xi)$ plus equations $E_\Xi = (E_e,E_o)$ present the entity category via $(G_\Xi,E_e)$ and the observables via $(\Upsilon_\Xi,E_o)$.

### 5.3. Schema Mappings

A **schema mapping** $F : S \to T$ is a functor $F_e : S_e \to T_e$ together with a $2$-cell $F_o : S_o \Rightarrow T_o \circ F_e^{op}$ in $\mathbf{Prof}$. The category of schemas is written $\mathbf{Schema}$.

---

## 6. Algebraic Database Instances

### 6.1. Instances

**Definition.** If $S=(S_e,S_o)$ is a schema, an **instance** on $S$ is a functor $I: S \to \mathbf{Set}$ whose restriction to $\mathrm{Type}$ is a $\mathrm{Type}$-algebra. Equivalently, $I$ is a copresheaf $S_e \to \mathbf{Set}$ plus a product-preserving functor $I_t: \mathrm{Type} \to \mathbf{Set}$, subject to certain compatibility.

Denote by $S\text{-Inst}$ the category of instances and natural transformations.

### 6.2. The Category $S\text{-Inst}$

**Proposition (6.6 in text).** $S\text{-Inst}$ is equivalent to a category of algebras for some algebraic theory.

**Corollary (6.8 in text).** $S\text{-Inst}$ has all small colimits.

### 6.3. Presentations of Instances

Given a schema presentation $(\Xi,E_\Xi)$, an instance can be presented by a context $\Gamma$ and extra equations $E'_\Gamma$. The free instance $\langle \Gamma\rangle$ is an S-instance, with quotients by $E'_\Gamma$ giving more general instances.

### 6.4. Decompositions

An instance $I$ can be decomposed into entity side $I_e$, type side $I_t$, and a values assignment $I_o$, with $I_t$ an algebra in $\mathrm{Type}\text{-Alg}$.

---

## 7. The Fundamental Data Migration Functors

Given a schema mapping $F : S \to T$, there are three functors $S\text{-Inst} \leftrightarrows T\text{-Inst}$:

1. **Pullback** $\Delta_F$,
2. **Left Pushforward** $\Sigma_F$,
3. **Right Pushforward** $\Pi_F$.

### 7.1. $\Delta_F$

**Definition (7.1 in text).** For $I \in T\text{-Inst}$, $\Delta_F(I) = I \circ F$.  

### 7.2. $\Pi_F$

**Proposition (7.3 in text).** $\Delta_F$ has a right adjoint $\Pi_F$, obtained as a right Kan extension.

### 7.3. $\Sigma_F$

**Proposition (7.4 in text).** $\Delta_F$ has a left adjoint $\Sigma_F$. For $I\in S\text{-Inst}$,
$$
\Sigma_F(I) \;=\; \int^{\,s \in S_e}\; I(s)\,\cdot\, y(Fs).
$$

### 7.4. Extra Remarks

**Proposition (7.12 in text).** $\Sigma_F$ preserves the type side iff $F_o$ is cartesian.

---

## 8. The Double Category $\mathbf{Data}$

### 8.1. Bimodules

**Definition (8.3 in text).** A **bimodule** $M : R \nrightarrow S$ is a functor 
$$
M : R^{op} \to S\text{-Inst}
$$
that sends each $r \in R_e$ to an $S$-instance $M(r)$ and respects $\mathrm{Type}$ as representable on the right.

### 8.2. Adjunctions $\Lambda_M$ and $\Gamma_M$

For a bimodule $M : R \nrightarrow S$,
$$
\Lambda_M : R\text{-Inst} \;\longrightarrow\; S\text{-Inst}, \quad
\Gamma_M : S\text{-Inst} \;\longrightarrow\; R\text{-Inst}
$$
are left and right adjoints, preserving type algebras.

### 8.3. Data as an Equipment

**Definition (8.13 in text).** $\mathbf{Data}$ is the double category whose:
- Objects: schemas,
- Vertical morphisms: schema mappings,
- Horizontal morphisms: bimodules,
- 2-cells: transformations respecting the type side.

The composition $M\otimes N$ of bimodules $M: R\nrightarrow S$ and $N:S\nrightarrow T$ is given by
$$
M \;\otimes\; N \;=\; \Lambda_N \,\circ\, M.
$$

**Proposition (8.14 in text).** $\mathbf{Data}$ is an equipment.

### 8.4. Bimodule Collages

Each bimodule $M : R\nrightarrow S$ has a collage $\mathrm{Col}(M)$, forming a schema, with inclusions $i_R, i_S$ satisfying universal properties.

**Proposition (8.31 in text).** $\mathbf{Data}$ has normal collages.

### 8.5. Factorization via Data Migration

**Corollary (8.34 in text).** Any bimodule $M$ factors as 
$$
M \;\cong\; i_R \,\otimes\, U_{\mathrm{Col}(M)} \,\otimes\, i_S.
$$
Equivalently, the functors $\Lambda_M, \Gamma_M$ factor as $\Delta\circ \Sigma$ or $\Delta\circ \Pi$ along the collage.

---

## 9. Queries and Uber-Queries

### 9.1. Definition of a Query

A **query** $Q$ on a schema $S$ can be presented as a “FOR-WHERE-RETURN” specification, yielding a schema $R$ (with one entity) and a bimodule $M: R \nrightarrow S$. Evaluating the query on an instance $J$ is the functor $\Gamma_M(J)$.

### 9.2. Example

If $Q$ is
```
FOR: e : Emp, d : Dept
WHERE: e.wrk.name = Admin, (e.sal <= d.sec.sal) = ⊤
RETURN: emp_last := e.last, dept_name := d.name, diff := d.sec.sal - e.sal
```
this yields a result schema $R$ with single entity “$\ast$” and attributes $(emp_{last}, dept_{name}, diff)$. The frozen instance is $\langle e:Emp,d:Dept \rangle$ modulo those two equations.

### 9.3. Uber-queries

A **bimodule** $N : L \nrightarrow S$ can be seen as a more general query or **uber-query**, possibly returning multiple tables or referencing other queries.

---

## 10. Implementation

*(Implementation details, plus semi-decidable word problems and rewriting methods, are outlined. We keep only the essential remarks on word problems.)*

**Key Point:** Each finite presentation of categories or instances requires a decision procedure for the word problem, typically resolved by rewriting systems such as Knuth-Bendix completion.

---

## Appendix A. Componentwise Composition and Exponentiation in $\mathbf{Data}$

### A.1. Proposition (Componentwise Composition)

For two bimodules $M : R\nrightarrow S$ and $N: S\nrightarrow T$, the composite $M\otimes N$ can be expressed in components via a pushout in $[R_e^{op}, \mathrm{Type}\text{-Alg}]$. See Proposition A.1 for the diagram.

### A.2. Proposition (Horizontal 2-cells)

The horizontal composition of 2-cells can be computed similarly by a pushout in the appropriate functor category.

### A.3. Proposition (Exponentiation)

If $N : S\nrightarrow T$ and $P : R\nrightarrow T$ are bimodules, then $N \,\triangleleft\, P$ can be described by pointwise pullbacks.  

