@echo off
:Start
cls
echo WARNING: If you start this application, your PC could crash!
echo (y = yes; n = no)
echo ============================================================

set /p choice="Do you want to proceed? "
if /i "%choice%"=="y" (
    goto Loop
) else if /i "%choice%"=="n" (
    echo Exiting program...
    pause > nul
    exit
) else (
    echo Invalid choice! Please type 'y' or 'n'.
    pause > nul
    goto Start
)

:Loop
start cmd
goto Loop
