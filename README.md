SeniorProject: Grab the Coin

My project is a 2-D platformer game. It was built using Godot,

a gaming engine with its own language known as GDScript.

Godot (pronounced Gi-doe or Go-dot) uses a node based

structure to create 'scenes' in which the game is built on.

Below are the major files within my project as well as a

description of what is within each file and what their

functionality is.

1) Dirt Autotiles and sky

This file contains the images for the terrain and background.

2) Sprites

This file contains the sprites for the player and the coin(s).

3) Worlds

This file contains the the scenes for the worlds (the .tscn files).

4) Addons

This file contains the code for Godot's personal Testing Unit (GUT).

It is used to create and run the tests in the tests file.

5) Tests

This file contains the AutomatedTests and ManualTests files. The automated tests

are the tests that run when the game starts (can be set to run in game as well).

The manual tests are tests a player/testser can check for manually, such as making

sure the player performs the correct action when a button is pressed.

6) Coin

Coin is split up into a .gd file and a .tscn file. The Coin.tscn file holds the image of the

coin and its animation. The Coin.gd file contains the functionality of the coin. This is where

you you would find the code telling it to disappear when the player runs into it.

7) Player

Similarly to the Coin, Player is split into a .tscn and a .gd. Player.tscn contains the image for

the player character and their animations while the Player.gd file holds the player's functionality,

such as their movement and the physics governing them (gravity, friction, speed, etc).

8) Start Menu

Again, split up into a .tscn and a .gd file. The Start Menu.tscn is the image of the menu

(basically how it is set up) and the Start Menu.gd is the functionality behind the scene

(basically the code behind the buttons).

9) World Complete

Again, split up into a .tscn and a .gd file. The World Complete.tscn is the portal within the worlds

that allows you to traverse through them. The World Complete.gd file contains the code on how the portal

connects the worlds.

The best way to differentiate a .tscn and a .gd file is to consider the .tscn file

as it is: a 'scene.' This is the picture of the code when the game is running while the

.gd file is how the variables within the scene interact with each other, kinda like a 'script'

telling the actors in a 'scene' how they should approach each other.
