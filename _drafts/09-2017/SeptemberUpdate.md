---
format: post
title: September Update
---

Hello again, now that summer is at an end I am finally making some real progress on my R&D. I have been doing a ton of researh into the core infrastructure and technology that I plan to use for OpenEVA. I now have a solid plan of how to approach the early stages of the game's development, and have made some key decisions on technology and design that will form the foundation of the game.

##### SQLite

One of the first big decisions that I have come to after much research into the subject is using <a href="https://www.sqlite.org"> sqllite </a> as our database framework. It is lightweight, performant and has a friendly interface that will be fairly straight-forward to wrap in a gd-native module. In my research I have come across one example of a <a href="https://github.com/khairul169/gdsqlite-native/tree/master/src/sqlite">gd-native sqllite wrapper</a>. I however will need some additional critical functionality for this project in order to make use of sqllite's backup and in-memory database functionality to implement our database in a performant and robust way. I plan to develop my own standalone godot-native sqllite wrapper module. The nature of gd-native modules means that the module itself will be entirely separate from OpenEVA as a game and exist as dependency of the game itself.

The sqlite database will form a foundational part of the game's infrastructure and so should make a good starting point for development on the project. I hope to start development within the next couple weeks (as soon as this weekend if I have the time), and once we have a functional sqllite solution we can begin to solve some of the higher level problems OpenEVA's development will present.
