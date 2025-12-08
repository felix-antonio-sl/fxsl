# Chapter 3

## Databases: Categories, functors, and universal constructions

---

### 3.1 What is a database?

Integrating data from disparate sources is a major problem in industry today. A study in 2008 [BH08] showed that data integration accounts for 40% of IT (information technology) budgets, and that the market for data integration software was $2.5 billion in 2007 and increasing at a rate of more than 8% per year. In other words, it is a major problem; but what is it?

**A database is a system of interlocking tables.** Data becomes information when it is stored in a given *formation*. That is, the numbers and letters don’t mean anything until they are organized, often into a system of interlocking tables. An organized system of interlocking tables is called a database. Here is a favorite example:

| Employee | FName | WorksIn | Mngr |
|----------|-------|---------|------|
| 1        | Alan  | 101     | 2    |
| 2        | Ruth  | 101     | 2    |
| 3        | Kris  | 102     | 3    |

| Department | DName | Secr |
|------------|-------|------|
| 101        | Sales | 1    |
| 102        | IT    | 3    |

These two tables interlock by use of a special left-hand column, demarcated by a vertical line; it is called the ID column. The ID column of the first table is called ‘Employee,’ and the ID column of the second table is called ‘Department.’ The entries in the ID column—e.g. 1, 2, 3 or 101, 102—are like row labels; they indicate a whole row of the table they’re in. Thus each row label must be unique (no two rows in a table can have the same label), so that it can unambiguously specify its row.

Each table’s ID column, and the set of unique identifiers found therein, is what allows for the interlocking mentioned above. Indeed, other entries in various tables can reference rows in a given table by use of its ID column. For example, each entry in the WorksIn column references a department for each employee; each entry in the Mngr (manager) column references an employee for each employee; and each entry in the Secr (secretary) column references an employee for each department. Managing all this cross-referencing is the purpose of databases.

Looking back at Eq. (3.1), one might notice that every non-ID column, found in either table, is a reference to a label of some sort. Some of these, namely WorksIn, Mngr, and Secr, are *internal references*, often called *foreign keys*; they refer to rows (keys) in the ID column of some (foreign) table. Others, namely FName and DName, are *external references*; they refer to strings or integers, which can also be thought of as labels, whose meaning is known more broadly. Internal reference labels can be changed as long as the change is consistent—1 could be replaced by 1001 everywhere without changing the meaning—whereas external reference labels certainly cannot! Changing Ruth to Bruce everywhere would change how people understood the data.

The reference structure for a given database—i.e. how tables interlock via foreign keys—tells us something about what information was intended to be stored in it. One may visualize the reference structure for Eq. (3.1) graphically as follows:

[Figure: A diagram (Hasse diagram for a database) showing two black nodes labeled Employee and Department, with arrows labeled WorksIn, Mngr, and Secr connecting them, and white nodes representing external reference types FName and DName, with arrows from Employee to FName and from Department to DName.]

This is a kind of “Hasse diagram for a database,” much like the Hasse diagrams for preorders in Remark 1.39. How should you read it?

The two tables from Eq. (3.1) are represented in the graph (3.2) by the two black nodes, which are given the same name as the ID columns: Employee and Department. There is another node—drawn white rather than black—which represents the external reference type of strings, like “Alan,” “Alpha,” and “Sales”. The arrows in the diagram represent non-ID columns of the tables; they point in the direction of reference: WorksIn refers an employee to a department.

**Exercise 3.3.** Count the number of non-ID columns in Eq. (3.1). Count the number of arrows (foreign keys) in Eq. (3.2). They should be the same number in this case; is this a coincidence?

A Hasse-style diagram like the one in Eq. (3.2) can be called a *database schema*; it represents how the information is being organized, the formation in which the data is kept. One may add rules, sometimes called ‘business rules’ to the schema, in order to ensure the integrity of the data. If these rules are violated, one knows that data being entered does not conform to the way the database designers intended. For example, the designers may enforce rules saying

- every department’s secretary must work in that department;
- every employee’s manager must work in the same department as the employee.

Doing so changes the schema, say from ‘easySchema’ (3.2) to ‘mySchema’ below.

[Figure: A diagram (mySchema) similar to the previous, but with additional constraints indicated by equations: Department.Secr.WorksIn = Department, Employee.Mngr.WorksIn = Employee.WorksIn.]

In other words, the difference is that easySchema plus constraints equals mySchema.

We will soon see that database schemas are categories 𝒞, that the data itself is given by a ‘set-valued’ functor 𝒞 → Set, and that databases can be mapped to each other via functors 𝒞 → 𝒟. In other words, there is a relatively large overlap between database theory and category theory. This has been worked out in a number of papers; see Section 3.6. It has also been implemented in working software, called FQL, which stands for *functorial query language*. Here is example FQL code for the schema shown above:

#### Communication between databases

We have said that databases are designed to store information about something. But different people or organizations might view the same sort of thing in different ways. For example, one bank stores its financial records according to European standards and another does so according to Japanese standards. If these two banks merge into one, they will need to be able to share their data despite differences in the shape of their database schemas.

Such problems are huge and intricate in general, because databases often comprise hundreds or thousands of interlocking tables. Moreover, these problems occur more frequently than just when companies want to merge. It is quite common that a given company moves data between databases on a daily basis. The reason is that different ways of organizing information are convenient for different purposes. Just like we pack our clothes in a suitcase when traveling but use a closet at home, there is generally not one best way to organize anything.

Category theory provides a mathematical approach for translating between these different organizational forms. That is, it formalizes a sort of automated reorganizing process called *data migration*, which takes data that fits snugly in one schema and moves it into another.

Here is a simple case. Imagine an airline company has two different databases, perhaps created at different times, that hold roughly the same data.

[Figure: Two diagrams, A and B. A has nodes Price, Economy, First Class, Position, with arrows from Economy and First Class to Price and Position. B has nodes Airline Seat, Price, Position, with arrows from Airline Seat to Price and Position.]

Schema A has more detail than schema B—an airline seat may be in first class or economy—but they are roughly the same. We will see that they can be connected by a functor, and that data conforming to A can be migrated through this functor to schema B and vice versa.

The statistics at the beginning of this section show that this sort of problem—when occurring at enterprise scale—continues to prove difficult and expensive. If one attempts to move data from a source schema to a target schema, the migrated data could fail to fit into the target schema or fail to satisfy some of its constraints. This happens surprisingly often in the world of business: a night may be spent moving data, and the next morning it is found to have arrived broken and unsuitable for further use. In fact, it is believed that over half of database migration projects fail.

In this chapter, we will discuss a category-theoretic method for migrating data. Using categories and functors, one can prove up front that a given data migration will not fail, i.e. that the result is guaranteed to fit into the target schema and satisfy all its constraints.

The material in this chapter gets to the heart of category theory: in particular, we discuss categories, functors, natural transformations, adjunctions, limits, and colimits. In fact, many of these ideas have been present in the discussion above:

- The schema pictures, e.g. Eq. (3.4) depict categories 𝒞.
- The instances, e.g. Eq. (3.1) are functors from 𝒞 to a certain category called Set.
- The implicit mapping in Eq. (3.5), which takes economy and first class seats in A to airline seats in B, constitutes a functor A → B.
- The notion of data migration for moving data between schemas is formalized by adjoint functors.

We begin in Section 3.2 with the definition of categories and a bunch of different sorts of examples. In Section 3.3 we bring back databases, in particular their instances and the maps between them, by discussing functors and natural transformations. In Section 3.4 we discuss data migration by way of adjunctions, which generalize the Galois connections we introduced in Section 1.4. Finally in Section 3.5 we give a bonus section on limits and colimits.

---

### 3.2 Categories

A category 𝒞 consists of four pieces of data—objects, morphisms, identities, and a composition rule—satisfying two properties.

**Definition 3.6.** To specify a *category* 𝒞:

1. one specifies a collection Ob(𝒞), elements of which are called *objects*.
2. for every two objects c, d, one specifies a set 𝒞(c, d), elements of which are called *morphisms* from c to d.
3. for every object c ∈ Ob(𝒞), one specifies a morphism id_c ∈ 𝒞(c, c), called the *identity morphism* on c.
4. for every three objects c, d, e ∈ Ob(𝒞) and morphisms f ∈ 𝒞(c, d) and g ∈ 𝒞(d, e), one specifies a morphism f ; g ∈ 𝒞(c, e), called the *composite* of f and g.

We will sometimes write an object c ∈ 𝒞, instead of c ∈ Ob(𝒞). It will also be convenient to denote elements f ∈ 𝒞(c, d) as f : c → d. Here, c is called the *domain* of f, and d is called the *codomain* of f.

These constituents are required to satisfy two conditions:
(a) *Unitality*: for any morphism f : c → d, composing with the identities at c or d does nothing: id_c ; f = f and f ; id_d = f.
(b) *Associativity*: for any three morphisms f : c₀ → c₁, g : c₁ → c₂, and h : c₂ → c₃, the following are equal: (f ; g) ; h = f ; (g ; h). We write this composite simply as f ; g ; h.

---

#### 3.2.1 Free categories

Recall from Definition 1.36 that a graph consists of two types of thing: vertices and arrows. From there one can define paths, which are just head-to-tail sequences of arrows. Every path p has a start vertex and an end vertex; if p goes from v to w, we write p : v → w. To every vertex v, there is a trivial path, containing no arrows, starting and ending at v; we often denote it by id_v, or simply by v. We may also concatenate paths: given p : v → w and q : w → x, their concatenation is denoted p ; q, and it goes v → w → x.

In Chapter 1, we used graphs to depict preorders (V, ≤): the vertices form the elements of the preorder, and we say that v ≤ w if there is a path from v to w in G. We will now use graphs in a very similar way to depict certain categories, known as *free categories*. Then we will explain a strong relationship between preorders and categories in Section 3.2.3.

**Definition 3.7.** For any graph G = (V, A, s, t), we can define a category Free(G), called the *free category* on G, whose objects are the vertices V and whose morphisms from c to d are the paths from c to d. The identity morphism on an object c is simply the trivial path at c. Composition is given by concatenation of paths.

For example, we define 2 to be the free category generated by the graph shown below:

[Figure: A graph with two vertices v₁ and v₂, and one arrow f₁ from v₁ to v₂.]

It has two objects v₁ and v₂, and three morphisms: id_{v₁} : v₁ → v₁, f₁ : v₁ → v₂, and id_{v₂} : v₂ → v₂. Here id_{v₁} is the path of length 0 starting and ending at v₁, f₁ is the path of length 1 consisting of just the arrow f₁, and id_{v₂} is the length 0 path at v₂. As our notation suggests, id_{v₁} is the identity morphism for the object v₁, and similarly id_{v₂} for v₂. As composition is given by concatenation, we have, for example, id_{v₁} ; f₁ = f₁, id_{v₂} ; id_{v₂} = id_{v₂}, and so on.

From now on, we may elide the difference between a graph and the corresponding free category Free(G), at least when the one we mean is clear enough from context.

**Exercise 3.9.** For Free(G) to really be a category, we must check that this data we specified obeys the unitality and associativity properties. Check that these are obeyed for any graph G.

---

**Exercise 3.10.** The free category on the graph shown here:

[Figure: A graph with three vertices v₁, v₂, v₃, and two arrows f₁ from v₁ to v₂ and f₂ from v₂ to v₃.]

has three objects and six morphisms: the three vertices and six paths in the graph.

Create six names, one for each of the six morphisms in 3. Write down a six-by-six table, label the rows and columns by the six names you chose.

1. Fill out the table by writing the name of the composite in each cell, when there is a composite.
2. Where are the identities?

**Exercise 3.12.** Let’s make some definitions, based on the pattern above:

1. What is the category 1? That is, what are its objects and morphisms?
2. What is the category 0?
3. What is the formula for the number of morphisms in n for arbitrary n ∈ ℕ?

**Example 3.13 (Natural numbers as a free category).** Consider the following graph:

[Figure: A single vertex z with a loop s.]

It has only one vertex and one arrow, but it has infinitely many paths. Indeed, it has a unique path of length n for every natural number n ∈ ℕ. That is, Path = {z, s, (s ; s), (s ; s ; s), ...}, where we write z for the length 0 path on z; it represents the morphism id_z. There is a one-to-one correspondence between Path and the natural numbers, ℕ = {0, 1, 2, 3, ...}.

This is an example of a category with one object. A category with one object is called a *monoid*, a notion we first discussed in Example 2.6. There we said that a monoid is a tuple (M, *, e) where* : M × M → M is a function and e ∈ M is an element, and m *1 = 1* m and (m *n)* p = m *(n* p).

The two notions may superficially look different, but it is easy to describe the connection. Given a category 𝒞 with one object, say •, let M := 𝒞(•,•), let e = id_•, and let *: 𝒞(•,•) × 𝒞(•,•) → 𝒞(•,•) be the composition operation* = ;. The associativity and unitality requirements for the monoid will be satisfied because 𝒞 is a category.

**Exercise 3.15.** In Example 3.13 we identified the paths of the loop graph (3.14) with numbers n ∈ ℕ. Paths can be concatenated. Given numbers m, n ∈ ℕ, what number corresponds to the concatenation of their associated paths?

---

#### 3.2.2 Presenting categories via path equations

So for any graph G, there is a free category on G. But we don’t have to stop there: we can add equations between paths in the graph, and still get a category. We are only allowed to equate two paths p and q when they are *parallel*, meaning they have the same source vertex and the same target vertex.

A finite graph with path equations is called a *finite presentation* for a category, and the category that results is known as a *finitely-presented category*. Here are two examples:

[Figure: Two diagrams. Left: Free_square, a square with vertices A, B, C, D and arrows f: A→B, g: C→A, h: B→D, i: C→D, with no equations. Right: Comm_square, same as left but with the equation f ; h = g ; i.]

Both of these are presentations of categories: in the left-hand one, there are no equations so it presents a free category, as discussed in Section 3.2.1. The free square category has ten morphisms, because every path is a unique morphism.

**Exercise 3.16.**

1. Write down the ten paths in the free square category above.
2. Name two different paths that are parallel.
3. Name two different paths that are not parallel.

On the other hand, the category presented on the right has only nine morphisms, because f ; h and g ; i are made equal. This category is called the “commutative square.” Its morphisms are
{A, B, C, D, f, g, h, i, f ; h = g ; i}
One might say “the missing one is g ; i,” but that is not quite right: g ; i is there too, because it is equal to f ; h. As usual, A denotes id_A, etc.

**Exercise 3.17.** Write down all the morphisms in the category presented by the following diagram:

[Figure: A commutative square with vertices A, B, C, D and arrows f, g, h, i, with the equation f ; h = g ; i.]

**Example 3.18.** We should also be aware that enforcing an equation between two morphisms often implies additional equations. Here are two more examples of presentations, in which this phenomenon occurs:

[Figure: Two diagrams. Left: C, a loop s on z with the equation s ; s = z. Right: D, a loop s on z with the equation s ; s ; s ; s = s ; s.]

In C we have the equation s ; s = z. But this implies s ; s ; s = s ; z = s! And similarly we have s ; s ; s ; s ; s = z ; s = z. The set of morphisms in C is in fact merely {z, s}, with composition described by s ; s = z ; s = z, and z ; s = s ; z = s. In group theory, one would speak of a group called ℤ/2ℤ.

**Exercise 3.19.** Write down all the morphisms in the category D from Example 3.18.

---

#### 3.2.3 Preorders and free categories: two ends of a spectrum

Now that we have used graphs to depict preorders in Chapter 1 and categories above, one may want to know the relationship between these two uses. The main idea we want to explain now is that

> “A preorder is a category where every two parallel arrows are the same.”

Thus any preorder can be regarded as a category, and any category can be somehow “crushed down” into a preorder. Let’s discuss these ideas.

**Preorders as categories.** Suppose (P, ≤) is a preorder. It specifies a category ℘ as follows. The objects of ℘ are precisely the elements of P; that is, Ob(℘) = P. As for morphisms, ℘ has exactly one morphism p → q if p ≤ q and no morphisms p → q if p ≰ q. The fact that ≤ is reflexive ensures that every object has an identity, and the fact that ≤ is transitive ensures that morphisms can be composed. We call ℘ the *category corresponding to the preorder* (P, ≤).

In fact, a Hasse diagram for a preorder can be thought of as a presentation of a category where, for all vertices p and q, every two paths from p → q are declared equal. For example, in Eq. (1.5) we saw a Hasse diagram that was like the graph on the left:

[Figure: Three diagrams. Left: Hasse diagram with four vertices and arrows, no equations. Middle: Free category presentation with three morphisms, no equations. Right: Hasse diagram with equations a ; d = b ; e = c ; f.]

The Hasse diagram (left) might look the most like the free category presentation (middle) which has no equations, but that is not correct. The free category has three morphisms (paths) from bottom object to top object, whereas preorders are categories with at most one morphism between two given objects. Instead, the diagram on the right, with these paths from bottom to top made equal, is the correct presentation for the preorder on the left.

**Exercise 3.21.** What equations would you need to add to the graphs below in order to present the associated preorders?

[Figure: Four graphs G₁, G₂, G₃, G₄, each with different arrangements of arrows and vertices.]

**The preorder reflection of a category.** Given any category 𝒞, one can obtain a preorder (C, ≤) from it by destroying the distinction between any two parallel morphisms. That is, let C := Ob(𝒞), and put c₁ ≤ c₂ iff 𝒞(c₁, c₂) ≠ ∅. If there is one, or two, or fifty, or infinitely many morphisms c₁ → c₂ in 𝒞, the preorder reflection does not see the difference. But it does see the difference between some morphisms and no morphisms.

**Exercise 3.22.** What is the preorder reflection of the category ℕ from Example 3.13?

**Remark 3.23 (Ends of a spectrum).** The main point of this subsection is that both preorders and free categories are specified by a graph without path equations, but they denote opposite ends of a spectrum. In both cases, the vertices of the graph become the objects of a category and the paths become morphisms. But in the case of free categories, there are no equations so each path becomes a different morphism. In the case of preorders, all parallel paths become the same morphism. Every category presentation, i.e. graph with some equations, lies somewhere in between the free category (no equations) and its preorder reflection (all possible equations).

---

#### 3.2.4 Important categories in mathematics

We have been talking about category presentations, but there are categories that are best understood directly, not by way of presentations. Recall the definition of category from Definition 3.6. The most important category in mathematics is the category of sets.

**Definition 3.24. The category of sets**, denoted Set, is defined as follows.

1. Ob(Set) is the collection of all sets.
2. If S and T are sets, then Set(S, T) = {f : S → T | f is a function}.
3. For each set S, the identity morphism is the function id_S : S → S given by id_S(s) := s for each s ∈ S.
4. Given f : S → T and g : T → U, their composite is the function f ; g : S → U, given by (f ; g)(s) := g(f(s)).

These definitions satisfy the unitality and associativity conditions, so Set is indeed a category.

Closely related is the category FinSet. This is the category whose objects are finite sets and whose morphisms are functions between them.

**Exercise 3.25.** Let 2 = {1, 2} and 3 = {1, 2, 3}. These are objects in the category Set discussed in Definition 3.24. Write down all the elements of the set Set(2, 3); there should be nine.

**Remark 3.26.** You may have wondered what categories have to do with V-categories (Definition 2.46); perhaps you think the definitions hardly look alike. Despite the term ‘enriched category’, V-categories are not categories with extra structure. While some sorts of V-categories, such as Bool-categories, i.e. preorders, can naturally be seen as categories, other sorts, such as Cost-categories, cannot.

The reason for the importance of Set is that, if we generalize the definition of enriched category (Definition 2.46), we find that categories in the sense of Definition 3.6 are exactly Set-categories—so categories are V-categories for a very special choice of V. We’ll come back to this in Section 4.4.4. For now, we simply remark that just like a deep understanding of the category Cost—for example, knowing that it is a quantale—yields insight into Lawvere metric spaces, so the study of Set yields insights into categories.

There are many other categories that mathematicians care about:

- **Top**: the category of topological spaces (neighborhood)
- **Grph**: the category of graphs (connection)
- **Meas**: the category of measure spaces (amount)
- **Mon**: the category of monoids (action)
- **Grp**: the category of groups (reversible action, symmetry)
- **Cat**: the category of categories (action in context, structure)

But in fact, this does not at all do justice to the diversity of categories mathematicians think about. They work with whatever category they find fits their purpose at the time, like ‘the category of connected Riemannian manifolds of dimension at most 4’.

Here is one more source of examples: take any category you already have and reverse all its morphisms; the result is again a category.

**Example 3.27.** Let 𝒞 be a category. Its *opposite*, denoted 𝒞^op, is the category with the same objects, Ob(𝒞^op) := Ob(𝒞), and for any two objects c, d ∈ Ob(𝒞), one has 𝒞^op(c, d) := 𝒞(d, c). Identities and composition are as in 𝒞.

---

#### 3.2.5 Isomorphisms in a category

The previous sections have all been about examples of categories: free categories, presented categories, and important categories in math. In this section, we briefly switch gears and talk about an important concept in category theory, namely the concept of isomorphism.

In a category, there is often the idea that two objects are interchangeable. For example, in the category Set, one can exchange the set {■, □} for the set {0, 1} and everything will be the same, other than the names for the elements. Similarly, if one has a preorder with elements a, b, such that a ≤ b and b ≤ a, i.e. a ≅ b, then a and b are essentially the same. How so? Well they act the same, in that for any other object c, we know that c ≤ a iff c ≤ b, and c ≥ a iff c ≥ b. The notion of isomorphism formalizes this notion of interchangeability.

**Definition 3.28.** An *isomorphism* is a morphism f : A → B such that there exists a morphism g : B → A satisfying f ; g = id_A and g ; f = id_B. In this case we call f and g *inverses*, and we often write g = f^{-1}, or equivalently f = g^{-1}. We also say that A and B are *isomorphic objects*.

**Example 3.29.** The set A := {a, b, c} and the set 3 = {1, 2, 3} are isomorphic; that is, there exists an isomorphism f : A → 3 given by f(a) = 2, f(b) = 1, f(c) = 3. The isomorphisms in the category Set are the bijections.

Recall that the cardinality of a finite set is the number of elements in it. This can be understood in terms of isomorphisms in FinSet. Namely, for any finite set A ∈ FinSet, its cardinality is the number n ∈ ℕ such that there exists an isomorphism A ≅ n. Georg Cantor defined the cardinality of any set X to be its isomorphism class, meaning the equivalence class consisting of all sets that are isomorphic to X.

**Exercise 3.30.**

1. What is the inverse f^{-1} : 3 → A of the function f given in Example 3.29?
2. How many distinct isomorphisms are there A → 3?

**Exercise 3.31.** Show that in any given category 𝒞, for any given object c ∈ 𝒞, the identity id_c is an isomorphism.

**Exercise 3.32.** Recall Examples 3.13 and 3.18. A monoid in which every morphism is an isomorphism is known as a *group*.

1. Is the monoid in Example 3.13 a group?
2. What about the monoid 𝒞 in Example 3.18?

**Exercise 3.33.** Let G be a graph, and let Free(G) be the corresponding free category. Somebody tells you that the only isomorphisms in Free(G) are the identity morphisms. Is that person correct? Why or why not?

**Example 3.34.** In this example, we will see that it is possible for g and f to be almost—but not quite—inverses, in a certain sense.

Consider the functions f : 2 → 3 and g : 3 → 2 drawn below:

[Figure: Two diagrams showing functions between sets 2 and 3, with arrows indicating mappings.]

Then the reader should be able to instantly check that f ; g = id_2 but g ; f ≠ id_3. Thus f and g are not inverses and hence not isomorphisms. We won’t need this terminology, but category theorists would say that f and g form a *retraction*.

---
---

### 3.3 Functors, natural transformations, and databases

In Section 3.1 we showed some database schemas: graphs with path equations. Then in Section 3.2.2 we said that graphs with path equations correspond to finitely-presented categories. Now we want to explain what the data in a database is, as a way to introduce functors. To do so, we begin by noticing that sets and functions—the objects and morphisms in the category Set—can be captured by particularly simple databases.

#### 3.3.1 Sets and functions as databases

The first observation is that any set can be understood as a table with only one column: the ID column.

| Planet of Sol | Prime number | Flying pig |
|---------------|-------------|------------|
| Mercury       | 2           |            |
| Venus         | 3           |            |
| Earth         | 5           |            |
| Mars          | 7           |            |
| Jupiter       | 11          |            |
| Saturn        | 13          |            |
| Uranus        | 17          |            |
| Neptune       | ...         |            |

Rather than put the elements of the set between braces, e.g. {2, 3, 5, 7, 11, ...}, we write them down as rows in a table.

In databases, single-column tables are often called controlled vocabularies, or master data. Now to be honest, we can only write out every single entry in a table when its set of rows is finite. A database practitioner might find the idea of our prime number table a bit unrealistic. But we’re mathematicians, so since the idea makes perfect sense abstractly, we will continue to think of sets as one-column tables.

The above databases have schemas consisting of just one vertex:

[Figure: Three diagrams, each with a single node labeled "Planet of Sol", "Prime number", or "Flying pig".]

Obviously, there’s really not much difference between these schemas, other than the label of the unique vertex. So we could say “sets are databases whose schema consists of a single vertex.” Let’s move on to functions.

A function f : A → B can almost be depicted as a two-column table

| Beatle | Played        |
|--------|--------------|
| George | Lead guitar  |
| John   | Rhythm guitar|
| Paul   | Bass guitar  |
| Ringo  | Drums        |

except it is unclear whether the elements of the right-hand column exhaust all of B. What if there are rock-and-roll instruments out there that none of the Beatles played? So a function f : A → B requires two tables, one for A and its f column, and one for B:

| Beatle | Played        | Rock-and-roll instrument |
|--------|--------------|-------------------------|
| George | Lead guitar  | Bass guitar             |
| John   | Rhythm guitar| Drums                   |
| Paul   | Bass guitar  | Keyboard                |
| Ringo  | Drums        | Lead guitar             |
|        |              | Rhythm guitar           |

Thus the database schema for any function is just a labeled version of 2:

[Figure: A diagram with two nodes, "Beatle" and "Rock-and-roll instrument", and an arrow labeled "Played" from Beatle to Rock-and-roll instrument.]

The lesson is that an instance of a database takes a presentation of a category, and turns every vertex into a set, and every arrow into a function. As such, it describes a map from the presented category to the category Set. In Section 2.4.2 we saw that maps of V-categories are known as V-functors. Similarly, we call maps of plain old categories, functors.

---

#### 3.3.2 Functors

A functor is a mapping between categories. It sends objects to objects and morphisms to morphisms, all while preserving identities and composition. Here is the formal definition.

**Definition 3.35.** Let 𝒞 and 𝒟 be categories. To specify a *functor* from 𝒞 to 𝒟, denoted F : 𝒞 → 𝒟,

- (i) for every object c ∈ Ob(𝒞), one specifies an object F(c) ∈ Ob(𝒟);
- (ii) for every morphism f : c₁ → c₂ in 𝒞, one specifies a morphism F(f) : F(c₁) → F(c₂) in 𝒟.

The above constituents must satisfy two properties:
(a) for every object c ∈ Ob(𝒞), we have F(id_c) = id_{F(c)}.
(b) for every three objects c₁, c₂, c₃ ∈ Ob(𝒞) and two morphisms f ∈ 𝒞(c₁, c₂), g ∈ 𝒞(c₂, c₃), the equation F(f ; g) = F(f) ; F(g) holds in 𝒟.

**Example 3.36.** For example, here we draw three functors F : 2 → 3:

[Figure: Three diagrams, each showing a functor from the free category 2 (with two objects and one arrow) to the free category 3 (with three objects and two arrows). The diagrams show how the functor maps objects and arrows.]

In each case, the dotted arrows show what the functor F does to the vertices in 2; once that information is specified, it turns out—in this special case—that what F does to the three paths in 2 is completely determined. In the left-hand diagram, F sends every path to the trivial path, i.e. the identity on n₀. In the middle diagram, F(m₀) = n₀, F(f₁) = g₁, and F(m₁) = n₁. In the right-hand diagram, F(m₀) = n₀, F(m₁) = n₂, and F(f₁) = g₁ ; g₂.

**Exercise 3.37.** Above we wrote down three functors 2 → 3. Find and write down all the remaining functors 2 → 3.

**Example 3.38.** Recall the categories presented by Free_square and Comm_square in Section 3.2.2. Here they are again, with ' added to the labels in Free_square to help distinguish them:

[Figure: Two diagrams. Left: Free_square with vertices A', B', C', D' and arrows f', g', h', i'. Right: Comm_square with vertices A, B, C, D and arrows f, g, h, i, with the equation f ; h = g ; i.]

There are lots of functors from the free square category (let’s call it 𝒯) to the commutative square category (let’s call it 𝒞).

However, there is exactly one functor F : 𝒯 → 𝒞 that sends A' to A, B' to B, C' to C, and D' to D. That is, once we have made this decision about how F acts on objects, each of the ten paths in 𝒯 is forced to go to a certain path in 𝒞: the one with the right source and target.

**Exercise 3.39.** Say where each of the ten morphisms in 𝒯 is sent under the functor F from Example 3.38.

All of our example functors so far have been completely determined by what they do on objects, but this is usually not the case.

**Exercise 3.40.** Consider the free categories 𝒞 = (• → •) and 𝒟 = (• ⇒ •). Give two functors F, G : 𝒞 → 𝒟 that act the same on objects but differently on morphisms.

**Example 3.41.** There are also lots of functors from the commutative square category 𝒞 to the free square category 𝒯, but none that sends A to A', B to B', C to C', and D to D'. The reason is that if F were such a functor, then since f ; h = g ; i in 𝒞, we would have F(f ; h) = F(g ; i), but then the rules of functors would let us reason as follows:

F(f' ; h') = F(f') ; F(h') = F(g') ; F(i') = F(g' ; i'),  
but f' ; h' ≠ g' ; i' in 𝒯 because it is a free category (there are “no equations”): every two paths are considered different morphisms. Thus our proposed F is not a functor.

**Example 3.42 (Functors between preorders are monotone maps).** Recall from Section 3.2.3 that preorders are categories with at most one morphism between any two objects. A functor between preorders is exactly a monotone map.

For example, consider the preorder (ℕ, ≤) considered as a category ℕ with objects Ob(ℕ) = ℕ and a unique morphism m → n iff m ≤ n. A functor F : ℕ → ℕ sends each object n ∈ ℕ to an object F(n) ∈ ℕ. It must send morphisms in ℕ to morphisms in ℕ. This means if there is a morphism m → n then there had better be a morphism F(m) → F(n). In other words, if m ≤ n, then we had better have F(m) ≤ F(n). Thus a functor F : ℕ → ℕ and a monotone map ℕ → ℕ are the same thing.

**Exercise 3.43 (The category of categories).** Back in the primordial ooze, there is a category Cat in which the objects are themselves categories. Your task here is to construct this category.

1. Given any category 𝒞, show that there exists a functor id_𝒞 : 𝒞 → 𝒞, known as the identity functor on 𝒞, that maps each object to itself and each morphism to itself.
2. Show that given F : 𝒞 → 𝒟 and G : 𝒟 → 𝒞, we can define a new functor (F ; G): 𝒞 → 𝒞 just by composing functions.
3. Show that there is a category, call it Cat, where the objects are categories, morphisms are functors, and identities and composition are given as above.

---

#### 3.3.3 Database instances as Set-valued functors

Let 𝒞 be a category, and recall the category Set from Definition 3.24. A functor F : 𝒞 → Set is a *set-valued functor* on 𝒞. Much of database theory (not to mention much of database practice) can be cast in this light.

Indeed, already we saw in Remark 3.20 that any database schema can be regarded as (presenting) a category 𝒞. The next thing to notice is that the data itself—any instance of the database—is given by a set-valued functor I : 𝒞 → Set. The only additional detail is that for any white node, such as c = string ○, we want to force I to map to the set of strings. We suppress this detail in the following definition.

**Definition 3.44.** Let 𝒞 be a schema, i.e. a finitely-presented category. A 𝒞-instance is a functor I : 𝒞 → Set.

**Exercise 3.45.** Let 1 denote the category with one object, called 1, one identity morphism id_1, and no other morphisms. For any functor F : 1 → Set one can extract a set F(1). Show that for any set S, there is a functor F_S : 1 → Set such that F_S(1) = S.

The above exercise reaffirms that the set of planets, the set of prime numbers, and the set of flying pigs are all set-valued functors—instances—on the schema 1. Similarly, set-valued functors on the category 2 are functions. All our examples so far are for the situation where the schema is a free category (no equations). Let’s try an example of a category that is not free.

**Example 3.46.** Consider the following category:

[Figure: A category with one object z and one arrow s, with the equation s ; s = s.]

What is a set-valued functor F : 𝒞 → Set? It will consist of a set Z = F(z) and a function S := F(s) : Z → Z, subject to the requirement that S ; S = S. Here are some examples:

- Z is the set of US citizens, and S sends each citizen to her or his president. The president’s president is her- or him-self.
- Z = ℕ is the set of natural numbers and S sends each number to 0. In particular, 0 goes to itself.
- Z is the set of all well-formed arithmetic expressions, such as 13 + (2 *4) or –5, that one can write using integers and the symbols +, –,*, (, ). The function S evaluates the expression to return an integer, which is itself a well-formed expression. The evaluation of an integer is itself.
- Z = ℕ_{≥2}, and S sends n to its smallest prime factor. The smallest prime factor of a prime is itself.

| ℕ_{≥2} | smallest prime factor |
|--------|----------------------|
| 2      | 2                    |
| 3      | 3                    |
| 4      | 2                    |
| ...    | ...                  |
| 49     | 7                    |
| 50     | 2                    |
| 51     | 3                    |
| ...    | ...                  |

**Exercise 3.48.** Above, we thought of the sort of data that would make sense for the schema (3.47). Give an example of the sort of data that would make sense for the following schemas:

1. [Figure: A category with one object z and one arrow s, with the equation s ; s = z.]
2. [Figure: A category with three objects a, b, c and arrows f: a→b, g: b→c, h: a→c, with the equation f ; g = f ; h.]

The main idea is this: a database schema is a category, and an instance on that schema—the data itself—is a set-valued functor. All the constraints, or business rules, are ensured by the rules of functors, namely that functors preserve composition.

---
---

#### 3.3.4 Natural transformations

If 𝒞 is a schema—i.e. a finitely-presented category—then there are many database instances on it, which we can organize into a category. But this is part of a larger story, namely that of natural transformations. An abstract picture to have in mind is this:

[Figure: A diagram showing two functors F, G: 𝒞 → 𝒟 and a natural transformation α: F ⇒ G, depicted as a double arrow between F and G.]

**Definition 3.49.** Let 𝒞 and 𝒟 be categories, and let F, G : 𝒞 → 𝒟 be functors. To specify a *natural transformation* α : F ⇒ G,

- (i) for each object c ∈ 𝒞, one specifies a morphism α_c : F(c) → G(c) in 𝒟, called the *c-component* of α.

These components must satisfy the following, called the *naturality condition*:

- (a) for every morphism f : c → d in 𝒞, the following equation must hold:
  F(f) ; α_d = α_c ; G(f).

A natural transformation α : F ⇒ G is called a *natural isomorphism* if each component α_c is an isomorphism in 𝒟.

The naturality condition can also be written as a so-called *commutative diagram*. A diagram in a category is drawn as a graph whose vertices and arrows are labeled by objects and morphisms in the category. For example, here is a diagram that’s relevant to the naturality condition in Definition 3.49:

[Figure: A commutative square diagram with F(c) → G(c) and F(d) → G(d) vertically, and F(f): F(c) → F(d), G(f): G(c) → G(d) horizontally, with the square commuting.]

**Definition 3.51.** A *diagram* D in 𝒞 is a functor D : 𝒥 → 𝒞 from any category 𝒥, called the *indexing category* of the diagram D. We say that D *commutes* if D(f) = D(f') holds for every parallel pair of morphisms f, f': a → b in 𝒥.

In terms of Eq. (3.50), the only case of two parallel morphisms is that of F(c) ⇒ G(d), so to say that the diagram commutes is to say that F(f) ; α_d = α_c ; G(f). This is exactly the naturality condition from Definition 3.49.

---

**Example 3.52.** A representative picture is as follows:

[Figure: A diagram with two objects 1 and 2 in 𝒞, two functors F, G: 𝒞 → 𝒟, and two objects v, w in 𝒟, with arrows showing the images of objects and morphisms under F and G, and dashed arrows for the components of the natural transformation α.]

We have depicted, in blue and red respectively, two functors F, G : 𝒞 → 𝒟. A natural transformation α : F ⇒ G is given by choosing components α₁ : v → x and α₂ : w → y. We have highlighted the only choice for each in green; namely, α₁ = c and α₂ = g.

The key point is that the functors F and G are ways of viewing the category 𝒞 as lying inside the category 𝒟. The natural transformation α, then, is a way of relating these two views using the morphisms in 𝒟. Does this help you to see and appreciate the notation 𝒞 \xRightarrow{α} 𝒟?

**Example 3.53.** We said in Exercise 3.45 that a functor 1 → Set can be identified with a set. So suppose A and B are sets considered as functors A, B : 1 → Set. A natural transformation between these functors is just a function between the sets.

**Definition 3.54.** Let 𝒞 and 𝒟 be categories. We denote by 𝒟^𝒞 the category whose objects are functors F : 𝒞 → 𝒟 and whose morphisms 𝒟^𝒞(F, G) are the natural transformations α : F ⇒ G. This category 𝒟^𝒞 is called the *functor category*, or the *category of functors from 𝒞 to 𝒟*.

**Exercise 3.55.** Let’s look more deeply at how 𝒟^𝒞 is a category.

1. Figure out how to compose natural transformations. (Hint: an expert tells you “for each object c ∈ 𝒞, compose the c-components.”)
2. Propose an identity natural transformation on any object F ∈ 𝒟^𝒞, and check that it is unital (i.e. that it obeys condition (a) of Definition 3.6).

**Example 3.56.** In our new language, Example 3.53 says that Set^1 is equivalent to Set.

**Example 3.57.** Let ℕ denote the category associated to the preorder (ℕ, ≤), and recall from Example 3.42 that we can identify a functor F : ℕ → ℕ with a non-decreasing sequence (F₀, F₁, F₂, ...) of natural numbers, i.e. F₀ ≤ F₁ ≤ F₂ ≤ ... . If G is another functor, considered as a non-decreasing sequence, then what is a natural transformation α : F ⇒ G?

Since there is at most one morphism between two objects in a preorder, each component α_n : F_n → G_n has no data, it just tells us a fact: that F_n ≤ G_n. And the naturality condition is vacuous: every square in a preorder commutes. So a natural transformation between F and G exists iff F_n ≤ G_n for each n, and any two natural transformations F ⇒ G are the same. In other words, the category ℕ^ℕ is itself a preorder; namely the preorder of monotone maps ℕ → ℕ.

**Exercise 3.58.** Let 𝒞 be an arbitrary category and let ℘ be a preorder, thought of as a category. Consider the following statements:

1. For any two functors F, G : 𝒞 → ℘, there is at most one natural transformation F ⇒ G.
2. For any two functors F, G : ℘ → 𝒞, there is at most one natural transformation F ⇒ G.

For each, if it is true, say why; if it is false, give a counterexample.

**Remark 3.59.** Recall that in Remark 2.71 we said the category of preorders is equivalent to the category of Bool-categories. We can now state the precise meaning of this sentence. First, there exists a category PrO in which the objects are preorders and the morphisms are monotone maps. Second, there exists a category Bool-Cat in which the objects are Bool-categories and the morphisms are Bool-functors. We call these two categories equivalent because there exist functors F : PrO → Bool-Cat and G : Bool-Cat → PrO such that there exist natural isomorphisms F ; G ≅ id_{PrO} and G ; F ≅ id_{Bool-Cat} in the sense of Definition 3.49.

---

#### 3.3.5 The category of instances on a schema

**Definition 3.60.** Suppose that 𝒞 is a database schema and I, J : 𝒞 → Set are database instances. An *instance homomorphism* between them is a natural transformation α : I ⇒ J. Write 𝒞-Inst := Set^𝒞 to denote the functor category as defined in Definition 3.54.

We saw in Example 3.53 that 1-Inst is equivalent to the category Set. In this subsection, we will show that there is a schema whose instances are graphs and whose instance homomorphisms are graph homomorphisms.

**Extended example: the category of graphs as a functor category.** You may find yourself back in the primordial ooze (first discussed in Section 2.3.2), because while previously we have been using graphs to present categories, now we obtain graphs themselves as database instances on a specific schema (which is itself a graph):

[Figure: A schema Gr with two nodes, Arrow and Vertex, and two arrows: source and target from Arrow to Vertex.]

Here’s an example Gr-instance, i.e. set-valued functor I : Gr → Set, in table form:

| Arrow | source | target | Vertex |
|-------|--------|--------|--------|
| a     | 1      | 2      | 1      |
| b     | 1      | 3      | 2      |
| c     | 1      | 3      | 3      |
| d     | 2      | 2      | 4      |
| e     | 2      | 3      |        |

Here I(Arrow) = {a, b, c, d, e}, and I(Vertex) = {1, 2, 3, 4}. One can draw the instance I as a graph:

[Figure: A graph with vertices 1, 2, 3, 4 and arrows a, b, c, d, e connecting them according to the table above.]

Every row in the Vertex table is drawn as a vertex, and every row in the Arrow table is drawn as an arrow, connecting its specified source and target. Every possible graph can be written as a database instance on the schema Gr, and every possible Gr-instance can be represented as a graph.

**Exercise 3.62.** In Eq. (3.2), a graph is shown (forget the distinction between white and black nodes). Write down the corresponding Gr-instance, as in Eq. (3.61). (Do not be concerned that you are in the primordial ooze.)

Thus the objects in the category Gr-Inst are graphs. The morphisms in Gr-Inst are called *graph homomorphisms*. Let’s unwind this. Suppose that G, H : Gr → Set are functors (i.e. Gr-instances); that is, they are objects G, H ∈ Gr-Inst. A morphism G → H is a natural transformation α : G ⇒ H between them; what does that entail?

By Definition 3.49, since Gr has two objects, α consists of two components,

- α_{Vertex} : G(Vertex) → H(Vertex)
- α_{Arrow} : G(Arrow) → H(Arrow)

both of which are morphisms in Set. In other words, α consists of a function from vertices of G to vertices of H and a function from arrows of G to arrows of H. For these functions to constitute a graph homomorphism, they must “respect source and target” in the precise sense that the naturality condition, Eq. (3.50) holds. That is, for every morphism in Gr, namely source and target, the following diagrams must commute:

[Figure: Two commutative diagrams, one for source and one for target, showing that α_{Arrow} composed with H(source) equals G(source) composed with α_{Vertex}, and similarly for target.]

These may look complicated, but they say exactly what we want. We want the functions α_{Vertex} and α_{Arrow} to respect source and targets in G and H. The left diagram says “start with an arrow in G. You can either apply α to the arrow and then take its source in H, or you can take its source in G and then apply α to that vertex; either way you get the same answer.” The right-hand diagram says the same thing about targets.

**Example 3.63.** Consider the graphs G and H shown below

[Figure: Two graphs. G: vertices 1, 2, 3 with arrows a: 1→2, b: 2→3. H: vertices 4, 5 with arrows c: 4→5, d: 4→5, e: 5→5.]

Here they are, written as database instances—i.e. set-valued functors—on Gr:

| Arrow | source | target | Vertex |
|-------|--------|--------|--------|
| a     | 1      | 2      | 1      |
| b     | 2      | 3      | 2      |
|       |        |        | 3      |

| Arrow | source | target | Vertex |
|-------|--------|--------|--------|
| c     | 4      | 5      | 4      |
| d     | 4      | 5      | 5      |
| e     | 5      | 5      |        |

The top row is G and the bottom row is H. They are offset so you can more easily complete the following exercise.

**Exercise 3.64.** We claim that—with G, H as in Example 3.63—there is exactly one graph homomorphism α : G → H such that α_{Arrow}(a) = d.

1. What is the other value of α_{Arrow}, and what are the three values of α_{Vertex}?
2. In your own copy of the tables of Example 3.63, draw α_{Arrow} as two lines connecting the cells in the ID column of G(Arrow) to those in the ID column of H(Arrow). Similarly, draw α_{Vertex} as connecting lines.
3. Check the source column and target column and make sure that the matches are natural, i.e. that “alpha-then-source equals source-then-alpha” and similarly for “target.”

---

### 3.4 Adjunctions and data migration

We have talked about how set-valued functors on a schema can be understood as filling that schema with data. But there are also functors between schemas. When the two sorts of functors are composed, data is migrated. This is the simplest form of data migration; more complex ways to migrate data come from using adjoints. All of the above is the subject of this section.

#### 3.4.1 Pulling back data along a functor

To begin, we will migrate data between the graph-indexing schema Gr and the loop schema, which we call DDS, shown below

[Figure: Two schemas. Gr: nodes Arrow and Vertex, arrows source and target from Arrow to Vertex. DDS: node State, arrow next from State to State.]

We begin by writing down a sample instance I : DDS → Set on this schema:

| State | next |
|-------|------|
| 1     | 4    |
| 2     | 4    |
| 3     | 5    |
| 4     | 5    |
| 5     | 5    |
| 6     | 7    |
| 7     | 6    |

We call the schema DDS to stand for discrete dynamical system. Indeed, we may think of the data in the DDS-instance of Eq. (3.65) as listing the states and movements of a deterministic machine: at every point in time the machine is in one of the listed states, and given the machine in one of the states, in the next instant it moves to a uniquely determined next state.

Our goal is to migrate the data in Eq. (3.65) to data on Gr; this will give us the data of a graph and so allow us to visualise our machine.

We will use a functor connecting these schemas in order to move data between them. The reader can create any functor she likes, but we will use a specific functor F : Gr → DDS to migrate data in a way that makes sense to us, the authors. Here we draw F, using colors to hopefully aid understanding:

[Figure: A diagram showing the functor F from Gr to DDS, sending both Arrow and Vertex to State, and sending source to the identity morphism on State, and target to the morphism next.]

The functor F sends both objects of Gr to the ‘State’ object of DDS (as it must). On morphisms, it sends the ‘source’ morphism to the identity morphism on ‘State’, and the ‘target’ morphism to the morphism ‘next’.

A sample database instance on DDS was given in Eq. (3.65); recall this is a functor I : DDS → Set. So now we have two functors as follows:

Gr \xrightarrow{F} DDS \xrightarrow{I} Set.

Objects in Gr are sent by F to objects in DDS, which are sent by I to objects in Set, which are sets. Morphisms in Gr are sent by F to morphisms in DDS, which are sent by I to morphisms in Set, which are functions. This defines a composite functor F ; I : Gr → Set. Both F and I respect identities and composition, so F ; I does too. Thus we have obtained an instance on Gr, i.e. we have converted our discrete dynamical system from Eq. (3.65) into a graph! What graph is it?

For an instance on Gr, we need to fill an Arrow table and a Vertex table. Both of these are sent by F to State, so let’s fill both with the rows of State in Eq. (3.65). Similarly, since F sends ‘source’ to the identity and sends ‘target’ to ‘next’, we obtain the following tables:

| Arrow | source | target | Vertex |
|-------|--------|--------|--------|
| 1     | 1      | 4      | 1      |
| 2     | 2      | 4      | 2      |
| 3     | 3      | 5      | 3      |
| 4     | 4      | 5      | 4      |
| 5     | 5      | 5      | 5      |
| 6     | 6      | 7      | 6      |
| 7     | 7      | 6      | 7      |

Now that we have a graph, we can draw it.

[Figure: A graph with vertices 1–7 and arrows labeled 1–7, each arrow labeled by its source and target as in the table above.]

Each arrow is labeled by its source vertex, as if to say, “What I do next is determined by what I am now.”

**Exercise 3.67.** Consider the functor G : Gr → DDS given by sending ‘source’ to ‘next’ and sending ‘target’ to the identity on ‘State’. Migrate the same data, called I in Eq. (3.65), using the functor G. Write down the tables and draw the corresponding graph.

We refer to the above procedure—basically just composing functors as in Eq. (3.66)—as “pulling back data along a functor.” We just now pulled back data I along functor F.

---
---

**Definition 3.68.** Let 𝒞 and 𝒟 be categories and let F : 𝒞 → 𝒟 be a functor. For any set-valued functor I : 𝒟 → Set, we refer to the composite functor F ; I : 𝒞 → Set as the *pullback of I along F*.

Given a natural transformation α : I ⇒ J, there is a natural transformation α_F : F ; I ⇒ F ; J, whose component (α_F)_c : (F ; I)(c) → (F ; J)(c) for any c ∈ Ob(𝒞) is given by (α_F)*c := α*{F(c)}.

This uses the data of F to define a functor Δ_F : 𝒟-Inst → 𝒞-Inst.

[Figure: A diagram showing the functors 𝒞 \xrightarrow{F} 𝒟 \xrightarrow{I} Set, and the induced functor Δ_F : 𝒟-Inst → 𝒞-Inst.]

Note that the term pullback is also used for a certain sort of limit, for more details see Remark 3.100.

---

#### 3.4.2 Adjunctions

In Section 1.4 we discussed Galois connections, which are adjunctions between preorders. Now that we’ve defined categories and functors, we can discuss adjunctions in general. The relevance to databases is that the data migration functor Δ from Definition 3.68 always has two adjoints of its own: a left adjoint which we denote Σ and a right adjoint which we denote Π.

Recall that an adjunction between preorders P and Q is a pair of monotone maps f : P → Q and g : Q → P that are almost inverses: we have

f(p) ≤ q if and only if p ≤ g(q).

Recall from Section 3.2.3 that in a preorder P, a hom-set P(a, b) has one element when a ≤ b, and no elements otherwise. We can thus rephrase Eq. (3.69) as an isomorphism of sets Q(f(p), q) ≅ P(p, g(q)): either both are one-element sets or both are 0-element sets. This suggests how to define adjunctions in the general case.

**Definition 3.70.** Let 𝒞 and 𝒟 be categories, and L : 𝒞 → 𝒟 and R : 𝒟 → 𝒞 be functors. We say that L is *left adjoint* to R (and that R is *right adjoint* to L) if, for any c ∈ 𝒞 and d ∈ 𝒟, there is an isomorphism of hom-sets

α_{c,d} : 𝒞(c, R(d)) ≅ 𝒟(L(c), d)

that is natural in c and d.

Given a morphism f : c → R(d) in 𝒞, its image g := α_{c,d}(f) is called its *mate*. Similarly, the mate of g : L(c) → d is f.

To denote an adjunction we write L ⊣ R, or in diagrams,

[Figure: A diagram showing 𝒞 \xrightarrow{L} 𝒟 \xrightarrow{R} 𝒞, with ⊣ indicating the adjunction.]

with the ⇒ in the direction of the left adjoint.

**Example 3.71.** Recall that every preorder ℘ can be regarded as a category. Galois connections between preorders and adjunctions between the corresponding categories are exactly the same thing.

**Example 3.72.** Let B ∈ Ob(Set) be any set. There is an adjunction called ‘currying B,’ after the logician Haskell Curry:

Set \xrightarrow{–×B} Set  
Set \xrightarrow{(–)^B} Set

Set(A × B, C) ≅ Set(A, C^B)

Abstractly we write it as on the left, but what this means is that for any sets A, C, there is a natural isomorphism as on the right.

To explain this, we need to talk about exponential objects in Set. Suppose that B and C are sets. Then the set of functions B → C is also a set; let’s denote it C^B. It’s written this way because if C has 10 elements and B has 3 elements then C^B has 10^3 elements, and more generally for any two finite sets |C^B| = |C|^{|B|}.

The idea of currying is that given sets A, B, and C, there is a one-to-one correspondence between functions (A × B) → C and functions A → C^B. Intuitively, if I have a function f of two variables a, b, I can “put off” entering the second variable: if you give me just a, I’ll return a function B → C that’s waiting for the B input. This is the curried version of f. As one might guess, there is a formal connection between exponential objects and what we called hom-elements b –○ c in Definition 2.79.

**Exercise 3.73.** In Example 3.72, we discussed an adjunction between functors –×B and (–)^B. But we only said how these functors worked on objects: for an arbitrary set X, they return sets X × B and X^B respectively.

1. Given a morphism f : X → Y, what morphism should –×B : X × B → Y × B return?
2. Given a morphism f : X → Y, what morphism should (–)^B : X^B → Y^B return?
3. Consider the function + : ℕ × ℕ → ℕ, which sends (a, b) ↦ a + b. Currying +, we get a certain function p : ℕ → ℕ^ℕ. What is p(3)?

---

**Example 3.74.** If you know some abstract algebra or topology, here are some other examples of adjunctions.

1. Free constructions: given any set you get a free group, free monoid, free ring, free vector space, etc.; each of these is a left adjoint. The corresponding right adjoint takes a group, a monoid, a ring, a vector space etc. and forgets the algebraic structure to return the underlying set.
2. Similarly, given a graph you get a free preorder or a free category, as we discussed in Section 3.2.3; each is a left adjoint. The corresponding right adjoint is the underlying graph of a preorder or of a category.
3. Discrete things: given any set you get a discrete preorder, discrete graph, discrete metric space, discrete category, discrete topological space; each of these is a left adjoint. The corresponding right adjoint is again underlying set.
4. Codiscrete things: given any set you get a codiscrete preorder, complete graph, codiscrete category, codiscrete topological space; each of these is a right adjoint. The corresponding left adjoint is the underlying set.
5. Given a group, you can quotient by its commutator subgroup to get an abelian group; this is a left adjoint. The right adjoint is the inclusion of abelian groups into groups.

---

#### 3.4.3 Left and right pushforward functors, Σ and Π

Given F : 𝒞 → 𝒟, the data migration functor Δ_F turns 𝒟-instances into 𝒞-instances. This functor has both a left and a right adjoint:

[Figure: A diagram showing Σ_F ⊣ Δ_F ⊣ Π_F, with arrows between 𝒞-Inst and 𝒟-Inst.]

Using the names Σ and Π in this context is fairly standard in category theory. In the case of databases, they have the following helpful mnemonic:

| Migration Functor | Pronounced | Reminiscent of | Database idea                  |
|-------------------|------------|----------------|-------------------------------|
| Δ                 | Delta      | Duplicate or destroy | Duplicate or destroy tables or columns |
| Σ                 | Sigma      | Sum            | Union (sum up) data            |
| Π                 | Pi         | Product        | Pair and query data            |

Just like we used Δ_F to pull back any discrete dynamical system along F : Gr → DDS and get a graph, the migration functors Σ_F and Π_F can be used to turn any graph into a discrete dynamical system. That is, given an instance J : Gr → Set, we can get instances Σ_F(J) and Π_F(J) on DDS. This, however, is quite technical, and we leave it to the adventurous reader to compute an example, with help perhaps from [Spi14a], which explores the definitions of Σ and Π in detail. A less technical shortcut is simply to code up the computation in the open-source FQL software.

To get the basic idea across without getting mired in technical details, here we shall instead discuss a very simple example. Recall the schemas from Eq. (3.5). We can set up a functor between them, the one sending black dots to black dots and white dots to white dots:

[Figure: Two diagrams. Left: Schema A with nodes Economy, First Class, Price, Position, and arrows. Right: Schema B with nodes Airline Seat, Price, Position, and arrows. A functor F from A to B is indicated.]

With this functor F in hand, we can transform any B-instance into an A-instance using Δ_F. Whereas Δ was interesting in the case of turning discrete dynamical systems into graphs in Section 3.4.1, it is not very interesting in this case. Indeed, it will just copy—Δ for duplicate—the rows in Airline seat into both Economy and First Class.

Δ_F has two adjoints, Σ_F and Π_F, both of which transform any A-instance I into a B-instance. The functor Σ_F does what one would most expect from reading the names on each object: it will put into Airline Seat the union of Economy and First Class:

Σ_F(I)(Airline Seat) = I(Economy) ∪ I(First Class).

The functor Π_F puts into Airline Seat the set of those pairs (e, f) where e is an Economy seat, f is a First Class seat, and e and f have the same price and position.

---

#### 3.4.4 Single set summaries of databases

To give a stronger idea of the flavor of Σ and Π, we consider another special case, namely where the target category 𝒟 is equal to 1; see Exercise 3.12. In this case, there is exactly one functor 𝒞 → 1 for any 𝒞; let’s denote it

! : 𝒞 → 1.

**Exercise 3.75.** Describe the functor ! : 𝒞 → 1 from Eq. (3.75). Where does it send each object? What about each morphism?

We want to consider the data migration functors Σ_! : 𝒞-Inst → 1-Inst and Π_! : 𝒞-Inst → 1-Inst. In Example 3.53, we saw that an instance on 1 is the same thing as a set. So let’s identify 1-Inst with Set, and hence discuss

Σ_! : 𝒞-Inst → Set and Π_! : 𝒞-Inst → Set.

Given any schema 𝒞 and instance I : 𝒞 → Set, we will get sets Σ_!(I) and Π_!(I). Thinking of these sets as database instances, each corresponds to a single one-column table—a controlled vocabulary—summarizing an entire database instance on the schema 𝒞.

Consider the following schema

[Figure: A schema 𝒢 with nodes Email and Address, arrows sent_by and received_by from Email to Address.]

Here’s a sample instance I : 𝒢 → Set:

| Email | sent_by | received_by | Address |
|-------|---------|-------------|---------|
| Em_1  | Bob     | Grace       | Bob     |
| Em_2  | Grace   | Pat         | Doug    |
| Em_3  | Bob     | Emmy        | Emmy    |
| Em_4  | Sue     | Doug        | Grace   |
| Em_5  | Doug    | Sue         | Pat     |
| Em_6  | Bob     | Bob         | Sue     |

**Exercise 3.78.** Note that 𝒢 from Eq. (3.77) is isomorphic to the schema Gr. In Section 3.3.5 we saw that instances on Gr are graphs. Draw the above instance I as a graph.

Now we have a unique functor ! : 𝒢 → 1, and we want to say what Σ_!(I) and Π_!(I) give us as single-set summaries. First, Σ_!(I) tells us all the emailing groups—the “connected components”—in I:

| 1 |
|---|
| Bob–Grace–Pat–Emmy |
| Sue–Doug           |

This form of summary, involving identifying entries into common groups, or quotients, is typical of Σ-operations.

The functor Π_!(I) lists the emails from I which were sent from a person to her- or him-self.

| 1   |
|-----|
| Em_6|

This is again a sort of query, selecting the entries that fit the criterion of self-to-self emails. Again, this is typical of Π-operations.

Where do these facts—that Π_! and Σ_! act the way we said—come from? Everything follows from the definition of adjoint functors (3.70): indeed we hope that this, together with the examples given in Example 3.74, give the reader some idea of how general and useful adjunctions are, both in mathematics and in database theory.

One more point: while we will not spell out the details, we note that these operations are also examples of constructions known as colimits and limits in Set. We end this chapter with bonus material, exploring these key category theoretic constructions. The reader should keep in mind that, in general and not just for functors to 1, Σ-operations are built from colimits in Set, and Π-operations are built from limits in Set.

---

### 3.5 Bonus: An introduction to limits and colimits

What do products of sets, the results of Π-operations on database instances, and meets in a preorder all have in common? The answer, as we shall see, is that they are all examples of limits. Similarly, disjoint unions of sets, the results of Σ-operations on database instances, and joins in a preorder are all colimits. Let’s begin with limits.

Recall that Π_! takes a database instance I : 𝒞 → Set and turns it into a set Π_!(I). More generally, a limit turns a functor F : 𝒞 → 𝒟 into an object of 𝒟.

#### 3.5.1 Terminal objects and products

Terminal objects and products are each a sort of limit. Let’s discuss them in turn.

**Terminal objects.** The most basic limit is a terminal object.

**Definition 3.79.** Let 𝒞 be a category. Then an object Z in 𝒞 is a *terminal object* if, for each object C of 𝒞, there exists a unique morphism ! : C → Z.

Since this unique morphism exists for all objects in 𝒞, we say that terminal objects have a *universal property*.

**Example 3.80.** In Set, any set with exactly one element is a terminal object. Why? Consider some such set {•}. Then for any other set C we need to check that there is exactly one function ! : C → {•}. This unique function is the one that does the only thing that can be done: it maps each element c ∈ C to the element • ∈ {•}.

**Exercise 3.81.** Let (P, ≤) be a preorder, let z ∈ P be an element, and let ℘ be the corresponding category (see Section 3.2.3). Show that z is a terminal object in ℘ if and only if for all c ∈ P we have c ≤ z.

**Exercise 3.82.** Name a terminal object in the category Cat. (Hint: recall Exercise 3.76.)

**Exercise 3.83.** Not every category has a terminal object. Find one that doesn’t.

**Proposition 3.84.** All terminal objects in a category 𝒞 are isomorphic.

*Proof.* This is a simple, but powerful standard argument. Suppose Z and Z' are both terminal objects in some category 𝒞. Then there exist (unique) maps a : Z → Z' and b : Z' → Z. Composing these, we get a map a ; b : Z → Z. Now since Z is terminal, this map Z → Z must be unique. But id_Z is also such a map. So we must have a ; b = id_Z. Similarly, we find that b ; a = id_{Z'}. Thus a is an isomorphism, with inverse b.

**Remark 3.85 (“The limit” vs. “a limit”).** Not only are all terminal objects isomorphic, there is a unique isomorphism between any two. We hence say “terminal objects are unique up to unique isomorphism.” To a category theorist, this is very nearly the same thing as saying “all terminal objects are equal.” Thus we often abuse terminology and talk of ‘the’ terminal object, rather than “a” terminal object. We will do the same for any sort of limit or colimit, e.g. speak of “the product” of two sets, rather than “a product.” We saw a similar phenomenon in Definition 1.81.

**Products.** Products are slightly more complicated to formalize than terminal objects, but they are familiar in practice.

**Definition 3.86.** Let 𝒞 be a category, and let X, Y be objects in 𝒞. A *product* of X and Y is an object, denoted X × Y, together with morphisms p_X : X × Y → X and p_Y : X × Y → Y such that for all objects C together with morphisms f : C → X and g : C → Y, there exists a unique morphism C → X × Y, denoted ⟨f, g⟩, for which the following diagram commutes:

[Figure: A commutative diagram with C mapping to X × Y via ⟨f, g⟩, and projections p_X and p_Y from X × Y to X and Y, respectively, and f and g from C to X and Y.]

We will try to bring this down to earth in Example 3.87. Before we do, note that X × Y is an object equipped with morphisms to X and Y. Roughly speaking, it is like “the best object-equipped-with-morphisms-to-X-and-Y” in all of 𝒞, in the sense that any other object-equipped-with-morphisms-to-X-and-Y maps to it uniquely. This is called a *universal property*. It’s customary to use a dotted line to indicate the unique morphism that exists because of some universal property.

**Example 3.87.** In Set, a product of two sets X and Y is their usual cartesian product

X × Y := {(x, y) | x ∈ X, y ∈ Y},

which comes with two projections p_X : X × Y → X and p_Y : X × Y → Y, given by p_X(x, y) := x and p_Y(x, y) := y.

Given any set C with functions f : C → X and g : C → Y, the unique map from C to X × Y such that the required diagram commutes is given by ⟨f, g⟩(c) := (f(c), g(c)).

Here is a picture of the product 6 × 4 of sets 6 and 4.

[Figure: A grid diagram showing the cartesian product of sets 6 and 4, with projections to each factor.]

**Exercise 3.88.** Let (P, ≤) be a preorder, let x, y ∈ P be elements, and let ℘ be the corresponding category. Show that the product x × y in ℘ agrees with their meet x ∧ y in P.

---

#### 3.5.2 Limits

We’ll get a little abstract. Consider the definition of product. This says that given any pair of maps X \xleftarrow{f} C \xrightarrow{g} Y, there exists a unique map C → X × Y such that certain diagrams commute. This has the flavor of being terminal—there is a unique map to X × Y—but it seems a bit more complicated. How are the two ideas related?

It turns out that products are terminal objects, but of a different category, which we’ll call Cone(X, Y), the *category of cones over X and Y* in 𝒞. We will see in Exercise 3.91 that X × Y is a terminal object in Cone(X, Y).

An object of Cone(X, Y) is simply a pair of maps X \xleftarrow{f} C \xrightarrow{g} Y. A morphism from X \xleftarrow{f} C \xrightarrow{g} Y to X \xleftarrow{f'} C' \xrightarrow{g'} Y in Cone(X, Y) is a morphism a : C → C' in 𝒞 such that the following diagram commutes:

[Figure: A commutative diagram with C mapping to C' via a, and f, g, f', g' as in the definition.]

**Exercise 3.91.** Check that a product X \xleftarrow{p_X} X × Y \xrightarrow{p_Y} Y is exactly the same as a terminal object in Cone(X, Y).

We’re now ready for the abstract definition. Don’t worry if the details are unclear; the main point is that it is possible to unify terminal objects, maximal elements, and meets, products of sets, preorders, and categories, and many other familiar friends under the scope of a single definition. In fact, they’re all just terminal objects in different categories.

---

#### 3.5.3 Finite limits in Set

Recall that this discussion was inspired by wanting to understand Π-operations, and in particular Π_!. We can now see that a database instance I : 𝒞 → Set is a diagram in Set. The functor Π_! takes the limit of this diagram. In this subsection we give a formula describing the result. This captures all finite limits in Set.

In database theory, we work with categories 𝒞 that are presented by a finite graph plus equations. We won’t explain the details, but it’s in fact enough just to work with the graph part: as far as limits are concerned, the equations in 𝒞 don’t matter. For consistency with the rest of this section, let’s denote the database schema by 𝒥 instead of 𝒞.

**Theorem 3.95.** Let 𝒥 be a category presented by the finite graph (V, A, s, t), together with some equations, and let D : 𝒥 → Set be a set-valued functor. Write V = {v₁, ..., v_n}. The set

lim D := {(d₁, ..., d_n) | d_i ∈ D(v_i) for all 1 ≤ i ≤ n and for all a : v_i → v_j ∈ A, we have D(a)(d_i) = d_j}.

together with the projection maps p_i : (lim D) → D(v_i) given by p_i(d₁, ..., d_n) := d_i, is a limit of D.

**Example 3.96.** If 𝒥 is the empty graph [ ], then n = 0: there are no vertices. There is exactly one empty tuple ( ), which vacuously satisfies the properties, so we’ve constructed the limit as the singleton set { ( ) } consisting of just the empty tuple. Thus the limit of the empty diagram, i.e. the terminal object in Set is the singleton set. See Remark 3.85.

**Exercise 3.97.** Show that the limit formula in Theorem 3.95 works for products. See Example 3.94.

**Exercise 3.98.** If D : 1 → Set is a functor, what is the limit of D? Compute it using Theorem 3.95, and check your answer against Definition 3.92.

**Pullbacks.** In particular, the condition that the limit of D : 𝒥 → Set selects tuples (d₁, ..., d_n) such that D(a)(d_i) = d_j for each morphism a : i → j in 𝒥 allows us to use limits to select data that satisfies certain equations or constraints. This is what allows us to express queries in terms of limits. Here is an example.

**Example 3.99.** If 𝒥 is presented by the cospan graph

[Figure: A cospan graph with X \xrightarrow{f} A \xleftarrow{g} Y.]

then its limit is known as a *pullback*. Given the diagram X \xrightarrow{f} A \xleftarrow{g} Y, the pullback is the cone shown on the left below:

[Figure: Two diagrams. Left: A commutative square with C mapping to X and Y, and both mapping to A. Right: The pullback object X ×_A Y with projections to X and Y, and both mapping to A.]

The fact that the diagram commutes means that the diagonal arrow c_a is in some sense superfluous, so one generally denotes pullbacks by dropping the diagonal arrow, naming the cone point X ×_A Y, and adding the pullback symbol, as shown to the right above.

Here is a picture to help us unpack the definition in Set. We take X = 6, Y = 4, and A to be the set of colors {red, blue, black}.

[Figure: A grid diagram showing the pullback of sets 6 and 4 over a set of colors, with colored dots indicating the fibered product.]

The functions f : 6 → A and g : 4 → A are expressed in the coloring of the dots: for example, g(2) = g(4) = red, while f(5) = black. The pullback selects pairs (i, j) ∈ 6 × 4 such that f(i) and g(j) have the same color.

**Remark 3.100.** As mentioned following Definition 3.68, this definition of pullback is not to be confused with the pullback of a set-valued functor along a functor; they are for now best thought of as different concepts which accidentally have the same name. Due to the power of the primordial ooze, however, the pullback along a functor is a special case of pullback as the limit of a cospan: it can be understood as the pullback of a certain cospan in Cat. To unpack this, however, requires the notions of category of elements and discrete opfibration; ask your friendly neighborhood category theorist.

---

#### 3.5.4 A brief note on colimits

Just like upper bounds have a dual concept—namely that of lower bounds—so limits have a dual concept: *colimits*. To expose the reader to this concept, we provide a succinct definition of these using opposite categories and opposite functors. The point, however, is just exposure; we will return to explore colimits in detail in Chapter 6.

**Exercise 3.101.** Recall from Example 3.27 that every category 𝒞 has an opposite 𝒞^{op}. Let F : 𝒞 → 𝒟 be a functor. How should we define its opposite, F^{op} : 𝒞^{op} → 𝒟^{op}? That is, how should F^{op} act on objects, and how should it act on morphisms?

**Definition 3.102.** Given a category 𝒞 we say that a *cocone* in 𝒞 is a cone in 𝒞^{op}. Given a diagram D : 𝒥 → 𝒞, we may take the limit of the functor D^{op} : 𝒥^{op} → 𝒞^{op}. This is a cone in 𝒞^{op}, and so by definition a cocone in 𝒞. The *colimit* of D is this cocone.

Definition 3.102 is like a compressed file: useful for transmitting quickly, but completely useless for working with, unless you can successfully unpack it. We will unpack it later in Chapter 6 when we discuss electric circuits.

---

### 3.6 Summary and further reading

Congratulations on making it through one of the longest chapters in the book! We apologize for the length, but this chapter had a lot of work to do. Namely it introduced the “big three” of category theory—categories, functors, and natural transformations—as well as discussed adjunctions, limits, and very briefly colimits.

That’s really quite a bit of material. For more on all these subjects, one can consult any standard book on category theory, of which there are many. The bible (old, important, seminal, and requires a priest to explain it) is [Mac98]; another thorough introduction is [Bor94]; a logical perspective is given in [Awo10]; a computer science perspective is given in [BW90] and [Pie91] and [Wal92]; math students should probably read [Lei14] or [Rie17] or [Gra18]; a general audience might start with [Spi14a].

We presented categories from a database perspective, because data is pretty ubiquitous in our world. A database schema—i.e. a system of interlocking tables—can be captured by a category 𝒞, and filling it with data corresponds to a functor 𝒞 → Set. Here Set is the category of sets, perhaps the most important category to mathematicians.

The perspective of using category theory to model databases has been rediscovered several times. It seems to have first been discussed by various authors around the mid-90’s [IP94; CD95; PS95; TG96]. Bob Rosebrugh and collaborators took it much further in a series of papers including [FGR03; JR02; RW92]. Most of these authors tend to focus on sketches, which are more expressive categories. Spivak rediscovered the idea again quite a bit later, but focused on categories rather than sketches, so as to have all three data migration functors Δ, Σ, Π; see [Spi12; SW15a; SW15b]. The version of this story presented in the chapter, including the white and black nodes in schemas, is part of a larger theory of algebraic databases, where a programming language such as Java or Haskell is attached to a database. The technical details are worked out in [Sch+17], and its use in database integration projects can be found in [SW15a; Wis+15].

Before we leave this chapter, we want to emphasize two things: coherence conditions and universal constructions.

**Coherence conditions.** In the definitions of category, functor, and natural transformations, we have data (indexed by (i)) that is required to satisfy certain properties (indexed by (a)). Indeed, for categories it was about associativity and unitality of composition, for functors it was about respecting composition and identities, and for natural transformations it was the naturality condition. These conditions are often called *coherence conditions*: we want the various structures to cohere, to work well together, rather than to flop around unattached.

Understanding why these particular structures and coherence conditions are “the right ones” is more science than mathematics: we empirically observe that certain combinations result in ideas that are both widely applicable and also strongly compositional. That is, we become satisfied with coherence conditions when they result in beautiful mathematics down the road.

**Universal constructions.** Universal constructions are one of the most important themes of category theory. Roughly speaking, one gives some specified shape in a category and says “find me the best solution!” And category theory comes back and says “do you want me to approximate from the left or the right (colimit or limit)?” You respond, and either there is a best solution or there is not. If there is, it’s called the (co)limit; if there’s not we say “the (co)limit does not exist.”

Even data migration fits this form. We say “find me the closest thing in 𝒟 that matches my 𝒞-instance using my functor F : 𝒞 → 𝒟.” In fact this approach—known as Kan extensions—subsumes the others. One of the two founders of category theory, Saunders Mac Lane, has a section in his book [Mac98] called “All concepts are Kan extensions,” a big statement, no?