---
title: Strategies for getting your code committed
section: Wrapping Up
order: 16
permalink: student/strategies-for-getting-your-code-committed.html
sidebar: student_sidebar
---

A key goal of GSoC is to produce useful code that is integrated into the code base of your community. Every organization has different standards for code submissions, but there are some general rules you can follow that will help make your code easier to integrate:

*   Follow the documentation guidelines. Some organizations have a policy that code must have some documentation before it can be committed.
*   Make sure the tests pass! You have tests, right?
*   Include lots of useful comments in your code. Comments make people happy.
*   Tests are sensitive to the versions of software, operating system and libraries you are using. It is a good idea to run your tests on a few of the most commonly used versions of libraries or prerequisites, if possible.
*   Document exactly what kind of environment you wrote the code in, and whether certain things may be dependent on your operating system or platform. For example: "This patch was tested on Linux x86 and OS X Intel, but may have some issues with FreeBSD"
*   Read through recent commits to the repository that you would like your code to be in. You will often learn about something relevant to your code, such as a macro that makes your life easier or a special trick for avoiding bugs.
*   Commit often. You can always maintain a local branch of the code to which you keep committing regularly. This keeps you from losing work; it also gives you something concrete to show your mentor and get feedback on.
*   Take the feedback on your code positively. Appreciate the comments and suggestions you receive and use them for your next commit. It certainly helps you write better code and grow as a developer.

There's something really satisfying and fulfilling about getting your code accepted and seeing it used by many others. Getting your code submitted is your first step towards achieving that accomplishment! More importantly, it helps you in honing your skills as a great developer and contributor.

**Pro Tip**: You can also ask other students to review your code for you and give you feedback. Use other students in your community and the GSoC program as a resource.


