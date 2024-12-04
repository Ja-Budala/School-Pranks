@echo off
:Start
cls
echo Simple Network Communicator
echo ============================
echo.

echo Enter the target username or IP address:
set /p target="Target: "
echo.
echo Enter your message:
set /p message="Message: "
echo.
echo Sending message to %target%...
msg %target% %message%
if %errorlevel% neq 0 (
    echo Failed to send the message. Ensure the target is reachable and messaging is enabled.
) else (
    echo Message sent successfully to %target%.
)
echo.
echo Do you want to send another message? (y/n)
set /p choice="Choice: "
if /i "%choice%"=="y" goto Start
echo Exiting communicator...
pause
exit
