# Basic Formal Ontology 2.0

## **Status of this document** {#status-of-this-document}

This version of BFO (2.0) represents a major update to BFO and is not strictly backwards compatible with BFO 1.1. The previous OWL version of BFO, version 1.1.1 will remain available at <http://ifomis.org/bfo/1.1> and will no longer be updated.

Details of the OWL and CLIF(FOL) implementations of this specification can be found at: <https://github.com/BFO-ontology/BFO>.

BFO 2.0 OWL is a classes-only specification. The incorporation of core relations has been held over for a later version.

Details concerning automated support for migrating from BFO 1.1 to BFO 2.0 are available HERE (<http://ontobull.hegroup.org/bfoconvert>).

## **Introduction** {#introduction}

This document is a guide for those using Basic Formal Ontology (BFO) as an upper-level (formal, domain-neutral) ontology to support the creation of lower-level domain ontologies.

A *domain* is a portion of reality that forms the subject-matter of a single science or technology or mode of study; for example the domain of plant anatomy, of military targeting, of canon law. (Warning: We also use ‘Domain’ in the specification of BFO relations in what follows to refer to the type of entity which can serve as the subject – first term – of a relation.) BFO is designed to be neutral with regard to the domains to which it is applied in order to support the interoperation of what are called ‘domain ontologies’ defined on its basis and thus to support consistent annotation of data across different domains.

BFO supports formal (= logical) reasoning, and is associated with a set of common formal theories (for example of mereotopology \[5\] and of qualitative spatial reasoning \[18\], potentially also of numbers \[86\]), which do not need to be redeveloped for each successive domain. To this end, BFO must be capable of being applied to the creation of domain ontologies at lower levels, and in what follows we document how such application is to be effected. We describe the conditions which must be satisfied by entities of given sorts if they are properly to be categorized as instantiating the different universals or types (we use these terms interchangeably in what follows) recognized by BFO. To specify these conditions we will utilize a semi-formalized English that has approximately the expressivity of first-order logic (FOL) with identity. We use ‘category’ to refer to those universals at the most general and domain-neutral level. BFO treats only of categories in this sense. A *category* is a formal (= domain-neutral) universal, as contrasted with the material (domain-specific) universals represented in one or other domain ontology. BFO:*fiat object part* is a category in this sense; not however *organism* or *weapon*, or *mortgage contract*. Spatial, temporal and spatiotemporal region terms are counted as representing formal universals in this sense, since they apply in all domains.

In the formulations below, we will use:

‘*b*’, ‘*c*’, ‘*d*’, etc., for instances (spatio-temporal particulars);
‘*t*,’ ‘*t*′’, etc., for temporal regions (instants or intervals)
‘*r*,’ ‘*r*′’, ‘*s*,’ ‘*s*′’, etc., for spatial and spatiotemporal regions,

We use ‘*A*’, ‘*B*’, ‘*C*’, ‘*P*’, etc. for universals. Note that ‘*A*’, ‘*B*’, ‘*C*’, ‘*P*’, etc. are common nouns (names for universals), rather than predicates. We use ‘**instance\_of’,** ‘**has\_participant**’ and similar **bold-face** expressions to express relations involving instances, and ‘*part\_of*’ and similar *italicized* expressions to express relations exclusively involving universals. We also use *italics* to mark out BFO terms.  

![][image2]**Figure 1: The BFO 2.0 *is\_a* Hierarchy**

### **How to read this document**  {#how-to-read-this-document}

Use of **boldface** indicates a label for an **instance-level relation.** Use of *italics* indicates a BFO term (or a term from a BFO-conformant ontology). All such terms are singular common nouns or noun phrases. All BFO terms represent some formal (= domain-neutral) universal.

This document is intended both as a specification and a user’s guide to BFO 2.0. Those parts of the document which belong to the specification are indicated by the special formatting, as follows:

Elucidation: This style of formatting indicates that this text forms part of the BFO specification. Other text represents further explanations of the specification as well as background information. \[000-000\]

The first three digits in \[000-000\] serve as identifier for the salient axiom, theorem, definition, or elucidation. The second three digits serve as identifier for successive versions.

The remaining part of the document provides guidance as to how BFO should be used, and also arguments as to why specific choices have been made in the BFO architecture.  The identifier in brackets is included to enable cross-references back to this document for implementations of BFO in various languages and formats.

BFO 2.0 will exist in various implementations, including CLIF (FOL) and OWL. This document provides axioms and theorems in English that easily maps to FOL and so is the direct basis for the CLIF implementation.

Literature citations are provided for purposes of preliminary orientation only. Thus axioms and definitions included in cited literature are not necessarily in conformity with the content of this document. In particular, there have been, over the years, a number of attempts at formal expression of BFO. This document supersedes those.

### **Summary of major changes from BFO 1.1 to BFO 2.0** {#summary-of-major-changes-from-bfo-1.1-to-bfo-2.0}

   1. ### **Clarification of BFO:object** {#clarification-of-bfo:object}

The document emphasizes that Object, Fiat Object Part and Object Aggregate are not intended to be an exhaustive list of every kind Material Entity. Users are invited to propose new subcategories of Material Entity.

The document provides a more extensive account of what 'Object' means (roughly: an object is a maximal causally unified material entity) and in addition, it offers three paradigms of causal unity (1. presence of a covering membrane, such as a cell or an organism; 2\. a solid portion of matter, such as a lump of granite; and 3\. engineered artifacts, such as a screwdriver or a cell-phone).

#### **Introduction of reciprocal dependence**  {#introduction-of-reciprocal-dependence}

The document recognizes cases where multiple entities are mutually dependent on each other, for example between color hue, saturation and brightness; such cases can also involve reciprocal generic dependence as in the case of a disposition of a key to open a lock or some equivalent lock, and of the lock to be opened by this or some equivalent key.

#### **New simplified treatment of boundaries and regions** {#new-simplified-treatment-of-boundaries-and-regions}

note(continuant fiat boundary)\[In BFO 1.1 the assumption was made that the external surface of a material entity such as a cell could be treated as if it were a boundary in the mathematical sense. The new document propounds the view that when we talk about external surfaces of material objects in this way then we are talking about something fiat. To be dealt with in a future version: fiat boundaries at different levels of granularity.

More generally, the focus of the discussion on boundaries in BFO 2.0 has moved to fiat boundaries, which are boundaries for which there is no assumption that they coincide with physical discontinuities. The ontology of boundaries becomes more closely allied with the ontology of regions.\]

##### ***Revision of treatment of spatial location*** {#revision-of-treatment-of-spatial-location}

We generalize the treatment of ‘located\_in’ and remove the relation ‘contained\_in’.

##### ***Treatment of process predications under the heading ‘process profiles’***  {#treatment-of-process-predications-under-the-heading-‘process-profiles’}

The document introduces the idea of a process profile to provide a means to deal with certain sorts of process measurement data. To assert, for example, that a given heart beating process is a 72 beats per minute process, is not to ascribe a quality to the process, but rather to assert that there is a certain structural part of the process, called a 'beat profile', which instantiates a certain determinate process universal. This idea is to be treated as experimental.

##### ***Inclusion of relations as part of BFO vs. RO, with changes to relations*** {#inclusion-of-relations-as-part-of-bfo-vs.-ro,-with-changes-to-relations}

##### ***New relation exists\_at added.***  {#new-relation-exists_at-added.}

##### ***Relation of containment deprecated*** {#relation-of-containment-deprecated}

We provide a generalization of the located\_in relation as compared to earlier versions of BFO; the contained\_in relation is now deprecated.

##### ***Relations of parthood disambiguated*** {#relations-of-parthood-disambiguated}

Hitherto BFO has distinguished parthood between continuants and occurrents by means of the at t suffix used for the former; henceforth we will use the explicit distinction between continuant\_part\_of and occurrent\_part\_of (still using the at t suffix for the former).

##### ***Revision of Process*** {#revision-of-process}

#### **Future directions** {#future-directions}

* Treatment of frame-dependence of regions of space, of regions of time, and of certain qualities such as mass and spatial qualities.  
* Treatment of boundary\_of relations (incl. fiat\_boundary\_of)  
* Treatment of type-level relations; rules for quantifying over universals.  
* More detailed treatment of two kinds of causal relations (1) causal dependence, for example the reciprocal causal dependence between the pressure and temperature of a portion of gas; (2) causal triggering, where a process is the trigger for a second process which is the realization of a disposition.  
* Physics terms such as force, momentum, inertia, etc. Conserved qualities. (Portion of energy potentially to be treated as child of material entity.  
* Relation of dependence of objects on qualities (e.g. of you on your mass)

## **Organization of BFO**  {#organization-of-bfo}

   1. ## **Entities**  {#entities}

An entity is anything that exists. BFO assumes that entities can be divided into instances (your heart, my laptop) and universals or types (*heart*, *laptop*). On BFO’s usage of ‘instance’ and ‘universals’ see \[19, 25\].

note(ontology)\[BFO does not claim to be a complete coverage of all entities. It seeks only to provide coverage of those entities studied by empirical science together with those entities which affect or are involved in human activities, such as data processing and planning. This coverage is sufficiently broad to provide assistance to those engaged in building domain ontologies for purposes of data annotation \[17\] or representation and reasoning in science, medicine, and many areas of administration and commerce. \]

We leave open the question of how, if at all, BFO would deal with numbers, sets, and other mathematical entities, and with propositions (conceived in the sense of ideal meanings). We foresee two avenues of future development in regard to these and other varieties of entities not currently covered by BFO. First, there will be incremental expansion of BFO in future versions. Second one can draw on resources at lower levels in the ontology hierarchy. The [Information Artifact Ontology](https://github.com/information-artifact-ontology/) and the [Ontology for Biomedical Investigations](http://obi-ontology.org/)), both of which are built on BFO, provide the resources to deal with numerical measurement results and with certain other mathematical entities.

### **Relations** {#relations}

Entities are linked together in relations, at the level of both instances and types \[16\]. Three groups of relations are distinguished.

1. Instance-level relations

   Your heart (instance-level) **continuant\_part\_of** your body **at** *t*  
   Your heart beating (instance-level) **has\_participant** your heart

2. Type-level relations

 human heart *continuant\_part\_of* human body  
 human heart beating process *has\_occurrent\_part* beat profile

3. Instance-type relations 

   John’s heart **instantiates** *human heart.*

In this document we discuss relations in all three groups.

Note that relations of none of these sorts are first-class entities (to see why not, see the discussion of the Bradley regress in \[20\]). However, there are first-class entities, such as *relational qualities* and *relational processes* (see below), which are relational in the sense that they link multiple relata. First-class entities are entities which have counterparts both at the level of instances (John’s act of kissing Mary yesterday) and at the level of universals (*kiss*, *act*, *person*).

### **Primitive and defined terms** {#primitive-and-defined-terms}

We use terms (such as ‘BFO:*object*’ or ‘Patrick Hayes’) to refer to entities, and relational expressions (such as ‘**has\_participant**’) to assert that relations obtain between such entities. note(ontology)\[For both terms and relational expressions in BFO, we distinguish between *primitive* and *defined*. ‘Entity’ is an example of one such primitive term. Primitive terms in a highest-level ontology such as BFO are terms that are so basic to our understanding of reality that there is no way of defining them in a non-circular fashion. For these, therefore, we can provide only elucidations, supplemented by examples and by axioms. \]

a(entity)\[Elucidation: An *entity* is anything that exists or has existed or will exist. \[001-001\]\]

as(entity)\[Examples: Julius Caesar\\, the Second World War\\, your body mass index\\, Verdi’s *Requiem*

\]

### **Definitions** {#definitions}

We distinguish between *terms* and *relational expressions*. Definitions of terms are required to be always of the form:

*A* \= Def. *B* which *D*s

where ‘*A*’ is the term to be defined, ‘*B*’ is its immediate parent in the relevant BFO-conformant ontology hierarchy, and ‘*D*’ is the differentiating criterion specifying what it is about certain *B*s in virtue of which they are *As*.

Examples (taken from the Foundational Model of Anatomy (FMA) \[44\]):

Cell \= Def. Anatomical structure which has as its boundary the external surface of a maximally connected plasma membrane.

Nucleated cell \= Def. Cell which has as its direct part a maximally connected part of protoplasm.

Anatomical boundary entity \=Def. Immaterial anatomical entity which is of one less dimension than the anatomical entity it bounds or demarcates from another anatomical entity.

Anatomical surface \=Def. Anatomical boundary entity which has two spatial dimensions.

Definitions for relational expressions are statements of necessary and sufficient conditions for the corresponding relation to hold. Examples are provided below, and in \[16\].

### **Avoiding is\_a overloading** {#avoiding-is_a-overloading}

In ordinary English the following assertions are equally grammatical:

(a) a human being is a mammal

(b) a professor is a human being

(c) John is a human being

(d) a restaurant in Palo Alto is a restaurant 

However, the meaning of ‘is a’ is quite different in each case, and ontologies which do not take account of these differences are guilty of what Guarino has called “‘is a’ overloading” \[80\]. Here only (a) and (b) are properly to be treated in terms of the *is\_a* relation between universals or types. (c) is an example of instantiation and (d) an example of (roughly) the relation between some collection of particulars and a universal which holds when the former is a subset of the extension of the latter. The reader should note that the English phrase ‘is a’ as used in what follows does not always appear in contexts where it means *is\_a* in the technical sense of ‘is a subtype of’ specified below.

The opposition between (a) and (b) concerns the distinction between two kinds of *is\_a* relations:

1) between rigid universals, which means: universals which are instantiated by their instances necessarily and which are thus, for each instance, instantiated at all times at which the instance exists, for example: Al all times at which John exists, John is a human being. Such universals are sometimes said to capture the nature or essence of their instances;  
2) between universals one or both of which is not rigid in this sense, for example (again): a professor is a human being; these examples are dealt with further below.

Note, again, that in our specification of BFO 2.0, universals themselves fall outside our domain of discourse (with the minor exception of the elucidation of *generically dependent continuant*). The mentioned dichotomy between rigid and non-rigid universals should thus be interpreted in such a way that it does not imply any assertion according to which there might be higher-order universals (for instance *rigid universal*) of which first-order universals would somehow be instances.

### **Universals and classes** {#universals-and-classes}

Universals have **instances**, which in BFO are in every case particulars (entities located in specific regions of space and time). Universals also have extensions, which we can think of as collections of their instances. (Traditionally the extension of a concept is viewed is set-theoretical terms as the set of all the things that fall under the concept.) Such extensions fall outside the scope of this specification, but it is important for the understanding of BFO that the distinction is recognized. It implies further distinctions not only between universals and their extensions but also  between universals and classes in general, including arbitrary classes such as: {the moon, Napoleon, redness}.  

Universals themselves are those general entities which need to be recognized in order to formulate both truths of natural science and analogous general assertions concerning (for example) material, social and informational artifacts.

Examples of universals in each of the mentioned realms include:

*Natural:* molecule, cell, mouse, planet, act of perception

*Material artifacts*: vehicle, revolver, pipette, pizza

*Social artifact*: meter, traffic law, organization, mortgage contract

*Information artifact*: database, ontology, email message, plan specification, experimental protocol

Universals are most clearly illustrated by considering the general terms – such as ‘electron’ or ‘cell’ – employed by scientific theories in the formulation of general truths \[19\]. But universals include also the general entities referred to by general terms employed in domains such as engineering, commerce, administration and intelligence analysis.

Whether an entity is a particular or a universal is not a matter of arbitrary choice or of convenience. It is not up to BFO to decide what universals exist in any given domain; this decision is made by domain experts \[19\], for example in forming their terminology. In all domains, universals are those general or repeatable entities that correspond to the terms used and reused by persons with domain expertise reused in multiple different contexts to refer to the multiple different particulars which are the instances of the corresponding types.

axiom(entity)\[All entities are either particular or universal.\] \[19, 22, 23, 97\]

axiom(entity)\[No entity is both a particular and a universal. \]

In the [Information Artifact Ontology](https://github.com/information-artifact-ontology/) universals are included among the targets of the IAO:**is\_about** relation. In this specification, however, we concentrate on particulars and on the instance-level relations that link them together \[16\]. That is, the categories referred to in this specification are in every case a category of particulars. A future version of BFO will provide a complementary treatment of universals in general.

### **The monohierarchy principle**  {#the-monohierarchy-principle}

BFO rests on a number of heuristic principles that are designed to advance its utility to formal reasoning. These take the form of simple rules – analogous to the rules of the road – that are designed to promote consistency in the making of both domain-neutral and domain-specific choices in ontology construction. \[19\] One heuristic principle of this kind – expressing what we can think of as a principle of good behavior in the realm of universals – asserts that the asserted taxonomies of types and subtypes in BFO-conformant ontologies should be genuine trees (in the graph-theoretic sense), so that each node in the graph of universals should have at most one asserted *is\_a* parent. (On the use of ‘asserted’ here, see \[19\].) This principle is of value not only because it supports a simple strategy for the formulation of definitions and thereby helps to prevent certain common kinds of error in ontology construction, but also because it brings technical benefits when ontologies are implemented computationally.

The strategy for ontology building that is recommended by users of BFO involves the creation, first, of asserted *is\_a* hierarchies conforming to BFO. This is in reflection of a heuristic assumption according to which the realm of universals is organized by the *is\_a* relation into taxonomic hierarchies of more and less general. Each such asserted hierarchy should be constructed as a monohierarchy \[19\], in which every node has at most one immediate parent. All universals which are the immediate children of any given universal are thereby subject to the monohierarchy principle. However, once a set of what we can think of as normalized monohierarchies has been asserted, then an ontology developer can use reasoning to infer multiple inheritance \[19, 83\].

Examples of general terms that are unproblematically such that they do *not* represent universals include:

* thing that has been measured  
* thing that is either a ﬂy or a music box  
* organism belonging to the King of Spain  
* injury due to piercing, cutting, crushing or pinching due to (by) slide trigger mechanism, scope or other gun part ([ICD-10-CM (2010)](http://en.wikisource.org/wiki/ICD-10-CM_\(2010\)/CHAPTER_20))

In some areas, for example government administration, we face the need for BFO-conformant ontologies where the divisions created are indeed subject to overlap. Thus a *professor* in a medical school may also be a *patient*. Here, too, however, as we shall see, it is still in many cases possible to preserve the monohierarchy principal by creating asserted hierarchies of the corresponding *roles*.

### **Determinables and determinates**  {#determinables-and-determinates}

Certain sorts of universals, represented by leaf nodes in a taxonomical hierarchy and typically associated with the possibility of continuous variation along a scale to which real-number measurement values can be assigned, are called ‘determinates’ (their ancestor universals are called ‘determinables’) \[71\].

Examples are:
  *37.0°C temperature*, *1.6 meter length*, *4 kg weight*  
with determinables  
 *temperature*, *length*, *mass*.

Such determinate universals are non-rigid, which means that the same instance may instantiate different determinate universals at different times. John’s weight, for example, is a certain *quality* instance inhering in John from the beginning to the end of his existence. It is something that we can measure at different times. This *quality* instance instantiates the same determinable universal *weight* throughout its existence. But it will instantiate different determinate weight universals at different times, for example (as described in the metric system of units): *4 kg weight, 104 kg weight,* *204 kg weight*, and so on. Note that the weights themselves are independent of whatever system of units is used in describing them. Thus the determinate universals here referred to would be instantiated – their instances would exist – even in a world in which the metric system of units – or any other system of units – had never existed. All that is required is that there exist bodies of the corresponding weights.

### **Specializations** {#specializations}

note(entity)\[In all areas of empirical inquiry we encounter general terms of two sorts. First are general terms which refer to universals or types:

* animal  
* tuberculosis  
* surgical procedure  
* disease

Second, are general terms used to refer to groups of entities which instantiate a given universal but do not correspond to the extension of any subuniversal of that universal because there is nothing intrinsic to the entities in question by virtue of which they – and only they – are counted as belonging to the given group. Examples are:

* animal purchased by the Emperor  
* tuberculosis diagnosed on a Wednesday  
* surgical procedure performed on a patient from Stockholm, person identified as candidate for clinical trial \#2056-555  
* person who is signatory of Form 656-PPV  
* painting by Leonardo da Vinci

Such terms, which represent what are called ‘specializations’ in \[81\], may need to be included in application ontologies developed to interoperate with BFO-conformant ontologies. The terms in question may then be defined as children of the corresponding lowest-level universals (for example: *animal*, *surgical procedure*, *disease*, *painting*). \]

### **Role universals** {#role-universals}

We distinguished above between rigid and non-rigid universals. Note(role)\[One major family of examples of non-rigid universals involves roles, and ontologies developed for corresponding administrative purposes may consist entirely of representatives of entities of this sort. Thus ‘professor’, defined as follows,

 *b* **instance\_of** *professor* **at** *t*

   *\=*Def. there is some *c*, *c* **instance\_of** *professor role* & *c* **inheres\_in** *b* **at** *t.*

denotes a non-rigid universal and so also do ‘nurse’, ‘student’, ‘colonel’, ‘taxpayer’, and so forth. (These terms are all, in the jargon of philosophy, phase sortals.) By using role terms in definitions, we can create a BFO conformant treatment of such entities drawing on the fact that, while an instance of *professor* may be simultaneously an instance of *trade union member*, no instance of the type *professor role* is also (at any time) an instance of the type *trade union member role* (any more than any instance of the type *color* is at any time an instance of the type *length*).

If an ontology of employment positions should be defined in terms of roles following the above pattern, this enables the ontology to do justice to the fact that individuals instantiate the corresponding universals –  *professor*, *sergeant*, *nurse* – only during certain phases in their lives.\]

### **Universals defined historically** {#universals-defined-historically}

Another important family of universals consists of universals defined by reference to historical conditions, for example: *biological father*, *unlocked door*, *retired major general*, and so forth. For such terms, in contrast to role universals, there is no simple rule for formulating definitions. In the case of ‘biological father’, for example, the definition would need to involve reference not only to the fact that each instance is a male organism, but also to the fact that the organism in question was the instigator of a process of fertilization which led to the birth of a second organism.

Why insist on such complex definitions? Why not simply introduce ‘biological father’ as another primitive term referring to a subtype of ‘human being’? The answer turns on the methodology for ontology creation, interoperation and quality control which BFO aims to support, and which is designed to bring it about that (a) the methodology tracks instances in reality in a way that is conformant with our scientific understanding \[67\], and (b) it does this in a way which helps to ensure that those developing ontologies in neighboring domains do so in a way that preserves consistency and interoperability \[19, 78\].

### **Relations defined for any entity** {#relations-defined-for-any-entity}

    1. ### **The instance\_of relation** {#the-instance_of-relation}

The **instance\_of** relation holds between particulars and universals. It comes in two forms, for continuants (*C*, *C*1, …) and occurrents (*P*, *P*1, …) as follows \[16\]:

*c ***instance\_of***C ***at***t* means: that the particular *continuant* entity *c* **instantiates** the universal *C* **at** *t*

*p ***instance\_of ***P* means: that the particular *occurrent* entity *p* **instantiates** the universal *P.*

Examples are, respectively:

John **instance\_of** *adult* **at** 2012, this laptop **instance\_of** *laptop* **at** 2012;

2012 **instance\_of** *temporal region*, John’s birth **instance\_of** *process.*

#### **The *is\_a* relation** {#the-is_a-relation}

The *is\_a* relation is the subtype or subuniversal relation between universals or types.

*C is\_a C*1 means: for all *c*, *t*, if *c ***instance\_of***C ***at***t*then *c ***instance\_of ***C*1**at ***t*

*P is\_a P*1 means: for all *p*, if *p ***instance\_of***P*then *p ***instance\_of ***P*1

where ‘*C*’*,* ‘*C*1’ stand for *continuant* types and ‘*P*’, ‘*P*1’ for *occurrent* types, respectively.

Examples are:

house *is\_a* building, symphony *is\_a* musical work of art;

promenade *is\_a* dance step, promise *is\_a* speech act

#### **The exists\_at relation** {#the-exists_at-relation}

a(exists\_at)\[Elucidation: **exists\_at:** a relation between a particular and some temporal region at which the particular exists

\[118-002\]

\]

a(exists\_at)\[Domain: *entity*\]

a(exists\_at)\[Range: *temporal region*\]

The domain of ‘Exists’ includes processes, where *t* is part of the span of the process*.* ‘Temporal region’ includes both temporal instants and temporal intervals.

### **The dichotomy of ‘continuant’ and ‘occurrent’** {#the-dichotomy-of-‘continuant’-and-‘occurrent’}

The dichotomy between continuant and occurrent ontologies forms the central organizing axis of the BFO ontology. The BFO view of this dichotomy derives in part from Zemach \[60\], who distinguishes between

* non-continuant entities, which Zemach calls ‘events’, are defined by the fact that they can be sliced along any spatial and temporal dimensions to yield parts (for example the first year of the life of your table; the entire life of your table top – as contrasted with the life of your table legs – and so forth).

An event, for Zemach, is an entity that exists, in its entirety, in the area defined by its spatiotemporal boundaries, and each part of this area contains a *part* of the whole event. There are indefinitely many ways to carve the world into events, some of which are useful and interesting (e.g., for the physicist) and some of which – the vast majority –create hodge-podge collections of no interest whatsoever. \[60, pp. 233 f.\]

note(continuant)\[Continuant entities are entities which can be sliced to yield parts only along the spatial dimension, yielding for example the parts of your table which we call its legs, its top, its nails. ‘My desk stretches from the window to the door. It has spatial parts, and can be sliced (in space) in two. With respect to time, however, a thing is a continuant.’ \[60, p. 240\] Some qualities can be sliced in this way also – for instance the color quality of a cube of Murano glass.

Thus you, for example, are a continuant, and your arms and legs are parts of you; your childhood, however, is not a part of you; rather, it is a part of your life, which is an occurrent. Continuants, as a matter of definition, are entities which have no parts along the time axis; in this sense continuants are extended only along one or more of the three spatial dimensions, not however along the temporal dimension. Spatial regions, for BFO, are continuants. Temporal and spatiotemporal regions are occurrents.

BFO generalizes from the above by allowing as continuants not only *things* (such as pencils and people), but also *entities that are dependent on things* (such as qualities and dispositions). And where events, for Zemach, are identified with the entire contents of some given spatiotemporal region, BFO allows that the same spatiotemporal region may be occupied by multiple different processes (as for example when your *running* process and your simultaneous process of *getting warmer*).\]

## **Specification** {#specification}

   1. ## **Relations of parthood** {#relations-of-parthood}

As our starting point in understanding the parthood relation, we take the axioms of Minimal Extensional Mereology as defined by Simons \[46, pp. 26-31\], assuming, with Simons, the axioms of first order predicate calculus. The axioms (reformulations of SA1-3 and SA6 in Simons’ numbering) are:

**Antisymmetry:** If *x* part of *y*, then if *y* part of *x*, then *x \= y.*

**Transitivity:** If *x* part of *y,* and *y* part\_of *z*, then *x* part\_of *z.*

**Weak Supplementation:** If *x* part\_of *y* & not *x* \= *y*, then there is some *z* such that (*z* part\_of *y* and *z* has no part in common with *x*).

**Unique Product:** If *x* and *y* have a part in common, then there is some unique *z* such that for all *w* (*w* is part of *z* if and only if (*w* is part of *x* and *w* is part of *y*))*.*

Where Simons takes as primitive the relation of proper parthood, we use here and in the remainder of this document parthood relations that include not only proper parthood but also identity as a special case. The corresponding proper\_part\_of relations are then defined in the obvious way as follows:

 *x* proper\_part\_of *y* \=Def. *x* part\_of *y* & not *x \= y.*

BFO 2.0 includes two relations of parthood, namely parthood as it obtains between continuants – called **continuant\_part\_of** – and parthood as it obtains between occurrents – called **occurrent\_part\_of**, as follows. Note that Simons’ axioms cited above are stated without reference to time, whereas some of the parthood relations BFO defines are temporally qualified. Therefore the relations and definitions described above are not relations in BFO, rather they serve as a templates used to define BFO’s relations.

#### **The continuant\_part\_of relation** {#the-continuant_part_of-relation}

   a(continuant\_part\_of)\[Elucidation: *b* **continuant\_part\_of** *c* **at** *t* \=Def. *b* is a part of *c* at *t* & *t* is a time & *b* and *c* are continuants. \[002-001\]\]

   a(continuant\_part\_of)\[Domain: continuant\]

   a(continuant\_part\_of)\[Range: continuant

   The range for ‘*t*’ (as in all cases throughout this document unless otherwise specified) is: temporal region.\]

   as(continuant\_part\_of)\[Examples: Mary’s arm **continuant\_part\_of** Mary in the time of her life prior to her operation\\; the Northern hemisphere of the planet Earth is a part of the planet Earth at all times at which the planet Earth exists. \]

   a(continuant\_part\_of)\[Axiom: **continuant\_part\_of** is antisymmetric. \[120-001\] \]

   a(continuant\_part\_of)\[Axiom: **continuant\_part\_of** is transitive. \[110-001\] \]

   a(continuant\_part\_of)\[Axiom: **continuant\_part\_of** satisfies weak supplementation. \[121-001\]

(What this means is that:

If *x* **continuant\_part\_of** *y* **at** *t* & not *x* \= *y*, then there is some *z* such that (*z* **continuant\_part\_of** *y* **at** *t* & there is no *w*(*w* **continuant\_part\_of** *z* & *w* **continuant\_part\_of** *x* **at** *t*)),

Here *z* is, as it were, some remainder that results when *x* is imagined to have been removed from *y.*)\]

a(continuant-part-of)\[Axiom: **continuant\_part\_of** satisfies unique product. \[122-001\] \]

a(continuant\_part\_of)\[Theorem: **continuant\_part\_of** is reflexive (every continuant entity is a **continuant\_part\_of** itself). \[111-002\] \]

#### **The occurrent\_part\_of relation** {#the-occurrent_part_of-relation}

   a(occurrent\_part\_of)\[Elucidation: *b* **occurrent\_part\_of** *c* \=Def. *b* is a part of *c* & *b* and *c* are occurrents. \[003-002\]\]

   a(occurrent\_part\_of)\[Domain: occurrent\]

   a(occurrent\_part\_of)\[Range: occurrent\]

   a(occurrent\_part\_of)\[Examples: Mary’s 5th birthday **occurrent\_part\_of** Mary’s life\\; the first set of the tennis match **occurrent\_part\_of** the tennis match. \]

   a(occurrent\_part\_of)\[Axiom: **occurrent\_part\_of** is antisymmetric. \[123-001\] \]

   a(occurrent\_part\_of)\[Axiom: **occurrent\_part\_of** is transitive. \[112-001\] \]

   a(occurrent\_part\_of)\[Axiom: **occurrent\_part\_of** satisfies weak supplementation. \[124-001\]\]

   a(occurrent\_part\_of)\[Axiom: **occurrent\_part\_of** satisfies unique product. \[125-001\] \]

   a(occurrent\_part\_of)\[Theorem: **occurrent\_part\_of** is reflexive (every occurrent entity is an occurrent\_part\_of itself). \[113-002\] \]

Note that in all of the above every entity is, trivially, note(continuant\_part\_of,occurrent\_part\_of)\[a (continuant or occurrent) part of itself. We appreciate that this is counterintuitive for some users, since it implies for example that President Obama is a part of himself. However it brings benefits in simplifying the logical formalism, and it captures an important feature of identity, namely that it is the limit case of mereological inclusion.\]

#### **Further relations defined in terms of parthood** {#further-relations-defined-in-terms-of-parthood}

Proper parthood relations can be easily defined, as follows:

For continuants:

a(proper\_continuant\_part\_of)\[Definition: *b* **proper\_continuant\_part\_of** *c* **at** *t* \=Def. *b* **continuant\_part\_of** *c* **at** *t*  & *b* and *c* are not identical. \[004-001\]\]

For occurrents:

a(proper\_occurrent\_part\_of)\[Definition: *b* **proper\_occurrent\_part\_of** *c* \=Def. *b* **occurrent\_part\_of** *c* & *b* and *c* are not identical. \[005-001\]\]

We can also define inverse relations:

For continuants:

a(has\_continuant\_part)\[Definition: *b* **has\_continuant\_part** *c* at *t* \= Def. *c* **continuant\_part\_of** *b* **at** *t.* \[006-001\]

\]

a(has\_proper\_continuant\_part)\[Definition: *b* **has\_proper\_continuant\_part** *c* at *t* \= Def. *c **proper\_*****continuant\_part\_of** *b* **at** *t.* \[XXX-001\]\]

For occurrents:

a(has\_occurrent\_part)\[Definition: *b* **has\_occurrent\_part** *c* \= Def. *c* **occurrent\_part\_of** *b*. \[007-001

\]

a(has\_proper\_occurrent\_part)\[Definition: *b* **has\_proper\_occurrent\_part** *c* \= Def. *c **proper\_*****occurrent\_part\_of** *b*. \[XXX-001\]\]

### **Continuant**  {#continuant}

The continuant branch of BFO 2.0 incorporates both material and immaterial continuants extended and potentially moving in space, and the spatial regions at which they are located and through which they move, and the associated spatial boundaries. (The approach is similar to the two-leveled approaches developed in \[69, 70\], though it avoids the reference to ‘quantities of matter’ or ‘bare matter’ which form their starting point.)

a(continuant)\[Elucidation: A *continuant* is an entity that persists, endures, or continues to exist through time while maintaining its identity. \[008-002\]\]

Continuants include also spatial regions. note(material entity)\[Material entities (continuants) can preserve their identity even while gaining and losing material parts. Continuants are contrasted with occurrents, which unfold themselves in successive **temporal parts** or phases \[60\]. \]

a(continuant)\[Axiom: if *b* is a *continuant* and if, for some *t*, *c* is **continuant\_part** of *b* at *t*, then *c* is a *continuant.* \[009-002\]\]

a(continuant)\[Axiom: if *b* is a *continuant* and if, for some *t*, *c* **has\_continuant\_part** *b* at *t*, then *c* is a *continuant.* \[126-001\]\]

If an occurrent occupies\_temporal\_region a 2-minute temporal region, then the occurrent is the sum of two non-overlapping **temporal parts** (see below), each of 1-minute duration. *Continuants* have no **temporal parts** in this sense.

note(ontology)\[BFO’s treatment of continuants and occurrents – as also its treatment of regions, /\*below – thus \*/rests on a dichotomy between space and time, and on the view that there are two perspectives on reality – earlier called the ‘SNAP’ and ‘SPAN’ perspectives, both of which are essential to the non-reductionist representation of reality as we understand it from the best available science \[30\]. At the same time, however, this dichotomy itself needs to be understood in such a way as to be consistent with those elements of our scientific understanding – including the physics of relativity – with which it might seem to stand in conflict. It must be consistent, above all, with what we know from physics about the entanglements of space and time both with each other, and with matter and causality. The starting point for our approach in this connection is well-captured by Simons:

the evidence that relativity theory forces us to abandon the ontology of continuants and events is slight and circumstantial. It is true that Minkowski diagrams represent time as simply another dimension along with the spatial ones, but we cannot argue from a diagram, which is only a convenient form of representation. A closer examination of the concepts and principles of relativity shows that they rest squarely on the ontology of things and events. A *world-line* is a sum of events, all of which involve a single *material body*; any two events on the same world-line are *genidentical.* That which cannot be accelerated up to or beyond the speed of light is something with a non-zero mass. But only a continuant can have a mass. In like fashion, the measuring rods and clocks of special relativity, which travel round from place to place, are as assuredly continuants as the emission and absorption of light signals are events. Nor does relativity entail that large continuants have temporal as well as spatial parts. It simply means that the questions as to which parts large continuants have at a given time have no absolute answer, but depend on fixing which events (such as gains and losses of parts) occur simultaneously. Whether body of gas A detaches itself from a large star before, after, or simultaneously with the falling of body of gas B into the star, may depend on the inertial frame chosen. (\[4646\], pp. 126 f.; compare also \[5555, pp. 128-32\])

#### **Excursus on frames** {#excursus-on-frames}

The four dimensions of the spacetime continuum are not homogeneous. Rather there is one time-like and three space-like dimensions. This heterogeneity is sufficient, for the purposes of BFO, to justify our division of reality in a way that distinguishes spatial and temporal regions. In a future version, however, we will need to do justice to the fact that there are multiple ways of dividing up the spacetime continuum into spatial and temporal regions, corresponding to multiple frames that might be used by different observers. We believe that current users of BFO are not dealing with the sorts of physical data for which frame dependence is an issue, and the frames that they are using can be calibrated, where necessary, by using the simple mappings we use when for example translating between Eastern Standard Time and Greenwich Mean Time). We note, in anticipation of steps to be taken in the future, that spatiotemporal regions are frame-independent, and also that very many of the assertions formulated using BFO terms are themselves frame-independent; thus for example relations of parthood between material entities are *intrinsic*, in the sense that if *b* is part of *c* at some time in one frame, then *b* is part of *c* at some time in all frames. \]

### **Relation of specific dependence** {#relation-of-specific-dependence}

Specific dependence is a relation (henceforth: **s-depends on**) that obtains between one entity and another when the first entity cannot exist unless the second entity exists also. This relation can be either one-sided, in the sense that *b* **s-depends\_on** *c*, but not (*c* **s-depends\_on** *b*), or reciprocal where *b* and *c* **s-depend\_on** each other. There are cases where a single entity is s-dependent on multiple other entities in either or both senses of ‘s-dependence’. In a future version of BFO, further varieties of dependence will be defined, including **boundary dependence****which holds between entities of lower dimension and the higher-dimensional entities which they bound. On the distinction between boundary dependence and specific dependence see \[72\].

a(s-depends on)\[Elucidation: To say that *b* **s-depends\_on** *c* **at** *t* is to say that    
b and c do not share common parts
& b is of a nature such that it cannot exist unless c exists
& b is not a boundary of c and b is not a site of which c is the host \[64\]. \[012-002\]\]

as(s-depends on)\[Domain: *specifically dependent continuant*\\; *process*; *process boundary*\]

Range:

range(s-depends on)\[for one-sided s-dependence: *independent continuant*;\] *process*

range(s-depends on)\[for reciprocal s-dependence: *dependent continuant*\\; *process*\]

as(s-depends on)\[Examples (for one-sided dependence): A pain **s-depends\_on** the organism that is experiencing the pain\\, a shape **s-depends\_on** the shaped object\\, a gait **s-depends\_on** the walking object. (All at some specific time.) An act of answering **s-depends\_on** a prior act of questioning.

Examples (for reciprocal dependence): hue, saturation and brightness mutually **s-depend\_on** each other. \]

Note that the first clause in the above ensures that parts of wholes (for example your heart, which is a part of you) do not **s-depend on** the wholes of which they are parts.

If *b* **s-depends\_on** *c* **at** *t* we can also say that *b*’s existence requires (necessitates) the existence of *c* \[66\], or that *b* is of necessity associated with some *c* *because* *b* is an instance of a certain universal*.* The s-dependence of an entity *b* on another entity *c* holds for the duration of the existence of *b*.

Thus for continuants *b* and *c*, if *c* is such that *b* **s-depends\_on** *c* **at** *t*, then if *c* ceases to exist so also does *b*. The ceasing to exist of *b* occurs as a matter of necessity (it is in a sense immediate and automatic). Thus **s-dependence** is different from the sort of dependence which is involved, for instance, when we assert that an organism is dependent on food or shelter; or that a child is dependent on its mother. Your body is dependent on molecules of oxygen for its life, not however for its existence. Similarly, **s-dependence** is different from the sort of dependence that is involved when we assert that every object requires, at any given time t, some spatial region at which it is **located** at that time. (We use ‘**occupies\_spatial\_region**’ for dependence of this sort.)

For occurrents, editor-note(occurrent)\[**s-dependence** obtains between every process and its participants in the sense that, as a matter of necessity, this process could not have existed unless these or those participants existed also. A *process* may have a succession of participants at different phases of its unfolding. Thus there may be different players on the field at different times during the course of a football game; but the *process* which is the entire game **s-depends\_on** all of these players nonetheless. Some temporal parts of this process will **s-depend\_on** on only some of the players.\]

editor-note(specifically depends on)\[**S-dependence** is just one type of dependence among many; it is what, in the literature, is referred to as ‘existential dependence’ \[87, 46, 65, 20\], since it has to do with the parasitism among entities *for their existence*\]; there are other types of dependence defined in terms of **specific dependence**, including **generic dependence** which is dealt with below. Other types of dependence not addressed in BFO 2.0 include:

* frame dependence (of spatial and temporal regions on spatiotemporal regions)
* dependence for origin (e.g. an artifact such as a spark plug depends on human designers and engineers for the *origin* of its existence, not however for its *continued existence*; you depend similarly on your parents for your origin, not however for your continued existence; the boundary of Iraq depended on certain decisions made by the British and French diplomats [Sir Mark Sykes](http://en.wikipedia.org/wiki/Mark_Sykes) and [François Georges-Picot](http://en.wikipedia.org/wiki/Fran%C3%A7ois_Georges-Picot) in 1916; it does not, however, depend on Sykes and Picot for its continued existence.

  a(s-depends on)\[Theorem: an *entity* does not **s-depend\_on** any of its (continuant or occurrent) parts or on anything it is part of. \[013-002\]\]

This follows trivially from the definition.

As we shall see when we consider the parts of *qualities* such as color and tone below, the parts of a dependent entity may reciprocally **s-depends\_on** each other. This idea has not hitherto been explicitly recognized in BFO, but it is documented at length in the literature on specific dependence \[1, 2, 3, 6, 20, 46\].

as(s-depends on)\[Axiom: If *occurrent b* **s-depends\_on** some *independent continuant* *c* **at** *t*, then *b* **s-depends\_on** *c* at every time at which *b* exists. \[015-002\]

Axiom: If *b* **s-depends\_on** *c* **at** *t* and *b* is a *continuant*, then *b* **s-depends\_on** *c* at every time at which *b* exists. \[016-001\]

Axiom: If *b* is a continuant and *b* **s-depends\_on** *c* **at** *t*, then  *b* exists **at** *t*. \[127-001\]

Axiom: If *b* is a continuant and *b* **s-depends\_on** *c* **at** *t*, then *c* exists **at** *t*. \[128-001\]

Axiom:  If *b* is an occurrent and *c* is a continuant and *b* **s-depends\_on** *c* **at** *t,* then *c* exists at some time during the temporal region spanned by *b.* \[129-001\]

Axiom: If *b* is an occurrent and *c* is an occurrent and *b* **s-depends\_on** *c* **at** *t,* then *c* exists at *t.* \[130-001\]\]

An *s-dependent continuant entity* cannot migrate from one independent continuant bearer to another.

The entities that **s-depends\_on** something include

* *specifically and generically dependent continuants*, which **s-depends\_on** in every case on one or more *independent continuants* which are their bearers, and which may in addition stand in **s-depends\_on** relations among themselves;

*occurrents*, which **s-depends\_on** in every case on one or more *independent continuants* which **participate** in them.

Occurrents may in addition stand in one-sided and reciprocal **s-depends\_on** relations to other s-dependent entities, including *qualities*, *dispositions* and *occurrents* (see \[46, chapter 8; 20, 22\] and the discussion of *process profiles*, below).

#### **Types of s-dependence** {#types-of-s-dependence}

Examples of **one-sided s-dependence** of a *dependent continuant* on an *independent continuant*:

* example(s-depends on)\[one-sided s-dependence of a dependent continuant on an independent continuant: an **instance** of *headache* **s-depends\_on** some *head*\]  
* example(s-depends on)\[one-sided s-dependence of a dependent continuant on an independent continuant: an **instance** of *temperature* **s-depends\_on** some organism\]

Example of **one-sided s-dependence** of a *process* on something:

* example(s-depends on)\[one-sided s-dependence of a process on something: an **instance** of *seeing* (a relational process) **s-depends\_on** some organism and on some seen entity, which may be an occurrent or a continuant\]  
* example(s-depends on)\[one-sided s-dependence of a process on something: a process of cell death **s-depends\_on** a cell\]

Examples of **reciprocal s-dependence** between *dependent continuants*:

* example(s-depends on)\[the two-sided reciprocal **s-dependence** of the *roles* of husband and wife \[20\]\]  
* example(s-depends on)\[the three-sided reciprocal **s-dependence** of the hue, saturation and brightness of a color \[45\]\]  
* example(s-depends on)\[the three-sided reciprocal **s-dependence** of the pitch, timbre and volume of a tone \[45\]\]

Note that mutually dependent entities are in every case also one-sidedly dependent on some relevant bearers.

Examples of **one-sided s-dependence** of an *occurrent* on an *independent continuant*:

* example(s-depends on)\[the one-sided dependence of an occurrent on an independent continuant:  handwave on a hand\]  
* example(s-depends on)\[the one-sided dependence of an occurrent on an independent continuant:  football match on the players, the ground, the ball\]

Examples of **one-sided s-dependence** of one *occurrent* on multiple *independent continuants*:

* example(s-depends on)\[one-sided s-dependence of one occurrent on multiple independent continuants: a relational *process* of hitting a ball with a cricket bat\]  
* example(s-depends on)\[one-sided s-dependence of one occurrent on multiple independent continuants: a relational *process* of paying cash to a merchant in exchange for a bag of figs\]

Examples of **one-sided s-dependence** of one *occurrent* on another

* example(s-depends on)\[one-sided s-dependence of one occurrent on another: a *process* of answering a question is dependent on a prior *process* of asking a question\]  
* example(s-depends on)\[one-sided s-dependence of one occurrent on another: a *process* of obeying a command is dependent on a prior *process* of issuing a command\]

Examples of **reciprocal s-dependence** between *occurrents*:

* example(s-depends on)\[reciprocal s-dependence between occurrents: in a game of chess the process of playing with the white pieces is mutually dependent on the process of playing with the black pieces\]
* example(s-depends on)\[reciprocal s-dependence between occurrents a process of buying and the associated process of selling\]  
* example(s-depends on)\[reciprocal s-dependence between occurrents: a process of increasing the volume of a portion of gas while temperature remains constant and the associated process of  decreasing the pressure exerted by the gas\]

note(s-depends on)\[An entity – for example an act of communication or a game of football – can **s-depends\_on** more than one entity. Complex phenomena for example in the psychological and social realms (such as inferring, commanding and requesting) or in the realm of multi-organismal biological processes (such as infection and resistance), will involve multiple families of dependence relations, involving both continuants and occurrents \[1, 4, 28\]\].

As the examples under the heading of one-sided **s-dependence** among *occurrents* show, note(s-depends on)\[the relation of **s-depends\_on** does not in every case require simultaneous existence of its relata. Note the difference between such cases and the cases of continuant universals defined historically: the act of answering depends existentially on the prior act of questioning; the human being who was baptized or who answered a question does not himself depend existentially on the prior act of baptism or answering. He would still exist even if these acts had never taken place. /\* A protein molecule that becomes phosphorylated existed before phosphorylation occurs and it might still have existed even though phosphorylation never occurred. \*/\]

### **Independent continuant** {#independent-continuant}

   a(independent continuant)\[Definition: *b* is an *independent continuant* \= Def. *b* is a *continuant* which is such that there is no *c* and no *t* such that *b* **s-depends\_on** *c* **at** *t.* \[017-002\]\]

   as(independent continuant)\[Examples: an atom\\, a molecule\\, an organism\\, a heart\\, a chair\\, the bottom right portion of a human torso\\, a leg\\; the interior of your mouth\\; a spatial region\\; an orchestra. \]

   a(independent continuant)\[Axiom: For every *independent continuant b* and time *t* during the region of time spanned by its life, there are *entities* which **s-depends\_on** *b* during *t*. \[018-002\]

We say ‘during *t*’ since there may be regions *t* such that no entity **s-depends\_on** *b* exactly in the region *t.* \]

Examples of entities that **s-depend\_on** *independent continuants* are: qualities, dispositions, processes.

### **Material entity** {#material-entity}

   a(material entity)\[Elucidation: A *material entity* is an *independent continuant* that has some portion of matter as proper or improper **continuant** **part.** \[019-002\]\]

   as(material entity)\[Examples: a human being\\, the undetached arm of a human being\\, an aggregate of human beings. \]

Every *material entity* is localized in space.

Every *material entity* can move in space.

a(material entity)\[Axiom: Every *entity* which has a *material entity* as **continuant part** is a *material entity*. \[020-002\]\]

a(continuant)\[Axiom: if *b* is a *material entity*, then there is some **temporal interval** (referred to below as a *one-dimensional temporal region*) during which *b* exists. \[011-002\]\]

Note: *Material entities* may persist for very short periods of time (as for example in the case of an atom of a highly unstable isotope).

![][image3]

**Figure 2: Subtypes of independent continuant**

a(material entity)\[Theorem: every *entity* of which a *material entity* is **continuant part** is also a *material entity.* \[021-002\]\]

note(material entity)\[‘Matter’ is intended to encompass both mass and energy (we will address the ontological treatment of portions of energy in a later version of BFO). A portion of matter is anything that includes elementary particles among its proper or improper parts: quarks and leptons, including electrons, as the smallest particles thus far discovered; baryons (including protons and neutrons) at a higher level of granularity; atoms and molecules at still higher levels, forming the cells, organs, organisms and other material entities studied by biologists, the portions of rock studied by geologists, the fossils studied by paleontologists, and so on.

*Material entities* are three-dimensional entities (entities extended in three spatial dimensions), as contrasted with the *processes* in which they participate, which are four-dimensional entities (entities extended also along the dimension of time).

According to the FMA, *material entities* may have *immaterial entities* as parts – including the *entities* identified below as *sites*; for example the interior (or ‘lumen’) of your small intestine is a part of your body. BFO 2.0 embodies a decision to follow the FMA here. \] (Note, however, that we do not follow follow the FMA in insisting on the rule that the parthood relation exists only between entities of the same number of dimensions; a point, for BFO, is part of a line; not however for the FMA \[88\].) Thus we allow **continuant\_part\_of** to include material wholes with immaterial parts, and recommend the use of the more specific relation of **material\_part\_of** where they need to be ruled out.

FMA considers three dimensional immaterial entities parts but not boundaries, by the dimensionality rule “A rule of *Dimensionality Consistency* enforces the distinction between boundary and partonomy relationships in the FMA.11 Part-whole relationships are valid only for entities of the same dimension;”  from Representing Complexity in Part-Whole Relationships within the Foundational Model of Anatomy

##### ***Subtypes of material entity*** {#subtypes-of-material-entity}

In what follows we define three children of ‘material entity’ – namely ‘object’, ‘object aggregate’; and ‘fiat object part’. Those using BFO for molecular biology and related matters may wish to use ‘material entity’ solely, and not concern themselves with these subdivisions. Those using BFO to deal with entities at higher levels of granularity – for example organisms, populations, organizations, institutions, will require the distinction between *object* and *object aggregate*. Those using BFO to deal with what the FMA calls regional parts – for example the wall of the cervical, thoracic and abdominal parts of the esophagus, respectively \[44\] – will require to distinguish between *object* and *fiat object part*.

Some might argue that the mentioned threefold distinction could be recreated for each corresponding domain ontology according to need, for example the distinction between ‘organism’, ‘population of organisms’, and ‘regional part of organism’ in an upper level ontology for biology. Since this would mean that multiple different domain ontologies would be called upon, in effect, to reinvent the same tripartite wheel over and over again, we provide the corresponding distinctions within BFO in what we hope is a suitably robust framework.

#### **Object** {#object}

note(object)\[BFO rests on the presupposition that at multiple micro-, meso- and macroscopic scales reality exhibits certain stable, spatially separated or separable material units, combined or combinable into aggregates of various sorts (for example organisms into what are called ‘populations’). Such units play a central role in almost all domains of natural science from particle physics to cosmology. Many scientific laws govern the units in question, employing general terms (such as ‘molecule’ or ‘planet’) referring to the types and subtypes of units, and also to the types and subtypes of the processes through which such units develop and interact. The division of reality into such *natural units* is at the heart of biological science, as also is the fact that these units may form higher-level units (as cells form multicellular organisms, objects, in BFO terms) and that they may also form *aggregates* of units, for example as cells form portions of tissue and organs form families, herds, breeds, species, and so on (object aggregates, in BFO terms).

At the same time, the division of certain portions of reality into *engineered units* (manufactured artifacts) is the basis of modern industrial technology, which rests on the distributed mass production of engineered parts through division of labor and on their assembly into larger, compound units such as cars and laptops. The division of portions of reality into units is one starting point for the phenomenon of *counting*.\]

Examples of units of special importance for the purposes of natural science include: example(object)\[atom\\, molecule\\, organelle\\, cell\\, organism\\, grain of sand\\, planet\\, star\]. These *material entities* are candidate examples of what are called note(object)\[‘*objects*’ /\*in BFO 2.0. Such units \*/are sometimes referred to as ‘grains’ \[74\], and are associated with specific ‘levels of granularity’ in what is seen as a layered structure of reality, with units at lower and more fine-grained levels being combined as parts into grains at higher, coarse-grained levels. Our proposals here are consistent with but are formulated independently of such granularity considerations.\]

In the following we document a set of conditions to be used when deciding whether entities of a given type should be represented as *objects* in the BFO sense. It is provided as precursor to a formal theory (of qualitative mereotopology \[5, 22, 36, 37, 39\]) of BFO:*object*.

We consider three candidate groups of examples of objects in the BFO sense, namely:

1. organisms, cells and potentially also biological entities of certain other sorts, including organs  
2. portions of solid matter such as rocks and lumps of iron  
3. engineered artifacts such as watches and cars.

##### ***Causal unity*** {#causal-unity}

Material entities under all of these headings are all *causally relatively isolated entities* in Ingarden’s sense \[47, 13\]. This means that they are both *structured* through a certain type of causal unity and *maximal* relative to this type of causal unity.

We first characterize causal unity in general; we then distinguish three types of causal unity corresponding to the three candidate families of BFO:*objects* (cells and organisms, solid portions of matter, machines and other engineered artifacts) listed above. We then describe what it is for an entity to be maximal relative to one or other of these types, and formulate in these terms an elucidation of ‘object’. Where smaller units form the low-level parts of such causally structured units, such units will typically survive the loss of causal unity, for example as occurs during phase transitions from solid to liquid to gas.)

note(object)\[To say that *b* is *causally unified* means:

*b* is a material entity which is such that its material parts are tied together in such a way that, in environments typical for *entities* of the type in question,

if *c,* a **continuant part** **of** *b* that is in the interior of *b* at *t*, is larger than a certain threshold size (which will be determined differently from case to case, depending on factors such as porosity of external cover) and is moved in space to be at *t′* at a location on the exterior of the spatial region that had been occupied by *b* at *t*, then *either b*’s other parts will be moved in coordinated fashion *or b* will be damaged (be affected, for example, by breakage or tearing) in the interval between *t* and *t′*.

causal changes in one part of *b* can have consequences for other parts of *b* without the mediation of any entity that lies on the exterior of *b.*

Material entities with no proper material parts would satisfy these conditions trivially. Candidate examples of types of causal unity for material entities of more complex sorts are as follows (this is not intended to be an exhaustive list):

 CU1: Causal unity via physical covering

Here the parts in the interior of the unified entity are combined together causally through a common membrane or other physical covering\\. The latter points outwards and may serve a protective function in relation to what lies on the exterior of the entity \[1313, 4747\].

Note that the physical covering may have holes (for example pores in your skin, shafts penetrating the planet’s outer crust, sockets where conduits to other entities are connected allowing transport of liquids or gases). The physical covering is nonetheless *connected* in the sense that (a) between every two points on its surface a continuous path can be traced which does not leave this surface, and also (b) the covering serves as a barrier preventing entities above a certain size threshold from entering from the outside or escaping from the inside \[7777, 91\].

Some organs in the interior of complex organisms manifest a causal unity of this type. Organs can survive detachment from their surroundings, for example in the case of transplant, with their membranes intact. The FMA \[4444\] defines ‘organ’ in this spirit as follows:

An anatomical structure which has as its direct parts portions of two or more types of tissue or two or more types of cardinal organ part which constitute a maximally connected anatomical structure demarcated predominantly by a bona fide anatomical surface. Examples: femur, biceps, liver, heart, skin, tracheobronchial tree, ovary.

CU2: Causal unity via internal physical forces

Here the material parts of a material entity are combined together causally by sufficiently strong physical forces, for example, by fundamental forces of strong and weak interaction, by covalent or ionic bonds, by metallic bonding, or more generally by forces of a type which makes the overall sum of forces strong enough to act in such a way as to hold the object together relative to the strength of attractive or destructive forces in its ordinary environmental neighborhood. (Few solid portions of matter in our everyday environment would survive very long on the face of a neutron star, but luckily that is not our ordinary environment.) In the case of larger portions of matter the constituent atoms are tightly bound to each other in a geometric lattice, either regularly (as in the case of portions of metal) or irregularly (as in an amorphous solid such as a portion of glass). Examples: *atoms in a molecule*, *molecules in an enzyme*, *grains of sand*, *lumps of iron.*

CU3: Causal unity via engineered assembly of components

Here the material parts of a material entity are combined together via mechanical assemblies joined for example through screws or other fasteners. The assemblies often involve parts which are reciprocally engineered to fit together, as in the case of dovetail joints, balls and bearings, nuts and bolts. A causal unity of this sort can be interrupted for a time, as when a watch is disassembled for repair, and then recreated in its original state. The material parts of an automobile, including the moving parts, constitute an object because of their relative rigidity: while these parts may move with respect to each other while they are still a part of the object, a given gear cannot move e.g., 10 ft., while the other parts do not. To allow for such movement, the automobile includes also immaterial parts, such as the interior of its engine cylinders (the space in which a piston travels) or the space occupied by driver and passengers.

We can now describe what it means for a material entity to be *maximal* relative to one or other of these three types of causal unity, and thereby introduce the BFO primitive *object*, as follows

To say that *b* is *maximal* relative to some criterion of causal unity CU*n* means:

*b* is causally unified relative to CU*n* at *t*

& if for some *t* and *c* (*b* **continuant\_part\_of** *c* **at** *t* & *c* is causally unified relative to the same CU*n*) then *b* and *c* are identical.

For example:

* relative to the causal unity criterion CU1: a cell or organism is maximal; your lower torso falls short of maximality; a pair of cells exceeds maximality.  
* relative to the causal unity criterion CU2: a continuous dumbbell-shaped lump of iron is maximal; the connecting portion falls short of maximality; a pair of such dumbbell-shaped lumps exceeds maximality.  
* relative to the causal unity criterion CU3: an armored vehicle is maximal; the portions of armor of an armored vehicle falls short of maximality; a pair of armored vehicles exceeds maximality.\]

##### ***Elucidation of bfo:object*** {#elucidation-of-bfo:object}

We cannot define ‘object’ in BFO simply by asserting that an entity is an object if and only if it is maximal relative to some causal unity criterion. This is because objects under all three of the headings around which our discussions are focused may have other, smaller objects as parts. A spark plug is an object according to criterion CU3; when inserted into a car to replace a defective spark plug, then it remains an object, but ceases to be maximal. Importantly, however, the spark plug as installed still instantiates a universal many instances of which are maximal. This suggests that we elucidate ‘object’ as follows:

a(object)\[Elucidation: *b* is an *object* means: *b* is a *material entity* which

manifests causal unity of one or other of the types CU*n* listed above

& is of a type (a material universal) instances of which are maximal relative to this criterion of causal unity. \[024-001\]\]

##### ***Objects can be joined to other objects*** {#objects-can-be-joined-to-other-objects}

note(object)\[Each *object* is such that there are *entities* of which we can assert unproblematically that they lie in its interior, and other *entities* of which we can assert unproblematically that they lie in its exterior. This may not be so for *entities* lying at or near the boundary between the interior and exterior. This means that two objects – for example the two cells depicted in Figure 3Figure 3 – may be arranged in such a way that there are of material entities that cross both of their boundaries, but which determinately belong to neither cell. Something similar obtains in certain cases of conjoined twins (see below).\]

![http://php.med.unsw.edu.au/cellbiology/images/0/00/Cell\_adhesion\_summary.png][image4]

**Figure 3: [An example of cell adhesion](http://php.med.unsw.edu.au/cellbiology/index.php?title=File:Cell_adhesion_summary.png)**

Some instances of any given BFO:*object* universal – for example *cell* or *organism* or *laptop –* are separated by spatial gaps from other instances of this same *object* universal.  The spatial gaps may be filled by a medium, for example of air or water. (There are cells not attached to other cells; there are spatially separated organisms, such as you and me. Peas in a pea pod are initially attached to the interior of the pea pod covering. Sperm initially float freely from each other; some sperm become fused with oocytes through a membrane fusion process.)

##### ***Objects may contain other objects as parts*** {#objects-may-contain-other-objects-as-parts}

They may do this, for example,

* by containing atoms and molecules as parts;  
* by containing cells as parts, for instance the collection of blood cells in your body;  
* by containing objects which are bonded to other objects of the same type in such a way that they cannot (for the relevant period of time) move separately, as in the case of the cells in your epithelium or the atoms in a molecule;  
* by containing objects which are connected by conduits or tracts which may themselves have covering membranes*.*

Clearly, *objects* may contain also *object aggregates* as parts. Some *objects*, as we saw, may also have immaterial parts (the lumen of your gut, the volume between the face and crystal through which the hands of a mechanical watch move) \[34\].

##### ***Conjoined twins*** {#conjoined-twins}

Some objects may change type from one time to the next (a fetus becomes a baby, which in turn becomes a child). Conjoined twins may be successfully separated. Two boats may be combined to form a single multi-hulled boat.

Whether each one of a pair of conjoined twins is or is not an object is not a trivial question, and there are different answers to the question as to what the proper ontological treatment of this case ought to be for different sorts of cases. Different types of conjoined twins will need to be treated differently, and that in cases where twins do not share vital organs an identification of each one of the pair as an object will yield a workable solution, but this need not be so for other cases. Certainly, the maximal CU1\-causally unified material entity here is the whole which they together form; accepting each twin as an object even prior to separation, however – thus as an instance of the material universal *human being* – is consistent with our elucidation of BFO:*object*.

#### **Object aggregate** {#object-aggregate}

(In this document we concentrate on the use of ‘aggregate’ as it appears in the term ‘object aggregate’. However, ‘aggregate’ should be understood as being generalizable to all continuant BFO categories. Thus for each BFO category *X*, the user of BFO has at his disposal also the category *aggregate of X* \[51\].)

First we define 

a(member\_part\_of)\[Definition: *b* **member\_part\_of** *c* **at** *t* \=Def. *b* is an *object*
& there is **at** *t* a mutually exhaus tive and pairwise disjoint partition of *c* into *objects* *x*1,  …, *x*n (for some *n* \> 1\) with *b* \= *xi*  for some 1 ≤ *i* ≤ *n.* \[026-004\]

a(member\_part\_of)\[Domain: *object*\]

a(member\_part\_of)\[Range: *object aggregate*\]

a(member\_part\_of)\[Theorem: if *b* **member\_part\_of** *c* **at** *t* then *b* **continuant\_part\_of** *c* **at** *t.* \[104-001\] \]

as(member\_part\_of)\[Examples: each tree in a forest is a member\_part of the forest\\; each piece in a chess set is a member part of the chess set; each Beatle in the collection called *The Beatles* is a member part of *The Beatles.* \]

a(object aggregate)\[Elucidation: *b* is an *object aggregate* means: *b* is a *material entity* consisting exactly of a plurality of *objects* as **member\_parts at** all times at which *b* exists. \[025-004\]\]

Thus axiom(object aggregate)\[if b is an *object aggregate*, then if *b* exists at *t*, there are *objects o*1, …,*o*n at *t* such that:

for all *x* (*x* **continuant\_part\_of** *b* **at** *t* iff *x* overlaps some *oi* **at** *t*) \]

Here ‘overlaps’ is used in the standard way to mean: ‘shares a common part with’.

definition(object-aggregate)\[An entity *b* is an object aggregate **at** *t* if and only if there is a mutually exhaustive and pairwise disjoint partition of *b* into objects **at** *t* \[63\]. \]

as(object aggregate)\[Examples: a symphony orchestra\\, the aggregate of bearings in a constant velocity axle joint\\, the nitrogen atoms in the atmosphere\\, a collection of cells in a blood biobank. \]

The **member parts** of an *object aggregate* are the proximal parts of the aggregate – those parts that determine the aggregate as an aggregate (sometimes referred to as ‘grains’ or ‘granular parts’ \[74\]).

Different sorts of examples of object aggregates satisfying further conditions, for example example(object aggregate)\[an organization is an aggregate whose **member parts** have roles of specific types (for example in a jazz band, a chess club, a football team)\\; a swarm of bees is an aggregate of members who are linked together through natural bonds\]; and so on.

Object aggregates may be example(object aggregate)\[defined through physical attachment: /\*(\*/the aggregate of atoms in a lump of granite\]), or example(object aggregate)\[defined through physical containment: /\*(\*/the aggregate of molecules of carbon dioxide in a sealed container\\, the aggregate of blood cells in your body\]). Object aggregates may be example(object aggregate)\[defined by fiat:/\*, for example in the case of \*/the aggregate of members of an organization\]; or example(object aggregate)\[defined via attributive delimitations such as: the patients in this hospital\\, the restaurants in Palo Alto\\, your collection of Meissen ceramic plates.\]

\[76\] provides a formal treatment of aggregates (there called ‘collections’) that is broadly consistent with the above except that it assumes that membership in a collection is fixed over time. However, as is true for many material entities, note(object aggregate)\[object aggregates may gain and lose parts while remaining numerically identical (one and the same individual) over time. This holds both for aggregates whose membership is determined naturally (the aggregate of cells in your body) and aggregates determined by fiat (a baseball team, a congressional committee).\]

#### **Fiat object part**  {#fiat-object-part}

Clearly not all material entities form separated or separable natural units in the way described above (see  \[12\]), and so there is – in dealing with extremities demarcated within a body, of mountains demarcated within mountain ranges, and so forth – a need for some way to do justice to material entities distinguished by fiat within larger object wholes, entities here called fiat object parts.

![http://www.webstuffscan.com/wp-content/uploads/2007/01/mount%20everest%20from%20space.jpg][image5]

**Figure 4: [Mount Everest from space](http://www.webstuffscan.com/wp-content/uploads/2007/01/mount%20everest%20from%20space.jpg)**

a(fiat object part)\[Elucidation: *b* is a *fiat object part* \= Def. *b* is a *material entity* which is such that
for all times *t*, if *b* exists **at** *t* then
there is some object *c* such that *b* **proper continuant\_part** of  *c* **at** *t* and *c* is demarcated from the remainder of *c* by a two-dimensional continuant fiat boundary*.* \[027-004\]\]

as(fiat object part)\[Examples: the upper and lower lobes of the left lung\\, the dorsal and ventral surfaces of the body\\, the Western hemisphere of the Earth\\, the FMA:*regional parts* of an intact human body. \]

Since *fiat object parts* are *material entities*, they also extend in space in three dimensions (in contrast to *continuant fiat boundaries*, introduced below).

Fiat object parts are contrasted with bona fide object parts, which are themselves objects (for example a cell is a bona fide object part of a multi-cellular organism), and are marked by bona fide boundaries, or in other words by *physical discontinuities* \[8, 9\], for example between the surface of your skin, or of your laptop, and the surrounding body of air. note(fiat object part)\[Most examples of fiat object parts are associated with theoretically drawn divisions\], for example example(fiat object part)\[the division of the brain into functional regions\\, the division of the planet into hemispheres\\, or with divisions drawn by cognitive subjects for practical reasons, such as the division of a cake (before slicing) into (what will become) slices (and thus **member parts** of an *object aggregate*). However, this does not mean that *fiat object parts* are dependent for their existence on divisions or delineations effected by cognitive subjects. If, for example, it is correct to conceive geological layers of the Earth as fiat object parts of the Earth, then even though these layers were first delineated in recent times, still existed long before such delineation and what holds of these layers (for example that the oldest layers are also the lowest layers) did not begin to hold because of our acts of delineation.

##### ***Treatment of material entity in BFO*** {#treatment-of-material-entity-in-bfo}

Examples viewed by some as problematic cases for the trichotomy of *fiat object part*, *object*, and *object aggregate* include:

a mussel on (and attached to) a rock, a slime mold, a pizza, a cloud, a galaxy, a railway train with engine and multiple carriages, a clonal stand of quaking aspen, a bacterial community (biofilm), a broken femur.

Note that, as Aristotle already clearly recognized, such problematic cases – which lie at or near the penumbra of instances defined by the categories in question – need not invalidate these categories. The existence of grey objects does not prove that there are not objects which are black and objects which are white; the existence of mules does not prove that there are not objects which are donkeys and objects which are horses. It does, however, show that the examples in question need to be addressed carefully in order to show how they can be fitted into the proposed scheme, for example by recognizing additional subdivisions \[29\].

Users of BFO first need to annotate data pertaining to such problematic cases, then they should use BFO:*material entity* in formulating the corresponding annotations. In the case of the following examples of *material entity* (thus of *continuants*):

example(material entity)\[an epidemic\\, a hurricane\\, a tornado\\, a forest fire\\, a flame\\, a puff of smoke\\, a sea wave\\, an energy wave\]

We plan to provide further analyses in the course of developing the next version of BFO. What makes all of these entities continuants is that they can move and change their shape and other qualities with time while preserving their identity. Some of them are even baptized with proper names.

Already it is clear that BFO or its conformant domain-ontologies will in due course need to recognize also other sub-universals of *material entity*, in addition to *object, object aggregate* and *fiat object part* – for instance: *aggregate of fiat object parts* \[29, 82\]. Thus the treatment of *material entity* in BFO 2.0 should not be associated with any closure axiom pertaining to the three distinguished categories, in other words it should not be associated with any claim to exhaustivity.

Our strategy for dealing with such sub-universals is to create a central repository where users of BFO can create BFO-conformant extensions (extending BFO in ways that meet the criterion that they are formal- rather than domain-ontological). The terms in this repository can then be adopted by others according to need, and incorporated into BFO if adopted by multiple communities of users.

### **Immaterial entity** {#immaterial-entity}

*Immaterial entities* are independent continuants which contain no material entities as parts. The roots of BFO’s treatment of such entities lie in the application of theories of qualitative spatial reasoning to the geospatial world, for example as outlined in \[49, 69\], in the treatment of holes by Casati and Varzi \[48\], in the treatment of niches by Smith and Varzi \[7, 10\] and in the treatment of cavities in the FMA \[43, 44, 34, 35\].

Rosse and Mejino provide the following rationale for including terms for surfaces, lines, and points in the FMA:

Although anatomical texts and medical terminologies with an anatomical content deal only superﬁcially, if at all, with anatomical surfaces, lines, and points, it is nevertheless necessary to represent these entities explicitly and comprehensively in the FMA in order to describe boundary and adjacency relationships of material physical anatomical entities and spaces. \[4343\]

note(immaterial entity)\[*Immaterial entities* are divided into two subgroups:

1. *boundaries* and *sites*, which bound, or are demarcated in relation, to *material entities*, and which can thus change location, shape and size and as their material hosts move or change shape or size (for example: your nasal passage; the hold of a ship; the boundary of Wales (which moves with the rotation of the Earth) \[38, 7, 10\]);
2. *spatial regions*, which exist independently of *material entities*, and which thus do not change.\]

note(continuant part of)\[Immaterial entities /\*under 1\. \*/are in some cases **continuant parts** of their material hosts. Thus the hold of a ship, for example, is a part of the ship; it may itself have parts, which may have names (used for example by ship stow planners, customs inspectors, and the like). Immaterial entities under both 1\. and 2\. can be of zero, one, two or three dimensions.

We define:

a(immaterial entity)\[Definition: *a* is an *immaterial entity* \= Def. *a* is an *independent continuant* that has no *material entities* as **parts**. \[028-001\]\]

#### **Continuant fiat boundary** {#continuant-fiat-boundary}

   a(continuant fiat boundary)\[Definition: *b* is a *continuant fiat boundary \=* Def. *b* is an *immaterial entity* that is of zero, one or two dimensions, which does not include a *spatial region* as **part**, and whose location is defined in relation to some material entity. \[029-001\]\]

   a(continuant fiat boundary)\[ Axiom: Every *continuant fiat boundary* is **located at** some *spatial region* at every time at which it exists\] (but not necessarily at the same spatial region from one time to the next) \[XXX-001\].

Intuitively, note(continuant fiat boundary)\[a *continuant fiat boundary* is a boundary of some material entity (for example: the plane separating the Northern and Southern hemispheres; the North Pole), or it is a boundary of some immaterial entity (for example of some portion of airspace).

Three basic kinds of *continuant fiat boundary* can be distinguished (together with various combination kinds \[29\]):

* *continuant fiat boundaries* which delineate fiat parts within the interiors of material entities – for example the fiat boundary between the northern and southern hemispheres of the Earth; the North Pole; the fiat boundary which separates Utah from Colorado  
* *continuant fiat boundaries* which delineate holes or cavities, for example fiat boundaries of the type referred to by the FMA as ‘plane of anatomical orifice’.
* combination *continuant fiat boundaries* such as the border of Israel, which contains both rectilinear fiat boundaries along the border with Egypt and fiat boundaries tracking physical discontinuities on the Mediterranean side and along the borders with Syria and Jordan.

Note that boundaries are dependent entities, but they are not dependent in either of the senses of **s-** and **g-dependence**.\]

##### ***zero-dimensional continuant fiat boundary*** {#zero-dimensional-continuant-fiat-boundary}

a(zero-dimensional continuant fiat boundary)\[Elucidation: a *zero-dimensional continuant fiat boundary* is a fiat point. \[031-001\]\]

as(zero-dimensional continuant fiat boundary)\[Examples: the geographic North Pole\\; the quadripoint where the boundaries of Colorado, Utah, New Mexico, and Arizona meet\\, the point of origin of some spatial coordinate system.\]

##### ***one-dimensional continuant fiat boundary*** {#one-dimensional-continuant-fiat-boundary}

a(one-dimensional continuant fiat boundary)\[Elucidation: a *one-dimensional continuant fiat boundary* is a continuous fiat line*c*. \[032-001\]\]

as(one-dimensional continuant fiat boundary)\[Examples: The Equator\\, all geopolitical boundaries\\, all lines of latitude and longitude\\, the median sulcus of your tongue\\, the line separating the outer surface of the mucosa of the lower lip from the outer surface of the skin of the chin. \]

To say that a one-dimensional continuant fiat boundary is *continuous* is to assert that it includes no gaps (thus it is a single straight or curved line).

##### ***two-dimensional continuant fiat boundary*** {#two-dimensional-continuant-fiat-boundary}

a(two-dimensional continuant fiat boundary)\[Elucidation: a *two-dimensional continuant fiat boundary* (surface) is a self-connected fiat surface. \[033-001\]\]

‘Self-connected’ is to be understood in the usual topological sense: thus an entity *b* is self-connected if and only if: given any two points in *b*, a continuous line can be traced in *b* which connects these points.

From this it follows that a two-dimensional continuant fiat boundary (surface) may have holes, as for example in the case of the surface of one side of a compact disk.

#### **Site** {#site}

   a(site)\[Elucidation: *b* is a *site* means: *b* is a three-dimensional *immaterial entity* that is (partially or wholly) bounded by a *material entity* or it is a three-dimensional immaterial part thereof. \[034-002\]

   Axiom: Every *site* **occupies\_spatial\_**region some *three-dimensional spatial region* at every time at which it exists. \[153-001\]\]

   as(site)\[Examples: a hole in the interior of a portion of cheese\\, a rabbit hole\\, the interior of your bedroom\\, the Grand Canyon\\, the Piazza San Marco\\, an air traffic control region defined in the airspace above an airport\\, the interior of a kangaroo pouch\\, your left nostril (a fiat part – the opening – of your left nasal cavity) \\, the lumen of your gut\\, the hold of a ship\\, the cockpit of an aircraft\\, the interior of the trunk of your car\\, the interior of your refrigerator\\, the interior of your office\\, [Manhattan Canyon](http://www.flickr.com/photos/tonyshi/4385628183/)) \]

Each immaterial entity coincides at any given time with some spatial region, but, as in the case of material entities, which spatial region this is may vary with time. As the ship moves through space, so its hold moves also. As you pinch and unpinch your nose, so your nasal passages shrink and expand.

The above elucidations of *site* and of the different kinds of *continuant fiat boundary* will be replaced by definitions when *dimension* and **boundary dependence** have been defined within the BFO framework.

Note: *Sites* may be bounded by various combinations of boundaries of different sorts \[9\]. Thus the Mont Blanc Tunnel is bounded by fiat surfaces at either end.

Many of the terms used to refer to sites are ambiguous in that they are also used to refer to corresponding material entities. To say that ‘detergent is pumped into the tanksite’ is to assert that the detergent is pumped into the cavity which forms the interior of the tankmaterial\_entity (rather than into, say, the portion of metal which bounds this cavity). To say that ‘Mary lives in Salzburgsite’ is to assert not that Mary lives in a certain material collection of buildings, ashphalt, rocks, trees, and so forth, but rather that she lives in the spatial niche \[7\] bounded by this material collection.

The region of class A controlled airspace associated with any given airport is a *site*, since it is a three-dimensional continuant part of the *site* formed by the sum of this region with the portion of the class E region that is bounded by the surface of the Earth (see Figure 5Figure 5).

![http://ontology.buffalo.edu/smith/varia/controlledairspace/glos\_aclass.jpg][image6]

**Figure 5: [Airspace classes](http://ontology.buffalo.edu/smith/varia/controlledairspace/glos_aclass.jpg)**

Cavities within what OGMS calls the ‘[extended organism](http://www.berkeleybop.org/obo/OGMS:0000087)’ are sites; they are, following the FMA, parts of the organism if they are part of its anatomical *Bauplan* \[43, 44\]*.* A cavity formed by a swallowed drug-capsule that is half-filled with powder is for this reason not a part of the organism. The cavity formed by the interior of the capsule that is not filled with powder is for the same reason not a part of the organism. These sites are however parts of the OGMS:*extended organism*.

**Figure 6: Examples of types of site:  1\) the interior of an egg; 2\) the interior of a rabbit hole; 3\) the environment of a pasturing cow**

#### **Spatial region** {#spatial-region}

We recommend that users of BFO region terms specify the coordinate frame in terms of which their spatial and temporal data are represented. When dealing with spatial regions on the surface of the Earth, for example, this will be the coordinate frame of latitude and longitude, potentially supplemented by the dimension of altitude. Lines of latitude and longitude are *two-dimensional* *continuant fiat boundaries* which move as the planet rotates and as it moves in orbiting the sun; however, they are by definition at rest relative to the coordinate frame which they determine.

Given the terminology of spatial frames, we can elucidate ‘space’ as in BFO 1.1, as the maximal **instance** of the universal *spatial region*, relative to some frame, as follows:

a(spatial region)\[Elucidation: A *spatial region* is a *continuant entity* that is a **continuant\_part\_of** spaceR as defined relative to some frame R. \[035-001\]\]

‘Maximal’, in the above, means that, if there were an instance entity that inclued spaceR as proper part, then it would not itself be a spatial region. SpaceR is, in common parlance, the whole of space (as defined in reference to some frame R). The term ‘space’ is the name of a certain particular. As we shall see below, spacetime and time, similarly, are maximal instances of spatiotemporal and temporal region, respectively.

a(spatial region)\[Axiom: All **continuant parts** of *spatial regions* are *spatial regions*. \[036-001\]\]

Material entities have qualities of shape and size because they are located at *spatial regions* which instantiate corresponding shape and size universals.

Axiom: axiom(material entity)\[Every *material entity* is located at some three-dimensional spatial region at every time at which it exists\] \[XXX-001\]

*Object boundaries* and *sites* are distinguished from the spatial regions which they occupy at any given time as follows:

(1) *Object boundaries* and *sites* move when their material host moves, and they change shape or size when their material host changes shape or size.

(2) *Spatial regions* are, by definition, at rest relative to the pertinent coordinate frame.

##### ***zero-dimensional spatial region*** {#zero-dimensional-spatial-region}

a(zero-dimensional spatial region)\[Elucidation: A *zero-dimensional spatial region* is a point in space. \[037-001\]\]

##### ***one-dimensional spatial region***  {#one-dimensional-spatial-region}

a(one-dimensional spatial region)\[Elucidation: A *one-dimensional spatial region* is a line or aggregate of lines stretching from one point in space to another. \[038-001\]\]

a(one-dimensional spatial region)\[Examples: an edge of a cube-shaped portion of space.\]

A line is a one-dimensional spatial region.

##### ***two-dimensional spatial region (a spatial area)*** {#two-dimensional-spatial-region-(a-spatial-area)}

a(two-dimensional spatial region)\[Elucidation: A *two-dimensional spatial region* is a spatial region that is of two dimensions. \[039-001\]\]

as(two-dimensional spatial region)\[Examples: the surface of a sphere-shaped part of space\\, an infinitely thin plane in space. \]

A surface is a two-dimensional spatial region.

##### ***three-dimensional spatial region (a spatial volume)*** {#three-dimensional-spatial-region-(a-spatial-volume)}

a(three-dimensional spatial region)\[Elucidation: A *three-dimensional spatial region* is a spatial region that is of three dimensions. \[040-001\]\]

as(three-dimensional spatial region)\[Examples: a cube-shaped region of space\\, a sphere-shaped region of space,

\]

#### **Location** {#location}

##### ***The occupies\_spatial\_region relation*** {#the-occupies_spatial_region-relation}

DEFINITION: an independent continuant entity *c* **occupies\_spatial\_region** *r* **at** *t* iff every part of *c* occupies some part of *r* at *t* and no part of *c* occupies any spatial region that is not a part of *r* at *t* at(occupies\_spatial\_region)\[ \[041-002\]\]

a(occupies\_spatial\_region)\[Domain: independent continuant\]

a(occupies\_spatial\_region)\[Range: spatial region\]

EXAMPLE: part of Amundsen’s foot occupies\_spatial\_region the South Pole at (some temporal instant in the temporal region) December 14, 1911

**Occupies\_spatial\_region** is a primitive relation between an *independent continuant*, a spatial region which it occupies, and a time. This is a relation of exact location; the size, shape, orientation and location of *b* fit exactly to the size, shape and location of *r.* Thus for example if there are cavities in the interior of *b* then there are corresponding holes in the interior of *r.*

Clearly, normal usage will involve not assertions of exact location, but rather more liberal statements for example: John is in London, Mary is in her hotel room, Carlo is in his mother’s womb, which will involve assertions of which are formulated using the **located\_in** relation as defined below.

a(occupies\_spatial\_region)\[Axiom: every region *r* **occupies\_spatial\_region** *r* at all times. \[042-002\]\]

a(occupies\_spatial\_region)\[Axiom: if *b* **occupies\_spatial\_region** *r* **at** *t* & *b′* **continuant\_part\_of** *b* **at** *t*, then there is some *r′* which is **continuant\_part\_of** *r* **at** *t* such that *b′*  **occupies\_spatial\_region** *r*′ at *t*. \[043-001\]\]

##### ***The located\_in relation*** {#the-located_in-relation}

The **located\_in** relation links independent continuants which are not spatial regions.

at(located\_in)\[Definition: *b***located\_in** *c* **at***t* \= Def. *b* and *c* are *independent continuants*, and the *region **at** which b* is **located at** *t* is a (proper or improper) **continuant\_part\_of** the *region* **at** which *c* is **located at** *t*. \[045-001\]

Two independent continuants are related by the **located\_in** relation at some time *t* iff the spatial region which the first occupies at *t* is a (proper or improper) **continuant\_part\_of** the spatial region which the second occupies at *t* \]

a(located\_in)\[Domain: independent continuant\]

a(located\_in)\[Range: independent continuant\]

as(located\_in)\[Examples: your arm **located\_in** your body\\; this stem cell **located\_in** this portion of bone marrow\\; this portion of cocaine **located\_in** this portion of blood\\; Mary **located\_in** Salzburg\\; the Empire State Building **located\_in** New York. \]

at(located\_in)\[Axiom: **Located\_in** is transitive. \[046-001\] /\*

*b* **located\_in** *c* at *t* and *c* **located\_in** *d* at *t*, then *b* **located\_in** *d at t*\*/\]

as(independent continuant)\[Axiom: For any independent continuant *b* and any time *t* there is some *spatial region r* such that *b* is **located\_in** *r* **at** *t.* \[134-001\]

Axiom: For any independent continuant *b* and any time *t*, if *b* is **located\_in** *r* **at** *t* then there is some region *r′* that is **continuant\_part\_of** *r* and such that *b* is **occupies\_spatial\_region** *r′* **at** *t.*   \[135-001\]\]

For all independent continuants *a* and *b*, parthood implies location.

at(continuant\_part\_of)\[Axiom: if *b* **continuant\_part\_of** *c* **at** *t* and *b* is an independent continuant, then *b* is **located\_in** *c* **at** *t.* \[047-002\] \]

Sites and boundaries, too, may stand in the **located\_in** relation, as for example when we say that 5th Avenue is **located in** New York, or that a portion of the Franco-German boundary is **located in** the Rhein valley.

##### ***Problem cases for the located\_in relation***  {#problem-cases-for-the-located_in-relation}

As pointed out in \[52\] there are problem cases for this account, in that, for example an insect located near the stem of a wine glass would be counted as **located\_in** the wine glass; similarly crumbs placed in the hole of a donut would be counted as **located\_in** the donut. Briefly, users of **located\_in** should use an intuitive test to the effect that: if *b* is not in the interior of *c* but is rather in some hole or cavity attached to *c*’s outer boundary, then *b* **located\_in** *c* will obtain only if this hole is a fillable hole in the sense defined by Casati and Varzi \[52\]. The cup-shaped hole in the wine glass is fillable in this sense; not however the concave spaces around the stem.

##### ***Chaining rules*** {#chaining-rules}

a(located\_in)\[Axiom: for all independent continuants *b*, *c*, and *d*:  if *b* **continuant\_part\_of** *c* **at** *t* & *c* **located\_in** *d* **at** *t*, then *b* **located\_in** *d* **at** *t*. \[048-001\]\]

a(located\_in)\[Axiom: for all independent continuants *b*, *c*, and *d*:  if *b* **located\_in** *c* **at** *t* & *c* **continuant\_part\_of** *d* **at** *t*, then *b* **located\_in** *d* **at** *t*. \[049-001\]\]

### **Specifically dependent continuant**  {#specifically-dependent-continuant}

   a(specifically dependent continuant)\[Definition: *b* is a *specifically dependent continuant* \= Def. *b* is a *continuant* & there is some *independent continuant* *c* which is not a *spatial region* and which is such that *b* **s-depends\_on** *c* **at** every time *t* during the course of *b*’s existence. \[050-003\]

   a(specifically dependent continuant)\[Definition: *b* is a *relational specifically dependent continuant* \= Def. *b* is a *specifically dependent continuant* and there are *n* \> 1 independent continuants *c*1, … *cn* which

1) are not spatial regions
2) are such that for all 1 ≤ *i \< j* ≤ *n*, *ci*  and *cj* share no common parts,
3) are such that for each 1 ≤ *i* ≤ *n*, *b* **s-depends\_on** *ci* **at** every time *t* during the course of *b*’s existence \[131-004\].\]

   as(specifically dependent continuant)\[Examples: of one-sided *specifically dependent continuants*: the mass of this tomato\\, the pink color of a medium rare piece of grilled filet mignon at its center\\, the smell of this portion of mozzarella\\, the disposition of this fish to decay\\, the role of being a doctor\\, the function of this heart: to pump blood\\, the shape of this hole.\]

   as(specifically dependent continuant)\[Examples: of *relational dependent continuants* (multiple bearers): John’s love for Mary, the ownership relation between John and this statue, the relation of authority between John and his subordinates.\]

John’s ownership of his statue is an instance of an ownership relation, a relationally dependent continuant that starts to exist at a certain time and ceases to exist at some later time, for example because the statue is destroyed.

Sub-types of *specifically dependent continuant* recognized by BFO are:

![][image7]

Intuitively **s-dependence** holds only where the **s-dependent** entity or entities have no material parts. The accused in a court of law has an **s-dependent** role, but he himself is a human being, and thus not an **s-dependent** entity.

at(s-depends on)\[Axiom: If *b* is **s-depends\_on** something at some time, then *b* is not a *material entity.* \[052-001\]\]

#### **The inheres\_in and bearer\_of relations** {#the-inheres_in-and-bearer_of-relations}

   at(inheres\_in)\[Definition: *b* **inheres\_in** *c* **at** *t* \=Def. *b* is a *dependent continuant* & *c* is an *independent continuant* that is not a *spatial region* & *b* **s-depends\_on** *c* **at** *t*. \[051-002\]\]

   a(inheres\_in)\[Domain: *specifically dependent continuant*\]

   a(inheres\_in)\[Range: *independent continuant* that is not a *spatial region*\]

note(inheres\_in)\[**Inherence** is a subrelation of **s-depends\_on** which holds between a *dependent continuant* and an *independent continuant* that is not a *spatial region*. Since dependent continuants cannot migrate from one independent continuant bearer to another, it follows that if *b* **s-depends\_on** independent continuant *c* at some time, then *b* **s-depends\_on** *c* at all times at which *b* exists. Inherence is in this sense redundantly time-indexed. Thus **inheres\_in** is just the **s-depends\_on** relation as it holds between specifically dependent continuants and the independent continuants that are not spatial regions upon which they depend.

For example, consider the particular instance of openness inhering in my mouth at *t* as I prepare to take a bite out of a donut, followed by a closedness at *t*\+1 when I bite the donut and start chewing. The openness instance is then shortlived, and to say that it **s-depends\_on** my mouth at all times at which this openness exists, means: at all times during this short life. Every time you make a fist, you make a new (instance of the universal) fist. (Every time your hand has the fist-shaped quality, there is created a new instance of the universal fist-shaped quality.)\]

at(bearer\_of)\[Definition: *b* **bearer\_of** *c* **at** *t \=*Def. *c* **s-depends\_on** *b* **at** *t* & *b* is an *independent continuant* that is not a *spatial region.* \[053-004\]\]

a(bearer\_of)\[Domain:  *independent continuant* that is not a *spatial region*\]

a(bearer\_of)\[Range: *specifically dependent continuant*\]

**Bearer\_of** in contrast to inherence, is not redundantly time-indexed, since if *b* is a bearer of some *c* only at some time during which *b* exists, but *c* cannot similarly inhere in *b* only at some times during which *c* exists.

See also the discussion of **has\_material\_basis\_in** below.

#### **No s-dependence of higher order**  {#no-s-dependence-of-higher-order}

BFO does not recognize universals of higher order (for example, the universal *universal*). All universals are instantiated by instance entities which are not universals.

Similarly, BFO does not recognize **s-dependence** of higher order. Thus there are no **s-dependence** structures of the sort in Figure 6Figure 7:

**Figure 67: Higher-order dependence: *c* would here be an independent continuant, *b* a dependent continuant dependent on *c*, and *a* a second dependent continuant dependent on *b* but not on *c*.**

If *b* is dependent on *c* and *c* is dependent on *d* then it must be that there obtains some structure as in Figure 7Figure 8:

**Figure 78: Examples of (left:) *Mutual dependence* and (right:) *transitive dependence***

In case of mutual dependence (Figure 7Figure 8, left), *b* and *c* are both (one-sidedly) dependent on *d* and (reciprocally) dependent on each other.

Cases like those on the left in Figure 7Figure 8 may be called reciprocally s-dependent continuants:

as(specifically dependent continuant)\[Example: Reciprocal *specifically dependent continuants*: the function of this key to open this lock and the mutually dependent disposition of this lock: to be opened by this key\\; the mutual dependence of the role *predator* and the role *prey* as played by two organisms in a given interaction\\; the mutual dependence of proton donors and proton acceptors in chemical reactions \[79\]. \]

For BFO there are, for example, no qualities of roles; and similarly there are no roles of qualities; however, there are qualities – such as the quality of pressure and temperature of a body of gas in a certain container – which are both dependent on each other and on their common bearer.

There are no dispositions of qualities and no functions of dispositions. Some dispositions are functions, but no disposition has a function. And there are no higher order processes in which processes themselves would change. (See the section on Process Profiles below.) In all such cases, the recommendation on developers of BFO-conformant ontologies is to seek a relevant relatum in the underlying material bearer (the *thing* or *res*), called ‘material basis’ in what follows.

In a sense, therefore, qualities of qualities are qualities of the underlying bearer. The shape of the redness on John’s arm, for example, is not a quality of the redness. It is, like the redness itself, a quality of a certain (fiat) portion of the surface of the arm.

The above can be summarized as follows:

a(s-depends on)\[Axiom: if *b* **s-depends\_on** *c* **at** *t* & *c* **s-depends\_on** *d* **at** *t* then *b* **s-depends\_on** *d* **at** *t*. \[054-002\] \]

Mutual dependence and transitive chains such as are illustrated in Figure 7Figure 8 always bottom out in some independent continuant that is not a spatial region.

Examples: Example(role,relational quality)\[John’s *role* of husband to Mary is dependent on Mary’s *role* of wife to John, and both are dependent on the *object aggregate* comprising John and Mary as **member parts** joined together through the *relational quality* of being married.\]

a(s-depends-on)\[THEOREM: If *b* **s-depends\_on** something **at** *t*, then there is some *c*, which is an independent continuant and not a spatial region, such that *b* **s-depends\_on** *c* **at** *t.* \[136-001\]\]  
Note that this theorem applies also to occurrents in the sense that note(occurrent)\[every occurrent that is not a temporal or spatiotemporal region is s-dependent on some independent continuant that is not a spatial region\]. The theorem  does not apply to sites and continuant fiat boundaries, but an analogous theorem could be formulated for these using the relation of what might be called boundary dependence. To see what this would mean, consider a rectangular block of marble. The surface of the block is a boundary of two dimensions, its edges are of one dimension, and its corners are of zero dimension. Each of these boundaries is dependent on the cuboid, but in a new sense of “dependence”. The boundary *a* of an object *b* is boundary-dependent on object *b* if and only if it is necessarily such that *a* can exist only if *either b* exists *or* there exists some part of *b* that includes *a* as part. To see what is at issue here, imagine that there is some capsule of a supremely powerful corrosive acid inside the marble block that is eating the marble away, by degrees, from the inside. As the marble is progressively destroyed its boundaries are at first unaffected. They will continue to exist for just as long as there is at least *some* remaining part of the block that includes them as part. Since this remaining part can be arbitrarily thin, there is a sense in which the boundary itself is of zero thickness.

#### **Quality** {#quality}

BFO 2.0 acknowledges two major familiars of *s-dependent continuants*, namely *qualities* and *realizable dependent continuants.* (Again, no claims are made as to the exhaustiveness of this classification.) Solubility, in order to be realized or manifested, requires a dissolving process which may have some solid piece of salt or sugar as participant. The crystalline quality of salt or sugar, in contrast, does not need any realization process.

a(quality)\[Elucidation: a *quality* is a *specifically dependent continuant* that, in contrast to roles and dispositions, does not require any further process in order to be realized. \[055-001\]\]

a(quality)\[Examples: the color of a tomato\\, the ambient temperature of this portion of air\\, the length of the circumference of your waist, the shape of your nose, the shape of your nostril\\, the mass of this piece of gold. \]

Note that in the above list of examples we encounter a further type of dependence, turning on the fact that, for example, the color of a tomato depends in some sense on processes involving photons. This type of dependence is not dealt with in the BFO 2.0 specification, but will be treated in the future.

*Quality* is a rigid universal:

a(quality)\[Axiom: If an *entity* is a *quality* at any time that it exists, then it is a *quality* at every time that it exists. \[105-001\] \]

at(quality\_of)\[Definition: *b* **quality\_of** *c* **at** *t \=* Def. *b* is a *quality* & *c* is an *independent continuant* that is not a *spatial region* & *b* **s-depends\_on** *c* **at** *t*. \[056-002\]

Domain: *quality*

Range: *independent continuant* that is not a *spatial region*\]

Qualities of spatial regions are restricted to qualities of size and shape.

##### ***Relational quality*** {#relational-quality}

There are relational qualities, which have a plurality of *independent continuants* as their bearers \[6\].

a(relational quality)\[Definition: *b* is a *relational quality \=* Def. for some *independent continuants* *c*, *d* and for some time *t*: *b* **quality\_of** *c* **at** *t* & *b* **quality\_of** *d* **at** *t*. \[057-001\]

DEFINITION: b is a relational quality iff for some independent continuants c, d and for some time t, b is a quality & b specifically\_depends\_on c at t & b specifically\_depends\_on d at t

\]

a(relational quality)\[Examples: a marriage bond, an instance of love, an obligation between one person and another. \]

Examples of relational *processes* such as kissing or hitting are discussed below.

Relational qualities, like qualities in general, are entities in their own right; relational processes such as kissing or hitting are also entities in their own right. This means that they have counterparts both on the level of instances and on the level of universals. (This does not hold for relations such as **instance\_of** or **part\_of**, for which it does not make sense to speak of instances,)

Internal relations such as comparatives (*larger-than*, *heavier-than …*) are also not entities in their own right. If John is taller than Mary, then this is accounted for exclusively in terms of John’s and Mary’s respective height qualities, and in terms of the fact (not an extra entity in the BFO sense) that each of these heights instantiates a certain determinate height universal and that the totality of such universals form a certain linear order. (If Mary is a *human being* then there is similarly no extra entity – for example, no instance of the relation of instantiation – that is needed to make this true.)

#### **Realizable entity** {#realizable-entity}

   a(realizable entity)\[Elucidation: To say that *b* is a *realizable entity* is to say that *b* is a *specifically dependent continuant* that inheres in some *independent continuant* which is not a *spatial region* and is of a type instances of which are **realized** in *processes* of a correlated type. \[058-002\]

   \]a(realizable entity)\[Examples: the role of being a doctor\\, the role of this boundary to delineate where Utah and Colorado meet\\, the function of your reproductive organs\\, the disposition of your blood to coagulate\\, the disposition of this piece of metal to conduct electricity.\]

Here examples of correlated process types are, respectively: diagnosing, inseminating, formation of a clot, transmission of an electric current.

##### ***Relation of realization*** {#relation-of-realization}

at(realizes)\[Elucidation: to say that *b* realizes *c* at *t* is to assert that
there is some *material entity d*
& *b* is a *process* which **has participant** *d* **at** t
& *c* is a *disposition* or *role* of which *d* is **bearer\_of** **at** *t*  
& the type instantiated by *b* is correlated with the type instantiated by *c*. \[059-003\]

Domain: process

Range: realizable entity\]

a(realized-in)\[Theorem: if a realizable entity *b* is realized in a process *p*, then *p* stands in the **has\_participant** relation to the bearer of *b*. \[106-002\] \]

a(realizable entity)\[Axiom: All *realizable dependent continuants* have *independent continuants* that are not *spatial regions* as their bearers. \[060-002\] \]

There are reciprocal *realizable dependent continuants* in the sense defined above (e.g. the husband and wife roles, as described in \[28, 79\]).

#### **Role (externally-grounded realizable entity)** {#role-(externally-grounded-realizable-entity)}

   a(role)\[Elucidation: *b* is a *role* means:

   *b* is a *realizable entity*

   & *b* exists because there is some single bearer that is in some special physical, social, or institutional set of circumstances in which this bearer does not have to be

   & b is not such that, if it ceases to exist, then the physical make-up of the bearer is thereby changed. \[061-001\]\]

   as(role)\[Examples: the priest role, \\, the student role, \\, the role of subject in a clinical trial, \\, the role of a stone in marking a property boundary, \\, the role of a boundary to demarcate two neighboring administrative territories\\, the role of a building in serving as a military target\]

‘Role’ is another name for what we might call an *extrinsic* or *externally-grounded* realizable entity. An entity has a certain role not because of the way it itself is, but because of something that happens or obtains externally, for example a student is enrolled in an institution of learning, a patient is enrolled in a clinical trial.

##### ***Optionality of roles*** {#optionality-of-roles}

Because a role is not a consequence of the in-built physical make-up of its bearer, roles are *optional* in the sense that the bearer of a role can lose this role without being thereby physically changed. If the role ceases to exist, then it is not the case that the bearer must physically change. Roles characteristically involve some form of social ascription or imputation.

Some qualities and dispositions are non-optional in the sense that, if they cease to exist, then their bearer ceases to exist. (Consider for example the quality *mass.*) Such cases will be dealt with in a future version of BFO.

##### ***Having a role vs. playing a role*** {#having-a-role-vs.-playing-a-role}

An entity is sometimes said to play a role, as when a passenger plays the role of a pilot on a commercial plane in an emergency, or a forged bearer bond plays the role of providing security for a loan; but neither the person nor the bearer bond actually *have* those roles. BFO 2.0 only specifies the **has\_role** relation.

#### **Disposition (internally-grounded realizable entity)** {#disposition-(internally-grounded-realizable-entity)}

   a(disposition)\[Elucidation: *b* is a *disposition* means:

   *b* is a *realizable entity*
   & *b*’s bearer is some *material entity*
   & *b* is such that if it ceases to exist, then its bearer is physically changed,
   & *b*’s realization occurs when and because this bearer is in some special physical circumstances,
   & this realization occurs in virtue of the bearer’s physical make-up. \[062-002\]\]

   as(disposition)\[Examples: an atom of element X has the disposition to decay to an atom of element Y\\,  the cell wall is disposed to  transport cellular material through endocytosis and exocytosis\\,  certain people have a predisposition to colon cancer\\, children are innately disposed to categorize objects in certain ways.\]

There are no relational dispositions. Thus each disposition is the disposition of exactly one bearer.

Unlike roles, dispositions are not optional. If an entityhas a certain physical structure, then it has a certain disposition. If its physical makeup is changed then it may lose that disposition. A disposition can for this reason also be referred to as an *internally-grounded realizable entity*. That is, it is a realizable entity that is a reflection of the (in-built or acquired) physical make-up of the *material entity* in which it **inheres**.

a(disposition)\[Axiom: If b is a realizable entity then for all t at which b exists, b **s-depends\_on** some material entity **at** t. \[063-002\]\]

note(disposition)\[Dispositions exist along a strength continuum, depending on threshold which has to be overcome for the bearer to realize the disposition. Weaker dispositions are realized in only a fraction of triggering cases. Stronger dispositions are realized in a much larger fraction \[89\].

**Each disposition type is associated with one or more characteristic realization process types – types which are instantiated by those processes in which the respective disposition instance is realized. Dispositions may also be associated with characteristic trigger process types – instantiated by processes (for example, for the disposition we call ‘fragility’, the process of being dropped on a hard surface) in which they are realized. The term ‘causality’ is often applied to refer to such trigger-and-realization process pairs. BFO does not yet incorporate a theory of causality, though it is presumed that any such theory will take such process pairs – alongside our treatment of types of causality unity above – as its starting point.**\]

**Diseases are dispositions according to OGMS \[2727\]. We are referring to dispositions also when we consider genetic and other risk factors for specific diseases. The latter are *predispositions to disease* – in other words they are dispositions (elevated risks) to acquire certain further dispositions. The realization of such a predisposition consists in processes which change the physical makeup of its bearer in such a way that parts of this bearer then serve as the material basis for a disease.**

#### **Function** {#function}

   a(function)\[Elucidation: A *function* is a disposition that exists in virtue of the bearer’s physical make-up and this physical make-up is something the bearer possesses because it came into being either through evolution (in the case of natural biological entities) or through intentional design (in the case of artifacts), in order to realize processes of a certain sort. \[064-001\]\]

   as(function)\[Examples:  the function of amylase in saliva to break down starch into sugar\\, the function of a hammer to drive in nails\\, the function of a heart pacemaker to regulate the beating of a heart through electricity\]

Functions are realized in processes called *functionings*. Each function has a bearer with a specific type of physical make-up. This is something which, in the biological case, the bearer is of a type which has naturally evolved to carry this function (as in the hypothalamus’ secretion of hormones). In the artifact case, it is something which the bearer is of a type which is the result of design (as in an Erlenmeyer flask designed to hold liquid) or also (as in the case of penicillin) has been deliberately selected for. The cavity (site) in the interior of the flask does not have a function in its own right, but only by inheritance from its material host.

It is not accidental or arbitrary that a given eye has the function to see or that a given screwdriver has been designed and constructed with the function of fastening screws. Rather, these functions are integral to these *entities* in virtue of the fact that the latter have evolved, or been constructed, to have a corresponding physical make-up. Thus the heart’s function is to pump blood, and not merely to produce thumping sounds. The latter are by-products of the heart’s proper functioning. The screwdriver’s function is in addition bound together with the disposition of the screw: the two are mutually dependent on each other (a case of reciprocal generic dependence – see below – since the screwdriver function can be realized with the aid of many different screws).

Like dispositions of other sorts, a function is an internally-grounded realizable entity: it is such that, if it ceases to exist, then its bearer is physically changed. In some cases an entity may preserve its function even while it is physically changed in ways which make it unable to function. For a lung or attic fan to be non-functioning is an indication that the physical make-up of these things has changed – in the case of the lung perhaps because of a cancerous lesion; in the case of the attic fan because of a missing screw. But these entities then still *have their functions*; it is simply that they are unable to exercise these functions until the physical defect is rectified, for example through clinical intervention or mechanical repair. The entities would *lose* their function only if they were changed drastically, for example, in the case of the lung, through the death of the host organism \[90\].

Note(function)\[In the past, we have distinguished two varieties of function, *artifactual function* and *biological function*. These are not asserted subtypes of BFO:*function* however, since the same function – for example: to pump, to transport – can exist both in artifacts and in biological entities. The asserted subtypes of function that would be needed in order to yield a separate monoheirarchy are not artifactual function, biological function, etc., but rather transporting function, pumping function, etc.\]

##### ***Defined relations***  {#defined-relations}

at(role\_of)\[Definition: a **role\_of** b **at** t \=Def. a is a role and a **inheres\_in** b **at** t. \[065-001\]\]

at(disposition\_of)\[Definition: a **disposition\_of** b **at** t \=Def. a is a disposition and a **inheres\_in** b **at** t. \[066-001\] \]

at(function\_of)\[Definition: a **function\_of** b **at** t \=Def. a is a function and a **inheres\_in** b **at** t. \[067-001\] \]

a(has\_role)\[Definition: a **has\_role** b **at** t \=Def. b **role\_of** a **at** t. \[068-001\] \]

at(has\_disposition)\[Definition: a **has\_disposition** b **at** t \=Def. b **disposition\_of** a **at** t. \[069-001\] \]

at(has\_function)\[Definition: a **has\_function** b **at** t \=Def. b **function\_of** a **at** t. \[070-001\] \]

#### **Material basis** {#material-basis}

Dispositions (and thus also functions) are introduced into BFO in order to provide a means for referring to what we can think of as the potentials or powers of things in the world without the need to quantify over putative ‘possible worlds’ or ‘possible objects’. Whenever a disposition exists, then it is a disposition of some thing, namely its material bearer. Dispositions exist in every case because there is some corresponding portion of reality that is non-dispositional in nature, which we call the material basis of the disposition. The relevant relation can be elucidated as follows:

at(has\_material\_basis)\[Elucidation: *b* **has\_material\_basis** *c* **at** *t* means:
b is a *disposition*
& c is a *material entity*  
& there is some d **bearer\_of** b **at** t  
& *c* **continuant\_part\_of** *d* **at** t  
& *d* **has\_disposition** *b* **at** *t* because *c* **continuant\_part\_of** *d* **at** *t*. \[071-002\] \]

as(has\_material\_basis)\[Examples: the material basis of the disposition to wear unevenly of John’s tires is the worn suspension of his car; the material basis of John’s current disposition to cough includes the viral infection in his upper respiratory tract; the neurons in his throat that are able to detect abnormal sensations; the neurons in the brain that initiate the cough response; the motor neurons that move the diaphragm; (some part of) the diaphragm itself; and (some part of) John’s lungs.\\ \]

In some cases the material basis is associated with a certain quality. Thus if a portion of glass is transparent, then the material basis of this transparency is the portion of glass itself. But more can be said, namely that the transparency obtains because the molecules in this portion of glass *are currently organized in a certain way*, thus the aggregate of molecules has a quality: *lattice structure.*

### **Generically dependent continuant** {#generically-dependent-continuant}

   at(g-depends on)\[Elucidation: *b* **g-depends on** *c* **at** *t*1 means: *b* exists **at** *t*1 and *c* exists **at** *t*1

   & for some type *B* it holds that (*c* **instantiates** *B* at *t*1)

   & necessarily, for all *t* (if *b* exists **at *t*** then some **instance\_of** *C* exists **at** *t*)

   & not (*b* **s-depends\_on** *c* **at** *t*1). \[072-003\]\]

   a(g-depends on)\[Domain: *generically dependent continuant*\]

   a(g-depends on)\[Range: *independent continuant*\]

   a(g-depends on)\[Axiom: if *b* **g-depends\_on** *c* at some time *t*, then *b* **g-depends**\_**on** something at all times at which *b* exists. \[073-001\] \]

   a(generically dependent continuant)\[Definition: *b i*s a *generically dependent continuant* \= Def. *b* is a *continuant* that **g-depends\_on** one or more other *entities*. \[074-001\] \]

   as(generically dependent continuant)\[Examples: the pdf file on your laptop, the pdf file that is a copy thereof on my laptop\\; the sequence of this protein molecule; the sequence that is a copy thereof in that protein molecule. \]

As we saw, BFO’s *specifically dependent continuants* are subject to the axiom of non-migration – they cannot migrate from one bearer to another. *Generically dependent continuants*, in contrast, can in a sense migrate, namely through a process of exact copying which allows, for example, the very same information artifact to be saved to multiple storage devices.

We can think of *generically dependent continuants*, intuitively, as complex continuant patterns (complex qualities) of the sort created by authors or designers, or (in the case of DNA sequences) through the processes of evolution. Further examples of *generically dependent continuants* include: the chessboard pattern, the Coca Cola logo, the pattern of a traffic sign. Each such pattern exists only if it is concretized in some counterpart *specifically dependent continuant* – the pattern of black and white squares on this wooden chessboard here before me; the pattern of red and white swirls on the label of this Coca Cola bottle; the pattern of paint on this traffic signboard.

Such patterns can be highly complex. A certain pattern (of letters of the alphabet and associated punctuation and spacing) which is a work of literature is concretized in the patterns of ink marks in this and that particular *copy* of the work. When you create a novel, you first of all create an **s-dependent** pattern of inkmarks on your manuscript, a pattern that only exists when ink marks are spread around in a certain way. In addition, you create also a particular instance of the *generically dependent continuant* type *novel*. When you print further copies in book form, then you create multiple particular instances of the *independent continuant* type *book.*

#### **Relation of concretization** {#relation-of-concretization}

   a(concretizes)\[Elucidation: *b* **concretizes** *c* **at** *t* means*:*

   b is a specifically dependent continuant

   & c is a generically dependent continuant

   & for some independent continuant that is not a spatial region d,

   b **s-depends\_on** d **at** t

   & c **g-depends** on d **at** t

   & if c migrates from bearer d to another bearer e than a copy of b will be created in e. \[075-002\]

   Domain: specifically dependent continuant

   Range: generically dependent continuant\]

example(generically dependent continuant)\[The entries in your database are patterns instantiated as *quality* instances in your hard drive. The database itself is an aggregate of such patterns. When you create the database you create a particular instance of the *generically dependent continuant* type *database*. Each entry in the database is an instance of the *generically dependent continuant* type [IAO: *information content entity*](http://purl.obolibrary.org/obo/IAO_0000030).\]

*Generically dependent continuants* can be **concretized** in multiple ways; example(concretizes)\[you may concretize a poem as a pattern of memory traces in your head\\. You may concretize a piece of software by installing it in your computer\\. You may concretize a recipe that you find in a cookbook by turning it into a plan which exists as a *realizable dependent continuant* in your head.\]

a(concretizes)\[Axiom: if *b* **g-depends** on *c* at some time *t*, then there is some *d*, such that *d* **concretiz**es *b* at *t* and *d* **s-depends\_on** *c* **at** *t.* \[076-001\]\]

#### **Works of music and experimental protocols** {#works-of-music-and-experimental-protocols}

In the case of a work of music such as Beethoven’s *9th Symphony*, there is a certain abstract pattern, a *generically dependent continuant*, which we shall call \#9. \#9 is an **instance** of the type *symphony*, which is itself a subtype of the type *musical work*. \#9 is **concretized** in certain *specifically dependent continuant* patterns of ink marks that we find in printed copies of the *score*, or (for example) in certain *specifically dependent continuant* patterns of grooves in vinyl disks. The score is an **instance** of the *generically dependent continuant* type *plan specification*, specifying how to create a corresponding *musical performance*. This *plan specification* is **concretized** in distributed fashion in the form of a network of subplans distributed across the minds of the conductor and the members of the orchestra, together forming a plan to create a musical performance of \#9. This complex *realizable dependent continuant* is then **realized** when conductor and orchestra work together to create a certain pattern of air vibrations conforming to the score and audible to an audience through certain associated patterns of excitations of their auditory nerves. One consequence of the above is that we cannot in fact listen to Beethoven’s 9th Symphony, but rather only to performances thereof.

Analogously, when a research team decides to perform an experiment by following a published protocol, the protocol itself is a *generically dependent continuant* **instance** of the type *plan specification*. The leader of the research team concretizes this protocol in her mind to create that specifically dependent realizable *continuant* which is her plan for carrying out this experiment. At the same time, she creates a series of sub-protocols, which are plan specifications for each of her various team members. Each of the latter is then concretized in the mind of the appropriate team member as a plan for carrying out corresponding subactivities within the experiment. The experiment itself is the total *realization* of these plans, having outputs such as publications, databases, and so forth, as described in the [Ontology for Biomedical Investigations](http://obi-ontology.org/) (OBI).

### **Occurrent**   {#occurrent}

   a(occurrent)\[Elucidation: An *occurrent* is an entity that unfolds itself in time or it is the instantaneous boundary of such an entity (for example a beginning or an ending) or it is a temporal or spatiotemporal region which such an entity occupies\_temporal\_region or occupies\_spatiotemporal\_region*.* \[077-002\]\]

note(process)\[The realm of occurrents has fewer natural units than the realm of independent continuants. Thus no counterpart of ‘object’ can be found here. In BFO 1.0 ‘process’ served as such a counterpart. In BFO 2.0 ‘process’ is, rather, the occurrent counterpart of ‘material entity’. Those natural – as contrasted with engineered, deliberately executed – units which do exist in the realm of occurrents are typically either parasitic on the existence of natural units on the continuant side, or they are fiat in nature. Thus we can count *lives*; we can count football games; we can count chemical reactions performed in experiments or in chemical manufacturing. We cannot count the processes taking place, for instance, in an episode of insect mating behavior.

Even where natural units are identifiable, for example cycles in a cyclical process such as the beating of a heart, the processes in question form a sequence with no discontinuities. Thus there are here no temporal gaps that are analogous to the spatial gaps that separate for instance billiard balls or planets. Lives of organisms are process units, but they too result from a continuous series of pre-life, processes, and they unfold in turn into a continuous series of post-life processes. Clear examples of boundaries of processes are almost always of the fiat sort (midnight, a time of death as declared in an operating theater or on a death certificate, the initiation of a state of war)\].

Occurrents are processes, or the boundaries of processes, or temporal or spatial temporal regions. Processes can be arbitrarily summed and divided. In particular, we can identify sub-processes – temporal parts – which are fiat segments occupying constituent temporal intervals of the temporal interval occupied by the process as a whole. Relation of temporal parthood

We introduced above the relation **occurrent\_part\_of**. We can now identify in its terms the sub-relation **temporal\_part\_of** which holds between two occurrents when the former is a phase or subprocess (a slice or segment) of the latter:

a(temporal\_part\_of)\[Definition: *b* **temporal\_part\_of** *c* \=Def.  
*b* **occurrent\_part\_of** *c* &
& for some *temporal region t*, *b* occupies\_temporal\_region *t*
& for all *occurrents* *d*, *t*′ (if *d* **occupies\_temporal\_region** *t*′  & *t*′ **occurrent\_part\_of***t*
then (*d* **occurrent\_part\_of** *b* iff *d* **occurrent\_part\_of** *c*)). \[078-003\]\]

Thus *b* is exactly the restriction of *c* to *t*. example(occurrent part of)\[The process of a footballer’s heart beating once is an **occurrent part** but not a **temporal\_part** of a game of football.\]

as(temporal\_part\_of)\[Examples: your heart beating from 4pm to 5pm today is a **temporal part** of the *process* of your heart beating\\; the 4th year of your life is a **temporal part** of your life\\. The first quarter of a game of football is a **temporal part** of the whole game\\. The process of your heart beating from 4pm to 5pm today is a **temporal part** of the entire process of your heart beating.\\ The 4th year of your life is a **temporal part** of your life\\, /\* as is\*/ the process boundary which separates the 3rd and 4th years of your life. \]

a(temporal\_part\_of)\[Definition: *b* **proper\_temporal\_part\_of** *c* \=Def. *b* **temporal\_part\_of** *c* & not (*b* \= *c*). \[116-001\]\]

a(temporal\_part\_of)\[Theorem: if *b* **proper\_temporal\_part\_of** *c*, then there is some *d* which is a **proper\_temporal\_part\_of** *c* and which shares no parts with *b.* \[117-002\]\]

Check \[117-002\] provable as theorem from definition and axioms of mereology.

Temporal parts are often referred to as stages or phases of an occurrent.

a(occurrent)\[Axiom: *b* is an *occurrent* entity iff *b* is an entity that has **temporal parts**. \[079-001\]\]

Since *temporal regions* are **temporal parts** (though not **temporal proper parts**) of themselves, this means, in particular, that *zero-dimensional temporal regions* (temporal instants) are also *occurrents*.

Subtypes of *occurrent* are:

 process

  process profile (experimental)

  history

 process boundary

 temporal region

  zero-dimensional temporal region 

one-dimensional temporal region

spatiotemporal region

#### **Projection relations** {#projection-relations}

   a(projects\_onto)\[Elucidation: To say that each spatiotemporal region *s* **temporally\_projects\_onto** some temporal region *t* is to say that *t* is the temporal extension of *s.* \[080-003\]\]

   a(projects\_onto)\[Elucidation: To say that spatiotemporal region *s* **spatially\_projects\_onto** spatial region *r* **at** *t* is to say that *r* is the spatial extent of *s* **at** *t.* \[081-003\]\]

Every spatiotemporal region projects onto some temporal region, and at every time instant within its extent onto some spatial region (all of this relative to some frame).

#### **The occupies and occurs\_in relations** {#the-occupies-and-occurs_in-relations}

   a(occupies\_spatiotemporal\_region)\[Elucidation: *p***occupies\_spatiotemporal\_region** *s*. This is a primitive relation between an *occurrent p* and the *spatiotemporal region* *s* which is its spatiotemporal extent. \[082-003\]

 Domain: *occurrent*

Range: *spatiotemporal region*\]

a(occupies\_temporal\_region)\[Elucidation: *p***occupies\_temporal\_region** *t*. This is a primitive relation between an *occurrent* *p* and the *temporal* *region t* upon which the *spatiotemporal region p* **occupies\_spatiotemporal\_region projects**. \[132-001\]

Domain: *occurrent*

Range: *temporal region*

Axiom:  Every *temporal* *region* **occupies\_temporal\_region** itself. \[137-001\] \]

note(occupies\_spatiotemporal\_region)\[The **occupies\_spatiotemporal\_region** and **occupies\_temporal\_region** relations are the counterpart, on the *occurrent* side, of the relation **occupies\_spatial\_region.**\]

DEFINITION: *b* **occurs\_in** *c* iff*b* is a *process* and *c* is a *material entity* or *immaterial entity*& there exists a *spatiotemporal region* *r* and *b* **occupies\_spatiotemporal\_region** *r*& for all *t*, if *b* exists\_at *t* then *c* exists\_at *t* & there exist *spatial regions s* and *s'* where

*b* **spatially\_projects\_onto** *s* **at** *t*  
& *c* **occupies\_spatial\_region** *s'* **at** *t*  
& *s* is a **proper\_continuant\_part\_of** *s'* **at** *t* \[143-001\]\]

### **Processes** {#processes}

    1. ### **Process** {#process}

    a(process)\[Definition: *p* is a *process* \= Def. *p* is an *occurrent* that has **temporal proper parts** and for some time *t*, *p* **s-depends\_on** some *material entity* **at** *t*. \[083-003\]\]

    as(process)\[Examples: the life of an organism\\, a process of sleeping\\, a process of cell-division, \\ a beating of the heart\\, a process of meiosis\\, the course of a disease\\, the flight of a bird\\, your process of aging. \]

Histories are one important subtype of process.

Just as there are relational qualities, so also there are relational processes, which **s-depends\_on** multiple material entities as their relata.

Examples of relational processes: John seeing Mary \[1, 4\], a moving body’s crashing into a wall, a game of snooker, the videotaping of an explosion.

#### **History** {#history}

   as(history)\[Elucidation: A *history* is a *process* that is the sum of the totality of *processes* taking place in the *spatiotemporal region* **occupied** by a *material entity* or *site*, including processes on the surface of the entity or within the cavities to which it serves as host. \[138-001\]

   \]

See the OGMS definition of ‘[*extended organism*](http://purl.obolibrary.org/obo/OGMS_0000087)’ and also the treatment of embryontology in \[13\].) The history of a *material entity* will include, on the above account, the movements of neutrinos within the interior of the entity as they pass through. In OGMS (Check) we define the *life* *course* of an organism as the process which has as parts all the processes in which the organism is participant.

The relation between a material entity and its history is one-to-one. Histories are thus very special kinds of processes, since not only is it the case that, for any material entity *a*, there is exactly one process which is the history of *a*, but also is it the case that for every history there is exactly one material entity which it is the history of.

as(history\_of)\[Elucidation: b **history\_of** c if c is a material entity or site and b is a *history* that is the unique *history* of *c*

Axiom: if *b* **history\_of** *c* and *b* **history\_of** *d* then *c*\=*d* \[XXX-001\]

Domain: history \[XXX-001\]

Range: material entity or site \[XXX-001\] \]

as(has\_history)\[definition: b **has\_history** *c* iff *c* **history\_of** *b* \[XXX-001\]\]

Histories are additive. Thus for any two material entities *b* and *c,* the history of the sum of *b* and *c* is the sum of their histories.

#### **Process boundary** {#process-boundary}

   a(process boundary)\[Definition: *p* is a *process boundary* \=Def. *p* is a **temporal part** of a *process* & *p* has no **proper temporal parts.** \[084-001\]\]

   a(process boundary)\[Axiom: Every process boundary **occupies\_temporal\_region** a *zero-dimensional temporal region.* \[085-002\] \]

   a(process boundary)\[Example: the boundary between the 2nd and 3rd year of your life. \]

   1. ### **Relation of participation** {#relation-of-participation}

   a(has\_participant)\[Elucidation: **has\_participant** is an instance-level relation between a *process*, a *continuant*, and a *temporal region* at which the continuant participates in some way in the *process*. \[086-003\]\]

   a(has\_participant)\[Domain: process\]

   at(has\_participant)\[Range: *independent continuant that is not a spatial region*, *specifically dependent continuant*, *generically dependent continuant*\]

   a(has\_participant)\[Axiom: if *b* **has\_participant** *c* **at** *t* then *b* is an *occurrent*. \[087-001\] \]

   a(has\_participant)\[Axiom: if *b* **has\_participant** *c* **at** *t* then *c* is a *continuant*. \[088-001\] \]

   a(has\_participant)\[Axiom: if *b* **has\_participant** *c* **at** *t* then *c* exists **at** *t*. \[089-001\] \]

   a(has\_participant)\[Axiom: if *b* **has\_participant** *c* **at** *t* & *c* is a *specifically* *dependent continuant*, then there is some *independent continuant* that is not a *spatial region d*, *c* **s-depends\_on** *d* **at** *t* & *b* **s-depends\_on** *d* **at** *t*. \[090-003\] \]

   a(has\_participant)\[Axiom: if *b* **has\_participant** *c* **at** *t* & *c* is a *generically dependent continuant*, then there is some *independent continuant* that is not a *spatial region d*, and which is such that *c* **g-depends on** *d* **at** *t* & *b* **s-depends\_on** *d* **at** *t.* \[091-003\] \]

Thus both specifically and generically dependent entities participate in processes – for example when a file is copied from one hard drive to another – but only *via* the bearers of their specifically dependent concretizations.

note(spatial region,has\_participant)\[Spatial regions do not participate in processes.\]

On the participation of qualities in processes see the treatment of qualitative change, below.

### **Qualities and processes as s-dependent entities**  {#qualities-and-processes-as-s-dependent-entities}

    1. ### **The ontological square**  {#the-ontological-square}

BFO generalizes Zemach’s idea of a continuant entity by allowing not only *things* (such as pencils and people) as continuants, but also entities that are *dependent* on things, such as qualities, roles and dispositions. BFO thereby draws not merely on Aristotle’s distinction between universals and particulars, but also on his division of substances and accidents, which reappears in BFO as the opposition between independent and dependent continuants.

***Determinable and Determinate Quality Universals***

Qualities, in BFO, are entities in their own right (of the sort referred to elsewhere in the literature as tropes, or individual accidents). They are entities which are dependent on the independent continuant entities (such as planets, organisms, molecules) which are their bearers.

Qualities instantiate quality universals, which are divided into *determinable* (such as *temperature*, *length* and *mass*) and *determinate* (such as: 37.0°C *temperature*, 1.6 meter *length*, and 4 kg *mass*). (Anticipating our discussion of ‘process profile universals’ later in this document, we might refer to determinate quality universals as quality profiles.) \[84\]

Determinable quality universals are *rigid*, in the sense that, if a determinable quality universal is exemplified by a particular bearer at any time during which this bearer exists, then it is exemplified at every such time. John’s temperature (a certain quality instance inhering in John from the beginning to the end of his existence, instantiates the same determinable universal temperature from the beginning to the end of John’s existence. Determinate quality universals, on the other hand, are non-rigid: the same quality instance may instantiate different determinate universals at different times, as in Figure 8Figure 9\. A parallel distinction between determinable and determinate applies also to realizable entities.

![][image8]

**Figure 89: John's temperature and some of the determinable and determinate universals it instantiates at different times**

We note in passing that the determinate temperature universals are independent of whatever system of units is used to describe them. The universals here referred to in terms of degrees Celsius would be instantiated even in a world in which a system of units for measuring temperature had never been established.

When clinicians speak for example of John’s temperature as being within some ‘normal’ range, then they are referring to the determinate qualities inhering in John, but they are describing them in relation to the average of the corresponding qualities inhering in other persons in the same reference population. A single person has a normal temperature only relative to (the temperature qualities of) persons in one or other larger population (for example healthy persons at rest in an indoor environment, persons recovering from pneumonia, and so on).

Our primary concern here is with BFO’s treatment of occurrents, which include processes, process boundaries (for example beginnings and endings), and the temporal intervals and temporal instants which processes and process boundaries occupy. Because processes are extended in time, this means that, for each process, we can identify arbitrarily many sub-processes occupying sub-intervals of the temporal interval occupied by the process as a whole.

The assertion that one entity is an occurrent part of a second entity means simply that both are occurrents and that the first is a part of the second. The sum of processes taking place in your upper body during the course of your life is a proper continuant part of the sum of all processes taking place in your whole body during the same interval of time. There is however a narrower relation which holds between one *occurrent* and another when the former is exactly the restriction of the latter to a *temporal region* that is a **proper part** of the *temporal region* occupied by the latter. What it is for one entity to be a **temporal part** of a second entity is defined above.

#### **The problem of process measurement data** {#the-problem-of-process-measurement-data}

Process measurements, and processes of measurement, and measurement data, do not, strictly speaking, fall within the province of a formal ontology such as BFO. However, it is of value to explore what happens when BFO is used to annotate the results of measurements of qualities. In a typical case, for example the measurement of your height, the following elements can be distinguished:

1) the BFO:object that is you,  
2) the BFO:quality that is your height,  
3) the BFO:two-dimensional spatial region that is the distance from the top of your head to the base of your feet that is measured when we measure your height,

The result of this measurement is referred to by means of

1) the IAO:scalar measurement datum: ‘1.7 m tall’.

Each item on this list is unproblematically identifiable as instantiating a BFO category. (4)  is a data item, for instance a record in some file on your laptop. The data item is said to be ‘generically dependent’ upon its bearer, since it can be transferred to another laptop through a process of exact copying. The temperature of your laptop, in contrast, is specifically dependent on the laptop, since the temperature of a material entity (the temperature trope, this specific instance of the universal *temperature*), cannot migrate to another material entity.

When attempts were made to develop a corresponding analysis in BFO terms of the data resulting from measurements of processes, a problem arose. In the case of a body moving with constant speed, for example, we can here distinguish at least the following elements:

1) the BFO:object that is moving,  
2) the BFO:process of moving,  
3) the BFO:temporal region occupied by this process,  
4) the BFO:spatiotemporal region occupied by this process (path of the motion),  
5) the speed of the process at some temporal instant *t*,

where (5) is referred to by means of

1) the IAO:scalar measurement datum: ‘3.12 meters per second’.

Each of items (1)-(4) and (6) instantiates a readily identifiable BFO category. Item (5), on the other hand, presents a problem, since the obvious candidate category of *process quality*, a counterpart on the occurrent side of BFO:*quality* on the side of continuants, is not recognized by BFO. To see why not, consider the following scenario, which is designed to illustrate the contrasting logico-ontological orders governing the continuant and occurrent realms as BFO conceives them. \[14\]

#### **Why processes do not change**  {#why-processes-do-not-change}

Imagine, first, John, a BFO:object, who, on the first of the month, either does or does not go on a one-month diet. In the former case John’s determinable weight quality will decrease; in the latter case this quality will remain constant. In either case at the end of the month, John will remain *the same object* as he was on the first of the month. Both John and his weight are first class entities, thus instantiating universals (*person*, and *weight*) represented in corresponding BFO-conformant ontologies.

In the case of a process – for example John’s *life* – in contrast, no parallel scenario is imaginable. Of course we can imagine John’s life as varying under two different scenarios – *life with diet*; *life without diet*. But then, however small the variation from one imagined life to another, we are here imagining two different lives.

As Galton and Mizoguchi point out \[53\], persuasive arguments have been presented in the literature to the effect that processes cannot change, because processes *are* changes (they are changes in those continuant entities which are their participants). Certainly we have ways of speaking whose surface grammar suggests that processes can change. But when we say, for example, *let’s speed up this process*, then what we mean is: let’s ensure that some on-going process is one which will be quicker than the process that would have occurred had we not made some specific extra effort.

Because independent continuants may gain and lose parts over time, the instance-level parthood relation on the side of continuants is *indexed by time*. The instance-level parthood relation on the side of occurrents, in contrast, holds always in a non-indexed way. Certainly a process can have as successive temporal parts subprocesses which differ in manifold ways. But it is here the participants in the process that change – and these participants are in every case continuants.

Some continuant universals, such as *larva* or *fetus* are non-rigid, in the sense that if some organism *b* instantiates the universal *larva* at *t*, then it does not follow that *b* instantiates *larva* at all times at which *b* exists, since *larva* is a non-rigid universal. Universals on the side of occurrents, in contrast, are always rigid, so that if an occurrent instantiates a universal at some time, then it instantiates this universal at all times. \[16\]  This is because, while continuants can change their type from one time to the next (as when an embryo becomes a fetus, which in turn becomes an infant \[13\], no similar sort of change can be identified on the side of occurrents.

#### **First approximation to a solution of the problem of process measurement data** {#first-approximation-to-a-solution-of-the-problem-of-process-measurement-data}

The problem lies properly in the coverage domain of IAO. Yet it needs to be dealt with here, since it gets to the heart of one seeming shortcoming of the BFO framework.

A process of running can be described as increasing speed continuously over a certain interval of time. But again, it is more precisely the moving body that is changing, and not the process in which that body participates. Now we can of course talk as if given, say, a running with speed *v*, then there is some attribute of this process in addition to the running itself – namely the attribute that it is a process *of increasing speed*. And if BFO is to serve the needs of scientists in providing the basis for common vocabularies to be used in annotating measurement information, then it is of course essential that BFO provides some simple means for annotating attributions of this sort on the side of occurrents, just as it provides the means to annotate measurements and other of qualities of objects on the side of continuants.

But our argument is that, for occurrents, such attributions are *just a way of speaking:* there is no extra first-class entity, *in addition to the running process itself*, which makes them true. How, then, do we respond to the need on the part of the users of BFO to annotate data deriving from measurement and other attributions which have processes as their targets?

Our response is, in first approximation, very simple: when we predicate, for instance, ‘has speed 3.12 m/s’, to a certain process of motion, then we are asserting not that that the process in question *has some special quality* (which the same process, in another scenario, might have lacked); rather, we are asserting that this process *is of a certain special type*. Thus an assertion to the effect that

1) motion *p* has speed *v* **at** *t*

is analogous, not to:

1) rabbit *r* has weight *w* **at** *t*,

but rather to:

1) rabbit *r* **instance\_of** universal *rabbit* **at** *t.*

(1), in other words, should be interpreted as being of the form:

(4)  motion *p* **instance\_of** universal: *motion with speed v* **at** *t.*

Note that this does not imply that a process can change its type from one moment to the next (any more than a rabbit can change its species. Rather, when a process is a process of moving at speed *v* a time *t* and a process of moving at speed *v*\+ at time *t*\+, then this is because parts of the process existing around time *t* instantiate a different types from parts of the process existing around *t*\+.

Note, too, that the above treatment of attribution in terms of instantiation reflects standard policy throughout the BFO ontology – part of a strategy to maintain BFO’s ontological simplicity. There are no qualities of occurrents, in BFO, just as there are no qualities of qualities, and also no qualities of spatial or temporal regions. Leaving aside the single case of qualities of independent continuants, attributions in BFO are quite generally treated in terms of the relation of instantiation, as in Table 1Table 1:

| spatial region *r* has volume *w* | *r* instance\_of universal *spatial region with volume w* |
| :---- | :---- |
| volume quality *q* has value 2 cubic meters at *t* | bearer of *q* exactly located in *spatial region* *r* and *r* **instance\_of** universal *1 cubic meter spatial region* |
| temporal region *t* has duration *d* | *t* **instance\_of** universal *temporal region with duration d* |
| process *p* has duration *d* | process *p* occupies temporal region *t* and *t* **instance\_of** universal *temporal region with duration d* |
| temperature quality *q* has value 63° Celsius | *q* **instance\_of** universal 63° Celsius *temperature quality* |

**Table 1: Examples of attributions in BFO**

### **Processes as dependent entities** {#processes-as-dependent-entities}

Processes themselves stand to the independent continuants which are their participants as qualities stand to the independent continuants which are their bearers. Our strategy is to use the instantiation relation between process instances and process universals as basis for an account of how process attributions (veridical process attribution talk) relate to the underlying reality. To make an approach along these lines work, however, we will need to find a way to do justice to the fact that the processes with which experimenters have to deal are typically highly complex in nature. A running process, for example, might simultaneously make true assertions to the effect that it is not merely an instance of determinable universals such as:

* running process  
* constant speed running process  
* cardiovascular exercise process  
* air-displacement process  
* compression sock testing process

but also of quantitatively determinate universals such as

*running process* of 30 minute duration

3.12 m/s *motion process*

9.2 calories per minute *energy burning process*

30.12 liters per kilometer *oxygen utilizing process*

and so on.

**That processes involve change is then reflected in the fact that some of the universals on this list may hold non-rigidly; thus John’s process of running may be a 9.2 calories per minute energy burning process at one time and an 8.7 calories per minute energy burning process at another.**

Figure 9

Figure 10 illustrates the cardiac events occurring in the left ventricle in a single beat of a human heart. This figure tells us that each successive beating of the heart is such as to involve (at least) six different sorts of physiological processes, corresponding to measurements along the six distinct dimensions of *aortic pressure*, *atrial pressure*, *ventricular pressure*, *ventricular volume*, *electrical activity*, and *voltage*, respectively. (Here voltage is used as a proxy for the intensity of sound.) (As de Bono, *et al*., point out, these measurements reflect the variables encoded in models of human physiology created by scientists using of ordinary differential equations \[85\].)

**![http://upload.wikimedia.org/wikipedia/commons/5/5b/Cardiac\_Cycle\_Left\_Ventricle.PNG][image9]**

**Figure 910\. A Wiggers diagram, showing the cardiac events occurring in the left ventricle <http://en.wikipedia.org/wiki/Cardiac\_cycle>.**

The figure illustrates how, when measuring activity in a complex system such as a human organism, it is variations only along specific structural dimensions of the corresponding whole process to which our measuring processes and the resultant measurement data relate. In the *running* case, these different measuring processes are directed to structural dimensions within the whole process pertaining to *speed of motion*, *energy consumed*, *oxygen utilized*, and so forth*.* In each case we focus on one structural dimension and ignore, or strip away in a process of selective abstraction, all other dimensions within the whole process.

When measuring processes, selective abstraction yields in the simplest possible case representations of sequences of qualities. Such sequences of qualities are one simple example of what, in what follows, we shall call *process profiles*. When we measure, for example, the *process of temperature increase* in patient John, then John himself is the bearer of the temperature qualities that we measure and record on John’s temperature chart. And when we measure John’s growth process by taking measurements of his height and weight at regular intervals, then there, too, it is John who is the bearer of the qualities that we measure and record. Process profiles of this simple sort can be represented by means of a graph in which measures of a certain quality are plotted against time.

##### ***Mutual dependence among qualities and their parts***  {#mutual-dependence-among-qualities-and-their-parts}

When we measure continuants, too, there is a similar process of selective abstraction, which yields – again in the simplest possible case – representations of *qualities* (of height, mass, and so on). In the realm of colour qualities, we can distinguish three dimensions of variation, corresponding to three reciprocally s-dependent parts of hue, brightness and saturation which can be measured independently. An instance of colour-hue cannot of its nature exist, except as bound up with some instance of brightness and saturation; instances of brightness and saturation, similarly, cannot exist except as bound up with some specific instance of colour hue \[45\]. This yields a dependence structure of the sort depicted in Figure 10Figure 11. \[3, 20\]

**Figure 1011: Three-sided mutual dependence of the three instance-level parts (*a*, *b*, *c*) of a colour instance:  *hue* (α), *brightness* (β) and *saturation* (γ).**

The parts represented in this Figure can be, again, separated out by the observer through a process of selective attention – as when we measure the saturation of a colour sample and ignore its hue and brightness – but they cannot exist except in the context of some whole of the given sort.

### **Process profiles (experimental)** {#process-profiles-(experimental)}

We can identify dependence relations among processes and their parts of a variety of different sorts. When a key is used to open a lock, for example, then the movement of key and lock form a mutually dependent process pair, and something similar holds when a pair of boxers are sparring in the ring, or a pair of rumba dancers are moving together across the dance floor.

For many families of processes, for example of human metabolism or physiology, researchers have identified complex repertoires of what we shall henceforth call process profile universals. It is instances of such universals that are represented in many of the assertions clinicians make when reporting process measurements in the form of time-series graphs (medical charts) of, for example, temperature, respiration or pulse rate. (See the Vital Sign Ontology \[91\] for further details.)

We introduce, first, the relation **process\_profile\_of** between one process and another surrounding process, as a special sort of **occurrent parthood** relation, which we elucidate as follows:

a(process profile)\[Elucidation: *b* process\_profile\_of *c* holds when

*b* **proper\_occurrent\_part\_of** *c*

& there is some **proper\_occurrent\_part** *d* of *c* which

has no parts in common with *b*
& is mutually dependent on *b*  
& is such that *b*, *c* and *d* occupy the same **temporal region** \[094-005\]\]

We can now define *process profile* as follows:

as(process profile)\[Definition: *b* is a *process\_profile* \=Def. *b* is a process and there is some process *c* such that *b* **process\_profile\_of** *c* \[093-002\]\]

A special subtype of such mutual dependence among process parts arises in cases such as are illustrated in Figure 9Figure 10, where the **process profile parts** in question are of the sort that serve as the target of a process of measurement. The key to annotating many process measurement data in BFO terms is to identify the process profiles represented by the corresponding measurement charts created in the salient domains.

When John is exercising and at the same time John is participating in a compression sock testing process, then the process profile which is John’s performance of the test is mutually dependent on the process profile which is John’s exercising. When heat is applied to a volume of gas in a closed container then the pressure of the gas will rise; when we measure the rise in temperature or in pressure of the gas then in each case we rely on selective abstraction, which enables us to identify and measure two distinct process profile parts of  a single whole process. Here the process profiles involved are: *increase in pressure of gas* and *increase in temperature of gas*.

Figure 9Figure 10 is to be interpreted as representing a collection of mutually dependent process parts, just as Figure 10Figure 11 represented mutually dependent quality parts.

#### **Quality process profiles**  {#quality-process-profiles}

Example(process profile)\[The simplest type of process profiles are what we shall call ‘quality process profiles’, which are the process profiles which serve as the foci of the sort of selective abstraction that is involved when measurements are made of changes in single qualities, as illustrated, for example, by process profiles of mass, temperature, aortic pressure, and so on. \]

#### **Rate process profiles**  {#rate-process-profiles}

example(process profile)\[On a somewhat higher level of complexity are what we shall call rate process profiles, which are the targets of selective abstraction focused not on determinate quality magnitudes plotted over time, but rather on certain ratios between these magnitudes and elapsed times. A speed process profile, for example, is represented by a graph plotting against time the ratio of distance covered per unit of time. Since rates may change, and since such changes, too, may have rates of change, we have to deal here with a hierarchy of process profile universals at successive levels\], including:

| speed profile constant speed profile  2 mph constant speed profile 3 mph constant speed profile increasing speed profile acceleration profile   constant acceleration profile     32ft/s2 acceleration profile    33 ft/s2 acceleration profile   variable acceleration profile    increasing acceleration profile |
| :---- |

and so on.

Clearly, the types and subtypes listed here are analogous to the determinable and determinable types and subtypes of qualities recognized by BFO-conformant ontologies on the continuant side discussed already above. Here again the reader must bear in mind that in both sets of examples the determinate universals in question, while they need to be referred to using specific units of measure, are in fact unit-specification independent.

#### **Beat process profiles** {#beat-process-profiles}

Example(process profile)\[One important sub-family of rate process profiles is illustrated by the beat or frequency profiles of cyclical processes, illustrated by the 60 beats per minute beating process of John’s heart, or the 120 beats per minute drumming process involved in one of John’s performances in a rock band, and so on.

Each such process includes what we shall call a beat process profile instance as part, a subtype of rate process profile in which the salient ratio is not distance covered but rather number of beat cycles per unit of time. Each beat process profile instance instantiates the determinable universal *beat process profile.* But it also instantiates multiple more specialized universals at lower levels of generality, selected from

   rate process profile

beat process profile

regular beat process profile

3 bpm beat process profile

4 bpm beat process profile

irregular beat process profile

 increasing beat process profile

and so on.

In the case of a regular beat process profile, a rate can be assigned in the simplest possible fashion by dividing the number of cycles by the length of the temporal region occupied by the beating process profile as a whole. Irregular process profiles of this sort, for example as identified in the clinic, or in the readings on an aircraft instrument panel, are often of diagnostic significance.\]

In the case of rate process profiles in general, measurement data are often expressed not in terms of the process profile instantiated across a temporal interval, but rather of what holds at some specific temporal instant. The latter is then defined in terms of the former in the following way:

     (5) John is moving with speed *v* at time instant *t* 

is to assert, in first approximation, that there is some temporal interval (*t*1, *t*2), including *t* in its interior, in which the speed *v* process profile is instantiated. More precisely (in order to take account of the fact that John may be moving with a continuously changing speed in the neighborhood of *t*), (5) must be formulated in something like the following terms:

(6)  Given any ε, however small, we can find some interval (*t*1, *t*2), including *t* in its interior, during which the speed *w* at which John is moving is such that the difference between *w* and *v* is less than ε.

Note that the logical significance of the ‘at time instant *t*’ in (5) is distinct from what it is, for example, in

1) John has temperature 64° Celsius at time instant *t*

In (7), we are using ‘at *t*’ as part of an assertion concerning the instantation by an individual of a continuant universal; in (5), we are using ‘at *t*’ to pick out a part of a process which instantiates an occurrent universal – where the instantiation relation itself is (as it were) timeless.

### **Spatiotemporal region** {#spatiotemporal-region}

    a(spatiotemporal region)\[Elucidation: A *spatiotemporal region* is an *occurrent* entity that is **part** of spacetime. \[095-001\]\]

 ‘Spacetime’ here refers to the maximal instance of the universal *spatiotemporal region.*

Spatiotemporal regions are such that they can be **occupied\_by** processes.

as(spatiotemporal region)\[Examples: the *spatiotemporal region* **occupied** by a human life\\, the *spatiotemporal region* **occupied** by the development of a cancer tumor\\, the *spatiotemporal region* **occupied** by a *process* of cellular meiosis. \]

a(spatiotemporal region)\[Axiom: All **parts** of spatiotemporal regions are spatiotemporal regions. \[096-001\] \]

a(spatiotemporal region)\[Axiom: Each spatiotemporal region **projects\_onto** some temporal region. \[098-001\] \]

a(spatiotemporal region)\[Axiom: Each spatiotemporal region at any time *t* **projects\_onto** some spatial region **at** *t*. \[099-001\] \]

The projection relation will need to be defined in each case in terms of the frame employed.

a(spatiotemporal region)\[Axiom: Every *spatiotemporal region* *s* is such that *s* **occupies\_spatiotemporal\_region** *s.* \[107-002\]\]

as(occurrent)\[Axiom: Every *occurrent* **occupies\_spatiotemporal\_region** some **spatiotemporal region.** \[108-001\]\]

a(spatiotemporal region)\[Axiom:  Every *spatiotemporal* *region* **occupies\_spatiotemporal\_region** itself.\]

### **Temporal region** {#temporal-region}

Given a temporal reference frame R, we can define ‘timeR’ as the maximal **instance** of the universal *temporal region*.

a(temporal region)\[Elucidation: A *temporal region* is an *occurrent* entity that is **part** of time as defined relative to some reference frame. \[100-001\]\]

a(temporal region)\[Axiom: Every *temporal region* *t* is such that *t* **occupies\_temporal\_region** *t.* \[119-002\] \]

a(temporal region)\[Axiom: All parts of temporal regions are temporal regions. \[101-001\] \]

A temporal region is an *occurrent entity* upon which a process can be projected. Temporal regions are introduced in BFO to provide a basis for consistent representation of temporal data, for example as described in \[68\].

##### ***zero-dimensional temporal region*** {#zero-dimensional-temporal-region}

a(zero-dimensional temporal region)\[Elucidation: A *zero-dimensional temporal region* is a temporal region that is without extent. \[102-001\]\]

as(zero-dimensional temporal region)\[Examples: a temporal region that is occupied by a process boundary\\; right now\\; the moment at which a finger is detached in an industrial accident\\; the moment at which a child is born\\, the moment of death. \]

a(zero-dimensional temporal region)\[Synonym: temporal instant. \]

##### ***one-dimensional temporal region*** {#one-dimensional-temporal-region}

a(one-dimensional temporal region)\[Elucidation: A *one-dimensional temporal region* is a temporal region that is extended. \[103-001\]\]

a(one-dimensional temporal region)\[Example: the temporal region during which a process occurs. \]

note(*one-dimensional temporal region*)\[A temporal interval is a special kind of *one-dimensional temporal region*, namely one that is self-connected (is without gaps or breaks).\]

![C:\\Users\\phismith\\Downloads\\all.tif][image10]

