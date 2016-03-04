@echo off
REM  -->  Verification des permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> Erreur vous ne possedez pas les droits admin
if '%errorlevel%' NEQ '0' (
    echo Verification des privileges administrateur
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"="
    echo UAC.ShellExecute "%~s0", "%params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
    pushd "%CD%"
    CD /D "%~dp0"
cls
echo **********************************************
echo ****** Bienvenue dans l assistant pour *******
echo ******** inverser les boutons souris *********
echo **********************************************
echo **********************************************
echo **********************************************
pause
:début
echo **********************************************
echo *** 1 : Clic Gauche. (souris droitier)     ***
echo *** 2 : Clic Droit.  (souris gaucher)      ***
echo *** 3 : Fermer l application.              ***
echo **********************************************
set /p choix=Quel est votre choix ? :
(
if not %choix%=='' set choix=%choix%
if %choix%==1 goto left
if %choix%==2 goto right
if %choix%==3 goto end
)
echo %choix% n'est pas bon !
timeout 3
goto début
:left
cls
reg add "HKEY_USERS\.DEFAULT\Control Panel\Mouse" /v SwapMouseButtons /t REG_SZ /d 0 /f
echo Souris Droitier
echo Deconnexion de la session
timeout 5
shutdown -l
pause
goto début
:right
cls
rundll32 user32, SwapMouseButton
echo Souris Gaucher
pause
goto début
:end