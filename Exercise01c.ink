/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Variable types: integer, float, boolean
 - Variable assignment
 - Printing variables
 - Variable checking
 
 In the assignment:
 - Add four more knots
 - Assign at least TWO new variables through player choices
 - Print at least one of the variables to the player in a passage
 - Check the value of a variable and have it do something
*/

/*VAR 1
this is VAR 1
*/
VAR coins = 5
/*VAR 2
this is VAR 2
*/
VAR pet_name = ""
VAR torches = 0  
-> memory

== memory ==
Before you stants the cavern of josh you wish your childhood pet was with you now. The cave might be less intimidating then. what was your pet's name?
* [Borsche] 
    ~ pet_name  = "Borsche" 
    -> cave_mouth_out
* [Nomi] 
    ~ pet_name  = "Nomi" 
    -> Memory_back
* [Mashu] 
    ~ pet_name  = "Mashu" 
    -> cave_mouth

-> cave_mouth

== cave_mouth ==
You are at the enterance to a cave. {not torch_pickup:There is a torch on the floor.} The cave extends to the east and west.

You made it to the cave. if only {pet_name} could see you now!

you have {torches} torches
+ [Take the east tunnel] -> east_tunnel
+ [Take the west tunnel] -> west_tunnel
* [Pick up the torch] -> torch_pickup

== east_tunnel ==
You are in the east tunnel. It is very dark, you can't see anything.
* {torches > 0} [Light Torch] -> east_tunnel_lit
+ [Go Back] -> cave_mouth
-> END

== west_tunnel ==
You are in the west
{pet_name == "Mashu": Mashu will hate this place|}
+ [Go Back] -> cave_mouth

-> END
-> cave_mouth_out


/*knot 1
this is knot 1
*/
== cave_mouth_out == 
Borsche got you out of that cave because he has super Spatial awareness which is he always find the way
+ [Wait!!!!!] -> cave_mouth_wait
-> END

/*knot 4
this is knot 4
*/
== cave_mouth_wait ==
~ coins = coins + 200000
Borsche find you a lot of gold coin at west and pack it into the bag for you! now you have {coins} coins. That is alot!!!!

/*knot 2
this is knot 2
*/
-> Memory_back
== Memory_back ==
 You have found your lost memory because Nomi can read your mind.And tell you: You are a handsome student with a cat, you accidentally fell into this cave because Nomi has lost her toys and you try to pick it up
+ [Okay] -> cave_mouth
-> END

=== torch_pickup ===
~ torches = torches + 1
You now have a torch. May it light the way.
* [Go Back] -> cave_mouth
-> END

== east_tunnel_lit ==
The light of your torch glints off of the thousands of coins in the room.
{pet_name == "Mashu":But Mashu will bite you to death because she hate stuff with high-temp|}
* [Use the bag!] -> save_my_ass
-> END

/*knot 3
this is knot 3
*/
== save_my_ass ==
~ coins = coins + 100000
In the bag, there is a lot of Mashu's food to help her calm down, and your finally have space for gold coin. you have {coins} coins now!
->END

