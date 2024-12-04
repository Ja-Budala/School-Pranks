@echo off
:Start
cls
echo Remote Shutdown Tool
echo =====================
set /p IP="Enter the IP address of the target PC: "
echo.
echo Attempting to shut down the PC at %IP%...
shutdown /s /m \\%IP% /t 0
if %errorlevel% neq 0 (
    echo.
    echo Failed to execute shutdown. Ensure that the target PC's IP address is correct!
    echo Press any key to try again...
    pause > nul
    goto Start
)
echo.
echo Shutdown command sent successfully to %IP%.
pause
