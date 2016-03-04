@echo off
echo ************************
echo ** GetTrayContextMenu **
echo ************************
reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoTrayContextMenu /f
echo Le menu de la barre des taches est maintenant accessible.
Pause
