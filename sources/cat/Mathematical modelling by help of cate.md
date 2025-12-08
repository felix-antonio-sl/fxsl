# Mathematical modelling by help of category theory

## Abstract

Solution of any engineering problem starts with a modelling process, which provides a model representing a system under consideration. This document proposes a category theory-based modelling framework for mathematical models, introducing categories of mathematical models, notions of complexity and convertibility, and constructions for coupled models. Various examples illustrate how category theory can clarify relations between models and detect conceptual modelling errors.

---

## Chapter 1: Modelling process in engineering

### 1.1 Modelling and modelling errors

**Definition 1.1** (Partial and global models)  
A model $A$ is called to be a **partial model** of a model $B$, iff 
$$
A \subset B \quad \text{but} \quad B \not\subset A.
$$
Moreover, a model $M$ is said to be **global**, iff there does not exist a model $N$ such that 
$$
M \subset N.
$$

*(No propositions or theorems explicitly stated in this chapter; important conceptual points on errors and coupling have been introduced.)*

---

### 1.2 Conceptual modelling in engineering

*(Conceptual material on sources of uncertainty, verification & validation, etc. No formal definitions/theorems here apart from those already stated.)*

---

### 1.3 Modelling of engineering systems by means of modelling languages

*(Discussion on conceptual and practical modelling languages. No new definitions or theorems.)*

---

### 1.4 Objectives and structure of the dissertation

*(Lays out the objectives and structure; no new formal statements.)*

---

## Chapter 2: Categorical approach to mathematical modelling

### 2.1 Basics of category theory and its applications

**Definition 2.1** (Category)  
A **category** consists of:
1. **Objects**: $A, B, C, \dots$
2. **Arrows (morphisms)**: $f, g, h, \dots$  
   Each arrow $f$ has a domain $\mathrm{dom}(f)$ and codomain $\mathrm{cod}(f)$. We write $f: A \to B$ if $\mathrm{dom}(f)=A$ and $\mathrm{cod}(f)=B$.  
3. A rule for **composing** arrows: given $f: A \to B$ and $g: B \to C$, there is a composite $g \circ f: A \to C$.  
4. For each object $A$, there is an **identity arrow** $1_A: A \to A$.  
These data satisfy **associativity**: $h \circ (g \circ f) = (h \circ g) \circ f$ and **unit**: $f \circ 1_A = f = 1_B \circ f$.

**Definition 2.2** (The category $\mathbf{Rel}$)  
$\mathbf{Rel}$ has sets as objects and binary relations as arrows. That is, an arrow $f: A \to B$ is a subset $f \subset A \times B$. Composition is defined by relational composition. The identity arrow on a set $A$ is the identity relation $\{(a,a)\mid a \in A\}$.

**Definition 2.3** (Discrete category)  
A category is **discrete** if every arrow is an identity. Equivalently, a set $X$ together with identity arrows $x \to x$ for each $x\in X$ forms a discrete category.

**Definition 2.4** (Functor)  
A **functor** $F: \mathcal{C} \to \mathcal{D}$ between categories $\mathcal{C}$ and $\mathcal{D}$:
1. Assigns to each object $A$ in $\mathcal{C}$ an object $F(A)$ in $\mathcal{D}$.  
2. Assigns to each arrow $f: A \to B$ in $\mathcal{C}$ an arrow $F(f): F(A)\to F(B)$ in $\mathcal{D}$.  
3. Preserves identity: $F(1_A)=1_{F(A)}$.  
4. Preserves composition: $F(g\circ f)=F(g)\circ F(f)$.

**Definition 2.5** (Natural transformation)  
Given categories $\mathcal{C}$, $\mathcal{D}$ and functors $F,G: \mathcal{C} \to \mathcal{D}$, a **natural transformation** $\vartheta: F \to G$ is a family of arrows 
$$
(\vartheta_C: F(C)\to G(C))_{C\in \mathcal{C}}
$$
such that for every arrow $f: C \to C'$ in $\mathcal{C}$, the following diagram commutes:
$$
\begin{array}{ccc}
F(C) & \xrightarrow{\vartheta_C} & G(C) \\
{\scriptstyle F(f)} \big\downarrow & & \big\downarrow {\scriptstyle G(f)} \\
F(C') & \xrightarrow{\vartheta_{C'}} & G(C').
\end{array}
$$

**Definition 2.6** (Product of two categories)  
For categories $\mathcal{C}$ and $\mathcal{D}$, their **product** $\mathcal{C}\times \mathcal{D}$ has:
- Objects: pairs $(C,D)$ with $C\in \mathcal{C}$, $D\in \mathcal{D}$.
- Arrows: $(f,g): (C,D)\to (C',D')$ with $f: C\to C'\in \mathcal{C}$ and $g: D\to D'\in \mathcal{D}$, composed componentwise.

**Definition 2.7** (Functor category)  
For categories $\mathbf{B}$ and $\mathbf{C}$, the **functor category** $\mathbf{B}^{\mathbf{C}}=\mathrm{Funct}(\mathbf{C},\mathbf{B})$ has:
- Objects: all functors $T:\mathbf{C}\to \mathbf{B}$,
- Morphisms: all natural transformations between such functors.

**Definition 2.8** (Initial/terminal objects)  
In a category $\mathcal{C}$:
- An object $0$ is **initial** if for any $C\in \mathcal{C}$ there is a unique arrow $0\to C$.
- An object $1$ is **terminal** if for any $C\in \mathcal{C}$ there is a unique arrow $C\to 1$.

**Proposition 2.1**  
Initial (terminal) objects are unique up to isomorphism.

**Definition 2.9** (Subcategory)  
A **subcategory** $\mathcal{S}$ of a category $\mathcal{C}$ is a collection of some objects and some arrows of $\mathcal{C}$ such that for any arrow $f$ in $\mathcal{S}$, its domain and codomain are in $\mathcal{S}$, all identity arrows are in $\mathcal{S}$, and compositions of arrows in $\mathcal{S}$ lie in $\mathcal{S}$.  
$\mathcal{S}$ is **full** if for any pair of objects in $\mathcal{S}$, all arrows in $\mathcal{C}$ between them lie in $\mathcal{S}$.

**Definition 2.10** (Comma category)  
Given categories and functors
$$
E \xrightarrow{T} C \xleftarrow{S} D,
$$
the **comma category** $(T \downarrow S)$ has:
- Objects: all triples $\langle e,d,f\rangle$ with $e$ object of $E$, $d$ object of $D$, and $f: T(e)\to S(d)$ an arrow of $C$.
- Arrows $\langle e,d,f\rangle \to \langle e',d',f'\rangle$ are pairs $\langle k,h\rangle$ with $k: e\to e'$ in $E$, $h: d\to d'$ in $D$, making the square commute: $f' \circ T(k)=S(h)\circ f$.

**Definition 2.11** (Universal arrow)  
If $S: D\to C$ is a functor and $c$ an object of $C$, a **universal arrow** from $c$ to $S$ is a pair $\langle r,u\rangle$ with $r$ an object of $D$ and $u: c\to S(r)$ in $C$ such that for any $d\in D$ and $f: c\to S(d)$, there is a unique arrow $f': r\to d$ with $Sf' \circ u=f$.

**Definition 2.12** (Equaliser)  
Given parallel arrows
$$
A \xrightarrow{f,g} B,
$$
an **equaliser** of $f$ and $g$ is an object $E$ and arrow $e: E\to A$ satisfying $f\circ e=g\circ e$ and universal with respect to this property.

---

### 2.2 Mathematical models as categories

#### 2.2.1 Categories of mathematical models

**Definition 2.13** (Category of mathematical models)  
Let $\mathrm{Model}_1$ be a category of mathematical models describing a given physical phenomenon. For all objects of $\mathrm{Model}_1$, the following assumptions hold:

1. Each object is a finite non-empty set — a **set of assumptions** $\mathrm{Set}_A$, where $A$ is the corresponding mathematical model.
2. Morphisms (arrows) are **relations** between these sets.
3. For each set of assumptions and its corresponding model there is a mapping $\mathrm{Set}_A \xrightarrow{S} A$.
4. All objects are related to mathematical models acting in the **same physical dimension**.

#### 2.2.2 Relations between mathematical models

**Definition 2.14** (Complexity of mathematical models)  
Let $A$ and $B$ be mathematical models in a category $\mathrm{Model}_1$. We say that model $A$ has **higher complexity** than model $B$ iff 
$$
\mathrm{Set}_A \subset \mathrm{Set}_B \quad\text{but}\quad \mathrm{Set}_B \not\subset \mathrm{Set}_A.
$$
Two models are called **equal in complexity** iff $\mathrm{Set}_A = \mathrm{Set}_B$.

**Corollary 2.1**  
In a totally ordered category $\mathrm{Model}_1$ with $n$ objects, there exist two unique objects:

- The **most complex object** $\mathrm{Set}_{A_1}$ satisfying $\mathrm{Set}_{A_1}\subset \mathrm{Set}_{A_i}$ for all $i$.
- The **simplest object** $\mathrm{Set}_{A_n}$ satisfying $\mathrm{Set}_{A_n} = \bigcup_{j=1}^n \mathrm{Set}_{A_j}$.

**Remark 2.2**  
Sets of assumptions are written in natural language, making formal comparison challenging. Future refinements may impose strict rules.

**Definition 2.15**  
Let $\mathrm{Model}_1$ be a category of mathematical models with $n$ objects $\mathrm{Set}_{A_j}, j=1,\dots,n$ ordered by Definition 2.14. If
$$
\mathrm{Set}_{A_1} \subset \mathrm{Set}_{A_2} \subset \dots \subset \mathrm{Set}_{A_n},
$$
and if the union of all assumptions is $\mathrm{Set}_{A_n}$, then $\mathrm{Model}_1$ contains **totally ordered objects**; otherwise the objects are **partially ordered**.

*(Immediately following, the document uses the same numbering for corollary as above; we keep them consistent as in the original.)*

**Proposition 2.2**  
For a partially ordered category $\mathrm{Model}_1$ with $n$ objects, one of the following holds regarding the existence of most complex and simplest objects:

1. Neither the most complex nor the simplest object exists.
2. The most complex object exists but the simplest object does not.
3. The simplest object exists but the most complex does not.
4. Both exist simultaneously.

**Theorem 2.1**  
Consider a category $\mathrm{Model}_1$ with $n$ objects. If the most complex object $\mathrm{Set}_{A_1}$ and the simplest object $\mathrm{Set}_{A_n}$ exist simultaneously in $\mathrm{Model}_1$, then $\mathrm{Model}_1$ is either a totally ordered category or contains at least two totally ordered subcategories.

##### Proof (sketch)
Uses the constructive approach in Proposition 2.2 and the definition of total ordering. If all objects are comparable, the category is totally ordered; otherwise it contains at least two disjoint chains of comparable objects.

**Theorem 2.2**  
Every partially ordered category of mathematical models contains at least one totally ordered category of mathematical models as a subcategory.

*(Proof follows from taking a chain of comparable objects. Omitted here for brevity.)*

#### 2.2.3 Convertible mathematical models

**Definition 2.16** (Convertible models)  
Let $\mathrm{Set}_{A_1}$ be an object in $\mathrm{Model}_1$, and let $B_1$ and $B_2$ be two possible model formulations associated to $\mathrm{Set}_{A_1}$ via functors $F$ and $G$. Then $B_1$ and $B_2$ are **connected by a natural transformation** $\vartheta$, and are called **convertible**. Diagrammatically:
$$
\mathrm{Set}_{A_1} 
\;\; \xrightarrow{F,G}\;\; 
B_1, B_2
\quad\text{with}\quad
\vartheta: F(\mathrm{Set}_{A_1}) \to G(\mathrm{Set}_{A_1}).
$$

**Corollary 2.2**  
Convertible models have the same complexity.

**Remark 2.4** and **Remark 2.5**  
(Explain that working directly with final equations or PDEs can mask the fact they originate from the same assumptions. Different PDE forms can be convertible versions of the same model.)

---

### 2.3 Categorical perspective on coupled mathematical models

#### 2.3.1 Categories of coupled mathematical models

**Definition 2.17** (Category of coupled models, initial form)  
Let $\mathrm{Model}_i$ and $\mathrm{Model}_j$ with $i\neq j$ be categories of mathematical models. A category $\mathrm{ModCoup}_{i,j}$ of **coupled mathematical models** has objects which are finite sets of assumptions $\mathrm{Set}_{i,j}$ formed from combining assumptions $\mathrm{Set}_i$ and $\mathrm{Set}_j$ plus coupling conditions. Morphisms are relations, and each set of assumptions has a formalisation mapping to the final coupled model.

**Definition 2.18** (Category of coupled models, refined)  
$\mathrm{ModCoup}_{i,j}$ is a **product category** $\mathrm{Model}_i \times \mathrm{Model}_j$ with projection functors $\pi_1$ and $\pi_2$.  
For objects $\mathrm{Set}_i,\mathrm{Set}_j$, a coupled object is
$$
\mathrm{Set}_{i,j}:= \langle \mathrm{Set}_i \cup \mathrm{Set}_j,\; \mathrm{Set}_{\text{Coup}}^{i,j}\rangle
$$
where $\mathrm{Set}_{\text{Coup}}^{i,j}$ is the set of coupling conditions.

**Proposition 2.3**  
Let $T(\mathrm{Set}_i) = \langle \mathrm{Set}_i,\mathrm{Set}_{\text{Coup}}^i\rangle$ and $F(\mathrm{Set}_j)= \langle \mathrm{Set}_j,\mathrm{Set}_{\text{Coup}}^j\rangle$. Then
$$
\mathrm{Set}_{i,j} := T(\mathrm{Set}_i)\cup F(\mathrm{Set}_j)= \langle \mathrm{Set}_i \cup \mathrm{Set}_j,\; \mathrm{Set}_{\text{Coup}}^i \cup \mathrm{Set}_{\text{Coup}}^j\rangle.
$$
Either both $\mathrm{Set}_{\text{Coup}}^i$ and $\mathrm{Set}_{\text{Coup}}^j$ are non-empty, or exactly one is non-empty.

*(Proof argues that coupled models need extra assumptions beyond a mere union.)*

**Definition 2.19** (Coupling within the same category)  
Let $\mathrm{Model}_i$ be a category of mathematical models. Then
$$
\mathrm{ModCoup}_{i,i} = \mathrm{Model}_i + \mathrm{Model}_i
$$
is a **coproduct** category. Objects $\mathrm{Set}_{i,i}$ are formed via disjoint unions $\mathrm{Set}_i + \mathrm{Set}_i$ plus coupling conditions $\mathrm{Set}_{\text{Coup}}^{i,i}\neq \emptyset$.

#### 2.3.2 Relations between coupled models

**Definition 2.20** (Complexity of coupled models)  
Let $A$ and $B$ be coupled models with sets of assumptions $\mathrm{Set}_A,\mathrm{Set}_B$ and coupling conditions $\mathrm{Set}_{\text{Coup}}^A,\mathrm{Set}_{\text{Coup}}^B$. Then:
- $A$ has **higher base complexity** than $B$ if $\mathrm{Set}_A \subset \mathrm{Set}_B$ but not vice versa.
- $A$ has **higher coupling complexity** than $B$ if $\mathrm{Set}_{\text{Coup}}^A \subset \mathrm{Set}_{\text{Coup}}^B$ but not vice versa.
- $A$ has **higher complexity** than $B$ if it is higher in both base and coupling.

**Definition 2.21** (Refinement of base complexity)  
Distinguishes **left-base** vs. **right-base** complexity depending on whether $\pi_1(\mathrm{Set}_{A}) \subset \pi_1(\mathrm{Set}_{B})$ or $\pi_2(\mathrm{Set}_{A}) \subset \pi_2(\mathrm{Set}_{B})$.

**Proposition 2.4**  
If $n$ objects in $\mathrm{ModCoup}_{i,j}$ are left-base complexity related, then $\mathrm{Model}_i$ contains a totally ordered subcategory. Similarly for right-base.

*(Proof uses projection functors onto the underlying categories.)*

**Definition 2.22** (Total/partial ordering in $\mathrm{ModCoup}_{i,j}$)  
A category of coupled models can be **totally ordered on the left**, **on the right**, **in base**, **in coupling**, or be partially ordered, depending on whether all comparisons in base/coupling exist.

**Corollary 2.4**  
If $\mathrm{ModCoup}_{i,j}$ is totally ordered (on left/right/base/coupling), it contains unique most complex and simplest objects in those senses.

**Proposition 2.5**  
A partially ordered $\mathrm{ModCoup}_{i,j}$ can fail or succeed to have the most/simplest objects with respect to base and coupling in combinations analogous to Proposition 2.2.

**Theorem 2.3**  
If the most complex and simplest objects coexist in base or coupling, then $\mathrm{ModCoup}_{i,j}$ is totally ordered in that sense.

**Theorem 2.4**  
Every partially ordered category of coupled mathematical models contains at least one totally ordered category of coupled mathematical models as a subcategory.

#### 2.3.3 Convertibility of coupled models

**Definition 2.23** (Convertible coupled models, general)  
Two formulations $B_1,B_2$ of the same coupled assumptions $\mathrm{Set}_A$ are **convertible** if there is a natural transformation linking the functors $F(\mathrm{Set}_A)$ and $G(\mathrm{Set}_A)$.

**Corollary 2.5**  
Convertible coupled models have the same complexity.

**Definition 2.24** (Refinement: left/right/coupling convertibility)  
Model formulations can be convertible **on the left**, **on the right**, or **in coupling**, depending on how the diagram commutes with projection or coupling-condition functors.

*(Examples show beam-heat or elasticity-heat couplings with various complexities and how they can be converted or decoupled.)*

---

### 2.4 More abstract constructions on categories of mathematical models

#### 2.4.1 Functor categories

**Definition 2.28**  
For $\mathrm{Model}$ and $\mathrm{ModCoup}_{i,j}$, the **categories of formalised sets** are denoted $\mathrm{Model}^F$ and $\mathrm{ModCoup}_{i,j}^F$, etc. One obtains functor categories:
$$
\mathrm{Model}^F \;=\;\mathrm{Funct}(\mathrm{Model},\mathrm{Model}^F), 
\quad
\mathrm{ModCoup}_{i,j}^F \;=\;\mathrm{Funct}(\mathrm{ModCoup}_{i,j}, \mathrm{ModCoup}_{i,j}^F),
$$
and so on, preserving structure under different derivation methods.

#### 2.4.2 Comma categories

**Definition 2.29**  
For $\mathrm{Model}_i$ and $\mathrm{Model}_j$ with functors 
$$
T: \mathrm{Model}_i \to \mathrm{ModCoup}_{i,j}, \quad S: \mathrm{Model}_j \to \mathrm{ModCoup}_{i,j},
$$
the **comma category** $(T\downarrow S)$ has objects $\langle \mathrm{Set}_i, \mathrm{Set}_j, f\rangle$, $f: T(\mathrm{Set}_i)\to S(\mathrm{Set}_j)$ in $\mathrm{ModCoup}_{i,j}$, with morphisms enforcing commutative squares. This collects all ways to build coupled models from sets of assumptions on left and right.

#### 2.4.3 Universal arrows

- A universal arrow from a set of assumptions in one category to a formalisation functor ensures extension to a unique simpler or more complex model if total ordering is present.

**Corollary 2.6**  
A universal arrow from $\mathrm{Model}$ to $\mathrm{Model}^F$ exists if $\mathrm{Model}$ is totally ordered.

**Corollary 2.7**  
A universal arrow from $\mathrm{Model}_i$ or $\mathrm{Model}_j$ to $\mathrm{ModCoup}_{i,j}$ exists if $\mathrm{Model}_i$ or $\mathrm{Model}_j$ is totally ordered.

---

### 2.5 Further model properties and engineering perspective

#### 2.5.1 Categorical constructions revisited

Below are simplified versions for engineering use:

**Definition 2.30**  
A mathematical model = a set of basic assumptions, a model formulation, and the derivation from assumptions to the formulation. Models differ mainly in their assumptions.

**Definition 2.31** (Model complexity)  
Complexity measures the range of phenomena describable by a model. Models are comparable if their phenomena overlap.

**Definition 2.32** (Model convertibility)  
Different formulations that stem from the same assumptions are convertible. Complexity remains unchanged under convertibility.

**Definition 2.33** (Coupled models)  
A coupled mathematical model is more than a union of equations: it is two (or more) models plus a set of coupling conditions.

**Definition 2.34** (Coupling)  
Coupling of mathematical models is a mapping that increases complexity (by adding phenomena).

**Definition 2.35** (Different model derivations)  
Different derivations from sets of assumptions respect complexity; one derivation can be translated into another.

**Definition 2.36** (Different model couplings)  
Couplings are realized by a family of mappings, possibly different for the same phenomenon but at different complexity levels.

**Definition 2.37** (Model classes)  
By selecting specific assumptions, one defines a class of possible expansions/contractions to simpler/more complex models.

**Definition 2.38** (Model formulations can be ordered)  
Ordering of assumptions by complexity induces an ordering on formulations, provided proper translations between derivation methods exist.

---

## Important Equations Referenced

1. **Beam theories** (Example in text):  
   $$
   \rho F\frac{\partial^2 u}{\partial t^2} + EI_y \frac{\partial^4 u}{\partial x^4} = 0,
   $$
   plus Rayleigh/Timoshenko variants.

2. **Heat equation** (Example in text):  
   $$
   c\rho\frac{\partial\theta}{\partial t} - \lambda\Delta \theta = 0.
   $$

3. **Elasticity**:
   - Tensor form:
     $$
     \nabla \cdot \tilde{\sigma} + \rho K = 0,\quad \tilde{\sigma} = 2\mu\tilde{\epsilon} + \dots
     $$
   - Lamé equation:
     $$
     \mu \Delta u + (\lambda + \mu)\nabla (\nabla\cdot u) + \rho K = 0.
     $$
   - Quaternionic form:  
     $$
     D M D u = 0,\quad D=\sum_{k=1}^3 e_k \partial_k,\quad M u = \dots
     $$

4. **Coupled thermoelasticity**:
   - Coupled PDE system, e.g.  
     $$
     \mu \Delta u + (\lambda+\mu)\nabla(\nabla\cdot u) - (3\lambda + 2\mu)\alpha_T\nabla\Theta + F - \rho \ddot{u} = 0,
     $$
     $$
     \frac{\partial}{\partial t}\left(\Delta \Theta\right) - \dots = 0.
     $$


## 2.5.2 Model Properties and Model Comparison

In this section, several model properties are presented, and ideas on how these properties can be formalized in a category theory-based framework are discussed. Afterward, the notion of *model comparison* is introduced, together with practical motivation.

- **Model Complexity**: This property has already been addressed in the category theory-based framework (via Definition 2.14 in earlier sections).

- **Model Robustness**: Stability concept extended to robust initial-boundary value problems. If \(X,Y,Z\) are Banach spaces and
  \[
  A: X \to Y,\quad R: X \to Z,
  \]
  then the boundary value problem
  \[
  A\,u = f \,\text{in}\, \Omega,\quad R\,u = g \,\text{in}\,\partial\Omega
  \]
  is robust if it is stable, and for all \(\varepsilon>0\) there exists \(\delta>0\) such that
  \[
  \|A(x) - A(y)\|_Y < \varepsilon \quad\text{for all}\quad \|x-y\|_X < \delta.
  \]
  Since robustness relates to formulations rather than assumptions, it is difficult to treat on the abstract (categorical) level.

- **Model Sensitivity**: Involves how output changes with input parameters. Again, it is more about model formulations and computations. Not easily captured on an abstract level.

- **Model Uncertainty**: Relates to stochastic deviations. It also depends on formulations, so it is hard to incorporate directly at the categorical (conceptual) level.

### Definition 2.39 (Model completeness)

Let \(\mathbf{Model}\) be a category of (coupled) mathematical models, and let \(\mathrm{Set}_A\) be its object together with a factorization mapping \(S\) and model formulation \(A\). Further, let \(\mathrm{Set}'_{A}\) be a set of assumptions of a certain physical phenomenon, not necessarily an object of \(\mathbf{Model}\). Then the object \(\mathrm{Set}_A\) is called **complete** with respect to this physical phenomenon if
\[
\mathrm{Set}_A \,\subset \,\mathrm{Set}'_{A},
\]
and the corresponding model formulation will also be called complete. We write \(\mathrm{Set}_A \mid \mathrm{Set}'_{A}\) and \(A \mid \mathrm{Set}'_{A}\) for complete objects and model formulations.

### Definition 2.40

A mathematical model is called complete with respect to a certain physical phenomenon if its set of assumptions describes that phenomenon without additional modification.

**Note:** Definition 2.39 refines the *complexity* relation (Definition 2.14) to comparison with one specific object \(\mathrm{Set}'_{A}\). Complete objects form subcategories corresponding to phenomena a model can describe.

**Practical Meaning:** We can filter a category of models by a physical phenomenon of interest before comparing them. This leads to model reduction at the conceptual level, identifying only relevant models. The following formal definitions capture this idea:

### Definition 2.41 (Reducible models)

Let \(\mathrm{Set}_A\) be an object of a category of (coupled) mathematical models \(\mathbf{Model}\), and let \(\mathrm{Set}_A\) be complete with respect to a physical phenomenon \(\mathrm{Set}'_{A}\). Then \(\mathrm{Set}_A\) is **reducible** if there is a simpler object than \(\mathrm{Set}_A\) which remains complete with respect to \(\mathrm{Set}'_{A}\). Otherwise, the object is called **irreducible**. The reduction is denoted:
\[
\mathrm{Set}_A \xrightarrow{\mathrm{Set}'_A} \mathrm{Set}_B, 
\quad
A \xrightarrow{\mathrm{Set}'_A} B.
\]

### Definition 2.42 (Extendable models)

Let \(\mathrm{Set}_A\) be complete with respect to \(\mathrm{Set}'_{A}\). Then \(\mathrm{Set}_A\) is **extendable** if there is a more complex object than \(\mathrm{Set}_A\) which is still complete with respect to \(\mathrm{Set}'_{A}\). Otherwise, it is **not-extendable**.

### Definition 2.43 (Minimal and maximal models)

A complete object \(\mathrm{Set}_A\) is **minimal** if it is irreducible, and **maximal** if it is not-extendable. Minimal and maximal model formulations are defined similarly.

**Remark 2.15:** We see that, in fact, we have discussed conceptual-level model selection by focusing on a specific phenomenon of interest \(\mathrm{Set}'_A\). Hence, model selection and reduction can be addressed conceptually.

**Example** (Category \(\mathbf{Heat}\)): Let sets of assumptions be those in Table 2.3. Suppose we want to describe
\[
\mathrm{Set}'_F = \{\text{Heat propagates in a body via Fourier's law}\}.
\]
All objects of \(\mathbf{Heat}\) are complete w.r.t. \(\mathrm{Set}'_F\). Then:
- \(\mathrm{Set}_{UH}\) is minimal w.r.t. \(\mathrm{Set}'_F\).
- \(\mathrm{Set}_{NURH}\) is maximal w.r.t. \(\mathrm{Set}'_F\).
- \(\mathrm{Set}_{UH}, \mathrm{Set}_{NUH}, \mathrm{Set}_{RH}\) are extendable.
- \(\mathrm{Set}_{NURH}, \mathrm{Set}_{NUH}, \mathrm{Set}_{RH}\) are reducible.

If we consider 
\[
\mathrm{Set}'_{RN} = \{\text{Non-homogeneous material, radiative exchange}\},
\]
only \(\mathrm{Set}_{NURH}\) is complete, and it is both minimal and maximal.

**Model Comparison:** Models in a category can be ordered by complexity, but actual *quantitative comparison* requires evaluating a system response quantity (SRQ) and defining a metric. A reference model is chosen, and the difference between the reference model’s SRQ and another model’s SRQ is measured. Two directions are possible:

### Definition 2.44 (Relative comparison)

Let \(\mathrm{Set}_A, \mathrm{Set}_B, \mathrm{Set}_C\) be objects in a category \(\mathbf{Model}\). One of the following diagrams holds:

\[
\begin{array}{ccc}
\mathrm{Set}_A & \longrightarrow^f & \mathrm{Set}_C \\
\downarrow^g & & \downarrow \\
\mathrm{Set}_B & \longrightarrow & \mathrm{Set}_C
\end{array}
\quad \text{or} \quad
\begin{array}{ccc}
\mathrm{Set}_C & \longrightarrow^f & \mathrm{Set}_A \\
\downarrow^g & & \downarrow \\
\mathrm{Set}_C & \longrightarrow & \mathrm{Set}_B
\end{array}
\]
Then \(\mathrm{Set}_A\) and \(\mathrm{Set}_B\) are **relatively comparable** with respect to \(\mathrm{Set}_C\) if 
\[
(\mathrm{Set}_A \cup \mathrm{Set}_B) \,\subset\, \mathrm{Set}_C \quad\text{or}\quad
\mathrm{Set}_C \,\subset\, (\mathrm{Set}_A \cup \mathrm{Set}_B).
\]

### Definition 2.45 (Forward and backward comparison)

Let \(M\) be a metric quantifying the difference of an SRQ between models \(A\) and \(B\), with \(A\) as the reference model.
1. **Forward comparison**: If \(\mathrm{Set}_B \subset \mathrm{Set}_A\), write \(M_{SRQ}^{A,B}\).  
2. **Backward comparison**: If \(\mathrm{Set}_A \subset \mathrm{Set}_B\), write \(M_{SRQ}^{A,B}\) as well.

**Remark 2.16:** Comma categories of the form \((\mathrm{Set}_1 \downarrow \mathbf{Model})\) and \((\mathbf{Model} \downarrow \mathrm{Set}_1)\) can be viewed as categories of forward/backward comparability, respectively.

---

## 2.5.3 Application of the Categorical Modelling Framework to Aerodynamic Analysis of Bridge Decks

An example problem from [62] is revisited, illustrating how category-theoretic constructions can assist real-world engineering. Consider a linear structural model
\[
S := 
\begin{cases}
m_h \ddot{h} + c_h \dot{h} + k_h h = L,\\
m_\alpha \ddot{\alpha} + c_\alpha \dot{\alpha} + k_\alpha \alpha = M,
\end{cases}
\]
with lift \(L\) and moment \(M\). Multiple semi-analytical aerodynamic models (Steady, Quasi-steady, Unsteady, etc.) are enumerated, forming objects in a category \(\mathbf{AeroModel}\). It is partially ordered, with \(\mathrm{Set}_{LST}\) as the initial and \(\mathrm{Set}_{NLU}\) as the terminal object. Subcategories address specific phenomena, e.g., *classical flutter*.

**Practical comparison of models** is performed by selecting an SRQ and a metric (e.g., root-mean-square of structural response). Then *forward* or *backward* comparison reveals the effect of excluding or adding assumptions. The conceptual-level ordering and comparability identified by category theory directly inform numerical experiments.

---

## 2.6 Ideas Towards Automatic Model Generation

We now shift perspective to how the category theory-based framework might be implemented in practice, aiming towards automatic model generation. We focus on formalizing sets of assumptions and checking their consistency with derived model formulations.

### 2.6.1 Sets of Assumptions Revisited

A slightly modified version of Definition 2.13 is introduced:

### Definition 2.46

Let \(\mathbf{Model}_1\) be a category of mathematical models describing a given phenomenon. Suppose there is a finite set \(X\) of all possible assumptions needed to build the models. Then \(\mathbf{Model}_1\) is described by:

1. Each object is a subset of \(X\), denoted \(\mathrm{Set}_A\).
2. A morphism \(\mathrm{Set}_A \to \mathrm{Set}_B\) exists iff \(\mathrm{Set}_B \subset \mathrm{Set}_A\).
3. For each \(\mathrm{Set}_A\), there is a mapping \(\mathrm{Set}_A \xrightarrow{S} A\) into a model formulation.
4. All objects/models act in the same physical dimension.

**Key Point**: Not all subsets of \(X\) lead to meaningful models. We must define *consistently formalisable* sets.

### Definition 2.47 (Consistently formalisable set of assumptions)

Let \(S\) be a formalization mapping, and \(\mathrm{Set}_A\) be a set of assumptions in natural language. We call \(\mathrm{Set}_A\) *consistently formalisable* if and only if:
1. \(S(\mathrm{Set}_A)\) leads to a valid model formulation.
2. There is at least a theoretical possibility to verify the derivation of the model formulation from \(\mathrm{Set}_A\).

**Remark 2.18:** Verifying the derivation from natural language to mathematics is related to the *decision problem* or *decidability problem* in logic and computer science, so it remains nontrivial.

**Remark 2.19:** This process can generate new models if a particular subset yields a new set of assumptions. The framework naturally encompasses such *new* models as well.

---

### 2.6.2 Type Theory in the Mathematical Modelling Context

A possible route to verifying derivation consistency is through a type-theoretic approach, e.g., using a programming language such as Haskell. The idea is:

- Assign a *type* to each basic model component.
- Compose typed components under type-checking rules to form a full model.
- A type checker ensures only consistent compositions appear.

**Signal** concept (from Functional Hybrid Modelling [89, 90]): a function from time/space to a typed value. For partial differential equations, we label \(\{\xi_i\}\) with \(\xi_0\) for time and \(\xi_1,\dots,\xi_n\) for space, and define:
\[
S\,\alpha \;=\; \mathbb{R}^{(n+1)} \;\to\; \alpha.
\]
Relations on signals define equations or constraints among them. Two or more signals can be combined using isomorphisms between product types.

**Remark 2.20:** We adopt a componentwise approach for PDEs, rewriting any tensor or complex form in components \(\xi_i\). Extensions to more advanced type systems can incorporate dependent types or theorem provers.

---

### 2.6.3 Signals and Signal Relations

A signal relation \(\mathrm{SR}\,(n)::\alpha\) is a relation on signals of dimension \(n\). We write:

```
sigrel pattern where
    equations
```

*Equations* can be equalities or relation applications \(\,\sr\bowtie e\). This approach generalizes to multi-signal constraints.

---

### 2.6.4 Typing of a Few Basic Operators

Consider the heat equation:
\[
c(x)\,\rho(x)\,\frac{\partial \theta}{\partial t} \;-\; \mathrm{div}\bigl(\lambda(x)\,\nabla \theta\bigr) \;=\; f(x,t).
\]

#### Differential Operators

Define partial derivative:
\[
D_i^s := \frac{\partial^s}{\partial \xi_i^s}, 
\]
with the usual composition rules. In code, we might type it as (in Haskell-like notation):
\[
D :: \{n:: \mathbb{N}\}\,\to\, \mathbb{N}_{\leq n}\,\to\, \mathbb{N}\,\to\, \mathrm{SR}\,n(\alpha,\alpha).
\]
Divergence (\(\mathrm{div}\)) and gradient (\(\nabla\)) similarly have types:
\[
\mathrm{div} :: \mathrm{SR}\,n(\alpha^n,\alpha), 
\quad
\mathrm{grad} :: \mathrm{SR}\,n(\alpha,\alpha^n).
\]

#### Example (Rayleigh beam)

For the Rayleigh beam theory,
\[
\rho F\,\frac{\partial^2u}{\partial t^2} + E\,I_y\,\frac{\partial^4u}{\partial x^4} - \rho\,I_y\,\frac{\partial^4u}{\partial x^2\partial t^2} \;=\; q(x,t).
\]
In the type-theoretic approach:
```
Rayleigh :: SR (R,R)
Rayleigh = sigrel (u,q) where
   q = rho*F*(D(0)(2) u) + E*Iy*(D(1)(4) u)
       - rho*Iy*((D(1)(2) . D(0)(2)) u)
```
showing how PDE operators become typed constructs.

---

### 2.6.5 General Algorithm for Verifying a Model Formulation Derivation

1. **Basic Assumption Library**: Formalize standard assumptions/operators (Fourier’s law, Gauss theorem, etc.) with types.
2. **Declare Types**: For variables, material coefficients, etc.
3. **Type Check**: Compose assumptions via a higher-level notation; if well-typed, the model is consistent.
4. **Symbolic Manipulation**: If possible, use a CAS-like tool to simplify or finalize expressions.

Outcome: a final typed model equation. If type-check fails, we detect an inconsistency.

**Remark 2.21:** Dimensional types (units) can be integrated to catch errors such as unit mismatches.

---

### 2.6.6 Consistency of Coupling

#### Proposition 2.6

Let \(\mathbf{Model}^F_i, \mathbf{Model}^F_j\), and \(\mathbf{ModCoup}^F_{i,j}\) be categories of formalized models. Suppose we have functors
\[
T: \mathbf{Model}^F_i \to \mathbf{ModCoup}^F_{i,j}, 
\quad
F: \mathbf{Model}^F_j \to \mathbf{ModCoup}^F_{i,j},
\]
mapping single models into the coupled category. The *coupling of models* from \(\mathbf{Model}^F_i\) and \(\mathbf{Model}^F_j\) is **consistent** if and only if the squares in the diagram commute for all pairs of objects and morphisms. Formally, for objects \(A_1, A_2\in \mathbf{Model}^F_i\) and \(B_1, B_2\in \mathbf{Model}^F_j\), with morphisms \(f,g,s\) in the respective categories,
\[
\begin{array}{ccc}
A_1 & \xrightarrow{S_1(f)} & A_1\times B_1\\
T \big\downarrow & & \big\downarrow S_3(s) \\
A_2 & \xrightarrow{S_1(f)} & A_2\times B_2
\end{array}
\quad
\text{and similarly with } F.
\]
Diagram commutativity ensures the coupling is formalized consistently.

---

## 2.7 Alternative View on Mathematical Models

This section summarizes the prior results in more general terms. Instead of strictly relying on categorical structures, we introduce an *abstract triple* view of models and then show how they can form lattices and relate via relational algebra.

### 2.7.1 Mathematical Models as Abstract Triples

#### Definition 2.48

A mathematical model \(M\) is a triple
\[
M \;=\; \langle \mathrm{Set},\,M,\,S\rangle
\]
where \(\mathrm{Set}\) is the set of assumptions, \(M\) is an instantiation (equations, expressions), and \(S\) is a formalization mapping \(\mathrm{Set}\to M\).

These reflect the same idea as in category theory (objects are sets of assumptions, morphisms are inclusions, etc.) but are recast in a more flexible manner.

**Example**: Beam theories. Bernoulli-Euler beam, Rayleigh beam, Timoshenko beam each have sets of assumptions \(\mathrm{Set}_{\cdot}\) and corresponding differential formulations. Different natural transformations in the category setting become different mappings \(S\) in the triple approach.

### 2.7.2 Lattice of Mathematical Models

We can form a lattice of models by partial orders capturing expansions or analogies. The “expansion” means adding assumptions or broadening phenomena, and “analogy” could represent reformulating equations. The partial ordering can vary by context (e.g., complexity-based or other criteria).

**Example**: \(\mathrm{M}_{B-E}\), \(\mathrm{M}_R\), \(\mathrm{M}_T\), \(\mathrm{M}'_T\) in a lattice, with edges denoting expansions or analogies. Different ways to interpret expansions can give different lattice structures.

### 2.7.3 Relational Algebra Approach

#### Definition 2.49

A **collection of mathematical models** \(\mathrm{M}_C\) is
\[
\mathrm{M}_C = \langle (M_1,\dots,M_N), (R_1,\dots,R_m)\rangle,
\]
where each \(M_i\) is a model as in Definition 2.48, and each \(R_j\) is a binary (or n-ary) relation describing how these models relate (e.g., coupling, complexity, specialization). This approach generalizes category-theoretic ordering by allowing multiple relations at once.

**Application**: One can combine relations for complexity, phenomenon subsetting, or 1D special cases, etc. Coupled models across different phenomena can also appear in the same collection with “coupling” as a separate relation.

---

### 2.7.4 Extension of Relational Algebra Approach Beyond Mathematical Models

This relational viewpoint generalizes to more complex engineering systems, e.g., *intelligent structures* combining physical and cyber domains. Mappings for sensors \((f)\), control \((g)\), and actuators \((h)\) can be composed:

#### Definition 2.50

An advanced structure \(I\) can be considered as
\[
I := h \circ g \circ f \quad \text{over } \mathbb{R}^+,
\]
representing sensor → model → actuator processes.

#### Definition 2.51

A sensor is \(\langle I, Y, T\rangle\), with \(I\) an index set, \(Y\) measurements, \(T\) specs.

#### Definition 2.52

A sensor cluster is \(\langle B, (S_1,\dots,S_n), (R_1,\dots,R_m)\rangle\), where \(B\) is a base station, \(S_i\) are sensors, and \(R_j\) are relations specifying communication. Composition
\[
SC := S_1 \;\circ_{R_1}\; S_2 \;\circ_{R_2}\;\dots\;\circ_{R_m}\; S_n.
\]

#### Definition 2.53

A sensor network is \(\langle (S^C_1,\dots,S^C_n), (R_1,\dots,R_k)\rangle\), linking multiple clusters.

#### Definition 2.54, 2.55

Actuators and actuator networks are defined similarly, each having a base station and relations describing communication or control laws.

#### Definition 2.56

An **intelligent structure** \(I\) is
\[
I := \mathrm{SN} \;\circ_{R}\; \mathrm{AN},
\]
where \(\mathrm{SN}\) is a sensor network, \(\mathrm{AN}\) an actuator network, and \(R\) relations between them.

