# Building Ontologies with Basic Formal Ontology

## 3 Principles of Best Practice I: Domain Ontology Design

In our Introduction, we articulated the problem of managing scientific information in a way that allows combinability and comparability, and we discussed ontology as a proposed general solution to this problem. In chapters 1 and 2, an ontology was defined as a representational artifact whose representations are intended to designate universals, defined classes, and the relations among them. We also introduced some distinctions among different kinds of ontologies, and introduced the idea of a taxonomy as the central component of an ontology. In light of all of this, the problem of designing an ontology is the problem of designing a formalized representational artifact, including a taxonomic hierarchy as backbone, whose representations (terms) designate universals, defined classes, and the relations between them. In this chapter and the next we will discuss what this process looks like in practice, focusing on considerations and principles geared toward the design of domain reference ontologies useful in supporting scientific research. Issues to be considered in this chapter include: subject matter and scope of a domain ontology, as well as the first steps that one should take in designing the ontology itself.

### General Principles of Ontology Design

We will first set forth principles specifying the general attitude or outlook to be kept in mind when designing an ontology. Our position is that a good ontology will be one that is designed in such a way as to respect these principles and that, indeed, respecting these principles will be part of what makes an ontology a good one.

#### Realism

We have already discussed our commitment to realism in chapter 1. In general, "realism" can be defined as a philosophical position according to which reality and its constituents exist independently of our (linguistic, conceptual, theoretical, cultural) representations and can be known, for example, through perceptual experience and through application of the scientific method. The goal of science, from this realist (and, we believe, commonsensical) perspective, is to discover truths about reality.

Realism in ontology is based further on the idea that with the aid of science we can come to know the general features of reality in the form of universals and the relations between them. This realist approach has a number of general consequences. First, it implies that ontologies are representations of reality, not of people's concepts or mental representations or uses of language. Certainly an ontology of, for example, cognitive psychology or linguistics might have concepts or mental representations or uses of language within its subject matter. But then the latter would be treated as parts of reality in a way exactly analogous to what is the case in, for example, an ontology of astrophysics or plant development.

Many parts of science pertain to entities, such as chemical elements or prokaryote cells or Paleoproterozoic rocks, which existed long before the first human beings. Other parts of science pertain to entities-for example, in the domains of law or economicswhich exist as a result of human thought and activity. Ontological realism applies equally to all branches of science, taking the view that, for example, collateralized debt obligations are no less real than electrons and planets.

#### Perspectivalism

The goal of science is not merely to discover truths about reality. Its goal is to develop theories that are as accurate, as broad ranging, as predictive, as explanatory, as logically coherent, and as well tested as possible. Unfortunately these goals-and a number of other goals that are also found attractive, such as maximal consistency with common sense-seem not to be simultaneously realizable. To cope with this fact, we embrace a doctrine of perspectivalism.

Perspectivalism flows from the recognition that reality is too complex and variegated to be embraced in its totality within a single scientific theory. It amounts to the principle that two distinct scientific theories may both be equally accurate representations of one and the same reality.

This does not mean, of course, that all representations created by scientists are of equal value. A view according to which fish are mammals would clearly be of less value than a contrary view, because it would be less accurate to the facts of reality. But there are nonetheless many different representations that are equally good (true, veridical) representations of some given portion of reality precisely because they capture different features of this reality. The most straightforward examples of different but equally legitimate perspectives regarding the same domain of reality have to do with the phenomenon of granularity. Simply put, it is equally legitimate to examine living organisms from a perspective of molecular biology as from a perspective that takes into account anatomy and physiology at the level of organs and organ systems. It is equally legitimate to examine human behavior from the perspective of the physics of the human sensorimotor system as from the perspective of economic incentives. Each of the mentioned perspectives can yield contributions to our knowledge of reality that are accurate to the reality at hand.

The implications of perspectivalism for ontology are that the irreducibility of different perspectives should be respected also in the design of ontologies. Ontology developers should not seek to represent all portions and features of reality in a single ontology, but should seek, rather, a modular approach, in which each module is maintained as far as possible by experts in the corresponding scientific discipline.

#### Fallibilism

Fallibilism involves commitment to the idea that, even though our current scientific theories are the best source we have of statements that are candidates for expressing truths about reality, it may nevertheless be the case that some of these statements are false. Reality exists independently of our ways of understanding it scientifically, and experience tells us that even our best current theories may be subject to correction. Thus while the realist holds that our experiences, ideas, and scientific theories are about reality-that they form in totality a representation, a map or picture, of realitythis does not mean that all elements of this map are correct; some elements may misrefer, some may fail to refer at all.

Our map of reality is at any given stage always only partial: reality is never revealed to scientists in all its totality. And because our representation is continually expanding as we learn and discover more about what exists on the side of reality, what we believe today, based on what we have learned about those facets of reality to which we have so far gained access, is sometimes undermined by what we learn tomorrow about facets of reality hitherto unappreciated.

The process of correction of our map of reality is itself subject to multiple different sorts of setbacks and changes of direction, some (few) of which may be radical in nature (two outstanding examples being the Copernican and Darwinian revolutions in physics and biology). Through all of these changes, however, and even through the most radical of scientific revolutions, major referential elements of this map remain intact. Scientists erred in believing that the sun rotates around the earth; but upon correcting this error they continued to use terms like "sun" and "earth" to refer to the very same entities as before. Something similar applies to general terms like "atom," "star," "organism," "cell," and "planet." While our beliefs about these entities have changed with time, these terms themselves have to a large degree preserved their reference through such changes. At the same time, however, the fallibilist accepts that in regard to general terms, too, our scientific knowledge is subject to being overturned through time through new empirical discoveries, as, for example, in the already mentioned "phlogiston" case.

Some specific implications of fallibilism for ontology design in support of scientific research include the following:

3a. That every ontology must have sophisticated strategies for keeping track of successive versions of the ontology.

A new version of an ontology becomes necessary when errors in current scientific theory about the domain are discovered and corrected and when new information relevant to the domain is discovered. Users of the ontology need to be able to keep track of such changes.

3b. That every ontology needs to have a tracking service for its users that will allow them easily to point out errors and gaps in the ontology and to have their submissions to this service addressed in a timely manner.

Like science itself, ontology design is an ongoing collective enterprise in which errors can be detected and avoided by the input and testing of multiple individuals.

#### Adequatism

There is a widespread tendency in philosophical circles to view the goal of philosophy in reductionist terms. On this view the job of the philosopher is to explain complex phenomena by reducing them to simpler and more fundamental components, here drawing on the astonishing successes of modern physics. Adequatism is the opposite tendency, which holds that the entities in any given domain should be taken seriously on their own terms and that room must be made in our set of theories of reality for all of the different sorts of entities that reality contains, at all levels of granularity.

For the adequatist all scientific disciplines are prima facie of equal worth in providing representations of what exists in reality. Just as an ontology of physics is about, for example, atoms and subatomic particles, and an ontology of chemistry is about chemical elements and compounds and the associated reactions, so an ontology of biology will include representations of the universals and defined classes at various levels of granularity from molecules and cells, to organs and organisms, and from there to populations and ecosystems. The goal of ontology as viewed by the proponent of adequatism is to do justice to the vast array of different kinds of entities that exist in the world, rather than ignoring these or those specific kinds of entities or attempting to explain them away.

It is the adequatist view of ontology that is defended in what follows. Suppose, for example, that one needs to create an ontology for a given domain as this domain is described in the textbooks of some given scientific discipline. The ontology should be designed to represent the types of entities described in the textbooks; but it should do this in such a way that it can be linked to other ontologies covering neighboring domains, including domains recognizing entities at different levels of granularity. The implication is that ontologies should not be developed in isolation from each other, but rather always in tandem with ontologies with which they must interoperate.

More generally, an adequate framework for ontology development should allow for entities at multiple levels of granularity (as, for example, in biology, where an adequate general framework must allow for-at least-molecules, cells, organs, organisms, and populations) and for a variety of different kinds of relations between the entities on these different levels.

### Additional Principles of Ontology Design

Whereas the foregoing four principles represent general theoretical standpoints about ontology design, the following four are more concrete guidelines concerning the design process itself.

#### The Principle of Reuse

Ontologists should not reinvent the wheel. The first step in ontology development should always be one of examining existing ontology resources in and around the domain of focus in order to identify content that is already available that meets scientific and ontological standards. Ontologies should reuse as far as possible relevant ontological content that has already been created; and even where this content cannot be reused it should be regarded as forming a benchmark that can be used to gauge the adequacy of new content that is created.

Ontologies are designed to support communication between information resources relating to the multiple provinces of reality and to the multiple disciplines which seek to describe them. They can be compared, in this respect, to highway systems. It will very rarely be the case that the correct solution to an ontological problem involves the equivalent of ignoring all the roads that already exist, and creating an entirely new highway system from scratch.

At the same time, however, it must be emphasized that-precisely because ontologists have so often ignored design principles of the sort presented here, and because they have themselves often created new ontologies from scratch-much available ontology content is poor in quality, and so due diligence is required not merely in identifying potential ontologies for reuse, but also in evaluating the ontologies identified (and in some cases recommending that they be excluded from further use).

#### The Ontology Design Process Should Balance Utility and Realism

It is an implication of realism that some representational schemes are better than others because they are better representations of reality. Given that some of the roots of ontology building lie in the field of what is sometimes called knowledge engineering, where highly practical motives predominate, it is often argued that ontologies should be measured not by this global standard of adequacy to reality-a standard adapted from the domain of science as a whole-but rather by their utility to some specific local purpose. From our point of view, however, this focus on local utility is wrongly conceived if it is seen as involving a sacrifice on the side of adequacy to the reality which the ontology is being constructed to represent. For it is this reality-as described in the best current science-which provides the common benchmark that can ensure that ontologies are developed in a consistent fashion. Ontologies can indeed be developed in the absence of such a benchmark, but then when they are used to annotate data, the results will not be combinable-except perhaps through considerable manual effort-with data collected by others in neighboring domains. One lesson from over fifteen years of experience with the Gene Ontology is that the purpose for which an ontology originally is constructed may differ in significant ways from what turn out to be important secondary uses that could not have been anticipated when the ontology was first conceived.

#### The Ontology Design Process Is Open-Ended

The principles discussed so far provide a framework for understanding a crucial further point about ontology design: designing a domain ontology, at least in the scientific domains of primary concern to us here, is but the first step in an open-ended process of continuously maintaining, evaluating, updating, and correcting the ontology, and of adjusting the ontology to neighboring ontologies in order to take account of advances both in scientific knowledge and in our knowledge of ontology and its associated logical and computational technologies.

Realism implies that the central goal of a good ontology in support of scientific research is to represent reality adequately. But it implies also that for scientific domains we are at any given stage almost always in possession of only partial information about the reality at issue. Our strategy thus forces upon us the precept that ontologies should be designed in such a way as to be expandable and amendable through time, and the best practice principles that we will be discussing in what follows are designed to serve this end. Note that this precept is consistent with the fact that there will be practical constraints on the ontology builder resulting from the fact that resources for populating an ontology are limited by economic and other circumstances. For while those branches of the ontology that are associated with the most urgent needs will be developed in greatest detail, the population of such branches will be of greater utility if it is managed within a general framework that can allow coherent population of neighboring branches in the future.

#### The Principle of Low-Hanging Fruit

A final general principle to keep in mind is the following: when designing a domain ontology, begin by identifying those features of the subject matter that are the easiest and clearest to understand and define.

The ontologist should begin, in other words, by gathering the low-hanging fruit on the ontology tree, including what to a human being may seem like trivial assertions (for example, cell membrane is_a membrane) but which to the computers who will process the ontology are indispensable. In constructing a domain ontology we start by categorizing the simple universals and relations first. As a general rule, the ontology developer should start by identifying the general terms most commonly used in the beginning chapters of relevant introductory textbooks, and move on from there, step by step, to the representation of more complex entities within the domain. The principles of ontology design that have been surveyed up to this point are summarized in box 3.1.

### Overview of the Domain Ontology Design Process

Ontology is a top-down approach to the problem of electronically managing scientific information. This means that the ontologist begins with theoretical considerations of a very general nature on the basis of the assumption that keeping track of more specific information (for example, about specific organs, genes, or diseases) requires getting the very general scientific framework underlying this information right, and doing so in a systematic and coherent fashion. It is only when this has been done that the detailed terminological content of a specific science such as cell biology or immunology can be encoded in such a way as to ensure widespread accessibility and usability. The method to be followed in constructing a domain ontology on the basis of this general starting point can be summarized in the steps outlined in table 3.1.

#### Table 3.1

An outline of the steps to be followed in designing a domain ontology

Step 1 consists of determining and demarcating the subject matter of the ontology one needs to build. This will involve establishing the nature and scope of the data (for example, experimental or clinical) one needs to annotate, and identifying existing ontology content in relevant domains. The initial survey of the content of the pertinent science should yield provisional answers to the following questions:

- What are the domain universals and relations that need to be represented?

- What are the appropriate domain-specific terms that should be used in representing these universals and relations?

- What levels of granularity of entities are salient for the ontology?

Step 2 is the task of assembling a selection (fifty or so) of the most common highly general terms, some of them taken from relevant ontologies, some from standard textbooks.

Step 3 is the provisional ordering of these terms in a hierarchy of the more and less general and serves as the precursor to step 4. Step 4 consists in working on this hierarchy to ensure coherence, for example, by adding further terms to ensure a complete taxonomical hierarchy for the ontology; and identifying the terms referring to the highest-level universals in the domain in question, which will serve as the root node or nodes of the ontology being developed. It will involve also creating a set of humanunderstandable definitions for the selected terms, which will include gathering further information concerning the most important domain-specific universals which are subsumed by these highest-level universals, and identifying any relevant terms in neighboring ontologies which will be needed in the formulation of the definitions. Starting with the root nodes and working downward, we attempt to identify successive genera and differentiating characteristics that will need to be included in the definitions of the entities to be included in the ontology; and we adjust our preliminary classification scheme in light of any changes which our definitions dictate.

The process of regimentation is iterative, and will involve successive cycles of reviewing versions of the hierarchy of terms and definitions for logical, philosophical, and scientific adequacy, including consistency and human intelligibility, and also ensuring that the result leaves out no essential elements of the domain.

Once a thorough understanding of the domain has been established in this way, step 5 is the task of iterative encoding of the ontology through logical formalization. This is achieved by transforming the natural language definitions for the terms contained in the ontology into a format that is computer usable using an ontology editing tool.

While the process of five steps is top down in nature, working from the highly general to successively less general terms in the ontology, in practice it will involve a great deal of cycling via feedback loops between the successive steps. In the following sections, we will discuss the demarcation and information-gathering processes in more detail. In chapter 4 we will address the issue of regimentation, and we will return to issues of encoding in chapter 8.

Explicitly Determine the Subject Matter of the Domain Ontology

The first step in constructing a domain ontology is to determine explicitly the intended scope of the ontology, which is to answer the question: "what part of reality is this ontology an ontology of?" Providing an explicit statement of this scope will serve to indicate both what is to be included in and what is to be excluded from the intended ontology. For example, the documentation for the Foundational Model of Anatomy (FMA), an ontology of human anatomy, describes the ontology as "strictly constrained to 'pure' anatomy, i.e., the structural organization of the body."' This statement makes it clear which terms are candidates for inclusion in the FMA, but also which terms to exclude: those relating, for example, to functional anatomy, or surgical anatomy. The specification of scope will also indicate the level or levels of granularity of reality against which the ontology is calibrated. Will this be multicellular organisms, or organs, or cells, or cell components, or molecules? Or will it perhaps be entire populations of organisms? Or will it be some combination of levels, as in an ontology that deals with cell signaling and thus needs to represent, for example, both cells and signaling pathways?

### Domain and Top-Level Ontologies

We have seen that for purposes of successfully managing scientific information in the long term, the root node or nodes of a domain ontology should be defined in terms of some highly general universal taken from a domain neutral ontology such as BFO. This will help to ensure that the ontology is built using a high-level ontology architecture that is shared with other ontologies.

If, for example, the relation part-Of is asserted in a given formal ontology as being transitive (so that if x of y and y part-of z, then x of z will hold), then in a domain ontology built on its basis, for example, in the domain of anatomy, we will be able to use this feature of the parthood relation to infer from finger part_of arm and arm part-Of body, to finger part-Of body.

Similarly, if a top-level ontology contains distinct representations for continuants (three-dimensional entities that continue to exist through time, such as planets and molecules) and occurrents (entities that occur, which means that they are spread out not just in space but also in time, such as a baseball game or the movement of a planet in its orbit), then all domain ontologies defined on its basis will be required to respect this same distinction among the entities it represents.

In these and a series of related respects the top-level ontology helps to ensure the correctness of ontology construction at lower levels. If an ontology uses part-Of but contains assertions that contradict transitivity, then these assertions can be flagged as being in need of manual checking. If an ontology recognizes the distinction between things and processes, then problem cases-for example, terms such as "gene mutation," which are ambiguous as between thing and process readings-can be identified in advance and warnings issued requiring developers to subject such terms to additional manual inspection. BFO was designed to play this kind of role in the process of domain ontology design and quality assurance.'

For these reasons it is important, at the outset of designing a domain-specific ontology, to consider what top-level ontological categories and relations might apply to the domain at hand, and to select a top-level ontology representing sufficient and sufficiently clear categories and relations to handle the basic kinds of entities to be found in the domain in question. It is important to note that, by definition, a top-level ontology should be domain neutral. Thus it should not contain representations of relations and universals that are specific to any given domain. It will thus, in comparison with many of the domain ontologies defined in its terms, be very small. The ontological content pertinent to each specific domain is then added to that of the top-level ontology through the process of downward population.

### Relevance

The task of determining what portion of reality a domain ontology should represent involves also addressing the problem of determining what and how much of the existing data and information about a given domain should be included in the ontology. It can be summarized as the problem of determining what is relevant for the ontology, a matter to be determined (1) by the current state of science, and thus by the structure of the corresponding portion of reality, (2) by the degree to which existing ontologies in neighboring areas can be relied upon in supporting the given ontology's development, and (3) by the practical goals the ontology needs to satisfy.

What is objectively relevant to the Cell Ontology (CL), for example, is determined by the nature of cells themselves, what they are, what processes they characteristically initiate or are involved in, and so forth. The CL taxonomy of immune cells is created on the basis of information about the protein molecules expressed on cell surfaces; representations of relevant types of molecules are drawn from the Protein Ontology (PRO), to create definitions such as the following:

lymphocyte of B lineage = def. lymphocyte and (has-plasma-membrane-part some CD19 molecule) and (lacks-plasma-membrane-part some CD3 epsilon)

Or in other words: a lymphocyte of B lineage is a lymphocyte that has CD19 molecules on its plasma membrane but does not have CD3 molecules on its plasma membrane. Here "lymphocyte" is a higher-level term defined in CL, "CD19 molecule" and "CD3 molecule" are defined in PRO, and "plasma membrane" is defined in the Cellular Component branch of the Gene Ontology.

Connections between cells and proteins are handled by building links between relevant ontologies in such a way that the information compiled in each of these ontologies is brought together in ways useful for reasoning and integration. By this means we avoid also some of the dangers of silo formation-for example, where those interested in cells feel tempted to develop their own local ontology of protein surface markers, an ontology that would fail to interoperate with other protein information resources. Ensuring that the corresponding domain ontologies have been structured on the basis of the same top-level ontology from the start makes it easier to bring them into alignment in the needed way.

The task of determining what needs to be represented in an ontology will also depend on the practical goals the ontology needs to satisfy. All ontology development (like all of science) is to some degree opportunistic: which parts of an ontology are developed first, or in the greatest detail, will often depend on available funding, and such funding will often be bound to purpose. Goal-oriented human activities bring some entities into focus and leave others in the background. If our job is to support the scientific investigation of a hypothesis relating to, say, fetal diseases involving lymphocytes of B lineage, then we will first identify existing ontologies with relevant content. But our investigation may require the development of an entirely new ontology focusing strictly on specific areas-for instance on interactions between these and those specific kinds of cells and molecules in these and those kinds of patients undergoing these and those kinds of treatment.

These ways in which purpose can determine ontology content reflect the distinction introduced in chapter 2 between reference ontologies and application ontologies. A reference ontology is a representational artifact analogous to a scientific theory, in which maximizing expressive completeness and adequacy to the facts of reality are of primary importance. An application ontology is a representational artifact that is designed to assist in the achievement of some specific goal. Reference ontologies will be constructed and structured primarily on the basis of the established content of a scientific discipline. Application ontologies will be constructed and structured primarily in terms of what is relevant to some specific goal. To be successful in the long term, however, application ontologies should to the maximal possible extent make use of portions of reference ontologies as their starting points. Development of application ontologies thereby can also benefit work on reference ontologies, for example, where terms created within the framework of the former are discovered to be of general scientific relevance, for example, then these terms will be promoted to a level where they form part of a reference ontology available for more general use.

### Granularity

One subpart of the problem of determining relevance is the issue of determining the appropriate granularity of the entities to be represented in an ontology. The issue of granularity arises because things in reality, and also the parts of things, come in many different sizes and possess varying degrees of complexity. There is a continuum stretching from subatomic particles, atoms, and molecules, through ordinary objects such as animals, rocks, and tables, on to ecosystems, planets, solar systems, galaxies, and ultimately the universe itself. There is an analogous continuum also in the realm of processes unfolding in time, stretching from milliseconds to years to geological epochs. Things and processes can be identified at all of these different granularity levels, and as we move up to successively coarser grains we encounter entities that exhibit features not found at lower levels-a phenomenon referred to by philosophers under the heading of "emergence." The problem of granularity for ontology design is the problem of deciding the prototypical sizes and complexities of entities that are to be represented in a given domain ontology. Should an ontology of mountains include representations of the types of molecules of which the mountains are composed? Should an ontology of stages in the plant life cycle include stages of growth of individual leaves? When setting out to design an ontology, the choice of root nodes will determine, in part, the level or levels of granularity that will form part of the ontology's coverage, but this determination will be influenced primarily by the needs of users of the ontology-for example, in reflection of the degree to which finer gradations of taxonomy enable the recording of differences in data of a practically useful sort.

### The Problem of Nonexistents

Once the domain or scope of an ontology has been decided on, what is needed is a systematic survey of the content of the established science relevant to this domain. This means primarily surveying the current content of authoritative textbooks and of salient terminologies. Thus ontologies relate primarily to the use of general terms in established sciences. Ontologies may in areas such as chemistry be used to represent types of entities which do not exist-for example, molecules not yet synthesizedbut in general the rule is that ontologies should consist of representations only of those types for which we have good evidence that instances exist (and, by extension, only of those defined classes for which we have good evidence that there are members).

Very occasionally, ontologies may need to be developed to support research in areas still subject to dispute among different groups of scientists and thus not belonging to established science. (Recall, again, the case of the "Higgs boson.") We prefer to see such ontologies as provisional in nature, to be promoted to the ranks of ontologies proper only when the disputes in question have been settled. The methods for the creation of such provisional ontologies will then be essentially the same as those outlined here, but will apply the process of term selection not to established textbooks but, for example, to journal articles produced by some subset of the disputing partners. The results of such provisional ontology development will then also be provisional. They will be able to be added to existing ontology content and treated like other ontologies only when the disputes in question have been resolved.

### Conclusion

In this chapter we have introduced some general principles of ontology design and provided an overview of the two initial phases of the ontology building process-namely, demarcating the domain of the ontology and gathering information about the domain. In the following chapter, we will discuss the third step of the ontology building process: regimentation, which deals in greater detail with issues of terminology selection, definition, and classification.

## 4 Principles of Best Practice II: Terms, Definitions, and Classification

We assume that, following the recommendations advanced in chapter 3, the appropriate scope of the ontology has been determined and the relevant domain information assembled. We assume also that the ontology builder has created a draft list of terms and associated these with a first draft set of definitions and a provisional is_a hierarchy. The next step is to use this list of terms to regiment the domain information in a systematic way, while at the same time allowing an improved understanding of the domain to generate improvements in the list of terms. The goal is to develop a representational artifact that is as logically coherent, unambiguous, and true to the facts of reality as possible.

There are three major facets of regimentation for domain ontologies: terminological, definitional, and location in an is_a hierarchy. We will treat each of these issues in turn, though the reader should bear in mind that there is a large degree of overlap and interdependency between the three sets of issues.

### Principles for Terminology

### Gather and Select Terminology

In chapter 3 we suggested that a good starting point for ontology building is to create a set of terms selected from the most commonly used terms in standard textbooks and in relevant domain ontologies. A first and indispensable step in any ontology development project is to perform due diligence in identifying existing ontology content that is relevant to the task in hand, and to evaluate this content for potential reuse, drawing on tools for searching ontologies such as the NCBO Bioportal (http:// bioportal.bioontology. org).

The resultant list of words (or better: of common nouns and noun phrases) forms the first draft of what we can think of as a terminology for the domain in question. Such a terminology may have utility already for human beings, for example, in supporting consistent use of language in exchanging information. For us, however, it has a more ambitious purpose, which is to enable the scientific information with which it is associated to be incorporated into the specific type of computer-based representational artifact that is an ontology, and for this a special sort of terminology will be needed.

The Gene Ontology (GO), by far the most successful ontology to date, was described by its creators as a "controlled vocabulary" to be used for regimenting the ways in which information about gene products in different model organisms is described. The problem it was designed to address is common across the whole of science: where multiple disciplinary groups are involved in the study of some scientific phenomenon of interest each will likely have its own idiosyncratic vocabulary. The problem is that there are too many terms for purposes of successful information exchange across disciplines. The GO provided a strategy to solve this problem by disseminating a set of "preferred terms" for use in describing attributes of gene products in a species-neutral way. Preferred terms are then used systematically by literature curators to describe experimental data appearing in published papers. These data then become more easily retrievable and combinable, in ways that overcome the problems caused by multiple conflicting vocabularies.

The success of the GO is due in large part to the fact that the influence of its creators was such that they were able to establish their chosen preferred labels as attractors for a large core of users in each of a variety of multiple interacting disciplines studying a variety of different species of organisms. To replicate this success, ontology builders today need to find a way of selecting terms that are as close as possible to the actual usage of a large fraction of those working in the relevant field without alienating those working in this field whose established terminologies involve the use of different terms. This goal can be achieved, in part, through disseminating the chosen preferred labels by using them in the curation of large bodies of data useful to the wider community, and-again following a practice pioneered by the GO-incorporating community-specific "synonyms" into the ontology alongside the preferred labels. Three principles of terminology construction can then be gleaned initially from the experience of the GO:

1. Include in the terminology terms used by influential groups of scientists for the most important types of entities in the domain to be represented.

2. Strive to ensure maximal consensus with the terminological usage of scientists in the relevant discipline. This may well involve working with domain experts, for instance in negotiating terminological compromises.

3. Identify areas of disciplinary overlap where terminological usage is not consistent. Look for and keep track of synonyms for terms already in the terminology list from these areas.

This strategy alone will work in cases where overlapping disciplines differ merely in their choice of words for the representation of identical entities. Where the terminologies employed by distinct disciplines in such overlapping areas differ in more substantial ways, more complex strategies need to be employed. Two ontologies may, for example, deal with the same phenomena, but at different levels of granularity (for example, molecule and cell); or they may differ in that one ontology deals with objects while another deals with processes; or one may deal with objects, while the other deals with images of objects.

In such cases multiple ontologies must be developed (or multiple branches of a single ontology), and the corresponding terms connected together through relations and through corresponding definitions and axioms. These are workable strategies because we are dealing with areas of established science, where we can assume that the disciplines in question will be consistent with each other as concerns their scientific content. Often it will be possible to formulate mapping rules-analogous to, for example, rules for conversion between different systems of scientific units-which allow assertions formulated using the terms from one discipline selected as synonyms in an ontology to be converted into assertions formulated using the terms selected as preferred labels.

What is at all costs to be avoided is the creation of entirely new expressions as preferred labels in ontologies to represent entities with which domain experts are already familiar under established names. Similarly, the ontologist should avoid using familiar terms with new and different meanings. To avoid confusion both in the encoding of information into the ontology and in the interpretation of such information by end users, the terminological choices of domain ontology builders should be as respectful as possible of the current terminology, usage, and practice of contemporary domain experts and of potential users. This leads to a fourth principle for terminology construction, which echoes the principle of reuse from chapter 3.

1. Don't reinvent the wheel. In term selection, stay as close as possible to the usage of actual domain experts. In terminology construction and ontology design, make use of as many existing resources (terminologies and ontologies) as possible.

### Formatting Terminology

1. Use singular nouns.

The terms in an ontology should as far as possible have the grammatical form of singular nouns or singular noun phrases.

Two sorts of reasons support adoption of this convention. First (and this will be a common refrain in what follows when we deal with recommendations about syntax and terminology), it is crucial that some syntactical standard, some rule of the road, be adopted and adhered to by all of those involved in ontology building in order to synchronize the multiple such efforts running in parallel at any given time. To see what happens when this rule is not followed, consider, for example, the case of McSH,' whose hierarchy implies is_a relations such as

communism is_a political systems,

political systems is_a social sciences,

social sciences is_a behavioral disciplines and activities,

behavioral disciplines and activities is_a topical descriptor,

and so forth. Mixed use of singular and plural nouns may be perfectly appropriate for purposes such as the construction of library catalogs; it causes problems, however, when compiling information in a form that will be reasoned over.

The singular noun rule has been well tested in practice, and yields a simple and costfree form of synchrony. There is also a principled reason for insisting that all terms in an ontology should take the form of singular nouns. This is because each such term is intended to refer not to some plural or collective entity, but rather either to a universal or to a defined class. In either case, its reference will be singular. There is only one universal organism, even if it has many instances, and there is only one defined class cause of traffic accident, even if it has many and diverse members.'

1. Use lowercase italic format for common nouns.

Along the same lines as principle 5, we recommend that when preparing ontology content for review by human beings lowercase italic letters be used for terms referring to universals or classes (this recommendation being based in part on the fact that initial capital letters are normally used in English to indicate proper names, which are names of instances ("Tom," "Seattle," "Jupiter"). Thus cat, not "Cat" or "CAT," and eukaryotic cell, not "Eukaryotic Cell" or "EUKARYOTIC CELL."

Some ontology editing programs require the use of underscore (eukaryotic_cell) or single quotation marks ('eukaryotic cell') or camel case (eukaryoticCell) in order to allow the beginnings and endings of noun phrases to be identifiable by the computer. Whichever traffic rule is chosen in this respect, the main goal is to ensure that the convention is consistently adhered to-again for reasons of cross-ontology coordination.

1. Avoid acronyms.

Avoid as far as possible the use of acronyms and abbreviations in formulating ontology terms. The rationale for this is that acronyms and abbreviations are too easy to create locally-often, for example, by designers of databases for no reason other than to enable all column headings to fit on a single screen. The half-life of acronyms can be very short, and it is not unusual for those who work with databases (even, sometimes, a database's own creator) to forget what their acronyms originally meant. The goal of ontology, in contrast, is to create standard terminologies that can be employed and relied upon by anyone-in the present and in the future-working in a given discipline. Some acronyms and acronym-involving expressions have in some scientific idiolects become part of the language, as, for example, in terms such as "DNA" or "AIDS," or "ATPase"; they have become in this way safe from the possibility of being reused by new groups of researchers with different meanings. Apart from such cases, however, when selecting a primary label for an entry in an ontology a complete noun or noun phrase should in every case be used.

1. Associate each term in the ontology with a unique alphanumeric identifier.

The identifier is associated with the term in a given version of the ontology. Whenever the ontology is revised and published in a new version, then provided the term in question is not changed in this revision, its identifier can be preserved without change. Identifiers are needed for computer purposes-they will, for example, form the basis of the universal resource identifiers with which ontology terms will be identified in webbased systems. Figure 4.1 is a screen shot of a fragment of the Protein Ontology (PRO) that illustrates the approach we recommend.'

At the top of the hierarchy in figure 4.1 is the entry for "amino acid chain." Clicking on the entry will take the user to a human-readable definition of the term, along with other information about it. To the left of the term is its alphanumeric identifier PR:000018263, which uniquely identifies the location of this term in the PRO structure for purposes of computer programming and is used also in the creation of cross-links from other ontologies and databases back to the PRO. The identifier will be associated not merely with the term but also with its unique human-readable definition (for purposes of construction, maintenance, and use of the ontology by human beings), and also with the logically formalized version of this definition.

1. Ensure univocity of terms.

Terms should have the same meaning on every occasion of use. In an ontology, "cell" should refer always to the universal cell, "cancer" always to the universal cancer, and so on. The principle of univocity in ontology terminology development is difficult to maintain because it is so regularly violated both in ordinary and in scientific (and clinical) language. This occurs, first of all, because of ambiguous expressions, including "cell" itself, which has not only a biological meaning but also (related) meanings in relation to, for example, prison cells or cells in a spreadsheet. A more important reason, however, turns on the fact that departures from univocity occur because of the human tendency to use ellipsis in local circumstances (for example, to use "third left hip" to refer to the hip fracture patient in the third bed on the left-hand side of the ward). The reason for insisting upon univocity in the context of ontology design is quite straightforward. If the same term is used in different ways in different contexts, then the humans involved in ontology building are more likely to make errors. Ontologies are of course devised for use primarily by computers, and there the problems of ambiguity are alleviated by the use of unique alphanumeric identifiers for each ontology term. Working hard to avoid departures from univocity is still important, however, since experience shows that such departures are a source of human errors during ontology authoring and maintenance.

#### Figure 4.1

Screenshot from the Protein Ontology (PRO) browser containing terms identified by alphanumeric identifiers

It should be noted here that what the principle of univocity specifically says is that every term in an ontology should have exactly one meaning. We do not rule out the presence in an ontology of multiple terms having the same meaning-but this should occur always through the device of declaring one such expression the preferred term, with which synonyms may then be associated according to the terminological needs of the different communities using the ontology.

An example of violation of the principle of univocity is the treatment of the term "disease progression" in the National Cancer Institute [NCI] Thesaurus (version dated August 2, 2004), which offered three different possible interpretations:

(I) Cancer that continues to grow or spread;

(II) Increase in the size of a tumor or spread of cancer in the body;

(III) The worsening of a disease over time. This concept is most often used for chronic and incurable diseases where the stage of the disease is an important determinant of therapy and prognosis.4

In definitions (I) and (II) "disease progression" is something that involves only cancer; in definition (III), however, "disease progression" involves the worsening of any disease over time. In the third definition, too, a "disease progression" is identified as a "concept," not as a process. This definition also contains a clause describing how the term is often used. Such information can be included in a comment that is associated with the term in question; for logical reasons, however, it should not be included in the definition itself.'

Note that the identified problems still persist in the current (June 30, 2014) version of the NCI Thesaurus, where we have, for example, two terms "cell," defined as meaning "any small compartment" and as "the individual unit that makes up all of the tissues of the body." The former is asserted to be a subtype of "conceptual entity"; the latter of "microanatomic structure.116

1. Ensure univocity of relational expressions.

Univocity applies also to the relational expressions used in ontology hierarchies, for example, is_a and part-Of. The early years of ontology development were marked by a phenomenon of "is_a overloading" whereby "is_a" could mean in different contexts either subclass of, or instance of, or some confused mixture of both.' Similarly, "A part-Of B" was sometimes used to mean that all As are part of some B, all Bs have some A as part, some As have some Bs as part, or again some confusing mixture of all of these.' For further details of how these issues are to be resolved, see chapter 7.

1. Avoid mass nouns.

Related to the issue of univocity is a basic distinction between count nouns and mass nouns. Count nouns, such as "cat," "petal," and "cell" refer to universals whose instances can be counted. Thus it is possible to ask how many questions (how many cats are there in this building?, how many petals on this flower?, and so on). Terms such as "water," "tissue," "meat," and "chemical substance" are often used as mass nouns. This means that they are used to pick out or refer to a more or less indefinite quantity of stuff. It is possible to ask how much water, meat, or chemical substance there is, for example, in a given container; but not, without further qualification, how many waters, tissues, meats. Rather, we ask: "how many glasses of water are there?," "how many pieces of meat are there?," "how many liters of milk are there?," and so on. Now, however, we have replaced the original mass noun with a count noun (more precisely with a count noun phrase) as a means of ensuring that there will indeed be discrete portions of stuff that can be counted.

Certainly there are meaningful sentences involving mass nouns that have not been transformed into count nouns in this way, for instance when a nurse is instructed to store tissue in the freezer or to draw blood from a patient. Reflection reveals, however, that the corresponding transformation is here still being made-even if not explicitly. This is because the relevant amounts or containers are understood. In different contexts, moreover, terms like "blood" may be used to refer not merely to some specific amount of a patient's blood, but to an arbitrary portion or to the maximal portion of blood in a patient's body, and so forth-and "arbitrary portion of blood" and "maximal portion of blood," too, are perfectly acceptable from the point of view of the "avoid mass nouns" principle. A further reason for advancing this principle turns on the ambiguities that arise from the fact that terms like "blood" or "tissue" or "water" or "meat" or "aspirin" are often used to refer to types, rather than to particular portions, of the substances in question. These ambiguities are of particular importance for ontology builders, since it is precisely the division between types (universals) and instances (particulars), on which ontology is based.

Clearly masses of substances of different types do indeed exist in reality-but on the level of instances they always exist in large or small portions. Thus there is no sugar without there being some determinate portion of sugar; no luggage without there being some determinate number of suitcases and other luggage items. In addition, masses of substances exist on different levels of granularity: thus a mass of body tissue is at one and the same time a collection (mass) of cells.

To summarize: a mass noun such as "tissue" might be used to refer to one or more of the following:

- a portion of stuff within a larger portion of stuff (the tissue within an organ from which a doctor intends to take a sample);

- a discrete (detached) portion of stuff (such as tissue that has been grown independently in order to be placed inside an organ);

- a type of tissue under consideration (lung tissue vs. muscle tissue, healthy tissue vs. cancerous tissue); and

- a maximal or complete quantity of stuff (such as all of the tissue comprising the liver).

These different senses of the term "tissue" are involved in quite different theoretical and practical contexts and so it is important to keep them separate for purposes of ontology design. And even if only one such use of a mass noun like "tissue" were selected as the preferred label in an ontology, the mentioned ambiguities would still lead to problems of misuse of this term by human beings. It is for this reason that we recommend that mass nouns be avoided entirely when constructing ontologies. Instead phrases beginning with an appropriate prefix (such as "portion of," "maximal portion of," and so on) should be adopted. This solution has been embraced, for example, by the FMA ontology, which is the leading resource for terms relating (inter alia) to different tissue and other body substance types.'

To achieve this regimentation, we recommend transforming mass nouns such as "chemical substance" into count nouns by attaching "portion of" or some contextually appropriate equivalent operator to the beginning; thus "portion of chemical substance," "portion of tissue," and so on. Adopting this strategy makes it possible to treat seeming mass nouns as instances of either fiat parts or object aggregates (see chapter 5). The basic idea though, is that because mass nouns refer to different kinds of entities on different occasions of use, they should be avoided in favor of more ontologically transparent terminology.

1. Distinguish the general from the particular.

Up to this point we have stressed that an ontology is a representation of universals and defined classes. Particular entities-the instances of universals and the members of defined classes-are dealt with, for example, in databases or clinical notes or experimental logbooks. For us, this is a matter of the definition of the word "ontology." Certainly there are some who build ontologies that include an admixture of terms representing individuals-for example, the Standardized Nomenclature for Medicine (SNOMED) includes the term "National Spiritualist Church," which it treats as a subclass of spiritual or religious belief.10 Our reasons for insisting that ontologies should be restricted exclusively to representations of what is general are manifold-but it will be sufficient, for the moment, to mention just one, which is illustrated all too well by the just-mentioned example from SNOMED. Namely, that departure from this principle is often associated with the making of errors: a church, however understood (whether as an organization or as a building) is not a special kind of belief as SNOMED would have it.11

Where an ontology needs to be supplemented by terms representing individuals, then this should be in some separate information artifact-corresponding to the distinction in the Description Logic community between a T-box (for "terminology") and an A-box (for "assertions").12 The two artifacts can be combined for practical purposes wherever necessary, forming what some call a "knowledge base." But the result isagain for definitional reasons-not an ontology, any more than the description or illustration of how a scientific theory has been applied in a specific series of experiments is itself a scientific theory.

Terms referring to universals and terms referring to instances should be clearly distinguished. For example, the common noun "teapot" as it occurs in a sentence such as "the teapot is a device for pouring tea" can plausibly be understood as referring to a type or universal teapot. The term "teapot" as it occurs in the sentence "John's teapot has been stolen" has to be understood as referring to a single particular teapot.13

### Principles for Definitions

1. Provide all nonroot terms with definitions.

We have addressed the syntactic issues involved in regimenting the terminology of an ontology, for example by addressing conventions for use of nouns and noun phrases. An ontology is however above all a semantic artifact-it has to do with regimenting terms in such a way that they will be associated with specific meanings, and for this purpose the ontology must provide definitions, conceived as statements of the necessary and sufficient conditions which an entity must satisfy if the term, in its intended meaning, is to apply to that entity. To say that being an A is a necessary condition for being a B is another way of saying that every B is an A; to say that being an A is a sufficient condition for being a B is to say that every A is a B.

A definition, now, is a statement of a set of necessary conditions that are also jointly sufficient, as in the following example:

X is a triangle = def. X is a closed figure; X has exactly three sides; each of X's sides is straight; X lies in a plane

Not every statement of necessary and jointly sufficient conditions is a definition.

- The stated conditions used to define the term A must themselves use terms which are easier to understand (and logically simpler) than the term A itself. (We return to this issue in our discussion of the "avoid circularity" principle to follow.)

- The stated conditions must be jointly satisfiable. Thus we cannot define, for example, a perpetual motion machine as a prime number that is divisible by 4, even though everything that is a perpetual motion machine is also a prime number divisible by 4, and everything that is a prime number that is divisible for 4 is also a perpetual motion machine (because neither of these things exists or, arguably, could possibly exist).

1. Use Aristotelian definitions.

The recommended best practice for creating definitions along the lines described earlier is to use the Aristotelian form:

where "G" (for: genus) is the immediate parent term of "S" (for: species) in the ontology for which the definition is being created. "D" stands for differentia, which is to say: "D" tells us what it is about certain Gs in virtue of which they are Ss. Ideally, the terms used in formulating the differentia D will themselves be terms taken from some ontology, where they will themselves be defined.

Consider, as a first example, Aristotle's own definition of "human":

human = def. an animal that is rational

Following this Aristotelian definitional structure ensures that the set of definitions in an ontology precisely mirrors the hierarchy of greater and lesser generality among its universals.

Some examples of Aristotelian definitions from the FMA are as follows:

cell = def. an anatomical structure that has as its boundary the external surface of a maximally connected plasma membrane

plasma membrane = def. a cell component that has as its parts a maximal phospholipids bilayer and two or more types of protein embedded in the bilayer

heart = def. an organ with cavitated organ parts, which is continuous with the systemic and pulmonary arterial and venous trees

liver = def. a lobular organ that has as its parts lobules connected to the biliary tree

lobular organ = def. a parenchymatous organ the stroma of which subdivides the parenchyma into lobes, segments, lobules, and acini14

Note that these and other definitions in the FMA ontology contain technical terms such as "cavitated organ part" and "venous tree" that are themselves defined at the appropriate places elsewhere in the ontology.

The Aristotelian definitional structure represents a basic format for the formulation of definitions that can be used regardless of ontological domain, and that is inherently directed at representing the position of each defined term within the relevant is_a hierarchy. Addressing the task of formulating definitions can thereby provide an extra check on the correctness of the ontology's is_a hierarchy, while creating the is_a hierarchy provides an easy first step in the formulation of each definition. These are advantages of the Aristotelian definitional structure, and reasons why it should be adhered to as closely as possible when constructing domain ontologies. Other advantages include:

- Every definition, when unpacked (see below for an explanation of this term), takes us back to the root node of the ontology to which it belongs.

- Circularity is avoided automatically.

- The definition author always knows where to start when formulating a definition.

- It is easier to coordinate the work of multiple definition authors.

Aristotelian definitions work well for common nouns (and thus for the names of universals by which ontologies are principally populated). They do not work at all for those common nouns that are in the root position in an ontology, for here there is no parent term (no genus) to serve as starting point for definition. Root nodes in an ontology must therefore either be defined using as genus some more general term taken from some higher-level ontology, or they must be declared as primitive. Primitive terms cannot be defined, but their meanings can be elucidated (by means of illustrative examples, statements of recommended usage, and axioms-discussed in chapter 7).

1. Use essential features in defining terms.

The definition of a term captures what we can think of as the essential features of the entities that are instances of the designated type. The essential features of a thing are those features without which the thing would not be the type of thing that it is. They are also what we can think of as the constant elements in the structure of the entities in question-those elements that all instances of the relevant universal must possess.

Essential features of a triangle include being a plane figure and having three sides. Inessential features include the lengths of the lines making up the three sides.

For natural objects such as those studied by chemistry, biology, and physics, the essential features of a thing are typically features that play a prominent role in scientific explanation of its existence and behavior. Thus a definition of "portion of water" in terms of essential features would be as follows:

portion of water = def. portion of molecular substance each constituent molecule of which consists of two hydrogen atoms and one oxygen atom connected by covalent bonds

For artifacts, objects deliberately created (or, in some cases, selected) by human beings to be used to achieve certain goals, the essential features have to do with the purpose or use for which the artifact was created. Thus a knife is a tool for cutting things. Its essential features will thus include: having a blade made of a sufficiently hard substance; the blade's having a sharp edge; its having a handle made of some hard substance; its being small and light enough to be manipulated by a single person, and so forth.

What sorts of features will be essential to the objects in a given scientific domain is specified in the relevant scientific literature, and what literature is relevant is determined in turn through specification of the ontology's scope. As can be seen from the definitions provided in our preceding list of examples, essential features of anatomical entities in the FMA include their location in the body, the sorts of anatomical entities that they have as parts, their spatial and physical relationships to other anatomical entities, and so on.

A useful way to go about determining the essential features of entities instantiating a given universal is the following. In the light of available scientific knowledge, attempt to imagine the subtraction and variation of the features of a typical entity falling under the corresponding term, checking at each stage to see whether the considered variation or subtraction would bring it about that the entity in question would no longer be an instance of the universal in question. If such variation or removal of a feature of the entity in imagination has this consequence, then it is highly likely that that feature is one of the essential features of entities of the given kind. Thus it is possible to imagine chairs with different sizes, shapes, materials, and colors; however, the second that one imagines a thing on which it is impossible for a normal human being to sit-for example, that it is made of a soft Jell-O-like material-then it is clear that, whatever the entity being imagined is, it is not a chair, and so the feature of being a thing upon which a normal human being can sit is at least a necessary condition for something's being a chair. Solidity is in this sense a constant (essential) feature of a chair; color a variable feature.15

A final point is that, with regard to defined classes, the essential features are just the features mentioned in the definition. Thus the features essential to being a member of the class of people in the United States who have cancer are just to be a person, to have cancer, and to be in the United States.

To see what goes wrong when definition authors fail to utilize essential features of the things being defined, consider again an example from HL7:

person = def. a living subject representing a single human being who is uniquely identifiable through one or more legal documents"

1. Start with the most general terms in your domain.

Another recommendation is to define the terms in an ontology from the top down. Thus, in accordance with our Aristotelian template for definitions, we start the process of definition by defining the most general universals first and then working downward through the is_a hierarchy toward progressively more specific terms. Beginning with the root, terms on the next level down can be defined by determining relevant differentia in each case. This procedure can be reiterated as many times, and at as many different levels, as are necessary to address identified needs, but allowing the ontology author to start out from the most general level helps to keep things simple at the beginning, and provides a robust perspective from which to address the task of creating a comprehensive ontology at successively deeper levels.

A more general consideration in favor of the top-down approach derives from the proposition that an ontology should have a well-defined and clearly delimited domain, one that is determined, as far as possible, by some preexisting scientific discipline or unified practical field. Beginning with the most general types of entities determined by the specific target domain and working downward from there helps to rule out from the beginning the inclusion in the ontology of content that is not relevant to the chosen domain.

1. Avoid circularity in defining terms.

A definition is circular if the term to be defined, or a near synonym of that term, occurs in the definition itself, as for example in the following:

hydrogen = def. anything having the same atomic composition as hydrogen

poodle = def. anything having the biological structure and physical appearance characteristic of poodles

These definitions are circular because they provide no more information about the nature of the things the terms refer to than do these terms themselves. Since definitions are intended to explain the meaning of a term to someone who does not already understand it, using the term itself or some very similar expression in its own definition defeats the purpose of providing a definition in the first place. Figure 4.2 is a screen shot of the FOAF (Friend of a Friend) Vocabulary Specification 0.99, whose definition of "document" clearly exhibits circularity.

Avoiding circularity is important also for reasons having to do with the correct structuring of an ontology. If we think of a well-built ontology as having the structure of a graph, with a central backbone formed by the taxonomy of the ontology, then for reasons we shall present further on under the heading of "asserted single inheritance," it is important that every node in the graph is linked to the root by means of a unique chain of is_a relations. Avoiding circular definitions is a discipline that helps to ensure that this condition is satisfied.

#### Figure 4.2

Circularity in the FOAF Vocabulary Specification 0.99

1. To ensure the intelligibility of definitions, use simpler terms than the term you are defining.

The terms used in a definition should be more intelligible-for example, by being more scientifically, logically, or ontologically basic-than the term that is being defined. This is to promote the definitions' utility to human beings, for example, to support collaboration across disciplines, by allowing experts in one discipline to use the ontologies prepared for other disciplines as an initial means of orientation. Definitions are used in such cases in order to explain to people who do not know the meaning of a term what that meaning is. Someone who does not know the meaning of a term, especially a technical term, will not be helped by a definition that fails to satisfy the principle of intelligibility.

The following examples, again from HL7, will suffice to illustrate the problem we have in mind:

stopping a medication = def. change of state in the record of a Substance Administration Act from Active to Aborted

health chart entity = def. a health chart included to serve as a document receiving entity in the management of medical records"

In scientific contexts-and in the sorts of complex administrative contexts with which HL7 is concerned-it is inevitable that definitions will involve a certain degree of specialized terminology. However if this terminology is to be managed in an effective way, then it is indispensable that for each new step in the direction of greater complexity and of specialization, the terms required are defined using terms already defined in earlier steps, potentially by means of definitional resources imported from other, external ontologies.

1. Do not create terms for universals through logical combination.

From the ontological realist's perspective, that a specific universal exists is never a matter of what can be inferred by logical means alone; it is always only something that must be discovered, through observation and application of the scientific method. Ontology is not analogous to set theory. It embraces what philosophers have referred to as a "sparse" theory of universals, which does not accept that the realm of universals is subject to any rule that allows arbitrary (for example) Boolean combinations."

Thus from the fact that "u" names a universal, we cannot infer that non-u is a universal also, where "non-u" is defined in terms of logical negation as follows:

(*) x instantiates non-u = def. it is not the case that (x instantiates u)

Similarly from the fact that "u" and "v" name universals, we could not infer that "u and v" or "u or v" name universals, defined, respectively, by

(**) x instantiates u and v = def. x instantiates u and x instantiates v

(***) x instantiates u or v = def. either x instantiates u or x instantiates v

We recommend in particular that when building ontologies negative terms should be avoided entirely. That is, the ontology builder should assume that the universals are in every case positive, and so terms such as "nonrabbit" or "nonheart"-defined in accordance with (*)-should not be used, since there are no corresponding negative universals.

This principle applies not merely to terms representing universals, but also to terms representing defined classes. In relation to defined classes, we can formulate the rule as follows:

Avoid postulating complements of classes as entries in an ontology.

The complement of a class is the class containing all of the entities that do not belong in that class. Thus the complement of the class denoted by "dog" is the class denoted by "nondog," a class that includes not merely all cats, all fish, all rabbits, and so forth, but also all cardinal numbers, all musical instruments, all planetary bodies, and everything else that is not a dog.

There are, however, some cases where classes involving a negative element in their definition will properly be included in an ontology." Thus, for example, prokaryotic cells are distinguished from eukaryotic and all other cells precisely by the fact that they lack a cell nucleus. This is, in effect, negative information used to define a class. However, the class of prokaryotic cells is not a complement class. If it were, then it would be equivalent to the class of noneukaryotic things, and would thus include, again, all musical instruments, all cardinal numbers, all planets, and so forth. Rather, "prokaryotic cell" is the name of a distinct class of cells that can be clearly defined. It is just that the definition of these cells itself includes some negative information (that they are cells that do not have a nucleus). Only the former formulation ("noneukaryotic thing") is a case of logical or "external" negation. In the latter ("prokaryotic cell"), we have rather internal negation, which from the realist point of view is perfectly acceptable for use in definitions.

The recommendation to avoid negative terms thus needs to be applied with care, since clinical research involves multiple sorts of defined classes referred to by terms in which prefixes like "non-" are used, but which are not defined along the lines of (*). An example is "nonsmoker," which is found in influential health-related terminologies such as SNOMED-CT and MedDRA, and used in scientific assertions such as "nonsmokers are less susceptible to cardiopulmonary diseases than are smokers."

The term "nonsmoker" is perfectly admissible provided it is defined, for example, along the lines of

nonsmoker = def. a human being who does not smoke,

which has exactly the Aristotelian form we recommended earlier.20 Other putatively negative terms-such as "odorless," "colorless," "invisible," "unfriendly"-are similarly admissible, since they, too, can be defined in a positive way in terms of "lacks".

Another class of negative terms that should be avoided involves the use of negation operators that modify the associated phrases not logically but rather in some other way. Examples are

- canceled oophorectomy

- absent nipple

- unlocalized ligand

In each of these cases we are dealing not with special kinds of entity-there are, strictly speaking, no such things as canceled oophorectomies-but rather with special kinds of knowledge. When we use a term like "canceled oophorectomy" we are talking in an abbreviated way about the fact that "oophorectomy" had earlier been entered into a surgeon's schedule and later removed. Ontologically misleading abbreviations of this sort should not be used when formulating terms in an ontology.

1. Definitions should be unpackable.

Definitions should be substitutable for their defined terms without a change in meaning. If we define an A as "a B that Cs," then we should be able to replace every occurrence of "an A" in a sentence with "a B that Cs," and the result will have the same meaning (and thus also the same truth value) as the sentence with which we began. This process of substitution is called "unpacking."

Note that the unpackability criterion holds only in what are called "extensional" contexts, which means contexts not governed by, for example, expressions such as "John believes," or "In the dictionary it is stated that." In all extensional contexts a defined term should be intersubstitutable with its definition in such a way that the result is grammatically correct and preserves both meaning and truth. The basic idea behind this principle is that, whatever a term refers to (in our case always a universal or defined class), the definition of the term should successfully refer to the very same thing. Thus in the FMA the reference of "heart" should be identical with the reference of the expression "organ with cavitated organ parts, which is continuous with the systemic and pulmonary arterial and venous trees."

The requirement that term and definition be intersubstitutable without affecting meaning is important not only for preserving truth across inference in automated reasoning contexts but also for ensuring intelligibility for human users and maintainers of ontologies. But interchangeability without effect on grammatical correctness is important for human beings also. If replacing a term with its definition results in a grammatically incorrect expression, this will impede the degree to which humans will successfully be able to use the ontology, and it will increase the likelihood of errors.

### Principles for Taxonomies

Having set forth principles governing the formulation of definitions, we now move on to principles relating to the role of taxonomies within ontologies.

1. Structure every ontology around a backbone is_a hierarchy.

Each ontology should incorporate an is_a hierarchy having the structure of a directed acyclical graph with a single root. The terms in the ontology form the nodes of the graph, and the edges represent the is_a relation connecting each child to its immediate parent. (In mathematical terms the graph is a directed rooted tree.) The leaf nodes (lowest nodes of the ontology) represent the most specific universals or defined classes dealt with by the ontology in its current version. Leaf nodes play no special role in the ontology-since what is a leaf node today may no longer be a leaf node tomorrow because further subtypes have been incorporated.

#### Figure 4.3

### Fragment of a partonomy for animal cell

In addition to those edges representing is_a relations, further edges in the graph represent other relations, for example, the part-Of relationship, which generates what we might call a partonomy (as in figure 4.3). (We will discuss the of relation in more detail in chapter 7.)

Similarly, the relationship derives-from can be used to generate hierarchical structures among biological species, as in the simple phylogenetic tree illustrated in figure 4.4.

1. Ensure is_a completeness.

The ontology builder should ensure that every term in the ontology is included in its backbone is_a hierarchy, and that the ontology is is_a complete in the sense that every term in the hierarchy is joined to the root of the tree by a path constituted by successive edges in the graph. Thus if terms are added to the ontology to represent the component parts of the entities for which terms have already been included, then it should be checked that the ontology contains the parent terms needed also for these parts. We note that this principle stands in a mutually supportive relation with the requirement that all terms have definitions constructed using the Aristotelian template (see principle 14), for if this requirement is satisfied then is_a completeness will be guaranteed. On the other hand if is_a completeness is satisfied, then the creation of Aristotelian definitions is itself more straightforward.

#### Figure 4.4

### A phylogenetic hierarchy

Part of the process of ensuring is_a completeness is one of ensuring ontological agreement between terms and their parents. This is achieved by testing the validity of each assertion "A is_a B" in a given ontology by checking that, in the relevant domain, every instance of A is an instance of B.This check is needed whether "A" and "B" refer to universals or to defined classes. Bad practice in terminologies often involves the mixing of ontological categories across is_a relations, as, for example, in cases such as the following:

nonsmoker is_a finding of tobacco-smoking behavior (from SNOMED-CT);21

and, from the still-current version of the Gramene plant environment ontology:

virus is_a plant environment ontology,

unknown environment is_a plant environment ontology,

study type is_a plant environment ontology,

and so forth.22 Such bad practice would be avoided by application of this simple rule.

1. Ensure asserted single inheritance.

We can think of assertions of the form "A R B," where "A" and "B" are nodes in an ontology and R is a relation that holds between them, as the ontology's axioms (for examples, see chapter 7). The ontology builder asserts these axioms during the construction of the ontology. When all the axioms have been asserted, however, then an ontology reasoner such as RACER or FACT (see chapter 8) may infer certain further statements. This allows us to distinguish between two different sorts of releases of ontologies: asserted and inferred.

Our principle of asserted single inheritance requires that the central backbone taxonomy of the ontology should be built as an asserted monohierarchy, which means: a hierarchy in which each term has at most one parent.

To speak of "inheritance," here, is to assert that everything that holds of a universal or defined class in an is_a hierarchy holds also-is inherited by-everything that appears below it in the ontology's is_a hierarchy. Because cat stands below (is a subclass of) mammal, it follows that cats are vertebrate, air-breathing animals whose females are characterized by the possession of mammary glands. In a similar way, everything that holds of cell holds also of eukaryotic cell, and everything that holds of eukaryotic cell holds also of plant cell.

There are a number of reasons for requiring single inheritance in our asserted is_a hierarchy. First, adherence to this principle brings certain computational performance benefits.23 Second, because it ensures that all terms are connected by exactly one chain of parent-child relations to the corresponding root node of the asserted ontology, it provides an easy recipe for the creation of the sorts of definitions we will need in order to apply the Aristotelian template when defining our terms. Indeed, single inheritance is indispensable if the Aristotelian rule is to be applied successfully, since this rule works only if each (nonroot) term in the ontology has exactly one parent.

Third, adherence to single inheritance allows the total ontology structure to be managed more effectively, because it forces the ontology builder to think about each term before positioning it into the ontology, in order to ensure that it is being classified in conformity with the way its neighboring terms are classified. Our own experience with domain experts who are not ontologists and are building ontologies in a variety of different contexts has taught us repeatedly that, when scientists find it difficult to select between multiple parents for a term needing to be included in an ontology, the discipline imposed by the single inheritance principle is welcomed because it repeatedly leads to greater clarity of thinking on the part of those involved.

Fourth, adherence to the principle will make it easier to combine ontologies into larger structures-especially where ontologies need to be combined together automatically.

And finally, and most important, any benefits from multiple inheritance ontologies deriving from their easier surveyability (so that it is easier for human beings to find the terms they need by tracing through multiple parent paths) can be gained in any case by formulating the official (or "asserted") version of an ontology as an asserted monohierarchy and allowing the development of inferred polyhierarchies for specific groups of users. The application ontologies that then result are thus not required to satisfy the principle of asserted single inheritance.

#### Figure 4.5

A simple illustration of multiple inheritance

Consider figure 4.5, which reflects the attempt to classify things using two different principles of classification (via color and via type of vehicle being classified). The figure does not satisfy the rule according to which (apart from the root) every node within a hierarchy has exactly one parent.

Here the principle of single inheritance is violated because two quite distinct is_a hierarchies have been run together-a hierarchy of things on the one hand, and a hierarchy of colors on the other. If we need to create such a combined hierarchy for application purposes (for instance to meet the needs of an automobile paint shop), then this can be achieved simply by combining the two mentioned hierarchies together and, using a reasoner, creating an inferred hierarchy that will depart from single inheritance but meet our application needs.

To see how resolving apparent multiple inheritance in a classification can be instructive and result in clarification of the correct definitions of the entities involved, consider an assertion such as "some human beings are mothers." What we mean by this assertion is that some human beings at some stage or stages in their lives play the role of mother in relation to other human beings. It may, now, be tempting to classify mother role as an example of multiple inheritance, as in figure 4.6.

A treatment along these lines seems to have the advantage that it would allow the variety of different sorts of mother role to be captured in the ontology. At the same time, however, it would gloss over some important distinctions. Recall what the is_a relation (represented here by arrows pointing upward) really means:

mother role is_a social role - every instance of mother role is an instance of social role

#### Figure 4.6

The mother role as a putative example of multiple inheritance

mother role is_a biological role - every instance of mother role is an instance of biological role

But neither of these assertions is correct, unfortunately. Though often identified by the single word "mother," the social and biological senses of this term are not as closely connected as we might think. It is possible to be a biological mother without playing the social role of being a mother (for example, if one gives one's child up for adoption) and it is possible to play the social role of mother without being a biological mother (if one has adopted a child). Either of the two classifications in figure 4.7 comes closer to a correct way of thinking about the universal mother and how it should be classified; and, importantly, neither involves multiple inheritance.

Clearly, it is often possible to classify given individuals in more than one way. For example, pediatric surgeons might be classified both according to their patients and according to the procedures they perform. However, in such cases, the answer is not to create a single taxonomy with multiple inheritance. Rather, one begins by constructing separate "normalized" classifications each using only single inheritance and each built by downward population from a shared upper-level ontology. On this basis, one can then use the definitions of the terms that appear in these two ontologies to spell out the relations between the terms appearing in each. Computer reasoners can then use these definitions to create a compound ontology, in which single inheritance no longer holds, to address specific application purposes.24

1. Both developers and users of an ontology should respect the openworld assumption.

#### Figure 4.7

Mother classified without multiple inheritance

On the one hand, an ontology should be as complete as possible, given the specific purpose for which it is created. This means: representations of universals should be included in the ontology whenever they are relevant to the purposes of the ontology and fall within its scope. An ideal classification, of the sort that ontologies created for support of scientific research might seek to achieve, would include all existing domain universals at each level in the ontology's is_a hierarchy. Thus it would include, for example, all the universals that are discussed in current literature pertaining to the relevant domain. In nontrivial domains such as biology and medicine, of course, this ideal will never be achieved. This is because new scientific information will need to be accommodated with every scientific advance. In such domains an ontology will never be complete, and its authors should make this clear to potential users. Ontologies in general are built on the basis of the openworld assumption, or OWA, which means (here) that each ontology is built in a flexible manner to allow extension and correction, and is never put forward as providing a complete assay of the domain in question. Where a new phenomenon is encountered that is relevant to the ontology and falls within its scope, but for which no appropriate term is provided, the proper strategy is to identify the most-specific term in the ontology under which the phenomenon falls, and then to propose an appropriate child term to be added to the ontology hierarchy. The openworld assumption implies that no logical consequences follow from the fact that a given term is not included in an ontology.

1. Adhere to the rule of objectivity, which means: describe what exists in reality, not what is known about what exists in reality.

Ontologies created using our recommended methodology are representations of what exists in reality. What exists is not a function of our current state of biological knowledge. The universals treated by natural science in any given domain are discovered, not invented or created.

This is why it is necessary when building an ontology to take into account the best available scientific information about the reality in the salient domain. The goal is to systematically organize the terminological content of that information, paying attention to the essential characteristics of each type of entity. The current state of scientific knowledge is thus crucial for the building of ontologies. Yet the terms included in the ontology do not refer to our current state of knowledge. Rather they refer to the corresponding entities in reality. Thus an ontology should not contain classes like: "known allergy," "empirically confirmed boson," or "unclassified influenza." The ontology should not confuse disease with diagnosis and it should not confuse result of measurement with magnitude that is being measured.

### Conclusion

The process of regimenting the domain information that an ontology contains involves the following steps. First, select the terms that are to be included in the ontology based on domain information that has already been gathered, and distinguish preferred labels and synonyms. Second, provide clear, scientifically accurate and logically coherent definitions for each of these terms. Third, explicitly recognize the location of each of these terms in a hierarchical classification of the domain information. These steps are to be carried out in accordance with the principles listed throughout the chapter. In the next chapter, we will show how these principles are applied in the context of Basic Formal Ontology.

## 5 Introduction to Basic Formal Ontology I: Continuants

In previous chapters we have discussed how making use of a formal (or toplevel or domain-neutral) ontology can be helpful in constructing domain ontologies that are interoperable, rigorous, and clear. We argued that issues such as terminology selection, term definition, and classification can all be better addressed in the context of a toplevel ontology, and also suggested that use of a toplevel ontology brings benefits when it comes to sharing ontology content, governance of ontology development, and developing expertise.

Multiple ontologies working together within the framework of the OBO Foundry initiative utilize Basic Formal Ontology (BFO) as a starting point for the categorization of entities and relationships in their respective domains of research. This includes inter alia the Cell Ontology, the Foundational Model of Anatomy, the Protein Ontology, the Ontology for General Medical Science, and the Ontology for Biomedical Investigations. Like other toplevel ontologies-and in harmony with the principle of fallibilism-BFO has been and is still subject to ongoing review and to multiple different sorts of testing by the developers and users of these and many other ontologies supporting empirical science. BFO has been modified, and we hope improved, as a result of the lessons learned by the many groups who have been applying the ontology to particular domains, and also in reflection of considerable input from external critics. In this chapter we will introduce the categories of BFO along with their definitions, focusing on version 2.0 of the ontology that was released for comment in 2014. We will also describe how these categories can be applied to an existing domain ontology by what might be thought of as a process of reverse engineering.

### Some Basic Features of BFO

BFO is an upper-level ontology developed to support integration of data obtained through scientific research. It is deliberately designed to be very small, in order that it should be able to represent in consistent fashion those upper-level categories common to domain ontologies developed by scientists in different fields. It is small, too, in order to allow exercise of the benefits of modularity and of the division of expertise; a toplevel ontology should not contain terms like "cell," "death," or "plant" that properly belong in domain-specific ontology modules of narrower scope.

Because of its generality and small size, BFO will not in and of itself address the terminological needs of those working in specific domains; it provides rather a starting point for work by those with specialist knowledge. Nor will BFO provide complete answers to many of the quasi-philosophical questions that arise in the course of domain-specific ontology development-questions such as "what is an organization?" or "what is life?" or "what is a work of art?" or "what is an action?" This does not mean that answers to such questions cannot be expressed within the BFO framework. In some cases-as we shall see in our discussion of information artifacts to follow-such debates, involving both BFO developers and users, have led to the recognition of the need to extend BFO itself, though still without departing from the narrow confines of what is domain neutral.

BFO assists domain ontologists by providing a common toplevel structure to support the interoperability of the multiple domain ontologies created in its terms. In this way it helps to bring about a situation in which information compiled in separate repositories can form part of a common framework for the categorization of, and for reasoning about, the entities in the corresponding domains. This will be achieved, of course, only if informaticians, data managers, researchers, and curators of experimental literature and data, do in fact utilize BFO in their work. At the same time, however, the adoption of BFO has been shown to bring benefits that provide additional justification for its use. Thus, for example, its use promotes portability of expertise, so that those who have once been trained in use of BFO in one domain can more easily apply their skills in other areas. It also provides a starting point for ontology development, which allows those new to ontology to move more quickly to the sorts of domain-specific questions which belong to their respective areas of expertise by providing a set of ready-made answers to the abstract questions with which toplevel ontology is concerned. Thus many people use BFO-based ontologies without being aware that they are doing so; the BFO components of these ontologies remain invisible to them in their work, in much the same way that the engine of a car is most of the time unnoticed by the driver.

In previous chapters we have discussed the distinction between universals and particulars, and we have stressed that the primary goal of scientific ontologies is the representation of universals and the relations between them. Ontologies, like scientific theories, are concerned with capturing knowledge of what is general. The terms in BFO, and in the ontologies developed on its basis, should thus be understood, in the first place, as representing universals. This is not because of an interest in universals for their own sake. The ultimate goal of scientific ontologies is to support the work of scientists in classifying particulars, for example, the sorts of particulars they observe in their experiments. BFO supports the construction of classificatory hierarchies to aid in reasoning about such particulars. It provides a set of preconfigured high-level taxonomic distinctions that can serve as an off-ramp for the population of representations of universals at lower levels of generality. BFO is thus designed to help ensure that the domain ontologies built on its basis represent the universals in their respective domains in a consistent and coherently structured fashion.

Basic Types of Entity: Continuant and Occurrent

BFO takes as its starting point an interest in the workings of reality from the point of view of those who are engaged in scientific research. We take reality to be comprised of entities-using "entity" in a sense that is common among both philosophers and scientific researchers to refer to anything at all that exists in any way at all.

We then divide entities into two categories, namely:

- Continuants: entities that continue or persist through time, including (1) independent objects (for example, things such as you and me); (2) dependent continuants, including qualities (such as your temperature and my height), and functions (such as the function of this switch to turn on this light); together with (3) the spatial regions these entities occupy at any given time (see figure 5.1);

- Occurrents: entities that occur or happen, variously referred to as "events" or "processes" or "happenings," which we take to comprise not only (1) the processes that unfold in successive phases but also (2) the boundaries or thresholds at the beginnings or ends of such processes, as well as (3) the temporal and spatiotemporal regions in which these processes occur.

These two types of entities do not exist side by side with each other in any simple sense. Rather, in keeping with the doctrine of perspectivalism outlined in chapter 3, they correspond to two distinct and complementary perspectives on one and the same reality, neither of which can do full justice to those features of reality represented by the other. In describing this reality, we customarily draw on both of these perspectives simultaneously, as when we make assertions such as

#### Figure 5.1

### The hierarchy of BFO continuants

- there are cells (continuants) engaging in processes of meiosis (occurrents);

- there are people (continuants) having surgeries (occurrents) performed on them by other people (continuants);

- there are amino acid chains (continuants) that participate in processes of folding (occurrents), which result in new structures (continuants) that themselves participate in processes of posttranslational modification (occurrents) resulting in typical threedimensional amino acid chain structures (continuants);

- there is the earth (continuant) that orbits (occurrent) the sun (continuant).

Note how, in each such case, we talk about particulars, such as particular things and particular processes by using general terms such as "amino acid chain" or "orbit" referring to universals.

In what follows, we will describe the is_a hierarchy of BFO types and subtypes, beginning with the toplevel categories and working downward through the subtypes, first for continuants and then, in chapter 6, for occurrents. We will proceed in order of diminishing concreteness, beginning with independent continuants and material entities.

### BFO: Continuant

Continuants in BFO are entities that continue to exist through time; they may gain and lose parts (for instance, as an organism gains and loses cells), but at each point in time at which they exist at all they nonetheless exist completely. Thus you may lose an arm, but you-all of you, at whatever time you exist-will still exist completely, and this is so in times both before and after the loss of the arm. The loss of an arm may be more painful than, but it is ontologically comparable to, the loss of a single hair. This is in contrast to processes (which form the main subcategory of occurrents), which unfold themselves through time in successive temporal parts or phases. Because no two distinct phases exist simultaneously, there is no point in time at which a process exists as a whole. Rather, it exists at any given point in time only in some correspondingly short-lived stage or slice.

The continuant portion of BFO consists of representations of entities that (1) persist, endure, or continue to exist through time while maintaining their identity, and (2) have no temporal parts. Note that this is not a definition of "continuant." This term is so basic to our understanding of reality that it is not possible to provide a definition that does not itself use terms, like "persist" or "endure," which are equivalent in meaning. Any attempted definition will thus be circular. We provide, instead, what we can think of as an elucidation of what we mean by the term "continuant," together with examples designed to illustrate the sorts of entities to which the term is to be applied. (And where "BFO:" terms are introduced in what follows in the absence of a definition, this is because a similar policy is being applied in these cases as well.)

While continuants do not have temporal parts, each continuant will be associated with a life or, in BFO parlance, a history-an entity belonging to the realm of occurrents, and thus the sort of thing that can have temporal parts.

Examples of continuants include a tomato, the qualities of the tomato-for example, its weight or temperature or color, and the region of space occupied by a tomato at any given time. BFO's continuant has subtypes intended to capture all of these types of continuant. Its three immediate subtypes or "children" are: independent continuant, specifically dependent continuant, and generically dependent continuant.

### BFO: Independent Continuant

An independent continuant is a continuant entity that is the bearer of qualities. If a continuant entity a is the bearer of quality b, then we also say that b inheres in a. Thus the color b of tomato a inheres in tomato a. Inherence itself can be defined as a kind of onesided dependence, more precisely as that sort of onesided dependence that obtains among qualities, dispositions, and roles (an explanation follows) on the one hand and independent continuants on the other. There are other uses of the word "dependence," some of which will concern us in what follows (for instance in our treatment of the relation between a boundary and that which it bounds). For the moment, however, it is crucial to understand the very specific sense of "dependence" upon which BFO relies, a sense of dependence that implies that the dependent entity is secondary (has diminished concreteness) in relation to the independent continuant that is its bearer. The latter is a threedimensional thing that has material parts. The dependent entity, by contrast, has no material parts but is rather parasitic on the material thing that supports it. Material things cannot be parasitic on (or ontologically secondary to) other entities in this sense. (There is nothing more concrete than material things.) And from this it follows that an independent continuant, while it is an entity in which other entities (such as qualities) inhere, cannot itself inhere in anything.

Independent continuants are such that their identity and existence can be maintained through gain and loss of parts, and also, as we shall see, through changes in their qualities, and through gain and loss of dispositions, and of roles. Tomato a may be left out in the sun and lose its moisture; tomato a may once have been green, but is now red; tomato a may be frozen, and thereby lose its disposition to ripen; and tomato a may be selected by the chef, and thereby acquire the role of garnish to your steak.

Types of independent continuants to be dealt with in what follows include organisms and their parts-for example, your heart and the collection of your limbs; the boundaries of organisms-for example, your fingertips (the sorts of things used to take impressions called "fingerprints"); and places, such as the Grand Canyon. BFO correspondingly distinguishes two subtypes of independent continuant: material entity and immaterial entity.

### BFO: Material Entity

A BFO: material entity is an independent continuant that has some portion of matter as part. It is thus an independent continuant that is spatially extended in three dimensions, and that continues to exist through some interval of time, however short. Examples of BFO: material entity are organisms such as human beings, undetached arms of human beings, and aggregates of human beings such as, for example, a dance troupe or a baseball team. These three sets of examples correspond to the three principal subtypes of material entity distinguished by BFO, namely:

- BFO: object

- BFO: fiat object part

- BFO: object aggregate

together with various combinations that will be discussed.

### BFO: Object

Nature is organized as a hierarchy of nested units. From microphysical particles to planetary bodies, there are units or grains in the order of reality-referred to in what follows as "objects." Examples are atoms, molecules, organelles, cells, organs, organisms, planets, and stars.

### An object is a material entity that is

1. spatially extended in three dimensions;

2. causally unified, meaning its parts are tied together by relations of connection in such a way that if one part of the object is moved in space then its other parts will likely be moved also (the parts share in this sense what we can think of as a common fate);

3. maximally selfconnected (which means intuitively that the different parts of the object are tied together in a certain way and that anything that is tied to these parts in the same way is itself part of the object).'

An organism is an object in this sense, as is a single cell, an egg (including all its contents), a space ship (including all its contents), and a planet. Two people shaking hands, in contrast, do not form an object, nor does one person joined together with his hat. This is because the connections are in both cases too weak to join the parts together in the sense required. Your (attached) head does not form an object even though the connections between its parts are physically sufficiently strong for objecthood. This is because your head, unlike your body as a whole, is not maximal in the sense required.

In many cases, an object enjoys the requisite sort of selfconnectedness in virtue of possessing a physical covering layer or membrane, a container that holds the parts inside it together. The covering layer may have holes or cavities but these are in normal circumstances too small to allow the objects contained within it to escape. The covering layer is itself both topologically selfconnected and maximal. It is selfconnected in the sense that, selecting any portion of the layer, we can trace a continuous (though not always straight, given that the surface may include holes) line to any other portion of the layer without needing to go outside it. And it is maximal in the sense that every portion of matter to which we can trace a similarly continuous line is included as part of the layer.

A tomato is an object in this sense, not however the two halves of a tomato before separation. A human being, too, is an object. And as both of these examples show, the fact that the surface of an object must be selfconnected does not imply that the surface does not contain holes-for example, pores, or your mouth-through which particles of matter can penetrate in one or other direction. An organ such as your heart or brain is an object in this sense, and so also is a fetus. Each of these entities is connected by physical conduits to its surrounding host organism. But these connections are relatively weak, and (as we know from experience) the object in question is able to survive its disconnection.

The possession of a maximally selfconnected outer boundary-called an object boundary in the BFO ontology-works well as a criterion of objecthood for macroscopic objects, which means, roughly, for independent continuants at least as large as a cell nucleus. However, it cannot be applied to serve as such a criterion for objects at finer grains-roughly, of single molecules or smaller. At such levels the criterion of causal unity plays a more central role. This criterion is applied both internally, where it relates to the ways in which the different parts of the object are related to each other, and externally, where it has to do with the ways in which the object as a whole interacts causally with other objects.

Even where an object has a maximally connected physical outer boundary, it may still include in its interior parts that are not connected to its other parts. An example is provided by the blood cells in your body. These are parts of your body, though they are not connected to the other parts.' The bacteria that form your microbiome are located in the interior of your body, but they are neither connected to your body nor a part thereof.' They do, however, in virtue of the surrounding membrane that is your skin, share a common fate.

Objects are the bedrock upon which dependent continuants and occurrents depend for their existence. An object is an entity that can exist and be what it is regardless of what other objects exist. Thus, a doorknob is an object because it can be removed from a door and still exist with all its parts intact. It can be moved from one place to another, and survive even when the objects around it are destroyed, removed, or replaced. Organisms, which as we saw are objects in the BFO sense, can certainly be said to depend on other objects (for example, on oxygen, water, drugs, food for sustenance, and so forth); these senses of "dependence" are not however of significance for us here.

We said that BFO continuants exist in full at any time in which they exist at all. Again: if Jill loses her arm, then she still exists as a whole-with all the parts that she currently has-and if her arm survives this loss, it is now a separate object. It is no longer a part of Jill. The reason for insisting on this point is that something similar is not true in the case of BFO's occurrents. The first set of a tennis match may now be in the past, but it is still part of the whole tennis match, and will indeed always remain so, just as the first three years of your life are still and will always remain a part of your life. Lives, in this sense, and processes in general, have temporal parts. Continuants do not have temporal parts.

Not only do the relations between an occurrent and its parts hold atemporally, but so also do the relations between an occurrent and its properties. Occurrents, as we shall see, behave differently, from a logical point of view, from the ways continuants behave.

### BFO: Object Aggregate

An object aggregate is a material entity that is made up of a collection of objects and whose parts are exactly exhausted by the objects that form this collection. In addition the objects forming an object aggregate are separate from each other in the sense that they share no parts in common.

Examples of object aggregates are a heap of stones, a group of commuters on the subway, a population of bacteria in your blood, a flock of geese, the collection of patients in a hospital. The degree of unity of such entities is, we might say, weaker than that possessed by objects proper-compare a heap of stones to a single stone. In some types of object aggregates, the objects themselves may interact dynamically, as, for example, in the case of a symphony orchestra, or an infantry battalion going into battle.

Organizations such as symphony orchestras or tenants' associations are object aggregates of a special sort, in which specific objects (specific human beings), play specific roles (for example, president, secretary, treasurer, member, and so on). (See our discussion of roles that follows.)

### BFO: Fiat Object Part

A fiat object part is a material entity that is a proper part of some larger object, but is not demarcated from the remainder of this object by any physical discontinuities (thus it is not itself an object). Examples of fiat object parts include your upper torso, the handle of a solid metal spoon, the Western hemisphere of the planet earth, the diaphysis of a long bone (see figure 5.2)

#### Figure 5.2

A long bone such as a femur divided into three different types of fiat parts: epiphysis, diaphysis and metaphysis

Source: From <http://medical-dictionary.thefreedictionary.com/> epiphysis, originally published in Miller-Keane and Marie T.O'Toole, Miller-Keane Encyclopedia and Dictionary of Medicine, Nursing, and Allied Health, 7th ed. (London: Elsevier, 2003).

Fiat object parts are to be contrasted with those object parts that are objects in their own right, and which thus have complete physical outer boundaries of their own, for example, the blood cells in your veins and arteries or the individual sardines in a can of sardines. We use the term "fiat" to draw attention to the fact that the boundaries in question are standardly the reflection of decisions on the part of, for example, the drawer of a map or the theorist identifying regions of different sorts within a domain of continuous variation. Such divisions are drawn even where there are no physical discontinuities to which the dividing lines correspond. As we shall see in our discussion of fiat object boundaries to follow, some boundaries of this sort exist even in the absence of any decision by a cognitive agent.

### Combination Object-Entities

BFO makes no claim to the effect that objects, object aggregates, and fiat object parts provide an exhaustive classification of the types of material entity. Thus, for example, if John owns two neighboring apartment buildings, but sells the top floor of one of them, then it may be that what he owns is the sum of an object together with a fiat object part. If Mary is studying knee injuries in a population of patients then it may be that the target of her study is an aggregate of fiat object parts.

Combination entities of this sort4 provide no special challenges to BFO. They are not included explicitly as subtypes in BFO 2.0, though they could be included in future versions of the ontology if there is a corresponding need on the part of BFO's users. We may distinguish further subtypes of fiat entities analogously also in the realm of twodimensional surfaces (for example, Arizona is a fiat part of the twodimensional surface that is the continental United States, which may in turn be a fiat part of the twodimensional surface of the planet earth).

### BFO: Specifically Dependent Continuant

In line with our strategy of moving through BFO's is_a hierarchy in order of diminishing concreteness, we deal next what BFO calls specifically and generically dependent continuants. A specifically dependent continuant is a continuant entity that depends on one or more specific independent continuants for its existence. Dependent continuants exhibit existential dependence in the sense that, in order for a dependent continuant to exist, some other entity in which it inheres (intuitively, an entity enjoying a larger degree of concreteness) must exist also.

Examples of specifically dependent continuants include the color of this tomato, the pain in your left elbow, the mass of this cloud, the smell of this piece of mozzarella, the disposition of this fish to decay, your role of being a doctor, the function of your heart to pump blood, and the quality of a specific pixel array on your screen. The mass of this cloud could not exist without this cloud and the color of this tomato could not exist without this tomato.

In BFO, specifically dependent continuants are subclassified as follows:

### BFO: quality

### BFO: relational quality

### BFO: realizable entity

### BFO: role

### BFO: disposition

### BFO: function

A specifically dependent continuant is a dependent continuant that depends on some specific independent continuant that is its bearer. Thus a specifically dependent continuant is such that it cannot migrate from one bearer to another. My suntan is specifically dependent on me. It cannot also be your suntan, however closely similar the two distinct instances of the suntan type might be. Similarly, the mass of your car exists only so long as the car exists, and that very instance of mass can only exist as the mass of this specific car, and not of some other car. As we shall see, this is not true of generically dependent continuants, which are defined by the fact that they can migrate from one bearer to another.

### BFO: Quality

There are two types of specifically dependent continuant: quality and realizable entity. Qualities are contrasted with realizables in that the former, if they inhere in an entity at all, are fully exhibited or manifested or realized in that entity. The latter, in contrast, can inhere without being realized, and can be realized to different degrees (including different degrees of likelihood).

What all qualities have in common is that they inhere in, and so depend on, other entities; in order for a quality to exist some other entity or entities-specifically, one or more independent continuants, must also exist. Examples of qualities include the mass of this kidney, the color of this portion of blood, and the shape of this hand. Notice that, in each of these cases, the quality is referred to as standing in a relationship to some other independent continuant entity, such as a kidney, a portion of blood, a hand. This is because of the dependent nature of qualities. There cannot be color without it being the color of something, and there cannot be mass without it being the mass of something. In particular, it is BFO independent continuants that qualities depend on (or as we also say: inhere in). Qualities may inhere in one independent continuant-for example, the shape quality of this glass cube; or they may inhere in multiple independent continuants-for example, the quality of being siblings or being competitive with that might inhere in John and Mary; the quality of being angry that might inhere in an aggregate of persons we call a mob.

Qualities may depend also on entities of other types; thus, for example, the quality of your heart, of beating with a certain rate, is dependent not only on your heart, but also on the beating process in which the heart participates.

Often, it is the qualities of objects and their parts that we refer to as differentiae when formulating definitions. Why is our sun classified as a star? Because it shares certain qualities with other celestial bodies already identified as stars, such as being selfluminous, being plasmatic, having a size, mass, and temperature within a certain range, and so on.

Qualities in BFO can be ordered into those more or less general, for example, as follows:

or

Note that to assert that a body temperature quality of 37.8° Celsius inheres in a certain body does not imply that the body has a temperature of 37.8° Celsius uniformly through all its parts. Rather, different temperature qualities will be detectable in different parts of the body, and the "37.8° Celsius" represents an average of these.

More general qualities are called "determinables" in the philosophical literature, and the corresponding least general qualities are called "determinates." Typically, determinable qualities-for example, mass-hold of independent continuants as a matter of necessity. (You cannot, as a matter of necessity, exist without your mass.) Determinate qualities-for example, mass of 70 kg-hold only contingently. A red nose need not be red, but it must have some color. We can think of the necessary or essential determinable qualities as constants within the architecture of their bearers, while the determinate qualities vary with time. You always have your temperature, but the value of your temperature varies from one time to the next.

### BFO: Relational Quality

Relational qualities have a plurality of independent continuants as their bearers. Examples include a marriage bond, an instance of love, being a parent of, and so on, all of which obtain between one person and another. From the BFO perspective there is both the relational-quality universal marriage bond (an entity that might be included in a domain ontology for social reality) as well as the specific instances of this universal obtaining between (and so specifically depending upon) John and Mary, Bill and Sally, and so forth.

Relations That Do and Relations That Do Not Have Instances

By contrast with BFO's relational qualities, relations such as instance-of or part-Of (discussed in more detail in chapter 7), are relations for which it does not make sense to speak of instances. They are not entities in their own right. If it is true that Mary is a human being then there is no extra entity-for example, no instance of the relation of instantiation-that is needed to make this true. If it is true that Mary's heart is part-of Mary, then similarly there is no extra entity in addition to Mary and her heart that is needed to make it true that this relation obtains. BFO adopts this view of relations for reasons of practical utility. (We have, for instance, no data pertaining to different instances of the parthood relation.)

Internal relations such as comparatives (taller-than, larger-than, heavier-than...) are also not entities in their own right, as BFO conceives them.' If John is taller than Mary, then this is accounted for exclusively in terms of John's and Mary's respective height qualities, and in terms of the fact that each of these heights instantiates a certain determinate height universal and that the totality of such universals form a certain linear order. (And we note that "fact" here is not being used as a technical term, and thus also not as referring to an extra entity in the BFO sense.)

### BFO: Realizable Entity

Like qualities, realizable entities are specifically dependent continuants that inhere in one or more independent continuants. Realizable entities are in (inhere in) their bearers in just the same way that qualities are in their bearers. In contrast to qualities, however, realizable entities are exhibited only through certain characteristic processes of realization.

A realizable entity is thus defined as a specifically dependent continuant that has at least one independent continuant entity as its bearer, and whose instances can be realized (manifested, actualized, executed) in associated processes of specific correlated types in which the bearer participates.

Examples of realizable entity include the role of being a doctor, the functions of the reproductive organs, the disposition of a portion of blood to coagulate, the disposition of a portion of metal to conduct electricity. Entities in each of these types are in each case associated with entities of corresponding process types in which they are realized (executed, manifested, actualized). Thus, for example, the role of a doctor is realized when he examines or treats patients; the function of a reproductive organ is realized in copulation or insemination.

Realizable entities are entities of a type whose instances are such that in the course of their existence they contain periods of actualization, when they are manifested through processes in which their bearers participate. But they may also exhibit periods of dormancy, when they exist by inhering in their bearers but without being manifested-as, for example, in the case of those diseases which are marked by periods of latency, and by the many occupational roles that are not realized because the bearer is, for example, asleep. Some realizable entities are realized during all the times when the bearer exists, as, for example, in the continuous functioning of a mammal's heart and lungs; other realizable entities are realized hardly at all, as, for example, in the case of sperm, which are nevertheless the bearers of a function-to carry male genes to a female's egg-that are entities of a type some (an important few) of whose instances do indeed contain periods of actualization.

We saw that an animal is classified as a mammal in virtue of possessing certain qualities (being a vertebrate, being warm blooded); but there are characteristics of mammals that involve not qualities but realizables. For example, a (female) mammal is capable of giving birth to live young, and capable of lactating, even if in particular cases these dispositions are never realized. Some realizables, as again in the case of the function of a sperm to penetrate an ovum, may be such that they can be manifested only once in their lifetime. Others, for example, the function of a spark plug in an internal combustion engine, can be manifested over and over again.

BFO distinguishes two principal types of realizable entity: role and disposition, with one subtype of disposition, namely function. Other subtypes of realizable entity distinguished in the ontological literature include capabilities and tendencies.'

### BFO: Role

A role is an externally grounded realizable entity, that is, it is a realizable entity that is possessed by its bearer because of some external circumstances (for example, the bearer has been assigned the role by some other persons, who have roles of their own which grant them a certain authority). A role is thus always optional; the bearer does not have to be in the given external circumstances.

Each instance of role is a realizable entity that (1) exists because the bearer is in some special physical, social, or institutional set of circumstances in which the bearer does not have to be (optionality), and (2) is not such that, if this realizable entity ceases to exist, then the physical make-up of the bearer is thereby changed (external grounding).

A role is a realizable entity whose manifestation brings about some result or end. This result is not essential to its bearer in virtue of the kind of thing that it is. Thus it is not essential to Jim that he is a nurse, or to Mary that she is a bankrupt or a baroness or a bodyguard. But Jim and Mary have these roles because they are in certain associated kinds of natural, social, or institutional contexts. A role can cease to exist without the physical make-up of the bearer thereby being changed. An entity has a role not because of the way it itself is, but because of something that happens or obtains externally.

Further examples include the role of an instance of a chemical compound to serve as analyte in an experiment, the role of a portion of penicillin to serve as a drug, and the role of a stone in marking a boundary.

As we shall see, roles are distinct from another type of realizable entity, called functions. A heart has the function of pumping blood, but in certain circumstances that same heart can play the role of dinner for a lion or of plastinated prop in a museum display. A portion of water does not have any function per se, but it does play many different roles, for example, in a hydroelectric experiment, or in washing clothes, or in helping to initiate the growth process of a seed. Many prominent types of role involve social ascription. A person can play the role of lawyer or of surrogate to a patient, but it is not necessary for persons that they be lawyers or surrogates.

Note, here, that it is the role that is ontologically prior. "Lawyer role," "surrogate role," "nurse role," and so on, all refer to universals in BFO's terms. "Lawyer," "surrogate," "nurse," however, refer merely to defined classes. If a person has the role of lawyer, then we can refer to the person in two ways, as person, or as lawyer. The latter usage can be defined as follows:

lawyer(x) = def. person(x) and for some y(lawyer-role(y) and x has-role Y)

This definition can serve as a template for very many role-related defined classes.

When once the class lawyer has been defined, then it may be used in BFO-based ontologies in many of the same ways these ontologies use terms representing universals, thus, for example, in assertions of the form: lawyer is_a person.

BFO: roles are specifically dependent instances. A role exists only when some specific independent continuant serves as its bearer. Roles in this sense, like qualities, cannot migrate from one bearer to another. The term "role" can, however, be used in a different sense in contexts such as Jane's being the seventh person to fill the role of director of this institute, or Joe's being the third person to play a particular role in a play. "Role" in this sense is being used to designate what BFO calls a generically dependent continuant.

### BFO: Disposition

It is common for researchers to make claims such as

- element X has a disposition to decay into element Y,

- the cell wall is disposed to filter chemicals in endocitosis and exocitosis,

- certain people have a disposition to develop colon cancer,

- children are innately disposed to categorize objects in certain ways.

All of these are examples of dispositions in BFO's sense. A disposition is a realizable entity in virtue of which-for example, through appropriate triggers-a process of a certain kind occurs (or can occur or is likely to occur) in the independent continuant in which the disposition inheres. This process is called the realization of the disposition. The trigger might consist in the objects being placed in a certain environment or being subjected to certain external influence, or it may be some internal event within the object itself.

Unlike a role, a disposition is a realizable entity that is such that, if it ceases to exist, then its bearer is physically changed. Dispositions are in this sense (and in contrast to what is the case with roles) not optional. If an entity is physically a certain way, then it has a certain disposition, and if it ceases to be that way, then it loses that disposition. A disposition can thus be conceived of as an internally grounded realizable entity. That is, it is a realizable entity that exists because of certain features of the physical make-up of the independent continuant that is its bearer. One can think of the latter as the material basis of the disposition in question. Note that this material basis will exist even though its associated disposition is never realized.

Dispositions are variable along a continuum from weaker to stronger. Dispositions at the weaker end of the spectrum are not realized in every suitable triggering situation, but only in some fraction of relevant cases. Examples include

- a hemophiliac's disposition to bleed an abnormally large amount of blood, and

- the disposition of a person who smokes two packs of cigarettes a day throughout adulthood to die of a disease at a below average age.

Clearly, we are often referring to more or less weak forms of disposition when we consider genetic and other risk factors for specific diseases.

By contrast, we can distinguish a strong form of disposition, a sure-fire disposition, which is reliably executed whenever its bearer is in the conditions appropriate for a disposition of the corresponding type. Examples include

- the disposition of a piece of stretched elastic to contract when released,

- the disposition of a sheet of glass to break if struck with a sledgehammer moving at 100 feet per second,

- the disposition of a diploid cell to become haploid following meiosis, and

- the disposition of a magnet to attract iron filings.

Incorporation of dispositions into the BFO ontology provides a means to deal with those aspects of reality that involve possibility or potentiality without the need for complicated appeals to modal logics or possible worlds. At the same time, the ontological commitment to dispositions itself faces the problem as to how dispositions are to be individuated. If John has the disposition to scratch his nose, does he also have the disposition to scratch his nose when awake, or in the presence of Mary, or during a full moon? How, in other words, are dispositions to be counted? How is one disposition to be distinguished from another? BFO's approach to answering such questions is highly practical. BFO has been created to serve the annotation of data deriving from scientific experiments. BFO itself does not provide a taxonomy of dispositions; it does not itself legislate concerning which types of dispositions exist, or how they are to be individuated. Rather, it leaves this task to the specific sciences. Those involved in scientific practice have at their disposal at each stage a limited repertory of terms for representing the salient types of dispositions, and it is this set of evolving repertories that will serve as starting point for ontology building in the spirit of BFO. Scientific practice does not reduce the massive diversity in the number of ways in which the totality of dispositions can be divided up, nor does it solve all problems concerning how dispositions are identified or individuated; but it does solve the practical problem of providing us with a means to represent those dispositions in each given domain that are salient to scientific advance.

### BFO: Function

A function is a special kind of disposition.' It is a realizable entity whose realization is an end-directed activity of its bearer that occurs because this bearer is (a) of a specific kind and (b) in the kind or kinds of contexts that it is made or selected for. Thus a function is a disposition that exists in virtue of the bearer's physical make-up, and this physical make-up is something the bearer possesses because of how it came into being-either through natural selection (in the case of biological entities) or through intentional design (in the case of artifacts).' Roughly, the entities in question came into being in order to perform activities of a certain sort, called "functionings." Examples include

- the function of amylase in saliva to break down starch into sugar,

- the function of a sperm to penetrate an ovum,

- the function of a hammer to drive in nails,

- the function of a pen to write, and

- the function of a heart pacemaker to regulate the beating of a heart by means of electricity.

Each function has a bearer with a specific type of physical make-up. This is something that, in the biological case, the bearer has evolved to have (as in a hypothalamus secreting hormones) and, in the artifact case, something that the bearer has been designed and built to have (as an Erlenmeyer flask is designed to hold liquid).

It is not accidental or arbitrary that the eye has the function to see or that a screwdriver has the function of fastening screws. Rather, eyes and screwdrivers exist because they perform these functions. Their functions are integral to the entities in question in virtue of the fact that the latter have evolved, or been constructed, to have the physical make-up needed to perform or realize them. It is because of its physical make-up that your heart's function is to pump blood and not, for example, to produce thumping sounds-the latter are mere byproducts of your heart's functioning.

Like dispositions in general, therefore, functions are internally grounded realizable entities: a function is such that if it ceases to exist, then its bearer is physically changed. If a lung or attic fan becomes nonfunctioning, then this indicates that the physical makeup of these things has changed. In the case of the lung this might be due to a cancerous lesion; in the case of the attic fan to a rusted exhaust screen.'

BFO: Specifically Dependent Continuant: Summary

Examples of the different kinds of specifically dependent continuant recognized by BFO are

- this negative charge is a quality of this phosphate ion,

- this adhesion is a quality of the water in this flask,

- John's obligation to pay Susan is a relational quality that obtains between John and Susan,

- to detoxify its containing organism is a function of this liver,

- to produce portions of glycogen is a function of this endoplasmic reticulum,

- this bacterium in this case of cholera has the role of pathogen,

- this person in this clinical trial has the role of subject,

- this rattlesnake has the disposition to strike when threatened, and

- this structure of mature bamboo scaffolding has the disposition to be cycloneresistant.

The BFO ontology of dispositions serves as the basis for the treatment of diseases in the BFO-based Ontology for General Medical Science.10 To say that a human being has a case of influenza, for example, is to say that he or she has a complex disposition that is realized, inter alia, in acute inflammation, weakness, dizziness, and fever. A person may also have a predisposition to some disease without in fact having the disease. Many persons, for example, have a predisposition to colon cancer; we may have this predisposition for the whole of our lives without ever developing the disease of colon cancer itself. In this case we have a disposition (already now) to acquire a further disposition at a later time. In a similar way, each healthy adult human being has a disposition to walk. A human fetus has a predisposition to walk; that is, she has a disposition to acquire the disposition to walk at a later stage in her life.

Reciprocal Dependence among Realizable Dependent Continuants

Consider the cases of husband and wife, or of doctor and patient. Here pairs of reciprocally dependent roles are involved, whereby the first role in each reciprocal pair can be realized only if the second is realized also. We encounter analogous reciprocally dependent pairs of functions in the realm of artifacts. Consider a key and the associated lock. The key has a disposition to unlock the lock, while the lock itself has the disposition to be unlocked by that very key. Both dispositions are manifested in the same process, namely, in the key's unlocking of the lock. What underlies these complementary dispositions is the key's disposition to transmit torque when rotated, the lock's disposition to release when unlatched, and a relation between the material and shape qualities of the lock and key that confers these dispositions (the key must fit the lock and must be of sufficient hardness to enable transmission of torque to the lock's lever).

Reciprocally dependent pairs of functions are present throughout the natural world. Consider the case of sperm and egg. Here biological functions have evolved in complementary dependence upon each other. Each cannot realize its primary function unless the other does so also.11

### BFO: Generically Dependent Continuant

To say that one entity is specifically dependent on another is to assert that the first entity is as a matter of necessity such that it cannot exist unless the second entity exists. BFO's specifically dependent continuants are thus subject to what we might call the axiom of nonmigration: they cannot migrate from one bearer to another. Some dependent continuants seem, however, to be capable of such migration, as, for example, when you copy a pdf file from one computer to another. Clearly the pdf file is dependent on some bearer; for the pdf file to exist, there must be some physical storage device on which it has been saved. But equally clearly, the pdf file can be moved from one storage device to another. The very same pdf file can be saved to multiple storage devices, and thus it-the numerically identical information entity-can exist in multiple copies.

To do justice to this and many similar phenomena BFO incorporates the category of generically dependent continuant, defined as a continuant that is dependent on one or other independent continuants that can serve as its bearer. More formally we define generic dependence as follows:

a generically depends on b = def. a exists and b exists and: for some type B, b is an instance of B and necessarily (if a exists then some B exists)

and we define generically dependent continuant on this basis:

a is a generically dependent continuant = def. there is some b such that a is generically dependent on b

If A is a subtype of generically dependent continuant, then every instance of A requires some instance of independent continuant subtype B, whereby which instance (or instances) of B serves as bearer can change from time to time.

There are two large families of examples of such entities-in the domains of information artifacts and of biological sequences respectively. And while BFO itself does not contain terms like "information artifact" or "DNA sequence," terms like these are found in the Information Artifact Ontology (IAO)12 and Sequence Ontology (SO),13 both of which are BFO conformant.

We can think of generically dependent continuants, intuitively, as complex continuant patterns of the sort created by authors or designers, or (in the case of DNA sequences) through the processes of evolution. Generically dependent continuants thus include, for example, the Coca Cola trademark, the pattern that is your signature, a square arrangement of sixty-four alternating black and white squares. Each such pattern exists only if it is concretized in some counterpart specifically dependent continuant-the pattern of red and white swirls on the label of this Coca Cola bottle; the pattern of ink marks you just created by signing this piece of paper; the pattern of black-and-white squares on this chessboard.

Such patterns can be highly complex. The pattern of letters of the alphabet and associated spacing which is the novel Robinson Crusoe is concretized in the patterns of ink marks in this (and that) particular copy of the novel. Generically dependent continuants can be concretized in multiple ways; you may concretize a novel in your head.14 You may concretize a piece of software by installing it in your computer. You may concretize a cake recipe that you find in a cookbook by reading it, and your concretization may then serve as the starting point for a process of creating a plan, which exists as a realizable dependent continuant in your head and is realized in your baking of a cake.

Generically dependent continuants may be found in the realm of nucleic acid and other biological sequences. Other generically dependent continuants are information entities created by human beings. The data in your database, for example, are patterns in some medium-for instance in your hard drive-with a certain kind of provenance. The database itself is an aggregate of such patterns. When you create the database you create a particular entity (what BFO calls an "instance") of the generically dependent continuant type database. This will be concretized in your hard drive as a certain complex quality (of magnetic excitation)-a specifically dependent continuant. Similarly each entry in the database is an instance of the generically dependent continuant type datum, which will be concretized in your hard drive as a certain part-quality of that whole quality that is the concretization of the database as a whole.

Databases, novels, dramatic scripts, musical scores, and other information entities are in some ways analogous to other created artifacts such as paintings or sculptures. They differ from the latter in that, once having been created, they can exist in many copies that are all of equal value. The novel Robinson Crusoe is an instance of the type novel, each printed copy is an instance of the type book. The novel Robinson Crusoe is a generically dependent continuant instance, an abstract pattern, made concrete through the acts involved in printing successive copies. In each of these copies there inheres a certain complex quality (of a certain quantity of bound paper and associated small piles of printer's ink), and each such complex quality concretizes the generically dependent continuant that is Defoe's novel.

In this way we can do justice to the fact that there is only one Robinson Crusoe, which does not change when additional copies are printed.

In the case of a work of music such as Beethoven's Symphony No. 9, there is again a certain abstract pattern, a generically dependent continuant instance of the type symphony, which is itself a subtype of the type musical work, which is concretized in certain specifically dependent patterns of ink marks that we find in a printed copy of the score or in certain specifically dependent patterns of grooves in a vinyl disk. The symphony is realized (manifested, performed) in those occurrent patterns of air vibrations that are instances of the type musical performance. The score itself is an instance of the generically dependent continuant type plan specification, which is concretized in the minds of the conductor and the members of the orchestra when they read and understand the score. This allows them to create (and to realize as they perform) a plan, which is a complex, realizable dependent continuant that exists (in slightly different but mutually compatible forms) in the minds of multiple human beings; it is realized when conductor and orchestra work together to create the already mentioned pattern of air vibrations.

Analogously, when a research team decides to perform an experiment following a published protocol, the protocol itself is a generically dependent continuant instance of the type plan specification. The leader of the research team concretizes this protocol as a complex quality in her mind by reading it, and creates on this basis that specifically dependent realizable continuant that is a plan for carrying out this experiment. At the same time she creates a series of subprotocols, plan specifications for her various team members, which are concretized by them as plans for carrying out their corresponding parts of the experiment. The experiment itself is the synchronized realization of these plans.

### BFO: Immaterial Entity

Having dealt with BFO's specifically and generically dependent entities, we now return to the other major subclass of BFO's independent continuant, namely immaterial entity, defined as an independent continuant that contains no material entities as parts. Even to speak of "immaterial entities" may sound, at first, counter-intuitive. However, consideration of cases makes it clear that there are entities in reality that although not themselves material are nonetheless important for our manipulation and cognition of what is material. A good example set of such entities is found in the domain of anatomy, where the boundaries of, for instance, organs and portions of tissue are no less salient than the entities that they bound. Rosse and Mejino provide the following rationale for including terms for immaterial entities such as surfaces, lines, and points in the Foundational Model of Anatomy (FMA) ontology: "Although anatomical texts and medical terminologies with an anatomical content deal only superficially, if at all, with anatomical surfaces, lines, and points, it is nevertheless necessary to represent these entities explicitly and comprehensively in the FMA in order to describe boundary and adjacency relationships of material physical anatomical entities and spaces.""

Immaterial entities divide into two major subgroups:

1. Boundaries and sites, which bound, or are demarcated in relation to, material entities, and which can thus change location, shape and size as their material hosts move or change shape or size (for example, your waist, the boundary of Wales [which moves with the rotation of the earth]; your nasal passage, the hold of a ship);

2. Spatial regions, which exist independently of material entities, and which thus do not change.

Immaterial entities listed under 1. are in some cases continuant parts of their material hosts. Thus the hold of a ship, for example, is a part of the ship; the hold may itself have parts, which may have names (used, for example, by ship stow planners, customs inspectors, smugglers, and the like). Immaterial entities under both 1. and 2. can be of zero, one, two, or three dimensions.

Sites, such as the kitchen of a restaurant on a ship, are analogous to material entities in that they are of three dimensions and can move through space. When they do so they will occupy successively different spatial regions. One site may move through another site, for instance the interior of a railway carriage may move through the Mont Blanc tunnel. By contrast, spatial regions never move through each other, because spatial regions never move. (More precisely, they are, by definition, at rest relative to the pertinent frame of reference, as will be discussed.)

BFO: Continuant Fiat Boundary (including Zero-, One-, and TwoDimensional Continuant Fiat Boundary)

A continuant fiat boundary is an immaterial entity that is of zero, one, or two dimensions and does not include a spatial region as part. Intuitively, a continuant fiat boundary is a boundary of some material entity that exists exactly where that object meets its surroundings. For BFO: objects larger than molecules, the flat object boundary is its maximally connected twodimensional surface, for example, the surface of the earth, or the surface of a cell membrane. However, a fiat boundary can also be the boundary of an immaterial entity, such as a site (for example, the boundary of a portion of airspace into which only military aircraft are allowed to fly).

In the simplest cases such as rocks or baseballs, and even in topologically more complex cases such as donuts or wedding rings or bird cages, there is little difficulty in determining where the corresponding object boundary lies. In the case of compartmentalized objects such as mammals, buildings, and refrigerators, however, we may face options as to whether to include the compartments (cavities) within the object as parts of the object or as holes. Consider, for example, your digestive tract. On one view your body is topologically analogous to a donut; your digestive tract is a hole running through the middle. On the view espoused in the FMA, however, which is the de facto standard human-anatomy ontology, the digestive tract is not a hole in but rather a part of the organism-a part that is not made of matter. Similarly the interior of your freezer compartment is not a hole in but is rather a part of your refrigerator. Whichever option we take will determine what is to be counted as the "outer" boundary of the object in question and thus also of the object's shape.

#### Figure 5.3

A block of marble with corrosive acid eating outward toward its boundary

Note that the sense of "boundary" that is presupposed in the preceding is one according to which boundaries have no material parts. Entities with material parts are in every case spatially of three dimensions. Continuant boundaries as we conceive them are always of lower dimension.

Consider a rectangular block of marble. The surface of the block is a boundary of two dimensions, its edges are of one dimension, and its corners are of zero dimension. Each of these boundaries is dependent on the cuboid, but in a sense of "dependence"which we can call "boundary dependence"-that is different from the sense employed when dealing with specifically and generically dependent continuants above. Briefly, we can say that a boundary a of an object b is boundary-dependent on this object if and only if it is necessarily such that it can exist only if either b exists or there exists some part of b that includes a as part. To see what is at issue here, imagine that there is some capsule of a supremely powerful corrosive acid inside the marble block that is eating the marble away, by degrees, from the inside (figure 5.3). As the marble is progressively destroyed its boundaries are at first unaffected. They will continue to exist for just as long as there is at least some remaining part of the block that includes them as part. Since this remaining part can be arbitrarily thin, there is a sense in which the boundary itself is of zero thickness.

It will be clear from the preceding discussion that the sense of "boundary" intended here-which is close to the mathematical sense of the term-is distinct from that which is involved when we refer to a skin or membrane as the boundary of an organism or cell. Material boundaries in this latter sense-boundaries with thickness-themselves have boundaries (on either side) of the type at issue here.16

Continuant fiat boundaries admit of different dimensions. A twodimensional continuant flat boundary (surface) is a selfconnected fiat surface whose location is defined in relation to some material entity. Examples of this type of boundary include any surface of a continuant material object that segments that object off from the rest of its environment, such as the boundary of the block of marble in the example just discussed. A one-dimensional continuant flat boundary is a continuous fiat line whose location is defined in relation to some material entity; for example, the Greenwich meridian, the Equator, and geopolitical boundaries of nations and states. Finally, a zerodimensional continuant fiat boundary is a fiat point whose location is defined in relation to some material entity. Examples include the North Pole and the point of origin of a spatial coordinate system.

### Boundaries and Granularity

Why, now, does BFO refer to object boundaries as fiat, given that the outer boundary of, for example, a tomato or a block of marble or a table in our living room does not depend for its existence on any decision or on any drawing of boundaries by any cognitive agent? The answer to this question turns on BFO's treatment of the phenomenon of granularity.

If we examine the surface of the table with a powerful microscope, then it will appear that there is no boundary there at all, in either the mathematical or the thin layer sense just distinguished. Rather, there is just (something like) a cloud of microparticles oscillating at high velocities in the vicinity of what, when we use the naked eye, we like to call the surface of the table. In a famous passage by the physicist Eddington on what he called "My Two Tables," the view that there are no boundaries of (middle-sized) objects-and so there are no corresponding (middle-sized) objects for them to boundis defended explicitly. Table 1, as Eddington sees it, is the ordinary solid table made of wood; table 2 is what he called his "scientific table": "My scientific table is mostly emptiness. Sparsely scattered in that emptiness are numerous electric charges rushing about with great speed; but their combined bulk amounts to less than a billionth of the bulk of the table itself. [The scientific table] supports my writing paper as satisfactorily as table No. 1; for when I lay the paper on it the little electric particles with their headlong speed keep on hitting the underside, so that the paper is maintained in shuttlecock fashion at nearly steady level."17

Eddington here expresses the sort of reductionist point of view that we rejected in chapter 3 (especially the section on adequatism). For him only the scientific table exists; table 1 is for him something like a convenient fiction. From the adequatist point of view defended by BFO, in contrast, denying that the two tables have just the same degree of reality is a mistake, since the two tables are in fact one and the same objectit is merely that they are viewed at different levels of granularity. Table 1 and table 2 have the same degree of reality in the same way as do, for example, the City of Toronto depicted on a large - and a small-scale map (where the former shows items at the order of magnitude of single streets and houses, the latter only major highways and neighborhood divisions).

The fiat object boundaries of tables and tomatoes exist, because the tables and tomatoes exist, as is seen when these objects are viewed from the perspective of mediumsized-object granularity. These fiat object boundaries are referred to (implicitly or explicitly) when we apply the commonsensical distinction between what is in the interior and what is in the exterior of the objects in question. Something similar occurs also when we use a map to determine what is in the interior and what is in the exterior of some parcel of real estate. This does not mean that those who wish to embrace a reductionist view cannot use BFO to support their work in ontology development. Reductionists who wish to follow Eddington can simply ignore (not use) those parts of BFO pertaining to boundaries at higher levels of granularity. For most users of BFO however, and especially users of BFO in areas of biology and the health sciences, its adequatist framework provides them precisely with the resources they need to deal ontologically with collected data pertaining to boundaries in both of the two distinguished senses. This is clear from the large number of terms for surface boundaries (in addition to surface layers) found in the FMA. Representing surface boundaries is important, too, in areas such as perceptual psychology-for example, in experiments on vision that gather data pertaining to surface colors and to perceptual surfaces of different shapes and textures.

The issue here pertains to distinctions of granularity in scientific research and in clinical practice, in engineering, administration, and other practical disciplines. Different scientific specialties explore the same domains of reality at different levels of granularity, and what are counted as objects on one level of granularity may appear to scientists working on another level of granularity as object aggregates. To describe BFO as an "adequatist" ontology is to say that it is designed to support the work of scientists and engineers at multiple scales and levels of aggregation, and thereby also to support the integration of data relating to such multiple levels. Different BFO users may address the problem of such integration in different ways. Some may be able to ignore this problem because they focus exclusively on one level of granularity. Others may need to annotate each of BFO's material entity types with explicit reference to the level of granularity at issue, and work is ongoing to create an extension of BFO 2.0 in which resources for such explicit reference will be provided."

#### Figure 5.4

### A site containing a bear

Source: Barry Smith and Achille Varzi, "Surrounding Space: The Ontology of OrganismEnvironment Relations," Theory in Biosciences 121 (2002): 139-162.

### BFO: Site

A site is, intuitively, an immaterial entity in which objects-such as molecules of air or water, or a bear-are or can be contained (see figure 5.4).

A site exists because there is some material entity in relation to which it is defined, providing, for example, the floor and walls and ceiling that allow containment by forming the retainer for the site. Each site will thus have a characteristic spatial shape in virtue of this physical retainer. But the site itself, while it exists because of this retainer, does not contain the retainer as part. The site is, rather, the hole that is contained by the retainer. A BFO: site can now be defined as follows:

site = def. a threedimensional immaterial entity that either (1) is (partially or wholly) bounded by a material entity or (2) is a threedimensional immaterial part of an entity satisfying (1)

Examples include your nasal cavity, your veins (cavities through which blood flows), the Suez Canal (trench), the lumen of your gastrointestinal tract, the interior of your aorta, the interior of your office, the trunk of your car, the Piazza San Marco, a kangaroo pouch, the inside of your shoe, your eye socket, the cruciform slot of a Philips head screw.

All of these examples are at the levels of granularity accessible to ordinary human perception. The Protein Ontology Consortium is developing a sub-ontology representing amino acid sites that are the locations of posttranslational modifications." We leave open the question whether there are BFO: sites at other levels of granularity. Are, for example, black holes BFO: sites? Such questions will need to be addressed empirically, in light of the consequences of applying BFO to corresponding domains.

Every site will at any given moment coincide with some spatial region. But the site is not identical with the spatial region with which it coincides, because the site but not the spatial region is ontologically (site-) dependent upon its retainer. In the case of mobile sites (for example, a ship's cargo hold) the site in question will cycle through a continuous multiplicity of spatial regions as its retainer, the ship, moves. While at any given moment the hold will be co-extensive with some spatial region, it is not identical to that spatial region, because the hold remains what it is even after the ship and the sites for which its interior walls serve as retainers have moved so as to occupy new spatial regions. Spatial regions cannot move since it is spatial regions in and through which movement occurs.

A site is typically associated with some medium such as the body of air that is partially or completely enclosed by its retainer. Thus, the nasal cavity is a site that is formed by the exterior boundaries of the inner membranes and parts of the nose that give this site its characteristic spatial shape. The site serves as container for a succession of molecules of oxygen and nasal flora. Similarly, the skull is a site that contains the cranial cavity, the brain, and the cerebrospinal fluid that entirely fills the cavities that are enclosed by the skull walls and the brain, taken together.

BFO: Spatial Region (including Zero-, One-, Two-, and ThreeDimensional Spatial Regions)

A spatial region is a continuant entity that is a part of space (by which we mean: a part of the maximal or total space, or in other words of the whole of space). Both material and immaterial entities occupy regions of space; processes occur in space. When an object moves from one place to another, then it occupies a continuous series of different threedimensional spatial regions at different times. As we know from the theory of relativity, however, there are no spatial regions except as defined relative to some frame of reference, an issue we discuss in the next section.

BFO recognizes four different sorts of spatial regions in its ontology, of three, two, one and zero dimensions. Just as, from the ontological realist perspective, there are objects (independent continuants such as you and me) so there are threedimensional spatial regions that such objects occupy. And just as for BFO there are surfaces of objects (for example, the twodimensional external fiat boundary of your body) so there are twodimensional spatial regions that these boundaries occupy and one - and zerodimensional spatial regions that are the boundaries of these boundaries.

BFO thus incorporates two levels of continuants-with spatial regions on one level and material entities and sites (with their respective boundaries) on the other, the former providing, as it were, the spatial receptacles for the latter. Such a two-level approach is common in the literature on spatial reasoning.20

BFO is a boundary-tolerant ontology.21 It incorporates terms for spatial regions of zero, one, two, and three dimensions (points, lines, surfaces, and volumes, respectively) and also terms for the objects, fiat object boundaries, and sites that occupy the corresponding spatial regions. (As we shall see, BFO adopts a similar two-level theory in its treatment of temporal entities.) One rationale for recognizing the two levels of objects and the regions they occupy turns on the way in which the part-whole structures of objects reflect the part-whole structures of the corresponding spatial regions. In decomposing an object into its constituent parts we also decompose the spatial region occupied by the object into the spatial regions occupied by these parts at any given time. If two parts of the object are connected to each other, then so also are the corresponding spatial regions (and this is true independent of the frame of reference we are using to determine the reference of spatial region identifiers in any given case).

In accepting sites into its ontology in addition to spatial regions, BFO is acknowledging also two distinct location relations involving independent continuants of

1. containment, between an independent continuant and a site that contains it (for example, between a chick and the interior of an egg, or between a group of drinkers and the interior of a pub), and

2. location, between any independent continuant entity and the corresponding spatial region-whereby every independent continuant is, at any given time, associated with the spatial region at which it is located at that time.

Independent continuants may have many qualities (such as shape, size, mass, density, reflectance, electric charge, and so forth), stand in many different sorts of relations to other entities, and be such that many realizable dependent continuants inhere in them.

Spatial regions, in contrast, are continuants of a peculiar ("abstract") sort. There is a sense in which they have qualities of shape and size, but the primary BFO relation here is one of instantiation between a spatial region instance and the corresponding spatial region universal. Spatial regions can be said to have the quality of being size m because they instantiate the universal spatial region of size m.22 The corresponding qualities, accordingly, are "defined qualities," and form a special subfamily of defined classes in the BFO framework.

Spatial regions do not inhere in any other entities; and they are inert, in the sense that no realizables inhere in them. Spatial regions are thus unique kinds of entities in BFO. They are entities in the full sense; however, they are neither material entities of the sort that they provide locations for, nor are they dependent on such concrete material entities in the way that qualities and realizables are.

As we have seen, while some determinable qualities-such as mass-hold of independent continuants as a matter of necessity, the corresponding qualities of lower generality such as mass of 70 kg hold only contingently. When it comes to qualities and relations of spatial regions, in contrast, all hold as a matter of necessity at all scales. A spatial region cannot change its shape, since if it did then this would mean that it had ceased to exist and had been replaced by some other spatial region. Similarly a spatial region cannot change its relations (for example, of adjacency or parthood) to other spatial relations.

The four subtypes of BFO: spatial region are as follows:

1. BFO: zerodimensional region is a spatial region with no dimensions, also called a spatial point.

2. BFO: one-dimensional region is a spatial region with one dimension, also called a spatial line.

3. BFO: twodimensional region is a spatial region with two dimensions, also called a spatial surface.

4. BFO: threedimensional region is a spatial region with three dimensions, also called a spatial volume.

### Spatial Regions and Frames of Reference

As pointed out above, spatial regions cannot be specified absolutely but always only relative to some reference frame, and work is ongoing to create a future version of BFO in which such reference frames will be incorporated explicitly. For most current users of BFO, however, the effects of special relativity are not significant and thus they can safely make the assumption that there is a single Euclidean frame of reference that they all-modulo trivial differences, for example, as to choice of origin, or of coordinates used-share in common.

A reference frame is, in first approximation, a system of coordinates with an origin and units. And (to our knowledge) all coordinate systems employed by current users of BFO are easily convertible one into another. This is because significant problems of conversion between coordinate systems arise only where frames of reference are in motion relative to each other. When we are all working with what is effectively the same Newtonian frame because we are dealing with objects and spatial regions close to or on the surface of the earth, such relative motion is insignificant. In some cases a system of coordinates is specified in an experimental protocol-for instance when observations are being made of animal behavior using coordinates defined relative to a specific forest. Users of BFO should document such specifications explicitly when employing BFO: spatial region terms in annotations. In other cases the coordinates are provided by some standard, as for instance in the case of the representation of latitude and longitude on a map. The map then divides up the represented land and sea surfaces into (roughly) rectangular twodimensional spatial regions, and we can think of the lines themselves as representing one-dimensional spatial regions, and of the points where they intersect as representing zerodimensional spatial regions.

The spatial regions defined by a reference frame are always at rest relative to this frame. Thus in the cases normally treated by biologists and clinical scientists the spatial regions they refer to (for example, a lab bench or hospital ward) can be assumed to be at rest-they can be treated as if they were absolute containers for the things and events observed-and all space-related measurements, for example, of speed or of relative distance can be directly compared.

In the future we anticipate that BFO will be used in support of domain ontologies developed for many different types of research, some of which may involve frames of reference that are not at rest relative to each other. A space transport ontology, for example, might include a reference frame that, because it is in motion relative to the earth, is not trivially interconvertible with the standard Newtonian frames used by biologists. Such conversions can be made, but may be quite complex-as, for example, where demarcations of spatial regions in terms of the World Geodetic System (WGS-84) need to be converted into demarcations in accordance with the International Celestial Reference System (ICRS) maintained by the International Astronomical Union (IAU).

Where, as in some areas of physics, BFO-based domain ontologies contain representations of spatial regions that are defined in terms of what are called noninvariant frames of reference, a special situation arises, since convertibility here may not be achievable. Future versions of BFO will be required to provide appropriate means to support the development of domain ontologies of this sort, and as we shall see, analogous issues will arise also with regard to BFO categories of temporal region.

### A BFO: Continuant Classification

Having outlined the continuant perspective of BFO, we conclude by providing a simple illustration of how BFO might be used to provide a classification of the qualities, functions, and dispositions relating to the human heart.

- this human heart instance of object,

- this heart's surface instance of fiat object boundary,

- this collection of four hearts in a biobank instance of object aggregate,

- this superior vena cava instance of fiat object part,

- this biopsy sample of the septum of the heart instance of material entity,

- this mediastinum instance of site,

- this mass of 250 grams instance of quality,

- this disposition to deteriorate over time instance of disposition,

- this disposition to pump blood instance of function,

- this role of serving as plastinated prop instance of role.

## 6 Introduction to Basic Formal Ontology II: Occurrents

Having presented the continuant categories of BFO, we will now focus on the occurrent categories starting, again, with the most general, and then working downward through their respective subtypes. The occurrent portion of BFO represents entities that occur, happen, unfold, or develop in time. In commonsensical terms, these entities are occurrences or happenings or the processes of change; they are the ontological counterparts of present participles (runnings, swimmings, dividings, orbitings).

A BFO: occurrent is, more precisely, either an entity that unfolds itself in time, or it is the instantaneous boundary of such an entity (for example, a beginning or an ending) along what we can think of as the time axis, or it is a temporal or spatiotemporal region that such an entity occupies. Occurrent, correspondingly, has four subtypes:

### BFO: process

### BFO: process boundary

### BFO: temporal region

### BFO: spatiotemporal region

### BFO: Process

A BFO: process is an occurrent entity that exists in time by occurring or happening, has temporal parts, and always depends on some (at least one) material entity. The dependence here is analogous to that which we find in the relation between a specifically dependent continuant and its independent continuant bearer(s). Examples of BFO: process include the life of this organism, that process of meiosis, the course of this disease, that flight of that bird, this process of cell division, this fall of water down this waterfall. My headache (experience of pain in my head) is dependent on me. It cannot also be your headache. I can feel your pain, but only in the sense that you and I may experience qualitatively identical pains. But the pain experiences themselves will be numerically distinct; they will be two distinct instances of the same type of pain experience.

The first key feature of processes is that they have temporal parts. Whereas John, considered as a substance, exists along with all of his parts at every instant in which he exists at all, there is no instant of time at which the process we call "John's life" would exist as a whole. Rather, this process unfolds along (and is divided out among) a series of temporal parts, such as for instance John's childhood, his adolescence, his adulthood, his old age; the first year of his life; the seven-thousandth minute of his life, and so forth. These are all temporal parts of John's life, and reflect the fact that John's life can be partitioned into temporal parts in different ways and at different levels of granularity.

Processes such as John's life thus have many other processes as parts. Some are temporal proper parts of John's life (for example, the process that is the sum total of what happens to John during his childhood); some are temporally coextensive with John's life (for example, the process of change in John's temperature from the beginning to the end of John's existence).' Each of these processes also has its own existence extended in time, and hence its own temporal parts.

Just as there are relational qualities, so also there are relational processes, which depend on multiple material entities as their relata. For example, John courting Mary, a moving body's crashing into a wall, a game of snooker, the videotaping of an explosion, a war.

Objects, as we have seen, can gain and lose parts while maintaining their identity. In the case of processes, in contrast, the gain and loss of parts is ruled out as a matter of necessity. This is because, if two processes should differ with regard to even the smallest part, then these two processes are nonidentical. John is still John (still numerically the same John) even if he suffers the loss of his arm in an industrial accident; but the process that is John's life and in which he loses his arm is not the same life as the process that is John's life (in what we might think of as some alternative possible world) in which he does not lose his arm. John can survive as the same individual (continuant) across many different changes to his parts and qualities, but there is only one life that is his, and this is so independently of whether he can choose how to live this life as it unfolds.

### BFO: History

BFO: histories are one important subtype of process. Each material entity and each site has from the BFO point of view a unique history, which is defined as follows:

history = def. the sum of all processes taking place in the spatiotemporal region occupied by the material entity or site in question

A history (occurrent) is thus always a history of something (continuant). What is interesting about histories is that they are, in an important sense, complete. For example, the history of John is the sum of all processes that have occurred within John throughout the course of his entire life, at all granularities. Thus the history of an object such as John is more than just the totality of events that might be described in John's biography. It will include also, for example, all the movements of neutrinos within his interior as they pass through, the movements of his blood cells, as well as the movements of his heart and lungs and of all other constituent organs of his body, and so forth.

The relation between a material entity and its history is one-to-one. Histories are thus very special kinds of processes, since not only is it the case that, for any material entity or site, there is exactly one process which is its history; it is also the case that (by definition of BFO: history) there is for every history exactly one material entity or site that it is the history of.

### BFO: Process Boundary

A BFO: process boundary is an occurrent entity that is the instantaneous temporal boundary of a process. Process boundaries are the beginnings and endings of the processes they bound. More precisely: a process boundary is a temporal part that itself has no temporal parts (where the relation of temporal parthood is as defined in chapter 7). It is the limiting or smallest temporal process part. Examples include the forming of a synapse, the onset of REM sleep, the detachment of a finger in an industrial accident, the final separation of two cells at the end of cell-division, the incision at the beginning of a surgery, where all these terms ("forming," "incision," etc.) are understood as referring to instantaneous changes rather than to the results of such changes. (We leave open the question whether process boundaries-like object boundaries-are always fiat in nature, and also whether they manifest something like the granularity dependence that we identified in the realm of continuants.)

### BFO: Spatiotemporal Region

A spatiotemporal region is an occurrent entity at or in which occurrent entities can be located. A spatiotemporal region is part of spacetime (that is: it is a part of the whole of spacetime) and each spatiotemporal region is defined relative to some frame of reference involving a four-dimensional system of coordinates. Just as BFO, in its continuant representation of entities, views space as a container within which objects and their qualities exist, so the accompanying occurrent representation of processes views spacetime as an analogous container, within which processes unfold and in which spatiotemporal regions can be identified as parts. Examples of such spatiotemporal regions include the region occupied by a human life, the region occupied by the development of a cancer tumor, the region occupied by a process of cellular meiosis, or the region occupied by a war.

BFO's occurrent ontology, in its current version, thus views spacetime, as a whole, existing in its entirety in its four (three plus time) dimensions. Processes, in this spacetime, have a duration, a beginning, and an end. One can think of each process as a temporally extended continuum, a spacetime worm, stretched out in and through the single unified container that is the entirety of spacetime. We note that this view of spacetime worms is distinct from popular four-dimensionalist views according to which objects (such as molecules or people or planets) would themselves be extended in time and would have temporal parts. BFO does indeed embrace a four-dimensionalist perspective; but it combines this with a three-dimensionalist perspective for continuants, and does not attempt to reduce the one to the other.

### BFO: Temporal Region

A temporal region is an occurrent entity that is a part of time (of the whole of time). Temporal regions differ from spatiotemporal regions in that they are extended or serve as boundaries only along the temporal dimension. A temporal region is the result of projecting a spatiotemporal region onto this temporal dimension.

Temporal regions are introduced in BFO to provide a basis for consistent representation of temporal data. Since there is no absolute time, temporal regions-like spatial regions-require for their representation some selected frame of reference. Users of BFO 2.0 are thus encouraged to specify the temporal coordinate system they are using, but this will-in all the applications known to us currently-be either identical to or trivially intertranslatable with the coordinate systems employed by other users (thus with the clock and calendar systems used for keeping track of terrestrial time).

Since temporal regions have temporal parts (are extended in time) in just the way that processes have temporal parts, they belong to BFO's occurrent perspective. Reference to temporal regions is however employed also when referring to BFO's continuant entities, for example, when we use them as a means for indexing relations between continuant entities such as parthood that hold only at certain times.

### BFO: ZeroDimensional Temporal Region

A zerodimensional temporal region-also called a temporal instant-is a temporal region that is without extent. For all intents and purposes a zerodimensional temporal region is a smallest instant of time just as a process boundary is a smallest temporal part of a process. Zerodimensional temporal regions are the temporal regions that process boundaries are located in. Examples include right now, the moment at which a finger is detached in an industrial accident, the moment at which a child is born, the moment of someone's death, and the turn of the nineteenth century.

### BFO: One-Dimensional Temporal Region

A one-dimensional temporal region-also called a temporal interval-is a temporal region that is extended in time. It has further temporal regions as parts, including its zerodimensional temporal region boundaries. One-dimensional temporal regions are the temporal regions in which processes occur or unfold. For example, the temporal region that is the first hour of the day, or the nineteenth century, or the temporal region in which John's life is located, or the temporal region occupied by World War II.

### An Example of Occurrent Classification

Having outlined the occurrent perspective of BFO, we can now give a simple illustration of BFO's classificatory power by considering how it classifies the entities that will be involved when a woman undergoes an electrocardiogram (EKG/ECG) at a cardiology clinic:

- the EKG test itself is an instance of process,

- the start and end of the test are instances of process boundary,

- the specific electrical activity measured by the test is an instance of process,

- the points in time at which the EKG test starts and ends are instances of temporal instant,

- the time taken by the test as a whole is an instance of temporal interval

- any slice of spacetime during the EKG test, for example as represented on the output graph, is an instance of spatiotemporal instant

### Classifying Universals with BFO

As we noted at the beginning of chapter 5, the categories and relations recognized by the BFO continuant and occurrent perspectives can be used to talk about both universals and particulars. An ontology is by our definition a representational artifact whose representational units are intended to represent universals and relationships among universals on the side of reality, but we come to know what universals and relationships exist only by examining particular instances that we observe in reality, for example, in the context of a scientific experiment. And it is not only domain ontologies that are representations of universals (and, by extension, of their particular instances), but also formal ontologies such as BFO. Hence temporal region, like other BFO categories, has instances in reality, such as this five-minute interval starting now, and that fiveyear interval ending last midnight. You yourself are an instance of BFO: object. From the BFO perspective, if we are given a universal that current science tells us exists-has instances-on the side of reality, the first question we need to ask is whether these instances are continuant or occurrent entities. If the universal in question has continuant instances, then the next question is whether these are independent continuant instances or dependent continuant instances, and so on, until the appropriate formal ontological category has been located within one or other of the two BFO hierarchies presented in chapters 5 and 6. It should be noted that the formal-ontological relationships that obtain between different ontological categories will imply also relationships among the instances of these categories. For example, if BFO: quality is dependent upon BFO: material entity, then every instance of the quality red is dependent upon some instance of material entity to serve as its bearer.

### Exhaustiveness of BFO Categories

BFO is an ontology that is designed to support information-driven scientific research, and itself shares some of the features of an empirical scientific theory. Thus BFO changes (albeit very slowly) in reflection of lessons learned through use, and it will continue to change in the future. Thus it is possible that there are domain-neutral universals (types of entities) in reality that are needed to perform an adequate job of annotating the results of scientific experiments that BFO has thus far failed to incorporate.

Consistent with BFO's principle of fallibilism, we acknowledge that it is possible that future research in ontology and in the natural sciences, as well as continued attempts at specific domain implementations, will reveal the need not only for an expansion of the top-level categories of BFO but also for corrections of its treatment of the universals already recognized. Such corrections have been made already in the development of earlier versions.' Clearly, changes in an ontology such as BFO that is used by a large number of independent groups must be managed on the basis of a careful scientific review process involving collaboration between end users and ontology developers and providing documentation of the principled reasons for any proposed changes.

### BFO's Perspectivalism

We have now reached the point where the perspectivalism underlying BFO can be more clearly stated. The continuant perspective of BFO represents some portion of space and its continuant occupants-including qualities of these objects-as they exist at given instants of time. But it does this in such a way that the identity over time of regions of space, and of material entities occupying such regions, and of qualities and other dependent continuants, can be asserted. In this way BFO avoids any reductionist view of continuants as mere sums of object slices or object stages. Time is in a sense external to the continuant perspective, and an assertion to the effect that a given material entity has a given quality at a given time, or that a given material entity is a part of another material entity at a given time, is represented not by referring to the temporal regions involved as extra entities, but rather by using temporal indexing of the pertinent relational verb.

BFO's occurrent perspective, by contrast, represents regions of time, and of spacetime, and the processes that occupy them, as if they were being viewed from the perspective of an idealized observer who is assumed to be outside of time. Time is thus internal to the occurrent perspective-the observer discovers that processes can be ordered along the temporal dimension and that they occupy successive temporal regions, the latter being represented explicitly as extra entities. On this view both times and the changes that occur in these times are represented. The occurrent perspective thereby captures the continuous flow of processes each blending into the next, with process parts being distinguishable within larger process wholes on successively finer levels of granularity. The transformation of Jill's hair from blond to brown can be represented as an occurrent process, involving various part processes (changes in color of individual hairs, chemical processes in each hair shaft, processes of cuticle penetration, and so forth).

But it is also possible to represent the passage of time and the occurrence of change from the continuant perspective. This is done by lining up a series of representations of a given portion of reality as it exists at a corresponding series of different times, and then observing the differences and similarities between the objects represented. Such representations can take account also of changes in qualities. Thus we might have a continuant ontology including a representation of Jill (object) from last year when she had blond hair (quality), and another continuant ontology including a representation of Jill as she is this year, when her hair is brown. One could then point to the difference in hair color as a change in quality, but nevertheless identify the object in which this hair color inheres, namely Jill (or Jill's hair), as numerically identical in the two cases.

Using anatomy and physiology as exemplars, we can say that the continuant perspective corresponds to anatomy, the study of the three-dimensional kinds of structures inside the body, while the occurrent perspective corresponds to physiology, the study of the kinds of processes in which these structures participate. And if we can imagine that there is a single representation of physiology for a given organism extending across the entire set of processes constituting the organism's life, then we must contrast this with the need for a series of distinct anatomical representations as the continuant structures making up the organism change from one life stage to the next-for example, from embryo to fetus to child to adult, and so forth.

#### Figure 6.1

### The hierarchy of BFO occurrents

Thus the BFO ontology is perspectival along two major dimensions, of continuants and occurrents, respectively. The former correspond to the three-dimensionalist doctrine favored by some contemporary philosophers, the latter to the four-dimensionalist doctrine favored by their opponents. In BFO these two doctrines are combined as alternative, mutually compatible perspectives within a single framework, which incorporates also a corresponding division between two different sorts of granularity, along the continuant and occurrent dimensions, respectively. Just as molecules and cells are at a lower granular level than planets, so the lives of single cells and single organisms are at a lower granular level than entire geological epochs.

### BFO's Perspectivalism in Practice

The OBO Foundry3 is a collaborative experiment in which some dozen ontologies are thus far involved, including the Gene Ontology (GO) at its core. The OBO Foundry is based on the voluntary acceptance of an evolving set of principles of good practice in ontology development by its participants. These include the requirement that ontologies:

#### Figure 6.2

Organization of the OBO Foundry ontologies (with the three branches of the Gene Ontology shaded)

- serve as controlled vocabularies to ensure the accumulation and comparability of scientific research,

- demonstrate usefulness in the annotation and integration of data resources, and

- be semantically interoperable.

The ontologies in the OBO Foundry suite are designed also to bring the benefits of modular development, with collaborating groups of experts taking responsibility for the representations of the entities and relations in their respective domains of expertise.

BFO provides the common upper-level ontology architecture for all the OBO Foundry ontologies, and it thereby also provides the framework within which we can understand the relations between these ontologies as they are developed by separate teams working in tandem. Here GO's three constituent ontologies of Cellular Components (independent continuants), Molecular Functions (dependent continuants), and Biological Processes (occurrents) are mapped within a framework defined in terms of BFO's categories along the horizontal dimension and in terms of levels of granularity along the vertical as in figure 6.2.

## 7 The Ontology of Relations

In chapter 6, we introduced the basic categories of BFO: continuant and BFO: occurrent, and their respective subtypes. In this chapter we will introduce the central ontological relations in BFO, and provide examples of how definitions for such relations are to be formulated.

### BFO Relations

As has been noted in earlier chapters, providing definitions of the terms representing universals and defined classes alone is normally not sufficient to capture all of the important scientific information about a given domain. The relations that obtain between and among them need to be defined also, and we further need to provide axioms, for example, representing how specific categories are related to each other within the ontology. Definitions and axioms can then be combined together for purposes of reasoning.

Many of our principles of ontology good practice-for example, the principle of single inheritance and of Aristotelian definitions-draw on the central architectural role of the is_a relation in ontology construction. Some relations, such as identity and parthood, are primitive; they are so basic to our understanding of reality that it is impossible to conceive of there being anything more basic in terms of which to define them. Here axioms are indispensable if the terms in question are to play more than a trivial role in reasoning about entities in the domain. BFO also includes other relations, such as instantiation, identity, parthood (including both part-of and has-part), dependence (including both generic and specific dependence), located-in, and a series of further relations pertaining to space and time.'

As we discussed in chapter 1, there are three basic kinds of relations that need to be taken into account when designing an ontology and defining the relations that it will represent. These are

- relations holding between one universal and another (the relations represented in the ontology itself);

- relations holding between a particular and a universal-for example, the relationship of instantiation, which comes into play where the ontology is applied to some specific portion of reality, for instance in annotating clinical data pertaining to a specific group of patients;

- relations holding between one particular and another-for example, when asserting that Mary's leg is a continuant part of Mary.

Having these three kinds of relations at our disposal allows us to use an ontology in conjunction with information about particulars in the world to reason about those particulars. A paradigm case of this in biomedicine would be a software tool that could allow domain-specific ontologies of biology and medicine to help in guiding decisions as to diagnosis and treatment of specific patients.

It is also important when defining relations to specify what categories of objects form the domain and range of the relation (or in other words what are valid expressions to figure as its left - and right-hand terms, respectively). For example, the relation instantiates always holds between a particular and a universal, as in Fido instantiates Labrador Retriever. The parthood relation, on the other hand, comes in two forms, the first of which holds between two particulars, the second between two universals. Because these relations behave differently according to whether they obtain between continuants or occurrents, BFO distinguishes further between continuant parthood and occurrent parthood, as we shall explain in more detail.

Relations: Formal Properties and Conventions

First we need to introduce some conventions that will enable us to define the relations between and among universals and particulars:

- the upper-case variables C, D.... will be used to represent continuant universals • the lower-case variables c, d.... will be used to represent continuant particulars • the upper-case variables P, Q,... will be used to represent occurrent universals • the lower-case variables p, q.... will be used to represent occurrent particulars • a relation that holds between two universals will be represented in italics, as in: C is_a D; P is_a Q

- a relation holding between a particular and a universal will be represented in boldface, as in: c instanceof C; p instanceof P

#### Box 7.1

### Three Major Families of Relations

1. universal-universal

continuant examples

cancer is-a disease

disease is_a disposition

nosocomial infection is_a infection

object is_a independent continuant

occurrent examples

meiosis is-a cell division

active transport is_a membrane transport

breathing air is_a respiration

process is_a occurrent

1. particular-universal

continuant examples

this cell of cell

this red (here, of this ball) instanceof red

this myelomeningocele (here, in this girl) instanceof myelomeningocele occurrent examples

this waltz (being danced here, in Palermo) instanceof waltz

this process of tanning instanceof slowing the putrefaction of skin 3. particularparticular

continuant examples

this atom of hydrogen continuant-part-of this water molecule

this portion of helium gas continuant-part-of the sun

this ion channel continuant-part-of this cell membrane

occurrent examples

this rupturing of ovarian follicle occurrentpart-of this process of ovulation here in this fawn

this process of gamma-glutamylcysteine synthesis occurrentpart-of this process of glutathione synthesis

- a relation obtaining between two particulars will also be written in bold type, as in: c continuant-part-of c at t; or: p occurrentpart-of q

The three families of relations and the conventions for representing them are summarized in box 7.1.

Consider the case of Fido and the parthood relation obtaining between Fido (c) and his tail (d). The information communicated by "Fido's tail is a part of the dog Fido" could be represented formally using the conventions just described as follows:

- d continuant-part-of c

- d instance of tail

- c instanceof dog

Note that Fido might at some point in time lose his tail, and we will need to address this temporal feature of parthood for continuants. Note, too, that our discussion of Fido here is an example provided only for purposes of illustration. BFO does not assume that dog is a universal-since BFO is a domain-neutral ontology that leaves it to biologists to construct domain-specific ontologies in its terms. As already mentioned, an influential school of thought in biology holds that species such as dog are more properly to be conceived as evolving dynamic populations of organisms,' and a view along these lines could be formulated using the BFO category object aggregate. Even then, however, the formulation of such a view would still need to utilize terms designating universals (such as organism, sexual reproduction, population, and so forth) to capture what is involved in being a member of a species population, and for these terms the more traditional relation of instantiation between particulars and universals would still be required.

### Primitive Instance-Level Relations

We have noted that the categories of any ontology should represent universals in reality. Yet, we will not be able to define what it means for one universal to stand in some relation to another universal-for example, in some parthood relation-without consideration of the underlying relations among instantiations of those universals on the side of particulars. We will show in what follows how universal-universal relations are to be defined in terms of previously accepted primitive relations of the particularparticular and particular-universal sort. A key part of the strategy for understanding universal-universal relations will be to interpret them as being true only if certain other things are true of their instances. Thus we will understand

- phototransduction part_of visual perception,

- portion of carbon continuant portion of glutathione, and

- phospholipid bilayer continuant-part-of mitochondrion

to be true only if each particular instance of the universals phototransduction, portion of carbon, and phospholipid bilayer stands in an instance-level part relation to a corresponding instance of the universals visual perception, portion of glutathione, and mitochondrion, respectively.

Some of our definitions of relations will involve reference to spatial or temporal regions. Above all, assertions of relations involving continuant particulars will need to include a reference to time. This is so because continuants may change their relations to other entities from one time to the next. We will use the following:

- variables r, r',... to represent three-dimensional spatial regions

- variables t, t',... to represent instants of time

We can now identify the following primitive instance-level relations and their definitions:

- c instanceof C at t. This is a primitive relation obtaining at a specific time between a continuant instance c and a continuant universal C when the former instantiates the latter at that time. For example: Fido instanceof Labrador Retriever at the present.

- p instanceof P.This is a primitive relation obtaining between a process instance and a process universal that it instantiates. (This relation holds independently of time.) For example: John's life instanceof human life.

- c continuant-part-of d at t. This is a primitive relation obtaining between two continuant instances and a time at which the one is part of the other. For example: this cell nucleus continuant_part_of this cell at the present.

- p occurrentPart-of q. This is a primitive relation of parthood, holding independently of time, between process instances when one is a subprocess of the other). For example: this tumor's growth occurrentpart-of Mary's life.

- r continuant-part-of r'. This is a primitive relation of parthood, holding independently of time, between spatial regions (one a subregion of the other). For example: the spatial region occupied by the surface of the Northern hemisphere continuant-parof the spatial region occupied by the whole surface of the earth.

- c inheres-in d at t. This is a primitive relation obtaining between a specifically dependent continuant and an independent continuant at a particular time. For example: the shape of John's body inheres-in John at July 26, 2006.

- c located-in r at t. This is a primitive relation between a continuant instance, a spatial region that it occupies, and a time. For example: John located-in the region occupied by the dining room at dinnertime.

- r adjacent-to r'. This is a primitive relation of proximity between two spatial regions. For example: Northern hemisphere adjacent-to Southern hemisphere.

- c derives-from d. This is a primitive relation between two distinct material continuants when one succeeds the other across a temporal divide. For example: this blastocyst from this ovum.

- p has-participant c. This is a primitive relation between a process and a continuant. For example: John's life has-participant John.

While these instance-level relations cannot be defined, their meanings can be elucidated informally through the provision of examples, and formally by adding axioms. For example, having accepted the instance-level relation of continuant parthood (c continuant-part-of d at t), it is possible to specify its logical properties by explicitly adopting axioms such as

if c continuant-part-of d at t, then c and d exist at t, and

if c instanceof continuant then there is no d such that c occurrentpart-of d at t, and so on.

### Universal-Universal Relations in BFO

In the previous section, we considered some of the primitive instance-level relations that scientists-with or without realizing it-draw on in their work. In order now to define what it means for one universal to stand in relation to another we need to consider the particular instantiations of those universals. This should not be seen as standing in conflict with our view that ontologies are representational artifacts whose representations are intended to designate some combination of universals and the relations between them. For in defining the relations between universals, the reference to particulars is entirely general-we will be referring in effect to all particulars instantiating given universals. This corresponds to the way in which science as a whole concerns itself with generalities when formulating its types, laws, and relations. It tests its hypotheses concerning such generalities by examining particulars in experiments; but references to specific particulars do not play a role when representing scientific laws.

In 2005 Smith, together with a group of influential researchers in the biomedical ontology field,' compiled a list of ten basic universal-universal relations under the categories of • foundational relations

- spatial relations

- temporal relations

- participation relations

proposing them as a common basis for the further development of biomedical ontologies in separate disciplinary communities. These relations have to a large degree been reused in the OBO Foundry and in a number of related ontologies (see box 7.2), while at the same time the list has been expanded with further relations also recommended for common use.' Work is also ongoing in the context of the formulation of the OWL version of BFO 2.0 to create a complete system of formal definitions of all the relations between BFO categories.

#### Box 7.2

### Core Relations in BFO

### Foundational Relations

1. is_a (is a subtype of)

- portion of deoxyribonucleic acid (DNA) is_a portion of nucleic acid • photosynthesis is_a physiological process

1. continuant-part-of

- cell nucleus continuant-part-of cell

- heart continuant-part-of cardiovascular system

1. occurrentpart-of

- neurotransmitter release part-Of synaptic transmission

- gastrulation part-Of animal development

### Spatial Relations

1. located in

- intron located-in gene

- chlorophyll located-in thylakoid

1. adjacent to

- Golgi apparatus adjacent-to endoplasmic reticulum

- periplasin adjacent-to plasma membrane

### Temporal Relations

1. derives_from

- mammal derives_from gamete

- triple oxygen molecule derives_from oxygen molecule

1. preceded-by

- translation preceded-by transcription

- digestion preceded_by ingestion

### Participation Relations

1. has-participant

- death has-participant organism

- breathing has-participant thorax

In the rest of this chapter, we will examine these relations as well as provide definitions (where possible) and examples of each. We shall conclude by providing some examples of axioms illustrating how these relations are treated formally within the larger BFO framework.

### Foundational Relation: is-a

The foundational relation is_a has been discussed at length already. Examples include • myelin is_a lipoprotein

- beer is_a alcoholic beverage

- eukaryotic cell is_a cell

- site is_a independent continuant

for continuant entities, and

- gonad development is_a organogenesis

- binge drinking is_a drinking

- intracellular signaling cascade is_a signal transduction

for occurrent entities.

We define the is_a relations in terms of the primitive relation instanceof introduced previously. For occurrents this reads as follows: A is_a B = def. A and B are universals and for all x (if x instanceof A then x instanceof B) The corresponding definition for continuants is created by using the temporally qualified relation instanceof at t, as in the definition of continuant-part-of on p. 139.

Thus diploid cell is_a cell means: for any particular continuant c, c instanceof diploid cell at t implies c instance_of cell at t. Lung cancer development is_a cancer development means: for any particular occurrent p, p instanceof lung cancer development implies p instanceof cancer development.

Foundational Relations: continuant-Part-of and occurrentPart-of

BFO distinguishes two foundational parthood relations namely continuant-part-of and occurrent Examples include

- axon of neuron

- cell nucleus continuant-part-of cell

- neuronal death occurrent dementia

- bird song occurrentof avian mating behavior

These relations can be defined in terms of the instance-level parthood relations as follows:

C continuant-part-of D = def. for every particular continuant c and every time t, if c instanceof C at t, then there is some d such that d instanceof D at t and c is a continuant-Part-of d at t So, for example, to say that cell nucleus continuant-part-of cell is to say that for every particular cell nucleus and every time in which that cell nucleus exists, there is some instance of cell which this cell nucleus is an instance-level continuant-Part-of at that time. Notice that this does not require that every instance of cell have some instance of nucleus as part.

### For occurrent universals we have

P occurrentpart-of Q= def. for every particular occurrent p, if p instanceof P, then there is some particular occurrent q such that q instanceof Q and p occurrentpart-of q

Thus, for example, human neurulation occurrentpart-of human fetal development just in case every particular process of human neurulation is an instance-level occurrentpart-of some particular process of human fetal development.

### Spatial and Temporal Relations

One important influence on the development of BFO was the Region Connection Calculus (RCC), a simple framework to support qualitative reasoning about spatial relations( and currently integrated into the GeoSPARQL standard for representation and querying of geospatial linked data for the Semantic Web.' The Allen Interval Algebra is an analogous and similarly influential framework for reasoning about temporal relations.'

In what follows we provide sample definitions of spatial and temporal relations in BFO, which are designed to serve as a basis for defining all the relations defined in RCC and in the Allen calculus-and further analogous spatiotemporal relations according to need. A particularly ambitious set of such relations for spatial adjacency and connectedness is defined in the BFO-conformant Foundational Model of Anatomy (FMA) Ontology.' We provide here a description of the treatment of location and adjacency in conformance with BFO, which is formulated in terms of the relations between the spatial regions that independent continuants occupy. The strategy employed here can then be generalized to spatial relations of other sorts.

Both located-in and adjacent-to connect one spatially extended entity to another in terms of the relations between the spatial regions (r, r',...) that they occupy. Examples of in include

- ribosome located-in cytoplasm

- Golgi body located-in cell

Defining the universals-level relation located-in comes in two steps. First, we introduce the instance-level primitive relation c located-in r at t (obtaining between a continuant instance, a spatial region, and a time). Second, we define an instance-level relation (obtaining between two continuant particulars and a time) c located-in d at t, and then use this relation to define the in relation at the level of universals.

c located-in d at t = def. there are two spatial regions r and r' such that the particular continuant c is located-in r at t and the particular continuant d is located-in r' at t, and the region r is a continuant-part-of the region r'

For example, John's kidney is located-in John's torso at present because the region in which John's kidney is located is a continuant-Part-of the region in which his torso is located.

### Given this definition, we can now define

C located-in D = def. for every particular continuant c and every time t, if c instanceof C at t, then there is some d such that d instanceof D at t and c located-in d at t Thus, kidney located-in torso means that, for every (instance of) kidney and for every time t at which that kidney exists, there is some instance of torso at that time such that the kidney is located-in the torso at that time.

As we have already seen in our discussion, for example, of bacteria, while all continuant parts of spatially extended entities are located in those entities not all continuant entities located in the interiors of spatially extended entities are parts thereof. Note that (for example, because of kidney transplants) great care must be taken when incorporating assertions such as kidney located-in torso into an ontology. In the FMA, the problem is solved by treating assertions of this sort as holding, not of the actual human anatomy instantiated by you or me, but rather of what is called canonical human anatomy, defined as the arrangement and structure of body parts that is generated by the coordinated expression of the structural genes of the human organism.'

### Spatial Relation: to

The relation adjacent-to is a relation of proximity between disjoint continuants. Examples include the following: • nuclear membrane adjacent-to cytoplasm

- seminal vesicle adjacent-to urinary bladder

- ovary to parietal pelvic peritoneum

This relation can now be defined in similar pattern:

C adjacent-to D = def. for every particular continuant c and for every time t, if c instanceof C at t, then there is some d such that d instanceof D at t and c adjacent-to d at t

Thus, liver adjacent_to falciform ligament means that, for every instance of liver and every time t, if the liver exists at t, then there exists an instance of falciform ligament at t, and the liver is adjacent_to the falciform ligament at t. adjacent_to for material entities can itself be defined in terms of the relation of adjacency between the regions they occupy as defined in RCC.

### Temporal Relation: derives-from

The temporal relation derives-from is used to assert that each instance of one continuant universal is derived from some instance of a second universal. Different derives-from relations have been proposed by biologists working in different disciplines. The relation we consider here interprets the relation to hold in those cases where a biologically significant portion of the matter contained in the earlier instance is inherited by the later instance. Examples include the following:

- plasma cell derives-from B lymphocyte

- portion of tyrosine derives_from portion of henylalanine

The underlying instance-level derives-from relation in cases of this sort can be understood as meaning that c is such that in the first moment of its existence it occupies a spatial region that substantially overlaps the spatial region occupied by d in the last moment of its existence. We can then define:

C derives-from D = def. for every particular continuant c and every time t, if c instanceof C at t, then there is some d and some earlier time t' such that d instanceof D at t', and c from d

We can think of the relation so defined as immediate derivation, and define from there different sorts of mediated derivation (so that we could infer, for example, from C derives-from D and D derives-from E that C mediately_derives_from E).

### Temporal Relation: preceded-by

The temporal relation preceded-by is used in assertions such as

- translation preceded-by transcription

- aging preceded-by development

- neurulation preceded-by gastrulation

The underlying instance-level preceded-by relation is to be understood in the obvious way (and in conformity with the Allen calculus) as meaning that the temporal region occupied by the process p is later than the temporal region occupied by the process q.

Preceded-by as a relation between occurrent universals can then be defined as follows:

P preceded-by Q = def. for every particular occurrent p, if p instanceof P, then there is some q, such that q instanceof Q and p preceded-by q

### Participation Relation: has-participant

The relation has-participant holds between a process and a continuant entity when the latter participates in or is involved in the former. Examples include the following:

- cell transport has-participant cell

- translation has-participant portion of amino acid

- cell division participant chromosome

Thus, every instance of cell transport (occurrent) has some instance of cell (continuant) as participant, every instance of translation (occurrent) has some instance of portion of amino acid (continuant) as participant, and so on. We can accordingly define the following:

P has-participant C = def. for every particular occurrent p, if p instanceof P, then there is some c and some time t such that c instanceof C at t and p has-participant c at t

### Some Further Top-Level Relations

We have now described the primitive-level instance relations and universal-universal relations that are recognized by BFO, providing both definitions (where possible) and examples. We now consider some additional relations designed for use in specific domains and proposed for inclusion in the Relation Ontology (RO).10

proper-continuant-part-of and occurrentpart-of

To speak of a "proper part of" something at the instance level is to speak of something that is a part of but not identical with something else. With respect to continuant universals, an example is this: human uterus proper-continuant-part-of human. We define as follows:

C proper-Continuant part-of D = def. for every particular continuant c and every time t, if c instanceof C at t, then there is some d such that d instanceof D at t, and c proper-continuant-part-of d at t

### With respect to occurrents

P proper_occurrentpart_of Q = def. for every particular occurrent p, if p instanceof P, then there is some particular q such that q instanceof Q, p proper-occurrent-part-of q

### Examples are

- swallowing of eating

- anaphase proper-occurrent-part-of mitosis

Has-continuant-Part and continuant_part, and integral-occurrent-part

To assert of two universals that the first has the second as part is to assert that the former has instances that are wholes, and that each such whole has an instance of the latter as part. Thus

C has-continuant-part D = def. for all particular continuants c, and all times t, if c instanceof C at t then there is some D, such that d instanceof D at t, and d continuant-part-of c at t

P has-occurrent-part Q = def. for all particular occurrents p, if p instanceof P then there is some q, such that q instanceof Q, and q occurent_part_of p

As we shall see, the relation between has part and part-Of is logically not quite trivial. One can speak of the relation of "integral parthood" holding between two universals A and B when A part-Of B and B has-part A.Thus for the continuant case:

C of D = def. C of D and D has-continuanpart C

and similarly for occurrents

### Examples are

- brain f mammal

- systole of cardiac cycle

### Relations and Definitions of Categories

It is important to note that well-defined formal relations can be used to help more precisely define the nature of the universals that they relate. For example, a universal can be asserted to be an entity that is not an instanceof anything, while a particular can be asserted to be an entity that is an instanceof other entities, but does not itself have any entities standing in the instance_of relation to it. Axioms of these sorts are provided in a section to follow. Similarly, an independent continuant can be asserted to be an entity to which other entities stand in the inheres-in relation, but which does not itself inhere-in any other entity. Such relational assertions can be used in definitions and thereby help the ontology to support formal reasoning.

### The All-Some Rule

Apart from is_a all the relations defined as obtaining between universals adhere to what we call the all-some rule. If a universal A bears such a relation to a universal B, then all relevant instances of A must bear the relevant instance-level relation to some instance of B.This point can be captured simply by saying that relations obtaining among universals should not admit exceptions.

### Consider the definition of of

C continuant-part-Of D = def. for every particular continuant c and every time t, if c instanceof C at t, then there is some d such that d instanceof C at t and c is a continuant-Part-of d at t What this says is that for one universal to be continuantof another, all instances of the one must at the pertinent times be continuant-Part-of some instance of the other. Thus to say that human heart continuant-part-of human circulatory system is to say that for every particular human heart, at every time at which the heart exists there is some instance of human circulatory system which that human heart is part of at that time. Note that it is not implied that it is the same instance of human circulatory system that is involved from one time to the next.

An analogous feature holds of the is_a relation in that here, too, we are interested in what holds universally. Prokaryotic cell is_a cell is from this point of view in perfect order as it stands. However, cancer is_a terminal disease fails to respect the test of universality, since not all instances of cancer are instances of terminal disease.

### Inversion and Reciprocity

As will be clear from our discussion of "has part," it is possible to ask in regard to any relation defined in an ontology whether there is another relation that goes, as it were, in the other direction-generally referred to as the inverse relation. The inverse of a relation R is defined as the relation that obtains between each pair of relata of R when taken in reverse order.

So, if C is_a D, the relation between D and C that goes in the opposite direction is the relation has_subuniversal, defined by

### C has_subuniversal D = def. D is_a C

as in

cell has_subuniversal prokaryotic cell

(again with suitable modifications when account is taken of defined classes as relata of the is_a relation).

However, for most of the relations that we have defined, it is not possible to define an inverse relation in this direct fashion. This makes it necessary to define what have been called reciprocal relations.

To see the problem consider the assertion

human testis continuant-part-of human,

which passes the all-some test. When we attempt to formulate the assertion in the opposite direction, however, the result

human has-continuant-part human testis

fails by the all-some test, because not all humans have testes. Has-continuant-part is not the inverse but rather what we call the reciprocal of part_of. Something similar holds for the adjacent-to relation, for while we have for adult humans uterine artery adjacent-to urinary bladder

we do not have

urinary bladder to uterine artery

since male humans do not have a uterine artery.

The relations is_a and has_subuniversal allow us to reason both upward and downward through the taxonomical backbone of an ontology, following the principle of inheritance. If A has_subuniversal B then everything that holds of every instance of A will hold also of every instance of B.Inferences of this sort are possible also by using other relations in an ontology, but as can be seen from the examples of parthood and adjacency, they must be used with care.

### Some Examples of Axioms

Our purpose in this chapter has been to give only an outline of what a theory of relations for purposes of ontology construction within the BFO framework looks like. It is not to develop a full axiomatic theory. However, we here provide for purposes of illustration some examples of axioms for BFO, formulated in English and in first-order logic."

### Entity

All entities exist at some temporal region.

Vx (Entity(x) -4 3t (TemporalRegion(t) A exists_at(x, t)))

### Material Entity

### Every material entity has a history

Vx (MaterialEntity(x) -4 3y has_history(x, y))

Every entity that has a material entity as continuant part is a material entity.

VyVxVt ((continuant_part_of(x, y, t) A MaterialEntity(x)) -4 MaterialEntity(y)) Every material entity exists at some temporal interval.

Vx (MaterialEntity(x) -4 3t (1DTemporalRegionO A exists-at (x, t)))

### Occurrent

Every occurrent occupies some spatiotemporal region.

Vx (Occurrent(x) -4 3y (SpatioTemporalRegion(y) A occupies_spatiotemporalregion(x, y))) SpatioTemporalRegion

Every spatiotemporal region occupies some temporal region.

Vx (SpatioTemporalRegion(x) -4 Elt (TemporalRegion(t) A occupies_temporalregion(x, t))) Every spatiotemporal region occupies itself.

Vx (SpatioTemporalRegion(x) -4 occupies_spatiotemporal_region( (x, X) TemporalRegion

All temporal regions are either zero-or one-dimensional (i.e., either instants or intervals).

Vx (TemporalRegion(x) H (1DTemporaRegion(x) A ODTemporalRegion(x)))

### Every temporal region occupies itself

Vx (TemporalRegion(x) -4 occupies_temporal_region(x, x))

### Universal

Something is a universal if and only if it is instantiated by something.

### VX (Universal(X) H Ely inst(X, y))

### Continuant-Part-of

The part of relation for continuants is antisymmetric.

VxVyVt ((continuant_part_of(x, y, t) A continuant-part-of (y, x, t)) -4 x = y) The part of relation for continuants is transitive.

VxVyVzVt ((continuant_part_of(x, y, t) A continuant-part-of (y, z, t)) -4 continuant_ part-of (x, z, t))

The part of relation for continuants is reflexive.

VxVt ((Continuant(x) A exists_at(x, t)) -4 continuant-part-of (x, x, t)) Weak supplementation: If x is a proper (continuant) part of y, then there is some (continuant) part of y that does not overlap x.

VxVyVt (proper_continuant_part_of(x, y, t) -4 Elz (continuant_part_of(z, y, t) A continuant_overlap(z, x, t)))

Unique product: If one continuant overlaps another continuant at some time, then there is a unique mereological product (intersection) of those continuants at that time.

VxVyVt (continuant_overlap(x, y, t) -4 Elz (continuant_mereological_product(z, x, y, t) A Vw (continuant_mereological_product(w, x, y, t) -4 w=z)))

If some continuant is part of a continuant at some time, then both continuants exist at that time.

VxVyVt (continuant_part_of(x, y, t) -4 (exists_at(x, t) A exists_at(y, t))) Occupies-spatial-region

Something can only occupy one spatial region at a time.

VxVr,Vr2Vt ((occupies_spatial_region(x, r,, t) A occupies_spatial_region(x, r2, t) -4 r,=r2) All entities that occupy a spatial region at a time exist at that time.

VxVrVt (occupies_spatial_region(x, r, t) -4 exists_at(x, t))

#### Box 7.3

Properties of Instance-Level Relations in BFO

### Occupies_spatiotemporal_region

Something can occupy only one spatiotemporal region.

VxVr,Vr2 ((occupies_spatiotemporal_region(x, r,) A occupies_spatiotemporal_region(x, r2)) -4 r1=r2)

### Reflexivity, Symmetry, and Transitivity

We conclude by summarizing a number of well-understood properties of relations that should be taken into account when defining further relations within the BFO framework. (See Box 7.3.) Here A, B.... range over all entities, whether universals, defined classes or particulars.

- To say that a relation R is reflexive is to say that anything A that bears the relation R to something else, B, also bears that relation to itself. The relation "is as tall as" is reflexive, because when John is as tall as Jill, he also stands in this same relation to himself: John is as tall as John.

- To say that a relation R is symmetric is to say that if A stands in R to B then B also stands in R to A.The instance-level relation adjacent-to is symmetric, because if John is next to Mary, then Mary is also next to John. On the level of universals, however, adjacent-to is not symmetric.

- To say that a relation R is transitive is to say that if a thing A bears R to B, and if B bears R to C, then A also bears R to C. A simple example of a transitive relation is "is taller than." If John is taller than Mary, and Mary is taller than Steve, then John is taller than Steve.

- To say that a relation R is antisymmetric is to say that if A bears R to B and B bears R to A, then A and B are identical.

## Glossary

### Adequatism

The view that the entities in any given domain should be taken seriously on their own terms (as contrasted with reductionism). The goal of adequatism is to do justice to all the different kinds of entities that exist in reality; see also General principles of ontology design.

### All-some structure

The structure that applies to the relations obtaining between universals whereby if a universal C bears some relation R to a universal D, then all relevant instances of C must bear the relevant instance-level relation to some instance of D at all relevant times.

### Aristotelian definitional structure

A definition that has the basic form "An A is a B that Cs" where "A" is the definiendum, the term that is being defined; "B that Cs" is the definiens, the expression that does the defining; and "C" is a statement of the differentia, that is to say, a statement of what it is that marks out those instances of B that are As (those features Bs must possess in order to be As).

### Basic Formal Ontology (BFO)

A top-level (or upper-level) ontology consisting of continuants and occurrents developed to support integration especially of data obtained through scientific research. BFO is deliberately designed to be very small, in order to represent in consistent fashion those top-level categories common to domain ontologies developed by scientists in different fields. BFO assists domain ontologists by providing a common top-level structure to support the interoperability of the multiple domain ontologies created in its terms.

### Category

A formal (which is to say, domain-neutral) universal, such as entity, continuant, occurrent.

### Class

A maximal collection of particulars falling under a given general term; also called the extension of the term (or of the universal that the term denotes).

### Continuant

An entity that continues or persists through time, including (1) independent objects, (2) qualities and dispositions, and (3) the spatial regions these entities occupy at any given time. Continuant and occurrent are the two highest categories (universals) in BFO.

### Continuant fiat boundary

An immaterial entity that is of zero, one, or two dimensions and does not include a spatial region as part. Intuitively, a continuant fiat boundary is a boundary of some material entity that exists exactly where that object meets its surroundings.

### Controlled vocabulary

A collection of preferred terms that are used to promote consistent description and retrieval of data.

### Defined class

A collection of individuals that are grouped together by virtue of their exhibiting some combination of characteristics that does not correspond to any universal.

### Description logic (DL)

A fragment of first-order logic (FOL) used for purposes of formal knowledge representation and having more efficient decision properties than FOL. See also Web Ontology Language (OWL).

### Disposition

A realizable entity (a power, potential, or tendency) that exists because of certain features of the physical makeup of the independent continuant that is its bearer.

### Domain

A delineated portion or sphere of reality corresponding to a scientific discipline (such as cell biology or electron microscopy), or to an area of knowledge or interest such as the Great War or stamp collecting.

### Domain ontology

See Ontology, domain

### Entity

### Anything that exists

### Epistemological idealism

See Idealism

### Fallibilism

The view that, although our current scientific theories are the best candidates we have for representing the truth about reality, it may nevertheless be the case at any given stage that elements of our best current knowledge are incorrect; see General principles of ontology design.

### Fiat object part

A material entity that is a proper part of some larger object, but is not demarcated from the remainder of this object by any physical discontinuities (thus, it is not itself an object). Examples include your upper torso, the Western hemisphere of the planet earth.

### First-order logic (FOL)

A formal language and system of reasoning utilizing predicates, constants and variables, quantifiers (all, some, none), and logical connectives (and, not, or, material implication); also known as first-order predicate logic; see also Description logic (DL).

### Foundational relations

The fundamental relations in BFO, especially is_a (meaning "is a subtype of") and relations of part to whole.

### Function

A realizable entity whose realization is an end - or goal-directed activity of its bearer that exists in the bearer in virtue of its having a certain physical makeup as a result of either natural selection (in the case of biological entities) or intentional design (in the case of artifacts).

### General principles of ontology design

The principles to be applied in every process of designing an ontology, including realism, perspectivalism, adequatism, fallibilism, the open-world assumption, and the low-hanging fruit principle.

### Generically dependent continuant

A continuant that is dependent on one or other independent continuants and can migrate from one bearer to another through a process of copying. We can think of generically dependent continuants as complex continuant patterns either of the sort created by authors or designers or (in the case of DNA sequences) brought into being through the processes of evolution.

### Granularity

The distinction between levels of reality exemplified for example in the biological domain in the levels of cells, organs, organisms and populations. See Perspectival ism.

### History

A BFO: process that is the sum of the totality of processes taking place in the spatiotemporal region occupied by a material entity or site.

### Idealism

The thesis that our perceptions, thoughts, and statements are not about reality, but are rather about certain mental or created objects (variously called appearances, concepts, ideas, or models). For the idealist, there is nothing that exists (or, for the defender of Epistemological idealism, nothing that can be known) outside of the realm of sensations or ideas or concepts; see also Realism.

### Immaterial entity

An independent continuant that contains no material entities as parts. Immaterial entities divide into two major subgroups: (1) boundaries and sites, which bound, or are demarcated in relation to, material entities, and which can thus change location, shape, and size as their material hosts move or change shape or size; (2) spatial regions, which exist independently of material entities, and which thus do not change.

### Independent continuant

A continuant entity that is the bearer of qualities and a participant in processes. Independent continuants are such that their identity can be maintained over time through gain and loss of parts, as well as through changes in qualities.

### Individual

See Particular

### Inherence

A one-sided dependence that obtains between specifically and generically dependent continuants on the one hand and independent continuants on the other. Qualities, dispositions, and roles inhere in independent continuants.

### Instance

See Particular

### Instantiation

A relation between a particular and a universal; the particular is one of an open-ended set of particulars that are similar in the relevant respect; the particular is such that if it ceases to be an instance of this universal then it ceases to exist.

### Inventory

A representational artifact consisting of entries designed to keep track of the particulars contained, for example, in a warehouse of products.

is

The subtype relation used to form the backbone taxonomic hierarchy of an ontology.

### Low-hanging fruit principle

The principle that states that the designer of a domain ontology should start with those (often trivial) features of the subject matter that are the easiest and clearest to understand; also see General principles of ontology design.

### Material entity

An independent continuant that has some portion of matter as part, is spatially extended in three dimensions, and that continues to exist through some interval of time, however short. Three principal subtypes of material entity are object, fiat object part, and object aggregate.

### Nominalism

The position that there are no universals, in contrast to ontological realism; also see Representationalism.

### Object

A material entity that is (1) spatially extended in three dimensions; (2) causally unified; and (3) maximally self-connected. Examples include a single cell, a laptop, an organism, a planet, a spaceship.

### Object aggregate

A material entity that has as parts (exactly) two or more objects that are separate from each other in the sense that they share no parts in common. Examples include a heap of stones, a population of bacteria, a flock of geese.

### Occurrent

An entity that unfolds itself in time; the BFO category of occurrents comprises not only (1) the processes that unfold themselves in their successive temporal phases, but also (2) the boundaries or thresholds at the beginnings or ends of such temporal phases, as well as (3) the temporal and spatiotemporal regions in which these processes occur. Occurrent and continuant are the two highest categories (universals) in BFO.

One-dimensional continuant fiat boundary.

A continuant fiat boundary that is a continuous fiat line whose location is defined in relation to some material entity. Examples include the boundary of a real estate parcel, your waistline.

### One-dimensional spatial region

A spatial region with one dimension, also called a spatial line, defined relative to some reference frame; for example, lines of latitude and longitude.

### One-dimensional temporal region

A temporal region that is extended in time. It has further temporal regions as parts. One-dimensional temporal regions are the temporal regions in which processes occur or unfold.

### Ontological realism

The view according to which the general truths about reality that science discovers are grounded in universals, which are common features and characteristics of the entities in reality in virtue of which they are grouped into circles of similars; compare Nominalism, Representationalism.

### Ontology

A representational artifact, comprising a taxonomy as proper part, whose representations are intended to designate some combination of universals, defined classes, and certain relations between them; see also Ontology, philosophical.

### Ontology, application

An application ontology is an ontology created to accomplish some task of local significance. See Ontology, reference.

### Ontology, domain

A domain ontology is an ontology that describes and categorizes some domain.

### Ontology, formal

The study of the universals, relations, and structures common to all domains of reality; also used to refer to an upper-level ontology such as BFO.

### Ontology, material

The study of the universals, relations, and structures common to some specific domain of reality; sometimes used as a synonym of "domain ontology."

### Ontology, philosophical

The theory of what exists-the study of the kinds of entities in reality and of the relationships that these entities bear to one another; also known as metaphysics. The goal of philosophical ontology is to provide a clear, coherent, and rigorously worked out account of the basic structures of reality.

### Ontology, reference

An ontology that is intended to provide a comprehensive representation of the entities in a given domain encapsulating the terminological content of established knowledge of the sort that is contained in a scientific textbook.

### Ontology, top - (or upper-) level

An ontology of highly general categories and relations that subsume the universals represented by specific domain ontologies.

### Open-world assumption

The assumption that we capture knowledge within an ontology or ontology-like resource in an ongoing process as we discover it, so that we can at no stage guarantee that we have discovered complete information-hence no conclusions should be drawn from the fact that a given assertion is not recorded in our system; see General principles of ontology design.

### Participation

The relation between a material entity and a process that obtains in virtue of the fact that the former participates in the latter.

### Particular

An individual (nonrepeatable) denizen of reality (an instance of a universal); all particulars stand in the relation of instantiates to some universal; each particular occupies a unique spatiotemporal location.

### Particular-particular relation

A relation between one particular and another; also called an instance-level relation; for example: Mary's leg part-of Mary; see Relation.

### Perspectival ism

The view according to which reality is too complex and variegated to be embraced within a single scientific theory, and that multiple distinct scientific theories may be equally accurate representations of one and the same reality, for instance because they partition this reality at different levels of granularity; see General principles of ontology design.

### Principle of reuse

A principle stating that ontologies should as far as possible reuse the ontological content that has already been created; see General principles of ontology design.

### Process

An occurrent entity that exists in time by occurring or happening, has temporal parts, and always depends on at least one independent continuant as participant.

### Process boundary

An occurrent entity that is the instantaneous temporal boundary of a process.

### Quality

A specifically dependent continuant that, if it inheres in an entity at all, is fully exhibited, manifested, or realized in that entity. In order for a quality to exist, one or more independent continuants must also exist. Examples include the mass of a kidney, the color of this portion of blood, and the shape of a hand.

### Realism

The view that thought, experience, and knowledge are (if partially and fallibly) about reality. A view of this sort should be the general attitude to be kept in mind throughout the process of designing an ontology; see General principles of ontology design.

### Realizable entity

A specifically dependent continuant entity that has at least one independent continuant as its bearer, and whose instances can be realized (manifested, actualized, executed) in associated processes of specific correlated types in which the bearer participates.

### Reflexivity

The property of a relation R whereby anything that bears R to something also bears that relation to itself. The relation "is as tall as" is reflexive, because when John is as tall as Jill, then he also stands in this same relation to himself.

### Relation

The manner in which two or more entities are associated or connected together. BFO recognizes three basic types of relation: connecting universal to universal, universal to particular, and particular to particular.

### Relational quality

A quality that inheres in two or more independent continuants. Examples include a marriage bond, a debt, an agreement. From the BFO perspective there is both the relational quality universal marriage bond as well as specific instantiations of this universal obtaining between (and specifically depending upon) John and Mary, Bill and Sally, and so forth.

### Representation

An entity that makes reference to or is about another entity or entities.

### Representational artifacts

A representation that has been produced by someone and made available in a form that allows it to be accessed by others (such as a drawing, map, book, or computer database).

### Representationalism

The view that our perceptions, thoughts, beliefs, or models are directly about concepts (or ideas or images) in our minds and only indirectly about nonmental entities of various sorts in reality. On this view, what we actually know are not things in reality, but the ways in which we experience and conceptualize these things; see Idealism, Realism.

Representationalist interpretation of knowledge.

The view that the goal of knowledge representation is to represent concepts or ideas; see Representationalism, Idealism, Realism.

### Role

A realizable entity that (1) exists because the bearer is in some special physical, social, or institutional set of circumstances in which the bearer does not have to be, and (2) is not such that, if this realizable entity ceases to exist, then the physical make-up of the bearer is thereby changed. A role is thus always optional.

### Semantic interoperability

A property that obtains between two (or more) data or information systems when they are such that, because their terms are defined according to a common, logically well-defined ontology, each can carry out the tasks for which it was designed using data and information taken from the other as seamlessly as it can when using its own data and information.

### Semantic Web

Whereas the World Wide Web (WWW) is an interconnected system of web pages, the Semantic Web (SW) is an interconnected system made up of the content (data and information) from those pages. The SW emerged out of thinking in the field of artificial intelligence and was conceived as a system that enables machines to "understand" and respond to complex human queries based on their meaninghence the use of the term "semantic."

### Site

An immaterial entity in which objects such as molecules of air or organisms can be contained.

### Spatial region

A continuant entity that is a part of space. When an object moves from one place to another, it occupies a continuous series of different three-dimensional spatial regions at different times.

### Spatiotemporal region

An occurrent entity at or in which occurrent entities can be located. Just as the continuant representation of entities views space as a container within which objects and their qualities exist, so too the occurrent representation of processes views the combination of space and time together as such a container, within which processes unfold.

### Specifically dependent continuant

A continuant entity that depends on precisely one independent continuant for its existence. The former is dependent on the latter in the sense that, if the latter ceases to exist, then the former will as a matter of necessity cease to exist also. See Independent continuant, Generically dependent continuant.

### Symmetry

The property of a relation R whereby if a thing A bears R to something else B, then B also bears R to A. Example: if A is adjacent to B, then B is also adjacent to A.

### Taxonomy

A representational artifact taking the form of a graph with nodes representing kinds of things (universals) and edges representing subtype or subclass (is_a) relations among these types of things. The most familiar kind of taxonomy is the classification of living things: domain, kingdom, phylum, class, order, family, genus, and species.

### Temporal region

An occurrent entity that is a part of time.

### Term

A noun or noun phrase, understood as a linguistic sign, that is utilized to represent some entity in the world.

### Terminology

A representational artifact containing a list of terms, complete with definitions, used in some domain and formulated in a natural language.

### Three-dimensional spatial region

A spatial region with three dimensions, also called a spatial volume; for example, the region occupied at any given time by the planet earth.

### Top-level ontology

See Ontology, top-level

### Transitivity

The property of a relation R whereby if a thing A bears R to another thing B, and B bears R to some third thing C, then A also bears R to C. A simple example is being taller than.

Two-dimensional continuant fiat boundary.

A continuant fiat boundary that is a self-connected fiat surface whose location is defined in relation to some material entity; for example, any surface of a continuant material object separating that object from the rest of its environment.

### Two-dimensional spatial region

A spatial region with two dimensions, also called a spatial surface; for example, the region occupied by the surface of the earth.

### Universal

A mind-independent, repeatable feature of reality that exists only as instantiated in a respective particular (individual thing, instance) and is also dependent upon a particular for its existence. For example, the two universals red and ball are instantiated in a red ball lying on the floor. All particulars stand in the instantiation relation to some universal. Universals are the sorts of entities that are represented by general terms used in the formulation of scientific laws.

### Use-mention distinction

The distinction between using a noun phrase to make reference to something in reality, and mentioning the same noun phrase in order to engage in discourse about this noun phrase itself.

### Web Ontology Language (OWL)

A family of languages used by the Semantic Web.

Zero-dimensional continuant fiat boundary.

A continuant fiat boundary that is a fiat point whose location is defined in relation to some material entity. Examples include the North Pole and the earth's center of gravity.

### Zero-dimensional spatial region

A spatial region with no dimensions, also called a spatial point; for example, the point of origin of a spatial coordinate system.

### Zero-dimensional temporal region

A temporal region that is without extent. Zero-dimensional temporal regions, also called temporal instants, are the temporal regions in which process boundaries are located.
