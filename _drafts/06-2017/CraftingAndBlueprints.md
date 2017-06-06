---
format: post
title: Crafting
---
I have laid out a fondational framework for OpenEVA in the  Database, Api and infrastructure articles. We may now begin to look at some of the foundational gameplay elements which will make use of those systems in a more granular way. Now that we have some idea of our environment and constraints we will be working in we can start to design gameplay and interfaces which will make the game fun and enjoyable to play.

One of the main features of OpenEVA gameplay will be be crafting, modifying and maintaining equipment. I envision a system where the player can modify existing equipment, swapping, adding and removing parts, as well as build new equipment from scratch. Mechanically, the feature will be fairly simple: Whenmthe player has a part selected they will be given the ability to repair or remove the part, they may also select from a list of compatible parts to swap in. Players will also be able to add new parts to existing equipment anywhere in the part hierarchy as long as they are compatible with the parent part. Finally players will be able to create new pieces of equipment, either from a template with associated parts or from scratch allowing them to build custom equipment from the ground up.

##### Templates

From the player's prespective Equipment templates are simply blueprints which define what parts are required for specific pieces of equipment. The player will keep an inventory of known templates which allow them to construct the Equipment it hescribes.  I would like the player to have to aquire templates in order to enable the construction of special Equipment from contracts etc.