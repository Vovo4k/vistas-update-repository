::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSjk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJhZko0
::ZQ05rAF9IBncCkqN+0xwdVsFAlTi
::ZQ05rAF9IAHYFVzEqQImIQhATRfi
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFAhVQh2DAE+/Fb4I5/jH+eOUtkwOaPQ2a5vayfTfbrEv/Ez3YZc+lisUyYUJFB44
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
:: Vistas 1.1
::
:: vistas entertament
:: discord: https://discord.gg/7MDhwczk

@echo off
set /p temps=<system\temp\config.txt
set /a use=%temps% + 1
( echo %use%)>"system\temp\config.txt"
( echo %date% %time%)>"system\temp\use%use%.txt"
:startSYS
:: системные загрузки и проверки
mode con: cols=102 lines=23
title Vistas 1.1
system\plaginsSys\ConShowCursor /hide
start system\plaginsSys\examinationPlagins
timeout /t 1 /nobreak>nul
set /p PLAGINfile=<system\plaginsSys\PLAGINload.txt
if %PLAGINfile% == 0 (
set error=plaginNullError
goto globalError
)
:loadPlagin
call system\userLogin\userLogin
for /l %%a in (1,1,1) do for /l %%b in (1,1,40) do system\plaginsSys\Insertbmp /p:"system\system32\anim\hello\Load00%%b.bmp" /x:0 /y:0 /z:1000
system\plaginsSys\sound play system\system32\music\startVistas.wav

:desktop
::загрузка картинки рабочево стола
set /p setingsDesktop=<system\system32\setings\setings\desktop.txt
cls
system\plaginsSys\Insertbmp /p:"desktop\desktopload\%setingsDesktop%\Load1.bmp" /x:0 /y:0 /z:100
system\plaginsSys\Insertbmp /p:"desktop\nMenu\load1.bmp" /x:10 /y:400 /z:100
system\plaginsSys\Insertbmp /p:"desktop\nMenu\ico-vistas.bmp" /x:15 /y:400 /z:50

::загрузка иконок
system\plaginsSys\Insertbmp /p:"app\viplay\ico\Load1.bmp" /x:30 /y:30 /z:100
system\plaginsSys\Insertbmp /p:"app\calc\ico\Load1.bmp" /x:130 /y:30 /z:100
system\plaginsSys\Insertbmp /p:"app\notepad\ico\Load1.bmp" /x:230 /y:30 /z:100
system\plaginsSys\Insertbmp /p:"system\system32\setings\ico\Load1.bmp" /x:330 /y:30 /z:100
::system\plaginsSys\Insertbmp /p:"system\system32\ms-dos 1.0\ico\Load1.bmp" /x:430 /y:30 /z:100
::загрузка кнопок
system\plaginsSys\batbox /g 90 21 /c 0x0f /d "%DATE%"
system\plaginsSys\GetInput /m 3 1 8 4 14 1 19 4 25 1 30 4 36 1 41 4  47 1 52 4 2 20 6 22

::проверка нажатия кнопок
set /a er = %errorlevel%
if %er% == 1 (start app\viplay\viplay )
if %er% == 2 (start app\calc\calc )
if %er% == 3 (start app\notepad\notepad )
if %er% == 4 (start system\system32\setings\setings )
::if %er% == 5 (goto consolSYS )
if %er% == 6 (goto nMenu )

goto desktop

:nMenu
system\plaginsSys\Insertbmp /p:"desktop\nMenu\start-fon.bmp" /x:20 /y:183 /z:150
system\plaginsSys\Insertbmp /p:"desktop\nMenu\shutdown.bmp" /x:27 /y:205 /z:50
system\plaginsSys\Insertbmp /p:"desktop\nMenu\rebut.bmp" /x:27 /y:285 /z:50
system\plaginsSys\Insertbmp /p:"desktop\nMenu\ico-vistas.bmp" /x:15 /y:400 /z:50
system\plaginsSys\GetInput /m 3 10 10 13 3 14 10 17 2 20 6 22
set /a er = %errorlevel%
if %er% == 1 (
for /l %%a in (1,1,1) do for /l %%b in (1,1,40) do system\plaginsSys\Insertbmp /p:"system\system32\anim\hello\Load00%%b.bmp" /x:0 /y:0 /z:1000
exit
)
if %er% == 2 (
for /l %%a in (1,1,1) do for /l %%b in (1,1,40) do system\plaginsSys\Insertbmp /p:"system\system32\anim\hello\Load00%%b.bmp" /x:0 /y:0 /z:1000
goto startSYS
)

goto desktop

:globalError
echo  произошла критическая ошибка
echo  пожалуйста обратитесь к vistas entertament
echo  discord: https://discord.gg/7MDhwczk
echo  code error: %error%
pause
exit

:consolSYS
cls
system\plaginsSys\Insertbmp /p:"desktop\desktopload\%setingsDesktop%\Load1.bmp" /x:0 /y:0 /z:100
set /p command=command:
if %command% == vplay    ( start app\viplay\viplay )
if %command% == calc     ( start app\calc\calc )
if %command% == setings  ( start system\system32\setings\setings )
if %command% == modenorm ( goto startSYS )
if %command% == help (
echo vplay
echo calc
echo setings
echo modenorm
pause
) else (
echo error
)
goto consolSYS