@echo off
cls
echo Welcome to the message spammer!
echo ===============================

set /p message=Enter your message: 

:spam
msg * %message%
goto spam
