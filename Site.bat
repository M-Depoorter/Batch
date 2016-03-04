@echo off
title  ---- Liste de Sites ----
%homedrive%
cd\
cd \windows\system32
cls
echo ---------------------------------------------
echo ---------------Liste de Sites----------------
echo ---------------------------------------------
echo Tape 1  pour aller sur CefimCampus2          
echo Tape 2  pour aller sur Google 
echo Tape 3  pour aller sur OpenClassRoom 
echo Tape 4  pour aller sur Youtube
echo Tape 5  pour aller sur Facebook 
echo Tape 6  pour aller sur Drive
echo Tape 7  pour aller sur Technet
echo Tape 8  pour aller sur RueduCommerce
echo Tape 9  pour aller sur KOL
echo Tape *  pour Eteindre le PC
echo Tape /  pour Redemarrer le PC
echo Tape x  pour Arreter l'Application
echo ---------------------------------------------
set /p choix=Sur quelle site veux tu aller ? :
(
if not %choix%=='' set choix=%choix:~0,1%
if %choix%==1 goto cefim
if %choix%==2 goto google
if %choix%==3 goto ocr
if %choix%==4 goto youtube
if %choix%==5 goto facebook
if %choix%==6 goto drive
if %choix%==7 goto technet
if %choix%==8 goto rueducommerce
if %choix%==9 goto kol
if %choix%==* goto shutdown
if %choix%==/ goto restart
if %choix%==x goto end
)
echo %choix% n'est pas bon !
goto d�but
:cefim
echo Cefim Campus
timeout 4
explorer http://campus2.cefim-formation.net/
goto d�but
:google
echo On te surveilles!
timeout 4
explorer http://www.google.fr/
goto d�but
:ocr
echo Fait tes devoirs!!!
timeout 4
explorer http://www.openclassroom.com/
goto d�but
:youtube
echo Detend toi
timeout 4
explorer http://www.youtube.com/
goto d�but
:facebook
echo Reseau Social
timeout 4
explorer http://www.facebook.com/
goto d�but
:drive
echo Va partager tes connaissances
timeout 4
explorer https://drive.google.com/
goto d�but
:technet
echo Culture Informatique
timeout 4
explorer https://technet.microsoft.com/
goto d�but
:rueducommerce
echo Prepare la carte bleue
timeout 4
explorer http://www.rueducommerce.fr/
goto d�but
:kol
echo Allons defoncer du mob
timeout 4
explorer https://www.kingdomofloathing.com/
goto d�but
:shutdown
echo Extinction du PC
timeout 4
shutdown -t 0 -s
goto d�but
:restart
echo Redemarrage du PC
timeout 4
shutdown -t 0 -r
goto d�but
:end
echo Bonne Journee
timeout 4
cls

