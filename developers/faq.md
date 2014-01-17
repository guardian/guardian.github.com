---
title: FAQ
layout: default
page_title: FAQ
---

## What does the department do?

The department is responsible for the digital delivery of Guardian content.

This means being responsible for:

* the development of the website, [theguardian.com](http://www.theguardian.com)
* mobile applications (Android, iOS and others)
* the associated infrastructure for supporting the website and the applications
* the operational monitoring and maintenance of our infrastructure in our own datacentre and in our cloud providers
* data analysis to help understand our traffic and digital audience

We also have teams that work on our brand extensions, such as [Soulmates](http://soulmates.theguardian.com) and the [Digital Agency](http://www.theguardian.com/digital-agency) allows external clients to access our innovation and expertise.

## How many developers are in the department?

The department in total is approximately 180 people, of those 50-60 are developers.

## Do you practice Agile development?

Yes, we believe in the [Agile manifesto](http://www.agilemanifesto.org/) but within the department there are different approaches to realising Agile values. Our teams have a lot of autonomy to determine the appropriate way for them to work.

## What does the typical developer environment look like?

Developers manage their own machines, typically a Linux desktop box or a Mac laptop. They have the power to create the best environment for their work so whether you love Emacs or Vim you're welcome. Along with the power of freedom comes the responsibility of delivering, if you environment is flaky or unreliable and that interferes with your work, you need to fix it and quickly.

A common setup is Ubuntu Linux, OpenJDK 7 and IntelliJ (we have departmental licences). Most of our projects will bootstrap their other requirements from this.

## What is the path to production like?

We run TeamCity for our integration builds and we have our own deployment tool called [RiffRaff](http://github.com/guardian/deploy) that can work either in continuous or push-button deployment mode.

## What are the teams like?

We try and organise our teams around products that our readers would understand. We try and make teams autonomous, self-contained and cross-functional. A team will typically be around 10 people: two to four developers, one to two QAs, UX and design if needed, a technical project manager and a product manager. A pair of system integrators are usually available to the team to support the operational needs of the project.
