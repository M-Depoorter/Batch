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
echo *** Bienvenue dans l assistant de blocage ****
echo ******** et deblocage de programmes ! ********
echo **********************************************
echo **********************************************
echo **********************************************
pause
:début
cls
echo **********************************************
echo *** 1 : Bloquer un programme.              ***
echo *** 2 : Debloquer un programme.            ***
echo *** 3 : Fermer l application.              ***
echo **********************************************
set /p choix=Quel est votre choix ? :
(
if not %choix%=='' set choix=%choix:~0,1%
if %choix%==1 goto disable
if %choix%==2 goto able
if %choix%==3 goto end
)
echo %choix% n'est pas bon !
goto début
:disable
cls
set /p choix2=Quel est les nom avec extention de l'executable a bloquer ? :
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v DisallowRun /t REG_DWORD /d 1 /f
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun 
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun /v %choix2% /t REG_SZ /d %choix2% /f
pause
goto début
:able
cls
set /p choix3=Quel est les nom avec extention de l'executable a debloquer ? :
reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun /v %choix3% /f
pause
goto début
:end