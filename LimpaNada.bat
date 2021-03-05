@echo off
title LimpaNada Por One
color 4
:menu
cls
echo.               
echo ====================================[MENUZINHO]==========================================================
echo                                 LimpaNada Por One
echo                                1.-Abrir Prefetch
echo                                2.-Abrir Recent
echo                                3.-Abrir temp
echo                                4.-Limpar
echo                                5.-Github
echo                                6.-Sair
echo ====================================[MENUZINHO]==========================================================
echo                                  Versão 1.0
echo                           Feito Por: zOnezinLOL
echo                           BUGS SERÃO ENCONTRADOS,BUG ENCONTRADO: NÃO ESTA LIMPANDO Recent
echo.
SET /p ver=Selecione:
if=%ver%==6 goto Sair
cls
echo Carregando
ping localhost -n 2 >nul
cls
echo Carregando.
ping localhost -n 2 >nul
cls
echo Carregando..
ping localhost -n 2 >nul
cls
echo Carregando...
ping localhost -n 2 >nul
cls
echo Completo
pause
if=%ver%==1 goto Prefetch
if=%ver%==2 goto Recent
if=%ver%==3 goto temp
if=%ver%==5 goto Github
color 4
/s /f /q c:\windows\temp\*.*
rd /s /q c:\windows\temp
md c:\windows\temp
del /s /f /q C:\WINDOWS\Prefetch
del /s /f /q %temp%\*.*
rd /s /q %temp%
md %temp%
deltree /y c:\windows\tempor~1
deltree /y c:\windows\temp
deltree /y c:\windows\tmp
deltree /y c:\windows\ff*.tmp
deltree /y c:\windows\history
deltree /y c:\windows\cookies
deltree /y c:\windows\recent
deltree /y c:\windows\spool\printers
del c:\WIN386.SWP
cls 
FOR /F "tokens=1, 2 * " %%V IN ('bcdedit') DO SET adminTest=%%V
IF (%adminTest%)==(Access) goto noAdmin
for /F " tokens=*" %%G in ('wevtutil.exe el') DO (call :do_clear "%%G")
echo.
echo Event Logs have been cleared! ^<press any key^>
goto menu
:do_clear
echo clearing %1
wevtutil.exe cl %1
goto :eof
:noAdmin
echo You must run this script as an Administrator !
echo ^<press any key^>
cls
pause








:Temp
cd C:\Windows\Temp
start temp
goto menu

:Recent
cd C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows
start Recent
goto menu

:Prefetch
cd C:\Users\%USERNAME%\WINDOWS\Prefetch
start Prefetch
goto menu 

:Github
start https://github.com/LimpaNada/LimpaNada
goto menu