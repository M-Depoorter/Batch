@echo off
echo *******************************************
echo **** Desactiver la restoration système ****
echo *******************************************
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 1 /f
Pause