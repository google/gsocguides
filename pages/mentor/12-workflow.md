---
title: Workflow
section: Mentoring
order: 12
permalink: mentor/workflow.html
sidebar: mentor_sidebar
---

Make sure that your student is familiar with the workflow of your community as early as possible. Learning the toolchain a project uses, such as libraries, version control systems and bugtrackers, is high priority. Workflow also encompasses code review, talking with other developers about which algorithm is best for the problem at hand and other meta-questions about how to best get from specification to implemented solution.

The best kind of workflows for the GSoC projects are iterative. That means that small, quantifiable goals are defined and then acted upon. For instance, an example of an iterative workflow is:

*   Write a test that demonstrates what feature will be added.
*   Run the test to verify that it fails in the way you think it should.
*   If it fails in an unexpected way, your test may be wrong. This is a great time to ask your mentor for guidance.
*   If it passes, you are done! You just added test coverage to an already existing feature, and that is great!
*   Add the feature (also known as "a simple matter of programming").
*   Run the test to verify that it passes.
*   Write documentation about your feature.
*   Rejoice appropriately.

This iterative workflow is known as Test Driven Development (TDD). This workflow gets applied to each feature that will be implemented, so a TDD workflow will consist of many cycles of the above steps, each for a different feature. The polar opposite of this workflow looks something like this:

*   Write code the first 1/3rd of the summer
*   Write tests the next 1/3rd of the summer
*   Write documentation for the last 1/3rd of the summer

This is almost always doomed to failure, since people are always optimistic about time estimates for completing something. Sometimes you must debug a weird issue. You can't predict how long it might take to resolve the issue. What usually happens in this workflow is that the code gets written, but takes longer, half the tests get written and no documentation is written because the students have run out of time.

Take an approach which produces usable code even if parts of your plan fail, or are never attempted. Be humble and flexible about your development model. The student may teach you something!

**Pro Tip**: Progressive milestones may allow code to be merged progressively.


