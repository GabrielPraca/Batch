@echo off
title Contagem Prova
color 0A
set /p MAX_Q=N£mero de questäes: 
set acertos=0

:ini0
set /a porc=%acertos% * 100 / %MAX_Q%
set tbarra=
if %porc% lss 100 set tbarra= 
if %porc% lss 10 set tbarra=  
set barcont=0

:prebar0
set /a numTmp=%porc%/5
if %barcont% equ %numTmp% goto :prebar1
set tbarra=%tbarra%Û
set /a barcont+=1
goto prebar0

:prebar1
set /a numTmp=100/5
if %barcont% equ %numTmp% goto ini1
set tbarra=%tbarra%±
set /a barcont+=1
goto prebar1

:ini1
cls&echo Acertos (%acertos%/%MAX_Q%)&echo %porc%%%%tbarra%
set /a acertos += 1
:ini2
pause>nul
if %acertos% gtr %MAX_Q% goto ini2
goto ini0