@echo off
echo ******************************************
echo **** Reactiver la restoration syst�me ****
echo ******************************************
reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /f
Pause