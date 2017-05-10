---
format: post
title: User Storytime Part II
---
As developers we are also users of our software or game, only with a vastly different story than an end user. It is important to consider the developer's story as they have needs which will require support by our product and organisation. We will need to integrate workflows into the software; Explore development environments and technology; Provision build, test and deployment automation; Provide documentation, issue tracking, support and more. An effective developer story is key to any game or software development.

OpenEVA will have several sets of developers which will form a sort of venn diagram of production: The core developers who write and maintain the source code; Content developers who create art, narrative and gameplay modules; And modders who develop extension libraries for the game.

##### Core Developers

I plan to develop the frontend and gameplay systems of OpenEVA using the Godot engine. Game code will be written largely in C++ following a defined format. Developers will be free however to choose the development environment and IDE that works for them. I want to keep a fairly limited number of dependencies for OpenEVA, however we will likely require a few free libraries outside of the core Godot engine libs. 

OpenEVA developers will follow a typical git workflow. Contributors will keep their own forked repositories, editing code on development branches. Code will be merged with the mainline via pull requests made to the master OpenEVA repo. Pull requests will be tested and examined via automation and the core development team. All code contributions should fix or implement some existing issue in the project issue tracking database. Pull requests will require a reference to an existing project issue.

All development work done on OpenEVA should tracked via issues in our tracking database. Code development, feature requests and bugs will be described as issues, which can then be implemented and fixed by developers. Issues should be concise descriptions of the bug or feature, following a well defined style. The project issue database will be be publicly viewable and users may submit bug reports and feature requests. However issues will need approval by the core development team before being accepted into the project's body of work. 

Developers will need a convenient place to review and develop documentation resources, track issues and feature development, as well as a forum for discussion and collaboration. I will be setting up a <a href="https://www.redmine.org/">Redmine</a> instance, as it has many features which will support OpenEVA community, documentation and development infrastructure.

We will need some way for developers to efficiently test and distribute new builds of the code. I want to develop a modern deployment and test automation framework for OpenEVA. I have some professional experience working with environment and integration automation solutions such as <a href="https://www.docker.com/">Docker</a> and <a href="https://buildbot.net/">BuildBot</a>. I have a pretty good idea what the set up will require, however this will be an subject that requires further research and development.

I don't really have the hardware required for this, and will be leveraging <a href="https://aws.amazon.com/">AWS</a> for hosting virtual servers, repo backups, distributable binaries, etc. Which should enable me to effectively host and administer OpenEVA's supporting infrastructure at a reasonable cost. Site admin is another complex and time consuming role which we will explore in future chapters.

##### Content Developers

Content developers will be completely free to use whatever technology or techniques they desire to create art and content for OpenEVA. The entirety of OpenEVA's content will be static images, JSONised text definitions and simple sound assets. Content creators however will require their own framework of supporting infrastructure do develop and share their content.

Github is not really appropriate for hosting a large amount of game or art content. As OpenEVA's content data will be relatively light weight, we should be able to develop a cost effective solution using existing free software. OpenEVA user generated content may be shared on the official forums, with select high-quality user content added to the official OpenEVA distribution package. As a long term development goal, I hope to create an in-game interface where users can find and download content modules from an online repository, somewhat similar to the <a href="https://www.openttd.org/en/">OpenTTD</a> newgrf system.

##### Modders

As free software, users will be free to modify and distribute OpenEVA source code under the terms of the GNU GPL. Furthermore, I hope to develop OpenEVA in a modular, extensible way. Godot GDNative libraries should give the flexibility for modders to create extension modules for the game using the technology of their choice. A lot of research and development will be required to accomplish this. GDNative is a new feature of Godot 3.0 which I have yet to fully explore. However, extensibility should be a major objective of OpenEVA development.

I hope to have some form of extension module discovery and distribution on the official forums and social media pages. This is an aspect that will be left largely to the developers and community at large at least until a solid content distribution model is in place. I will however need to keep in mind that extension modules should be folded into the content distribution systems as I develop those features.

##### Conclusion

Overall our developers will likely require a large share of OpenEVA online infrastructure and administration. It should however be possible to accommodate their needs using existing free technology and relatively cheap services. Developer pipelines will also require significant integration with the game itself. This will require careful design and integration but it will be possible thanks to exercises like this. OpenEVA should have an efficient and well supported developer story, which promotes community and collaboration.

