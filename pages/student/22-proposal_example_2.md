---
title: 'Proposal Example 2 '
section: Appendices
order: 22
permalink: student/proposal-example-2.html
sidebar: student_sidebar
---

"Reactome-Wikipathways Round-trip Format Converter" by Leontius Adhika Pradhana, GenMAPP, 2010


## Problem description

Reactome is a "free, online, open-source, curated pathway database encompassing many areas of human biology". Each pathway in Reactome is manually curated -- peer-reviewed and cross-referenced with other database -- and thus has great reliability. Another pathway database website WikiPathways, by contrast, lives on the "wiki spirit" allowing anyone to edit and annotate pathways in the website. This makes WikiPathways an ideal venue for staging new pathways to be included in the official Reactome database, as well as a place for the community to review and make changes to pathways which may end up as an official amendment in Reactome.

However, the two websites use markedly different data structure to store their pathways: WikiPathways uses GenMAPP Pathway Markup Language, a vector graphics format similar to SVG; Reactome internally stores the pathways in a proprietary semantic database schema. The formats differ not only in their presentation but also in their focus of data stored, making information exchange difficult.

Recent development of Reactome introduced a new proprietary graphical XML format akin to GPML. This XML format adheres to SBGN specification which semantically defines symbols representing biological systems. This project will provide the means to convert to and from GPML and the new Reactome XML format.


## Implementation plan

The project consists of three components:

**GPML to Reactome XML layout converter**

Unlike the Reactome XML format, GPML mainly describes the graphical representation of pathways and does not contain semantics of the reactions. To produce Reactome XML, therefore, the converter must employ certain heuristics to infer semantic relations from graphical representation and eliminate ambiguities. The heuristics will follow SBGN as close as possible while still retaining compatibility on other formatting conventions.

**Reactome XML layout to GPML converter**

The Reactome XML layout contains further pathways data that are not viewable in GPML. Therefore, the resulting GPML after conversion will contain additional comments containing the Reactome data or at least their identifiers, so that when a back-conversion (from the GPML to Reactome XML) occurs, data will be preserved.

During the conversion, SBGN semantics will be employed to provide unambiguous back-conversion to Reactome XML later when necessary. Some additional shapes might need to be implemented in GPML, or alternatively comments can be written to differentiate SBGN symbols that do not have corresponding graphical representation in GPML.

During the development of this converter a schema for Reactome XML will also be made so that converted test files can be easily validated.

**Automatic update mechanism between WikiPathways and Reactome**

A separate script will be made that periodically pulls updates from WikiPathways and convert it to Reactome XML layout. The script can be set to automatically update the pathways in Reactome if correct credentials are provided. This will mainly be done for pathways that are already tagged to be high quality.

The script will also pull updates from Reactome and push new pathways to WikiPathways. Only Reactome pathways that have XML layout will be pushed to WikiPathways.


## Deliverables

*   an XML schema to validate the new Reactome XML format;
*   a GPML to Reactome XML layout converter and Reactome XML layout to GPML converter, which will be available both as command line tool and a library that can be integrated with WikiPathways infrastructure;
*   a system using the above converter, integrated to WikiPathways, that will periodically check for updates on both WikiPathways and Reactome and update the websites accordingly;
*   proper documentation and tests for the above-mentioned components.


## Timeline

This week-by-week timeline provides a rough guideline of how the project will be done.

3 -- 16 May

Familiarize with the code and the community, the version control system, the documentation and test system used, and the new Reactome version.

17 -- 30 May

Write the Reactome XML layout schema and the command line Reactome XML to GPML converter, keeping in mind that the internals are to be used subsequently as a library.

31 May -- 6 June

Test and document existing code more thoroughly.

7 -- 20 June

Determine algorithms used to convert GPML graphical representations to Reactome XML. Then, write the command line GPML to Reactome converter, keeping in mind that the internals are to be used subsequently as a library.

21 -- 27 June

Test and document the GPML to Reactome XML converter and the heuristic algorithm more thoroughly.

28 June -- 11 July

Ensure that round-trip conversion works flawlessly (i.e. no data is lost when converting GPML to Reactome XML to GPML again, and vice versa). Also test and document round-trip conversions.

12 -- 25 July

Integrate the converters to WikiPathways. A system that periodically check for updates on both WikiPathways and Reactome and update the websites accordingly is written.

26 July -- 1 August

Test and document the periodic push/pull mechanism more thoroughly.

2 -- 16 August

Further refine tests and documentation for the whole project.


