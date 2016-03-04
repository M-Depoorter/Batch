@echo off
echo *************************
echo ** NoAddRemovePrograms **
echo *************************
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Uninstall /v NoAddRemovePrograms /t REG_DWORD /d 1 /f
echo Vous n'avez plus acces au panneau ajout supression de program.
Pause