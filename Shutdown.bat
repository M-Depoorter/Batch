@echo off 
title= ---- Commande Shutdown ---- 
%homedrive% 
cd\ 
cd windows\system32 
cls 
echo  ****************************************************** 
echo  ****************************************************** 
echo  ********* Utilitaire de la commande Shutdown ********* 
echo  ****************************************************** 
echo  ****************************************************** 
:début 
echo 1 : Fermer la session 
echo 2 : Fermer l'ordinateur 
echo 3 : Fermer l'ordinateur et redemarrer 
echo 4 : Rien faire. 
set /p choix=Quel genre de fermeture voulez-vous ? : 
( 
if not %choix%=='' set choix=%choix:~0,1% 
if %choix%==1 goto close_session 
if %choix%==2 goto shutdown 
if %choix%==3 goto shut_&_Restart 
if %choix%==4 goto end 
) 
echo %choix% n'est pas bon ! 
goto début 
:close_session 
echo Vous avez choisi de fermer la session. 
shutdown -l -f -t 0 
goto end 
:shutdown 
echo Vous avez choisi de fermer l'ordinateur. 
shutdown -s -f -t 0 
goto end 
:shut_&_Restart 
echo Vous avez choisi de fermer et redémarrer l'ordinateur. 
shutdown -r -f -t 0 
goto end 
:end