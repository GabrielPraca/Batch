@echo off
set modx=71
set mody=28
:mod
if %modx% gtr 39 set /a modx-=1
if %mody% gtr 17 set /a mody-=1
mode %modx%,%mody%&&echo Reescalando aguarde...
if not %modx%==39 goto mod
set inst=null
set pr=1000
set p=0
set /a pacx=%random%%%11
set /a pacy=%random%%%11
for /l %%x in (0, 1, 10) do for /l %%y in (0, 1, 10) do set x%%xy%%y= 
set x%pacx%y%pacy%=C
:co
set /a cox=%random%%%11
set /a coy=%random%%%11
if x%cox%y%coy%==x%pacx%y%pacy% goto co
:XOXO
if %pr% lss 0 goto fim
set x%pacx%y%pacy%=C
set x%cox%y%coy%=*
cls&&echo #############&&echo #%x0y0%%x1y0%%x2y0%%x3y0%%x4y0%%x5y0%%x6y0%%x7y0%%x8y0%%x9y0%%x10y0%#&&echo #%x0y1%%x1y1%%x2y1%%x3y1%%x4y1%%x5y1%%x6y1%%x7y1%%x8y1%%x9y1%%x10y1%#&&echo #%x0y2%%x1y2%%x2y2%%x3y2%%x4y2%%x5y2%%x6y2%%x7y2%%x8y2%%x9y2%%x10y2%#    -Pulos restantes: %pr%&&echo #%x0y3%%x1y3%%x2y3%%x3y3%%x4y3%%x5y3%%x6y3%%x7y3%%x8y3%%x9y3%%x10y3%#    -Pontuacao: %p%&&echo #%x0y4%%x1y4%%x2y4%%x3y4%%x4y4%%x5y4%%x6y4%%x7y4%%x8y4%%x9y4%%x10y4%#&&echo #%x0y5%%x1y5%%x2y5%%x3y5%%x4y5%%x5y5%%x6y5%%x7y5%%x8y5%%x9y5%%x10y5%#&&echo #%x0y6%%x1y6%%x2y6%%x3y6%%x4y6%%x5y6%%x6y6%%x7y6%%x8y6%%x9y6%%x10y6%#&&echo #%x0y7%%x1y7%%x2y7%%x3y7%%x4y7%%x5y7%%x6y7%%x7y7%%x8y7%%x9y7%%x10y7%#&&echo #%x0y8%%x1y8%%x2y8%%x3y8%%x4y8%%x5y8%%x6y8%%x7y8%%x8y8%%x9y8%%x10y8%#&&echo #%x0y9%%x1y9%%x2y9%%x3y9%%x4y9%%x5y9%%x6y9%%x7y9%%x8y9%%x9y9%%x10y9%#&&echo #%x0y10%%x1y10%%x2y10%%x3y10%%x4y10%%x5y10%%x6y10%%x7y10%%x8y10%%x9y10%%x10y10%#&&echo #############
set /a rand=%random%%%2
set x%pacx%y%pacy%= 
set x%cox%y%co%= 
goto XOXO%rand%
:XOXO0
if %pacy% lss %coy% set inst=s
if %pacy% gtr %coy% set inst=w
if %pacx% lss %cox% set inst=d
if %pacx% gtr %cox% set inst=a
goto XOXO3
:XOXO1
if %pacx% gtr %cox% set inst=a
if %pacx% lss %cox% set inst=d
if %pacy% gtr %coy% set inst=w
if %pacy% lss %coy% set inst=s
:XOXO3
if %inst%==a if %pacx% lss 1 (set pacx=10&&set /a pr-=1) else (set /a pacx-=1&&set /a pr-=1)
if %inst%==d if %pacx% gtr 9 (set pacx=0&&set /a pr-=1) else (set /a pacx+=1&&set /a pr-=1)
if %inst%==w if %pacy% lss 1 (set pacy=10&&set /a pr-=1) else (set /a pacy-=1&&set /a pr-=1)
if %inst%==s if %pacy% gtr 9 (set pacy=0&&set /a pr-=1) else (set /a pacy+=1&&set /a pr-=1)
if x%cox%y%coy%==x%pacx%y%pacy% set /a p+=8&&goto co
goto XOXO
:fim
echo.
echo FIM DE JOGO!!!
echo Pontos obtidos: %p%
ping -n 1 -w 5000 10.255.255.255>nul
exit