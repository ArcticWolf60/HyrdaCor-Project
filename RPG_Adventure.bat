@echo off
title RPG Clicker - Version 1.0 (Adventure Mode)
mode con cols=%mc% lines=%ml%
taskkill /im wmplayer.exe
:saveLO
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
echo set reso=%reso%
)>launcher_options.bat


cls

if %reso% EQU 90x35 goto next

:next
if %losc% EQU OFF goto main
cls
echo                   ษอออออออออออออออออออออออออป
echo                   บ         LOADING..       บ
echo                   ศอออออออออออออออออออออออออผ
ping localhost -n 2 >nul

cls
echo                   ษอออออออออออออออออออออออออป
echo                   บ         LOADING...      บ
echo                   ศอออออออออออออออออออออออออผ
ping localhost -n 2 >nul

cls
echo                   ษอออออออออออออออออออออออออป
echo                   บ         LOADING         บ
echo                   ศอออออออออออออออออออออออออผ
ping localhost -n 2 >nul

cls
echo                   ษอออออออออออออออออออออออออป
echo                   บ         LOADING.        บ
echo                   ศอออออออออออออออออออออออออผ
ping localhost -n 2 >nul





:main
if %reso% EQU 90x35 goto low_quality_main
cls
color 07
cls
echo ษอออออออออออออออออออออออออป
echo บWELCOME TO RPG CLICKER!!!บ
echo ฬอออออออออออออออออออออออออน
echo บ1) New Save              บ
echo บ2) Load Save             บ
echo บ3) Delete a Save         บ
echo บ                         บ
echo บ4) Return To Launcher    บ
echo ศอออออออออออออออออออออออออผ
set /p cho=
if %cho% == 1 goto fileselectnew
if %cho% == 2 goto fileselectload
if %cho% == 3 goto filedelete
if %cho% == 4 call RPG_Launcher
goto main



:low_quality_main
color 07
cls
echo WELCOME TO RPG CLICKER!!!
echo.
echo 1) New Save              
echo 2) Load Save             
echo 3) Delete a Save         
echo.
echo 4) Return to launcher    
echo.
set /p cho=
if %cho% == 1 goto fileselectnew
if %cho% == 2 goto fileselectload
if %cho% == 3 goto filedelete
if %cho% == 4 call RPG_Launcher
goto low_quality_main













:filedelete
color 0c
cls
echo Select a save file to delete:
echo.
echo 1) Save file 1
echo 2) Save file 2
echo 3) Save file 3
echo.
echo 10) Cancel
echo.
set /p cho=
if %cho% == 1 goto del1call
if %cho% == 2 goto del2call
if %cho% == 3 goto del3call
if %cho% == 10 goto main
goto filedelete

:del1call
if not exist "Save_file_1.bat" (
cls
echo This file has not been made yet!
echo.
echo Press enter to continue...
pause>nul
goto main
)
call Save_file_1.bat
goto del1con

:del1con 
color 0c
cls
echo Are you sure you would like to delete this file?
echo.
echo    DATA ON THIS FILE:
echo  [Player level: %XPlvl%]
echo  [Money: $%money%]
echo.
echo  [Sword Level: %swordlvl%]
echo  [Health Level: %heallvl%]
echo  [Shield Level: %shieldlvl%]
echo  [Enemy Level: %gainlvl%]
echo  [Bank Level: %banklvl%]
echo.
echo (Y/N)
echo.
set /p cho=
if %cho% == y goto del1
if %cho% == n goto main
goto del1con

:del1
color 0c
cls
DEL Save_file_1.bat
echo File has been deleted!
echo.
echo Press enter to continue...
pause>nul
goto main




:del2call
if not exist "Save_file_2.bat" (
cls
echo This file has not been made yet!
echo.
echo Press enter to continue...
pause>nul
goto main
)
call Save_file_2.bat
goto del2con

:del2con 
color 0c
cls
echo Are you sure you would like to delete this file?
echo.
echo    DATA ON THIS FILE:
echo  [Player level: %XPlvl%]
echo  [Money: $%money%]
echo.
echo  [Sword Level: %swordlvl%]
echo  [Health Level: %heallvl%]
echo  [Shield Level: %shieldlvl%]
echo  [Enemy Level: %gainlvl%]
echo  [Bank Level: %banklvl%]
echo.
echo (Y/N)
echo.
set /p cho=
if %cho% == y goto del2
if %cho% == n goto main
goto del2con

:del2
color 0c
cls
DEL Save_file_2.bat
echo File has been deleted!
echo.
echo Press enter to continue...
pause>nul
goto main




:del3call
if not exist "Save_file_3.bat" (
cls
echo This file has not been made yet!
echo.
echo Press enter to continue...
pause>nul
goto main
)
call Save_file_3.bat
goto del3con

:del3con 
color 0c
cls
echo Are you sure you would like to delete this file?
echo.
echo    DATA ON THIS FILE:
echo  [Player level: %XPlvl%]
echo  [Money: %money%$]
echo.
echo  [Sword Level: %swordlvl%]
echo  [Health Level: %heallvl%]
echo  [Shield Level: %shieldlvl%]
echo  [Enemy Level: %gainlvl%]
echo  [Bank Level: %banklvl%]
echo.
echo (Y/N)
echo.
set /p cho=
if %cho% == y goto del3
if %cho% == n goto main
goto del3con

:del3
color 0c
cls
DEL Save_file_3.bat
echo File has been deleted!
echo.
echo Press enter to continue...
pause>nul
goto main



















:fileselectnew
color 07
cls
echo Please select a save file to use:
echo.
echo 1) Save file 1
echo 2) Save file 2
echo 3) Save file 3
echo.
echo 10) Back
echo.
set /p cho=
if %cho% == 1 goto file1
if %cho% == 2 goto file2
if %cho% == 3 goto file3
if %cho% == 10 goto main
goto fileselectnew

:file1
set filename=Save_file_1
goto new

:file2
set filename=Save_file_2
goto new

:file3
set filename=Save_file_3
goto new

:confirm
color 0c
cls
echo DATA ON THIS FILE:
echo.
echo  [Player Level: %XPlvl%]
echo  [Money: $%money%]
echo.
echo  [Sword Level: %swordlvl%]
echo  [Health Level: %heallvl%]
echo  [Shield Level: %shieldlvl%]
echo  [Enemy Level: %gainlvl%]
echo  [Bank Level: %banklvl%]
echo ----------------------------------------------------------------
echo.
echo Are you sure you would like to override this save file?
echo Anything on this file will be reset and you will not be
echo able to recover it.
echo.
echo (Y/N)
echo.
set /p cho=
if %cho% == y goto values
if %cho% == n goto fileselectnew
goto confirm






:fileselectload
cls
echo Please select a save file to load:
echo.
echo 1) Save file 1
echo 2) Save file 2
echo 3) Save file 3
echo.
echo 10) Back
echo.
set /p cho=
if %cho% == 1 goto file1load
if %cho% == 2 goto file2load
if %cho% == 3 goto file3load
if %cho% == 10 goto main
goto fileselectload

:file1load
set filename=Save_file_1
goto load

:file2load
set filename=Save_file_2
goto load

:file3load
set filename=Save_file_3
goto load




:new
if not exist "%filename%.bat" (
goto values
)
call %filename%.bat
goto confirm







:load
if not exist "%filename%.bat" (
cls
echo There is no data in this file slot!
echo.
echo Press enter to continue...
pause>nul
goto fileselectload
)
call %filename%.bat
cls
echo Welcome back!
ping localhost -n 3 >nul
goto loadinghome















:values
set eu=4
set money=0
set reward=18
set hpre=1
set loss=20
set pick=3
set XPloss=20

set PMH=65
set EMH=35
set PMS=0

set playerhealth=65
set enemyhealth=35
set playershield=0

set playerdmg=2
set enemydmg=1

set swordprice=125
set huprice=200
set healprice=10
set shieldprice=800

set shieldlvl=0
set heallvl=1
set swordlvl=1
set gainlvl=1

set pos1=15
set pos2=50
set pos3=20
set pos4=100
set pos5=80
set wheelprice=25
set win=0

set XP=0
set XPmax=50
set XPreward=75
set XPlvl=1

set dmgP=0
set hpP=0
set shP=0
set hlp=0

set dmgPprice=50
set hpPprice=50
set shPprice=50
set hlPprice=50

set dmguse=0
set hpuse=0
set shuse=0
set hluse=0

set polvl=1
set poprice=80
set potionmax=1

set maxlabel= 

set EXlvl=1
set EXprice=100
set EXre=5

set accur=0
set accmax=100
set depamm=50
set depamm2=25
set depamm3=5
set depamm4=100
set depamm5=1000
set banklvl=1
set bankprice=250
set withamm=25
set withamm2=50
set withamm3=5
set withamm4=100
set withamm5=1000

set special=4
set specialmax=4

set totalkills=0
set totaldeaths=0
set totalmoney=0
set totallost=0

set chestchance=15
set chest=0
set keys=0
set keyprice=125
set codever=1

set rat=0
set cat=0

set ch= 
set SIE=1

cls
color 07
echo WELCOME, TO
ping localhost -n 3 >nul
echo RPG CLICKER!!!
ping localhost -n 4 >nul

goto save

:save
( 
echo set eu=%eu%
echo set money=%money%
echo set reward=%reward%
echo set loss=%loss%
echo set hpre=%hpre%
echo set pick=%pick%
echo set XPloss=%XPloss%

echo set PMH=%PMH%
echo set EMH=%EMH%
echo set PMS=%PMS%

echo set playerhealth=%playerhealth%
echo set enemyhealth=%enemyhealth%
echo set playershield=%playershield%

echo set playerdmg=%playerdmg%
echo set enemydmg=%enemydmg%

echo set swordprice=%swordprice%
echo set huprice=%huprice%
echo set healprice=%healprice%
echo set shieldprice=%shieldprice%

echo set shieldlvl=%shieldlvl%
echo set heallvl=%heallvl%
echo set swordlvl=%swordlvl%
echo set gainlvl=%gainlvl%

echo set pos1=%pos1%
echo set pos2=%pos2%
echo set pos3=%pos3%
echo set pos4=%pos4%
echo set pos5=%pos5%
echo set wheelprice=%wheelprice%
echo set win=%win%

echo set XP=%XP%
echo set XPmax=%XPmax%
echo set XPreward=%XPreward%
echo set XPlvl=%XPlvl%

echo set dmgPprice=%dmgPprice%
echo set hpPprice=%dmgPprice%
echo set shPprice=%shPprice%
echo set hlPprice=%hlPprice%

echo set dmgP=%dmgP%
echo set hpP=%hpP%
echo set shP=%shP%
echo set hlP=%hlP%

echo set dmguse=%dmguse%
echo set hpuse=%hpuse%
echo set shuse=%shuse%
echo set hluse=%hluse%

echo set polvl=%polvl%
echo set poprice=%poprice%
echo set potionmax=%potionmax%

echo set EXlvl=%EXlvl%
echo set EXprice=%EXprice%
echo set EXre=%EXre%

echo set accur=%accur%
echo set accmax=%accmax%
echo set depamm=%depamm%
echo set depamm2=%depamm2%
echo set depamm3=%depamm3%
echo set depamm4=%depamm4%
echo set depamm5=%depamm5%
echo set banklvl=%banklvl%
echo set bankprice=%bankprice%
echo set withamm=%withamm%
echo set withamm2=%withamm2%
echo set withamm3=%withamm3%
echo set withamm4=%withamm4%
echo set withamm5=%withamm5%

echo set special=%special%
echo set specialmax=%specialmax%

echo set totalkills=%totalkills%
echo set totaldeaths=%totaldeaths%
echo set totalmoney=%totalmoney%
echo set totallost=%totallost%

echo set chestchance=%chestchance%
echo set chest=%chest%
echo set keys=%keys%
echo set keyprice=%keyprice%
echo set codever=%codever%
echo set rat=%rat%
echo set cat=%cat%

echo set ch=%ch%
echo set SIE=%SIE%
)>%filename%.bat
goto loadinghome





:loadinghome
if %losc% EQU OFF goto home
set /a tip=%random% %% 16+1
if %tip% EQU 1 set tips=Upgrading your equipment in the shop is key!
if %tip% EQU 2 set tips=Try to play it smart when it comes to stronger enemies!
if %tip% EQU 3 set tips=Be sure to heal when your low on health!
if %tip% EQU 4 set tips=Deposite some money into the bank to keep it from getting lost in the event that you die!
if %tip% EQU 5 set tips=Upgrading your health also heals a portion of your health!
if %tip% EQU 6 set tips=Leveling up will heal you automaticaly!
if %tip% EQU 7 set tips=Try not to waste all of your money on the wheel of fortune!
if %tip% EQU 8 set tips=Keys can be purchased in the shop, but there is also a chance you will find them after a battle!
if %tip% EQU 9 set tips=Mutating monsters will increase your reward, but also makes the monsters stronger!
if %tip% EQU 10 set tips=Save often!
if %tip% EQU 11 set tips=You can disable this loading screen from the launcher!
if %tip% EQU 12 set tips=This loading screen is completely artificial! :D
if %tip% EQU 13 set tips=Your game gets saved after every battle automatically!
if %tip% EQU 14 set tips=Go to your inventory to open chests!
if %tip% EQU 15 set tips=Chests contain money, potions, and rare artifacts!
if %tip% EQU 16 set tips=Rare artifacts have a small chance of selling for $250!

cls
set /a load=%random% %% 3+1

if %load% EQU 1 goto loadinghome1
if %load% EQU 2 goto loadinghome2
if %load% EQU 3 goto loadinghome3
















:loadinghome1
color 07


cls
echo ษออออออออออออออออออป
echo บLoading:----------บ
echo.ศออออออออออออออออออผ
echo.
echo TIP: %tips%
ping localhost -n 1 >nul

cls
echo ษออออออออออออออออออป
echo บLoading:---------บ
echo.ศออออออออออออออออออผ
echo.
echo TIP: %tips%
ping localhost -n 2 >nul

cls
echo ษออออออออออออออออออป
echo บLoading:--------บ
echo.ศออออออออออออออออออผ
echo.
echo TIP: %tips%
ping localhost -n 2 >nul

cls
echo ษออออออออออออออออออป
echo บLoading:-------บ
echo.ศออออออออออออออออออผ
echo.
echo TIP: %tips%
ping localhost -n 1 >nul

cls
echo ษออออออออออออออออออป
echo บLoading:------บ
echo.ศออออออออออออออออออผ
echo.
echo TIP: %tips%
ping localhost -n 1 >nul

cls
echo ษออออออออออออออออออป
echo บLoading:-----บ
echo.ศออออออออออออออออออผ
echo.
echo TIP: %tips%
ping localhost -n 1 >nul

cls
echo ษออออออออออออออออออป
echo บLoading:----บ
echo.ศออออออออออออออออออผ
echo.
echo TIP: %tips%
ping localhost -n 1 >nul

cls
echo ษออออออออออออออออออป
echo บLoading:---บ
echo.ศออออออออออออออออออผ
echo.
echo TIP: %tips%
ping localhost -n 1 >nul

cls
echo ษออออออออออออออออออป
echo บLoading:--บ
echo.ศออออออออออออออออออผ
echo.
echo TIP: %tips%
ping localhost -n 2 >nul

cls
echo ษออออออออออออออออออป
echo บLoading:-บ
echo.ศออออออออออออออออออผ
echo.
echo TIP: %tips%
ping localhost -n 1 >nul

cls
echo ษออออออออออออออออออป
echo บLoading:บ
echo ศออออออออออออออออออผ
echo.
echo TIP: %tips%
ping localhost -n 3 >nul
goto home











:loadinghome2
color 07


cls
echo ษออออออออออออออออออป
echo บLoading:----------บ
echo.ศออออออออออออออออออผ
echo.
echo TIP: %tips%
ping localhost -n 3 >nul

cls
echo ษออออออออออออออออออป
echo บLoading:---------บ
echo.ศออออออออออออออออออผ
echo.
echo TIP: %tips%
ping localhost -n 3 >nul

cls
echo ษออออออออออออออออออป
echo บLoading:--------บ
echo.ศออออออออออออออออออผ
echo.
echo TIP: %tips%
ping localhost -n 2 >nul


cls
echo ษออออออออออออออออออป
echo บLoading:-------บ
echo.ศออออออออออออออออออผ
echo.
echo TIP: %tips%
ping localhost -n 2 >nul

cls
echo ษออออออออออออออออออป
echo บLoading:------บ
echo.ศออออออออออออออออออผ
echo.
echo TIP: %tips%
ping localhost -n 2 >nul

cls
echo ษออออออออออออออออออป
echo บLoading:-----บ
echo.ศออออออออออออออออออผ
echo.
echo TIP: %tips%
ping localhost -n 1 >nul

cls
echo ษออออออออออออออออออป
echo บLoading:----บ
echo.ศออออออออออออออออออผ
echo.
echo TIP: %tips%
ping localhost -n 1 >nul

cls
echo ษออออออออออออออออออป
echo บLoading:---บ
echo.ศออออออออออออออออออผ
echo.
echo TIP: %tips%
ping localhost -n 4 >nul

cls
echo ษออออออออออออออออออป
echo บLoading:--บ
echo.ศออออออออออออออออออผ
echo.
echo TIP: %tips%
ping localhost -n 1 >nul

cls
echo ษออออออออออออออออออป
echo บLoading:-บ
echo.ศออออออออออออออออออผ
echo.
echo TIP: %tips%
ping localhost -n 2 >nul

cls
echo ษออออออออออออออออออป
echo บLoading:บ
echo.ศออออออออออออออออออผ
echo.
echo TIP: %tips%
ping localhost -n 4 >nul
goto home













:loadinghome3
color 07


cls
echo ษออออออออออออออออออป
echo บLoading:----------บ
echo.ศออออออออออออออออออผ
echo.
echo TIP: %tips%
ping localhost -n 2 >nul

cls
echo ษออออออออออออออออออป
echo บLoading:---------บ
echo.ศออออออออออออออออออผ
echo.
echo TIP: %tips%
ping localhost -n 1 >nul

cls
echo ษออออออออออออออออออป
echo บLoading:--------บ
echo.ศออออออออออออออออออผ
echo.
echo TIP: %tips%
ping localhost -n 1 >nul

cls
echo ษออออออออออออออออออป
echo บLoading:-------บ
echo.ศออออออออออออออออออผ
echo.
echo TIP: %tips%
ping localhost -n 1 >nul

cls
echo ษออออออออออออออออออป
echo บLoading:------บ
echo.ศออออออออออออออออออผ
echo.
echo TIP: %tips%
ping localhost -n 1 >nul

cls
echo ษออออออออออออออออออป
echo บLoading:-----บ
echo.ศออออออออออออออออออผ
echo.
echo TIP: %tips%
ping localhost -n 1 >nul

cls
echo ษออออออออออออออออออป
echo บLoading:----บ
echo.ศออออออออออออออออออผ
echo.
echo TIP: %tips%
ping localhost -n 1 >nul

cls
echo ษออออออออออออออออออป
echo บLoading:---บ
echo.ศออออออออออออออออออผ
echo.
echo TIP: %tips%
ping localhost -n 1 >nul

cls
echo ษออออออออออออออออออป
echo บLoading:--บ
echo.ศออออออออออออออออออผ
echo.
echo TIP: %tips%
ping localhost -n 1 >nul

cls
echo ษออออออออออออออออออป
echo บLoading:-บ
echo.ศออออออออออออออออออผ
echo.
echo TIP: %tips%
ping localhost -n 2 >nul

cls
echo ษออออออออออออออออออป
echo บLoading:บ
echo.ศออออออออออออออออออผ
echo.
echo TIP: %tips%
ping localhost -n 1 >nul
goto home





























:home



if %SI% EQU LOCKED goto homeskip
if %SIE% LEQ 0 goto homeskip

set /a number= 20
set /a number=%number%
set /a money=%money%+%number%

set /a number= 1
set /a number=%number%
set /a hlp=%hlp%+%number%

set /a number= 1
set /a number=%number%
set /a chest=%chest%+%number%

set /a number= 1
set /a number=%number%
set /a keys=%keys%+%number%

set /a number= 1
set /a number=%number%
set /a SIE=%SIE%-%number%



:homeskip
if %chest% EQU %potionmax% set chestnote=YOU ARE AT MAX CHEST CAPACITY!
if %chest% LSS %potionmax% set chestnote= 
if %reso% EQU 90x35 goto low_quality_home
set special=%specialmax%
if %money% LEQ 0 set money=0
if %XP% LEQ 0 set XP=0
if %XP% GEQ %XPmax% set XP=%XPmax%
color 67
set enemyhealth=%EMH%
set playershield=%PMS%
cls
echo ษอออออออออออออออออออป               ษอออออออออออออออออออออออออป
echo บ   Welcome Home!   บ               บKills until next chest: %chestchance%บ
echo ฬอออออออออออออออออออผ               ศอออออออออออออออออออออออออผ
echo.บ                                  %chestnote%
echo บLevel %XPlvl%: %XP%/%XPmax% XP
echo.บ
echo ฬอออออออออออออออออป
echo บ Money: $%money%
echo บ HP: %playerhealth%/%PMH%
echo บ SP: %PMS%
echo ฬอออออออออออออออออผ
echo.บ
echo บ1) HUNT MONSTERS!
echo บ2) Inventory
echo บ3) Shop
echo บ4) Pawn Shop 
echo บ5) Bank
echo บ6) Heal: $%healprice%
echo.บ
echo บ7) Stats
echo บ8) Save
echo บ9) Main Menu
echo.บ
echo ฬออออออออออออออออออออออออออออออป
echo บCURRENT SAVE FILE: %filename%บ
echo ศออออออออออออออออออออออออออออออผ
set /p cho=
if %cho% == 1 goto loadingarea1
if %cho% == 2 goto inv
if %cho% == 3 goto shop
if %cho% == 4 goto pawnshop
if %cho% == 5 goto bank
if %cho% == 6 goto healfail
if %cho% == 7 goto stats
if %cho% == 8 goto save2
if %cho% == 9 goto main
if %cho% == D47USP goto codeenteredfail
if %cho% == test goto test
goto home


:codeenteredfail
if %codever% GEQ 1 goto codeentered
cls
echo You have already used this code!
echo.
pause>nul
goto home



:codeentered
set /a number= 1
set /a number=number
set /a codever=%codecer%-%number%

set /a number= 20
set /a number=number
set /a money=%money%+%number%

set /a number= 20
set /a number=number
set /a totalmoney=%totalmoney%+%number%

set /a number= 1
set /a number=number
set /a hlp=%hlp%+%number%

set /a number= 1
set /a number=number
set /a chest=%chest%+%number%

set /a number= 1
set /a number=number
set /a keys=%keys%+%number%


cls
echo You have recived:
echo +$20
echo +1 Healing potion
echo +1 Chest
echo +1 Key
echo.
pause>nul
goto home









:low_quality_home
if %chest% EQU %potionmax% set chestnote=YOU ARE AT MAX CHEST CAPACITY!
if %chest% LSS %potionmax% set chestnote= 
set special=%specialmax%
if %money% LEQ 0 set money=0
if %XP% LEQ 0 set XP=0
if %XP% GEQ %XPmax% set XP=%XPmax%
color 67
set enemyhealth=%EMH%
set playershield=%PMS%
cls
echo    Welcome Home!                   Kills until next chest: %chestchance%
echo.                                  %chestnote%
echo Level %XPlvl%: %XP%/%XPmax% XP
echo.
echo  Money: $%money%
echo  HP: %playerhealth%/%PMH%
echo  SP: %PMS%
echo.
echo 1) HUNT MONSTERS!
echo 2) Inventory
echo 3) Shop
echo 4) Pawn Shop
echo 5) Bank
echo 6) Heal: $%healprice%
echo.
echo 7) Stats
echo 8) Save
echo 9) Main Menu
echo.
echo CURRENT SAVE FILE: %filename%
echo.
set /p cho=
if %cho% == 1 goto pickpotion1
if %cho% == 2 goto inv
if %cho% == 3 goto shop
if %cho% == 4 goto pawnshop
if %cho% == 5 goto bank
if %cho% == 6 goto healfail
if %cho% == 7 goto stats
if %cho% == 8 goto save2
if %cho% == 9 goto main
if %cho% == test goto test
goto low_quality_home







:save2
( 
echo set eu=%eu%
echo set money=%money%
echo set reward=%reward%
echo set loss=%loss%
echo set hpre=%hpre%
echo set pick=%pick%
echo set XPloss=%XPloss%

echo set PMH=%PMH%
echo set EMH=%EMH%
echo set PMS=%PMS%

echo set playerhealth=%playerhealth%
echo set enemyhealth=%enemyhealth%
echo set playershield=%playershield%

echo set playerdmg=%playerdmg%
echo set enemydmg=%enemydmg%

echo set swordprice=%swordprice%
echo set huprice=%huprice%
echo set healprice=%healprice%
echo set shieldprice=%shieldprice%

echo set shieldlvl=%shieldlvl%
echo set heallvl=%heallvl%
echo set swordlvl=%swordlvl%
echo set gainlvl=%gainlvl%

echo set pos1=%pos1%
echo set pos2=%pos2%
echo set pos3=%pos3%
echo set pos4=%pos4%
echo set pos5=%pos5%
echo set wheelprice=%wheelprice%
echo set win=%win%

echo set XP=%XP%
echo set XPmax=%XPmax%
echo set XPreward=%XPreward%
echo set XPlvl=%XPlvl%

echo set dmgPprice=%dmgPprice%
echo set hpPprice=%dmgPprice%
echo set shPprice=%shPprice%
echo set hlPprice=%hlPprice%

echo set dmgP=%dmgP%
echo set hpP=%hpP%
echo set shP=%shP%
echo set hlP=%hlP%

echo set dmguse=%dmguse%
echo set hpuse=%hpuse%
echo set shuse=%shuse%
echo set hluse=%hluse%

echo set polvl=%polvl%
echo set poprice=%poprice%
echo set potionmax=%potionmax%

echo set EXlvl=%EXlvl%
echo set EXprice=%EXprice%
echo set EXre=%EXre%

echo set accur=%accur%
echo set accmax=%accmax%
echo set depamm=%depamm%
echo set depamm2=%depamm2%
echo set depamm3=%depamm3%
echo set depamm4=%depamm4%
echo set depamm5=%depamm5%
echo set banklvl=%banklvl%
echo set bankprice=%bankprice%
echo set withamm=%withamm%
echo set withamm2=%withamm2%
echo set withamm3=%withamm3%
echo set withamm4=%withamm4%
echo set withamm5=%withamm5%

echo set special=%special%
echo set specialmax=%specialmax%

echo set totalkills=%totalkills%
echo set totaldeaths=%totaldeaths%
echo set totalmoney=%totalmoney%
echo set totallost=%totallost%

echo set chestchance=%chestchance%
echo set chest=%chest%
echo set keys=%keys%
echo set keyprice=%keyprice%
echo set codever=%codever%
echo set rat=%rat%
echo set cat=%cat%

echo set ch=%ch%
echo set SIE=%SIE%
)>%filename%.bat
echo Your game has been saved!
ping localhost -n 2 > nul
goto home

























:stats
if %reso% EQU 90x35 goto low_quality_stats
cls
echo ษออออออออออออออออออออออออออออป
echo บ           Stats            บ
echo ฬออออออออออออออออออออออออออออน
echo  Total kills: %totalkills%
echo  Total deaths: %totaldeaths%
echo  Total money collected: $%totalmoney%
echo  Total money lost: $%totallost%
echo ศออออออออออออออออออออออออออออผ
echo. %ch%
echo.
echo 1) Back
echo.
set /p cho=
if %cho% == 1 goto home
if %cho% == cheat goto cheat
goto stats



:low_quality_stats
cls
echo             Stats            
echo.
echo  Total kills: %totalkills%
echo  Total deaths: %totaldeaths%
echo  Total money collected: $%totalmoney%
echo  Total money lost: $%totallost%
echo. %ch%
echo.
echo 1) Back
echo.
set /p cho=
if %cho% == 1 goto home
if %cho% == cheat goto cheat
goto low_quality_stats














:cheat
if %reso% EQU 90x35 goto low_quality_cheat
cls
echo ษอออออออออออออออออออออออออออออออออออออออออออออออออป
echo บWelcome to the cheat screen,                     บ
echo บYou must have been snooping through the script...บ
echo บWhat would you like to do?                       บ
echo ฬอออออออออออออออออออออออออออออออออออออออออออออออออน
echo บ1) Reset Kills                                   บ
echo บ2) Reset Deaths                                  บ
echo บ3) Refund Purchases                              บ
echo บ4) Back                                          บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออผ
echo.
set /p cho=
if %cho% == 1 goto Rkills
if %cho% == 2 goto Rdeaths
if %cho% == 3 goto Rfunds
if %cho% == 4 goto save
goto cheat







:low_quality_cheat
if %reso% EQU 90x35 goto low_quality_cheat
cls
echo Welcome to the cheat screen,                     
echo You must have been snooping through the script...
echo What would you like to do?                       
echo.
echo 1) Reset Kills
echo 2) Reset Deaths
echo 3) Refund Purchases
echo 4) Back
echo.
set /p cho=
if %cho% == 1 goto Rkills
if %cho% == 2 goto Rdeaths
if %cho% == 3 goto Rfunds
if %cho% == 4 goto save
goto low_quality_cheat





:Rkills
set ch=CHEAT_ENABLED
cls
set totalkills=0
echo Your total kills have been reset!
pause>nul
goto cheat

:Rdeaths
set ch=CHEAT_ENABLED
cls
set totaldeaths=0
echo Your total deaths have been reset!
pause>nul
goto cheat

:Rfunds
set ch=CHEAT_ENABLED
cls
set money=0
set reward=18
set pick=3
set XPloss=20
set PMH=65
set EMH=35
set PMS=0
set playerhealth=60
set playershield=0
set playerdmg=2
set swordprice=125
set huprice=200
set healprice=10
set shieldprice=800
set shieldlvl=0
set heallvl=1
set swordlvl=1
set XPreward=10
set dmgP=0
set hpP=0
set shP=0
set dmgPprice=200
set hpPprice=200
set shPprice=200
set polvl=1
set poprice=80
set potionmax=1
set accmax=100
set accur=0
set maxlabel= 

set money=%totalmoney%

echo ษอออออออออออออออออออออออออออออออออออออออออออป
echo บYour money has been refunded!              บ
echo.บ                                           บ
echo บNOTE:Any money that you had in the bank hasบ
echo บ     been given back to you as well.       บ
echo ศอออออออออออออออออออออออออออออออออออออออออออผ
pause>nul
goto cheat









:inv
if %reso% EQU 90x35 goto low_quality_inv
cls
echo ษออออออออออออออออออออออออป    ษออออออออออออออออออออออออป
echo บ        Potions         บ    บ        Artifacts       บ
echo ฬออออออออออออออออออออออออน    ฬออออออออออออออออออออออออน
echo บ2X Damage Potion: %dmgP%/%potionmax%   บ    บCommon artifacts: %cat%     บ
echo บ2X Health Potion: %hpP%/%potionmax%   บ    บRare artifacts: %rat%       บ
echo บ2X Shield Potion: %shP%/%potionmax%   บ    ศออออออออออออออออออออออออผ
echo บHealing Potion: %hlp%/%potionmax%     บ
echo ศออออออออออออออออออออออออผ
echo.
echo ษออออออออออออออออออออออออป
echo บ        Chests          บ
echo ฬออออออออออออออออออออออออน
echo บChest count: %chest%/%potionmax%        บ
echo บKey count: %keys%/%potionmax%          บ
echo ศออออออออออออออออออออออออผ
echo.
echo 1) Back
echo 2) Open a chest
echo 3) Drop All Items
echo.
set /p cho=
if %cho% == 1 goto home
if %cho% == 2 goto openfail
if %cho% == 3 goto invclearcon
if %cho% == cheat1 set keys=100
if %cho% == cheat2 set chest=100
goto inv



:low_quality_inv
cls
echo.
echo          Potions                      Artifacts
echo.
echo 2X Damage potion count: %dmgP%/%potionmax%      Common artifacts: %cat%
echo 2X Health potion count: %hpP%/%potionmax%       Rare artifacts: %rat%
echo 2X Shield potion count: %shP%/%potionmax%
echo Healing potion count:%hlp%/%potionmax%
echo.
echo.
echo         Chests          
echo.
echo Chest count: %chest%/%potionmax%  
echo Key count: %keys%/%potionmax%      
echo.
echo 1) Back
echo 2) Open chest: 1 Key
echo 3) Drop All Items
echo.
set /p cho=
if %cho% == 1 goto home
if %cho% == 2 goto openfail
if %cho% == 3 goto invclearcon
if %cho% == cheat1 set keys=100
if %cho% == cheat2 set chest=100
goto inv



:openfail
if %chest% LEQ 0 goto openfail(1)
if %keys% GEQ 1 goto open
cls
echo You dont have any keys!
echo Buy them from the shop.
echo.
pause>nul
goto inv

:openfail(1)
cls
echo You dont have any chests!
pause>nul
goto inv





:open
set /a chestra=%random% %% 13+1
if %chestra% EQU 1 goto rartwin
if %chestra% EQU 2 set chestre=275
if %chestra% EQU 3 set chestre=275
if %chestra% EQU 4 goto po3win
if %chestra% EQU 5 set chestre=250
if %chestra% EQU 6 set chestre=475
if %chestra% EQU 7 goto po2win
if %chestra% EQU 8 set chestre=250
if %chestra% EQU 9 set chestre=850
if %chestra% EQU 10 set chestre=250
if %chestra% EQU 11 goto po1win
if %chestra% EQU 12 set chestre=350
if %chestra% EQU 13 set chestre=1000
if %chestra% EQU 14 set chestre=200
cls

set /a attack= 1
set /a attack=%attack%
set /a chest=%chest%-%attack%

set /a attack= 1
set /a attack=%attack%
set /a keys=%keys%-%attack%

set /a attack= %chestre%
set /a attack=%attack%
set /a money=%money%+%attack%

set /a attack= %chestre%
set /a attack=%attack%
set /a totalmoney=%totalmoney%+%attack%

echo You have collected $%chestre%!
pause>nul
goto inv



:rartwin
cls

set /a attack= 1
set /a attack=%attack%
set /a chest=%chest%-%attack%

set /a attack= 1
set /a attack=%attack%
set /a keys=%keys%-%attack%

set /a attack= 1
set /a attack=%attack%
set /a rat=%rat%+%attack%
cls
echo You have collected a rare artifact!
pause>nul
goto inv








:po1win
if %dmgP% GEQ %potionmax% goto open

set /a attack= 1
set /a attack=%attack%
set /a chest=%chest%-%attack%

set /a attack= 1
set /a attack=%attack%
set /a keys=%keys%-%attack%

set /a attack= 1
set /a attack=%attack%
set /a dmgP=%dmgP%+%attack%
cls
echo You have collected a damage multiplier potion!
pause>nul
goto inv




:po2win
if %hlP% GEQ %potionmax% goto open

set /a attack= 1
set /a attack=%attack%
set /a chest=%chest%-%attack%

set /a attack= 1
set /a attack=%attack%
set /a keys=%keys%-%attack%

set /a attack= 1
set /a attack=%attack%
set /a hlp=%hlp%+%attack%

cls
echo You have collected a healing potion!
pause>nul
goto inv





:po3win
if %hpP% GEQ %potionmax% goto open

set /a attack= 1
set /a attack=%attack%
set /a chest=%chest%-%attack%

set /a attack= 1
set /a attack=%attack%
set /a keys=%keys%-%attack%

set /a attack= 1
set /a attack=%attack%
set /a hpP=%hpP%+%attack%

cls
echo You have collected a health multiplier potion!
pause>nul
goto inv










:invclearcon
cls
echo Are you sure you would like to clear out your inventory?
echo You will not be able to recover these items.
echo (Y/N)
set /p cho=
if %cho% == y goto invclear
if %cho% == n goto inv
goto invclearcon

:invclear
cls
set /a attack= %dmgP%
set /a attack=%attack%
set /a dmgP=%dmgP%-%attack%

set /a attack= %hpP%
set /a attack=%attack%
set /a hpP=%hpP%-%attack%

set /a attack= %shP%
set /a attack=%attack%
set /a shP=%shP%-%attack%

set /a attack= %keys%
set /a attack=%attack%
set /a keys=%keys%-%attack%

set /a attack= %chest%
set /a attack=%attack%
set /a chest=%chest%-%attack%

set /a attack= %chest%
set /a attack=%attack%
set /a cat=%cat%-%attack%

set /a attack= %chest%
set /a attack=%attack%
set /a rat=%rat%-%attack%

echo All your items have been droped!
echo.
echo Press enter to continue...
pause>nul
goto inv


:portal
cls
color 67
echo Where would you like to start your adventure?
echo.
echo 1) Grass Lands
echo 2) Cave
echo 3) Back


echo.
set /p cho=
if %cho% == 1 goto pickpotion1
if %cho% == 2 goto pickpotion2
if %cho% == 3 goto home
//if %cho% == 3 goto pickarea3
//if %cho% == 4 goto pickarea4

goto portal






:heal
set /a attack= %healprice%
set /a attack=%attack%
set /a money=%money%-%attack%
cls
set playerhealth=%PMH%
echo You have been healed!
pause>nul
goto home



:healfail
cls
if %playerhealth% GEQ %PMH% goto fullhealth
if %money% GEQ %healprice% goto heal
echo Sorry, you need $%healprice% to heal!
pause>nul
goto home

:fullhealth
cls
echo Your health is already full.
echo.
echo Press enter to continue...
pause>nul
goto home







:loadingarea1
if %losc% EQU OFF goto pickpotion1

color 07
set /a tip=%random% %% 16+1
if %tip% EQU 1 set tips=Upgrading your equipment in the shop is key!
if %tip% EQU 2 set tips=Try to play it smart when it comes to stronger enemies!
if %tip% EQU 3 set tips=Be sure to heal when your low on health!
if %tip% EQU 4 set tips=Deposite some money into the bank to keep it from getting lost in the event that you die!
if %tip% EQU 5 set tips=Upgrading your health also heals a portion of your health!
if %tip% EQU 6 set tips=Leveling up will heal you automaticaly!
if %tip% EQU 7 set tips=Try not to waste all of your money on the wheel of fortune!
if %tip% EQU 8 set tips=Keys can be purchased in the shop, but there is also a chance you will find them after a battle!
if %tip% EQU 9 set tips=Mutating monsters will increase your reward, but also makes the monsters stronger!
if %tip% EQU 10 set tips=Save often!
if %tip% EQU 11 set tips=You can disable this loading screen from the launcher!
if %tip% EQU 12 set tips=This loading screen is completely artificial! :D
if %tip% EQU 13 set tips=Your game gets saved after every battle automatically!
if %tip% EQU 14 set tips=Go to your inventory to open chests!
if %tip% EQU 15 set tips=Chests contain money, potions, and rare artifacts!
if %tip% EQU 16 set tips=Rare artifacts have a small chance of selling for $250!
cls
echo ษออออออออออออออออออป
echo บLoading:----------บ
echo ศออออออออออออออออออผ
echo.
echo TIP: %tips%
ping localhost -n 5 >nul

cls
echo ษออออออออออออออออออป
echo บLoading:---------บ
echo ศออออออออออออออออออผ
echo.
echo TIP: %tips%
ping localhost -n 2 >nul

cls
echo ษออออออออออออออออออป
echo บLoading:--------บ
echo ศออออออออออออออออออผ
echo.
echo TIP: %tips%
ping localhost -n 1 >nul

cls
echo ษออออออออออออออออออป
echo บLoading:-------บ
echo ศออออออออออออออออออผ
echo.
echo TIP: %tips%
ping localhost -n 1 >nul

cls
echo ษออออออออออออออออออป
echo บLoading:------บ
echo ศออออออออออออออออออผ
echo.
echo TIP: %tips%
ping localhost -n 1 >nul

cls
echo ษออออออออออออออออออป
echo บLoading:-----บ
echo ศออออออออออออออออออผ
echo.
echo TIP: %tips%
ping localhost -n 1 >nul

cls
echo ษออออออออออออออออออป
echo บLoading:----บ
echo ศออออออออออออออออออผ
echo.
echo TIP: %tips%
ping localhost -n 2 >nul

cls
echo ษออออออออออออออออออป
echo บLoading:---บ
echo ศออออออออออออออออออผ
echo.
echo TIP: %tips%
ping localhost -n 1 >nul

cls
echo ษออออออออออออออออออป
echo บLoading:--บ
echo ศออออออออออออออออออผ
echo.
echo TIP: %tips%
ping localhost -n 1 >nul

cls
echo ษออออออออออออออออออป
echo บLoading:-บ
echo ศออออออออออออออออออผ
echo.
echo TIP: %tips%
ping localhost -n 1 >nul

cls
echo ษออออออออออออออออออป
echo บLoading:บ
echo ศออออออออออออออออออผ
echo.
echo TIP: %tips%
ping localhost -n 1 >nul

goto pickpotion1










:pickpotion1
if %XPlvl% GEQ 30 set eu=31
if %XPlvl% GEQ %eu% goto area1fail
if %dmgP% GEQ 1 goto pickpotion1(1)
if %hpP% GEQ 1 goto pickpotion1(1)
if %shP% GEQ 1 goto pickpotion1(1)
goto pickarea1

:pickpotion1(1)
if %reso% EQU 90x35 goto low_quality_pickpotion1(1)
if %XPlvl% GEQ %eu% goto area1fail
cls
echo Select a potion to use for this battle:
echo.ษอออออออออออออออออป
echo บ1) Damage 2x     บ
echo บ   Count: %dmgP%      บ
echo.ฬอออออออออออออออออน
echo บ2) Health 2x     บ
echo.บ   Count: %hpP%      บ
echo.ฬอออออออออออออออออน
echo บ3) Shields 2x    บ
echo บ   Count: %shP%      บ
echo.ศอออออออออออออออออผ
echo  4) Dont use any  
echo.
set /p cho=
if %cho% == 1 goto dmgusefail
if %cho% == 2 goto hpusefail
if %cho% == 3 goto shusefail
if %cho% == 4 goto pickarea1
goto pickpotion1(1)







:low_quality_pickpotion1(1)
if %XPlvl% GEQ %eu% goto area1fail
cls
echo Select a potion to use for this battle:
echo.
echo  1) Damage 2x     
echo    Count: %dmgP%      
echo.
echo  2) Health 2x     
echo.   Count: %hpP%      
echo.
echo  3) Shields 2x    
echo    Count: %shP%      
echo.
echo  4) Dont use any  
echo.
set /p cho=
if %cho% == 1 goto dmgusefail
if %cho% == 2 goto hpusefail
if %cho% == 3 goto shusefail
if %cho% == 4 goto pickarea1
goto low_quality_pickpotion1(1)

















:dmgusefail
if %dmgP% GEQ 1 goto dmguse
cls
echo Sorry, you dont have any of this potion!
echo.
echo Press enter to continue...
pause>nul
goto pickpotion1(1)

:dmguse
set /a attack= 1
set /a attack=%attack%
set /a dmgP=%dmgP%-%attack%

set /a attack= 2
set /a attack=%attack%
set /a playerdmg=%playerdmg%*%attack%

set /a attack= 1
set /a attack=%attack%
set /a dmguse=%dmguse%+%attack%

cls
echo You now deal 2 times as much damage!
echo But only for this battle!
echo.
echo Press enter to continue...
pause>nul
goto pickarea1



:hpusefail
if %hpP% GEQ 1 goto hpuse
cls
echo Sorry, you dont have any of this potion!
echo.
echo Press enter to continue...
pause>nul
goto pickpotion1(1)

:hpuse
set /a attack= 1
set /a attack=%attack%
set /a hpP=%hpP%-%attack%

set /a attack= 2
set /a attack=%attack%
set /a PMH=%PMH%*%attack%

set playerhealth=%PMH%

set /a attack= 1
set /a attack=%attack%
set /a hpuse=%hpuse%+%attack%

cls
echo You now have 2 times as much health!
echo But only for this battle!
echo.
echo Press enter to continue...
pause>nul
goto pickarea1



:shusefail(1)
cls
echo You need to have your shields at Level 1 or better
echo to use this potion!
echo.
echo Press enter to continue...
pause>nul
goto pickpotion1(1)




:shusefail
if %shieldlvl% LEQ 0 goto shusefail(1)
if %shP% GEQ 1 goto shuse
cls
echo Sorry, you dont have any of this potion!
echo.
echo Press enter to continue...
pause>nul
goto pickpotion1(1)

:shuse
set /a attack= 1
set /a attack=%attack%
set /a shP=%shP%-%attack%

set /a attack= 2
set /a attack=%attack%
set /a PMS=%PMS%*%attack%

set playershield=%PMS%

set /a attack= 1
set /a attack=%attack%
set /a shuse=%shuse%+%attack%

cls
echo You now have 2 times stronger shields!
echo But only for this battle!
echo.
echo Press enter to continue...
pause>nul
goto area1














:area1
if %playershield% LEQ 0 set playershield=0
if %XPlvl% GEQ %eu% goto area1fail
if %reso% EQU 90x35 goto low_quality_area1
if %enemyhealth% LEQ 0 goto yay
color 2b
cls
echo.ษออออออออออออออออออออออออออออออออออออออออออออออออป
echo  Your Health: %playerhealth%/%PMH%
echo  Your sheild: %playershield%/%PMS%
echo.บ                                                บ
echo  %ET%'s Health: %enemyhealth%/%EMH%
echo.บ                                                บ
echo  Money: $%money%
echo ฬออออออออออออออออออออออออออออออออออออออออออออออออน
echo บ1) Attack                                       บ
echo บ2) Special Attack (Turns until ready: %special%)        บ
echo บ3) Use a Healing Potion: %hlP% left                 บ
echo บ4) Flee                                         บ
echo.ศออออออออออออออออออออออออออออออออออออออออออออออออผ
echo.
set /p choice=
if %choice% == 1 goto area1attack
if %choice% == 2 goto specialfail
if %choice% == 3 goto healusefail
if %choice% == 4 goto pocheck
goto area1


:low_quality_area1
if %enemyhealth% LEQ 0 goto yay
color 2b
cls
echo Your Health: %playerhealth%/%PMH%
echo Your sheild: %playershield%/%PMS%
echo.
echo %ET%'s Health: %enemyhealth%/%EMH%
echo.
echo Money: $%money%
echo.
echo 1) Attack
echo 2) Special Attack (Turns until ready: %special%)
echo 3) Use a Healing Potion: %hlP% left
echo 4) Flee
echo.
set /p choice=
if %choice% == 1 goto area1attack
if %choice% == 2 goto specialfail
if %choice% == 3 goto healusefail
if %choice% == 4 goto pocheck
goto low_quality_area1


:healusefail
if %playerhealth% GEQ %PMH% goto healusefail(1)
if %hlP% GEQ 1 goto healuse
cls
echo Sorry, you do not have any healing potions!
pause>nul
goto area1

:healusefail(1)
cls
echo Your health already is full!
pause>nul
goto area1



:healuse
cls
set healmath=%PMH%

set /a attack= 3
set /a attack=%attack%
set /a healmath=%healmath%/%attack%

set /a attack= %healmath%
set /a attack=%attack%
set /a playerhealth=%playerhealth%+%attack%

set /a attack= 1
set /a attack=%attack%
set /a hlP=%hlP%-%attack%

echo You have been healed by %healmath% points!
pause>nul
if %playerhealth% GEQ %PMH% set playerhealth=%PMH%
goto area1






:block
if %enemydmg% LEQ 1 goto blockfail

set /a attack= 2
set /a attack=%attack%
set /a enemydmg=%emenydmg%/%attack%

set /a enemyattack= %enemydmg%
set /a enemyattack=%enemyattack%
set /a playerHealth=%playerHealth%-%enemyattack%

set /a attack= 2
set /a attack=%attack%
set /a enemydmg=%emenydmg%*%attack%

cls
echo You took only half damage.
pause>nul
goto area1



:blockfail
cls
echo This monster is too weak to block!
pause>nul
goto area1



:area1attack
set /a attack= 1
set /a attack=%attack%
set /a special=%special%-%attack%
if %special% LEQ 0 set special=0

set /a attack= %playerdmg%
set /a attack=%attack%
set /a enemyhealth=%enemyhealth%-%attack%
if %enemyhealth% LEQ 0 goto yay
goto area1shield

:area1shield
if %playershield% LEQ 0 goto area1health
set /a enemyattack= %enemydmg%
set /a enemyattack=%enemyattack%
set /a playershield=%playershield%-%enemyattack%
if %enemyhealth% LEQ 0 goto yay
if %playerhealth% LEQ 0 goto aww
goto area1

:area1health
set /a enemyattack= %enemydmg%
set /a enemyattack=%enemyattack%
set /a playerHealth=%playerHealth%-%enemyattack%
if %enemyhealth% LEQ 0 goto yay
if %playerhealth% LEQ 0 goto aww
goto area1



:specialfail
if %special% LEQ 0 goto specialrandom
cls
echo Sorry, you must wait another turn!
echo.
echo Press enter to continue...
pause>nul
goto area1


:specialrandom
set /a spec=%random% %% 8+1
if %spec% EQU 1 goto specialhit
if %spec% EQU 2 goto specialhit
if %spec% EQU 3 goto special
if %spec% EQU 4 goto specialsteal
if %spec% EQU 5 goto special
if %spec% EQU 6 goto specialhit
if %spec% EQU 7 goto specialhit




:specialsteal
set /a attack= %special%
set /a attack=%attack%
set /a special=%special%-%attack%
if %special% LSS 0 set special=0

set /a attack= 2
set /a attack=%attack%
set /a playerdmg=%playerdmg%*%attack%

set /a attack= %playerdmg%
set /a attack=%attack%
set /a enemyhealth=%enemyhealth%-%attack%

set /a attack= 2
set /a attack=%attack%
set /a playerdmg=%playerdmg%/%attack%

set /a attack= %pick%
set /a attack=%attack%
set /a money=%money%-%attack%

set /a attack= %pick%
set /a attack=%attack%
set /a totallost=%totallost%+%attack%

cls
echo You dealt double damage to the %ET%!
echo But the monster was able to pick pocket you!
echo -$%pick%
ping localhost -n 2 >nul
echo.
echo Press enter to continue...
pause>nul
if %money% LEQ 0 set money=0
set special=4
goto area1















:special
set /a attack= %special%
set /a attack=%attack%
set /a special=%special%-%attack%
if %special% LSS 0 set special=0

set /a attack= 2
set /a attack=%attack%
set /a playerdmg=%playerdmg%*%attack%

set /a attack= %playerdmg%
set /a attack=%attack%
set /a enemyhealth=%enemyhealth%-%attack%

set /a attack= 2
set /a attack=%attack%
set /a playerdmg=%playerdmg%/%attack%
cls
echo You dealt double damage to the %ET%!
echo The monster was too dazed to hit you and missed!
ping localhost -n 2 >nul
echo.
echo Press enter to continue...
pause>nul
set special=4
goto area1





:specialhit
set /a attack= %special%
set /a attack=%attack%
set /a special=%special%-%attack%
if %special% LSS 0 set special=0

set /a attack= 2
set /a attack=%attack%
set /a playerdmg=%playerdmg%*%attack%

set /a attack= %playerdmg%
set /a attack=%attack%
set /a enemyhealth=%enemyhealth%-%attack%

set /a attack= 2
set /a attack=%attack%
set /a playerdmg=%playerdmg%/%attack%

if %playershield% LEQ 0 goto area1health(1)
set /a enemyattack= %enemydmg%
set /a enemyattack=%enemyattack%
set /a playershield=%playershield%-%enemyattack%


:area1health(1)
set /a enemyattack= %enemydmg%
set /a enemyattack=%enemyattack%
set /a playerHealth=%playerHealth%-%enemyattack%


cls
echo You dealt double damage to the %ET%!
echo But it managed to hit you in the process.
ping localhost -n 2 >nul
echo.
echo Press enter to continue...
pause>nul
if %enemyhealth% LEQ 0 goto yay
if %playerhealth% LEQ 0 goto aww
set special=4
goto area1












:lvlup
if %XPlvl% GEQ 30 goto check
if %xplvl% GEQ 4 goto lvlup2
set XP=0

set /a gain= 2
set /a gain=%gain%
set /a XPmax=%XPmax%*%gain%

set /a gain= %XPreward%
set /a gain=%gain%
set /a money=%money%+%gain%

set /a gain= 1
set /a gain=%gain%
set /a XPlvl=%XPlvl%+%gain%

set playerhealth=%PMH%

cls
echo LEVEL UP!!!
echo You are now level %XPlvl%!
ping localhost -n 2 >nul
echo.
echo Reward:
echo +$%XPreward%
echo.
echo Press enter to continue...
pause>nul


set /a gain= 75
set /a gain=%gain%
set /a XPreward=%XPreward%+%gain%
set special=4

set /a attack= %XPreward%
set /a attack=%attack%
set /a totalmoney=%totalmoney%+%attack%

if %chest% GEQ %potionmax% set chestchance=15
if %chestchance% LEQ 0 goto chest

goto save


:check
if %chest% GEQ %potionmax% set chestchance=15
if %chestchance% LEQ 0 goto chest
goto save




:lvlup2
if %XPlvl% GEQ 30 goto save
if %xplvl% GEQ 14 goto lvlup3
set XP=0

set /a gain= 2
set /a gain=%gain%
set /a XPmax=%XPmax%*%gain%

set /a gain= %XPreward%
set /a gain=%gain%
set /a money=%money%+%gain%

set /a gain= 1
set /a gain=%gain%
set /a XPlvl=%XPlvl%+%gain%

set /a gain= %hpre%
set /a gain=%gain%
set /a PMH=%PMH%+%gain%

set playerhealth=%PMH%

cls
echo LEVEL UP!!!
echo You are now level %XPlvl%!
ping localhost -n 2 >nul
echo.
echo Rewards: 
echo +$%XPreward%
echo +%hpre% Max Health
echo.
echo Press enter to continue...
pause>nul
set /a attack= %XPreward%
set /a attack=%attack%
set /a totalmoney=%totalmoney%+%attack%

set /a gain= 125
set /a gain=%gain%
set /a XPreward=%XPreward%+%gain%

set /a gain= 2
set /a gain=%gain%
set /a hpre=%hpre%+%gain%

set /a attack= %XPreward%
set /a attack=%attack%
set /a totalmoney=%totalmoney%+%attack%

if %chest% GEQ %potionmax% set chestchance=15
if %chestchance% LEQ 0 goto chest
if %xplvl% GEQ 30 goto endgame

set special=4
goto save












:lvlup3
if %XPlvl% GEQ 30 goto save
set XP=0

set /a gain= 2
set /a gain=%gain%
set /a XPmax=%XPmax%*%gain%

set /a gain= %XPreward%
set /a gain=%gain%
set /a money=%money%+%gain%

set /a gain= 1
set /a gain=%gain%
set /a XPlvl=%XPlvl%+%gain%

set /a gain= %hpre%
set /a gain=%gain%
set /a PMH=%PMH%+%gain%

set /a gain= 1
set /a gain=%gain%
set /a chest=%chest%+%gain%

set playerhealth=%PMH%

cls
echo LEVEL UP!!!
echo You are now level %XPlvl%!
ping localhost -n 2 >nul
echo.
echo Rewards: 
echo +$%XPreward%
echo +%hpre% Max Health
echo +1 Chest
echo.
echo Press enter to continue...
pause>nul
set /a attack= %XPreward%
set /a attack=%attack%
set /a totalmoney=%totalmoney%+%attack%

set /a gain= 225
set /a gain=%gain%
set /a XPreward=%XPreward%+%gain%

set /a gain= 2
set /a gain=%gain%
set /a hpre=%hpre%+%gain%

set /a attack= %XPreward%
set /a attack=%attack%
set /a totalmoney=%totalmoney%+%attack%

if %chest% GEQ %potionmax% set chestchance=15
if %chestchance% LEQ 0 goto chest
if %xplvl% GEQ 30 goto endgame

set special=4
goto save






















:endgame
cls
echo YOU HAVE REACHED LEVEL 30!!!
ping localhost -n 2 >nul
echo.
echo Rewards:
echo +$50000
echo +$100000 Bank capacity
echo +20 Keys
echo +10 Chests
echo +40 Inventory capacity
echo.
echo Press enter to continue...
pause>nul

set /a gain= 40
set /a gain=%gain%
set /a potionmax=%potionmax%+%gain%

set /a gain= 50000
set /a gain=%gain%
set /a money=%money%+%gain%

set /a gain= 100000
set /a gain=%gain%
set /a accmax=%accmax%+%gain%

set /a gain= 20
set /a gain=%gain%
set /a keys=%keys%+%gain%

set /a gain= 10
set /a gain=%gain%
set /a chest=%chest%+%gain%

goto save














:dmgclean
set /a lose= 2
set /a lose=lose
set /a playerdmg=%playerdmg%/%lose%

set /a lose= 1
set /a lose=lose
set /a dmguse=%dmguse%-%lose%
goto yay


:hpclean
set /a lose= 2
set /a lose=lose
set /a playerhealth=%playerhealth%/%lose%

set /a lose= 2
set /a lose=lose
set /a PMH=%PMH%/%lose%

set /a lose= 1
set /a lose=lose
set /a hpuse=%hpuse%-%lose%
goto yay


:shclean
set /a lose= 2
set /a lose=lose
set /a playershield=%playershield%/%lose%

set /a lose= 2
set /a lose=lose
set /a PMS=%PMS%/%lose%

set /a lose= 1
set /a lose=lose
set /a shuse=%shuse%-%lose%
goto yay



:pocheck
if %dmguse% EQU 1 goto pocheck(1)
if %hpuse% EQU 1 goto pocheck(1)
if %shuse% EQU 1 goto pocheck(1)
goto save


:pocheck(1)
cls
echo Are you sure you would like to flee the battle?
echo Any potions that you have used will automaticaly where off.
echo.
echo (Y/N)
echo.
set /p cho=
if %cho% == y goto poclean
if %cho% == n goto area1
goto pocheck(1)



:poclean
if %dmguse% EQU 1 goto clean1
if %hpuse% EQU 1 goto clean1(1)
if %shuse% EQU 1 goto clean1(2)
goto loadinghome



:clean1
set /a lose= 2
set /a lose=lose
set /a playerdmg=%playerdmg%/%lose%

set /a lose= 1
set /a lose=lose
set /a dmguse=%dmguse%-%lose%
goto loadinghome



:clean1(1)
set /a lose= 2
set /a lose=lose
set /a playerhealth=%playerhealth%/%lose%

set /a lose= 2
set /a lose=lose
set /a PMH=%PMH%/%lose%

set /a lose= 1
set /a lose=lose
set /a hpuse=%hpuse%-%lose%
goto loadinghome



:clean1(2)
set /a lose= 2
set /a lose=lose
set /a playershield=%playershield%/%lose%

set /a lose= 2
set /a lose=lose
set /a PMS=%PMS%/%lose%

set /a lose= 1
set /a lose=lose
set /a shuse=%shuse%-%lose%
goto loadinghome












:yay
if %dmguse% EQU 1 goto dmgclean
if %hpuse% EQU 1 goto hpclean
if %shuse% EQU 1 goto shclean

set enemyhealth=%EMH%
cls
echo YOU WIN!!!
echo You have defeted the %ET%!
echo.
echo Reward:
echo +$%reward% 
echo +%EXre% XP
pause>nul

set /a attack= 1
set /a attack=%attack%
set /a chestchance=%chestchance%-%attack%

set /a gain= %reward%
set /a gain=%gain%
set /a money=%money%+%gain%

set /a xpgain= %EXre%
set /a xpgain=%xpgain%
set /a XP=%XP%+%xpgain%

set /a attack= 1
set /a attack=%attack%
set /a totalkills=%totalkills%+%attack%


set /a attack= %reward%
set /a attack=%attack%
set /a totalmoney=%totalmoney%+%attack%
set special=4

:reroll

set /a lootra=%random% %% 26+1
if %lootra% EQU 1 goto wincont
if %lootra% EQU 2 goto wincont
if %lootra% EQU 3 goto lootmoney
if %lootra% EQU 4 goto wincont
if %lootra% EQU 5 goto wincont
if %lootra% EQU 6 goto lootcommon
if %lootra% EQU 7 goto wincont
if %lootra% EQU 8 goto wincont
if %lootra% EQU 9 goto lootkey
if %lootra% EQU 10 goto wincont
if %lootra% EQU 11 goto wincont
if %lootra% EQU 12 goto lootrare
if %lootra% EQU 13 goto wincont
if %lootra% EQU 14 goto wincont
if %lootra% EQU 15 goto lootmoney
if %lootra% EQU 16 goto wincont
if %lootra% EQU 17 goto wincont
if %lootra% EQU 18 goto lootcommon
if %lootra% EQU 19 goto wincont
if %lootra% EQU 20 goto wincont
if %lootra% EQU 21 goto lootcommon
if %lootra% EQU 22 goto wincont
if %lootra% EQU 23 goto wincont
if %lootra% EQU 24 goto lootmoney
if %lootra% EQU 25 goto wincont
if %lootra% EQU 26 goto wincont
:wincont

if %XP% GEQ %XPmax% goto lvlup

if %chest% GEQ %potionmax% set chestchance=15
if %chestchance% LEQ 0 goto chest
goto save


:chest
set /a attack= 1
set /a attack=%attack%
set /a chest=%chest%+%attack%

set chestchance=15

cls
echo CONGRATS!!!
echo You have found a chest!
echo.
pause>nul
goto save



:lootmoney
set /a moneyra=%random% %% 3+1
if %moneyra% EQU 1 set moneyra1=12
if %moneyra% EQU 2 set moneyra1=20
if %moneyra% EQU 3 set moneyra1=37

set /a number= %moneyra1%
set /a number=%number%
set /a money=%money%+%number%

set /a number= %moneyra1%
set /a number=%number%
set /a totalmoney=%totalmoney%+%number%

cls
echo You have found an additional $%moneyra1% from the %ET%'s corpse.
pause>nul
goto wincont




:lootkey
if %keys% GEQ %potionmax% goto reroll

set /a number= 1
set /a number=%number%
set /a keys=%keys%+%number%

cls
echo You have picked up a key from the %ET%'s corpse.
pause>nul
goto wincont









:lootrare
set /a number= 1
set /a number=%number%
set /a rat=%rat%+%number%

cls
echo You have found a Rare artifact!
echo Sell this at the pawn shop for huge money!
pause>nul
goto wincont



:lootcommon
set /a number= 1
set /a number=%number%
set /a cat=%cat%+%number%

cls
echo You have found a Common artifact.
echo Sell this at the pawn shop for a small reward!
pause>nul
goto wincont




:aww
color 0c
set chestchance=15
if %dmguse% EQU 1 goto dmgclean
if %hpuse% EQU 1 goto hpclean
if %shuse% EQU 1 goto shclean

set /a tip=%random% %% 16+1
if %tip% EQU 1 set tips=Upgrading your equipment in the shop is key!
if %tip% EQU 2 set tips=Try to play it smart when it comes to stronger enemies!
if %tip% EQU 3 set tips=Be sure to heal when your low on health!
if %tip% EQU 4 set tips=Deposite some money into the bank to keep it from getting lost in the event that you die!
if %tip% EQU 5 set tips=Upgrading your health also heals a portion of your health!
if %tip% EQU 6 set tips=Leveling up will heal you automaticaly!
if %tip% EQU 7 set tips=Try not to waste all of your money on the wheel of fortune!
if %tip% EQU 8 set tips=Keys can be purchased in the shop, but there is also a chance you will find them after a battle!
if %tip% EQU 9 set tips=Mutating monsters will increase your reward, but also makes the monsters stronger!
if %tip% EQU 10 set tips=Save often!
if %tip% EQU 11 set tips=You can disable this loading screen from the launcher!
if %tip% EQU 12 set tips=This loading screen is completely artificial! :D
if %tip% EQU 13 set tips=Your game gets saved after every battle automatically!
if %tip% EQU 14 set tips=Go to your inventory to open chests!
if %tip% EQU 15 set tips=Chests contain money, potions, and rare artifacts!
if %tip% EQU 16 set tips=Rare artifacts have a small chance of selling for $250!

set enemyhealth=%EMH%
set playerhealth=%PMH%



set /a lose= %loss%
set /a lose=lose
set /a money=%money%-%lose%

set /a xplose= %XPloss%
set /a xplose=lose
set /a XP=%XP%-%xplose%

cls
echo YOU DIED!!!
echo Penalty:
echo -$%loss%
echo -%XPloss% XP
echo.
echo TIP: %tips%
pause>nul
set special=4

set /a attack= 1
set /a attack=%attack%
set /a totaldeaths=%totaldeaths%+%attack%

set /a lose= %loss%
set /a lose=lose
set /a totallost=%totallost%+%lose%

set /a lose= +75
set /a lose=lose
set /a loss=%loss%+%lose%
goto save


:area1fail
color 2b
cls
echo You are too strong for these monsters!
echo.
echo Mutate the monsters in the shop, then continue to the next area!
echo.
echo Press enter to return...
pause>nul
goto home


:pickarea1
set /a npc=%random% %% 10+1
if %npc% EQU 1 set ET=Mushroom
if %npc% EQU 2 set ET=Tree Ent
if %npc% EQU 3 set ET=Bolder
if %npc% EQU 4 set ET=Flower
if %npc% EQU 5 set ET=Rain Drop
if %npc% EQU 6 set ET=Grissley Bear
if %npc% EQU 7 set ET=Cave Man
if %npc% EQU 8 set ET=Bat
if %npc% EQU 9 set ET=Miner
if %npc% EQU 10 set ET=Slime
goto area1
















































:bank
if %BC% EQU UNLOCKED set accmax=999999999
if %BC% EQU UNLOCKED set banklvl=MAX
if %reso% EQU 90x35 goto low_quality_bank
color 7e
cls
echo ษอออออออออออออออออออออออออออออออออป
echo บ      Welcome to the bank!       บ
echo ฬอออออออออออออออออออออออออออออออออน
echo  Bank account: $%accur%/$%accmax% 
echo ษอออออออออออออออออออออออออออออออออป
echo  Money: $%money%     
echo บ1) Deposit: $%depamm3%                   บ
echo บ2) Deposit: $%depamm2%                  บ
echo บ3) Deposit: $%depamm%                  บ
echo บ4) Deposit: $%depamm4%                 บ
echo บ5) Deposit: $%depamm5%                บ
echo.บ                                 บ
echo บ6) Withdraw: $%withamm3%                  บ
echo บ7) Withdraw: $%withamm%                 บ
echo บ8) Withdraw: $%withamm2%                 บ
echo บ9) Withdraw: $%withamm4%                บ
echo บ10) Withdraw: $%withamm5%              บ
echo.บ                                 บ
echo  11) Withdraw All: $%accur%             
echo.บ                                 บ
echo บ12) Home                         บ                   
echo ศอออออออออออออออออออออออออออออออออผ
set /p cho=
if %cho% == 1 goto dep3fail
if %cho% == 2 goto dep2fail
if %cho% == 3 goto dep1fail
if %cho% == 4 goto dep4fail
if %cho% == 5 goto dep5fail
if %cho% == 6 goto with3fail
if %cho% == 7 goto with1fail
if %cho% == 8 goto with2fail
if %cho% == 9 goto with4fail
if %cho% == 10 goto with5fail
if %cho% == 11 goto withall
if %cho% == 12 goto home
goto bank









:low_quality_bank
color 7e
cls
echo       Welcome to the bank!       
echo.
echo  Bank account: $%accur%/$%accmax% 
echo.
echo  Money: %money%$                       
echo 1) Deposit: $%depamm3%
echo 2) Deposit: $%depamm2%
echo 3) Deposit: $%depamm%
echo 4) Deposit: $%depamm4%
echo.
echo 5) Withdraw: $%withamm3% 
echo 6) Withdraw: $%withamm%
echo 7) Withdraw: $%withamm2%
echo 8) Withdraw: $%withamm4%
echo.                                
echo 9) Withdraw All: $%accur%             
echo.
echo 10) Home
echo.
set /p cho=
if %cho% == 1 goto dep3fail
if %cho% == 2 goto dep2fail
if %cho% == 3 goto dep1fail
if %cho% == 4 goto dep4fail
if %cho% == 5 goto with3fail
if %cho% == 6 goto with1fail
if %cho% == 7 goto with2fail
if %cho% == 8 goto with4fail
if %cho% == 9 goto withall
if %cho% == 10 goto home
goto low_quality_bank










:with1fail
if %accur% LEQ 0 goto with1fail(1)
if %accur% GEQ %withamm% goto with1
cls
echo Sorry, you dont have enough in the bank to withdraw this ammount!
echo.
echo Press enter to continue...
pause>nul
goto bank

:with1fail(1)
cls
echo Sorry, the bank is empty!
echo.
echo Press enter to continue...
pause>nul
goto bank

:with1fail(2)
cls
echo Sorry, you must withdraw a smaller ammount!
echo.
echo Press enter to continue...
pause>nul
set /a gain= %withamm%
set /a gain=%gain%
set /a accur=%accur%+%gain%

set /a gain= %withamm%
set /a gain=%gain%
set /a money=%money%-%gain%
goto bank

:with1
if %accur% LEQ 0 goto with1fail(1)
set /a gain= %withamm%
set /a gain=%gain%
set /a accur=%accur%-%gain%

set /a gain= %withamm%
set /a gain=%gain%
set /a money=%money%+%gain%
if %accur% LSS 0 goto dep2fail(2)
goto bank






:with2fail
if %accur% LEQ 0 goto with2fail(1)
if %accur% GEQ %withamm2% goto with2
cls
echo Sorry, you dont have enough in the bank to withdraw this ammount!
echo.
echo Press enter to continue...
pause>nul
goto bank

:with2fail(1)
cls
echo Sorry, the bank is empty!
echo.
echo Press enter to continue...
pause>nul
goto bank

:with2fail(2)
cls
echo Sorry, you must withdraw a smaller ammount!
echo.
echo Press enter to continue...
pause>nul
set /a gain= %withamm2%
set /a gain=%gain%
set /a accur=%accur%+%gain%

set /a gain= %withamm2%
set /a gain=%gain%
set /a money=%money%-%gain%
goto bank

:with2
if %accur% LEQ 0 goto with2fail(1)
set /a gain= %withamm2%
set /a gain=%gain%
set /a accur=%accur%-%gain%

set /a gain= %withamm2%
set /a gain=%gain%
set /a money=%money%+%gain%
if %accur% LSS 0 goto with2fail(2)
goto bank




:with3fail
if %accur% LEQ 0 goto with3fail(1)
if %accur% GEQ %withamm3% goto with3
cls
echo Sorry, you dont have enough in the bank to Withdraw this ammount!
echo.
echo Press enter to continue...
pause>nul
goto bank

:with3fail(1)
cls
echo Sorry, the bank is empty!
echo.
echo Press enter to continue...
pause>nul
goto bank

:with3fail(2)
cls
echo Sorry, you must withdraw a smaller ammount!
echo.
echo Press enter to continue...
pause>nul
set /a gain= %withamm3%
set /a gain=%gain%
set /a accur=%accur%+%gain%

set /a gain= %withamm3%
set /a gain=%gain%
set /a money=%money%-%gain%
goto bank

:with3
if %accur% LEQ 0 goto with3fail(1)
set /a gain= %withamm3%
set /a gain=%gain%
set /a accur=%accur%-%gain%

set /a gain= %withamm3%
set /a gain=%gain%
set /a money=%money%+%gain%
if %accur% LSS 0 goto with3fail(2)
goto bank




:with4fail
if %accur% LEQ 0 goto with4fail(1)
if %accur% GEQ %withamm4% goto with4
cls
echo Sorry, you dont have enough in the bank to withdraw this ammount!
echo.
echo Press enter to continue...
pause>nul
goto bank

:with4fail(1)
cls
echo Sorry, the bank is empty!
echo.
echo Press enter to continue...
pause>nul
goto bank

:with4fail(2)
cls
echo Sorry, you must withdraw a smaller ammount!
echo.
echo Press enter to continue...
pause>nul
set /a gain= %withamm4%
set /a gain=%gain%
set /a accur=%accur%+%gain%

set /a gain= %withamm4%
set /a gain=%gain%
set /a money=%money%-%gain%
goto bank

:with4
if %accur% LEQ 0 goto with4fail(1)
set /a gain= %withamm4%
set /a gain=%gain%
set /a accur=%accur%-%gain%

set /a gain= %withamm4%
set /a gain=%gain%
set /a money=%money%+%gain%
if %accur% LSS 0 goto with4fail(2)
goto bank












:with5fail
if %accur% LEQ 0 goto with5fail(1)
if %accur% GEQ %withamm% goto with5
cls
echo Sorry, you dont have enough in the bank to withdraw this ammount!
echo.
echo Press enter to continue...
pause>nul
goto bank

:with5fail(1)
cls
echo Sorry, the bank is empty!
echo.
echo Press enter to continue...
pause>nul
goto bank

:with5fail(2)
cls
echo Sorry, you must withdraw a smaller ammount!
echo.
echo Press enter to continue...
pause>nul
set /a gain= %withamm5%
set /a gain=%gain%
set /a accur=%accur%+%gain%

set /a gain= %withamm5%
set /a gain=%gain%
set /a money=%money%-%gain%
goto bank

:with5
if %accur% LEQ 0 goto with5fail(1)
set /a gain= %withamm5%
set /a gain=%gain%
set /a accur=%accur%-%gain%

set /a gain= %withamm5%
set /a gain=%gain%
set /a money=%money%+%gain%
if %accur% LSS 0 goto with5fail(2)
goto bank















:dep5fail
if %money% GEQ %depamm5% goto dep5
cls
echo Sorry, you dont have enough to deposit this ammount!
echo.
echo Press enter to continue...
pause>nul
goto bank

:dep5fail(1)
cls
echo Sorry, the bank is full!
echo.
echo Press enter to continue...
pause>nul
goto bank

:dep5fail(2)
cls
echo Sorry, you must deposit a smaller ammount!
echo.
echo Press enter to continue...
pause>nul
set /a gain= %depamm5%
set /a gain=%gain%
set /a accur=%accur%-%gain%

set /a gain= %depamm5%
set /a gain=%gain%
set /a money=%money%+%gain%
goto bank




:dep5
if %accur% GEQ %accmax% goto dep5fail(1)
set /a gain= %depamm5%
set /a gain=%gain%
set /a accur=%accur%+%gain%

set /a gain= %depamm5%
set /a gain=%gain%
set /a money=%money%-%gain%
if %accur% GTR %accmax% goto dep5fail(2)
goto bank





























:dep4fail
if %money% GEQ %depamm4% goto dep4
cls
echo Sorry, you dont have enough to deposit this ammount!
echo.
echo Press enter to continue...
pause>nul
goto bank

:dep4fail(1)
cls
echo Sorry, the bank is full!
echo.
echo Press enter to continue...
pause>nul
goto bank

:dep4fail(2)
cls
echo Sorry, you must deposit a smaller ammount!
echo.
echo Press enter to continue...
pause>nul
set /a gain= %depamm4%
set /a gain=%gain%
set /a accur=%accur%-%gain%

set /a gain= %depamm4%
set /a gain=%gain%
set /a money=%money%+%gain%
goto bank




:dep4
if %accur% GEQ %accmax% goto dep4fail(1)
set /a gain= %depamm4%
set /a gain=%gain%
set /a accur=%accur%+%gain%

set /a gain= %depamm4%
set /a gain=%gain%
set /a money=%money%-%gain%
if %accur% GTR %accmax% goto dep4fail(2)
goto bank












:dep3fail
if %money% GEQ %depamm3% goto dep3
cls
echo Sorry, you dont have enough to deposit this ammount!
echo.
echo Press enter to continue...
pause>nul
goto bank

:dep3fail(1)
cls
echo Sorry, the bank is full!
echo.
echo Press enter to continue...
pause>nul
goto bank

:dep3fail(2)
cls
echo Sorry, you must deposit a smaller ammount!
echo.
echo Press enter to continue...
pause>nul
set /a gain= %depamm3%
set /a gain=%gain%
set /a accur=%accur%-%gain%

set /a gain= %depamm3%
set /a gain=%gain%
set /a money=%money%+%gain%
goto bank




:dep3
if %accur% GEQ %accmax% goto dep3fail(1)
set /a gain= %depamm3%
set /a gain=%gain%
set /a accur=%accur%+%gain%

set /a gain= %depamm3%
set /a gain=%gain%
set /a money=%money%-%gain%
if %accur% GTR %accmax% goto dep3fail(2)
goto bank







:dep1fail
if %money% GEQ %depamm% goto dep1
cls
echo Sorry, you dont have enough to deposit this ammount!
echo.
echo Press enter to continue...
pause>nul
goto bank

:dep1fail(1)
cls
echo Sorry, the bank is full!
echo.
echo Press enter to continue...
pause>nul
goto bank

:dep1fail(2)
cls
echo Sorry, you must deposit a smaller ammount!
echo.
echo Press enter to continue...
pause>nul
set /a gain= %depamm%
set /a gain=%gain%
set /a accur=%accur%-%gain%

set /a gain= %depamm%
set /a gain=%gain%
set /a money=%money%+%gain%
goto bank




:dep1
if %accur% GEQ %accmax% goto dep1fail(1)
set /a gain= %depamm%
set /a gain=%gain%
set /a accur=%accur%+%gain%

set /a gain= %depamm%
set /a gain=%gain%
set /a money=%money%-%gain%
if %accur% GTR %accmax% goto dep1fail(2)
goto bank




:dep2fail
if %money% GEQ %depamm2% goto dep2
cls
echo Sorry, you dont have enough to deposit this ammount!
echo.
echo Press enter to continue...
pause>nul
goto bank

:dep2fail(1)
cls
echo Sorry, the bank is full!
echo.
echo Press enter to continue...
pause>nul
goto bank

:dep2fail(2)
cls
echo Sorry, you must deposit a smaller ammount!
echo.
echo Press enter to continue...
pause>nul
set /a gain= %depamm2%
set /a gain=%gain%
set /a accur=%accur%-%gain%

set /a gain= %depamm2%
set /a gain=%gain%
set /a money=%money%+%gain%
goto bank




:dep2
if %accur% GEQ %accmax% goto dep2fail(1)
set /a gain= %depamm2%
set /a gain=%gain%
set /a accur=%accur%+%gain%

set /a gain= %depamm2%
set /a gain=%gain%
set /a money=%money%-%gain%
if %accur% GTR %accmax% goto dep2fail(2)
goto bank



:withall
set /a gain= %accur%
set /a gain=%gain%
set /a money=%money%+%gain%

set /a gain= %accur%
set /a gain=%gain%
set /a accur=%accur%-%gain%
goto bank










:shop
if %reso% EQU 90x35 goto low_quality_shop
if %money% LEQ 0 set money=0
cls
color 7e
echo ษออออออออออออออออออออป
echo บWelcome to the shop!บ
echo ศออออออออออออออออออออผ
echo.
echo  Money: $%money%       
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo   ษออออออออออออออออออออออป
echo   บ    Sword: Level %swordlvl%    บ  
echo   ศออออออออออออออออออออออผ                                                        
echo  1) Upgrade: $%swordprice%        Current Damage: %playerdmg%                                              
echo.         
echo.                                                                         
echo   ษออออออออออออออออออออออป
echo   บ    Health: Level %heallvl%   บ  
echo   ศออออออออออออออออออออออผ                                                                
echo  2) Upgrade: $%huprice%        Current Max Health: %PMH%                                                
echo.
echo.                                                                                   
echo   ษออออออออออออออออออออออป
echo   บ    Shield: Level %shieldlvl%   บ  
echo   ศออออออออออออออออออออออผ                                                                                       
echo  3) Upgrade: $%shieldprice%        Current Shield Points: %PMS%                                          
echo.
echo.                                                                                   
echo   ษออออออออออออออออออออออป
echo   บ   XP Income: Level %EXlvl% บ  
echo   ศออออออออออออออออออออออผ                                                               
echo  4) Upgrade: $%EXprice%        Current XP Income: %EXre% XP                                   
echo.
echo.                                                                                   
echo   ษออออออออออออออออออออออป
echo   บBank Capacity: Level %banklvl%บ  
echo   ศออออออออออออออออออออออผ                                                      
echo  5) Upgrade: $%bankprice%        Current Capacity: $%accmax%                                    
echo.
echo.
echo  6) Purchase a key: $%keyprice%
echo.
echo  7) Potions                                                                        
echo.                                                                                  
echo  8) Mutate monsters: Level %gainlvl%                                                                                
echo                       ษอออออป                                                        
echo  9) Wheel Of Fortune: บ $%wheelprice% บ                                                        
echo.                      ศอออออผ                                                           
echo.                                                                                  
echo  10) Home                                                                          
echo.ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
set /p cho=
if %cho% == 1 goto sufail
if %cho% == 2 goto hufail
if %cho% == 3 goto shufail
if %cho% == 4 goto EXupfail
if %cho% == 5 goto bankupfail
if %cho% == 6 goto keyfail
if %cho% == 7 goto potionsfail
if %cho% == 8 goto eucon
if %cho% == 9 goto wheelfail
if %cho% == 10 goto home
if %cho% == cheat set money=99999999
goto shop


:pawnshop
cls
echo ษออออออออออออออออออออออออออออป
echo บWelcome to the Pawn Shop!   บ
echo.ฬออออออออออออออออออออออออออออน
echo บCommon Artifacts: %cat%         บ
echo บRare Artifacts: %rat%           บ
echo.ฬออออออออออออออออออออออออออออน
echo บ                            บ
echo บ1) Sell Common artifact     บ
echo บ2) Sell Rare artifact       บ
echo.บ                            บ
echo บ3) Home                     บ
echo ศออออออออออออออออออออออออออออผ
set /p cho=
if %cho% == 1 goto sell1fail
if %cho% == 2 goto sell2fail
if %cho% == 3 goto home
goto pawnshop


:sell1fail
if %cat% GEQ 1 goto sell1
cls
echo You dont have any artifacts of this type to sell.
echo.
pause>nul
goto pawnshop

:sell1
set /a sell=%random% %% 4+1
if %sell% EQU 1 set sellprice=1
if %sell% EQU 2 set sellprice=2
if %sell% EQU 3 set sellprice=3
if %sell% EQU 4 set sellprice=5


set /a number= 1
set /a number=%number%
set /a cat=%cat%-%number%

set /a number= %sellprice%
set /a number=%number%
set /a money=%money%+%number%

cls
echo You have sold a common artifact for %sellprice%$!
echo.
pause>nul
goto pawnshop





:sell2fail
if %rat% GEQ 1 goto sell2
cls
echo You dont have any artifacts of this type to sell.
echo.
pause>nul
goto pawnshop


:sell2
set /a sell=%random% %% 9+1
if %sell% EQU 1 set sellprice=44
if %sell% EQU 2 set sellprice=44
if %sell% EQU 3 set sellprice=79
if %sell% EQU 4 set sellprice=79
if %sell% EQU 5 set sellprice=92
if %sell% EQU 6 set sellprice=92
if %sell% EQU 7 set sellprice=145
if %sell% EQU 8 set sellprice=145
if %sell% EQU 9 set sellprice=250

set /a number= 1
set /a number=%number%
set /a rat=%rat%-%number%

set /a number= %sellprice%
set /a number=%number%
set /a money=%money%+%number%

cls
echo You have sold a Rare artifact for %sellprice%$!
echo.
pause>nul
goto pawnshop











:low_quality_shop
if %money% LEQ 0 set money=0
cls
color 7e
echo Welcome to the shop!
echo.
echo  Money: $%money%
echo.
echo        Sword: Level %swordlvl%                                                          
echo  1) Upgrade: $%swordprice%        Current Damage: %playerdmg%
echo.
echo        Health: Level %heallvl%                                                               
echo  2) Upgrade: $%huprice%        Current Max Health: %PMH%
echo.                                                                                   
echo        Shield: Level %shieldlvl%
echo  3) Upgrade: $%shieldprice%        Current Shield Points: %PMS%
echo.
echo        XP Income: Level %EXlvl%
echo  4) Upgrade: $%EXprice%        Current XP Income: %EXre% XP                                   
echo.
echo   Bank Capacity: Level %banklvl% 
echo  5) Upgrade: $%bankprice%        Current Capacity: $%accmax%
echo.
echo.
echo  6) Purchase a key: $%keyprice%
echo.
echo  7) Potion
echo.
echo  8) Mutate monsters: Level %gainlvl%
echo.                                                                                                       
echo  9) Wheel Of Fortune:  $%wheelprice%
echo. 
echo.
echo  10) Home
echo.
set /p cho=
if %cho% == 1 goto sufail
if %cho% == 2 goto hufail
if %cho% == 3 goto shufail
if %cho% == 4 goto EXupfail
if %cho% == 5 goto bankupfail
if %cho% == 6 goto keyfail
if %cho% == 7 goto potionsfail
if %cho% == 8 goto eucon
if %cho% == 9 goto wheelfail
if %cho% == 10 goto home
if %cho% == cheat set money=99999999
goto low_quality_shop









:keyfail
if %keys% GEQ %potionmax% goto keyfail(1)
if %money% GEQ %keyprice% goto key
cls
echo Sorry, you need $%keyprice% to purchase this!
pause>nul
goto shop

:keyfail(1)
cls
echo Sorry, you are carrying the max key capacity!
pause>nul
goto shop



:key
cls
set /a gain= %keyprice%
set /a gain=%gain%
set /a money=%money%-%gain%

set /a gain= 1
set /a gain=%gain%
set /a keys=%keys%+%gain%

echo You have purchased a Key!
pause>nul
goto shop





































:bankupfail
if %banklvl% GEQ 10 set banklvl=MAX
if %banklvl% GEQ 10 goto max
if %money% GEQ %bankprice% goto bankup
cls
echo Sorry, you need $%bankprice% to purchase!
echo.
echo Press enter to continue...
pause>nul
goto shop

:bankup
set /a gain= %bankprice%
set /a gain=%gain%
set /a money=%money%-%gain%

set /a gain= 2
set /a gain=%gain%
set /a bankprice=%bankprice%*%gain%

set /a gain= 1
set /a gain=%gain%
set /a banklvl=%banklvl%+%gain%

set /a gain= 3
set /a gain=%gain%
set /a accmax=%accmax%*%gain%
if %banklvl% GEQ 10 set banklvl=MAX
if %banklvl% GEQ 10 goto max(1)
cls
echo You can now deposite a maximum of $%accmax%!
echo.
echo Press enter to continue...
pause>nul
goto shop






:EXupfail
if %EXlvl% GEQ 1000 set EXlvl=MAX
if %EXlvl% GEQ 1000 goto max
if %money% GEQ %EXprice% goto EXup
cls
echo Sorry, you need $%EXprice% to purchase!
echo.
echo Press enter to continue...
pause>nul
goto shop




:EXup
set /a gain= 1
set /a gain=%gain%
set /a EXlvl=%EXlvl%+%gain%

set /a gain= 7
set /a gain=%gain%
set /a EXre=%EXre%+%gain%

set /a gain= %EXprice%
set /a gain=%gain%
set /a money=%money%-%gain%

set /a gain= 150
set /a gain=%gain%
set /a EXprice=%EXprice%+%gain%
if %EXlvl% GEQ 1000 set EXlvl=MAX
if %EXlvl% GEQ 1000 goto max(1)
cls
echo You now gain %EXre% XP for every monster kill!
echo.
echo Press enter to continue...
pause>nul
goto shop





:potionsfail
if %XPlvl% GEQ 4 goto potions
cls
echo Sorry, you need to be level 4 to purchase potions!
echo.
echo Press enter to continue...
pause>nul
goto shop









:potions
if %reso% EQU 90x35 goto low_quality_potions
if %potionmax% LEQ 4 set maxlabel= 
cls
echo ษอออออออออออออออออออออออออออออออออออออป
echo บSelect a potion to purchase:         บ
echo.ฬอออออออออออออออออออออออออออออออออออออน
echo บMoney: $%money%
echo.บ                                     บ
echo บ1) 2X Damage: $%dmgPprice%     Count: %dmgP%
echo บ                                     บ
echo บ2) 2X Health: $%hpPprice%     Count: %hpP%
echo บ                                     บ
echo บ3) 2X Shield: $%shPprice%     Count: %shP%
echo บ                                     บ
echo บ4) Healing Potion: $%healprice%     Count: %hlp%
echo.บ                                     บ
echo บ5) Upgrade Inventory Capacity        บ 
echo บ  Level %polvl%: $%poprice% %maxlabel%
echo.บ                                     บ
echo บ10) Back                             บ
echo ศอออออออออออออออออออออออออออออออออออออผ
echo.
set /p cho=
if %cho% == 1 goto dmg2xpurchfail
if %cho% == 2 goto hp2xpurchfail
if %cho% == 3 goto sh2xpurchfail
if %cho% == 4 goto hlpurchfail
if %cho% == 5 goto poupfail
if %cho% == 10 goto shop
goto potions







:low_quality_potions
if %reso% EQU 90x35 goto low_quality_bank
if %potionmax% LEQ 4 set maxlabel= 
cls
echo Select a potion to purchase:
echo.
echo Money: $%money%
echo.
echo 1) 2X Damage: $%dmgPprice%     Count: %dmgP%
echo.
echo 2) 2X Health: $%hpPprice%     Count: %hpP%
echo.
echo 3) 2X Shield: $%shPprice%     Count: %shP%
echo.
echo 4) Healing Potion: $%healprice%     Count: %hlp%
echo.
echo 5) Upgrade Inventory Capacity        
echo   Level %polvl%: $%poprice% %maxlabel%
echo.
echo 10) Back
echo.
set /p cho=
if %cho% == 1 goto dmg2xpurchfail
if %cho% == 2 goto hp2xpurchfail
if %cho% == 3 goto sh2xpurchfail
if %cho% == 4 goto hlpurchfail
if %cho% == 5 goto poupfail
if %cho% == 10 goto shop
goto low_quality_potions


































:poupfail
if %polvl% GEQ 5 goto max
if %money% GEQ %poprice% goto poup
cls
echo Sorry, you need %poprice% to purchase!
echo.
echo Press enter to continue...
pause>nul
goto potions



:poup
set /a gain= 1
set /a gain=%gain%
set /a potionmax=%potionmax%+%gain%

set /a gain= %poprice%
set /a gain=%gain%
set /a money=%money%-%gain%

set /a gain= 4
set /a gain=%gain%
set /a poprice=%poprice%*%gain%

set /a gain= 1
set /a gain=%gain%
set /a polvl=%polvl%+%gain%

cls
if %polvl% GEQ 5 set maxlabel=(MAX)
echo You can now carry up to %potionmax% of each potion!
echo.
echo Press enter to continue...
pause>nul
goto potions








:hlpurchfail
if %hlP% EQU %potionmax% goto hlpurchfail(1)
if %money% GEQ %hlPprice% goto hlpurch
cls
echo Sorry, you need $%healprice% to purhcase!
echo.
echo Press enter to continue...
pause>nul
goto potions


:hlpurchfail(1)
cls
echo You can not hold anymore of these potions!
echo.
echo Press enter to continue...
pause>nul
goto potions



:hlpurch
cls
set /a gain= 1
set /a gain=%gain%
set /a hlP=%hlP%+%gain%

set /a gain= %healprice%
set /a gain=%gain%
set /a money=%money%-%gain%

cls
echo You have purchased a healing poiton!
echo.
echo Press enter to continue...
pause>nul
goto potions

















:dmg2xpurchfail
if %dmgP% EQU %potionmax% goto dmg2xpurchfail(1)
if %money% GEQ %dmgPprice% goto dmg2xpurch
cls
echo Sorry, you need $%dmgPprice% to purhcase!
echo.
echo Press enter to continue...
pause>nul
goto potions

:dmg2xpurchfail(1)
cls
echo You can not hold anymore of these potions!
echo.
echo Press enter to continue...
pause>nul
goto potions




:dmg2xpurch
cls
set /a gain= 1
set /a gain=%gain%
set /a dmgP=%dmgP%+%gain%

set /a gain= %dmgPprice%
set /a gain=%gain%
set /a money=%money%-%gain%

set /a gain= 25
set /a gain=%gain%
set /a dmgPprice=%dmgPprice%+%gain%
cls
echo You have purchased a Damage potion!
echo.
echo Press enter to continue...
pause>nul
goto potions







:hp2xpurchfail
if %hpP% EQU %potionmax% goto hp2xpurchfail(1)
if %money% GEQ %hpPprice% goto hp2xpurch
cls
echo Sorry, you need $%hpPprice% to purhcase!
echo.
echo Press enter to continue...
pause>nul
goto potions

:hp2xpurchfail(1)
cls
echo You can not hold anymore of these potions!
echo.
echo Press enter to continue...
pause>nul
goto potions


:hp2xpurch
cls
set /a gain= 1
set /a gain=%gain%
set /a hpP=%hpP%+%gain%

set /a gain= %hpPprice%
set /a gain=%gain%
set /a money=%money%-%gain%

set /a gain= 75
set /a gain=%gain%
set /a hpPprice=%hpPprice%+%gain%
cls
echo You have purchased a Health potion!
echo.
echo Press enter to continue...
pause>nul
goto potions




:sh2xpurchfail
if %shP% EQU %potionmax% goto sh2xpurchfail(1)
if %money% GEQ %shPprice% goto sh2xpurch
cls
echo Sorry, you need $%shPprice% to purhcase!
echo.
echo Press enter to continue...
pause>nul
goto potions


:sh2xpurchfail(1)
cls
echo You can not hold anymore of these potions!
echo.
echo Press enter to continue...
pause>nul
goto potions


:sh2xpurch
cls
set /a gain= 1
set /a gain=%gain%
set /a shP=%shP%+%gain%

set /a gain= %shPprice%
set /a gain=%gain%
set /a money=%money%-%gain%

set /a gain= 125
set /a gain=%gain%
set /a shPprice=%shPprice%+%gain%
cls
echo You have purchased a Shield potion!
echo.
echo Press enter to continue...
pause>nul
goto potions


















:wheelfail
if %money% GEQ %wheelprice% goto wheel
cls
echo Sorry, you need $%wheelprice% to enter the Wheele of fortune!
echo.
echo Press enter to continue...
pause>nul
goto shop


:refund
set /a gain= %wheelprice%
set /a gain=%gain%
set /a money=%money%+%gain%
cls
echo You have been refunded.
echo.
echo Press enter to continue...
pause>nul
goto shop




:wheel
set /a gain= %wheelprice%
set /a gain=%gain%
set /a money=%money%-%gain%

:wheel(1)
if %reso% EQU 90x35 goto low_quality_wheel
cls
echo.ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo บWelcome to the Wheel Of Fortune!!!                         บ
echo.ฬอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo บMoney: $%money%
echo.บ                                                           บ
echo บCurrent win streak: %win% Wins
echo บPosible Rewards: [$%pos1%] [$%pos2%] [-$%pos3%] [$%pos4%] [-$%pos5%]
echo.บ                                                           บ
echo บ1) PLAY                                                    บ
echo บ2) What is a win streak?                                   บ
echo บ3) Back (You will be refunded)                             บ
echo.ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
set /p cho=
if %cho% == 1 goto wheelplay
if %cho% == 2 goto wininfo
if %cho% == 3 goto refund
goto wheel(1)




:low_quality_wheel
cls
echo Welcome to the Wheel Of Fortune!!!

echo Money: $%money%
echo.
echo Current win streak: %win% Wins
echo Posible Rewards: [%pos1%] [%pos2%] [-%pos3%] [%pos4%] [-%pos5%]
echo.
echo 1) PLAY
echo 2) What is a win streak?
echo 3) Back (You will be refunded)
echo.
set /p cho=
if %cho% == 1 goto wheelplay
if %cho% == 2 goto wininfo
if %cho% == 3 goto refund
goto low_quality_wheel













:wininfo
cls
echo When you spin and land on a prize, it will double
echo the prize value, loss value, and admission value.
echo Landing on a loss will result in the streak ending,
echo and reseting the multiplier.
echo.
echo Press enter to continue...
pause>nul
goto wheel(1)











:wheelplay
cls
echo The wheel is spining...
ping localhost -n 4 >nul
cls
echo The wheel is coming to a halt...
ping localhost -n 4 >nul
cls
set /a wheel=%random% %% 11+1
if %wheel% EQU 1 goto pos1
if %wheel% EQU 2 goto pos3
if %wheel% EQU 3 goto pos2
if %wheel% EQU 4 goto pos2
if %wheel% EQU 5 goto pos4
if %wheel% EQU 6 goto pos3
if %wheel% EQU 7 goto pos5
if %wheel% EQU 8 goto pos1
if %wheel% EQU 9 goto pos3
if %wheel% EQU 10 goto pos3
if %wheel% EQU 11 goto pos5
if %wheel% EQU 12 goto pos3
if %wheel% EQU 13 goto pos5

:pos1
set /a gain= %pos1%
set /a gain=%gain%
set /a money=%money%+%gain%

cls
echo YOU WIN
echo +$%pos1%
echo.
echo Press enter to coninue...
pause>nul
set /a gain= 2
set /a gain=%gain%
set /a wheelprice=%wheelprice%*%gain%

set /a gain= 3
set /a gain=%gain%
set /a pos1=%pos1%*%gain%

set /a gain= 3
set /a gain=%gain%
set /a pos2=%pos2%*%gain%

set /a gain= 3
set /a gain=%gain%
set /a pos3=%pos3%*%gain%

set /a gain= 3
set /a gain=%gain%
set /a pos4=%pos4%*%gain%

set /a gain= 3
set /a gain=%gain%
set /a pos5=%pos5%*%gain%

set /a gain= 1
set /a gain=%gain%
set /a win=%win%+%gain%
goto shop

:pos2
set /a gain= %pos2%
set /a gain=%gain%
set /a money=%money%+%gain%

cls
echo YOU WIN
echo +$%pos2%
echo.
echo Press enter to coninue...
pause>nul
set /a gain= 2
set /a gain=%gain%
set /a wheelprice=%wheelprice%*%gain%

set /a gain= 3
set /a gain=%gain%
set /a pos1=%pos1%*%gain%

set /a gain= 3
set /a gain=%gain%
set /a pos2=%pos2%*%gain%

set /a gain= 3
set /a gain=%gain%
set /a pos3=%pos3%*%gain%

set /a gain= 3
set /a gain=%gain%
set /a pos4=%pos4%*%gain%

set /a gain= 3
set /a gain=%gain%
set /a pos5=%pos5%*%gain%

set /a gain= 1
set /a gain=%gain%
set /a win=%win%+%gain%
goto shop


:pos3
set /a gain= %pos3%
set /a gain=%gain%
set /a money=%money%-%gain%


cls
echo YOU LOSE!!!
echo -$%pos3%
echo.
echo Better luck nextime!
echo Press enter to coninue...
pause>nul
set win=0
set wheelprice=25
set pos1=10
set pos2=50
set pos3=20
set pos4=100
set pos5=80
goto shop

:pos4
set /a gain= %pos4%
set /a gain=%gain%
set /a money=%money%+%gain%

cls
echo YOU WIN
echo +$%pos4%
echo.
echo Press enter to coninue...
pause>nul
set /a gain= 2
set /a gain=%gain%
set /a wheelprice=%wheelprice%*%gain%

set /a gain= 3
set /a gain=%gain%
set /a pos1=%pos1%*%gain%

set /a gain= 3
set /a gain=%gain%
set /a pos2=%pos2%*%gain%

set /a gain= 3
set /a gain=%gain%
set /a pos3=%pos3%*%gain%

set /a gain= 3
set /a gain=%gain%
set /a pos4=%pos4%*%gain%

set /a gain= 3
set /a gain=%gain%
set /a pos5=%pos5%*%gain%

set /a gain= 1
set /a gain=%gain%
set /a win=%win%+%gain%
goto shop


:pos5
set /a gain= %pos5%
set /a gain=%gain%
set /a money=%money%-%gain%
cls
echo YOU LOSE!!!
echo -$%pos5%
echo.
echo Better luck nextime!
echo Press enter to coninue...
pause>nul
set win=0
set wheelprice=25
set pos1=10
set pos2=50
set pos3=20
set pos4=100
set pos5=80
goto shop




















:su
if %swordlvl% GEQ 200 set swordlvl=MAX
if %swordlvl% GEQ 200 goto max

set /a attackup= +4
set /a attackup=%attackup%
set /a loss=%loss%+%attackup%

set /a attackup= +1
set /a attackup=%attackup%
set /a swordlvl=%swordlvl%+%attackup%


set /a attackup= %swordprice%
set /a attackup=%attackup%
set /a money=%money%-%attackup%

set /a attackup= +2
set /a attackup=%attackup%
set /a playerdmg=%playerdmg%+%attackup%
goto sucess

:sucess
if %swordlvl% GEQ 350 set swordlvl=MAX
if %swordlvl% GEQ 350 goto max(1)
set /a priceinc= +135
set /a priceinc=%priceinc%
set /a swordprice=%swordprice%+%priceinc%
cls
echo You now deal %playerdmg% damage!
pause>nul
goto shop


:max
cls
echo This upgrade is already maxed out!
pause>nul
goto shop

:max(1)
cls
echo This upgrade is now maxed out!
pause>nul
goto shop




:sufail
if %money% GEQ %swordprice% goto su
cls
echo Sorry, you need $%swordprice% to purchase!
pause>nul
goto shop












:hu
if %heallvl% GEQ 350 set heallvl=MAX
if %heallvl% GEQ 350 goto max

set /a attackup= +7
set /a attackup=%attackup%
set /a loss=%loss%+%attackup%

set /a healthup= +1
set /a healthup=%healthup%
set /a heallvl=%heallvl%+%healthup%


set /a attackup= %huprice%
set /a attackup=%attackup%
set /a money=%money%-%huprice%

set /a attackup= +35
set /a attackup=%attackup%
set /a playerhealth=%playerhealth%+%attackup%

set /a attackup= +35
set /a attackup=%attackup%
set /a PMH=%PMH%+%attackup%

goto husucess

:husucess
if %heallvl% GEQ 350 set heallvl=MAX
if %heallvl% GEQ 350 goto max(1)
set /a priceinc= +110
set /a priceinc=%priceinc%
set /a huprice=%huprice%+%priceinc%

set /a priceinc= +4
set /a priceinc=%priceinc%
set /a healprice=%healprice%+%priceinc%
cls
echo You now have %PMH% max health points!
echo.
pause>nul
goto shop


:hufail
if %money% GEQ %huprice% goto hu
cls
echo Sorry, you need $%huprice% to purchase!
pause>nul
goto shop







:eucon
if %reso% EQU 90x35 goto low_quality_eucon
cls
echo ษออออออออออออออออออออออออออออออออออออออออออป
echo บAre you sure you would like to do this?   บ
echo บYour reward will be increased hansomly,   บ
echo บbut the enemies will become more powerful.บ
echo บ(Y/N)                                     บ
echo ศออออออออออออออออออออออออออออออออออออออออออผ
echo Current reward per kill: $%reward%
echo Current monster damage: %enemydmg%
echo Current monster health: %EMH%
echo.
echo.
set /p cho=
if %cho% == y goto eufail
if %cho% == n goto shop
goto eucon


:low_quality_eucon
cls
echo  Are you sure you would like to do this?  
echo  Your reward will be increased hansomly,  
echo  but the enemies will become more powerful.
echo  (Y/N)                                    
echo.
echo Current reward per kill: $%reward%
echo Current monster damage: %enemydmg%
echo Current monster health: %EMH%
echo.
echo.
set /p cho=
if %cho% == y goto eufail
if %cho% == n goto shop
goto low_quality_eucon







:eu
if %eu% GEQ 30 set eu=30

if %gainlvl% GEQ 150 set gainlvl=MAX
if %gainlvl% GEQ 150 goto max

set /a attackup= +100
set /a attackup=%attackup%
set /a loss=%loss%+%attackup%

set /a healthup= +1
set /a healthup=%healthup%
set /a gainlvl=%gainlvl%+%healthup%

set /a attackup= +75
set /a attackup=%attackup%
set /a reward=%reward%+%attackup%

set /a attackup= +35
set /a attackup=%attackup%
set /a 	EXre=%EXre%+%attackup%

set /a attackup= +7
set /a attackup=%attackup%
set /a enemydmg=%enemydmg%+%attackup%

set /a attackup= +110
set /a attackup=%attackup%
set /a EMH=%EMH%+%attackup%
goto eusucess

:eusucess
if %gainlvl% GEQ 150 set gainlvl=MAX
if %gainlvl% GEQ 150 goto max(1)

set playerhealth=%PMH%

cls
echo You now gain $%reward% per kill!
echo But the enemies grow stronger...
echo.
echo All health has been restored for free!
echo.
pause>nul
set /a attackup= 4
set /a attackup=%attackup%
set /a eu=%eu%+%attackup%
goto shop


:eufail
if %eu% GEQ 30 set eu=30
if %XPlvl% GEQ %eu% goto eu
cls
echo Sorry, you need to be Level %eu% to mutate the monsters!
echo.
echo Press enter to continue...
pause>nul
goto shop


















:shu
if %shieldlvl% GEQ 400 set shieldlvl=MAX
if %shieldlvl% GEQ 400 goto max

set /a attackup= +4
set /a attackup=%attackup%
set /a loss=%loss%+%attackup%

set /a attackup= +1
set /a attackup=%attackup%
set /a shieldlvl=%shieldlvl%+%attackup%


set /a attackup= %shieldprice%
set /a attackup=%attackup%
set /a money=%money%-%attackup%

set /a attackup= +2
set /a attackup=%attackup%
set /a PMS=%PMS%+%attackup%
goto shucess

:shucess
if %shieldlvl% GEQ 400 set shieldlvl=MAX
if %shieldlvl% GEQ 400 goto max(1)
set /a priceinc= +700
set /a priceinc=%priceinc%
set /a shieldprice=%shieldprice%+%priceinc%
cls
echo You now have %PMS% max shield points!
pause>nul
goto shop



:shufail
if %money% GEQ %shieldprice% goto shu
cls
echo Sorry, you need $%shieldprice% to purchase!
pause>nul
goto shop


