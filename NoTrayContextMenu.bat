@echo off
echo ***********************
echo ** NoTrayContextMenu **
echo ***********************
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoTrayContextMenu /t REG_DWORD /d 1 /f
echo Vous ne disposer plus de menu pour la barre des taches.
Pause