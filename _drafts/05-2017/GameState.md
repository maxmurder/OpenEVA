---
format: post
Title: Game State
---
Now that we have a high level model of the game mechanics, we can start designing the underlying systems which will enable them. The core element of OpenEVA's functionality is the game state: All player Equipment, Resources and game progress will be stored as a simple database of flags and values; All Events and player interaction will involve modifying game state.in some way; And in-game interfaces will be reflections of the current state. Game progress, Contract and Event completion or availability, Event choice options, outcomes and more can be tracked by an array of simple flags. Resource pools can be stored as a series of key-value pairs. Player Equipment inventory may be some straight forward relational struture of part templates and transient values. This solution should give OpenEVA a flexible and optomisable foundation upon which our mechanics, interfaces and content can be built.

##### Database

OpenEVA will need some sort of infrastructure to support game state data management. I envision a flexible database with a straighforward API, which can be extended as needed. This will store everything from Resource levels and game state flags to Equipment templates and Event pools. I have a fair amount of experience working with database technology, however I am not a data scientist. This is an area that will require considerable research and development. I hope to leverage existing free technology or software libraries to accomplish my goal.

We will need to develop a schema for OpenEVA's database structure. Due to our highly data and content driven goals, we will need a flexible and robust data model to support the game. This is an area which will need considerable research and development: I have a little experience working with <a href="https://en.wikipedia.org/wiki/Entity%E2%80%93attribute%E2%80%93value_model">Entity Attribute Value (EAV)</a> databases, which may suit OpenEVA's purposes. The EAV model, while potentially complex, is perfect for handling data that can be described as a set of entities or objects which have a arbitrary number of attributes or properties. However after research and experimentation we may find that a traditional relational model or some other data structure may be better suited to OpenEVA's needs. Proper research and schema implementation will be vital to OpenEVA's development.

Research will also be required to choose the database technology which will host our model. I hope to use a free software database solution or library to help with this. There are many technologies available and there is no need to reinvent the wheel. I have experience with <a href="https://mariadb.org/">MariaDB</a> in my professional career, however a more lightweight solution may be preferred. Over the coming weeks I will be researching a database solution for OpenEVA.

##### State Flags

I envision meta game state being tracked by arbitrary string based flags. There will be a global pool of flags that can read by the game logic to determine the state of the game and decide actions. Flags can be added or removed from the pool as necessary by various parts of the game. Flags will determine Event and Contract availability, narrative progress, Equipment capabilities and more. It should be these flags may be highly optimized on the back end to save on space and performance while using a simple reflection system to enable human-readable definitions and debugging.

##### Equipment 

Content creators will define Equipment templates using simple JSON definitions. Creators will begin by developing Part definitions outlining the details and capabilities of the Parts that will make up the Equipment. Parts and Equipment be configured to add or remove flags from the game state pool based on their functionality or presence in the player's inventory. Together Part and Equipment definitions will form the template that the game code uses to manifest the Equipment in-game.

Once the player has acquired a piece of Equipment in game it will be instantiated from it's template into the game state database as a collection of Part attribute data and their relationships to the attached Equipment. This should be fairly easily serializable and even allow the player to construct Equipment in-game and export it as a JSON template to share with the community.

##### Resources & Everything Else

Content creators will also define Resource templates as JSON definitions containing the Resource's specific metadata. Player Resource pools will be stored in the database as simple tuples of key values containing information on the quantity of the Resource and its parent template. Resource metadata should be concise as possible, simply detailing the human readable names, in-game units and display properties. Designers will give utility and function to Resources through their Equipment, Event and Contract definitions.

##### Conclusion

There will be a lot to consider as we develop the schema and infrastructure around the game state database. I intend to develop a flexible system that can run independent of our choice of front end game engine or technology. I believe that this can be accomplished by implementing a relatively simple schema and API. I will be spending considerable time exploring the details of OpenEVA game state as we get further into the research and development of the game. 
