@echo off
echo **********************
echo ** GetFolderOptions **
echo **********************
reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoFolderOptions /f
echo Vous avez maintenant les droits sur les options des dossiers.
pause