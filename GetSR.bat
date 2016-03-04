@echo off
echo ******************************************
echo **** Reactiver la restoration système ****
echo ******************************************
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\SystemRestore" /v DisableSR /f
Pause