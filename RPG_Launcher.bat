@echo off
mode con cols=65 lines=34
title RPG Launcher - Version 1.0

if not exist "launcher_options.bat" (
set token=0

set SI=LOCKED
set BC=LOCKED
set IC=LOCKED

set cc=0f
set mc=125
set ml=50
set losc=ON
set tutorials=ON
set music=ON
set reso=125x50
)
call launcher_options.bat

cls
color %cc%
echo                  �������������������������ͻ
echo                  �         LOADING         �
echo                  �������������������������ͼ
ping localhost -n 2 >nul

cls
color %cc%
echo                  �������������������������ͻ
echo                  �         LOADING.        �
echo                  �������������������������ͼ
ping localhost -n 2 >nul

:music
if %music% EQU OFF goto save
start menu_music.mp3



:save
(
echo set token=%token%

echo set SI=%SI%
echo set BC=%BC%
echo set IC=%IC%

echo set cc=%cc%
echo set mc=%mc%
echo set ml=%ml%
echo set losc=%losc%
echo set tutorials=%tutorials%
echo set music=%music%
echo set reso=%reso%
)>launcher_options.bat

:menu
color %cc%
cls
echo Hello and welcome to the 'RPG Launcher'!
echo.
echo 1) Start RPG Clicker (Adventure Mode)    *NEW GAMEMODE*
echo 2) Start RPG Clicker (Endless Mode)      *NEW GAMEMODE*
echo 3) Start RPG Dungeon (Original Hydracor Project)
echo 4) Cheat Shop
echo 5) Settings
echo 6) Exit
echo.
echo.
echo  ����������������������������������������ͻ �����������������ͻ
echo  �            NEWS AND EVENTS           � �    OVERVIEW   �
echo  ����������������������������������������͹ �����������������͹
echo  �            NEW GAMEMODES:              � �    NEW ITEMS:   �
echo  �-RPG Dungeon Adventure and Endless      � �-Healing potion  �
echo  � gamemodes offer a different experience.� �-Chests and Keys �
echo  � Give them a try!                       � �-Artifacts       �
echo  �                                        � �                 �
echo  �              NEW ITEMS:                � �    NEW SHOP:    �
echo  �-Healing potions: You can now heal      � �-Pawn Shop       �
echo  � yourself during battle.                � �                 �
echo  �                                        � �  NEW GAMEMODES: �
echo  �-Chests and keys: After killing 15      � �-Adventure Mode  �
echo  � monsters, you will gain a chest.       � �-Endless Mode    �
echo  � Careful notto die or the streak        � �                 �
echo  � resets! (Adventure Mode Only)          � �  NEW OPTIONS:   �
echo  �                                        � �-Loading Screens �
echo  �-Artifacts: After every battle, you will� �-Tutorials       �
echo  � have a chance at finding an artifact,  � �                 �
echo  � which you can sell for cash at the all � �                 �
echo  � new pawn shop. (Adventure Mode Only)   � �                 �
echo  ����������������������������������������ͼ �����������������ͼ
echo.
	set /p cho=
	if %cho% == 1 goto call1
	if %cho% == 2 goto call2
	if %cho% == 3 goto call3
	if %cho% == 4 goto shop
	if %cho% == 5 goto settings
	if %cho% == 6 goto exit
	goto menu

:exit
echo Closing the launcher...
ping localhost -n 3 >nul
taskkill /im wmplayer.exe
exit
goto exit








:shop
cls
echo ������������������������������ͻ
echo �Welcome to the cheat shop!    �
echo.������������������������������͹
echo  Tokens: %token%
echo.�                              �
echo �    Adventure mode cheats:    �
echo �1) Starting Items             �
echo �2) Infinite Bank Capacity     �
echo �3) Infinite Inventory Capacity�
echo �4) Back                       �
echo ������������������������������ͼ
echo.
echo Obtain tokens by playing the game!
echo.
	set /p cho=
	if %cho% == 1 goto SI
	if %cho% == 2 goto BC
	if %cho% == 3 goto IC
	if %cho% == 4 goto save
	goto shop





:SI
cls
echo ��������������������������������������������������ͻ
echo �Starting items:                                   �
echo �Gives you $20, 1 chest + key, and 1 healing potion�
echo �upon starting a new game.                         �
echo.��������������������������������������������������͹
echo �1) Purchase: 25 Tokens                            �
echo �2) Cancel                                         �
echo ��������������������������������������������������ͼ
echo.
	set /p cho=
	if %cho% == 1 goto SIPfail
	if %cho% == 2 goto shop
	goto SI

:SIPfail
if %SI% EQU UNLOCKED goto SIPfail2
if %token% GEQ 25 goto SIP
cls
echo Sorry, you dont have enough tokens!
pause>nul
goto SI


:SIPfail2
cls
echo You already have this cheat unlocked!
pause>nul
goto shop




:SIP
set /a number= 25
set /a number=%number%
set /a token=%token%-%number%

set SI=UNLOCKED
cls
echo You have unlocked starting items for adventure mode!
pause>nul
goto shop















:BC
cls
echo ��������������������������������������������������ͻ
echo �Infinite Bank Capacity:                           �
echo �Allows you to put as much money in the bank       �
echo �as you would like.                                �
echo.��������������������������������������������������͹
echo �1) Purchase: 50 Tokens                            �
echo �2) Cancel                                         �
echo ��������������������������������������������������ͼ
echo.
	set /p cho=
	if %cho% == 1 goto BCPfail
	if %cho% == 2 goto shop
	goto BC

:BCPfail
if %BC% EQU UNLOCKED goto BCPfail2
if %token% GEQ 50 goto BCP
cls
echo Sorry, you dont have enough tokens!
pause>nul
goto BC


:BCPfail2
cls
echo You already have this cheat unlocked!
pause>nul
goto shop




:BCP
set /a number= 50
set /a number=%number%
set /a token=%token%-%number%

set BC=UNLOCKED
cls
echo You have unlocked infinite bank capacity for adventure mode!
pause>nul
goto shop














:IC
cls
echo ��������������������������������������������������ͻ
echo �Infinite Inventory Capacity:                      �
echo �Allows you to hold as manny things                �
echo �as you would like.                                �
echo.��������������������������������������������������͹
echo �1) Purchase: 50 Tokens                            �
echo �2) Cancel                                         �
echo ��������������������������������������������������ͼ
echo.
	set /p cho=
	if %cho% == 1 goto ICPfail
	if %cho% == 2 goto shop
	goto IC

:ICPfail
if %IC% EQU UNLOCKED goto ICPfail2
if %token% GEQ 50 goto ICP
cls
echo Sorry, you dont have enough tokens!
pause>nul
goto IC


:ICPfail2
cls
echo You already have this cheat unlocked!
pause>nul
goto shop




:ICP
set /a number= 50
set /a number=%number%
set /a token=%token%-%number%

set IC=UNLOCKED
cls
echo You have unlocked infinite bank capacity for adventure mode!
pause>nul
goto shop

































:settings
cls
echo ��������������������ͻ
echo �      Settings      �
echo ��������������������͹
echo �1) Launcher Options �
echo �2) Game Options     �
echo.�                    �
echo �3) Back             �
echo ��������������������ͼ
echo.
	set /p cho=
	if %cho% == 1 goto lo
	if %cho% == 2 goto go
	if %cho% == 3 goto save
	goto lo





:lo
if %music% EQU OFF taskkill /im wmplayer.exe
cls
echo ��������������������ͻ
echo �  Launcher Options  �
echo ��������������������͹
echo �1) Launcher Color   �
echo �2) Display Save data�
echo �3) Menu Music       �
echo �                    �
echo �4) Back             �
echo ��������������������ͼ
	set /p cho=
	if %cho% == 1 goto color
	if %cho% == 2 goto display
	if %cho% == 3 goto musicop
	if %cho% == 4 goto settings
	goto lo






:go
cls
echo ��������������������ͻ
echo �    Game Options    �
echo ��������������������͹
echo �1) Window Resolution�
echo �2) Loading screens  �
echo �3) Tutorials        �
echo �                    �
echo �4) Back             �
echo ��������������������ͼ
	set /p cho=
	if %cho% == 1 goto res
	if %cho% == 2 goto loadingop
	if %cho% == 3 goto tutorials
	if %cho% == 4 goto settings
	goto go










:musicop
cls
echo ������������������������������������������ͻ
echo  Menu Music: %music%                     
echo.������������������������������������������͹
echo �1) Enable music                           �
echo �2) Diable music                           �
echo �3) Replay Song                            �
echo �                                          �
echo �4) Back                                   �
echo.������������������������������������������͹
echo �Note: You must restart the launcher for   �
echo �this to take effect.                      �
echo.������������������������������������������ͼ
	set /p cho=
	if %cho% == 1 set music=ON
	if %cho% == 2 goto musicoff
	if %cho% == 3 goto replay
	if %cho% == 4 goto lo
	goto musicop


:musicoff
set music=OFF
taskkill /im wmplayer.exe
goto musicop



:replay
if %music% EQU OFF goto replayfail
start menu_music.mp3
goto musicop

:replayfail
cls
echo You can not replay the music because the music is off.
pause>nul
goto musicop











:tutorials
cls
echo ������������������������������������������ͻ
echo  Tutorial: %tutorials%                     
echo.������������������������������������������͹
echo �1) Enable tutorial                        �
echo �2) Diable tutorial                        �
echo �3) Back                                   �
echo.������������������������������������������͹
echo �Note: This only applies to "Endless Mode".�
echo.������������������������������������������ͼ
	set /p cho=
	if %cho% == 1 goto info
	if %cho% == 2 set tutorials=OFF
	if %cho% == 3 goto go
	goto tutorials



:info
echo The tutorial will activate after
echo starting a new game
ping localhost -n 3 >nul
set tutorialS=ON
goto tutorials








:loadingop
cls
echo ��������������������������������������������ͻ
echo  Loading Screens: %losc%
echo.��������������������������������������������͹
echo �1) Enable loading screens                   �
echo �2) Disable loading screens                  �
echo �3) Back                                     �
echo.��������������������������������������������͹
echo �NOTE: This only applies to "Adventure Mode".�
echo ��������������������������������������������ͼ
	set /p cho=
	if %cho% == 1 set losc=ON
	if %cho% == 2 set losc=OFF
	if %cho% == 3 goto go
	goto loadingop











:res
cls
echo ��������������������������������������������ͻ
echo  CURRENT RESOLUTION: %reso%
echo.��������������������������������������������͹
echo �1) 90x35 (Low Quality)                      �
echo �2) 125x50                                   �
echo �3) 165x60                                   �
echo �4) 180x70                                   �
echo �5) 238x83 (Full Screen)                     �
echo.�                                            �
echo �6) Back                                     �
echo.�                                            �
echo ��������������������������������������������͹
echo � NOTE: This does not apply to the launcher. �
echo ��������������������������������������������ͼ
echo.
	set /p cho=
	if %cho% == 1 goto res1
	if %cho% == 2 goto res2
	if %cho% == 3 goto res3
	if %cho% == 4 goto res4
	if %cho% == 5 goto res5
	if %cho% == 6 goto go
	goto res

:res1
cls
set mc=90
set ml=35
set reso=90x35
echo Resolution has been set!
pause>nul
goto res

:res2
cls
set mc=125
set ml=50
set reso=125x50
echo Resolution has been set!
pause>nul
goto res

:res3
cls
set mc=165
set ml=60
set reso=165x60
echo Resolution has been set!
pause>nul
goto res

:res4
cls
set mc=200
set ml=70
set reso=180x70
echo Resolution has been set!
pause>nul
goto res

:res5
cls
set mc=238
set ml=83
set reso=Full_Screen
echo Resolution has been set!
pause>nul
goto res





:color
color %cc%
cls
echo.��������������ͻ  ������������ͻ
echo �REGULAR COLORS�  �SOLID COLORS�
echo.��������������ͼ  ������������ͼ
echo 1) Blue           2) Blue
echo 3) Green          4) Green
echo 5) Aqua           6) Aqua
echo 7) Red            8) Red
echo 9) Purple         10) Purple
echo 11) Yellow        12) Yellow
echo 13) White
echo.
echo �������������ͻ
echo �EXOTIC COLORS�
echo �������������ͼ
echo 14) Fire Cracker
echo 15) Hot Pink
echo 16) Bodega
echo 17) Under water
echo.
echo 18) Back
echo.
	set /p cho=
	if %cho% == 1 goto color1
	if %cho% == 2 goto color2
	if %cho% == 3 goto color3
	if %cho% == 4 goto color4
	if %cho% == 5 goto color5
	if %cho% == 6 goto color6
	if %cho% == 7 goto color7
	if %cho% == 8 goto color8
	if %cho% == 9 goto color9
	if %cho% == 10 goto color10
	if %cho% == 11 goto color11
	if %cho% == 12 goto color12
	if %cho% == 13 goto color13
	if %cho% == 14 goto color14
	if %cho% == 15 goto color15
	if %cho% == 16 goto color16
	if %cho% == 17 goto color17
	if %cho% == 18 goto lo
	goto color

:color1
set cc=9
goto color

:color2
set cc=19
goto color

:color3
set cc=a
goto color

:color4
set cc=2a
goto color

:color5
set cc=b
goto color

:color6
set cc=3b
goto color

:color7
set cc=c
goto color

:color8
set cc=4c
goto color

:color9
set cc=d
goto color

:color10
set cc=5d
goto color

:color11
set cc=e
goto color

:color12
set cc=6e
goto color

:color13
set cc=0f
goto color

:color14
set cc=ce
goto color

:color15
set cc=d9
goto color

:color16
set cc=60
goto color

:color17
set cc=8b
goto color


:call1
if not exist "RPG_Adventure.bat" (
cls
echo ����������������������������������������������������ͻ
echo � Please make sure that the "RPG_Adventure.bat" file �
echo �    along with the launcher file are in the same    �
echo �              directory and try again.              �
echo ����������������������������������������������������ͼ
echo.
pause>nul
goto menu
)
cls
echo                   �������������������������ͻ
echo                   �         LOADING         �
echo                   �������������������������ͼ
ping localhost -n 2 >nul

cls
echo                   �������������������������ͻ
echo                   �         LOADING.        �
echo                   �������������������������ͼ
ping localhost -n 2 >nul

cls
echo                   �������������������������ͻ
echo                   �         LOADING..       �
echo                   �������������������������ͼ
ping localhost -n 2 >nul

cls
echo                   �������������������������ͻ
echo                   �         LOADING...      �
echo                   �������������������������ͼ
ping localhost -n 2 >nul

cls
echo                   �������������������������ͻ
echo                   �         LOADING         �
echo                   �������������������������ͼ
ping localhost -n 2 >nul

cls
echo                   �������������������������ͻ
echo                   �         LOADING.        �
echo                   �������������������������ͼ
ping localhost -n 2 >nul

cls
echo                   �������������������������ͻ
echo                   �         LOADING..       �
echo                   �������������������������ͼ
ping localhost -n 2 >nul

cls
echo                   �������������������������ͻ
echo                   �         LOADING...      �
echo                   �������������������������ͼ
ping localhost -n 2 >nul

cls
echo                   �������������������������ͻ
echo                   �         LOADING         �
echo                   �������������������������ͼ
ping localhost -n 2 >nul

cls
echo                   �������������������������ͻ
echo                   �         LOADING.        �
echo                   �������������������������ͼ
ping localhost -n 2 >nul

set /a number= 1
set /a number=%number%
set /a token=%token%+%number%

call RPG_Adventure.bat

goto crash








:call2
if not exist "RPG_Endless.bat" (
cls
echo ����������������������������������������������������ͻ
echo �  Please make sure that the "RPG_Endless.bat" file  �
echo �    along with the launcher file are in the same    �
echo �              directory and try again.              �
echo ����������������������������������������������������ͼ
echo.
pause>nul
goto menu
)
cls
echo                   �������������������������ͻ
echo                   �         LOADING         �
echo                   �������������������������ͼ
ping localhost -n 2 >nul

cls
echo                   �������������������������ͻ
echo                   �         LOADING.        �
echo                   �������������������������ͼ
ping localhost -n 2 >nul

cls
echo                   �������������������������ͻ
echo                   �         LOADING..       �
echo                   �������������������������ͼ
ping localhost -n 2 >nul

cls
echo                   �������������������������ͻ
echo                   �         LOADING...      �
echo                   �������������������������ͼ
ping localhost -n 2 >nul

cls
echo                   �������������������������ͻ
echo                   �         LOADING         �
echo                   �������������������������ͼ
ping localhost -n 2 >nul

cls
echo                   �������������������������ͻ
echo                   �         LOADING.        �
echo                   �������������������������ͼ
ping localhost -n 2 >nul

cls
echo                   �������������������������ͻ
echo                   �         LOADING..       �
echo                   �������������������������ͼ
ping localhost -n 2 >nul

cls
echo                   �������������������������ͻ
echo                   �         LOADING...      �
echo                   �������������������������ͼ
ping localhost -n 2 >nul

cls
echo                   �������������������������ͻ
echo                   �         LOADING         �
echo                   �������������������������ͼ
ping localhost -n 2 >nul

cls
echo                   �������������������������ͻ
echo                   �         LOADING.        �
echo                   �������������������������ͼ
ping localhost -n 2 >nul

set /a number= 1
set /a number=%number%
set /a token=%token%+%number%

call RPG_Endless.bat

goto crash









:call3
if not exist "RPG_Classic.bat" (
cls
echo ����������������������������������������������������ͻ
echo �  Please make sure that the "RPG_Classic.bat" file  �
echo �    along with the launcher file are in the same    �
echo �              directory and try again.              �
echo ����������������������������������������������������ͼ
echo.
pause>nul
goto menu
)
cls
echo                   �������������������������ͻ
echo                   �         LOADING         �
echo                   �������������������������ͼ
ping localhost -n 2 >nul

cls
echo                   �������������������������ͻ
echo                   �         LOADING.        �
echo                   �������������������������ͼ
ping localhost -n 2 >nul

cls
echo                   �������������������������ͻ
echo                   �         LOADING..       �
echo                   �������������������������ͼ
ping localhost -n 2 >nul

cls
echo                   �������������������������ͻ
echo                   �         LOADING...      �
echo                   �������������������������ͼ
ping localhost -n 2 >nul

cls
echo                   �������������������������ͻ
echo                   �         LOADING         �
echo                   �������������������������ͼ
ping localhost -n 2 >nul

cls
echo                   �������������������������ͻ
echo                   �         LOADING.        �
echo                   �������������������������ͼ
ping localhost -n 2 >nul

cls
echo                   �������������������������ͻ
echo                   �         LOADING..       �
echo                   �������������������������ͼ
ping localhost -n 2 >nul

cls
echo                   �������������������������ͻ
echo                   �         LOADING...      �
echo                   �������������������������ͼ
ping localhost -n 2 >nul

cls
echo                   �������������������������ͻ
echo                   �         LOADING         �
echo                   �������������������������ͼ
ping localhost -n 2 >nul

cls
echo                   �������������������������ͻ
echo                   �         LOADING.        �
echo                   �������������������������ͼ
ping localhost -n 2 >nul

set /a number= 1
set /a number=%number%
set /a token=%token%+%number%

call RPG_Classic.bat

goto crash













:crash
cls
echo ��������������������������������������������������ͻ
echo �An error has occured. Please restart the launcher.�
echo ��������������������������������������������������ͼ
pause>nul
exit









:display
cls
echo Please select a file to view:
echo.
echo ��������������ͻ
echo �1) Save_file_1�
echo �2) Save_file_2�
echo �3) Save_file_3�
echo.��������������ͼ
echo.
echo 4) Back
echo.
echo INFO: This shows the number values of the selected save file.
echo (ADVENTURE MODE SAVE FILES ONLY!)
echo.
	set /p cho=
	if %cho% == 1 goto view1
	if %cho% == 2 goto view2
	if %cho% == 3 goto view3
	if %cho% == 4 goto lo
	goto display


:view1
cls
if not exist "Save_file_1.bat" (
cls
echo There is no data in this file slot!
echo.
echo Press enter to continue...
pause>nul
goto display
)
call Save_file_1.bat

echo Save_file_1:
echo.
echo Money: %money%$
echo Money gained per kill: %reward%$
echo XP gained per kill: %gainlvl%
echo Lose Penalty: %loss%$
echo Pickpocket Penalty: %pick%$

echo Player Max Health: %PMH%
echo Player Max Shield: %PMS%
echo Enemy Max Health: %EMH%


echo Player Damage: %playerdmg%
echo Enemy Damage: %enemydmg%



echo Shield Level: %shieldlvl%
echo Health Level: %heallvl%
echo Sword Level: %swordlvl%

echo Player Level: %XPlvl%




echo Total Kills: %totalkills%
echo Total Deaths: %totaldeaths%
echo Total Money Gained: %totalmoney%$
echo Total Money Lost: %totallost%$
echo.
echo.
echo Press any key to return
pause>nul
goto display







:view2
cls
if not exist "Save_file_2.bat" (
cls
echo There is no data in this file slot!
echo.
echo Press enter to continue...
pause>nul
goto display
)
call Save_file_2.bat

echo Save_file_2:
echo.
echo Money: %money%$
echo Money gained per kill: %reward%$
echo XP gained per kill: %gainlvl%
echo Lose Penalty: %loss%$
echo Pickpocket Penalty: %pick%$
echo %XPloss%

echo Player Max Health: %PMH%
echo Player Max Shield: %PMS%
echo Enemy Max Health: %EMH%


echo Player Damage: %playerdmg%
echo Enemy Damage: %enemydmg%



echo Shield Level: %shieldlvl%
echo Health Level: %heallvl%
echo Sword Level: %swordlvl%

echo Player Level: %XPlvl%




echo Total Kills: %totalkills%
echo Total Deaths: %totaldeaths%
echo Total Money Gained: %totalmoney%$
echo Total Money Lost: %totallost%$
echo.
echo.
echo Press any key to return
pause>nul
goto display








:view3
cls
if not exist "Save_file_3.bat" (
cls
echo There is no data in this file slot!
echo.
echo Press enter to continue...
pause>nul
goto display
)
call Save_file_3.bat

echo Save_file_3:
echo.
echo Money: %money%$
echo Money gained per kill: %reward%$
echo XP gained per kill: %gainlvl%
echo Lose Penalty: %loss%$
echo Pickpocket Penalty: %pick%$
echo %XPloss%

echo Player Max Health: %PMH%
echo Player Max Shield: %PMS%
echo Enemy Max Health: %EMH%


echo Player Damage: %playerdmg%
echo Enemy Damage: %enemydmg%



echo Shield Level: %shieldlvl%
echo Health Level: %heallvl%
echo Sword Level: %swordlvl%

echo Player Level: %XPlvl%




echo Total Kills: %totalkills%
echo Total Deaths: %totaldeaths%
echo Total Money Gained: %totalmoney%$
echo Total Money Lost: %totallost%$
echo.
echo.
echo Press any key to return
pause>nul
goto display






