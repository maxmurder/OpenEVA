---
format: post
Title: Game State
---
Now that we have a high level model of the game mechanics, we can start designing the underlying systems which will enable them. The core element of OpenEVA's funtionality is the game state: All player Equipment, Resources and game progress will be stored as a simple database of flags and values; All Events and player interaction will involve modifying game state.in some way; And in-game interfaces will be reflections of the current state. Game progress, Contract and Event ocmpletion or availability, Event choice options, outcomes and more can be tracked by an array of simple flags. Resource pools can be stored as a series of key-value pairs. Player Equipmpnt inventory may be some straight forward relational struture of part templates and transient values. This solution should give OpenEVA a flexible and optomisable foundation upon which our mechanics, interfaces and content can be built.

##### Database

OpenEVA will need some sort of infrastructure to support game state data management. I envision a flexible database with a straighforward API, which can be extended as needed.	I have a fair amount of experience working with dataam not a data scientist

