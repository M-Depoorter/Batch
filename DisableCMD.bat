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
echo ********************
echo **** DisableCMD ****
echo ********************
echo *** 1 : Oui      ***
echo *** 2 : Non      *** 
echo *** 3 : Fermer   ***
echo ********************
set /p choix=Voulez vous vraiment bloquer l'invite de commandes? :
(
if not %choix%=='' set choix=%choix:~0,1%
if %choix%==1 goto oui
if %choix%==2 goto non
if %choix%==3 goto end
)
echo %choix% n'est pas bon !
goto début
:oui
reg add HKCU\Software\Policies\Microsoft\Windows\System /v DisableCMD /t REG_DWORD /d 2 /f  
Pause
goto début
:non
exit
pause
goto début
:end