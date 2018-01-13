set tmpStr=%1
set tmpStr=%tmpStr:~1,-1%
set len=-1

:drawStringMaqRecursivo
if not "%tmpStr%"=="" (
set /a len+=1
set tmpStr=%tmpStr:~0,-1%
goto drawStringMaqRecursivo
)

set tmpStr=%1
set tmpStr=%tmpStr:~1,-1%
for /l %%i in (-%len%,1,0) do (
if %%i lss 0 (cls&&echo !tmpStr:~0,%%i!) else (cls&&echo %tmpStr%)
ping -n 1 localhost>nul
)