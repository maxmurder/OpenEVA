---
format:post
title: User Storytime Part II
---
As developers we are also users of our software or game, with a vastly different story than an end user. It is important to consider the developer's story as they have needs that need to be supported by our product. We need to integrate workflows into the software, explore development environments, provision testing and deployment automation, and provide documentation, issue tracking and support. A good development pipeline is key to any traditional or open source game development.

OpenEVA will have several sets of developers which will form a sort of venn diagram of production: The core developers who write and maintain the source code; Content developers who create art, narrative and gameplay modules; And modders who develop extension libraries for the game.

##### Core Developers

I plan to develop the frontend and gameplay systems of OpenEVA using the Godot 3.0 engine. Game code will be written largly in C++ following a defined format. Developers will be free however to choose the development environment and ide that works for them. I want to keep a fairly limited number of dependencies for OpenEVA, however we will likely require a few free libraries outsihe of the core Godot engine libs. 

OpenEVA source control will follow a typical git workflow. Contributers will keep thier own forked repositories, editing code on development branches. Code will be merged with the mainline via pull requests made to the master OpenEVA repo. Pull requests will be tested and examined via automation and the core development team. All code contributions should fix or implement some existing issue in the project issue tracking database. Pull requests will require a reference to an existing project issue.

All development work done on OpenEVA should tracked via issues in our tracking database. Code development, feature requests and bugs will be described as issues, which can then be implemented and fixed by developers. Issues should be concise descriptions of the bug or feature, following a well defined structure. The issue database will be public and users will be allowed to submit bug reports and feature requests. However issues will need approval by the core development team before being accepted into the project's body of work. 

Issue tracking may happen in the default github project issues, which can serve most open source projects well. Likewise, developers will need a convinient place to review and develop documentation resources as well as a forum for collaboration. I would like to set up a <a href="https://www.redmine.org/">Redmine</a> isntance as it is has a ton of great features and can support much of the OpenEVA community, documentation and development infrastructure.

We will need some way for developers to efficiently test and distribute new builds of the code. I want to develop a modern deployment and test automation framework for OpenEVA. I have some professional experience working with environment and integration automation solutions such as <a href="https://www.docker.com/">Docker</a> and <a href="https://buildbot.net/">BuildBot</a>. I have a pretty good idea what the set up will require, however this will be an subject that requires further research and development.

I don't really have the hardware required for this, but I should be able to leverage <a href="https://aws.amazon.com/">AWS</a> for hosting virtual servers, repo backups, distrbutable binaries, etc. Which should enable me to effectively host and administer OpenEVA's supporting infrastructure at a reasonable cost. Site admin is another complex and time consuming role which we will explore in future chapters.

##### Content Developers

Content developers will be completely free to use whatever technology or tecniques they desire to create art and content for OpenEVA. The entirety of OpenEVA's content will be static images, JSONised text definitions and simple sound assets. Content creators however will require thier own framewor of supporting infrastructure do develop and share their content.