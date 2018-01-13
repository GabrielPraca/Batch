@echo off
color 17
title ColisЦo 2.2
SETLOCAL EnableDelayedExpansion
set modx=71
set mody=28
goto mod

:mod
if %modx% gtr 39 set /a modx-=1
if %mody% gtr 15 set /a mody-=1
mode %modx%,%mody%&&echo Reescalando aguarde...
if not %modx%==39 goto mod
for /l %%x in (0, 1, 10) do for /l %%y in (0, 1, 11) do set x%%xy%%y= 
cls
set /p loop=Defina o nЃmero de objetos: 
cls&&echo Gerando Objetos...
set /a loop-=1
set Quadro=0
set cont=0
goto gerobjs

:gerobjs
set /a pacx%cont%=1+%random%%%9
set /a pacy%cont%=1+%random%%%10
set /a pacxf%cont%=%random%%%2
set /a pacyf%cont%=%random%%%2
if !pacxf%cont%!==0 (set /a pacxf%cont%=-1) else (set /a pacxf%cont%=1)
if !pacyf%cont%!==0 (set /a pacyf%cont%=-1) else (set /a pacyf%cont%=1)
if %cont%==%loop% (set cont=0&&cls&&echo ллллллллллллл&&echo л%x0y0%%x1y0%%x2y0%%x3y0%%x4y0%%x5y0%%x6y0%%x7y0%%x8y0%%x9y0%%x10y0%л&&echo л%x0y1%%x1y1%%x2y1%%x3y1%%x4y1%%x5y1%%x6y1%%x7y1%%x8y1%%x9y1%%x10y1%л&&echo л%x0y2%%x1y2%%x2y2%%x3y2%%x4y2%%x5y2%%x6y2%%x7y2%%x8y2%%x9y2%%x10y2%л&&echo л%x0y3%%x1y3%%x2y3%%x3y3%%x4y3%%x5y3%%x6y3%%x7y3%%x8y3%%x9y3%%x10y3%л&&echo л%x0y4%%x1y4%%x2y4%%x3y4%%x4y4%%x5y4%%x6y4%%x7y4%%x8y4%%x9y4%%x10y4%л&&echo л%x0y5%%x1y5%%x2y5%%x3y5%%x4y5%%x5y5%%x6y5%%x7y5%%x8y5%%x9y5%%x10y5%л&&echo л%x0y6%%x1y6%%x2y6%%x3y6%%x4y6%%x5y6%%x6y6%%x7y6%%x8y6%%x9y6%%x10y6%л&&echo л%x0y7%%x1y7%%x2y7%%x3y7%%x4y7%%x5y7%%x6y7%%x7y7%%x8y7%%x9y7%%x10y7%л&&echo л%x0y8%%x1y8%%x2y8%%x3y8%%x4y8%%x5y8%%x6y8%%x7y8%%x8y8%%x9y8%%x10y8%л&&echo л%x0y9%%x1y9%%x2y9%%x3y9%%x4y9%%x5y9%%x6y9%%x7y9%%x8y9%%x9y9%%x10y9%л&&echo л%x0y10%%x1y10%%x2y10%%x3y10%%x4y10%%x5y10%%x6y10%%x7y10%%x8y10%%x9y10%%x10y10%л&&echo л%x0y11%%x1y11%%x2y11%%x3y11%%x4y11%%x5y11%%x6y11%%x7y11%%x8y11%%x9y11%%x10y11%л&&echo ллллллллллллл&&goto fobjs)
set /a cont+=1
goto gerobjs

:setMoreFrame
set /a Quadro+=1
title ColisЦo 2.2 - QUADRO: %Quadro%
goto return

:setObjectNewCoordinates
set x!pacx%cont%!y!pacy%cont%!= 
if !pacy%cont%!==0 set /a pacyf%cont%*=-1
if !pacy%cont%!==11 set /a pacyf%cont%*=-1
if !pacx%cont%!==0 set /a pacxf%cont%*=-1
if !pacx%cont%!==10 set /a pacxf%cont%*=-1
set /a pacx%cont%+=!pacxf%cont%!
set /a pacy%cont%+=!pacyf%cont%!
set tmpvar=x!pacx%cont%!y!pacy%cont%!
if not "!%tmpvar%!"==" " set /a pacyf%cont%*=-1&&set /a pacxf%cont%*=-1&&set /a pacx%cont%+=!pacxf%cont%!&&set /a pacy%cont%+=!pacyf%cont%!
set x!pacx%cont%!y!pacy%cont%!=ў
goto return

:fobjs
call :setObjectNewCoordinates
if %cont%==%loop% (set cont=0&&goto XOXO)
set /a cont+=1
goto fobjs

:XOXO
call :setMoreFrame
cls&&echo ллллллллллллл&&echo л%x0y0%%x1y0%%x2y0%%x3y0%%x4y0%%x5y0%%x6y0%%x7y0%%x8y0%%x9y0%%x10y0%л&&echo л%x0y1%%x1y1%%x2y1%%x3y1%%x4y1%%x5y1%%x6y1%%x7y1%%x8y1%%x9y1%%x10y1%л&&echo л%x0y2%%x1y2%%x2y2%%x3y2%%x4y2%%x5y2%%x6y2%%x7y2%%x8y2%%x9y2%%x10y2%л&&echo л%x0y3%%x1y3%%x2y3%%x3y3%%x4y3%%x5y3%%x6y3%%x7y3%%x8y3%%x9y3%%x10y3%л&&echo л%x0y4%%x1y4%%x2y4%%x3y4%%x4y4%%x5y4%%x6y4%%x7y4%%x8y4%%x9y4%%x10y4%л&&echo л%x0y5%%x1y5%%x2y5%%x3y5%%x4y5%%x5y5%%x6y5%%x7y5%%x8y5%%x9y5%%x10y5%л&&echo л%x0y6%%x1y6%%x2y6%%x3y6%%x4y6%%x5y6%%x6y6%%x7y6%%x8y6%%x9y6%%x10y6%л&&echo л%x0y7%%x1y7%%x2y7%%x3y7%%x4y7%%x5y7%%x6y7%%x7y7%%x8y7%%x9y7%%x10y7%л&&echo л%x0y8%%x1y8%%x2y8%%x3y8%%x4y8%%x5y8%%x6y8%%x7y8%%x8y8%%x9y8%%x10y8%л&&echo л%x0y9%%x1y9%%x2y9%%x3y9%%x4y9%%x5y9%%x6y9%%x7y9%%x8y9%%x9y9%%x10y9%л&&echo л%x0y10%%x1y10%%x2y10%%x3y10%%x4y10%%x5y10%%x6y10%%x7y10%%x8y10%%x9y10%%x10y10%л&&echo л%x0y11%%x1y11%%x2y11%%x3y11%%x4y11%%x5y11%%x6y11%%x7y11%%x8y11%%x9y11%%x10y11%л&&echo ллллллллллллл
goto fobjs

:return