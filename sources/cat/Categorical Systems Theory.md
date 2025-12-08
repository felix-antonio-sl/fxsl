# Categorical Systems Theory

## Preface

This book is a work in progress. It aims to develop **categorical systems theory**, an emerging field applying category-theoretic ideas to general systems theory. In this approach:

1. A system interacts with its environment through a specified **interface**.
2. From the environment’s view, only the system’s interface matters.
3. Systems interact with each other via these interfaces, which can be **composed** using **composition patterns**.
4. Composition yields complex systems, promoting **modularity**.

**Categorical systems theory** focuses on modularity (how to build larger systems from smaller ones) and **compositionality** (facts about composite systems can be calculated from their components and wiring). Different fields answer “What is a system?” differently; this book presents a flexible categorical formalism to handle various notions of systems and behaviors.

The text provides:

- A **doctrine** of dynamical systems: a suite of answers to “What is a system, interface, composition pattern, etc.?”
- A **systems theory**: describing how states, inputs, outputs, and dynamics are defined.
- A **compositionality theorem**: ensuring that behaviors of composite systems can be calculated from their components and wiring patterns.

Throughout, standard category theory, as well as indexed categories and double categories, is used. The material leads to a broad theorem about representable lax doubly indexed functors, specialized to show how compositionality holds for a wide class of systems theories.

---

## Chapter 1: Wiring Together Dynamical Systems

### 1.1 Introduction

#### Informal Definition 1.1.0.1
A **dynamical system** consists of:
- A notion of how things can be, called the **states**.
- A notion of how things will change given how they are, called the **dynamics** (potentially depending on parameters/inputs).

#### Informal Definition 1.1.0.2
A **theory of dynamical systems** (or **systems theory**) is a particular way to answer:
- What does it mean to be a state?
- How should outputs vary with the state?
- What sorts of inputs exist, and how do they depend on the state?
- What changes are possible in a given state?
- How do states actually change (deterministically, stochastically, etc.)?
- How do these changes depend on inputs?

#### Informal Definition 1.1.0.3
**Composition** is the process of bringing several things (in our case, systems) together to form a bigger thing, typically by plugging outputs into inputs.

#### Informal Definition 1.1.0.4
**Category theory** is the abstract study of composition.

##### 1.1.1 Category Theory
We presume familiarity with basic category theory: categories, functors, natural transformations, products, coproducts, monads, comonads, and monoidal categories. We will often use **cartesian categories**—those with all finite products and a terminal object.

**Definition 1.1.1.1**  
A category $\mathcal{C}$ is called **cartesian** if it has all finite products and a terminal object. A functor $F : \mathcal{C} \to \mathcal{D}$ between cartesian categories is **cartesian** if it preserves products and terminal objects.

We also use more advanced categorical notions like indexed categories and double categories, introduced later as needed. Notation: $n := \{1,2,\ldots,n\}$, $A + B$ denotes the disjoint union (coproduct) of sets.

---

### 1.2 Deterministic and Differential Systems Theories

#### 1.2.1 Deterministic Systems

A **deterministic system** updates its state in discrete time, fully determining the next state from the current state and inputs.

##### Definition 1.2.1.2
A **deterministic system** $S$, written as
\[
\begin{array}{c}
\text{update}_S \\
\text{expose}_S
\end{array}
:
\begin{array}{c}
\text{State}_S \\
\text{State}_S
\end{array}
\;\;\; \substack{\rightrightarrows \\ \leftrightarrows} \;\;\;
\begin{array}{c}
\text{In}_S \\
\text{Out}_S
\end{array},
\]
consists of:
- A set of states $\text{State}_S$.
- A set of output values $\text{Out}_S$ (exposed variables).
- A set of input values $\text{In}_S$ (parameters).
- A function $\text{expose}_S : \text{State}_S \to \text{Out}_S$.
- A function $\text{update}_S : \text{State}_S \times \text{In}_S \to \text{State}_S$ giving the next state.

**Remark**: In any cartesian category $\mathcal{C}$, one may interpret $\text{State}_S, \text{Out}_S, \text{In}_S$ as objects of $\mathcal{C}$, and $\text{expose}_S, \text{update}_S$ as morphisms.

**Example 1.2.1.4**  
A clock with hour states $\{1,\dots,12\}$ can be seen as:
- $\text{State}_{\mathrm{Clock}} = \{1,2,\dots,12\}.$
- $\text{Out}_{\mathrm{Clock}} = \{1,2,\dots,12\}.$
- $\text{In}_{\mathrm{Clock}} = \{\ast\}.$  
- $\text{expose}_{\mathrm{Clock}} = \mathrm{id}.$
- $\text{update}_{\mathrm{Clock}}(t, \ast) = \text{tick}(t).$

**Example 1.2.1.7 (SIR model, discrete version)**  
States are triples $(s,i,r)$ representing numbers of Susceptible, Infected, Removed individuals, with $s,i,r\in \mathbb{R}$. Parameters $(\alpha, \beta)$ encode infection and removal rates. The update function is:
\[
\text{update}_{\mathrm{SIR}}(s,i,r),(\alpha,\beta) \;=\; \bigl(s - \alpha s i,\; i + \alpha s i - \beta i,\; r + \beta i\bigr).
\]

**Definition 1.2.1.11**  
A **closed system** is one having no inputs and no outputs, i.e. both $\text{In}_S$ and $\text{Out}_S$ are singletons.

**Exercise 1.2.1.13**  
Discuss what it means if $\text{In}_S = \varnothing$ or $\text{Out}_S = \varnothing$; see text for details.

---

#### 1.2.2 Differential Systems

A **differential system** models continuous changes in time via derivatives. Here, time flows continuously.

##### Definition 1.2.2.1
A **(first-order, ordinary) differential system** $S$ with $n$ state variables, $m$ parameters, and $k$ exposed variables is given by
\[
\begin{array}{c}
\text{update}_S \\
\text{expose}_S
\end{array}
:
\begin{array}{c}
\mathbb{R}^n \\
\mathbb{R}^n
\end{array}
\;\;\; \substack{\rightrightarrows \\ \leftrightarrows} \;\;\;
\begin{array}{c}
\mathbb{R}^m \\
\mathbb{R}^k
\end{array}.
\]
with
- $\text{State}_S = \mathbb{R}^n$,
- $\text{In}_S = \mathbb{R}^m$,
- $\text{Out}_S = \mathbb{R}^k$,
- A smooth map $\text{update}_S : \mathbb{R}^n \times \mathbb{R}^m \to \mathbb{R}^n$ encoding the differential equations
  \[
  \frac{d\mathbf{s}}{dt} = \text{update}_S(\mathbf{s},\mathbf{i}),
  \]
- Exposed variables $\text{expose}_S : \mathbb{R}^n \to \mathbb{R}^k$.

**Remark 1.2.2.2**  
Though this resembles a deterministic system in the category of smooth maps $Euc$, the “$\mathbb{R}^n$ on the right” is a tangent space rather than a next state. This distinction appears in how behaviors/trajectories are defined in Chapter 3.

**Example 1.2.2.4**  
A single-population “Rabbits” system with birth/death rates $(b_{\mathrm{Rabbits}}, d_{\mathrm{Rabbits}})$:
\[
\frac{dr}{dt} = b_{\mathrm{Rabbits}} \cdot r \;-\; d_{\mathrm{Rabbits}} \cdot r.
\]

**Example 1.2.2.5 (SIR model, differential version)**  
\[
\begin{aligned}
\frac{dS}{dt} &= -\alpha S I,\\
\frac{dI}{dt} &= \alpha S I - \beta I,\\
\frac{dR}{dt} &= \beta I.
\end{aligned}
\]
Exposed variables can be the entire triple $(S,I,R)$, or chosen subsets.

##### Definition 1.2.2.7
$\mathbf{Euc}$ is the category whose objects are $\mathbb{R}^n$ (for $n \in \mathbb{N}$) and whose morphisms are smooth maps. It is cartesian with $\mathbb{R}^n \times \mathbb{R}^m = \mathbb{R}^{n+m}$ and a terminal object $\mathbb{R}^0$.

---

### 1.3 Wiring Together Systems with Lenses

#### 1.3.1 Lenses and Lens Composition

##### Definition 1.3.1.1
A **lens** 
\[
\begin{array}{c}
f^\sharp \\
f
\end{array}
:
\begin{array}{c}
A^- \\
A^+
\end{array}
\;\;\; \substack{\rightrightarrows \\ \leftrightarrows} \;\;\;
\begin{array}{c}
B^- \\
B^+
\end{array}
\]
in a cartesian category $\mathcal{C}$ consists of:
- A **pass-forward** map $f : A^+ \to B^+$,
- A **pass-back** map $f^\sharp : A^+ \times B^- \to A^-$.

##### Definition 1.3.1.2
The **composition** of two lenses 
\[
\begin{array}{c}
f^\sharp \\
f
\end{array}
:
\begin{array}{c}
A^- \\
A^+
\end{array}
\;\;\; \substack{\rightrightarrows \\ \leftrightarrows} \;\;\;
\begin{array}{c}
B^- \\
B^+
\end{array}
\quad\text{and}\quad
\begin{array}{c}
g^\sharp \\
g
\end{array}
:
\begin{array}{c}
B^- \\
B^+
\end{array}
\;\;\; \substack{\rightrightarrows \\ \leftrightarrows} \;\;\;
\begin{array}{c}
C^- \\
C^+
\end{array}
\]
is given by 
\[
g^\sharp \circ f^\sharp : (A^+ \times C^-) \to A^-,
\]
\[
(a^+, c^-) \mapsto f^\sharp\bigl(a^+,\, g^\sharp(f(a^+), c^-)\bigr),
\]
and pass-forward $g\circ f : A^+ \to C^+$.

##### Definition 1.3.1.4
$\mathbf{Lens}_\mathcal{C}$ is the category whose objects are pairs $(A^-, A^+)$ of objects in $\mathcal{C}$, and whose morphisms are lenses between them.

**Proposition 1.3.1.7 (Functoriality of Lens)**  
Every cartesian functor $F: \mathcal{C} \to \mathcal{D}$ induces a functor
\[
\mathbf{Lens}_\mathcal{C} \;\;\xrightarrow{F_\#}\;\;\mathbf{Lens}_\mathcal{D}.
\]

---

#### 1.3.2 Deterministic and Differential Systems as Lenses

A deterministic system is a lens of the form
\[
\begin{array}{c}
\text{update}_S \\
\text{expose}_S
\end{array}
:
\begin{array}{c}
\text{State}_S \\
\text{State}_S
\end{array}
\;\;\; \substack{\rightrightarrows \\ \leftrightarrows} \;\;\;
\begin{array}{c}
\text{In}_S \\
\text{Out}_S
\end{array}.
\]
Similarly, a differential system can be regarded as a lens in $\mathbf{Euc}$:
\[
\begin{array}{c}
\text{update}_S \\
\text{expose}_S
\end{array}
:
\begin{array}{c}
\mathbb{R}^n \\
\mathbb{R}^n
\end{array}
\;\;\; \substack{\rightrightarrows \\ \leftrightarrows} \;\;\;
\begin{array}{c}
\mathbb{R}^m \\
\mathbb{R}^k
\end{array}.
\]
We can compose these with lenses that represent wiring patterns.

##### Parallel Product
We form **parallel products** of lenses to place systems side by side. For lenses 
\[
\begin{array}{c}
f^\sharp \\
f
\end{array}
:
\begin{array}{c}
A_1^- \\
A_1^+
\end{array}
\;\;\; \substack{\rightrightarrows \\ \leftrightarrows} \;\;\;
\begin{array}{c}
B_1^- \\
B_1^+
\end{array}
\quad\text{and}\quad
\begin{array}{c}
g^\sharp \\
g
\end{array}
:
\begin{array}{c}
A_2^- \\
A_2^+
\end{array}
\;\;\; \substack{\rightrightarrows \\ \leftrightarrows} \;\;\;
\begin{array}{c}
B_2^- \\
B_2^+
\end{array},
\]
their parallel product is
\[
f^\sharp \otimes g^\sharp : (A_1^+ \times A_2^+) \times (B_1^- \times B_2^-) \;\to\; (A_1^- \times A_2^-).
\]
This yields a **monoidal structure** on $\mathbf{Lens}_\mathcal{C}$.

**Proposition 1.3.2.4**  
If $F : \mathcal{C} \to \mathcal{D}$ is a cartesian functor, the induced functor $\mathbf{Lens}_\mathcal{C}\to \mathbf{Lens}_\mathcal{D}$ preserves this parallel product.

---

#### 1.3.3 Wiring Diagrams as Lenses in Categories of Arities

We often draw “wiring diagrams” to describe how systems connect. We formalize them in a **free cartesian category** of arities, then define lenses in that category.

##### Definition 1.3.3.2
$\mathrm{Arity}$ is the free cartesian category on one object $X$. Concretely, its objects are $X^I$ for finite sets $I$, and its morphisms are reindexing maps derived from functions $f^*: X^I \to X^J$ for $f: J\to I$.

**Proposition 1.3.3.3**  
$\mathrm{Arity}$ is isomorphic to $\mathrm{FinSet}^{\mathrm{op}}$, the opposite of finite sets.

A **wiring diagram** is thus a lens in $\mathrm{Arity}$ (or typed versions thereof).

##### Definition 1.3.3.5
$\mathbf{WD} := \mathbf{Lens}_{\mathrm{Arity}}$ is the **category of wiring diagrams**. Parallel products endow it with a monoidal structure.

**Proposition 1.3.3.7 (Universal property of Arity)**  
For a cartesian category $\mathcal{C}$ and an object $C \in \mathcal{C}$, there is a unique (up to isomorphism) cartesian functor $\mathrm{ev}_C : \mathrm{Arity} \to \mathcal{C}$ sending $X$ to $C$.  

Hence any wiring diagram can be interpreted as a lens in $\mathcal{C}$.

##### Typed Arities
If $T$ is a set of types, $\mathrm{Arity}_T$ is the free cartesian category on one generic object for each type. This yields a category of typed wiring diagrams $\mathbf{WD}_T := \mathbf{Lens}_{\mathrm{Arity}_T}$.

**Proposition 1.3.3.15**  
Given a family $C(-): T \to \mathcal{C}$ in a cartesian category $\mathcal{C}$, there is a strong monoidal functor $\mathrm{ev}_C : \mathbf{WD}_T \to \mathbf{Lens}_\mathcal{C}$ interpreting typed wiring diagrams as lenses in $\mathcal{C}$.

---

#### 1.3.4 Wiring Diagrams with Operations as Lenses in Lawvere Theories

We may decorate wiring diagrams with algebraic operations (e.g. adding scalars, multiplying by matrices) if we work in a **Lawvere theory**, which is a cartesian category extending $\mathrm{Arity}_T$ with additional operations satisfying certain laws.

##### Definition 1.3.4.1 (Algebraic theory)
An algebraic theory $T$ consists of a set $T_n$ of $n$-ary operations for each $n$, subject to equational laws.

##### Definition 1.3.4.5 (Lawvere theory)
A (single-sorted) **Lawvere theory** $\mathcal{L}$ is a cartesian category equipped with a bijective-on-objects functor $\mathrm{Arity} \hookrightarrow \mathcal{L}$.

Models of $\mathcal{L}$ in a cartesian category $\mathcal{C}$ are cartesian functors $\mathcal{L} \to \mathcal{C}$.

##### Proposition 1.3.4.9
Any vector space structure on an object $V$ in a cartesian category $\mathcal{C}$ induces a unique (up to isomorphism) cartesian functor $\hat{V} : \mathbf{Vect} \to \mathcal{C}$ sending $\mathbb{R}$ to $V$, where $\mathbf{Vect}$ is the Lawvere theory of real vector spaces.

##### Definition 1.3.4.10
For a Lawvere theory $\mathcal{L}$, the category of wiring diagrams with operations from $\mathcal{L}$ is $\mathbf{WD}_{\mathcal{L}} := \mathbf{Lens}_{\mathcal{L}}$.

Thus wiring diagrams plus algebraic operations (drawn as green beads) can be seen as lenses in a Lawvere theory, interpreted in models (cartesian functors) $\mathcal{L} \to \mathcal{C}$.

**Example 1.3.4.12**  
A wiring diagram with linear maps represented by matrix multiplication beads lives in the Lawvere theory of real vector spaces $\mathbf{Vect}$.

## Chapter 2  
**Non-deterministic systems theories**

So far, we have seen how deterministic systems (discrete- and continuous-time) can be wired together. Non-deterministic modeling acknowledges incomplete information about a system's state. We discuss several non-deterministic (discrete-time) system theories—possibilistic, stochastic, etc.—encoded in a *commutative monad*.

---

### 2.1 Possibilistic systems

#### Definition 2.1.0.1
A **possibilistic system** \(S\), also written as
\[
\begin{array}{c}
\text{update}_S \\
\text{expose}_S
\end{array}:
\quad
\mathrm{State}_S
\;\;\substack{\longrightarrow \\[-4pt] \longleftarrow}\;\;
\mathrm{In}_S
\quad
\mathrm{Out}_S
\]
consists of:
- a set \(\mathrm{State}_S\) of states;
- a set \(\mathrm{Out}_S\) of values for exposed variables (outputs);
- a set \(\mathrm{In}_S\) of parameter values (inputs);
- a function \(\text{expose}_S : \mathrm{State}_S \to \mathrm{Out}_S\), the exposed variable of state;
- a function \(\text{update}_S : \mathrm{State}_S \times \mathrm{In}_S \to \mathcal{P}\mathrm{State}_S\), where \(\mathcal{P}\mathrm{State}_S\) is the powerset of \(\mathrm{State}_S\).

#### Remark 2.1.0.2
Definition 2.1.0.1 makes use of the powerset operation \(\mathcal{P}\), which cannot be interpreted in just any cartesian category; we need something resembling a powerset operation.

#### Example 2.1.0.3
A **possibilistic automaton** can be presented by a transition diagram. For instance:
\[
\begin{array}{c}
\xymatrix@R=1.5em@C=2em{
\text{blue}\ar@/^1pc/[r]^{\text{true}}\ar@/_1pc/[r]_{\text{true}}
& \text{red}\\
\text{false}\ar@/^1pc/[r]^{\text{true}}\ar@/_1pc/[r]_{\text{false}}
& \text{green}
}
\end{array}
\]
Here, \(\mathrm{update}_S(\text{blue}, \text{true}) = \{\text{blue}, \text{red}\}\).

#### Example 2.1.0.4
In automata theory, **non-deterministic finite automata (NFAs)** are possibilistic systems whose outputs are Booleans \(\{\text{true}, \text{false}\}\). The exposed variable tells us whether or not a state is an accept state.  
We ask whether it is *possible* to accept a given input sequence.

#### (Iteration for Possibilistic Systems)
To iterate, we use:
\[
\text{update}_S: \mathrm{State}_S \times \mathrm{In}_S \to \mathcal{P}(\mathrm{State}_S).
\]
We cannot just compose functions, but can define
\[
U: \mathcal{P}(\mathrm{State}_S) \times \mathrm{In}_S \to \mathcal{P}(\mathrm{State}_S)
\]
by collecting possible next states, and thus iterate an entire sequence of inputs.

#### Definition 2.1.0.5 (Commutative Monad)
Let \(\mathcal{C}\) be a cartesian category. A **monad** \((M,\eta)\) on \(\mathcal{C}\) consists of:
1. An assignment of an object \(M A\) to every \(A \in \mathcal{C}\).
2. For every \(A\), a map \(\eta_A : A \to M A\).
3. For every map \(f : A \to M B\), a lift \(f^M : M A \to M B\).

They satisfy **(Unit)**, **(Identity)**, and **(Composition)** laws. Equivalently, a monad may be defined by a functor \(M : \mathcal{C} \to \mathcal{C}\) with natural transformations \(\eta\) and \(\mu : M^2 A \to M A\) satisfying certain diagrams.

A monad \(M\) is **commutative** if there is a natural transformation 
\[
\sigma: M A \times M B \to M(A \times B)
\]
making certain diagrams (Eqs. (2.4)–(2.8)) commute.

#### Remark 2.1.0.6
If you are familiar with Haskell, \(\eta_A\) is called `return` or `pure`, and \(\mu\) is called `join`. A monad is commutative if its order of execution does not matter.

#### Proposition 2.1.0.7
The powerset \(\mathcal{P}\) is a **commutative monad** on the category of sets, with:
- \(\eta_A(a) = \{a\}\),
- \(f^P(X) = \bigcup_{x \in X} f(x)\),
- \(\sigma_{A,B}(X, Y) = \{(a,b) \mid a \in X,\, b \in Y\}\).

**Proof.** Check the monad laws and commutativity conditions (Eqs. (2.4)–(2.8)). The key observations are that \(\mu\) is union of subsets and \(\sigma\) is the Cartesian product of sets.  

#### Remark 2.1.0.8
The list monad is not commutative because the order of elements matters.

Using the monad structure of \(\mathcal{P}\), one can iterate a possibilistic system and collect all possible outputs.

---

### 2.2 Stochastic systems

We often deal with probabilities instead of mere possibility. A **stochastic system** uses the **probability distribution monad** \(D\).

#### Definition 2.2.0.1
For a set \(A\), the set \(D A\) is the set of **finitely supported probability distributions** on \(A\). Such a distribution \(p : A \to [0,1]\) has finite support and sums to 1:
\[
\sum_{a \in A} p(a) = 1.
\]
Alternatively, elements of \(D A\) can be viewed as formal convex combinations of elements of \(A\).

#### Definition 2.2.0.3
A **stochastic map** \(f : A \to D B\) sends each \(a \in A\) to a probability distribution on \(B\). In classical terms, \(f(a)(b) = p(b \mid a)\).  

#### Example 2.2.0.4
Modeling “soaking wet person enters an office” to infer if it was raining is an example of a stochastic map from \(\{ \text{wet,dry} \}\times \{\text{umbrella,no-umbrella}\}\) to \(D(\{\text{raining,not-raining}\})\).

#### Definition 2.2.0.5
A **stochastic system** \(S\) (also written with expose/update) has:
- \(\mathrm{State}_S\), \(\mathrm{Out}_S\), \(\mathrm{In}_S\),
- \(\mathrm{expose}_S : \mathrm{State}_S \to \mathrm{Out}_S\),
- \(\mathrm{update}_S : \mathrm{State}_S \times \mathrm{In}_S \to D(\mathrm{State}_S)\).

#### Remark 2.2.0.7
A stochastic system is often called a Markov process.

#### Example 2.2.0.8
A simple text generator uses a Markov chain approach on 5-character sequences, transitioning with probabilities derived from sample text (e.g. Shakespeare).

#### Example 2.2.0.9
A **stochastic source** process has no inputs (\(\mathrm{In}_S = 1\)) and produces a random stream of outputs.

#### Example 2.2.0.10
A **faulty wire** can be modeled as a stochastic system with states tracking the contact quality and charge, updating with probabilities.

#### Example 2.2.0.11
We can draw transition diagrams for stochastic systems, labeling each edge with a probability. The sum of outgoing edges for a fixed input from a state is 1.

#### Proposition 2.2.0.12
\(D\) is a **commutative monad** on \(\mathbf{Set}\):
- \(\eta_A(a)\) is the **Dirac delta** distribution,
- \((f)^D\) **pushes forward** a probability distribution by summation over possible points,
- \(\sigma_{A,B}\) forms the product measure of independent distributions.

**Proof.** Checked by verifying the monad laws and the commutativity diagrams, similar to Proposition 2.1.0.7.

#### Exercise 2.2.0.13
Matrix multiplication corresponds to composing stochastic maps in the Kleisli category of \(D\).

---

### 2.3 Monadic systems theories and the Kleisli category

Both possibilistic (\(\mathcal{P}\)) and stochastic (\(D\)) systems arise from **commutative monads**. In general, for a commutative monad \(M\), a **discrete-time \(M\)-system** is given by a Kleisli map \( \mathrm{update}_S : \mathrm{State}_S \times \mathrm{In}_S \to M(\mathrm{State}_S)\).  

#### Definition 2.3.0.1 (Kleisli category)
Let \(M : \mathcal{C} \to \mathcal{C}\) be a commutative monad on a cartesian category. The **Kleisli category** \(\mathrm{Kl}(M)\) has:
- Objects: same as \(\mathcal{C}\).
- Morphisms \(f : A \rightsquigarrow B\) given by maps \(f : A \to M B\) in \(\mathcal{C}\).
- Identity: \(\mathrm{id}_A = \eta_A\).
- Composition of \(f : A \to M B\) and \(g : B \to M C\) given by the **Kleisli composite** \(f ; g = f \, (g)^M\). 

One obtains a **symmetric monoidal structure** on \(\mathrm{Kl}(M)\) when \(M\) is commutative.

#### Example 2.3.0.2
\(\mathrm{Kl}(\mathcal{P})\) is the category of *multi-valued maps*. Composition collects unions of possible images.

#### Example 2.3.0.3
\(\mathrm{Kl}(D)\) is the category of *stochastic maps*. Composition is given by summing over intermediate states.

#### Definition 2.3.0.4 (\(M\)-system)
A **(discrete-time) \(M\)-system** \(S\) has \(\mathrm{State}_S\), \(\mathrm{Out}_S\), \(\mathrm{In}_S\), expose \(\mathrm{expose}_S\), and a Kleisli map \(\mathrm{update}_S : \mathrm{State}_S \times \mathrm{In}_S \to M(\mathrm{State}_S)\).

---

#### Systems with costs

##### Definition 2.3.0.5
Define a monad \(\mathrm{Cost}\) on \(\mathbf{Set}\). A Kleisli map assigns the best-case cost of going from \(a \in A\) to \(b \in B\) (finite for only finitely many \(b\)).

- \(\mathrm{Cost}(A) = \{\text{functions }c : A\to [0,\infty]\mid \text{finite for finitely many }a\}\).
- \(\eta_{\mathrm{Cost}}(a)\) = 0 for that \(a\), \(\infty\) for others.
- \(f^{\mathrm{Cost}}(c)(b) = \min_{a\in A} \bigl(c(a) + f(a)(b)\bigr)\).
- The joint cost \(\sigma(c,c')(a,b) = c(a) + c'(b)\).

A **system with costs** is a \(\mathrm{Cost}\)-system.

##### Example 2.3.0.8
A project with tasks is modeled by \(\mathrm{State} = \mathcal{P}(\mathrm{Steps})\). Costs accumulate depending on externalities. Summing cost of steps leads to best-case cost. 

**Note**: We can also define \(\mathrm{Cost}_{\max}\) for worst-case costs.

##### Commutative rigs
A *commutative rig* (or semiring) is a set \(R\) with commutative monoid structures \((R,+,0)\) and \((R,\cdot,1)\) satisfying distributivity.

#### Proposition 2.3.0.11
For any commutative rig \(R\), we get a commutative monad \(R\otimes - : \mathbf{Set} \to \mathbf{Set}\) whose Kleisli maps capture matrix-like arithmetic with scalars in \(R\).

---

### 2.4 Adding rewards to non-deterministic systems

A **reward** is a real number (or from some commutative monoid \(R\)). Summation of rewards corresponds to repeated actions.

#### Definition 2.4.0.1
Let \((R,+,0)\) be a commutative monoid. The **monad of \(R\)-valued rewards** takes
\[
R \times A, \quad \eta_A(a) = (0,a),
\]
and composition accumulates the reward. This forms a commutative monad in any cartesian category.

#### Definition 2.4.0.3
A **deterministic system with \(R\)-valued rewards** is an \((R\times -)\)-system.

We can combine rewards with general monads. For a commutative monad \(M\) and commutative monoid \(R\), one forms \(M(R\times -)\).

#### Proposition 2.4.0.4
\(M(R\times -)\) is itself a commutative monad. Concretely, a map \(\mathrm{State}_S \times \mathrm{In}_S \to M(R\times \mathrm{State}_S)\) yields a distribution over reward-state pairs.

**Note**: If \(M = D\) and \(R = \mathbb{R}\), we get a monad \(D(R\times -)\) for *stochastic systems with rewards*.

---

### 2.5 Changing the flavor of non-determinism: Monad maps

#### Definition 2.5.0.1 (Commutative Monad Map)
A **commutative monad map** \(\phi: M \to N\) is a natural transformation commuting with units \(\eta\), multiplications \(\mu\), and the commutative monad structure \(\sigma\).

#### Proposition 2.5.0.2
There is a unique commutative monad map \(\mathrm{id} \to M\), given by \(\eta_M\).

Thus any deterministic system can be seen as an \(M\)-system.

#### Proposition 2.5.0.3
There is a commutative monad morphism \(\phi: D \to \mathcal{P}\) sending a probability distribution to the set of elements with non-zero probability. This interprets stochastic transitions as mere possibilities.

#### Exercise 2.5.0.4
Show \(D\eta^R: D A \to D(R\times A)\) is a commutative monad morphism, corresponding to giving transitions reward 0.

#### Lemma 2.5.0.5
The commutative monad map condition \(\mu\)-diagram can be replaced by the diagram 
\[
f^M \,\phi = \phi\, (f\,\phi)^N
\]
for all \(f\).

#### Proposition 2.5.0.6
A monad map \(\phi: M\to N\) induces a **strict symmetric monoidal functor** 
\[
\phi_* : \mathrm{Kl}(M)\to \mathrm{Kl}(N),
\quad
f \mapsto f \,\phi.
\]

---

### 2.6 Wiring together non-deterministic systems: the generalized lens construction

We want to wire up non-deterministic systems as we did with deterministic systems using lenses. However, non-deterministic updates live in the Kleisli category \(M\), and lens composition used duplication in the pass-forward direction, which is not directly available in Kleisli categories. We thus introduce a new perspective using the **Grothendieck construction** of an **indexed category** and define *monadic lenses* (a.k.a. *biKleisli lenses*).

#### 2.6.1 Indexed categories and the Grothendieck construction

**Definition (Indexed Category):** A **strict indexed category** \(A: \mathcal{C}^\mathrm{op} \to \mathbf{Cat}\) assigns to each \(C\) a category \(A(C)\), plus functorial reindexing.

The **Grothendieck construction** \(\int_{C : \mathcal{C}} A(C)\) forms a category whose objects are pairs \((C, A)\) with \(A \in A(C)\), and morphisms arise from morphisms in \(\mathcal{C}\) plus reindexing in \(A\).

- **Pure** maps: the base map is an isomorphism in \(\mathcal{C}\).
- **Cartesian** maps: the fiber map is an isomorphism in \(A(C)\).

#### 2.6.2 Maps with context and lenses

**Definition 2.6.2.1**  
For a cartesian category \(\mathcal{C}\) and object \(C\), the category \(\mathrm{Ctx}_C\) has:
- Objects: objects of \(\mathcal{C}\).
- Morphisms \(f: X \rightrightarrows Y\) given by maps \(C \times X \to Y\).
- Composition uses \(\Delta\) (diagonal) and \(\pi_2\) (projection).

This forms an indexed category \(\mathrm{Ctx}_- : \mathcal{C}^\mathrm{op} \to \mathbf{Cat}\).  

**Proposition 2.6.2.5**  
\(\mathrm{Lens}_\mathcal{C}\) (the usual lens category) is the Grothendieck construction \(\int_{C} \mathrm{Ctx}_C^\mathrm{op}\).

**Definition 2.6.2.7**  
For an indexed category \(A : \mathcal{C}^\mathrm{op}\to \mathbf{Cat}\), \(\mathrm{Lens}_A = \int_{C} A(C)^\mathrm{op}\) is the category of **\(A\)-lenses**.

#### 2.6.3 Monoidal indexed categories

We need a monoidal structure to form products of lenses. If \(A\) is a **monoidal indexed category**, then its Grothendieck construction has a monoidal structure. In a cartesian base \(\mathcal{C}\), we can equivalently specify a lax structure that reindexes.

#### 2.6.4 Monadic lenses as generalized lenses

We define \(\mathrm{Ctx}_C^M\) so that a morphism is \(C\times X \to M Y\). Composition uses a map 
\[
\lambda : C \times M X \to M(C\times X),
\]
satisfying several coherence laws (Eqs. (2.19)–(2.22)) ensuring associativity and unitality. This yields:

**Definition 2.6.4.1**  
\(\mathrm{Ctx}_{C}^M\) (or the **biKleisli category** of \(C\times -\) and \(M\)) has:
- Objects: same as \(\mathcal{C}\).
- Morphisms \(f: X \rightrightarrows Y\) given by \(f: C \times X \to M Y\).
- Identity: \(\pi_2; \eta\).
- Composition: \((f;g)(c,x)\) =  
  \[
  \Delta;\,(C\times f);\;\lambda;\; M g;\;\mu.
  \]

**Lemma 2.6.4.2**  
\(\lambda\) is natural in both \(X\) and \(C\), and commutes with unit/multiplication of \(M\) and diagonal/projection in \(C\).

**Lemma 2.6.4.4**  
\(\mathrm{Ctx}_{C}^M\) is a symmetric monoidal category with \(\otimes = \times\) on objects and
\[
(f \otimes g)(c,x_1,x_2) = \sigma\bigl(f(c,x_1), g(c,x_2)\bigr),
\]
where \(\sigma\) is the monoidal structure of \(M\).

**Theorem 2.6.4.5**  
\(\mathrm{Ctx}_{-}^M : \mathcal{C}^\mathrm{op} \to \mathbf{Cat}\) is a strict monoidal indexed category.

**Definition 2.6.4.6**  
The **category of \(M\)-lenses** is 
\[
\mathrm{Lens}_\mathcal{C}^M = \int_{C} \bigl(\mathrm{Ctx}_{C}^M\bigr)^\mathrm{op}.
\]
An **\(M\)-lens** (or monadic lens) has pass-forward \(f: A^+ \to B^+\) and pass-back \(f^\# : A^+ \times B^- \to M(A^-)\). Composition is described via the do-notation with \(\sigma\) and \(\lambda\).

---

### 2.7 Changing the flavor of non-determinism for lenses

A commutative monad map \(\phi : M\to N\) not only induces a functor \(\mathrm{Kl}(M) \to \mathrm{Kl}(N)\) but also a strict monoidal indexed functor \(\mathrm{Ctx}_{-}^M \to \mathrm{Ctx}_{-}^N\).

#### Proposition 2.7.0.3
\(\phi_* : \mathrm{Ctx}_{C}^M \to \mathrm{Ctx}_{C}^N\) is identity on objects, and on morphisms \(f: C\times X \to M Y\) is given by \(f \mapsto f;\phi\).

#### Corollary 2.7.0.4
This induces a strict monoidal functor
\[
\phi_* : \mathrm{Lens}_\mathcal{C}^M \to \mathrm{Lens}_\mathcal{C}^N.
\]
Hence, changing the monad from \(M\) to \(N\) (e.g., from deterministic to possibilistic, or from stochastic to possibilistic) automatically upgrades all lenses.

#### Corollary 2.7.0.5
One can embed deterministic lenses into \(M\)-lenses via \(\eta_M\).

#### Example 2.7.0.6
Two people flipping coins, with one sending results to the other over a noisy channel \(\rho\). This can be expressed as a \(D\)-lens.

---

## Chapter 3: How systems behave

### 3.1 Introduction

So far, we have seen how to wire up dynamical systems. We now begin studying the behavior of these systems: **trajectories**, **steady states**, and **periodic orbits**.

**Informal Definition 3.1.0.1**  
A *behavior* of a dynamical system is a particular way its states can change according to its dynamics.

In Section 3.3, we will give a formal definition of behavior. The different kinds of behaviors—trajectories, steady states, periodic orbits, etc.—can each be packaged into a single system that represents that kind of behavior.

We will then use a double category merging together lenses and charts to define behaviors and see how behaviors of component systems relate to behaviors of composed systems.

### 3.2 Kinds of behavior

#### 3.2.1 Trajectories

A **trajectory** is the simplest and freest sort of behavior a system can have. It is “what a state does” over time.

##### Trajectories in the deterministic systems theory

**Definition 3.2.1.1**  
Let 
\[
S \;=\; 
\begin{pmatrix}
\mathrm{update}_S: \mathrm{State}_S \times \mathrm{In}_S \to \mathrm{State}_S \\
\mathrm{expose}_S: \mathrm{State}_S \to \mathrm{Out}_S
\end{pmatrix}
\]
be a deterministic system. Suppose that \( p: \mathbb{N}\to \mathrm{In}_S \) is a sequence of parameters for \(S\). Then a \(p\)-trajectory of \(S\) is a sequence \(s: \mathbb{N}\to \mathrm{State}_S\) of states so that
\[
\mathrm{update}_S(s_i, p_i) \;=\; s_{i+1}
\quad
\text{for all } i\in\mathbb{N}.
\]
If additionally \(v: \mathbb{N}\to \mathrm{Out}_S\) is a sequence of output values for \(S\), then a \(p_v\)-trajectory is a sequence of states \(s:\mathbb{N}\to \mathrm{State}_S\) so that
\[
\mathrm{update}_S(s_i, p_i) \;=\; s_{i+1},
\quad
\mathrm{expose}_S(s_i) \;=\; v_i,
\]
for all \(i\in\mathbb{N}\). We call the pair \(p_v\) the *chart* of the trajectory \(s\).

**Remark**: A trajectory \(s:\mathbb{N}\to \mathrm{State}_S\) in a deterministic system is determined entirely by its start state \(s_0\).

**Example 3.2.1.2**  
Consider the SIR model. Suppose parameters \((a,b)\) are constant, say \((0.2,0.3)\). Then a trajectory \((s,i,r)\) satisfies
\[
\begin{pmatrix}
s_{t+1} \\
i_{t+1} \\
r_{t+1}
\end{pmatrix}
=
\begin{pmatrix}
s_t - 0.2\,s_t i_t \\
i_t + 0.2\,s_t i_t - 0.3\,i_t \\
r_t + 0.3\,i_t
\end{pmatrix}.
\]

**Example 3.2.1.3**  
If a deterministic system is written as a transition diagram, trajectories are paths in the diagram.

**Proposition 3.2.1.4 (Deterministic systems as stream transformers)**  
Let 
\[
S \;=\;
\begin{pmatrix}
\mathrm{update}_S: \mathrm{State}_S \times \mathrm{In}_S \to \mathrm{State}_S \\
\mathrm{expose}_S: \mathrm{State}_S \to \mathrm{Out}_S
\end{pmatrix}.
\]
Then for every \(s_0 \in \mathrm{State}_S\), we get a stream transformation function
\[
\mathrm{transform}_S: \mathrm{In}_S^\mathbb{N}\to \mathrm{Out}_S^\mathbb{N},
\]
given by 
\[
\mathrm{transform}_S(p)_0 = \mathrm{expose}_S(s_0), 
\quad
\mathrm{transform}_S(p)_{t+1} = \mathrm{expose}_S(\mathrm{update}_S(s_t, p_t)),
\]
where \(s_{t+1} = \mathrm{update}_S(s_t, p_t)\) is the trajectory given by \(s_0\).

**Exercise 3.2.1.5**  
(Various exercises about stream transformers.)

**Remark**: In Section 5.3, we will see that trajectories of a whole wired system can be computed from trajectories of component systems.

##### Trajectories in the differential systems theory

In a differential system, there is no “next” state; we only have how each state is tending to change.

**Definition 3.2.1.6**  
Let 
\[
S \;=\;
\begin{pmatrix}
\mathrm{update}_S: \mathrm{State}_S \times \mathrm{In}_S \to \mathrm{State}_S \\
\mathrm{expose}_S: \mathrm{State}_S \to \mathrm{Out}_S
\end{pmatrix}
\]
be a differential system. Suppose \(p: \mathbb{R}\to \mathrm{In}_S\) is a differentiable choice of parameters. Then a \(p\)-trajectory is a differentiable function \(s:\mathbb{R}\to \mathrm{State}_S\) such that
\[
\mathrm{update}_S(s_t, p_t) \;=\; \frac{d s}{d t}(t).
\]
If \(v:\mathbb{R}\to \mathrm{Out}_S\) is a differentiable choice of outputs, then a \(p_v\)-trajectory is a differentiable \(s\) with
\[
\mathrm{update}_S(s_t, p_t) \;=\; \frac{d s}{d t}(t),
\quad
\mathrm{expose}_S(s_t) \;=\; v_t.
\]
We call \((p,v)\) the chart of the trajectory \(s\).

**Remark 3.2.1.7**  
A \(p\)-trajectory of a differential system is also called a *solution* of the differential equation it represents for the choice of parameters \(p\).

**Example 3.2.1.8**  
(Lotka-Volterra predator-prey, etc.)

**Example 3.2.1.9**  
(An RL-circuit example.)

#### 3.2.2 Steady states

A **steady state** is a state that does not change.

##### Steady states in the deterministic systems theory

**Definition 3.2.2.1**  
Let 
\[
S \;=\; 
\begin{pmatrix}
\mathrm{update}_S: \mathrm{State}_S \times \mathrm{In}_S \to \mathrm{State}_S \\
\mathrm{expose}_S: \mathrm{State}_S \to \mathrm{Out}_S
\end{pmatrix}
\]
be a deterministic system. For \(i \in \mathrm{In}_S\) and \(o \in \mathrm{Out}_S\), an \(i_o\)-steady state is a state \(s \in \mathrm{State}_S\) such that
\[
\mathrm{update}_S(s, i) = s, 
\quad
\mathrm{expose}_S(s) = o.
\]
We call the pair \(i_o\) the *chart* of the steady state.

**Remark 3.2.2.2**  
A steady state is always relative to the chosen input parameter.

**Definition 3.2.2.4 (Steady-looking trajectories)**  
For \(i \in \mathrm{In}_S\) and \(o \in \mathrm{Out}_S\), an \(i_o\)-steady-looking trajectory is a sequence \(s:\mathbb{N}\to \mathrm{State}_S\) such that
\[
\mathrm{update}_S(s_t, i) = s_{t+1},
\quad
\mathrm{expose}_S(s_t) = o
\]
for all \(t\in \mathbb{N}\). We call the pair \(i_o\) its chart.

**Definition 3.2.2.7**  
In the differential systems theory, an \(i_o\)-steady state is a state \(s\in\mathrm{State}_S\) such that
\[
\mathrm{update}_S(s, i) = 0, 
\quad
\mathrm{expose}_S(s) = o.
\]

#### 3.2.3 Periodic orbits

A system may exhibit behavior that continually repeats.

##### Periodic orbits in the deterministic systems theory

**Definition 3.2.3.1 (Periodic orbit)**  
A \(p_v\)-trajectory \(s:\mathbb{N}\to \mathrm{State}_S\) is *periodic* if there is a period \(\,t_0\ge 1\) with \(s_{t_0} = s_0\). If \(p\) is also periodic with the same period, then \(s\) has periodic parameters.

**Remark 3.2.3.3**  
A steady state is a periodic orbit (with period 1) that also has periodic parameters.

**Example 3.2.3.5**  
A clock system is an exemplary periodic system with period 12.

**Definition 3.2.3.8**  
A \(p\)-trajectory \(s:\mathbb{R}\to \mathrm{State}_S\) in a differential system is a *periodic orbit* if there is a number \(k\neq 0\) such that \(s(t) = s(t+k)\) for all \(t\). We call \(k\) the period of \(s\). If \(p\) is also periodic of period \(k\), we say \(s\) has periodic parameters.

**Definition 3.2.3.10 (Eventually periodic orbit)**  
In a deterministic systems theory, a \(p_v\)-trajectory \(s:\mathbb{N}\to \mathrm{State}_S\) is *eventually periodic* if there exist times \(t_0<t_1\in\mathbb{N}\) such that \(s_{t_0+t} = s_{t_1+t}\) for all \(t\). If \(p\) is also eventually periodic with the same period, we say \(s\) has eventually periodic parameters.

### 3.3 Behaviors of systems in the deterministic theory

We define a general notion of *behavior*, and show how each specific kind (trajectories, steady states, etc.) can be represented by a system.

#### 3.3.0.1 Charts

**Definition 3.3.0.1**  
A *chart* \(\,f^\flat_f: A^-_{\,A^+}\Rightarrow B^-_{\,B^+}\) in a cartesian category \(\mathbf{C}\) is a pair of maps \(f: A^+\to B^+\) and \(f^\flat: A^+\times A^-\to B^-\). The category of charts is denoted by \(\mathrm{Chart}_\mathbf{C}\).

#### 3.3.0.4 Behavior of deterministic systems

**Definition 3.3.0.4**  
Let \(T\) and \(S\) be deterministic systems. Given a chart \(f^\flat_f: \mathrm{In}_T\,\mathrm{Out}_T\Rightarrow \mathrm{In}_S\,\mathrm{Out}_S\), an \(f^\flat_f\)-behavior \(\varphi: T\to S\) is a function \(\varphi: \mathrm{State}_T\to \mathrm{State}_S\) satisfying
\[
\mathrm{expose}_S(\varphi(t)) = f(\mathrm{expose}_T(t)), 
\quad
\mathrm{update}_S(\varphi(t), f^\flat(\mathrm{expose}_T(t), i)) 
= \varphi(\mathrm{update}_T(t, i)),
\]
for all \(t \in \mathrm{State}_T\) and \(i \in \mathrm{In}_T\). We say \(f^\flat_f\) is the chart of \(\varphi\).

#### 3.3.0.7 Examples of representative systems

- **Time**: Represents trajectories.
- **Fix**: Represents steady states.
- **Clock\(_n\)**: Represents periodic orbits with period \(n\).

#### 3.3.0.10 Exercise (Representative systems)

(Various examples about eventually periodic orbits, steady-looking trajectories, etc.)

#### 3.3.0.12 Systems representing certain behaviors

(Examples: `Plus`, `Tn`, `XOR`, `ListC`.)

#### Category of deterministic systems

**Definition 3.3.0.13**  
\(\mathrm{Sys}\) is the category whose objects are deterministic systems and whose maps are pairs of (chart, behavior).

**Proposition 3.3.0.17**  
There is a category \(\mathrm{Sys}\) with deterministic systems as objects and with maps \(T\to S\) the pairs \((f^\flat_f, \varphi)\) of an \(\mathbf{A}\)-chart and an \(f^\flat_f\)-behavior.

#### 3.3.1 Simulations

A behavior with the identity chart does not change the interface. These are called *simulations*.

**Definition 3.3.1.1**  
\(\mathrm{Sys}_{I/O}\) is the category of deterministic systems with interface \(I/O\), and *maps* are the simulations \(\varphi:T\to S\) that do not change the exposed variables at all.

#### 3.3.1.3 Bisimulation

**Definition 3.3.1.3**  
A *bisimulation* \(\sim\) between two deterministic \(I/O\)-systems \(S\) and \(U\) is a relation \(\sim : \mathrm{State}_S\times \mathrm{State}_U\to \{\mathrm{true},\mathrm{false}\}\) such that whenever \(s\sim u\),
1. \(\mathrm{expose}_S(s)=\mathrm{expose}_U(u)\),
2. \(\mathrm{update}_S(s,i)\sim \mathrm{update}_U(u,i)\) for all \(i\in I\).

**Proposition 3.3.1.4**  
If \(s_0\sim u_0\) are bisimilar, then 
\(\mathrm{transform}_S(s_0)=\mathrm{transform}_U(u_0)\).

#### 3.4 Dealing with two kinds of composition: Double categories

A *double category* \(\mathbf{D}\) has a *horizontal category*, a *vertical category*, and *squares* that can be composed both horizontally and vertically. We omit some details here but preserve key definitions.

**Definition 3.4.0.1**  
A *double category* \(\mathbf{D}\) has:
- Objects,
- A horizontal category \(\mathsf{hD}\),
- A vertical category \(\mathsf{vD}\),
- Squares (2-morphisms) that can be composed horizontally and vertically, satisfying associativity, unitality, and the interchange law.

#### 3.4.1 The double category of arenas in the deterministic systems theory

**Definition 3.4.1.1**  
The *double category of arenas* has:
- Objects: arenas \((A^-, A^+)\).
- Horizontal category: \(\mathrm{Chart}\).
- Vertical category: \(\mathrm{Lens}\).
- Squares given by certain commuting diagrams matching equations (3.6)–(3.7).

**Proposition 3.4.1.5**  
A behavior \(\varphi: T\to S\) is equivalent to a square in this double category of arenas:
\[
\begin{matrix}
T(\mathrm{State}_T) & \to & T(\mathrm{State}_S) \\
\downarrow & & \downarrow \\
\mathrm{State}_T & \to & \mathrm{State}_S
\end{matrix}
\]
with the appropriate charts.

#### 3.4.2 The double category of sets, functions, and matrices

**Definition 3.4.2.1**  
\(\mathbf{Matrix}\) is the double category whose
- Objects are sets,
- Horizontal category is \(\mathbf{Set}\) (functions),
- Vertical category is matrices of sets (viewed as spans),
- Squares are families of functions on the matrix entries.

#### 3.4.3 The double category of categories, profunctors, and functors

**Definition 3.4.3.1**  
A *profunctor* \(P: \mathbf{A}\nrightarrow \mathbf{B}\) is a functor \(\mathbf{A}^{op}\times \mathbf{B}\to \mathbf{Set}\).

**Definition 3.4.3.5**  
The double category \(\mathbf{Cat}\) of categories, profunctors, and functors:
- Objects: categories,
- Horizontal category: categories and profunctors,
- Vertical category: categories and functors,
- Squares: natural transformations of profunctors.

**Proposition 3.4.3.10**  
Natural transformations \(F\Rightarrow G\) are squares in \(\mathbf{Cat}\) whose top and bottom are hom profunctors.

### 3.5 Theories of Dynamical Systems

A *theory of dynamical systems* is given by an indexed category \(A: C^{op}\to \mathbf{Cat}\) plus a *section* \(\,T\). This allows us to define systems \(\,T(\mathrm{State}_S)\to \mathrm{State}_S\) as certain lenses.

#### 3.5.0.1

**Definition 3.5.0.1**  
A *section* \(T\) of an indexed category \(A\) assigns to every object \(C\in C\) an object \(T_C\in A(C)\) and to every morphism \(\varphi:C'\to C\) a map \(T_\varphi: T_{C'}\to \varphi^* T_C\), satisfying naturality-like conditions.

**Definition 3.5.0.5**  
A *dynamical system* in a theory of dynamical systems \(D=(A,T)\) is an \(A\)-lens of the form
\[
\begin{pmatrix}
\mathrm{update}_S: T(\mathrm{State}_S)\times \mathrm{In}_S \to T(\mathrm{State}_S) \\
\mathrm{expose}_S: \mathrm{State}_S \to \mathrm{Out}_S
\end{pmatrix}
\]
satisfying suitable conditions.

**Proposition 3.5.0.7**  
The deterministic systems theory of sets is the Grothendieck double construction of \(\mathbf{C}\) with the indexed category of contexts \(\mathrm{Ctx}^{-}\).

#### 3.5.1 The deterministic systems theories

**Definition 3.5.1.1**  
Let \(\mathbf{C}\) be a cartesian category. The deterministic systems theory \(\mathrm{Det}_\mathbf{C}\) is the indexed category \(\mathrm{Ctx}^{-}: \mathbf{C}^{op}\to \mathbf{Cat}\) plus the section sending \(\varphi\) to \(\varphi\circ \pi_2\).

#### 3.5.2 The differential systems theories

**Definition 3.5.2.1**  
\(\mathrm{Euc}\) is the Euclidean differential systems theory (with \(\mathbf{C}=\mathbb{R}^n\) spaces and the usual tangent structure). The update map is given by directional derivatives.

**Definition 3.5.2.16**  
\(\mathrm{Subm}: \mathbf{Man}^{op}\to \mathbf{Cat}\) is the indexed category sending each manifold \(M\) to the category of submersions \(\phi:E\to M\). Pullback is along submersions.

**Lemma 3.5.2.22**  
A tangent bundle \(\pi: T M\to M\) is a submersion.

**Definition 3.5.2.23**  
\(\mathrm{Diff}\) is the *general differential systems theory*, given by \(\mathrm{Subm}\) plus the tangent bundle functor. A system in \(\mathrm{Diff}\) has states in a manifold, outputs in a manifold, an input submersion, and an update that assigns tangent vectors.

#### 3.5.3 Dependent deterministic systems theory

**Definition 3.5.3.1**  
If \((C,D)\) is a category with display maps and has finite products, we get a *dependent deterministic systems theory* \(\mathrm{DpDet}_C\). For instance, in \(\mathbf{Set}\) with all maps as display maps, we get dependent sets of inputs.

#### 3.5.4 Non-deterministic systems theories

**Definition 3.5.4.2**  
Let \(M\) be a commutative monad on a cartesian category \(C\). The non-deterministic systems theory \(\mathrm{NonDet}_M\) is defined by the indexed category \(\mathrm{Ctx}_M^-\) (Kleisli-based) plus the section sending \(\varphi\) to \(\eta\)-based contexts.

### 3.6 Restriction of systems theories

**Definition 3.6.0.1**  
Given a systems theory \(T = (A, T)\) and a functor \(F: D\to C\), we get a *restriction* of \(T\) along \(F\):
\[
T|_F := \bigl(A\circ F^{op},\, T\circ F\bigr).
\]
This yields a new systems theory with the same style of updates and exposures, but over the objects and morphisms of \(D\).

**Example**: Restricting a differential systems theory to affine maps for Euler approximations, thereby allowing fewer possible behaviors (e.g. only affine solutions remain).

## Chapter 4  
**Change of Systems Theory**

### 4.1 Introduction

In the last chapter, we saw a general formulation of the notion of behavior of a system and a precise definition of the notion of systems theory.

#### Definition 4.1.0.1
A **theory of dynamical systems** consists of an indexed category  
\[
A : C^{op} \;\longrightarrow\; \mathbf{Cat}
\]  
together with a section  
\[
T.
\]

**Informal Definition 4.1.0.2.** A theory of dynamical systems is a particular way to answer the following questions about what it means to be a dynamical system:

1. What does it mean to be a state?  
2. How should the output vary with the state — discretely, continuously, linearly?  
3. Can the kinds of input a system takes depend on what it is putting out, and how do they depend on it?  
4. What sorts of changes are possible in a given state?  
5. What does it mean for states to change?  
6. How should the way the state changes vary with the input?

Having such a theory allows us to work in its double category of arenas to derive compositionality results about systems.

#### Definition 4.1.0.3
Let 
\[
A : C^{op} \;\to\; \mathbf{Cat}
\]
be an indexed category. Then the **category of $A$-arenas** is defined to be the Grothendieck double construction of $A$:
\[
\mathrm{Arena}_A \;:=\; \bigsqcup_{C\in C} A(C),
\]
viewed as a double category. The horizontal category of $\mathrm{Arena}_A$ is the category $\mathrm{Chart}_A$ of $A$-charts, and the vertical category of $\mathrm{Arena}_A$ is the category $\mathrm{Lens}_A$ of $A$-lenses.

We now look at composition in the double category of arenas and see how it relates to the composition of systems and behaviors.

##### Example 4.1.0.4
Continuing from Example 3.4.1.4, suppose we have a $b^{-}\text{-}b^{+}$-steady state $s$ in a system $S$ (Eq. (4.1)). By composing squares vertically (Eq. (3.8)) in the double category, we can see that $s$ is also a $d^{-}\text{-}d^{+}$-steady state of the wired system.

Though results are often most smoothly proven in the double category of arenas, we usually prefer a viewpoint that separates the interface of a system from the system itself. In this chapter, we define the abstract algebra of systems and their two sorts of composition while keeping the separation between interfaces and systems. We organize systems into **doubly indexed categories** (introduced in Section 4.3) and then investigate how changes of systems theory act on these doubly indexed categories.

Later (Section 4.5), we define a **change of systems theory** as a way of turning one sort of dynamical system into another, possibly restricting or re-interpreting certain structures. As an important example, the **Euler method** gives a change of systems theory from a Euclidean differential systems theory to a deterministic one by discretizing differential equations. However, behaviors might not be preserved in full generality (e.g., a non-affine trajectory might only be approximated), but steady states are preserved.

### 4.2 Composing behaviors in general

Recall the categories $\mathrm{Sys}_{I \xrightarrow{} O}$ from Definition 3.3.1.1. We see that wiring together systems is functorial with respect to simulations that do not change the interface.

#### Definition 4.2.0.1
Let $D = (A, T)$ be a theory of dynamical systems. For an $A$-arena $I \xrightarrow{} O$, the **category $\mathrm{Sys}_{I \xrightarrow{} O}$ of $D$-systems** with interface $I \xrightarrow{} O$ is defined by:

- Its objects are $A$-lenses 
  \[
  \xymatrix{
  T(\mathrm{State}_S) \ar@<.5ex>[r] \ar@{<-}@<-.5ex>[r] & \mathrm{State}_S
  }
  \quad \text{and} \quad
  \mathrm{State}_S \to I,\quad \mathrm{State}_S \leftarrow O
  \]
  i.e., $T\mathrm{State}_S \xrightarrow{} \mathrm{State}_S \,\xdashrightarrow{}\, I \xrightarrow{} O$.

- Its maps are **simulations**, i.e., behaviors with identity chart.

Composition is given by horizontal composition in the double category $\mathrm{Arena}_A$.

#### Proposition 4.2.0.2
For a lens $f^\sharp_f : I \xrightarrow{} O \;\;\longleftrightarrow\;\; I' \xrightarrow{} O'$, we get a functor
\[
\mathrm{Sys}_{f^\sharp_f} : \mathrm{Sys}_{I \xrightarrow{} O} \;\to\; \mathrm{Sys}_{I' \xrightarrow{} O'}
\]
by wiring together the systems.

*Proof Sketch.* Follows from the interchange law in the double category of arenas.

#### Proposition 4.2.0.3
Given a chart $f^\flat_f : I \xrightarrow{} O \;\Longrightarrow\; I' \xrightarrow{} O'$, we get a **profunctor**
\[
\mathrm{Sys}_{f^\flat_f}: \mathrm{Sys}_{I \xrightarrow{} O} \;\nrightarrow\; \mathrm{Sys}_{I' \xrightarrow{} O'}.
\]
Here, $\mathrm{Sys}_{f^\flat_f}(T,S)$ is the set of behaviors from $T$ to $S$ with chart $f^\flat_f$. It acts on simulations by composition on the left and right.

#### Exercise 4.2.0.4
Show that the action
\[
\mathrm{Sys}_{f^\flat_f}(T,S) \;=\;\{\;\phi : \mathrm{State}_T \to \mathrm{State}_S\;\mid\; \phi\text{ is a behavior with chart }f^\flat_f\}
\]
is functorial. (Hint: use double category notation.)

#### Proposition 4.2.0.5
Given a square in the double category of arenas
\[
\alpha \;=\;
\begin{matrix}
I_1 & \xrightarrow{f} & I_2 \\
\Big\downarrow{j^\flat_j} & & \Big\downarrow{k^\flat_k} \\
I_3 & \xrightarrow{g} & I_4
\end{matrix}
\]
we get a corresponding square of profunctors
\[
\mathrm{Sys}_{f^\flat_f} \;\nrightarrow\; \mathrm{Sys}_{g^\flat_g}
\;\text{indexed by}\;
\mathrm{Sys}_{j^\sharp_j}, \mathrm{Sys}_{k^\sharp_k}.
\]
It is defined on elements $\phi \in \mathrm{Sys}_{f^\flat_f}(T,S)$ by vertically composing $\phi$ with $\alpha$. This is natural by the double category laws.

#### Exercise 4.2.0.6
Show the family of functions
\[
\mathrm{Sys}(\alpha) : \mathrm{Sys}_{f^\flat_f} \;\Rightarrow\; \mathrm{Sys}_{g^\flat_g}\;\big(\mathrm{Sys}_{j^\sharp_j}, \mathrm{Sys}_{k^\sharp_k}\big)
\]
is a natural transformation. (Hint: use double category notation.)

### 4.3 Arranging categories along two kinds of composition: Doubly Indexed Categories

In Section 3.3.0.17, we noted a category of systems and behaviors, but we have chosen to organize our systems differently, placing them in separate categories $\mathrm{Sys}_{I \xrightarrow{} O}$ for each interface. Lens composition rewires interfaces as functors, while chart composition shapes behaviors as profunctors. This structure is that of a **doubly indexed category**.

#### Definition 4.3.0.1
A **doubly indexed category** $A: D\to \mathbf{Cat}$ consists of:

1. A double category $D$ (the indexing base).  
2. For each object $D\in D$, a category $A(D)$.  
3. For each vertical arrow $j: D\to D'$, a functor $A(j): A(D)\to A(D')$.  
4. For each horizontal arrow $f: D\to D'$, a profunctor $A(f): A(D)\nrightarrow A(D')$.  
5. For each square in $D$, a corresponding square of profunctors in $\mathbf{Cat}$.  
6. A compositor $A(f)\ast A(g)\Rightarrow A(f|g)$ satisfying horizontal lax functoriality laws (associativity, unitality) and appropriate naturality.

#### Definition 4.3.0.2
The **doubly indexed category of systems** in a systems theory $D = (A, T)$ is
\[
\mathrm{Sys}^D : \mathrm{Arena}_D \;\to\; \mathbf{Cat},
\]
where:

- For $I \xrightarrow{} O$, we let $\mathrm{Sys}^D(I \xrightarrow{} O)$ be the category of systems with that interface (Definition 4.2.0.1).
- For a lens $w^\sharp_w$, we associate the functor wiring systems together (Proposition 4.2.0.2).
- For a chart $f^\flat_f$, we associate the profunctor given in Proposition 4.2.0.3.
- For squares and compositors, we rely on the double category of arenas. The laws follow from horizontal and vertical composition and the interchange law in $\mathrm{Arena}_D$.

#### Definition 4.3.0.3
We can also form the **doubly indexed category of vectors of sets**, denoted $\mathrm{Vec}: \mathrm{Matrix}\to \mathbf{Cat}$. It arranges each set $A$ to the category $\mathrm{Set}^A$ of $A$-dependent sets. A matrix $M: A\to B$ acts as a functor $\mathrm{Vec}(A)\to \mathrm{Vec}(B)$. This is also checked via the double category of matrices.

Both $\mathrm{Sys}^D$ and $\mathrm{Vec}$ are examples of the **vertical slice construction** (Section 4.4).

### 4.4 Vertical Slice Construction

This section introduces the **vertical slice construction**, which takes a double functor $F: D_0 \to D_1$ and produces a doubly indexed category $\sigma_F : D_1 \to \mathbf{Cat}$. We also define **double functors** and **natural transformations** between them.

#### Definition 4.4.1.1
Let $D_0, D_1$ be double categories. A **double functor** $F: D_0 \to D_1$ consists of:

- An object assignment $F: \mathrm{Ob}(D_0)\to \mathrm{Ob}(D_1)$  
- A vertical functor $F: vD_0 \to vD_1$  
- A horizontal functor $F: hD_0 \to hD_1$  
- An assignment taking every square in $D_0$ to a square in $D_1$, satisfying preservation of horizontal/vertical composition, identities, etc.

#### Definition 4.4.1.5
We get a category $\mathbf{Dbl}$ of double categories whose maps are double functors.

#### Proposition 4.4.1.6
The assignment $A \mapsto \mathrm{Arena}_A$ sending an indexed category to its Grothendieck double construction is functorial.

**Proof.** The main step is defining how an indexed functor $(F,F): A \to B$ induces a double functor $\mathrm{Arena}_A \to \mathrm{Arena}_B$. One checks that squares are preserved using the functoriality of the Grothendieck construction.

#### Definition 4.4.2.1 (Vertical Slice Construction)
Let $F: D_0 \to D_1$ be a double functor. The **vertical slice** $\sigma_F: D_1 \to \mathbf{Cat}$ is defined by:

- For $D\in D_1$, $\sigma_F(D)$ has objects $(A, j)$ where $A\in D_0$ and $j: F(A)\to D$ is a vertical arrow in $D_1$.  
- Morphisms $(A_1,j_1)\to (A_2,j_2)$ are pairs $(f,\alpha)$ of a horizontal map $f:A_1\to A_2$ and a square in $D_1$.  
- It assigns functors on vertical arrows, profunctors on horizontal arrows, and compositors by horizontal composition.

One verifies the doubly indexed category axioms using the corresponding double category laws in $D_1$.

#### Proposition 4.4.2.2
$\mathrm{Sys}^D = \sigma_{\;(\!\!\!\hspace{1pt}\dashv\,T)}$, i.e., the doubly indexed category of systems in a theory $D$ is the vertical slice construction of the section $T$ considered as a double functor $\; \_ \xrightarrow{} \mathrm{Arena}_D$.

#### Proposition 4.4.2.3
$\mathrm{Vec} = \sigma_{1}$, i.e., the doubly indexed category of vectors of sets is the vertical slice of the inclusion $1 \to \mathrm{Matrix}$ picking out the one-element set.

We next define transformations between double functors.

#### Definition 4.4.3.1
Let $F, G: D \to E$ be double functors.

- A **vertical natural transformation** $v: F\Rightarrow G$ assigns to each object $D$ a vertical arrow $v_D: F(D)\to G(D)$ in $E$ and to each horizontal map $f$ a square in $E$, satisfying compatibility (naturality) with all compositions and squares.  
- Dually, a **horizontal natural transformation** $h: F\Rightarrow G$ assigns to each object a horizontal arrow, with analogous conditions.

##### Lemma 4.4.3.3
Vertical transformations compose vertically, and horizontal transformations compose horizontally, following the usual transformation laws.

##### Theorem 4.4.3.4
There is a double category $\mathrm{Fun}(D,E)$ of double functors $D\to E$, whose vertical maps are vertical transformations, horizontal maps are horizontal transformations, and squares are modifications satisfying coherence conditions.

##### Lemma 4.4.3.5
(Gives a commuting diagram for modifications and squares.)

#### Definition 4.4.4.1
We form a category $\mathrm{DblFun}$ of double functors with 1-morphisms given by triples $(v_0,v_1,v)$ and an appropriate composition law. Exercises check identity and associativity.

#### Definition 4.4.4.3
A **lax doubly indexed functor** $(F_0,F): A\Rightarrow B$ between doubly indexed categories $A: D_1\to\mathbf{Cat}$, $B: D_2\to\mathbf{Cat}$ includes a double functor $F_0: D_1\to D_2$ and structural functor/profunctor transformations satisfying vertical/horizontal functoriality and interchange. If these structural transformations are isomorphisms, the functor is **taut** (often called a **strict** or **normal** functor in some references).

#### Definition 4.4.4.4
Given two lax doubly indexed functors $(F_0,F)$ and $(G_0,G)$, we can **compose** them, yielding $(F_0G_0, F\,G)$ with natural transformations suitably composed. This gives categories $\mathbf{LaxDblIx}$ and $\mathbf{DblIx}$.

##### Theorem 4.4.4.5
The vertical slice construction gives a functor $\sigma : \mathrm{DblFun} \to \mathrm{DblIx}$.

#### Proposition 4.4.4.6
Given $(v_0,v_1,v): F_1\to F_2$ in $\mathrm{DblFun}$, we obtain a doubly indexed functor $\sigma_v: \sigma_{F_1}\to \sigma_{F_2}$.

##### Lemma 4.4.4.7
The assignment $(v_0,v_1,v)\mapsto (v_1,\sigma_v)$ is functorial.

Hence $\sigma$ is itself a functor.

### 4.5 Change of systems theory

Recall from Chapter 3 that we have many examples of systems theories, including deterministic systems in a cartesian category, differential systems, or non-deterministic systems via commutative monads. We also considered ways to restrict them (Section 3.6).

#### Definition 4.5.1.2
Let $(A: C^{op}\to \mathbf{Cat}, T_1)$ and $(B: D^{op}\to \mathbf{Cat}, T_2)$ be theories of dynamical systems. A **change of systems theory** $((F,F),\varphi): (A,T_1)\to (B,T_2)$ consists of:

1. An indexed functor $(F,F): A\to B$.  
2. A transformation of sections $\varphi: F\,T_1 \to T_2\,F$, i.e., for each $C\in C$, a map
   \[
   \varphi_C : F(T_1 C)\to T_2(F C)
   \]
   satisfying the naturality condition in Eq. (4.5).

By Proposition 4.5.1.3, this is equivalent to a natural transformation $\varphi\,\mathrm{id} : (F\_)\circ T_1 \Rightarrow T_2 (\_F)$ with an identity bottom component.

##### Proposition 4.5.1.5
Every restriction (Definition 3.6.0.1) is a change of systems theory. If $T=(A:T_1)$ and $F:D\to C$ is a functor, then $T|F\to T$ is such a change.

##### Proposition 4.5.1.6
Every morphism of commutative monads $\psi: M\to N$ on a cartesian category $C$ gives a change of systems theory $((\mathrm{id},\psi^*), \mathrm{id}): \mathrm{Nondet}_M \to \mathrm{Nondet}_N$.

**Example 4.5.1.7.** This yields a change $\mathrm{Det}_C\to \mathrm{Nondet}_M$ when $M$ is any commutative monad, interpreting deterministic systems as special cases of $M$-non-deterministic systems.

**Example 4.5.1.8.** A monad map $D\to P$ from the probability monad to the powerset monad yields a change $\mathrm{Nondet}_D \to \mathrm{Nondet}_P$ restricting transitions to those with nonzero probability.

##### Proposition 4.5.1.9
If $F: C\to D$ is a cartesian functor between cartesian categories, we get a change of systems theory $((F,F),\mathrm{id}): \mathrm{Det}_C\to \mathrm{Det}_D$.

**Example 4.5.1.10.** Forgetting topology or imposing discrete topologies are examples of this proposition.

##### Proposition 4.5.1.11 (Euler Approximation)
For any $\varepsilon>0$, the Euler method gives a change of systems theory
\[
E_\varepsilon: \mathrm{Euc}|_{\mathrm{Aff}}\;\to\;\mathrm{Det}_{\mathrm{Euc}},
\]
defined by $((\iota,\iota),\phi)$ where $\iota:\mathrm{Aff}\to \mathrm{Euc}$ is inclusion, and $\phi(s,v)=s+\varepsilon\,v$. This method approximates differential updates by discrete steps.

**Remark 4.5.1.12.** This change of systems theory preserves affine behaviors (e.g., steady states).

#### Definition 4.5.1.13
We have a category **Theory** whose objects are theories of dynamical systems and whose morphisms are changes of theories. Composition of changes is given by composing $(F_1,F_1),\varphi_1$ and $(F_2,F_2),\varphi_2$ with $\varphi_1\ast\varphi_2$ as in the diagram below Eq. (4.5).

#### 4.5.2 Functoriality

A change of systems theory lets us transform a system in one theory into another in a systematic way.

#### Definition 4.5.2.1
If $F=((F,F),\varphi): (A,T_1)\to (B,T_2)$ is a change of systems theory and
\[
S = \Bigl(T_1(\mathrm{State}_S) \;\rightrightarrows\; \mathrm{State}_S\Bigr) \;\dashrightarrow\; (I\to O)
\]
is an $(A,T_1)$-system, define $F(S)$ to be the $(B,T_2)$-system
\[
\varphi \;\|\; \mathrm{id}\;\Bigl( F(\mathrm{update}_S),\; F(\mathrm{expose}_S)\Bigr).
\]
Explicitly, the update map is $F(\mathrm{update}_S)\,\varphi$, and the expose map is $F(\mathrm{expose}_S)$.

##### Theorem 4.5.2.2
There is a functor
\[
\mathrm{Sys}: \mathrm{Theory}\;\to\;\mathrm{DblIx}
\]
sending a theory of dynamical systems $T$ to the doubly indexed category $\mathrm{Sys}^T$ of systems in it. A change of systems theory $F:T_1\to T_2$ goes to a (taut) doubly indexed functor $\mathrm{Sys}^{T_1}\to \mathrm{Sys}^{T_2}$ sending a $T_1$-system $S$ to the $T_2$-system $F(S)$ from Definition 4.5.2.1.

*Proof Sketch.* We realize $\mathrm{Sys}^T$ as the vertical slice $\sigma_{\;(\!\!\!\hspace{1pt}\dashv\,T)}$, then show the assignment $(A,T)\mapsto \bigl(\_\to\mathrm{Arena}_{(A,T)}\bigr)$ is functorial into $\mathrm{DblFun}$, compose with $\sigma$, and observe how squares give the required natural transformations preserving wiring and behaviors.

**Example 4.5.2.4** (Euler Approximation revisited).  
$E_\varepsilon$ induces a doubly indexed functor from $\mathrm{Euc}|_{\mathrm{Aff}}$ to $\mathrm{Det}_{\mathrm{Euc}}$ that preserves affine behaviors such as steady states. Wiring compositions also commute with applying $E_\varepsilon$.

## Chapter 5: Behaviors of the Whole from Behaviors of the Parts

### 5.1 Introduction

- Two sorts of composition in systems theory:
  - **System composition** (via lens composition).
  - **Behavior composition** (via chart composition).

**Compositionality**: behaviors of component systems give rise to behaviors of composite systems, with compatibility constraints. Main result: a general compositionality theorem for any representable behavior in any systems theory.

### 5.2 Steady States Compose According to the Laws of Matrix Arithmetic

We study how to compose steady states of deterministic systems. The key idea: formulating the set of steady states of a system \(S\) as a matrix of sets, and seeing that composing systems amounts to matrix multiplication.

#### Definition (Matrix of Sets)

Let \(A\) and \(B\) be sets. A \emph{\(B \times A\) matrix of sets} is a function
\[
M : B \times A \to \mathbf{Set}.
\]
We write \(M_{b,a} = M(b,a)\). We depict such a matrix with a string diagram:
\[
A \quad \xleftarrow{M} \quad B.
\]

We may also see a dependent set \(X_{-} : A \to \mathbf{Set}\) as a vector of sets; it corresponds to an \(A \times 1\) matrix of sets.

#### Definition (Matrix Operations)

1. **Matrix Multiplication**: For a \(B \times A\) matrix \(M\) and a \(C \times B\) matrix \(N\), their product
\[
N M : C \times A \to \mathbf{Set}
\]
is given by
\[
(N M)_{c,a} \;=\; \coprod_{\,b \,\in\, B} \Bigl(N_{c,b} \times M_{b,a}\Bigr).
\]
2. **Identity Matrix** \(\,I_A\): an \(A \times A\) matrix with
\[
I_{a,a'} = 
\begin{cases}
1 & \text{if } a = a',\\
\varnothing & \text{if } a \neq a'.
\end{cases}
\]
3. **Kronecker/Tensor Product**: For an \(M\) (\(B \times A\)) and \(N\) (\(C \times D\)), \(M \otimes N\) is a \((B \times C) \times (A \times D)\) matrix with entries
\[
(M\otimes N)_{(b,c),(a,d)} \;=\; M_{b,a}\;\times\;N_{c,d}.
\]
4. **Partial Trace**: For a matrix \(M\) of shape \((A \times C) \times (A \times B)\), define \(\mathrm{tr}_A(M)\) to be the \(\,C \times B\) matrix given by
\[
(\mathrm{tr}_A(M))_{c,b} \;=\; \coprod_{\,a \,\in\, A}\; M_{(a,c),(a,b)}.
\]

#### Propositions and Exercises

- **Exercise 5.2.0.4**: Matrix multiplication is associative and unital up to isomorphism.
- **Proposition 5.2.0.9**: Steady states of the parallel product \(S_1 \otimes S_2\) is the tensor of their steady state matrices: \(\mathrm{Steady}_{S_1 \otimes S_2} \;\cong\; \mathrm{Steady}_{S_1} \;\otimes\; \mathrm{Steady}_{S_2}.\)

**Proof**: each steady state of \(S_1 \otimes S_2\) is a pair of steady states of \(S_1\) and \(S_2\). (Omitted details).

- **Proposition 5.2.0.11**: Steady states of a system \(S\) with an output wired to its own input (the partial trace) is given by partially tracing the steady state matrix. Formally, if \(S\) has \(\mathrm{In}(S) = A \times B\) and \(\mathrm{Out}(S) = A \times C\), and \(S'\) is formed by wiring that \(A\) output to \(A\) input, then
  \[
  \mathrm{Steady}_{S'} \;=\; \mathrm{tr}_A (\mathrm{Steady}_S).
  \]

##### Proof

The set of steady states of \(S'\) is isomorphic to those of \(S\) factoring through the partial trace. (Detailed checking omitted here.)

- **Remark 5.2.0.10**: Motivates the symbol \(\otimes\) for parallel product.

- **Proposition 5.2.0.12**: The partial trace \(\mathrm{tr}_A(M)\) can be implemented by multiplying by a matrix \(\mathrm{Tr}_A\). Precisely,
\[
\mathrm{tr}_A(M) \;\cong\; \mathrm{Tr}_A \, M.
\]
(Detailed statement and proof given.)

### 5.3 The Big Theorem: Representable Doubly Indexed Functors

#### Recap

A central result: behaviors of systems that come from a "representable shape" compose in a manner captured by matrix arithmetic. We generalize from steady states to any representable behavior (trajectories, etc.).

#### 5.3.1 Turning Lenses into Matrices: Representable Double Functors

**Proposition 5.3.1.1** (Chart functor):
For an arena \(I \to O\) in the deterministic systems theory, there is a functor
\[
\mathrm{Chart}^{\mathrm{Det}}_{(I \to O),-} \colon \mathbf{Lens}^{\mathrm{Det}} \;\to\; \mathbf{Matrix}
\]
sending a lens \( (w^\sharp \colon A^+\times B^- \to A^- \times B^+)\) to a matrix whose entries are sets of squares in the double category of arenas. Detailed proof involves checking composition.

**Example 5.3.1.2**: A lens \(w^\sharp/w\) can be turned into a matrix of singleton or empty sets.

**Exercise 5.3.1.3**: Example lens calculations.

**Proposition 5.3.1.4** (Arena as representable double functor):
\[
\mathrm{Arena}^{\mathrm{Det}}_{(I \to O),-}: \mathrm{Arena}^{\mathrm{Det}} \to \mathbf{Matrix}
\]
acts on arenas, lenses, and squares by post-composition. This is an instance of a *representable double functor* (Definition 5.3.1.5, Theorem 5.3.1.6).

#### Horizontal Factor Condition

**Definition 5.3.1.5**: Let \(\mathcal{D}\) be a double category. An object \(D \in \mathcal{D}\) satisfies the \emph{horizontal factor condition} if any square with top arrow \(D\) factors uniquely. A double category is \emph{spanlike} if all objects satisfy this condition.

**Theorem 5.3.1.6**: For a spanlike double category \(\mathcal{D}\) and \(D \in \mathcal{D}\) satisfying the horizontal factor condition, there is a representable double functor
\[
\mathcal{D}(D, -): \mathcal{D} \;\to\; \mathbf{Matrix}.
\]

**Lemma 5.3.1.7**: For any systems theory \(T\), the double category \(\mathrm{Arena}^T\) is spanlike (horizontal factor condition holds).

**Theorem 5.3.1.8**: For any system theory \(T\) and arena \(I \to O\), there is a representable double functor
\[
\mathrm{Arena}^T_{(I \to O),-}: \mathrm{Arena}^T \to \mathbf{Matrix}.
\]

#### 5.3.2 How Behaviors of Systems Wire Together: Representable Doubly Indexed Functors

**Theorem 5.3.2.1**: For any systems theory \(T\) and any system \(T\) in \(T\), there is a \emph{lax} doubly indexed functor
\[
\mathrm{Behave}^T : \mathrm{Sys}^T \to \mathbf{Vec}
\]
that sends a system \(S\) to its set of \(T\)-shaped behaviors.

**Sketch**:
- On the indexing side (\(\mathrm{Arena}^T\) to \(\mathbf{Matrix}\)), use the representable double functor from Section 5.3.1.
- On the fiber side, define for each arena \((I \to O)\) a functor from \(\mathrm{Sys}^T(I \to O)\) to \(\mathbf{Vec}\), sending system \(S\) to the set of \(T\)-shaped behaviors. Prove the required composition laws (vertical/horizontal functoriality, functorial interchange).

**Theorem 5.3.2.2** (Abstract version):
Let \(A : D \to \mathbf{Cat}\) be a doubly indexed category with \(D\) spanlike. Then for any \(T \in A(D)\), there is a representable \emph{lax} doubly indexed functor
\[
D(T, -) \;\; \xrightarrow{\quad} \;\; \mathbf{Matrix}.
\]

#### 5.3.3 Is the Whole Always More Than the Composite of Its Parts?

**Behavior** is *laxly* compositional in general. If the system \(T\) exposes its entire state (\(\mathrm{expose}_T\) is an isomorphism), then the doubly indexed functor becomes \emph{taut}, meaning every behavior in a composite arises from the component behaviors.

**Theorem 5.3.3.1**: If \(T\) is a system in a systems theory such that \(\mathrm{expose}_T\) is an isomorphism, then the representable lax doubly indexed functor \(\mathrm{Behave}^T\) is in fact \emph{taut}. Concretely, for any lens \(w^\sharp / w\), the natural transformation is an isomorphism.

**Example 5.3.3.2**: In the deterministic theory, the system \(\mathrm{Time}\) exposes its entire state; thus trajectories compose tautly.

**Example 5.3.3.3**: In a differential systems theory (e.g.\ Euclidean), the system \(\mathrm{Time}\) represents continuous time \(\frac{ds}{dt} = 1\), again exposing entire state, so the same reasoning applies.

**Remark 5.3.3.2**: If a system does not expose its entire state, some composite behaviors might not come from the behaviors of the parts.

**Proposition 5.3.3.1**: Detailed proof by constructing an inverse factorization of squares.

### 5.4 Summary and Further Reading

- Extended results on compositionality for representable behaviors appear in Spivak’s work on steady states, etc.
- Doubly indexed categories organize systems and their behaviors in a uniform framework.

----

## Chapter 6: Dynamical System Doctrines

### 6.1 Introduction

A \emph{doctrine of dynamical systems} is a systematic way to produce doubly indexed categories of systems. The lens-based approach is the \(\mathbf{Set}\)-based parameter-setting doctrine. Two others are highlighted:

1. **Behavioral approach** (variable sharing using spans).
2. **Diagrammatic approach** (port plugging using cospans).

We place these in the broader context of compositionality of systems.

**Semi-formal Definition 6.1.0.2**: A doctrine of dynamical systems is a functor \(\mathrm{Sys}_\mathfrak{P}\) from a category of \(\mathfrak{P}\)-system theories to \(\mathbf{DblIx}\), giving a doubly indexed category \(\mathrm{Sys}_\mathfrak{P}^T : \mathrm{Interface}_\mathfrak{P}^T \to \mathbf{Cat}\).

### 6.2 The Behavioral Approach to Systems Theory

We focus on spans (pullbacks) to compose systems by \emph{sharing variables}. Each system has a set of behaviors with some exposed variables. Composition: set these exposed variables equal according to a span.

#### 6.2.1 The Idea of the Behavioral Approach

Behavioral approach: a system is a set (or variable set) of behaviors. We can represent constraints at the same level as systems. Composition uses spans in a finitely complete category.

**Definition (Behavioral Doctrine)**:
A \emph{behavioral doctrine} is any category \(\mathcal{C}\) with finite limits. Then the associated doubly indexed category
\[
\mathrm{BSys}^\mathcal{C} := \sigma(1:1 \to \mathrm{Span}(\mathcal{C}))
\]
governs how systems in \(\mathcal{C}\) compose by sharing variables.

#### 6.2.2 Bubble Diagrams as Spans in Categories of Arities

A \emph{bubble diagram} is a special kind of undirected wiring diagram in \(\mathrm{Arity}\) that ensures no dangling or passing wires. Formally, it is a span in the category of arities whose left leg is surjective and right leg is injective. Composition is by pullback (pushout in \(\mathbf{FinSet}\) op). Detailed statements:

- **Definition 6.2.2.1** (Informal bubble diagrams).
- **Definition 6.2.2.4**: A bubble diagram is a span
  \[
  X_I \xleftarrow{i^*} X_L \xrightarrow{o^*} X_O
  \]
  with \(i\) surjective, \(o\) injective (in finite sets).

**Lemma 6.2.2.9**: Composite of bubble diagrams is again a bubble diagram (surjective + injective are preserved).

**Proposition 6.2.2.11**: The double category \(\mathrm{Bubble}^T\) is thin (at most one square for a given boundary) and is spanlike.

**Proposition 6.2.2.12**: Given a finitely complete category \(\mathcal{C}\), and a functor from \(\mathrm{Arity}^T\) to \(\mathcal{C}\), bubble diagrams interpret as spans in \(\mathcal{C}\).

#### 6.2.3 The Behavioral Doctrine of Interval Sheaves

We can incorporate time variation by using \emph{sheaves} on the category of intervals \(I\). Objects are functors \(I^\mathrm{op} \to \mathbf{Set}\) (interval presheaves) satisfying a gluing condition.

**Definition 6.2.3.2**: An \emph{interval sheaf} \(\mathcal{X}\) gives \(\mathcal{X}(\ell)\) for each interval \(\ell\) plus restriction maps. Must satisfy:
1. Unity,
2. Functoriality,
3. Gluing (behaviors determined by all strict subintervals).

**Lemma 6.2.3.3**: Gluing condition is separation + existence property.

**Proposition 6.2.3.8**: Pullbacks of interval sheaves are computed componentwise.

**Definition 6.2.3.9**: The category of interval sheaves \(\mathrm{Sh}(I)\) is a behavioral doctrine (has finite limits).

**Theorem 6.2.3.11**: The functor \(\mathrm{Traj}\) sending a differential system \(S\) to its presheaf of trajectories actually lands in \(\mathrm{Sh}(I)\). Thus trajectories can be composed in the sheaf-theoretic sense.

**Lemma 6.2.3.12**: Inclusion \(\iota : I \to \mathrm{Sys}^{\mathrm{Diff}}\).

**Definition 6.2.3.13**: For \(S \in \mathrm{Sys}^{\mathrm{Diff}}\), \(\mathrm{Traj}(S)\) is the interval presheaf of trajectories, with restriction by pre-composition in the system diagram.

**Lemma 6.2.3.15**: \(\mathrm{Traj}(S)\) satisfies the sheaf property.

### 6.3 Drawing Systems: The Port-Plugging Doctrine

Another approach: \emph{diagrams} with ports, glued together via pushouts (cospans). Examples: circuit diagrams, population flow graphs.

#### 6.3.1 Port-Plugging System Theories: Labelled Graphs

A category \(D\) with finite colimits can serve as a port-plugging doctrine. E.g.\ \(\mathbf{Graph}\) has all finite colimits, so we can see labelled graphs as objects. Composition = pushout.

**Definition 6.3.1.1**: A graph \(G\) has node set \(G_0\), edge set \(G_1\), source/target \(s,t\).

**Proposition 6.3.1.11**: Node and edge labellings can be re-expressed as graph maps to \(K_L\) and \(E_L\).

**Definition 6.3.1.12**: A graph labelled in \(L\) is a map \(\ell: G \to L\). The category \(\mathbf{Graph}_L\) has finite colimits.

**Definition 6.3.1.16**: The doctrine of labelled graphs is \(\sigma(1 \to \mathrm{Cospan}(\mathbf{Graph}_L))\).

#### 6.3.2 Bubble Diagrams for the Port-Plugging Doctrine

We can see bubble diagrams equivalently as cospans in \(\mathbf{FinSet}\). Composition in \(\mathbf{Cospan}(D)\) uses pushouts, which correspond to gluing. Key result:

**Theorem 6.3.2.3**: The double category \(\mathrm{Bubble}^T\) is spanlike. Hence by Theorem 5.3.2.2, we can build representable lax doubly indexed functors in port-plugging doctrines.

#### 6.3.3 Further Reading

Mentions of decorated cospans (Fong), structured cospans (Courser, Baez), and references for how they are applied.  