@echo off
:ini
set /a a=%random%%%16
set /a b=%random%%%16
if %a%==10 set a=a
if %a%==11 set a=b
if %a%==12 set a=c
if %a%==13 set a=d
if %a%==14 set a=e
if %a%==15 set a=f
if %b%==10 set b=a
if %b%==11 set b=b
if %b%==12 set b=c
if %b%==13 set b=d
if %b%==14 set b=e
if %b%==15 set b=f
color %a%%b%
ping -n 1 -w 10 1.0.0.0>nul
goto ini