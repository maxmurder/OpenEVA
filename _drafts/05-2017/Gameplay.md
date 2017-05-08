---
format: post
title: Gameplay Logic
---
Now that we have some idea of how our game state will be structured, we can begin to imagine the interactions and gameplay logic that will bring OpenEVA to life. Here we will be exploring the game's underlying mechanics in order to build a mental model of the features and systems we will need to implement. This will help us envision user interface interactions, determine software requirements and let us manifest our design as tangible work. This analysis will allow us to define and constrain project scope; OpenEVA is already an extremely ambitious project for a solo dev, preventing scope creep will be essential. Likewise, open source and game  projects are well served having a well defined scope and feature set.

##### Update

I want to rapture a real-time feel to OpenEVA; I imagine most OpenEVA campaigns to follow some sort of Oregon Trail-esque journey or adventure where the plaer is draw inextricably towards some final goal. I do however want both players and designers to have some control over the passage of time. Players should be able to pause time to make decisions or take a brake, or speed time thier desired pace, a la most Paradox games. Designers should have tha ability to set game start/end dates (likely through Events) and configure how much time passes every "tick."

At a configurable real-time duration game-time will step forward by a configurable amount triggering events and updating game state. In game time can be tracked by Unix timestamp, every tick a dration is added to the value. Designers will for example, in their scenario definition tell the game to increment time six hours every [