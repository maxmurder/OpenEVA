---
format: post
title: "The Game"
categories: design, gameplay, concept
---
OpenEVA will be a resource management business sim in which you play as a blue collar ExtraVehicular Activity contractor working on Humanity's frontier in the year 2120. The main mechanic will center around building and maintaining your space ship, EVA suits, robots and other equipment required to fulfill various contracts in hazardous alien environments throughout the star system. The final goal is to save money for retirement, with an array of possible outcomes based on the player's performance. The gameplay will not be super exiting, all gameplay systems will be something which can be implemented in a spreadsheet, but that can be something extremely useful when designing a complex, data-driven game like this. I intend for the game to be highly modular and extendable. All game materials, parts, equipment, contracts, events and more will be simple JSON definitions which will allow users to define their own content. 

 I want the incredible complexity of futuristic space ships and robots reflected in the game; Each piece of Equipment will be constructed of a detailed array of Parts and Materials which will need to be maintained and replaced as they become worn or damaged. The player will use their Equipment in order to Contracts, which will be the player's main income and driver of gameplay. Players will need to manage money, power, fuel, food and many other Resources as they operate and grow their modest business. Purchasing, building, upgrading, or otherwise acquiring Equipment and Components will serve the core source of game progress. I also have plans for a licensing and permit system which will provide additional progression and difficulty. Finally the player will be occasionally presented with Events which will add complexity and flavor to gameplay.

The main gameplay loop an OpenEVA will start with the player looking over a list of available Contracts and selecting one they wish to undertake. They will then assign Equipment required for the Contract

##### Resources

A cornerstone mechanic of OpenEVA will be resource management. The player will manage an vast array of Resources, each with their own value, functions and risks. Resources will be required to fabricate the parts needed to build and maintain Equipment; Equipment needs to be powered and fueled to operate; The player must keep themselves fed and avoid running out of Oxygen or Coffee. Waste byproducts and hazardous materials will need to be safely disposed of or recycled (or not); Equipment can be used to produce, generate or grow Resources for use or sale. The player will need to efficiently manage their resources in order to be successful.

Of course we can't forget the most important and powerful resource in the galaxy, cash. No capitalistic cosmic dystopia can function without a strong, centralised fiat currency. Space Bucks, Federation Credits or whatever I end up calling them will be the main economic unit of OpenEVA. The stated goal of the game will be collecting as much money as you can for your retirement. The game's end state will occur when you either reach retirement age or save enough to retire early. Player success will be measured by how much they have saved and the value of their equipment. Represented by the quality of their retirement, ranging from an apartment in a crowded alien city, to ascension into some post-humanist immortality. The player will need to manage and invest their money: Buying and selling Equipment and Resources and paying out fees, fines and taxes to keep their business running.

Time, it is truly a precious resource, and one that will be central to OpenEVA's gameplay. While sitting idle in game Time will run, Equipment and Components will consume and produce Resources, money will be earned or spent, Contracts will expire, and the clock will tick ever closer to the end. Contract jobs will take time to complete, Parts will take time to fabricate and Equipment will take time to repair. The player will need to manage their time like any other Resource.

I intend to have all Resources defined through simple JSON so it will be easy to add and modify. Using the system I to implement, it will be possible to add an entire economy to the game with one or several Resources, Equipment, Events and Contracts with JSON definitions alone.

##### Equipment

Every piece of the player's property in  OpenEVA will be represented as Equipment: Contracts may require specific Equipment or Equipment which contain Components with specific capabilities; An appropriate EVA suit will need to be chosen for different conditions and situations; The player's ship will be an essential piece of Equipment that will have a variety of purposes and functions. The core gameplay mechanic of OpenEVA will be the construction and maintenance of your Equipment. The core progression mechanic will be acquiring and upgrading Equipment, enabling access to new Contracts, Resources, Planets and abilities.

Each piece of Equipment will consist of a collection of Components which each have specific functions. Components may enable certain actions, generate power or resources, enable fabrication of Parts and Equipment, provide storage or fulfill some other purpose. Components may also have requirements for their operation or use. Components themselves will be collections Parts and Materials, which the player will need to maintain and replace as they become worn or damaged during use or as the result of some event. Parts are also collections Parts and Materials which will need to be maintained. Materials will simply be some type of Resource which the Part is physically made from.

Examples of Equipment include the player's ship, EVA suits, robots, surface vehicles, excavators and construction machinery, specialized tools, laptop computers and pretty much any tool or item that has some function in the game.

Equipment will be a container for Components which will have their own capabilities, functions and requirements. A reactor component might slowly use Uranium as fuel and produce electricity and other elements and isotopes as byproducts.

A Part is any  item that has had some manufacturing or fabrication from which a Component or Part is constructed. For example: A simple Bearing Part would be constructed from x2 Steel Bearing Casings and x16 Brass Ball Bearings. The Bearing itself could be used as a part number of Components or other Components. 

I am fairly confident this model will give me the sense of complexity and detail that I want to capture in OpenEVA. A nice hierarchical view of few layers of Part collections for each component should be sufficient to get my engineering neurons exited. This model will also be really easy to implement in code in a way that is highly flexible and defined through simple JSON.

##### Contracts

A core element of the gameplay of OpenEVA will be the concept of Contracts. Conceptually the player character is a Extravehicular Activity general contractor who is paid to do some job outside in space, on the surface of alien planets, or some other hazardous environment. Even in the year 2120, EVAs will be dangerous and require special training and equipment to preform. The player will undertake Contracts for a variety of EVA work throughout the star system. Contracts will be core driver and delivery method of story, theme and immersion through player choice and text based flavor.

Each Contract will have a set of requirements that must be met in order for it to be completed. These include specific Equipment or Component function needed to do the job, Resources or Parts required or consumed, certain licenses or permits, Contracts or Events that must be completed, or other specific requirements. 

Contracts will have a reward for successful completion. Contract rewards can include almost anything from story progression and roleplay, to Resources, Equipment and cash. Contract rewards will be the main source of income and Equipment wear and tear.

The player will be presented with a list of the available Contracts in the system. Each Contract will consist of a description of the job and details on the requirements, risks and rewards associated with the Contract. The player will select a Contract and examine the details to determine if they meet the requirements to complete it. If they decide to take the Contract they will accept the terms and the Contract will be placed into a bucket of active Contracts. The player will then be able to select the Equipment that they will take to the job site and use, assigning each piece to the Contract. Once equipment has been selected the player will finally preform the Contract.

Contact jobs will exist as a series of flavor text and player choices. At each stage the player will be presented some text describing the situation and one or more selections representing possible actions or outcomes. Each step can have any number of outcomes based on probability or player choice. Finally the player is presented with a description of the outcome of the Contract and a summary of the success or failure of the contract, as well as any rewards, penalties or other outcomes.

I feel that this system will provide a good enough compulsion loop to serve as one of our main gameplay drivers. They will also serve as a major delivery method for the game's story, theme and flavor. This will all be defined through simple JSON so it will be easy to add new Contracts to the pool.

##### Events

Events will be a crucial part of OpenEVA gameplay and narrative. The player will occasionally receive Events at random or at specific points in the game. Events will be one of the main delivery methods for narrative, flavor and decision making, while adding an element of difficulty and unpredictability to gameplay.

 Events will be presented to the player as a series of text based cards and player choices. At each stage in an Event the player will be presented with a text description of the situation, and one or more options on how to proceed. Once an option has been selected the Event will move to the next stage. Once complete the player will be given a description of the outcome, and a summary of any rewards or penalties resulting from the Event. Event outcomes may be based on probability or player choice.
