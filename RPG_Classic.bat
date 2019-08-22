if %reso% EQU 90x35 goto Variables
mode con cols=%mc% lines=%ml%
@echo off
title RPG Dungeon - (Original Hydracor Project)
cls
color 3f
REM If you're reading this comment, I hope you've had an awesome day.






REM Setting variables that will be used later in the game
:Variables
set HPMAX=20
set HP=%HPMAX%

set KEYS=0
set KEYSMAX=4

set POTIONS=0
set POTIONSMAX=4

set PLAYERDAMAGE=2
set MONSTERDAMAGE=4
set MONSTERHEALTH=45
set PlayerGold=0
set WinReward=25

set DungeonRoomSearch=0
set DungeonBedSearch=0


REM The menu that the game will open up to.
REM "echo" allows for text to be displayed.
:Main_Menu
cls
echo ษอออออออออออออออออออออออออป
echo บWelcome to "The Dungeon"!บ
echo ฬอออออออออออออออออออออออออน
echo บ1) Start Adventure       บ
echo บ2) Tips                  บ
echo บ3) Cheats                บ
echo บ4) Exit                  บ
echo ศอออออออออออออออออออออออออผ
echo.
	REM A prompt that allows for user input
	set /p cho=Enter Number Command:
	REM If the user's input matches these specific values, they will be taken to certain parts of the program
	if %cho% == 1 goto Dungeon_Room_Start
	if %cho% == 2 goto Tips
	if %cho% == 3 goto Cheats_Confirm
	if %cho% == 4 goto EXIT
	REM If the user's input doesn't match any of the above values then this screen will simply get repeated to prevent crashing
	goto Main_Menu



REM The tips screen
:Tips
cls
echo ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo บWhen typing a multi-word command, DO NOT put spaces.                      บ
echo บInstead, put an underscore. Alternatively, you can type words alltogether.บ
echo บFor example: "searchroom" instead of "search_room"                        บ
echo บ......................................................................... บ
echo บIf you get stuck, try to think of places that you haven't explored yet... บ
echo ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo 1) Back To Main Menu
echo.
	set /p cho=Enter Number Command:
	if %cho% == 1 goto Main_Menu
	goto Tips



REM Asking people if they REALLY want to see the cheats
:Cheats_Confirm
cls
echo ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo บThe cheats section will show you the sequence of commands that you need to enterบ
echo บin order to get certain game endings.                                           บ
echo บIf you're stuck, this can help, but can also ruin the experience.               บ
echo บAre you sure you would like to advance?                                         บ
echo ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo.
echo 1) Hell Yah!
echo 2) I Change My Mind...
echo.
	set /p cho=Enter Number Command:
	if %cho% == 1 goto Cheats
	if %cho% == 2 goto Main_Menu
	goto Cheats_Confirm




REM The cheats screen
:Cheats
cls
echo ษออออออออออออออออออออป
echo บBad Ending:         บ
echo บsearch              บ
echo บsearch_bed          บ
echo บopen_door           บ
echo บwalk_left           บ
echo บcontinue_walking    บ
echo ฬออออออออออออออออออออน
echo บGood Ending:        บ
echo บsearch              บ
echo บsearch_bed          บ
echo บopen_door           บ
echo บwalk_right          บ
echo ศออออออออออออออออออออผ
echo.
echo 1) Back To Main Menu
echo.
	set /p cho=Enter Number Command:
	if %cho% == 1 goto Main_Menu
	goto Cheats





REM The start of the game
:Dungeon_Room_Start
cls
color 0f
REM If the player has already searched the room, it will take them to a different possition in the story
if %DungeonRoomSearch% EQU 1 goto Dungeon_Room_Search_Return
echo ษอออออออออออออออออออป
			REM Putting a variable name in between two percent signs allows for the variable's value to be shown when put on an "echo" line
echo บHealth: %HP%/%HPMAX%      บ
echo บHealth Potions: %POTIONS%/%POTIONSMAX%บ
echo บKeys Found: %KEYS%/%KEYSMAX%    บ
echo ศอออออออออออออออออออผ
echo.
echo You wake up off of a cushiony, but firm bed in a dark, seemingly empty stone room, shivering.
echo You have no possesions...
echo.
	set /p cho=Enter Command:
	if %cho% == search_room goto Dungeon_Room_Search_Verify
	if %cho% == searchroom goto Dungeon_Room_Search_Verify
	if %cho% == search goto Dungeon_Room_Search_Verify
	if %cho% == look_around goto Dungeon_Room_Search_Verify
	if %cho% == lookaround goto Dungeon_Room_Search_Verify
	goto Dungeon_Room_Start










:Dungeon_Room_Search_Verify
if %DungeonRoomSearch% EQU 0 goto Dungeon_Room_Search
cls
echo You have already searched the room.
echo.
echo Enter "Okay" to advance
echo.
	set /p cho=Enter Command:
	if %cho% == Okay goto Dungeon_Room_Start
	if %cho% == okay goto Dungeon_Room_Start
	goto Dungeon_Room_Search_Verify

:Dungeon_Room_Search
set DungeonRoomSearch=1
cls
color f0
echo ษอออออออออออออออออออป
echo บHealth: %HP%/%HPMAX%      บ
echo บHealth Potions: %POTIONS%/%POTIONSMAX%บ
echo บKeys Found: %KEYS%/%KEYSMAX%    บ
echo ศอออออออออออออออออออผ
echo.
echo You search the room and find a torch and an interestingly thick sweater.
echo You are warm and can now see. You are in a dungeon cell with a door made of iron bars.
echo The bed that you were laying on is worn and looks like it has been used by many other people.
echo.
	set /p cho=Enter Command:
	if %cho% == open_door goto Dungeon_Room_Open_Door_Verify
	if %cho% == opendoor goto Dungeon_Room_Open_Door_Verify
	if %cho% == unlock_door goto Dungeon_Room_Open_Door_Verify
	if %cho% == unlockdoor goto Dungeon_Room_Open_Door_Verify
	if %cho% == search_room goto Dungeon_Room_Search_Verify
	if %cho% == searchroom goto Dungeon_Room_Search_Verify
	if %cho% == search goto Dungeon_Room_Search_Verify
	if %cho% == look_around goto Dungeon_Room_Search_Verify
	if %cho% == lookaround goto Dungeon_Room_Search_Verify
	if %cho% == search_bed goto Dungeon_Bed_Search_Verify
	if %cho% == searchbed goto Dungeon_Bed_Search_Verify
	goto Dungeon_Room_Search
	
		:Dungeon_Room_Search_Return
		cls
		color f0
		echo ษอออออออออออออออออออป
		echo บHealth: %HP%/%HPMAX%      บ
		echo บHealth Potions: %POTIONS%/%POTIONSMAX%บ
		echo บKeys Found: %KEYS%/%KEYSMAX%    บ
		echo ศอออออออออออออออออออผ
		echo.
		echo You are sitting in a dungeon room with a bed.
		echo You have a sweater on and are holding a torch.
		echo There is a door to the room, but it is locked.
		echo.
			set /p cho=Enter Command:
			if %cho% == open_door goto Dungeon_Room_Open_Door_Verify
			if %cho% == opendoor goto Dungeon_Room_Open_Door_Verify
			if %cho% == unlock_door goto Dungeon_Room_Open_Door_Verify
			if %cho% == unlockdoor goto Dungeon_Room_Open_Door_Verify
			if %cho% == search_room goto Dungeon_Room_Search_Verify
			if %cho% == searchroom goto Dungeon_Room_Search_Verify
			if %cho% == search goto Dungeon_Room_Search_Verify
			if %cho% == look_around goto Dungeon_Room_Search_Verify
			if %cho% == lookaround goto Dungeon_Room_Search_Verify
			if %cho% == search_bed goto Dungeon_Bed_Search_Verify
			if %cho% == searchbed goto Dungeon_Bed_Search_Verify
			goto Dungeon_Room_Search_Return


			
			
			
:Dungeon_Bed_Search_Verify
if %DungeonBedSearch% EQU 0 goto Dungeon_Bed_Search
cls
echo. You have already searched the bed.
echo.
echo.
echo Enter "Okay" to advance
echo.
	set /p cho=Enter Command:
	if %cho% == Okay goto Dungeon_Room_Start
	if %cho% == okay goto Dungeon_Room_Start
	if %cho% == advance goto Dungeon_Room_Start
	goto Dungeon_Bed_Search_Verify
			
			
			
:Dungeon_Bed_Search
cls
set /a KEYS=%KEYS%+1
set DungeonBedSearch=1
echo You search the bed and find a key.
echo.
echo.
echo Enter "Okay" to advance
echo.
	set /p cho=Enter Command:
	if %cho% == Okay goto Dungeon_Room_Start
	if %cho% == okay goto Dungeon_Room_Start
	if %cho% == advance goto Dungeon_Room_Start
	goto Dungeon_Bed_Search
			
			
			
			
			

:Dungeon_Room_Open_Door_Verify
REM If the players key count is greater than or equal to 1,
REM it will allow the player to continue into the hall. 
REM Otherwise they will be told that they have to find a key.
if %KEYS% GEQ 1 goto Dungeon_Hall
cls
echo You don't have a key. There is one place in the room that
echo you have not looked under yet...
echo.
echo Enter "Okay" to advance
echo.
	set /p cho=Enter Command:
	if %cho% == Okay goto Dungeon_Room_Start
	if %cho% == okay goto Dungeon_Room_Start
	if %cho% == advance goto Dungeon_Room_Start
	goto Dungeon_Room_Open_Door_Verify


	
	
	
	
	
	
	
	
	
	
	
	


:Dungeon_Hall
cls
color 0f
echo ษอออออออออออออออออออป
echo บHealth: %HP%/%HPMAX%      บ
echo บHealth Potions: %POTIONS%/%POTIONSMAX%บ
echo บKeys Found: %KEYS%/%KEYSMAX%    บ
echo ศอออออออออออออออออออผ
echo.
echo You walk out of the cell and into the hall.
echo Your torch is the only source of light in the entire hall...
echo You can only walk left or right.
echo When you look to your left you see a bright white light pulsating...
echo When you look to your right you see a dark red light with faint shadows dancing...
echo.
	set /p cho=Enter Command:
	if %cho% == walk_left goto Walk_Left
	if %cho% == walkleft goto Walk_Left
	if %cho% == left goto Walk_Left
	if %cho% == walk_right goto Walk_Right
	if %cho% == walkright goto Walk_Right
	if %cho% == right goto Walk_Right
	goto Dungeon_Hall
	
	
	
		:Walk_Left
		cls
		color 70
		echo ษอออออออออออออออออออป
		echo บHealth: %HP%/%HPMAX%      บ
		echo บHealth Potions: %POTIONS%/%POTIONSMAX%บ
		echo บKeys Found: %KEYS%/%KEYSMAX%    บ
		echo ศอออออออออออออออออออผ
		echo.
		echo You walk to the left and pass by a vase.
		echo The light at the end of the hall is getting brighter.
		echo.
		echo Enter "Continue_Walking" to advance
		echo.
			set /p cho=Enter Command:
			if %cho% == continue_walking goto Continue_Walking_Left
			if %cho% == continuewalking goto Continue_Walking_Left
			if %cho% == Continue_Walking goto Continue_Walking_Left
			if %cho% == search_vase goto Vase_Search_Verify
			if %cho% == searchvase goto Vase_Search_Verify
			if %cho% == look_in_vase goto Vase_Search_Verify
			if %cho% == lookinvase goto Vase_Search_Verify
			goto Walk_Left
			
				:Vase_Search_Verify
				cls
				set /a POTIONS=%POTIONS%+1
				echo You search the vase and find a Healing Potion.
				echo.
				echo Enter "Okay" to advance
				echo.
					set /p cho=Enter Command:
					if %cho% == Okay goto Walk_Left_Return
					if %cho% == okay goto Walk_Left_Return
					goto Walk_Left
					
					
					
					
					
		:Walk_Left_Return
		cls
		color 70
		echo ษอออออออออออออออออออป
		echo บHealth: %HP%/%HPMAX%      บ
		echo บHealth Potions: %POTIONS%/%POTIONSMAX%บ
		echo บKeys Found: %KEYS%/%KEYSMAX%    บ
		echo ศอออออออออออออออออออผ
		echo.
		echo You are standing in the middle of the hallway
		echo There is a bright light at the end of the hall that seemingly gets
		echo brighter the longer you stare at it.
		echo.
		echo Enter "Continue_Walking" to advance
		echo.
			set /p cho=Enter Command:
			if %cho% == continue_walking goto Continue_Walking_Left
			if %cho% == continuewalking goto Continue_Walking_Left
			if %cho% == Continue_Walking goto Continue_Walking_Left
			goto Walk_Left_Return
			
			:Continue_Walking_Left
			cls
			color 70
			echo ษอออออออออออออออออออป
			echo บHealth: %HP%/%HPMAX%      บ
			echo บHealth Potions: %POTIONS%/%POTIONSMAX%บ
			echo บKeys Found: %KEYS%/%KEYSMAX%    บ
			echo ศอออออออออออออออออออผ
			echo.
			echo You walk further down the hallway with the bright white light...
			REM "ping localhost -n 4 >nul" pauses the program for two seconds. I put these here to allow the player enough time to read the text before it advances
			ping localhost -n 4 >nul
			echo You stop walking to take a breath, but you notice that you are still moving
			echo towards the light...
			ping localhost -n 5 >nul
			color f0
			echo A magical force is pulling you towards the light being...
			ping localhost -n 4 >nul
			cls
			set POTIONS=0
			set KEYS=0
			echo ษอออออออออออออออออออป
			echo บHealth: %HP%/%HPMAX%      บ
			echo บHealth Potions: %POTIONS%/%POTIONSMAX%บ
			echo บKeys Found: %KEYS%/%KEYSMAX%    บ
			echo ศอออออออออออออออออออผ
			echo.
			echo You drop everything you have in a panic and try to run away, but the force is so strong that it feels as if
			echo your body is being pulled towards the light...
			ping localhost -n 6 >nul
			cls
			echo ษอออออออออออออออออออป
			echo บHealth: %HP%/%HPMAX%      บ
			echo บHealth Potions: %POTIONS%/%POTIONSMAX%บ
			echo บKeys Found: %KEYS%/%KEYSMAX%    บ
			echo ศอออออออออออออออออออผ
			color 0f
			echo You stop fighting the force and close your eyes as to not let the bright light damage them...
			ping localhost -n 5 >nul
			cls
			set /a HP-= 5
			echo ษอออออออออออออออออออป
			echo บHealth: %HP%/%HPMAX%      บ
			echo บHealth Potions: %POTIONS%/%POTIONSMAX%บ
			echo บKeys Found: %KEYS%/%KEYSMAX%    บ
			echo ศอออออออออออออออออออผ
			echo.
			color 0c
			echo You then feel a sharp pain in your skull...
			ping localhost -n 4 >nul
			cls
			REM The monster damages the player
			set /a HP-= 10
			echo ษอออออออออออออออออออป
			echo บHealth: %HP%/%HPMAX%      บ
			echo บHealth Potions: %POTIONS%/%POTIONSMAX%บ
			echo บKeys Found: %KEYS%/%KEYSMAX%    บ
			echo ศอออออออออออออออออออผ
			echo.
			echo Then you slowly begin to feel as if your skin is being pulled at random parts of your body...
			ping localhost -n 4 >nul
			cls
			set /a HP-= 4
			echo ษอออออออออออออออออออป
			echo บHealth: %HP%/%HPMAX%      บ
			echo บHealth Potions: %POTIONS%/%POTIONSMAX%บ
			echo บKeys Found: %KEYS%/%KEYSMAX%    บ
			echo ศอออออออออออออออออออผ
			echo.
			echo You scream in pain, but cannot hear your own screams...
			ping localhost -n 4 >nul
			cls
			echo You open your eyes...
			ping localhost -n 4 >nul
			echo and see a scary looking creature staring back at you...
			ping localhost -n 4 >nul
			echo ...
			ping localhost -n 2 >nul
			echo ...
			ping localhost -n 2 >nul
			cls
			echo "YOU ARE MINE" it says in a deep grouchy voice...
			ping localhost -n 4 >nul
			goto Game_Over





















:Walk_Right
cls
echo ษอออออออออออออออออออป
echo บHealth: %HP%/%HPMAX%      บ
echo บHealth Potions: %POTIONS%/%POTIONSMAX%บ
echo บKeys Found: %KEYS%/%KEYSMAX%    บ
echo ศอออออออออออออออออออผ
echo.
echo You start to walk to the right, when suddenly you hear a violent screech coming
echo from behind you...
ping localhost -n 4 >nul
cls
color 0c
echo Startled, you turn around to see a large red monster with glowing yellow eyes and countless arms
echo charging towards you from the other side of the hallway.
ping localhost -n 6 >nul
cls
echo "YOU WILL NOT ESCAPE MY GRASP!!?!" Bellowed the monster
ping localhost -n 4 >nul
cls
echo This was enough motivation for you to burst into a full sprint away from the monster.
ping localhost -n 4 >nul
cls
echo The monster is gaining on you fast
ping localhost -n 2 >nul
echo You begin to hear heavy footsteps almost directly behind you..
ping localhost -n 4 >nul
echo Just when you think it is about to catch you, a glowing red door apears in front of you.
ping localhost -n 4 >nul
cls
echo You burst through the door as it imidiately closes behind you, blocking the monster 
echo just in time for it to smash itself in to the door.
ping localhost -n 6 >nul
cls
color f0
echo You catch your breath...
ping localhost -n 4 >nul
echo You notice that you are standing on clouds...
ping localhost -n 4 >nul
echo You take a moment to look at your surroindings...
ping localhost -n 4 >nul
echo You start to hear birds chirping as they fly around in the air aimlessly.
echo You start to feel at ease.
ping localhost -n 4 >nul
echo You then look straight, and see a beautiful woman in the distance...
ping localhost -n 4 >nul
cls
echo THE END.
ping localhost -n 4 >nul








