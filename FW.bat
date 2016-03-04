@echo off
#Elevation des droits
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
echo **********************************************
echo *** Bienvenue dans l assistant de gestion ****
echo ***********  du pare-feu windows ! ***********
echo **********************************************
echo **********************************************
pause
cls
echo **********************************************
echo *** 1 : Desactiver le pare-feu.            ***
echo *** 2 : Activer le pare-feu.               ***
echo *** 3 : Fermer l application.              ***
echo **********************************************
set /p choix=Quel est votre choix ? :
(
if not %choix%=='' set choix=%choix:~0,1%
if %choix%==1 goto disable
if %choix%==2 goto able
if %choix%==3 goto end
)
echo %choix% n'est pas un bon choix !
goto début
:disable
netsh advfirewall set currentprofile state off
netsh advfirewall set publicprofile state off
netsh advfirewall set privateprofile state off
pause
goto début
:able
netsh advfirewall set currentprofile state on
netsh advfirewall set publicprofile state on
netsh advfirewall set privateprofile state on
pause
goto début
:end
