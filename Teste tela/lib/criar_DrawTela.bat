echo @echo off>lib/drawTela.bat

for /l %%y in (1, 1, %2) do (
set tmpStr=echo.
for /l %%x in (1, 1, %1) do (
set x%%xy%%y=.
set tmpStr=!tmpStr!^^!x%%xy%%y^^!
)

echo !tmpStr!>>lib/drawTela.bat
)