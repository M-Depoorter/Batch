@echo off
echo ******************************************
echo **** Reactiver la restoration syst�me ****
echo ******************************************
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\SystemRestore" /v DisableSR /f
Pause