# Category Theory for Consistency Between Multilevel System Modeling (MBSE) and Safety (MBSA)

## 1. **Foundations of Category Theory**

### Definition 1.1 (Category) 
A **category** $\mathcal{C}$ is composed of:
- A class $\mathrm{Ob}(\mathcal{C})$ of **objects**.
- For $x, y \in \mathrm{Ob}(\mathcal{C})$, a set $\mathrm{Hom}_{\mathcal{C}}(x,y)$ of **morphisms** from $x$ to $y$ (often called **arrows**).

Such that:

1. **Composition**: If $f \in \mathrm{Hom}_{\mathcal{C}}(x,y)$ and $g \in \mathrm{Hom}_{\mathcal{C}}(y,z)$, then $g \circ f \in \mathrm{Hom}_{\mathcal{C}}(x,z)$.  
2. **Associativity**: If $f,g,h$ are morphisms such that $g \circ f$ and $h \circ g$ exist, then $(h \circ g)\circ f = h\circ(g \circ f)$.  
3. **Identity**: For each $x \in \mathrm{Ob}(\mathcal{C})$, there exists an identity morphism $\mathrm{id}_x \colon x \to x$.

### Definition 1.2 (Functor)
Let $\mathcal{C}$ and $\mathcal{D}$ be categories. A **functor** $F: \mathcal{C} \to \mathcal{D}$ consists of:
- A function $F_{\mathrm{Ob}}: \mathrm{Ob}(\mathcal{C}) \to \mathrm{Ob}(\mathcal{D})$.
- For each $x,y \in \mathrm{Ob}(\mathcal{C})$, a function $F_{x,y}: \mathrm{Hom}_{\mathcal{C}}(x,y) \to \mathrm{Hom}_{\mathcal{D}}(F(x), F(y))$.

Such that:

1. $F(\mathrm{id}_x) = \mathrm{id}_{F(x)}$ for every object $x$ in $\mathcal{C}$.  
2. $F(g \circ f) = F(g) \circ F(f)$ whenever the composition $g \circ f$ is defined in $\mathcal{C}$.

### Definition 1.3 (Natural Transformation)
Let $F,G : \mathcal{C}\to \mathcal{D}$ be two functors. A **natural transformation** $\alpha: F \Rightarrow G$ is given by assigning to each object $x \in \mathrm{Ob}(\mathcal{C})$ a morphism $\alpha_x : F(x) \to G(x)$ in $\mathcal{D}$ such that for every morphism $f : x \to y$ in $\mathcal{C}$, the following diagram commutes:

$$
\begin{array}{ccc}
F(x) & \xrightarrow{\,F(f)\,} & F(y) \\
\Big\downarrow{\alpha_x} & & \Big\downarrow{\alpha_y}\\
G(x) & \xrightarrow{\,G(f)\,} & G(y)
\end{array}
$$

### Definition 1.4 (Full and Faithful Functors)
Let $F: \mathcal{C} \to \mathcal{D}$ be a functor.

- $F$ is **full** if for any $x,y \in \mathrm{Ob}(\mathcal{C})$, the map 
  $$F_{x,y}: \mathrm{Hom}_{\mathcal{C}}(x,y) \to \mathrm{Hom}_{\mathcal{D}}(F(x),F(y))$$ 
  is **surjective**.

- $F$ is **faithful** if this map is **injective** for all $x,y$.

### Definition 1.5 (Equivalence of Categories)
Two categories $\mathcal{C}$ and $\mathcal{D}$ are **equivalent** if there is a functor $F: \mathcal{C} \to \mathcal{D}$ and a functor $G: \mathcal{D} \to \mathcal{C}$, together with natural transformations $\alpha: \mathrm{Id}_{\mathcal{C}} \Rightarrow G \circ F$ and $\beta: \mathrm{Id}_{\mathcal{D}} \Rightarrow F \circ G$.

### Definition 1.6 (Cone)
Let $\mathcal{C}$ be a category and $D$ a diagram in $\mathcal{C}$. A **cone** over $D$ is an object $Q$ of $\mathcal{C}$ along with morphisms from $Q$ to each object of $D$ such that all newly formed triangles commute.

### Definition 1.7 (Limit)
A **limit** of a diagram is a **universal cone**: that is, a cone $L$ such that for any other cone $Q$ over the same diagram, there is a unique morphism $Q \to L$ making all triangles commute.

### Definition 1.8 (Pullback)
Let $A$, $B$, $C$ be three objects of a category, and $f: A \to C$, $g: B \to C$ be morphisms. A **pullback** of $A$ and $B$ over $C$ is the limit of the diagram formed by $f$ and $g$. In other words, a pullback $A \times_C B$ is an object with the usual universal property forming a commuting square with $A$, $B$, and $C$.

---

## 4. **The S2ML+Cat Framework**

### Definition 4.1 (Catport)
Consider a countable set of symbols $P$. A **Catport** is a category $C_P$ where:

- $\mathrm{Ob}(C_P)$ is a singleton containing a symbol $p \in P$.
- The only morphism is the identity on $p$.

### Definition 4.2 (Catconnection)
A **Catconnection** is a category $C_C$ where:

- $\mathrm{Ob}(C_C)$ is a non-empty, finite set of Catports.
- The only morphisms in $C_C$ are identities.

### Definition 4.3 (Catblock)
A **Catblock** $C_B$ is defined as follows:

1. $\mathrm{Ob}(C_B)$ is a finite set of Catblocks, Catports, and Catconnections.  
2. For each Catconnection $C \in \mathrm{Ob}(C_B)$, if a Catport $P_1 \in \mathrm{Ob}(C_B)$ is such that $P_1 \in \mathrm{Ob}(C)$, then there exist two morphisms 
   $$r_{P_1,C}: P_1 \to C \quad \text{and} \quad r'_{P_1,C}: C \to P_1$$ 
   in $C_B$ with specific mappings as described (mapping objects/morphisms accordingly).  
3. For each Catblock $B_1 \in \mathrm{Ob}(C_B)$:
   - Every Catconnection (resp. Catport, Catblock) in $B_1$ belongs to $\mathrm{Ob}(C_B)$, and there is a morphism mapping them up to $B_1$.  
   - For each $X$ in $\mathrm{Ob}(B_1)$, there is a **unique** Catblock $B'$ in $C_B$ such that no other Catblock in $B'$ contains $X$.  
4. There are no other morphisms in $C_B$ besides those specified above plus those implied by category axioms (identities, compositions).  
5. $\mathrm{Hom}(x,y)$ in $C_B$ refers to the set of morphisms between $x$ and $y$.

#### Proposition 4.1
A **Catblock** is a category.

##### Proof
To show $C_B$ is a category, one must verify identity morphisms, composition of morphisms, and associativity. The morphisms are either:
- Identities over Catports or Catconnections (both discrete categories),
- Or they map Catports and Catconnections to a parent Catblock.

By examining all source-target cases (Catport to Catconnection, etc.), compositions exist and are associative because they arise from identities or compositions of discrete identities. Hence $C_B$ satisfies the category axioms.

### Definition 4.4 (Catmodel)
A **Catmodel** $M$ is a category such that:

- $\mathrm{Ob}(M)$ is a finite set of Catblocks, Catports, Catconnections.
- There is a unique Catblock $R \in \mathrm{Ob}(M)$ called the **root**, satisfying: for each $x,y \in \mathrm{Ob}(R)$, $\mathrm{Hom}_M(x,y) = \mathrm{Hom}_R(x,y)$.
- All required morphisms from the definition of Catblocks hold, plus those from $R$ to each object.
- No extra morphisms appear beyond those mandated by category axioms or Catblock composition.

#### Proposition 4.2
$S2ML + Cat$ is a category.

##### Proof
In $S2ML + Cat$, the objects are all **Catmodels**, and the morphisms are **injections** between these models (see Definition 4.7). We verify identities (trivially injections), closure under composition (the composition of injections is still an injection), and associativity (composition of functors is associative). Hence $S2ML + Cat$ satisfies all category axioms.

### Theorem 4.1 (Equivalence Between Catmodels and Original S2ML)
**Statement**: Any Catmodel in $S2ML + Cat$ can be associated to a model in the standard S2ML quintuple definition, and conversely, up to the choice of symbols for blocks.

#### Proof
Construct functions $F$ (from S2ML quintuple to Catmodel) and $G$ (from Catmodel to S2ML quintuple) by mapping each port, connection, and block appropriately, respecting containment and reference relations. Show that $G \circ F$ and $F \circ G$ are each the identity (modulo renaming of blocks). This implies a **reversible** mapping between the standard S2ML formalism and the Catmodel approach.

### Lemma 4.1
Let $M_1, M_2 \in \mathrm{Ob}(S2ML + Cat)$ and suppose there exist two injections $F: M_1 \to M_2$ and $G: M_2 \to M_1$. Let $R_1$ and $R_2$ be the root objects of $M_1$ and $M_2$ respectively. Then $R_2 = F(R_1)$ and $R_1 = G(R_2)$.

##### Proof
Because $F$ is injective on objects and morphisms, it must map the unique root in $M_1$ to the unique root in $M_2$. Similarly for $G$. Thus $F(R_1)$ is the only object in $M_2$ with no parent, so it must be $R_2$. Similarly, $G(R_2)=R_1$.

### Lemma 4.2
Let $M_1, M_2 \in \mathrm{Ob}(S2ML + Cat)$ such that there exist two injections $F: M_1 \to M_2$ and $G: M_2 \to M_1$. Then 
$$
\mathrm{Order}(M_1) = \mathrm{Order}(M_2).
$$

##### Proof
Show that $F$ and $G$ must preserve (or increase) the order of objects (their “depth” from the root). By symmetry and counting argument, the orders must match.

### Lemma 4.3
Under the same assumptions, for each integer $i$ in $[0, k]$ (with $k$ the common order), $M_1$ and $M_2$ have the same number of objects of order $i$. Moreover, every object of order $i$ in $M_1$ (resp. $M_2$) is mapped to an object of order $i$ in $M_2$ (resp. $M_1$).

##### Proof
By induction on $i$. The injections between $M_1$ and $M_2$ preserve the layer structure (order) of Catblocks and Catports, so the argument on counting extends to all levels.

### Lemma 4.4
Under the same assumptions, the image by $F_{\mathrm{Ob}}$ (and $G_{\mathrm{Ob}}$) of a Catconnection is a Catconnection with the same number of Catports.

##### Proof
Similar counting argument: $F$ is injective and preserves references and objects, so if a connection had $n$ Catports, its image must also have exactly $n$ Catports.

### Theorem 4.2 (Cantor-Bernstein for Catmodels)
Let $A,B \in \mathrm{Ob}(S2ML + Cat)$ and suppose there exist injections $F: A\to B$ and $G: B\to A$. Then there is an injection $G': B \to A$ such that 
$$
G' \circ F = \mathrm{id}_A \quad \text{and} \quad F \circ G' = \mathrm{id}_B.
$$

##### Proof
A constructive proof by strong induction on the order of models. Use the fact that root blocks, numbers of Catports at each order, and Catconnections with the same size all match. Build the inverse piecewise on each Catblock and Catconnection, then combine them into a global injection $G'$.  

#### Corollary 4.1
From Theorem 4.2, $F$ is an **equivalence of categories**.

### Definition 4.11 (Equivalence of Catmodels)
Let $A, B \in S2ML + Cat$. We say $A$ and $B$ are **equivalent** if there exist injections $F: A \to B$ and $G: B \to A$.

#### Theorem 4.3
The **equivalence** of Catmodels is an equivalence relation on $\mathrm{Ob}(S2ML + Cat)$.

##### Proof
- **Reflexivity**: Every Catmodel is trivially equivalent to itself via the identity injection.  
- **Symmetry**: If $A$ is equivalent to $B$, then the two injections $F, G$ can be reversed to see $B$ is equivalent to $A$.  
- **Transitivity**: Composition of injections gives an injection, so equivalences compose transitively.

### Definition 4.12 (Injection Relation)
For $A,B \in \mathrm{Ob}(S2ML + Cat)$, we say **$A$ is injected into $B$** if there exists an injection $F: A \to B$.

#### Theorem 4.4
The **injection relation** is a partial order over the set of Catmodels (given equivalences between Catmodels).

##### Proof
- **Reflexive**: Identity is an injection.  
- **Antisymmetric**: If $A$ is injected into $B$ and $B$ is injected into $A$, they are equivalent, hence identified as the same element in the partial order sense.  
- **Transitive**: Composition of injections is an injection.

### Definition 4.13 (Binary Consistency Relation)
A **binary consistency relation** $\sim$ over $\mathrm{Ob}(S2ML + Cat)$ satisfies:

For $A,B \in \mathrm{Ob}(S2ML + Cat)$, $A \sim B$ if and only if there exist $A', B' \in \mathrm{Ob}(S2ML + Cat)$ and injections
$$
f_A: A' \to A,\quad f_B: B' \to B,\quad F: A' \to B',\quad G: B' \to A'
$$
with $F \circ G = \mathrm{id}_{B'}$ and $G \circ F = \mathrm{id}_{A'}$.  

### Proposition 4.3
Let $\sim_{\mathrm{all}}$ be the binary relation that imposes no restriction other than being a binary consistency relation. Then for any $A,B \in \mathrm{Ob}(S2ML + Cat)$, $A \sim_{\mathrm{all}} B$.

##### Proof
Construct trivial Catmodels $A',B'$ each containing just a single root Catblock. Then define injections from $A' \to A$ and $B' \to B$ and choose identity maps for $F$ and $G$. Since these trivially compose to identity morphisms, **any** two Catmodels are in $\sim_{\mathrm{all}}$.

### Definition 4.14 (Dictionary Consistency Relation)
A **dictionary consistency relation** $\sim_{\mathrm{dic}}$ is a binary consistency relation such that for $A \sim_{\mathrm{dic}} B$, we identify a “common skeleton” in each model, typically involving **elementary Catblocks and Catports**. Elements not aligned (or “forgotten”) are outside that skeleton.  

Note: This relation captures a user-provided alignment (a “dictionary” of matched elements) and restricts the matched skeleton to preserve the system’s structure.  
