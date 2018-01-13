@echo off
mode 80,50
:iini
cls
color 0F
echo.
echo.
set /p nm=  Defina o Nome do filme a ser reproduzido: 
if not exist videos\%nm%\q1.dat color 0c&&echo   Video inexistente!!!&&ping -n 5 localhost>nul&&goto iini
cd videos\%nm%
set n=0
:ini
set /a n+=1
if not exist q%n%.dat set n=1
ping -n 1 localhost>nul
cls&&for /f "tokens=1 delims=•" %%a in (q%n%.dat) do echo %%a
goto ini