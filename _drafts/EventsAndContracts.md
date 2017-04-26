---
title: "Events & Contracts"
format: post
---
A key element of gameplay and core driver and delivery method for theme and narrative content in OpenEVA is the Event and Contract system. The system will be very simple conceptually; The player is shown a sequence of text based descriptions, at each step in the sequence the player is given one or more choices on how to proceed, and the outcome of the event may affect game state. There are countless examples of games and interactive experiences which make use of this model, likely dating back to the development of language itself. Many of my all time favorite games are heavily event driven, and I have coded simple event systems for many projects and technologies. Personally, I appreciate the versatility of text and simple choices to convey any description, situation, dilemma, theme, humor or narrative elements the author can imagine. Likewise, I encourage the player to use their imagination and enjoy the experience as you would a book or other literature. Simple text based events have great potential to drive narrative, theme and action, using simple systems and a clean interface in a way that is easy for authors and content creators to define.

##### Events

Events will be the core driver of game action and conflict, and will serve as the main interaction that content designers will use to affect the game state and economy. Events may be gated or triggered by game state, and Events may be configured to fire at specific game beats. I envision the player receiving ambient events during freeform gameplay, after accomplishing milestones or at specific points in the game. The player will also be able to trigger events manually through the Contracts interface or by using certain Equipment and Components. Events will be able to affect the game state in a variety of ways, consuming or rewarding the player with Resources and Equipment, wearing and damaging Parts and Equipment and more. The Event system will drive gameplay and interaction, and will give designers the ability to create interesting choices and problems for players to solve.

Events will be presented to the player as a series of text based descriptions, and one or more simple choices at each step. Each step will contain of a short text description of the situation. The length of the text will be arbitrary, however descriptions should be kept concise and easy to read. Player choices will be represented by a series of buttons each containing a short text description of the action or outcome the choice represents. Choice descriptions should be no more one or two short sentences, with an optional summary of the in game effects. Event descriptions may optionally accompanied by a simple matte image to provide a medium to deliver artwork to the player, and add immersion and visual impact to Events. Once an Event is complete the player may be presented with a concise summary of the Events in-game effects. However, if the designer chooses, they may partially or completely obfuscate the details of the outcome on game effects. 

Events which require specific Equipment will either allow the player to select Equipment from their inventory to use for the Event, or draw needed Equipment at random from the player's inventory. Equipment selection can happen as needed during the event sequence, a simple interface for this will be developed which can be embedded into arbitrary Event steps.

At each stage in an Event the player will choose between one or more actions or outcomes. Each choice may have another Event step which it leads to or simply end the Event, allowing the player to return to freeform gameplay. Choices may affect the game state, and have awards and penalties associated with them, or gate and trigger other content. Event outcomes and effects may be based on the player's choices, game state, or probability. I want to develop a flexible system that will allow designers to create interesting interactions and mechanics using the Event system.

##### Contracts

The Contract system will simply be a way for the player to trigger certain Events manually or interact with the game state in some way, as well as an interface to provide context and a summary of the costs, risks, rewards and requirements of the action. It should be possible to simulate jobs, quests, destinations, NPC interactions, game milestones, tasks, decisions and any arbitrary action the player may take via Contracts. Contracts will be the one of the main ways the player will drive and experience game progression, and change or otherwise interact with the game state.

The player will open the Contracts interface and be presented with a list of available Contracts, selecting a Contract in the list will display a detailed summary of the costs, rewards and effects taking the Contract may have. If they choose the player will click a button to accept the Contract. This may immediately trigger an Event, gate Events or other Contracts, or alter the game state in some way.

Contracts may have a duration, expiry, or specific time window in which they become available. They may be gated by Events, Equipment, or other Contracts. Contracts may require or consume specific Resources and may give the player Resources, Parts and Equipment. Finally, Contracts may trigger specific gameplay events such as displaying a game over screen.

##### Conclusion



