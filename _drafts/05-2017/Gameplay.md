---
format: post
title: Gameplay Logic
---
Now that we have some idea of how our game state will be structured, we can begin to imagine the interactions and gameplay logic that will bring OpenEVA to life. Here we will be exploring the game's underlying mechanics in order to build a mental model of the features and systems we will need to implement. This will help us envision user interface interactions, determine software requirements and let us manifest our design as tangible work. This analysis will allow us to define and constrain project scope; OpenEVA is already an extremely ambitious project for a solo dev, preventing scope creep will be essential. Likewise, open source and game  projects are well served having a well defined scope and feature set.

##### Update

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

The psudocode above implements a simplified version of our update loop. The concept is extremely simple: Time passed accumulates until it reaches a configured value, which then fires our game state update funtion incrementing game time and running periodic routines. Ideally final implementation of our game state API class library will have several funcitons which will allow game state to be read and manipulated agnostic of our game or engine.

Our in-game tick will run independent of our interface and other gameplay. The player will have real-time feedback and affects on game state as well. 

##### Gameplay Modules

I want to implement OpenEVA's gameplay and intrface systems in a modular, extensible way. I hope to allow additional UI menus and gameplay logic to be added to the game through the use of GDNative modules. Taking care to develop our code in an exensible way will enabel enable all manner of things from reworking of the UI to FTL-esque combat minigames to be developed and added to the game. Of course, we are a long way from developing specific minigames, however we need to keep the goal of modularity in mind as we design and implement our code.

By leveraging GDNative librarios we should be able to allow gameplay and interface extension modules to be developed and added to the game without requiring recompilation. An easy to use API for gameplay modules will need to be developed to enable interaction with the rest of the game. Gameplay modules should be able to hook into the game's "real time" or "game time" update loops and interact with the game state database, as well as modifying or or implementing UI elements. GDNative is a brand new feature of Godot 3.0, so a fair amount of research and dvelopment will be nesaccary to produce this feature.

I imagine OpenEVAs library structure to include database and api libraries, as well as core gameplay modules and software infrastructure to integrate with Godot. Seperate from the source code will be a directory containing core and user-generated content, additional gameplay modules, configuration and save data files. This should allow for easy organisation and seperabtion of code from content.