@echo off
echo ********************************************************
echo ** Redonne les droits sur le panneau de configuration **
echo ********************************************************
reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoControlPanel /f
echo Vous avez maintenant tout les droits
pause