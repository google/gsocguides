---
title: Proposal Example 1
section: Appendices
order: 21
permalink: student/proposal-example-1.html
sidebar: student_sidebar
---

"Database Abstractions" By Kanika Vats, Systers, 2009


## Abstract

Systers use GNU mailing list manager Mailman2 which currently uses Python pickle files to store its data. Systers moderators have customized it to make use of PostgreSQL database. They make use of raw SQL statements and python db-api which makes the code :

*   Dependent on the existing database
*   Reduces the efficiency and maintainability

The project idea aims at making the code :

Independent of the database by making the use of python classes and objects to interact with the database rather than direct SQL statements.

*   This will be achieved with the help of an ORM (Object Relational Mapper). Storm will be our choice of ORM.
*   Also, Systers aim at bringing this feature upstream and incorporating this feature in the yet to be released version - Mailman3 (which will switch to use a database) - so that the open source world can benefit themselves with the addition of this feature.

Thus, mapping existing schemas of the Systers database to an object oriented paradigm and determination and incorporation of necessary modifications in the database needs to be done so that it fits cleanly and nicely into Mailman3's Architecture.


## Proposal Timeline

**Before April 20:**

*   To familiarize myself completely with Mailman2's functionality and architecture.
*   Study of the customized files of Systers Mailman available in the Launchpad Baazar version control.
*   To familiarize myself with Storm(ORM that we will be using)

**April 20 – May 23 (Before the official coding time):**

*   To do self coding with Storm to improve my further understanding and ease of use with this ORM and database(PostgreSQL)
*   During this period I will remain in constant touch with my mentor and the Mailman community. I will remain active on IRC and Mailing lists to discuss and finalize on the modifications (if any) that needs to be on existing schemas and design of new schemas (if needed to fit cleanly with Mailman3's Architecture)
*   Thus with the help of my mentor I will become absolutely clear about my future goals,the final database implementations that need to be done as well as the approach that I will follow to map the schemas to the Object Oriented Paradigm.

**May 23 – June 18 (Official coding period starts):**

*   Define all the required Relations(Tables) in my local database using STORM.
*   Define all the corresponding Python Classes and Objects that will store,modify and retrieve data in database.
*   Define all the interactions that Systers perform with their database (virtualize or stimulate all interactions) in STORM that will deal with my local database.

This will help in testing of the proper working of the entire basic code changes that we will later on incorporate in Systers Source code.

**June 18 – July 5:**

*   Bringing about the decided changes in the Relational Schemas of Systers database.
*   Replacing parts of the above code in their respective places in the Systers source code. (This should not take much time as most of the functionality has been implemented in the previous step).
*   Testing the overall working of each and every module of the modified source code with the help of Python Test Suites.

JULY 6th MID TERM EVALUATION

**July 6 – July 15:**

*   Making further changes in the code to improve the Functionality, Exception handling, Bug Removal.

**July 15 – July 25:**

*   To be in constant touch with the Mailman3's developers and to let them know about our progress.
*   Most of the time will be consumed for rigorous testing and bug fixes.

**July 25 – July 31:**

*   For Documentation

A buffer of two weeks has been kept for any unpredictable delay.


