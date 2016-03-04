@echo off
echo ************************************************************
echo **** Enlever les droits sur le panneau de configuration ****
echo ************************************************************
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoControlPanel /t REG_DWORD /d 1 /f
echo Vous avez maintenant aucun droit sur le panneau de configuration.
pause