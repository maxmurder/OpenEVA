---
format: post
title: Resources and Game State
---
Along with <a href="https://maxmurder.github.io/OpenEVA/2017/04/25/TheEquipment.html">Equipment</a> and <a href="https://maxmurder.github.io/OpenEVA/2017/04/26/EventsAndContracts.html">Events</a>, Resources will complete the core gameplay interactions the player has with OpenEVA. Resources are simply some float or integer value that is tracked by the game that has some in-game utility or value. Specific Resources, their utility and value will be defined by content creators using simple JSON. Currency, fuel, Part inventories, electricity, cargo space, hunger and oxygen levels may be represented via Resources. Events may require, consume or reward Resources. Parts will require Resources to fabricate and may be broken down or recycled. Equipment may produce, consume and store Resources. Using clever definitions content designers should be able to create complex Resource chains and economies as well as interesting mechanics and interactions.

A simple interface will allow the player to trade certain Resources, Parts and Equipment. Parts and Equipment which store, produce or consume Resources will maintain a simple interface to keep players informed and control the flow of Resources. Players will be given a concise summary of their overall Resource inventory, and production and consumption rates. However, designers may choose to obfuscate and hide the existence or levels of certain Resources.

I may want to capture some form of overall score for tracking progress and achievement. Conceptually the game will end when the player sells their business and retires. Therefore there will need to be a conversion of value of the players inventory of Equipment and Resources into <i>points</i>. This can be simply accomplished during content development; Content designers will simply need to flag a Resource as their <i>point</i> value for the code to use for unit conversion, trading or currency value allocation and final score. A designer may also specify conversion rates between specific, hide them from the player, or disallow them completely.

Resource management will be a foundational cornerstone of OpenEVA gameplay and content design. Most Parts, Equipment and Events will involve Resources in some way and in-game economy will revolve around the Resource system. Resources will be a key method for recording and tracking game state in OpenEVA.

##### Game State

At a low level OpenEVA will consist a simple collection of string based flags, and a database of the player's inventory of Resources and Equipment. All gameplay will involve simply reading or modifying this database and the user interface will be a straightforward representation of the current game state.

Events, Contracts and access to Equipment may be gated by the existence of flags and Resource levels. Events and the player's Equipment can add or remove flags from the current game state collection and may affect Resource levels as well.

This austere model should give us a flexible, reliable and efficient system upon which to build the mechanics and interactions that will form the basis of our game. It will allow us to add and remove features in a modular and independent way, and allow designers to create a variety of diverse and interesting content. It will be easily serialized, and even allow us to implement a transactional system to enable metric tracking, game summaries, ctrl-z, and time travel.

##### Time

Time in game will pass during freeform gameplay and may be paused or accelerated by the player. Events may also take time, moving the clock ahead by some duration or setting the clock to a specific date. I envision a simple interface, displaying the current date and time, and with a few simple buttons to speed, slow or pause the passage of time. Time may also become paused during Event decisions or in specific in-game menus. If an Event changes the time, the player should be informed of the duration or change in time. However, designers should have the ability to hide or obfuscate time if they choose. The game may be set to end at after a duration or on a specific date. Build and repair times, Resource consumption rates, Contract or Event durations and time windows, and the rate of the passage of time will be configurable by content creators. This will allow us to set pace and game duration per our creative vision or personal taste. This system will also allow for content designers to model novel situations such as generational space missions or time travel in-game.

##### Conclusion

Using a simple underlying system, it should be possible for content designers to create and develop interesting economies and interactions for the player to explore. Using simple JSON definitions designers should be able to craft engaging narrative and gameplay using our straight forward infrastructure. I intend to develop a simple and independent API to read and interact with OpenEVA's game state. Enabling the addition of new models, mechanics, gameplay systems and code libraries. In the future I want to use the infrastructure of OpenEVA to experiment with data analysis, AI, procedural and other exiting technology. As we develop the technical design I will be writing blog posts outlining the schemas and models I will be implementing to realize the vision I have for OpenEVA.
