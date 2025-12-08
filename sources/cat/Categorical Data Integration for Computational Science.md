# Categorical Data Integration for Computational Science

**Kristopher Brown, David I. Spivak, Ryan Wisnesky**

**March 27, 2019**

## Abstract

Categorical Query Language is an open-source query and data integration scripting language that can be applied to common challenges in the field of computational science. We discuss how the structure-preserving nature of CQL data migrations protect those who publicly share data from the misinterpretation of their data. Likewise, this feature of CQL migrations allows those who draw from public data sources to be sure only data which meets their specification will actually be transferred. We argue some open problems in the field of data sharing in computational science are addressable by working within this paradigm of functorial data migration. We demonstrate these tools by integrating data from the Open Quantum Materials Database with some alternative materials databases.

**Keywords:** Data integration, data migration, heterogeneous data, category theory, machine learning, density functional theory

## 1 Background

### 1.1 Categorical Query Language

Categorical Query Language (CQL) is based on an algebraic database formalism motivated by category theory [SSCW16], which describes databases as sets of equations, distinct from the other data models (relational, RDF, graph, LINQ). This formalism is based on a principled theory for data integration and, in particular, facilitates static guarantees of data integrity enforcement using a rich language for constraints1, provides complete provenance for all transformations, and seamlessly integrates programming languages into the schema. Data integration will be taken to mean the combination of two database instances with different schemas into a coherent unified schema and instance. The migration of data from one schema into another and even the simple and common act of querying a given database are specific cases of this [SW16].

Algebraic databases have been used to integrate financial data, health records, and manufacturing servicedatabases [WBJ+17]. Furthermore, the representation of materials science knowledge within category-theoretic data structures has enabled novel analyses of materials [SGWB11, BGSB15]. These are particularly amenable to describing connections between first principles and emergent properties in systems with many hierarchical scales (other disciplines that have benefited from these tools include physics, linguistics, and computer science [Sic06]).

In this paper, we consider the application of algebraic data integration to computational science more broadly.

### 1.2 Data Sharing

In a 2015 Viewpoint on data sharing [Kit15], Kitchin identifies tables and figures in manuscripts to be the current standard for communicating data in scientific research. The flexibility of this medium is achieved at the cost of machine readability and re-usability. Data is too broad of a concept to allow for a satisfactory centralized database, thus in most circumstances researchers who share structured data must independently release it in some personalized format.

Heterogeneity in data formats leads to challenges, however. A review on academic data sharing practices revealed that a large concern that prevents sharing is the fear of data being misinterpreted and the work needed to address questions and concerns of the data receivers. Furthermore, the reliance of unstructured metadata was also cited as a problem that hindered the usability of shared data [FFH15]. Guidelines have been called for to ease this process: a 2016 review of data sharing in computational science [JPC16] outlined the field’s future challenges: addressing the lack of structured data, tools to combine information from disparate datasets, and communication of the nuances of data sets.

Although no systems safeguard against fundamentally misunderstanding the domain being modeled by some database, data misuse can be mitigated by leveraging the additional features of a CQL schema not present in SQL schemas. CQL schemas are structurally equivalent to ontology logs (ologs) [SK12]. Ologs are like "concept maps" that have a formal interpretation. Boxes can be interpreted as database tables with arrows as foreign keys, or alternatively as sets with arrows as functions. They can express nontrivial facts because they are equipped with equations stating when two paths must yield the same result. Thus, a CQL schema is not merely a container for information but itself conveys important conceptual knowledge and can distinguish sensible from nonsensical instance data. As an example, Figure 1 considers an example from computational materials science, describing the relation between concrete chemical structures (the types of things that are manipulated in computational chemistry, with precise coordinates for atoms) and general chemical species (the kinds of things that appear in chemical reactions, e.g., the concept of "a water molecule" or "an FCC-Copper-111 surface").

These path equations communicate higher-level meaning to those who view the database and also serve as data-integrity constraints for any instance data that is stored in the schema, which helps prevent a large class of data misuse errors in two ways. Firstly, there is a static guarantee that data represented in an algebraic database cannot violate these constraints. Thus, a researcher with a particular frame of reference can safely draw data from external sources without worrying that the new data violates their data integrity constraints. Secondly, CQL transformations come from the paradigm of functorial data migration [Spi12], meaning they are structure-preserving in both the source and target schemas. This protects those who share data, which can only be migrated in a way that respects the rules that accompany the source schema. Without these abstractions, users must write scripts to perform data migrations by directly manipulating databases with raw SQL, which is error-prone as well as fragile to changes in source or target schema specifications. Figure 2 considers moving data of chemical reaction network simulations between different representations and provides concrete examples of erroneous data migrations which are not possible to perform with CQL.

In summary, there exist systemic issues in academic data sharing given the lack of a specific and universal standard for data representation. The formalism of category theory offers a flexible, machine-interpretable language for declaring customized data structures and translating between them such that the intended meanings of the data provider and the data receivers are respected; mediating these transformations with CQL provides assurances of data quality by construction.

This property is important for practical applications because the general problem of checking if an arbitrary schema mapping preserves constraints is undecidable and requires an automated theorem prover.

## 1.3 Computational Science

Simulation now serves as a complementary tool of scientific inquiry, alongside theory and experiment. As a case study, we consider Density Functional Theory (DFT), a popular tool for materials scientists which enables the efficient prediction of electronic properties (such as stability) from a chemical structure input [Bur12]. Databases of computational data benefit the public in many ways [JPC16]:

1. to aid and inspire further computational studies
2. to establish reference against which to compare results
3. to facilitate property prediction and materials screening

Data sharing can greatly accelerate the rate of research, as high-quality data is expensive to generate. However, there are few domains in which widely-accepted standards for data sharing exist. For example, although there are many standardized formats for representing chemical structures [OBJ+11], there are no such standards for more complicated entities such as the symmetry analysis of a structure, the pseudopotentials used in DFT calculation, density of states data resulting from a DFT calculation, and the DFT calculation itself.

A quantum chemistry dataset can be considered as a container for many DFT calculations. Each calculation can involve multiple structures in addition to having a large number of parameters and metadata; there is no standard format for storing data at this higher level of abstraction. This is compounded by the fact that the meaning of a "calculation" is not something well-defined: even if one fixes the software package which implements DFT and its required input parameters, in practice DFT gets called by arbitrary scripts which do nontrivial sequences of commands as well as on-the-fly data preprocessing and postprocessing. Thus a DFT calculation has no a priori restrictions on what its inputs or outputs might be.

Furthermore, many questions of interest depend not on a single calculation, but rather on ensembles of calculations, grouped in particular ways; for example, one is often interested in formation energies, i.e., a structure’s energy relative to some reference energy, which depends on some arbitrarily-chosen mapping of its constituent elements to reference species, as well as the calculations for those reference species. For this to be valid, those calculations ought to be done at similar (though usually not exact) DFT settings.

The above descriptions represent a tiny fraction of the complexity of the systems computational scientists grapple with. In practice, scientists can only communicate structured raw data in tiny fragments (e.g., specific chemical structures) of the systems they try to model, which contain concepts at higher levels of abstraction such as chemical species, reaction mechanisms, and reaction networks. Although not currently feasible, the ability to freely exchange structured data at the level of abstraction which scientists actually work at would support many scientific activities such as machine learning applications which thrive on large datasets, straightforward testing of results for reproducibility, and avoiding duplication of computational effort.

The data sharing problems described in Section 1.2 strongly apply to computational materials science due to the complexity of representing data in this domain. Thus, the field could benefit from a user-friendly technology (Figure 3) that can offer researchers a means of integrating heterogeneous data sources. To demonstrate the flexibility of CQL as a tool for interconversion in materials science, we develop case studies for data integration using the Open Quantum Materials Database (OQMD) below.

**2**

This perspective will only consider the integration of relational databases, which have a well-defined structure to their data. There are important trade-offs to consider between the relational data model and alternatives (most prominently, MongoDB). OQMD [KSM+15] is the only major materials database that currently is relational, in contrast to the Materials Project [JOH+13], Inorganic Crystal Structure Database (ICSD) [Hel14], and NOMAD [GCL+16] databases.

![Figure 3: Example operations and interface for scientists integrating information from related schemas, mediated by CQL. We color code entities to communicate whether they share the same meaning. Note that merge and migrate are not primitive operations in CQL, but rather they are the result of a series of commands in CQL.](Figure3.png)

## 2 Case Studies

### 2.1 Overview

We will consider two problems: data migration and data integration. In addition to OQMD, we will consider a representative materials database called Catalysis, with a rich schema structure that encodes information in a different way from OQMD. Considering the perspective of a materials scientist who has represented their work for a particular problem in Catalysis yet wants to incorporate data from OQMD, we

1. migrate `OQMD → Catalysis`. The resulting instance has the same schema as Catalysis and data from both databases.
2. merge `OQMD` and `Catalysis` into a new schema that includes overlapping and non-overlapping content of both databases.

Readers are encouraged to consider the example input files and databases and to check references made to code in the footnotes. Below is a summary of questions whose answers are required to incorporate data from an external database into one’s local structured data schema:

- What tables / paths correspond to the same meaning? `overlap.py` Section 1.1
- What functions, if any, are required to translate between two representations of data with the same meaning (e.g., unit conversion, formatting)? `javafuncs.py`
- Are there any attributes which are not explicitly represented (describable as a constant or a function of other attributes in the database)? We can choose whether to compute these attributes in SQL while ’landing’ the data into CQL or to compute them within CQL itself (`overlap.py` Section 3)
- If we only want to consider some subset of records in a database, what filters should be applied?
- What is sufficient for two records to be considered the same despite being represented differently in the two different databases?

As it is infeasible to discuss every detail of the three scenarios, it will suffice to describe some general sources of differences between the various schemas. We will show specific examples for each of these general problems and how they were addressed.

### 2.2 Factors leading to heterogeneity

#### 2.2.1 Differing names

Two databases could appear different solely because differing names were chosen for entities or attributes which have the same meaning. This mapping of names can be directly specified. `overlap.py` Section 1.2

#### 2.2.2 Implicit constants

If a dataset never varies a particular parameter, then it is likely to not explicitly include an attribute for that parameter, even if it is critical for the interpretation of the data (the value of that parameter must be communicated through database metadata). This is the case for OQMD, where every calculation in the database uses VASP as the code which implements DFT. When migrating data from OQMD to a database which has the DFT code as a parameter, we can declaratively specify this database-wide constant. `overlap.py` Section 1.3

#### 2.2.3 Degree of Denormalization

A normalized database schema groups together repeating co-occurrences of data into refined structures. This is often a design trade-off between ease of reading from and writing to the database [SS01]. For example, every chemical structure exists within a periodic crystal unit cell, representable with three vectors in R³ (encoded as nine floating point numbers). If many atomic structures share the same unit cell, then duplication can be avoided by representing the cell as a distinct entity and giving `Structure` a foreign key to `Cell`. This strategy is taken by Catalysis; however, in OQMD the cell properties are directly found as attributes to `OQMD.structures`.

The solution is to map attributes of `OQMD.structures` to paths in Catalysis. `overlap.py` Section 1.2

![Figure 4: Example variation due to normalization. A path mapping required for this migration is Structures . x0 → Structure . cell id . x0, among others.](Figure4.png)

Conversely, these attributes are explicit attributes for each DFT calculation in Catalysis, and migrating the information requires specifying a function which can unpack the JSON and extract the correct field. `overlap.py` Section 1.3

#### 2.2.4 Hidden structure

Attributes sometimes store data with internal structure, in effect hiding the structure from the schema. This can pose a challenge for specifying the relation between two schemas by path-based means alone. However, CQL allows for functions to be integrated into path equations to address the specific ways in which data should be extracted from an attribute. For example, OQMD has, for each DFT calculation, an attribute `params`, which is a JSON object functioning as an implicit set. This allows for flexible storage but requires functions to access specific parameters.

![Figure 2: Embedding and Lossy are plausible strategies for migrating data from A into schemas B and C, respectively. Even with these migration strategies in mind, with ad hoc data migration scripting it is possible to move the data in a way that, in some sense, does not respect the intent of A. CQL allows us to make this vague notion concrete. We show how the declaration of data integrity constraints (A1, A2, A3) in the language of A prevents other researchers from invalidly moving data into their databases through two examples of possible data migrations which are forbidden in the paradigm of functorial data migration. The migration to C is invalid because there exists a reaction (ID = 3) whose reverse’s reverse is not the same reaction – we know how to interpret A3 in C because we mapped the rev relation in A onto the rev relation in C.**

- *The migration to B is invalid because there is a simulation (ID = 2) whose rds points to a reaction which belongs to a different simulation (violating A2). Furthermore, there exists a reaction (ID = 43) whose inverse does not belong to the same simulation (violating A1).*
- *CQL prevents these migrations by analyzing the schema mappings, not by checking data after the fact.*

#### 2.2.5 Different levels of granularity

Every model at some point has to make a cutoff about what level of detail should be recorded, thus sometimes features of a target schema are not present in the source schema, nor is there sufficient information to compute the missing information. This can be addressed by leaving attributes as NULL12 (or choosing some value that communicates a lack of knowledge) when migrating from low granularity to high granularity, whereas it is trivial to ignore excess attributes and foreign keys when migrating data in the other direction.

In contrast to SQL, CQL uses labelled nulls, which are distinct (but unknown) values that behave like variables. This allows for unknown data to be manipulated as if they were actual values, participating in user-defined functions and data-integrity constraints.

## 3 Future Outlook

The example databases from this study only considered bulk materials, which are comparatively simple relative to surfaces. Surface DFT models have many practical applications yet also involve more complicated relations between calculations and structures. We plan to demonstrate the utility of the algebraic data integration with CQL in surface science (Figure 5). Considering a broader outlook, this perspective focused on materials science and DFT, yet the tools are equally applicable to other scientific fields. For example, life sciences research broadly speaking lacks widespread data standardization, and survey results have identified an urgent need for "user-friendly tools targeting integration of heterogeneous datasets" [GCAM+14]. Lastly, CQL is an expressive language for performing a large variety of database manipulations, of which we have only considered a particular kind of migration and a particular kind of merging.

![Figure 5: Example data integrity diagram for surface chemistry structures, where for any instance data to be sensible we would demand path equalities for the top triangle and the bottom rectangle. R+ represents positive real numbers. One can imagine this diagram being integrated with that of Figure 1, sharing the Bulk Structure and Surface Structure entities.](Figure5.png)

## 4 Conclusion

The lack of a robust method for moving data between complex schemas has discouraged the sharing of data. We demonstrate that CQL offers an intuitive language for precisely specifying the translation between different structured data representations, thus expanding the usefulness of structured data and facilitating precise communication between researchers with different frames of reference. This has been demonstrated with data migration and data integration examples for a real-world problem from computational materials science.

Open problems in data sharing have been summarized as the lack of:

1. structured data,
2. tools to combine information from disparate datasets, and
3. communication of the nuances of data sets.

## 5 Declaration of Interest

KB was supported by the Department of Defense (DoD) through the National Defense Science & Engineering Graduate Fellowship (NDSEG) Program. RW and DS are consulting members for Categorical Informatics, which offers consultation services for CQL usage.

The authors would like to thank Michael Statt from Stanford University and Joseph Montoya from Toyota Research Institute for constructive criticism of the manuscript.

## 6 Data Availability

Data and code required to reproduce these findings are available to download from [https://github.com/kris-brown/cql_data_integration](https://github.com/kris-brown/cql_data_integration).
