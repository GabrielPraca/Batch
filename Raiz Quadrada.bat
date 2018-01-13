@echo off
setlocal EnableDelayedExpansion
set NOME_BATCH=%0
if "%1" == "" (
	title Raiz Quadrada
	goto main
) else (
	title Thread - Raiz Quadrada
	call :RaizQuadrada %1
	echo !return!>raiz.Resultado
	exit
)

:RaizQuadrada
if %Numero% lss 0 (
	set return=Imposs¡vel calcular
	goto eof
) else (
	if %Numero% equ 0 (
	set return=0
	goto eof
	)
)
set nPassos=0
set nImpar=-1
set /a ultimoRes=%Numero%
:while_RaizQuadrada_0
if %UltimoRes% GEQ %nPassos% (
	set /a nPassos=!nPassos! + 1
	set /a nImpar=!nImpar! + 2
	set /a UltimoRes=!UltimoRes! - !nImpar!
	goto while_RaizQuadrada_0
)
set return=%nPassos%
goto eof

:getRaiz
start /min "" %NOME_BATCH% %Numero%
set quadro=0
:while_0_anim
if exist "raiz.Resultado" (
<raiz.Resultado set /p return=
goto eof
) else (
set /a quadro+=1
set /a quadro=!quadro!%%4
call :anim_q%quadro%
goto while_0_anim
:anim_q0
cls&echo ^| Calculando
goto eof
:anim_q1
cls&echo / Calculando.
goto eof
:anim_q2
cls&echo - Calculando..
goto eof
:anim_q3
cls&echo \ Calculando...
goto eof
)

:main
cls&set /p Numero=Digite o numero que vocˆ deseja saber a raiz quadrada: 
call :getRaiz
cls&echo A Raiz quadrada de %Numero% ‚ %return%
ping -n 1 -w 1 1.1.1.1>nul
del raiz.Resultado
pause>nul
goto main

:eof