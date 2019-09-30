---
title: Upstream Integration
section: Wrapping Up
order: 16
permalink: mentor/upstream-integration.html
sidebar: mentor_sidebar
---

Every project wants to get useful code. And once you get that code, you'd love to be able to commit it to your project and make use of it! The following are some helpful hints on making that process easier on both the students and the committers to your project.

**Note**: We use the term 'committer' throughout this section to mean the person or people responsible for adding or merging code to your organizations authoritative source code repository. Terminology and source control methods vary so widely, that it was difficult to choose a single term. Committer seemed to cover the widest variety of situations.


## Recruit Committers Early

Typically, one or more committers to your project will be involved in GSoC. For very large projects, it can be helpful to alert all committers to upcoming student submissions. You can ask for them to be a second reviewer on patches from students, or simply keep them informed of your student's work schedule. This helps them know approximately when to expect code submissions.


## Get The Code

It's best if you can get the code committed to your project's repository as early as possible. Whether you commit this to your project's equivalent of HEAD, to a development branch or a feature-specific branch, getting student's code into a publicly available and canonical location early is a good thing.

Even if your organization is unwilling to have student code drop directly into a released or releasable version of the org's project, it is a good idea to make sure that it is captured by the organization somehow. This ensures that you and your organization has a backup copy of the student's work. Getting the student's code into an unstable version or feature branch at the start of GSoC ensures that everything of value will be captured, decreases the eventual integration burden, and provides a better mechanism for community review of student code.


## Dividing Up Patches

Many organizations take student code submissions in the form of patches.  It is considered best practice to keep patches confined to a single feature at a time. Sometimes this is not possible, but encouraging students to submit their changes as they are working is always better than a massive "patch bomb" at the end of the program.

You can help your student by talking with them about how to divide their code into reasonable submissions to the project. This should include setting time-based milestones, grouping certain features and implementation details together and requiring that tests or specifications be written first. Using pseudocode, rapid prototyping and iterative design methodologies can be helpful in structuring your student's work and keeping you in the loop.

Be sure to set aside some time to teach your students how to use your revision control system, and especially its code merge tools, during the bonding period. This is both for their benefit and to save your time. If the student already knows how to test merging their changes before submitting them, it is far more likely that less time will be spent fixing patches which don't apply.


## Patch Review

Make review of submitted patches an explicit task. By doing so, you make it easier to hand some or all of the review off to another member of your community. This kind of delegation makes the student more a part of your development community, and reduces the overall work that is required from you.

Ultimately, you'll be responsible for understanding and performing a final review of the code for the student's GSoC evaluation. However, there's nothing wrong with bringing other people into the process.

Some projects have a documented review process. A good example is on the [PostgreSQL Developers Wiki](http://wiki.postgresql.org/wiki/Reviewing_a_Patch), some of which was used as a reference for this section.

Many people feel that they're not qualified to do a full review of a patch. But review includes many different tasks, and even if you can't do all of them, a reviewer can help your organization by taking on some or all of pre-commit tasks.

If you can apply a patch and you can use the new feature, you're already qualified to start reviewing it.

A reviewer does not need to guarantee some level of quality, but they do need to report any problems they find. The review is done if you think the patch is ready for in-depth review from a committer. See this patch review at <http://archives.postgresql.org/pgsql-hackers/2009-07/msg01103.php> as one example of the output a thorough review might produce. Reviews for other patches might, of course, contain different sections or for that matter, look completely different.

Questions a patch reviewer might ask include:

*   Does it include reasonable tests, necessary documentation, an overview of features, etc?
*   Does the patch actually implement what the author intends and work as advertised?
*   Does it follow a relevant specification, RFC or the community-agreed behavior?
*   Are there corner cases or failure situations the author has failed to consider?
*   Does the patch slow down simple tests or other features?
*   Does it follow the project coding guidelines? For an example, see <http://developer.postgresql.org/pgdocs/postgres/source.html>
*   Will it work on all supported operating system and hardware platforms?
*   Are the comments sufficient and accurate? Are there any comments at all?
*   Does it produce compiler warnings?
*   Can you make it crash?
*   Is everything done in a way that fits together coherently with other features/modules?


