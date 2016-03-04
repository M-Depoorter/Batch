@echo off
echo ************************
echo *** GetRegistryTools ***
echo ************************
reg delete HKCU\Software\Microsoft\Windows\currentVersion\Policies\System /v DisableRegistryTools /f
Pause