@echo off
title Teste tela com buffer
setlocal ENABLEDELAYEDEXPANSION
goto ini

:ini
call lib/drawStringMaq "Inicializando..."
call lib/criar_DrawTela 40 15
cls
mode 41,16
color 9E

:Render
set /a tmpY=%random%%%10+1
for /l %%X in (-20,1,41) do (
set tmpX=%%X
call lib/clearTela 40 15
call lib/drawRecurso dat/letraY.dat !tmpX! !tmpY!
set /a tmpX+=6
call lib/drawRecurso dat/letraU.dat !tmpX! !tmpY!
set /a tmpX+=6
call lib/drawRecurso dat/letraR.dat !tmpX! !tmpY!
set /a tmpX+=6
call lib/drawRecurso dat/letraI.dat !tmpX! !tmpY!
set /a tmpX=!time:~6,-3!
set /a tmpX=!tmpX!%%40 + 1
call lib/drawRecurso dat/desenho.dat !tmpX! 2

call lib/drawTela > Buffer.dat
title !time!
cls&&type Buffer.dat
)
goto Render