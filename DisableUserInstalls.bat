@echo off
echo ***************************************************
echo **** Interdir les instalations par utilisateur ****
echo ***************************************************
reg add HKLM\SOFTWARE\Policies\Microsoft\Windows\Installer /v DisableUserInstalls /t REG_DWORD /d 2 /f
Pause