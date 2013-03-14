"Delirium" by Steven Hack and Rhys Larkins

Use no scoring.

Part 1 - Home Life

Your bedroom is a room.
The lighter is a thing.  The player carries the lighter.
[this is needed for the gun section - otherwise the player has no means to ignite the gunpowder.
Not sure how to explain its presence.  We need to make the player aware of it.
Maybe it could be in another military section that's a prerequisite for gun?]

Report requesting the score:
	say "Military: [Military Affinity][line break]College: [College Affinity][line break]Moving: [Moving Affinity]".

Part 2 - The Military

Military Affinity is a number that varies.  Military Affinity is 0.

Chapter 1 - Gun 

[it's weird, for all the text in here, this chapter is actually really short.]
Shooting is an action applying to one thing.
Understand "shoot [something]" as shooting.

Instead of shooting when the player holds a gun:
	try attacking the noun.
Instead of shooting when the player does not hold a gun:
	say "Shoot [the noun] with what?"

Section 1 - Falling in

The rifle is in the bedroom.
A gun is a kind of thing.  The rifle is a gun.  Understand "gun" as a gun.

Instead of doing anything with the rifle when Both Sides of the Gun has not happened:
	say "You try [the current action], but as you approach it you instead find yourself falling...";
	move the player to the gun barrel, without printing a room description.

Both Sides of the Gun is a scene.  "[bold type]Darkness.[line break][roman type]You are cramped into a tight, dark space with metal surrounding you in all directions.

Suddenly you hear a deafening bang.

As your ears clear up you hear a cacophany of other noises: thunderous rat-a-tat-a-tats, stamping feet, the occasional yell.  The sounds of a battlefield.

Another gunshot sounds from incredibly nearby.  Moments later, you finally see light."

Both Sides of the Gun begins when the player is in the gun barrel.

When Both Sides of the Gun begins:
	try looking;
	the rifle cocks in two turns from now;
	the rifle fires in three turns from now;
	the girl shoots in four turns from now.

Section 2 - Inside the Gun

[TODO?: maybe this part should be looked over by someone who knows guns]

The gun barrel is a room.  "You are in one end of a rifle barrel.  Nearby, the [hammer] lies still, blocking one end of the barrel.  Out the opening at the other end you can see a [girl] wearing camoflauge and wielding a submachine gun." [camouflage?  i think it's spelled right but I should really check]

[TODO: describe]
The barrel opening is an open door.  It is not openable.  It is outside of the gun barrel.  Through it is the battlefield.

After deciding the scope of the player:
	if the location is the gun barrel, place the Japanese girl in scope.

Instead of examining outside in the gun barrel:
	say "Outside the barrel, you can see only a Japanese girl.";
	try examining the Japanese girl.

Instead of going when the room gone from is the gun barrel:
	say "You can't seem to move very far.  Almost like you don't have legs."

[TODO: description for hammer, gunpowder]
The mass of gunpowder is a thing in the gun barrel.  It has the initial appearance "Next to you is a packed mass of gunpowder."
Understand "powder" as the gunpowder.

The hammer is scenery in the gun barrel.

After taking the gunpowder:
	say "You take the gunpowder, removing it from its place at the hammer's base.".
Understand "remove [gunpowder]" as taking.

Understand "ignite [something]" as burning.

Instead of burning the gunpowder:
	follow the rifle firing rule;
	increase Military Affinity by one.

At the time when the rifle cocks:
	if the player is in the gun barrel, say "You hear a click, and the hammer begins to pull away from you.[line break][line break]At the same time, the Japanese girl raises her gun, pointing it at whoever's holding the gun you're in.".

At the time when the rifle fires:
	if the player is in the gun barrel:
		say "The hammer springs forward and sparks.";
		if the gunpowder is in the gun barrel:
			follow the rifle firing rule;
		otherwise:
			say "However, there is nothing for the spark to ignite.";
			decrease Military Affinity by one.

At the time when the girl shoots:
	if the player is in the gun barrel:
		say "The girl begins firing, and you feel a sense of vertigo as the rifle tilts upwards...[line break]";
		move Jenkins to the battlefield;
		now the enemy is the Japanese girl;
		follow the enter the battlefield rule.

This is the rifle firing rule:
	say "The mass of gunpowder explodes, and you are sent flying out of the rifle.";
	now the Japanese girl is dead;
	now the initial appearance of the Japanese girl is "A Japanese girl lies here, a bullet through her heart.";
	move the Japanese man to the battlefield;
	now the enemy is the Japanese man;
	follow the enter the battlefield rule.
	
This is the enter the battlefield rule:
	now the player carries the rifle;
	now the gunpowder is off-stage;
	move the player to the battlefield;
	the enemy shoots in two turns from now.

Section 3 - Battle

[TODO: describe battlefield]
The battlefield is a room.

[using an adaptation of part of the code from the example "puff of orange smoke"]
A person can be alive or dead.  A person is usually alive.
A body is a kind of thing.  A body is a part of every person.
Setting action variables when the noun is a body which is part of a person (called owner): 
	now the noun is the owner. 
Setting action variables when the second noun is a body which is part of a person (called owner): 
	now the second noun is the owner. 
Understand "corpse" as a body when the item described is part of a dead person.

Jenkins is a person.  Jenkins is dead.  The initial appearance is "Your comrade Jenkins lies fallen here, riddled with bullets."

Before printing the name of an improper-named dead person, say "corpse of a ".
Before printing the name of a proper-named dead person, say "the corpse of ".

[Apparently if you define something as a kind you can make multiple things named the same as the kind.  Good to know.]
[TODO: maybe give these kinds descriptions..]
camoflauge is a kind of thing.  Camoflauge is always wearable.  Understand "camo" as camoflauge.  It is plural-named.
A submachine gun is a kind of gun.

The enemy is a person that varies.

[TODO: describe all these things, and possibly give the people initial appearances.]
The twenty-three year old Japanese girl is a person. She is female.  She is in the battlefield.  She is wearing camoflauge.  She is holding a submachine gun.

The Japanese man is a person.  He is wearing camoflauge.  He is holding a submachine gun.

[TODO: get some text in here.]
[TODO: add an alternate ending.]
Both Sides of the Gun ends when the enemy is dead.
When Both Sides of the Gun ends:
	move the player to the bedroom.

Instead of attacking the enemy when the player holds a gun:
	say "you shoot [the enemy]";
	now the enemy is dead.
Instead of attacking the enemy when the player does not hold a gun:
	say "You'll have to pick up your weapon first."

At the time when the enemy shoots:
	do nothing.

Chapter 2 - Uniform

[TODO: this chapter]

Chapter 3 - Medal

[TODO: this chapter]
The medal is a thing.  It is wearable.  It is in the bedroom.

There is a scene called So Long and Thanks.
So Long and Thanks begins when the player carries the medal.
When So Long and Thanks begins:
	move the player to the awards ceremony.

The awards ceremony is a room.
The funeral is a room.  It is west of the awards ceremony.

Jenkins' grave is a supporter in the funeral.

After putting something on the grave for the first time (this is the paying respect rule):
	if the noun is the medal:
		say "He deserves it more than you.  Good man, Jenkins.";
	if the noun is the lighter:
		say "You always felt you should return it.  He'd never let you, though.";
	if the noun is the rifle:
		say "You won't be needing it anymore.  You're done for good."

Part 3 - College

College Affinity is a number that varies.  College Affinity is 0.

[TODO: most of this part]

Chapter 1 - Textbook

The textbook is a thing in the bedroom.  Understand "book" as the textbook.

Understand "read [textbook]" as examining.
Understand "consult [textbook]" as examining.

Instead of examining the textbook when The More You Know has not happened:
	say "You start reading the textbook, but it makes no sense and is.. just..... so.......... bo........ring...........................................";
	move the player to the library.

The More You Know is a scene.
The More You Know begins when the player is in the library.
When The More You Know begins:
	move the textbook to the library.
The More You Know ends when Table 3.1.1 is empty.
When The More You Know ends:
	move the player to the bedroom;
	let Modified Score be (Test Score  * 3) - 4;
	now College Affinity is (College Affinity + Modified Score).
Test Score is a number that varies.  Test Score is 0.

[TODO: describe library, and computer]
The library is a room.
The testing computer is a person in the library.
[it's a person so Inform directs answers to it.]

Every turn when The More You Know is happening:
	repeat through Table 3.1.1:
		say "The testing computer prints: [bold type][Quiz Question entry][roman type]";
		make no decision.
[this is a little unintuitive; "make no decision" acts as a return statement, so what this does is just prints the first non-blank line.]

Instead of examining the textbook while The More You Know is happening:
	repeat through Table 3.1.1:
		if there is a Chapter entry:
			choose the row with Chapter of Chapter entry from Table 3.1.2;
			say "You find something that looks relevant:[line break][line break][bold type]Chapter [Chapter entry][line break][roman type][Text entry][line break]";
		otherwise:
			say "You cannot find anything relevant in the textbook.";
		stop the action.
[Similarly, this prints the entry in Table 3.1.2 that corresponds to the current row in Table 3.1.1]

Instead of answering the computer that a topic listed in the Table of Quiz Questions when The More You Know is happening:
	let Temp be the Quiz Question entry;
	repeat through Table 3.1.1:
		if Temp is the Quiz Question entry:
			increase Test Score by 1;
			say "The computer responds: [bold type]Correct.[roman type]";
		otherwise:
			say "The computer responds: [bold type]Incorrect.[roman type]";
		blank out the whole row;
		stop the action.
[and this checks if the answer matches the "correct" answer for the current row.]

Instead of answering the computer that when The More You Know is happening:
	say "The computer responds: [bold type]Incorrect.[roman type]";
	repeat through Table 3.1.1:
		blank out the whole row;
		stop the action.
[meanwhile, this block moves to the next row if (as is likely) the player answers with a phrase that is not the answer to any question.]


[would love to allow "Hell, Michigan" but Inform's understand stuff doesn't like commas.  Probably should make a different question then.]
Table 3.1.1 - Quiz Questions
Topic	Quiz Question	Chapter
"Hell/Michigan"	"Where is the center of the universe?"	1
"Forty-two" or "42"	"What do you get when you multiply 6 by 9?"	1
"I feel fine"	"How do you feel?"	--

Understand "Forty-two" or "42" as 42.

Table 3.1.2 - Book entry
Chapter	Text
1	"As everyone knows, the universe runs in base 13.  Using this knowledge, and the recently-discovered edge of the universe behind Gallifrey 412, scientists have calculated the location of the center of the universe.  They were quite surprised to find it to in Hell, Michigan."
[TODO: add more Q/As]

Chapter 2 - Bottle

[TODO: this]

Chapter 3 - Application (or whatever)

[TODO: this]
[also if there was any option that actually has both sides, yanno]

Part 4 - Living on Your Own

Chapter 1 - Rent Contract

Section 1 - Going to the Office

The rent contract is a thing in the bedroom. Understand "contract" as the rent contract.

Understand "read [contract]" as examining.

Instead of examining the rent contract when Making a Commitment has not happened:
	say "You try to understand the legal-ese that the contract was written in, becoming absorbed in trying to understand it all. Soon, you feel as if you've lost track of time and place in trying to understand this ridiculous wording...";
	move the player to the real estate office.

Making a Commitment is a scene.

Making a Commitment begins when the player is in the real estate office.

Section 2 - The Real Estate Office

The real estate office is a room."You find yourself in an office of a real estate agent. In front of you, on a desk, is a pen, and that rent contract.

After having spent considerable time looking through properties, you think you've found the right one. Comfortably near all the major businesses; Decently priced; Has all the amenities you'll need. It almost feels too good to be true."

The pen is an undescribed thing in the real estate office."A normal ink pen. One of the ones you get in a huge package of, like, fifty of them..."

The unsigned contract is an undescribed thing in the real estate office. "The contract for the property you're looking to rent."

Instead of taking the unsigned contract:
	say "There's no reason to take the contract now. You haven't even signed it yet."

The real estate agent is a person in the real estate office. "An old man, who has probably had years of experience selling homes and renting properties behind him. He's staring at you intently, seemingly analyzing your every action."