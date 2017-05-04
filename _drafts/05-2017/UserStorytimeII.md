---
format:post
title: User Storytime Part II Developer Boogaloo
---
As developers we are also users of our software or game, with a vastly different story than an end user. It is important to consider the developer's story as they have needs that need to be supported by our product. We need to integrate workflows into the software, explore development environments, provision testing and deployment automation, and provide documentation, issue tracking and support. A good development pipeline is key to any traditional or open source game development.

OpenEVA will have several sets of developers which will form a sort of venn diagram of production: The core developers who write and maintain the source code; Content developers who create art, narrative and gameplay modules; And modders who develop extension libraries for the game.

##### Core Developers

OpenEVA's core development will follow a typical git workflow. Contributers will keep thier own forked repositories, editing code on development branches. Code will be merged with the mainline via pull requests willmade to the master OpenEVA repo. Pull requests will be tested and examined by the core development team. All code contributions should fix or implement some existing issue in the project issue tracking database. Pull requests will require a reference to an existing project issue.

All development work done on OpenEVA should tracked via issues in our tracking database. Code development, feature requests and bugs will be described as issues, which can then be implemented and fixed by developers. Issues should be concise descriptions of the bug or feature, following a well defined structure. The issue database will be public and users will be allowed to submit bug reports and feature requests. However issues will need approval by the core development team before being accepted into the project's body of work. 

Issue tracking may happen in the default github project issues, which can serve most open source projects well. However, I would like to set up a <a href="https://www.redmine.org/">Redmine</a> as it is has a ton of great features and can support much of the  OpenEVA community, documentation and development infrastructure.
