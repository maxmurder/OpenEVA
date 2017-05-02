---
format: post
title: User Storytime Part I
---
An important step when designing any game or software project is to identify users and use cases. We want to develop features and interfaces which appeal to end-users and allow them to use our product effectively. We must also provide infrastructure to distribute and support our product. Developers should develop a full set of use cases and user stories before they begin writing their software. A comprehensive user story will allow us to visualize the features and interfaces they will use, while serving as a thought experiment enabling further maturation of our design.

When considering use cases and user stories we must also include the developers, artists and maintainers who will create and support our game. As well, we should think about website, documentation, support and community site users. We will need to develop infrastructure to support a variety of use-cases, so it is valuable to analyze our design in an array of contexts.

For OpenEVA we can immediately identify several major use-cases. The first is player of the game, who will use the software features of the game itself, and require distribution, support and community infrastructure. Secondly, the content developers and modders who will produce and extend OpenEVA gameplay, narrative and artistic content; They will require pipeline and definition syntax as well as documentation, community and distribution facilities. Finally we have core developers who will write and maintain the software and supporting infrastructure itself; Development environments, technologies, workflows, standards and practices must be explored and defined. Many more meta and edge use cases exist around OpenEVA which will need to be analyzed throughout development.

##### The Player

The easiest place to start when formulating user stories is with the typical end-user. For OpenEVA, and most games this is the player using the complete, vanilla version of the game. Player's will be the main users of the game as well as the target audience for our features and content. Players will also require distribution, documentation, community and support infrastructure. The player experience is central to the success of any game. 

##### Discovery

The typical user story for the player will start with them learning about the game through social media, journalism, advertisement and word of mouth. I intend to keep a fairly low key social media presence during OpenEVA's development. I am personally averse to social media, however it is a vital aspect of modern game development. 

The main community interaction and promotion of the game during the game's early development will mostly revolve around the devblog and github project. A dedicated website, official forum and wiki will be provisioned. I may set up pages and accounts for OpenEVA on various social media platforms as the game and community evolve. For now, OpenEVA's social media presence consists of the [/r/OpenEVA](https://www.reddit.com/r/OpenEVA/) subreddit, which will suffice to promote the devblog during early development and serve as a makeshift community and feedback hub until official infrastructure is in place. 

I do not plan on expending resources on traditional advertising as I don't expect to profit financially from OpenEVA. However, I will develop some promotional material for the press and use on various distribution and discovery platforms when the game has reached a presentable maturity. In the early stages of development, simple concept artwork, design mockups and the devblog should be more than enough promotional material for OpenEVA.

##### Distribution

Now that the user has been informed of OpenEVA, they will need some way to download or otherwise play the game. As free software OpenEVA source code, content and even this devblog will always be available for users to download, compile, modify and distribute under the terms of the [GNU General Public License v3.0](https://github.com/maxmurder/OpenEVA/blob/master/LICENSE). This however is somewhat inconvenient for the average user. I will to offer compiled binaries for download on the official OpenEVA webpage, and offer the game free of charge on various, free software friendly distribution services and platforms.

Players will need a convinient location to aquire and share OpenEVA scenarios and content. This will likely be supported for a time by the official forums, reddit and simple text sharing platforms. One of my long term development goals is to have an in game repository where players may discovor and download new community content. 

##### Starting the Game

Once the user has the game installed on their computer, they will run the binary from their preferred environment. The game will start with a brief splash screen displaying information about the GPL licence, where to find the game's source files, details an where get support and how contribute to the project. A second splash screen with the OpenEVA logo and high-quality artwork will be shown for the remainder of the loading and initialization process. 

Once the game has loaded the user will be shown the main menu. Here they can choose to continue from the most recent save, load a previous save, start a new campaign scenario, or open the game's configuration interfaces.

Alongside a general configuration menu, the main menus will include a dedicated interface for configuring the game's content. I envision a system of content modules that the user may toggle to customize game content and experience. 
 
If the user chooses to continue playing a previous game they may select a "continue" option which will load the most recently saved game. They may also bring up a list of an archive of saved games to choose from.

Starting a new campaign scenario will bring up an interface displaying a list of available scenario content. Selecting a scenario from the list will bring up a short description of the scenario. The player will then be able to configure the scenario difficulty and other settings. Once satisfied the player will accept the configuration and the game will begin.

##### Playing the Game

Scenarios will begin with a kick-off Event which explains the starting situation and provides narrative context. The kick-off Event will grant the player starting Equipment, Parts and Resources. Once the kick-off Event ends the game will begin, the clock will start ticking and the user will be free to play the game. 

I envision freeform play beginning with the player inspecting their starting Equipment, Resource inventory, available Contracts, Equipment and Resources for trade and exploring the various in game interfaces. Players will starting spend time and their Resources, planing their strategy and improving or acquiring their Equipment.

The core gameplay loop will consist of the freeform gameplay phase. Users are free to examine, repair, improve and construct equipment. The user will start with a list of their Equipment inventory with summaries of each piece's condition, statistics, function and Resource levels. In order to maintain and control Equipment players will select an item from the list. This will open a hierarchical view of the Components and Parts the Equipment contains. Selecting a Part from the hierarchy will open the next level of that parts hierarchy and give players a detailed summary of the Part's condition and stats. With a Part selected the player will be able to toggle part functionality, repair or replace the part with another. This interface will also provide a way for players to add new parts and Components to Equipment. Parts in repair, fabrication or removal will display the progress and remaining duration of he operation.

Conceptually the player in OpenEVA, set in the sci-fi world of 2120, will have the technology aboard their spaceship to fabricate, manufacture, or produce almost anything from raw elemental materials. When the user replaces, adds or removes a Part from the Equipment interface it will consume Resources for fabrication, or be recycled into Resources at values and rates set by content designers. Part repairs should consume Resources proportional to the condition of the Part.

Players will need a way to trade and convert resources, as well as buy and sell equipment. I hope to achieve this with clever implementation of Equipment and Contracts. Likewise, the player charachter themselves may be represented as equipment needing Resources and maintainence, adding a survival element to the game. It will be up to content designers to define a scenario's economy and interactions through OpenEVA's core mechanics.

The second major gameplay interaction will be selecting and preforming Contracts. Users will open an interface displaying a list of available Contracts. Selecting a Contract from the list will display a description of the Contract, any required Equipment or Resources, as well as any known costs or rewards. Available Contracts which the player does not meet he requirements for will indicate this to the player and detail what they are missing. Once a user has selected a Contract to take, they will press a button to accept it. This will simply start the Event associated with the Contract. This may require user input or simply modify the game state with no further player interaction.

Events will be triggered via the Contracts interface, ambiently during freeform gameplay and at specific game beats. Events which require player attention or action will be displayed as a series of stages. At each stage the player is shown a text description of the situation and may be prompted to select Equipment or make a simple choice to continue. Equipment selection will provide a simple interface allowing players to select relevant Equipment from their inventory. Player choices will be represented as a series of buttons with a brief description of the choice or action. Events may provide an after-action summary of the resultant cost and rewards. Some Events may simply modify game state and not prompt the player at all. 

The end states and win conditions of the game will be defined by content creators. I imagine OpenEVA's main campaign to end after a set duration or when the player can afford to unlock a "retirement" contract. The main scenario should last eight to ten hours, however duration and difficulty will vary by scenario and designer taste. Game over may be triggered by duration, date, Events or the state of player Resources and Equipment.

For the main OpenEVA campaign achievement will be graded by the value on the value of the players Resources and Equipment. Win or lose conditions will be dependant entirely on the scenario and might grade any combonation of game or narrative state variables.

Once the game is complete the player will be shown a summary of their score and an epilog text, credits and reward artwork. Scenario completion could unlock additional scenarios and content. Their score may go on a per scenario local leaderboard to track high-score. Once complete the user will be placed into the main menu.

##### End User Documentation and Support

Users of OpenEVA will inevitibly run into 