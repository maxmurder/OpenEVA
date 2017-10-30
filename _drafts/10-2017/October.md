---
title: October
format: post
---

During the past couple of weeks I have finally (mostly) finished work on my GDNative SQLite3 wrapper, which should allow for us to work with our game state database from inside Godot. It still has some work that needs to be done; I have encountered an odd race-condition bug when creating a table wich I still need to hunt domn. But for the most part I feel like I can at least start thinking abou the next piece of the puzzle.

##### JSON

Now that we have our database solution mostly sorted we can start to think about the data we will be putting in it and how that data is generated. I plan to use json as OpenEVA's content definitions and configuration format as it is simple, robust and easy to read. Godot has built-in json parsing so hooking everything up should be easy. I will need to develop a schema and implement structures for the various types of entities in the game. However this kind of thing is pretty straight forward and something that can continue to be refined as the ga e evolves. Not super exiting but it means that I may get to start writing actual game code in the near future.

##### C# in Godot!

Another exiting development  about is Gobot adding support for the mono framework in-engine. This means we can now use C# in our Godot game projects. I still haven't tried it out but I hope to implement some of ourgameplay classes is C# as it should provide a little verbosity over GDScript. However, most of the in-engine code will still likely be GDScript since it is better supoorted and a really nice scripting language.

##### Onward

Hopefully I will get time in November to begin laying the groundwork for the game itself and make progress toward basic functionality. The next couple months should be (relativly) exdting. Stay tuned!