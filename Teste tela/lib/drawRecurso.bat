set x=%2
set y=%3
set cont=1
set tmpStr=lalal
for /f %%a in (%1) do (
set tmpStr=%%a

call :drawRecursoRecursivo
set cont=1

set x=%2
set /a y+=1
)
goto eof


:drawRecursoRecursivo
for /f "tokens=%cont% delims='" %%b in ("!tmpStr!") do (
if not "%%b"=="" (
set x!x!y!y!=%%b
set /a x+=1
set /a cont+=1
goto drawRecursoRecursivo
)
)

:eof