@echo off
echo **************************
echo ** GetAddRemovePrograms **
echo **************************
reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Uninstall /v NoAddRemovePrograms /f
echo Vous avez maintenant acces au panneau d'ajout suppression de programe.
Pause