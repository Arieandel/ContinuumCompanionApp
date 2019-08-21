# ContinuumCompanionApp
An iOS Companion app for the Continuum Engine


Continuum Engine Companion App
Team: Khoi Vu, Ariel Andelt, Murat Avartani

Description of the Capstone:

The Continuum Engine Companion App:
Areas of Interest:

Analytics: We want to know which audience is using our app such as their age, region, and country, at the same time we also want to know which page they stay on the most, how many views for a chapter in overall, the rating for each chapter. The way we do this is to make our users become a member of the app. We will create our own registration page or the users can use their Facebook accounts to log in to our app.

Ads Support: We will add the advertisements in our code, and design a specific area that is just for the advertisement and the platform of the advertisement is Google.

Function: In it's current implementation the application is essentially a chat server with our Google Firebase server where unique users can create accounts, log in, and chat with any member on the server. Messages are stored with unique keys for to/from ID's so when users log back in they have a history of messages sent/received.


[ORIGINAL CONCEPT -- INCOMPLETE]
Example Screens:

Check out “Design Idea.png” section.
Values of the App:

As mentioned, the app’s purpose is for the users to enjoy reading our game’s story under our drawings and it is totally free. This means that people have or have not played our game before but just want to read just the story without playing through the game.
Typical path through out the app:

When the user logins in, they will enter the home page, they can then select the story they want to read. In there, they can select the chapter, or if they have read before, they can continue to read the chapter they were reading before by clicking the bottom right button (the button displays the chapter where they left off).

One comic page is displayed in each page, so to continue reading the next page, they can click the “Next” button, otherwise, they can click “Prev” button to go back one page.

The networking components are as follows; Number of players: Version1 -> 2 Players, Version2-> 4 players. Players we cooperate to achieve the goal of the level. If a player chooses single player, then that player can switch between characters anytime. If the player wants so switch between characters while in a multiplayer game, it sends a request to the other client. If he/she accepts, they switch characters with all the statuses that the characters have all position, status and animations will be replicated to other client as well as environmental effects like position and state of the enemies and pickup-able objects.
