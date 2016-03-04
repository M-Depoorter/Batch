@echo off
echo ***************************
echo **** NoViewContextMenu ****
echo ***************************
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoViewContextMenu /t REG_DWORD /d 1 /f
echo Vous aver maintennant aucun Menu Contextuel.
Pause