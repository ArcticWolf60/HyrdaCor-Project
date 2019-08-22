mode con cols=%mc% lines=%ml%
set tutorial=ON
title RPG Clicker - Version 1.0 (Endless Mode)
@echo off
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
echo set music=%music%
)>launcher_options.bat

:hs
if not exist "Endless_Highscore.bat" (
set highscore=0
)
call Endless_Mode_Highscore





cls

if %reso% EQU 90x35 goto next

:next


if %losc% EQU OFF goto menu
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


:hssave
(
echo set highscore=%highscore%
)>Endless_Mode_Highscore.bat


:menu
cls
color 07
cls
echo ษออออออออออออออออออออออออออออออออออออออออป
echo บWELCOME TO RPG CLICKER (ENDLESS MODE)!!!บ     Highscore: Level %highscore%
echo ฬออออออออออออออออออออออออออออออออออออออออน
echo บ1) New Save                             บ
echo บ2) Load Save                            บ
echo บ                                        บ
echo บ3) Back to launcher                     บ
echo ศออออออออออออออออออออออออออออออออออออออออผ
set /p cho=
if %cho% == 1 goto new
if %cho% == 2 goto loadsave
if %cho% == 3 call RPG_Launcher
goto menu






















:new
color 07
cls
echo Please select a save file to use:
echo.
echo 1) Endless file 1
echo 2) Endless file 2
echo 3) Endless file 3
echo.
echo 10) Back
echo.
set /p cho=
if %cho% == 1 goto file1
if %cho% == 2 goto file2
if %cho% == 3 goto file3
if %cho% == 10 goto menu
goto new



:file1
set filename=Endless_file_1
goto newfile

:file2
set filename=Endless_file_2
goto newfile

:file3
set filename=Endless_file_3
goto newfile



:newfile
if not exist "%filename%.bat" (
goto values
)
call %filename%.bat
goto confirm









:loadsave
color 07
cls
echo Please select a save file to load:
echo.
echo 1) Endless file 1
echo 2) Endless file 2
echo 3) Endless file 3
echo.
echo 10) Back
echo.
set /p cho=
if %cho% == 1 goto file1load
if %cho% == 2 goto file2load
if %cho% == 3 goto file3load
if %cho% == 10 goto menu
goto loadsave

:file1load
set filename=Endless_file_1
goto load

:file2load
set filename=Endless_file_2
goto load

:file3load
set filename=Endless_file_3
goto load




:load
if not exist "%filename%.bat" (
cls
echo There is no data in this file slot!
echo.
echo Press enter to continue...
pause>nul
goto loadsave
)
call %filename%.bat
cls
echo Welcome back!
ping localhost -n 3 >nul
goto shop





:confirm
cls
color 0c
echo Are you sure you would like to override this save file?
echo Anything on this file will be reset and you will not be
echo able to recover it.
echo.
echo (Y/N)
echo.
set /p cho=
if %cho% == y goto values
if %cho% == n goto new
goto confirm




:values
color 07

set hginc=0
set hglvl=0
set hgprice=150
set hgmaxprice=150
set hg=0
set hgmax=100


set gginc=0
set gglvl=0
set ggprice=75
set ggmaxprice=75
set gg=0
set ggmax=50

set level=1
set gold=0
set reward=10
set healthreward=3

set swordprice=20
set healthprice=15
set potionprice=15

set PH=65
set PHM=65
set PD=2
set EH=10
set EHM=10
set ED=1

set potioncount=1
set potionmax=4
cls

echo Welcome to Endless Mode.
ping localhost -n 3 >nul
if %tutorials% EQU OFF goto save
echo Your Objective is to survive as long as posible.
ping localhost -n 4 >nul
echo You will start out with one free healing potion.
ping localhost -n 3 >nul
echo Killing monsters will grant you some money.
ping localhost -n 4 >nul
echo You can use this money to purchase upgrades and more potions in the shop
echo to become stronger.
ping localhost -n 5 >nul
echo After every battle, the ammount of money you gain in the NEXT battle
echo will increase by $10,
ping localhost -n 6 >nul
echo But the enemies will become stronger in return.
ping localhost -n 4 >nul
echo Dying results in the game ending, and your save file being deleted!
ping localhost -n 5 >nul
echo Manage your money any way you can, and only buy what you need.
ping localhost -n 3 >nul
echo Tips in the shop will assist you durring your journey.
ping localhost -n 4 >nul
echo GOOD LUCK!
ping localhost -n 3 >nul
echo Press enter to continue...
pause>nul
goto save



:save
color 07
(
echo set hginc=%hginc%
echo set hglvl=%hglvl%
echo set hgprice=%hgprice%
echo set hgmaxprice=%hgmaxprice%
echo set hg=%hg%
echo set hgmax=%hgmax%

echo set gginc=%gginc%
echo set gglvl=%gglvl%
echo set ggprice=%ggprice%
echo set ggmaxprice=%ggmaxprice%
echo set gg=%gg%
echo set ggmax=%ggmax%

echo set level=%level%
echo set gold=%gold%
echo set reward=%reward%
echo set healthreward=%healthreward%

echo set swordprice=%swordprice%
echo set healthprice=%healthprice%
echo set potionprice=%potionprice%

echo set PH=%PH%
echo set PHM=%PHM%
echo set PD=%PD%
echo set EH=%EH%
echo set EHM=%EHM%
echo set ED=%ED%

echo set potioncount=%potioncount%
echo set potionmax=%potionmax%
)>%filename%.bat
goto shop


:shop
set /a tip=%random% %% 11+1
if %tip% EQU 1 set tips=TIP 1/11: When you die, your save file will be terminated!
if %tip% EQU 2 set tips=TIP 2/11: The enemy will deal %ED% damage in the next fight!
if %tip% EQU 3 set tips=TIP 3/11: The enemy will have %EHM% health in next fight!
if %tip% EQU 4 set tips=TIP 4/11: Be sure to manage your money.
if %tip% EQU 5 set tips=TIP 5/11: Your reward will increase by $10 after every battle!
if %tip% EQU 6 set tips=TIP 6/11: ALWAYS take atleast 1 healing potion with you!
if %tip% EQU 7 set tips=TIP 7/11: Your highscore will be updated once you have died.
if %tip% EQU 8 set tips=TIP 8/11: Health potions heal for 1/5 of your maximum health.
if %tip% EQU 9 set tips=TIP 9/11: When a generator is full, it wont be able to generate more ultil you collect from it.
if %tip% EQU 10 set tips=TIP 10/11: Invest in upgrading your generators when your money/income is at a stable position.
if %tip% EQU 11 set tips=TIP 11/11: Healing upgrades may not be the flashiest, but can go a long way!


:shop1
set EH=%EHM%
cls
echo ษออออออออออออออออออออออออออออออออป
echo บWelcome to the shop!            บ
echo.ฬออออออออออออออออออออออออออออออออน
echo บMoney: $%gold%
echo บHealth: %PH%/%PHM%
echo บDamage: %PD%
echo บPotions: %potioncount%/%potionmax%
echo.ฬออออออออออออออออออออออออออออออออน
echo บ1) Upgrade Sword: $%swordprice%
echo บ2) Upgrade Health: $%healthprice%
echo บ3) Purchase Health potion: $%potionprice%
echo บ4) Generators                   บ
echo.บ                                บ
echo บ5) Next Battle (Level %level%)        
echo บ6) Next tip                     บ
echo บ7) Return to menu               บ
echo ศออออออออออออออออออออออออออออออออผ
echo.
echo ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo  %tips%
echo ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo.
set /p cho=
if %cho% == 1 goto up1fail
if %cho% == 2 goto up2fail
if %cho% == 3 goto pofail
if %cho% == 4 goto genmen
if %cho% == 5 goto battle
if %cho% == 6 goto shop
if %cho% == 7 goto menu
goto shop1


:genmen
cls
echo ษออออออออออออออออออออออออออออออป
echo บSelect a generator to upgrade:บ
echo.บ                              บ
echo บ1) Healing Generator          บ
echo บ2) Gold Generator             บ
echo บ3) Back to shop               บ
echo ศออออออออออออออออออออออออออออออผ
echo.
set /p cho=
if %cho% == 1 goto healinggen
if %cho% == 2 goto goldgen
if %cho% == 3 goto shop1
goto genmen







:healinggen
cls
echo ษออออออออออออออออออออออออออออออออป
echo  Healing generator: Level %hglvl%
echo.ศออออออออออออออออออออออออออออออออผ
echo.
echo     ษอออออออออออป
echo      [%hg%/%hgmax%]
echo     ศอออออออออออผ
echo.Health: %PH%/%PHM%
echo Gold: $%gold%
echo ษออออออออออออออออออออออออออออออออป
echo บ1) Heal: +%hg% Points              บ
echo บ2) Upgrade generator: $%hgprice%      บ
echo บ3) Upgrade capacity: $%hgmaxprice%       บ
echo บ4) Back to generator select     บ
echo.ศออออออออออออออออออออออออออออออออผ
echo.
set /p cho=
if %cho% == 1 goto hgheal
if %cho% == 2 goto hgup
if %cho% == 3 goto hgcup
if %cho% == 4 goto genmen
goto healinggen


:hgheal
if %hg% LEQ 0 goto hghealfail
if %PH% GEQ %PHM% goto hghealfail(1)
set /a number= %hg%
set /a number=%number%
set /a PH=%PH%+%number%

cls
echo You have been healed by %hg% points!
pause>nul
set /a number= %hg%
set /a number=%number%
set /a hg=%hg%-%number%
goto healinggen

:hghealfail
cls
echo The generator is empty!
pause>nul
goto healinggen

:hghealfail(1)
cls
echo Your health is already full.
pause>nul
goto healinggen



:hgup
cls
if %gold% LSS %hgprice% goto hgupfail
set /a number= %hgprice%
set /a number=%number%
set /a gold=%gold%-%number%

set /a number= 5
set /a number=%number%
set /a hgprice=%hgprice%+%number%

set /a number= 2
set /a number=%number%
set /a hginc=%hginc%+%number%

set /a number= 1
set /a number=%number%
set /a hglvl=%hglvl%+%number%

echo Your generator now generates %hginc% healing points
echo after every battle!
pause>nul
goto healinggen


:hgupfail
cls
echo You do not have enough money!
pause>nul
goto healinggen



:hgcup
cls
if %gold% LSS %hgmaxprice% goto hgcupfail

set /a number= %hgmaxprice%
set /a number=%number%
set /a gold=%gold%-%number%

set /a number= 50
set /a number=%number%
set /a hgmaxprice=%hgmaxprice%+%number%

set /a number= 40
set /a number=%number%
set /a hgmax=%hgmax%+%number%

echo Your generator can now hold up to %hgmax% points!
pause>nul
goto healinggen

:hgcupfail
cls
echo You do not have enough money!
pause>nul
goto healinggen











:goldgen
cls
echo ษออออออออออออออออออออออออออออออออป
echo  Gold generator: Level %gglvl%
echo.ศออออออออออออออออออออออออออออออออผ
echo.
echo     ษอออออออออออป
echo      [%gg%/%ggmax%]
echo     ศอออออออออออผ
echo.Gold: $%gold%
echo ษออออออออออออออออออออออออออออออออป
echo บ1) Collect Gold: +%gg% Gold        บ
echo บ2) Upgrade generator: $%ggprice%      บ
echo บ3) Upgrade capacity: $%ggmaxprice%       บ
echo บ4) Back to generator select     บ
echo.ศออออออออออออออออออออออออออออออออผ
echo.
set /p cho=
if %cho% == 1 goto ggheal
if %cho% == 2 goto ggup
if %cho% == 3 goto ggcup
if %cho% == 4 goto genmen
goto goldgen


:ggheal
if %gg% LEQ 0 goto gghealfail
set /a number= %gg%
set /a number=%number%
set /a gold=%gold%+%number%

cls
echo You have collected %gg% gold!
pause>nul
set /a number= %gg%
set /a number=%number%
set /a gg=%gg%-%number%
goto goldgen

:gghealfail
cls
echo The generator is empty!
pause>nul
goto goldgen




:ggup
cls
if %gold% LSS %ggprice% goto hgupfail
set /a number= %ggprice%
set /a number=%number%
set /a gold=%gold%-%number%

set /a number= 10
set /a number=%number%
set /a ggprice=%ggprice%+%number%

set /a number= 5
set /a number=%number%
set /a gginc=%gginc%+%number%

set /a number= 1
set /a number=%number%
set /a gglvl=%gglvl%+%number%

echo Your generator now generates %gginc% gold
echo after every battle!
pause>nul
goto goldgen


:ggupfail
cls
echo You do not have enough money!
pause>nul
goto goldgen



:ggcup
cls
if %gold% LSS %ggmaxprice% goto ggcupfail

set /a number= %ggmaxprice%
set /a number=%number%
set /a gold=%gold%-%number%

set /a number= 25
set /a number=%number%
set /a ggmaxprice=%ggmaxprice%+%number%

set /a number= 65
set /a number=%number%
set /a ggmax=%ggmax%+%number%

echo Your generator can now hold up to %ggmax% gold!
pause>nul
goto goldgen

:ggcupfail
cls
echo You do not have enough money!
pause>nul
goto goldgen



































:up1fail
if %gold% GEQ %swordprice% goto up1
cls
echo You don't have enough to purchase this!
pause>nul
goto shop1

:up1
set /a number= %swordprice%
set /a number=%number%
set /a gold=%gold%-%number%

set /a number= 1
set /a number=%number%
set /a PD=%PD%+%number%

set /a number= 6
set /a number=%number%
set /a swordprice=%swordprice%+%number%

cls
echo You now deal %PD% damage!
pause>nul
goto shop1





:up2fail
if %gold% GEQ %healthprice% goto up2
cls
echo You don't have enough to purchase this!
pause>nul
goto shop1

:up2
set /a number= %healthprice%
set /a number=%number%
set /a gold=%gold%-%number%

set /a number= 20
set /a number=%number%
set /a PHM=%PHM%+%number%

set /a number= 6
set /a number=%number%
set /a healthprice=%healthprice%+%number%

cls
echo You now have %PHM% max health!
pause>nul
goto shop1






:pofail
if %potioncount% GEQ %potionmax% goto pofail(1)
if %gold% GEQ %potionprice% goto po
cls
echo You don't have enough to purchase this!
pause>nul
goto shop1

:pofail(1)
cls
echo You are holding the max capacity!
pause>nul
goto shop1


:po
set /a number= %potionprice%
set /a number=%number%
set /a gold=%gold%-%number%

set /a number= 1
set /a number=%number%
set /a potioncount=%potioncount%+%number%

cls
echo You have succesfuly purchased a potion!
pause>nul
goto shop1













:battle
color 07
cls
echo ษออออออออออออออออออออออออออออออออป
echo บHealth: %PH%/%PHM%
echo บEnemy health: %EH%/%EHM%
echo.ฬออออออออออออออออออออออออออออออออน
echo บ1) Attack                       บ
echo บ2) Use health potion: (Count: %potioncount%)บ
echo.ศออออออออออออออออออออออออออออออออผ
set /p cho=
if %cho% == 1 goto attack
if %cho% == 2 goto usefail
goto battle


:attack
set /a number= %PD%
set /a number=%number%
set /a EH=%EH%-%number%

if %PH% LEQ 0 goto lose
if %EH% LEQ 0 goto win

set /a number= %ED%
set /a number=%number%
set /a PH=%PH%-%number%
if %PH% LEQ 0 set PH=0

if %PH% LEQ 0 goto lose
if %EH% LEQ 0 goto win
goto battle






:usefail
if %PH% GEQ %PHM% goto usefail2
if %potioncount% GEQ 1 goto use
cls
echo You do not have any potions to use!
pause>nul
goto battle


:usefail2
cls
echo Your health is already full!
pause>nul
goto battle




:use
set healmath=%PHM%

set /a number= 5
set /a number=%number%
set /a healmath=%healmath%/%number%

set /a number= %healmath%
set /a number=%number%
set /a PH=%PH%+%number%

set /a number= 1
set /a number=%number%
set /a potioncount=%potioncount%-%number%

cls
echo You have been healed by %healmath% points!
pause>nul
if %PH% GEQ %PHM% set PH=%PHM%
goto battle












:win
cls
set /a number= %reward%
set /a number=%number%
set /a gold=%gold%+%number%

set /a number= 3
set /a number=%number%
set /a EHM=%EHM%+%number%

set /a number= 1
set /a number=%number%
set /a ED=%ED%+%number%

set /a number= %healthreward%
set /a number=%number%
set /a PH=%PH%+%number%

set /a number= %healthreward%
set /a number=%number%
set /a PHM=%PHM%+%number%

set /a number= 1
set /a number=%number%
set /a level=%level%+%number%
cls



cls


echo You have defeted the monster!
echo +$%reward%
echo +%healthreward% Max health
pause>nul

set /a number= 0
set /a number=%number%
set /a healthreward=%healthreward%+%number%

set /a number= 10
set /a number=%number%
set /a reward=%reward%+%number%


if %hg% GEQ %hgmax% goto full1
set /a number= %hginc%
set /a number=%number%
set /a hg=%hg%+%number%
if %hg% GEQ %hgmax% goto full1

if %gg% GEQ %ggmax% goto full2
set /a number= %gginc%
set /a number=%number%
set /a gg=%gg%+%number%
if %gg% GEQ %ggmax% goto full2


goto save


:full1
if %hg% GEQ %hgmax% set hg=%hgmax%
cls
echo NOTE: One of your generators is full!
echo Try upgrading the capacity!
echo.
pause>nul
goto save

:full2
if %gg% GEQ %ggmax% set gg=%ggmax%
cls
echo NOTE: One of your generators is full!
echo Try upgrading the capacity!
echo.
pause>nul
goto save



:lose
if %level% GEQ %highscore% set highscore=%level%
DEL %filename%.bat
cls
echo You have been defeted!
echo GAME OVER!
echo.
echo 1) Return to menu
echo.
set /p cho=
if %cho% == 1 goto hssave
goto lose




















