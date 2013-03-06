"Delirium" by Steven Hack and Rhys Larkins

Part 1 - Home Life

Your bedroom is a room.
The lighter is a thing.  The player carries the lighter.

Part 2 - The Military

Military Affinity is a number that varies.
When the entire game begins, now Military Affinity is 0.

Chapter 1 - Gun 

Section 1 - Falling in

The rifle is in the bedroom.  Understand "gun" as the rifle.

Instead of doing anything with the rifle when Both Sides of the Gun has not happened:
	say "You try [the current action], but as you approach it you instead find yourself falling...";
	move the player to the gun barrel, without printing a room description.

Both Sides of the Gun is a scene.  "You are cramped into a tight, dark space with metal surrounding you in all directions.

Suddenly you hear a deafening bang.

As your ears begin to clear up you hear a cacophany: sounds of thunder, of yelling and stamping feet.  You hear the sounds of a battlefield.

Another gunshot sounds from incredibly close.  Moments later, you finally see light."

Both Sides of the Gun begins when the player is in the gun barrel.

When Both Sides of the Gun begins:
	try looking;
	the rifle cocks in one turn from now;
	the rifle fires in two turns from now;
	the girl shoots in three turns from now.

Section 2 - Inside the Gun

[maybe this part should be looked over by someone who knows guns]

The gun barrel is a room.  "You are in one end of a rifle barrel.  Nearby, the [hammer] lies still, blocking one end of the barrel.  Out the opening at the other end you can see the face of a twenty-three year old Japanese girl wearing camoflauge." [i think that's spelled right now...]

The mass of gunpowder is a thing in the gun barrel.  It has the initial appearance "Next to you is a packed mass of gunpowder."
Understand "powder" as the gunpowder.

The hammer is scenery in the gun barrel.

Instead of taking the gunpowder:
	say "You remove the gunpowder from .";
	follow the rifle firing rule.

Understand "ignite [something]" as burning.

Instead of burning the gunpowder:
	follow the rifle firing rule.

At the time when the rifle cocks:
	if the player is in the gun barrel, say "You hear a click, and the hammer begins to pull away from you.".

At the time when the rifle fires:
	if the player is in the gun barrel:
		say "The hammer springs forward and sparks.";
		follow the rifle firing rule.

At the time when the girl shoots:
	if the player is in the gun barrel:
		do nothing. [yet.]

This is the rifle firing rule:
	say "The mass of gunpowder explodes, and you are sent flying out of the rifle.";
	now the player carries the rifle;
	move the player to the battlefield.  [this should actually use the battlefield, or whatever]

Section 3 - Battle

The battlefield is a room.

Part 3 - College

Chapter 1 - Textbook

The textbook is a thing in the bedroom.  Understand "book" as the textbook.

Understand "read [textbook]" as examining.

Instead of examining the textbook when The More You Know has not happened:
	say "You start reading the textbook, but it makes no sense and is.. just..... so.......... bo........ring...........................................";
	move the player to the library.

The More You Know is a scene.

The library is a room.