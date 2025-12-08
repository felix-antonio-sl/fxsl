# MultiCategory: Multi-model Query Processing Meets Category Theory and Functional Programming

## Abstract

The system **MultiCategory** processes multi-model queries based on category theory and functional programming. It demonstrates four main scenarios: building schema and instance categories from various data models, query processing using Haskell, flexible output models, and visualizing queries as graphs in relation to the schema category.

## Preliminaries

### Definition 2.1: Category

A **category** $C$ consists of:
- A collection of objects denoted by $\text{Obj}(C)$.
- A collection of morphisms denoted by $\text{Hom}(C)$.

For each morphism $f \in \text{Hom}(C)$, there exist objects $A, B \in \text{Obj}(C)$ such that $f: A \to B$. The category must satisfy:
- **Composition**: If $f: A \to B$ and $g: B \to C$ are morphisms in $\text{Hom}(C)$, then $g \circ f: A \to C$ is also in $\text{Hom}(C)$.
- **Associativity**: The composition operation is associative.
- **Identity Morphism**: For every object $A \in \text{Obj}(C)$, there exists an identity morphism $\text{id}_A: A \to A$ such that for any morphism $f: A \to B$, $f \circ \text{id}_A = f$ and $\text{id}_A \circ f = f$ whenever the composition is defined.

**Note:** Informally, a category can be understood as a graph endowed with a composition rule.

### Schema and Instance Categories

- **Schema Category**: Represents the schema information of a multi-model data environment. Objects include predefined data types (e.g., string, integer) and entities (e.g., customers, products). Morphisms are typed functions between data types, such as a customer being located in a certain location.
  
  **Remark:** The schema category provides a unified view for different data models, enabling seamless multi-model query processing.

- **Instance Category**: Models how concrete data instances are stored. Each object in the schema category is mapped to a corresponding typed Haskell data structure in the instance category. Morphisms in the schema category are mapped to concrete Haskell functions.

  **Instance Functor**: The mapping between schema and instance categories is defined by an instance functor, which operates on objects using collection constructor functors.

### Mathematical Expressions

- **Functorial Mapping**:
  
  The **instance functor** maps each object and morphism from the schema category to the instance category using collection constructor functors.

  $$ \text{Instance Functor}: \text{Schema Category} \to \text{Instance Category} $$

**Example Illustration:**

- **Schema Category Objects**: `Location`, `Order`, `Customer`, `Product`
- **Morphisms**: `orderedBy: Order \to Customer`, `contains: Order \to Product`, `located: Customer \to Location`

## System Overview

### Multi-model Query Language

The query language integrates Haskell functions and expressions. Queries are structured using the `QUERY`, `FROM`, and `TO` keywords, allowing the specification of data sources and desired output models.

**Example 3.1:**

```haskell
QUERY (\x -> if creditLimit x > 3000
            then cons x else nil)
FROM customers
TO graph/xml/relational
```

**Explanation:**
- Defines a query that selects customers with a credit limit greater than 3000.
- Retrieves results in graph, XML, or relational models.

**Example 3.2:**

```haskell
LET t BE
QUERY (\x xs -> if elem "Book" (map productName (orderProducts x))
               then cons x xs else xs)
FROM orders TO relational IN
QUERY (\x -> if any (\y -> orderedBy y customers == x)
            then cons (customerName x, countryName (located x locations)) else nil)
FROM customers TO algebraic graph/relational/xml
```

**Explanation:**
- First query (`t`) selects orders containing a book.
- Second query retrieves names and locations of customers who made such orders.
- Results are available in algebraic graph, relational, or XML models.

### Query Processing Mechanism

1. **Parsing**: User queries are parsed into a sequence of fold-functions based on schema information.
2. **Execution**: The Haskell backend executes these fold-functions against the instance category.
3. **Visualization**: Results are returned to the frontend and visualized according to the specified data model.

**Mathematical Concepts Involved:**
- **Catamorphism**: A generalization of fold functions used to process data structures.
- **Foldable Data Structures**: Data structures that can be folded to a summary value, essential for query processing.

**Remark:** The system employs pure Haskell code, ensuring referential transparency and enabling lazy evaluation.

## Conclusion and Future Work

**MultiCategory** applies category theory to model and query multi-model data using a functional programming approach. Future enhancements include automating the generation of schema and instance categories from input datasets and expanding the theoretical framework to support multi-model joins and data transformations.
