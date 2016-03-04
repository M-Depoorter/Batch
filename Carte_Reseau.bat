@echo off 
set carte="LANInt" 
set adrfixe=192.168.40.4 
set masque=255.255.255.0 
set passerelle=192.168.40.254

:question 
SET /P lan=Adressage IP 1/DCHP 2/FIXE 3/QUITTER (1/2/3)? : 
if %lan%==1 goto IPDHCP 
if %lan%==2 goto IPfixe 
if %lan%==3 goto Nfin 
goto question 

:IPfixe 
SET /P lan=confirmer l'adressage en IP Fixe 192.168.40.4 (O/N)? : 
if %lan%==o goto OKFixe 
if %lan%==O goto OKFixe 
if %lan%==n goto Nfin 
if %lan%==N goto Nfin 
goto IPfixe 

:OKFixe 
netsh interface ip set address %carte% static %adrfixe% %masque% %passerelle%
goto Ofin 

:IPDHCP 
SET /P lan=confirmer l'adressage en IP Dynamique (O/N)? : 
if %lan%==o goto OKDHCP 
if %lan%==O goto OKDHCP 
if %lan%==n goto Nfin 
if %lan%==N goto Nfin 
goto IPDHCP 

:OKDHCP 
netsh interface ip set address %carte% dhcp 
goto Ofin 

:Nfin 
@echo Aucune modification n'a ete appliquee 
@echo - 
SET /P lan=appuyez sur [ENTREE] pour quitter 
goto fin 

:Ofin 
@echo La nouvelle configuration vient d'etre appliquee 
@echo - 
SET /P lan=appuyer sur [ENTREE] pour quitter 
goto fin 

:fin 