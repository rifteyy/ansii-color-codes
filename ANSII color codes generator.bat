@echo off
setlocal enabledelayedexpansion
setlocal enableextensions
chcp 65001>nul
set r=175
set g=0
set b=255
set reset=[0m
set strong=[7m
set ESC=
set white=[1;37m
set grey=[38;5;241m
set ansii=[38;2;%r%;%g%;%b%m
echo [?25l[1;1f
echo [9;1H
mode 40,25
title  

:r
cls
:rloop
if %r% EQU 100 cls
if %r% EQU 10 cls
if %r% GTR 255 set /a r=255
if %g% GTR 255 set /a g=255
if %b% GTR 255 set /a b=255
set ansii=[38;2;%r%;%g%;%b%m
echo [9;1H
echo.
echo       %white%ANSII color codes generator%reset%
echo  %white%CMD color code: %reset%%grey%%%ESC%%[38;2;%r%;%g%;%b%m%reset%
echo.
echo.
echo.       
echo       %strong%R%reset%: %grey%%r%%reset% G: %grey%%g%%reset% B: %grey%%b%%reset%
echo.
echo     ╭────╮         %ansii%╭────────────────╮%reset%
echo     │ %ansii%██%reset% │         %ansii%│%reset% Hover to reset %ansii%│%reset%
echo     ╰────╯         %ansii%╰────────────────╯%reset%
echo.

choice /c ADWS 2>nul >nul
if !errorlevel! == 1 (
	set /a r=r - 1
	if %r% LEQ 0 set /a r=0
	)
if !errorlevel! == 2 (
	set /a r=r + 1
	)
if !errorlevel! == 3 (
	goto rloop
	)
if !errorlevel! == 4 (
	goto g
	)
goto rloop


:g
cls
:gloop
if %g% EQU 100 cls
if %g% EQU 10 cls
if %r% GTR 255 set /a r=255
if %g% GTR 255 set /a g=255
if %b% GTR 255 set /a b=255
set ansii=[38;2;%r%;%g%;%b%m
echo [9;1H
echo.
echo       %white%ANSII color codes generator%reset%
echo  %white%CMD color code: %reset%%grey%%%ESC%%[38;2;%r%;%g%;%b%m%reset%
echo.
echo.
echo.
echo       %reset%R%reset%: %grey%%r%%reset% %strong%G%reset%: %grey%%g%%reset% B: %grey%%b%%reset%
echo.
echo     ╭────╮         %ansii%╭────────────────╮%reset%
echo     │ %ansii%██%reset% │         %ansii%│%reset% Hover to reset %ansii%│%reset%
echo     ╰────╯         %ansii%╰────────────────╯%reset%
echo.

choice /c ADWS 2>nul >nul
if !errorlevel! == 1 (
	set /a g=g - 1
	if %g% LEQ 0 set /a g=0
	)
if !errorlevel! == 2 (
	set /a g=g + 1
	)
if !errorlevel! == 3 (
	goto r
	)
if !errorlevel! == 4 (
	goto b
	)
goto gloop


:bloop
cls
:b
if %b% EQU 100 cls
if %b% EQU 10 cls
if %r% GTR 255 set /a r=255
if %g% GTR 255 set /a g=255
if %b% GTR 255 set /a b=255
set ansii=[38;2;%r%;%g%;%b%m
echo [9;1H
echo.
echo       %white%ANSII color codes generator%reset%
echo  %white%CMD color code: %reset%%grey%%%ESC%%[38;2;%r%;%g%;%b%m%reset%
echo.
echo.
echo.
echo       %reset%R%reset%: %grey%%r%%reset% G: %grey%%g%%reset% %strong%B%reset%: %grey%%b%%reset%
echo.
echo     ╭────╮         %ansii%╭────────────────╮%reset%
echo     │ %ansii%██%reset% │         %ansii%│%reset% Hover to reset %ansii%│%reset%
echo     ╰────╯         %ansii%╰────────────────╯%reset%
echo.

choice /c ADWS 2>nul >nul
if !errorlevel! == 1 (
	set /a b=b - 1
	if %b% LEQ 0 set /a b=0
	)
if !errorlevel! == 2 (
	set /a b=b + 1
	)
if !errorlevel! == 3 (
	goto g
	)
if !errorlevel! == 4 (
	goto reset
	)
goto b


:reset
cls
if %b% EQU 100 cls
if %b% EQU 10 cls
if %r% GTR 255 set /a r=255
if %g% GTR 255 set /a g=255
if %b% GTR 255 set /a b=255
set ansii=[38;2;%r%;%g%;%b%m
echo [9;1H
echo.
echo       %white%ANSII color codes generator%reset%
echo  %white%CMD color code: %reset%%grey%%%ESC%%[38;2;%r%;%g%;%b%m%reset%
echo.
echo.
echo.
echo       %reset%R%reset%: %grey%%r%%reset% G: %grey%%g%%reset% %reset%B%reset%: %grey%%b%%reset%
echo.
echo     ╭────╮        %ansii%╭──────────────────╮%reset%
echo     │ %ansii%██%reset% │        %ansii%│%reset%%strong% Press X to reset %reset%%ansii%│%reset%
echo     ╰────╯        %ansii%╰──────────────────╯%reset%
echo.
choice /c ADWSX 2>nul >nul
if !errorlevel! == 1 (
	goto reset
	)
if !errorlevel! == 2 (
	goto reset
	)
if !errorlevel! == 3 (
	goto bloop
	)
if !errorlevel! == 4 (
	goto reset
	)
if !errorlevel! == 5 (
	set r=255
	set g=255
	set b=255
	)
goto reset
