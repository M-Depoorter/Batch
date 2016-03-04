@echo off
echo ************************
echo ** GetViewContextMenu **
echo ************************
reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoViewContextMenu /f
echo  Vous disposez maintenant des menus contextuel.
Pause