---
format: post
title: API Layer
---
Now that we have some idea of how our game state be structured, we can begin to imagine the interactions and gameplay logic that will bring OpenEVA to life. Here we will be exploring the game's underlying software structure in order to build a mental model of the features and systems we will need to implement. This will help us envision user interface interactions, determine software requirements and let us manifest our design as tangible work. This analysis will allow us to define and constrain project scope; OpenEVA is already an extremely ambitious project for a solo dev, preventing scope creep will be essential. Likewise, open source and game  projects are well served having a well defined scope and feature set.

##### Engine

I am going to be using Godot 3.0 to develop OpenEVA's interface and gameplay systems. However I would like to implement these features in an extensible and modular way. We will need a way for the engine to interact with with the game state database as well as specalized gameplay logic modules.

##### Updates

I want to capture a real-time feel to OpenEVA; I imagine most OpenEVA campaigns to follow some sort of Oregon Trail-esque journey or adventure where the plaer is draw inextricably towards some final goal. I do however want both players and designers to have some control over the passage of time. Players should be able to pause time to make decisions or take a brake, or speed time thier desired pace, a la most Paradox games. Designers should have tha ability to set game start/end dates (likely through Events) and configure how much time passes every tick.

Every tick, game-time will advance by some duration, during which simulation routines may be run, Events queued and game state updated. Ideally this will be decoupled from our main engine loop and the specifics of period or duration made configurable. Game time can be tracked by an integer timestamp, the epoch of which is determined by designers per scenario and is displayed to the player as a human readable date. This should allow considerable flexibility without being too difficult to implement in code.

<code>
# psudocode
float tickTimer

# our game state update funtion kicks off our game logic at every step
# tick is the duration of time which passes every step
updateGameState(int tick):
    db.incrementGameTime(tick)
    game.updateGameplayModules(tick)
    game.queueEvents(game.eventPool)
    ...

# this function is called every frame by the engine
# deltaTime is real-time in seconds that has passed between frames
mainEngineUpdate(float deltaTime):
    tickTimer += deltaTime
    if ticktimer >= scenario.tickRate:
        updateGameState(scenario.tickDuration)
	tickTimer = 0.0f
</code>

The psudocode above implements a simplified version of our update loop. The concept is extremely simple: Time passed accumulates until it reaches a threshold value, which then fires our game state update funtion incrementing game time and running periodic routines. Ideally final implementation of our game state API class library will have several funcitons which will allow game state to be read and manipulated agnostic of our game or engine.

Our in-game tick will run independent of our interface and other gameplay. The player will get real-time feedback and affects on game state as well.

##### Gameplay Modules

I want to implement OpenEVA's gameplay and intrface systems in a modular, extensible way. I hope to allow additional UI menus and gameplay logic to be added to the game through the use of GDNative modules. Taking care to develop our code in an exensible way will enabel enable all manner of things from reworking of the UI to FTL-esque combat minigames to be developed and added to the game. Of course, we are a long way from developing specific minigames, however we need to keep the goal of modularity in mind as we design and implement our code.

By leveraging GDNative librarios we should be able to allow gameplay and interface extension modules to be developed and added to the game without requiring recompilation. An easy to use API for gameplay modules will need to be developed to enable interaction with the rest of the game. Gameplay modules should be able to hook into the game's "real time" or "game time" update loops and interact with the game state database, as well as modifying or or implementing UI elements. GDNative is a brand new feature of Godot 3.0, so a fair amount of research and dvelopment will be nesaccary to produce this feature.

I imagine OpenEVAs library structure to include database and api libraries, as well as core gameplay modules and software infrastructure to integrate with Godot. Seperate from the source code will be a directory containing core and user-generated content, additional gameplay modules, configuration and save data files. This should allow for easy organisation and seperabtion of code from content.

##### Game State

Our API will need to prvide a framework to allow gameplay module and innerface code to interact with our game state database. We will likely end up with a small library of game specific functions to query, modify and perform common transformations on the database. Gameplay module developers should be discoraged from accessing the game state database directly, instead using the API. This wil/ help compartmentalize gameplay modules and esnure data consistency.

##### Equipment

As a core aspect  of the game Equipment will need to be integrated into the UI and gameplay in an intuitive way. Equipment will likely get special treatment in our API layer to allow all parts of the game to interact easily with game state. Additionally, a great h\deal of our interface development will be devoted to Equipment, in ordor for our eqipment interface to be extendable.

Equipment definitions will each contain a set of flags which determine the items function and properties. Additionally, equipment will keep a map of key value pairs in order to track condition, resource levels, etc.  Our gameply modules will make use of tis data to enable functionality and drive  game logic. Module developers should havo an easy way to access and interact with the Equipment data structure.

##### Conclusion

OpenEVA's Engine api layer will be crucial to enabling development of gameplay systems and interface features. Integrating our core features, engine and database systems into a defined structure will allow developers to create gameplay and interfacen in a modular, extensible way.