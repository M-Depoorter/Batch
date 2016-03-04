@echo off
echo **********************************************************
echo **** Reactiver les instalations pour les utilisateurs ****
echo **********************************************************
reg delete HKLM\SOFTWARE\Policies\Microsoft\Windows\Installer /v DisableUserInstalls /f
Pause