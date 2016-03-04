@echo off
echo ******************************
echo **** DisableFolderOptions ****
echo ******************************
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoFolderOptions /t REG_DWORD /d 1 /f
echo Vous avez maintenant aucun droit sur les options des dossiers.  
Pause