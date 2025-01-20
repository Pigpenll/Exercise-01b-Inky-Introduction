/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 * Basic Choices
 * Knot structure
 - Recurring choices
 - Conditionals in descriptions
 - Conditionals in choices
 
 In the assignment:
 - Add four more knots (and feel free to change any of the example text, this is YOUR story)
 - Add at least one more conditional
*/


/* brackets make it NOT repeat back to you the choice */
/* + means that the choice may be repeated, * does not repeat */

-> firstRoom

== firstRoom ==
You find yourself in an nearly empty room. {not lightPickup: Ahead of you there is a table, with a black flashlight sitting on top of it. }{not leftRoom: To the left is a slightly ajar door, revealing another room. |There is another room to the left. }Behind you is a winding staircase leading into darkness.
+[Go to the left room.] You push open the door and enter the left room.
-> leftRoom
+[Go down the staircase.]
-> downstairs
*[Pick up the flashlight.]
-> lightPickup

== leftRoom ==
The room is in complete disarray, but it seems to be someone's bedroom.
*[Inspect the bed.]
-> bed
*[Inspect the dresser.]
->dresser
*[Inspect the painting.]
->painting
+[Go Back.]
->firstRoom
-> END


== painting ==
You take a closer look at the painting hung on the wall. It portrays a young lady, looking off in the distance over your shoulder. 
*[Take a closer look]
->painting2

== painting2 ==
You notice smudges along the wall behind the painting. Following the direction of the smudges, you swing the painting to the side to reveal a small cubby carved out of the wall. 
In this cubby sits a wallet, some batteries, and a key.
*[Take them all.]
->leftRoom

== bed ==
You sift your hands through the sheets and blankets hoping to find something. Your hand eventually feels a small bump under the sheet.
*[Look under the sheet] You lift the sheet to find a cockroach. You jump back as it skitters away.
->leftRoom

==dresser==
You fling each drawer open in search for clues or something useful. You don't seem to find anything, but wait...
*[...]
->dresser2

== dresser2 ==
You find several twenty dollar bills rolled together with a rubber band underneath some socks.
*[Pocket the money.]
->leftRoom


== downstairs ==
You begin going down the stairs and darkness surrounds you. It would be a bad idea to continue without a light.
+[Go Back.]
->firstRoom
*[Go Forward.] You cannot see. You end up slipping on one step, and you tumble down the stairs. Your consciousness begins to fade...
->END
+{lightPickup} [Use Flashlight.]
->lightAttempt

== lightAttempt ==
You attempt to turn on the flashlight but it seems to not be working. 
*{painting2} [Insert Batteries.]
->litRoom
+[Go Back.]
->firstRoom


== lightPickup ==
You pick up the flashlight.
-> firstRoom


== litRoom ==
The staircase is illuminated as you continue down the stairs. A short hallway sits at the end of the stairs, with a door at the end.
*[Go through the door.]
->exit

== exit ==
You insert the key into the door to unlock it. You slowly swing the door open and you are greeted by the warmth of the sun. A vast field stands before you, the grass blowing softly in the breeze. You've escaped.
->END

/*
== leftchoice ==
You go left.
* {torchpickup} [Use torch]
-> leftlit
+[Go Back]
-> testoption

== rightchoice ==
You go right.
+[Go Back]
-> testoption

=== torchpickup ===
You picked up the torch.
+[Go Back]
-> testoption

== leftlit ==
The light reveals a bunch of candy!
->END
*/