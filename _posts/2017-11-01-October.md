---
title: October
format: post
---

During the past couple of weeks I have finally (mostly) finished work on my <a href="https://github.com/maxmurder/gd-sqlite">GDNative SQLite3 wrapper</a>, which should allow for me to work with our game state database from inside Godot easily. It still has some polish that needs to be done, but for the most part I feel like I can at least start thinking about the next piece of the development puzzle.

##### JSON

Now that we have our database solution mostly sorted we can start to think about the data we will be putting in it and how that data is generated. I plan to use json as OpenEVA's content definitions and configuration format as it is simple, robust and easy to read. Godot has built-in json parsing so hooking everything up should be easy. I will need to develop a schema and implement structures for the various types of entities in the game. However this kind of thing is pretty straight forward and something that can continue to be refined as the project evolves. Not super exiting but it means that I get to start writing actual game code in the near future.

##### C# in Godot!

Another exciting development is Gobot adding support for the mono framework. This means we can now use C# in our Godot game projects. I still haven't tried it out but I may implement some of ourgameplay classes is C# as it should provide a little verbosity over GDScript. However, most of the in-engine code will still likely be GDScript since it is better supported and a really nice scripting language for games.

##### Onward

Hopefully I will get time in November to begin laying the groundwork for the game itself and make progress toward basic functionality. The next couple months should be (relativly) exdting. Stay tuned!