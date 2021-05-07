@echo off
echo
goto Run

:Run
cls
echo Press any to continue in automatic mode, ctr + c to end the prosses
pause
goto Typer

:Typer
setlocal enabledelayedexpansion
for /f "tokens=*" %%a in ('type Text.txt') do (
set line=%%a
timeout 1 > NUL
echo !line!
)

goto Typer
pause