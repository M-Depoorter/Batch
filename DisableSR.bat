@echo off
echo *******************************************
echo **** Desactiver la restoration syst�me ****
echo *******************************************
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\SystemRestore" /v DisableSR /t REG_DWORD /d 1 /f  
Pause