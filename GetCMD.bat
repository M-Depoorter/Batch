@echo off
echo ****************
echo **** GetCMD ****
echo ****************
reg delete HKCU\Software\Policies\Microsoft\Windows\System /v DisableCMD /f
Pause