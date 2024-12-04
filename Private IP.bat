@echo off
for /f "tokens=2 delims=:" %%A in ('ipconfig ^| findstr "IPv4 Address"') do echo Your private IP is: %%A
pause
