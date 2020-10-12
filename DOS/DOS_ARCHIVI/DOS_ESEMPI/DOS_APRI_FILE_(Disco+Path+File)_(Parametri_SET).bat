@GOTO note
  Attenzione ci sono due tipi di path quello con la path relativo o assoluta, secondo i due esempi 
  path relativa es. ---> "\CASA\PRES3000_07\WALTER_ATTI\WALTER_TIM_SCHEDA_PENNETTA_3662631843_(WIFI_ALCATEL).msg" &^ exit
  path assoluta es. ---> START "APRI" /i "c:\CASA\PRES3000_07\WALTER_ATTI\WALTER_TIM_SCHEDA_PENNETTA_3662631843_(WIFI_ALCATEL).msg" &^ exit
 
  la procedura di start attiva con la path relativa è valida solo per i disco c: mentre in caso di rete occorre quella assoluta.
  Inoltre questo esempio imposta un indirizzo assoluto con 3 variabili :
    			DISCO_s + PATH_s + FILE_s 
    			ATTENZIONE a non inserire spazi nel comando SET es. set DISCO_s=Y: (ok) set DISCO_s= Y: (NON FUNZIONA)
    				altrimenti non funziona
	ESEMPIO FUNZIONANTE
		Nella procedura di seguito indicata vengono impostate le 3 variabili stringhe DISCO, PATH E FILE	
		e vengono unite con la & commerciale senza virgolette ("") in questo modo se il file
		viene spostato in rete o su altro disco basta cambiare solo la variabile del disco
	
	ATTENZIONE
		non occorre start "..." /I PERCHE ALTRIMENTI NON APRE.
		Basta Start "...." 
	ATTENZIONE	
		non occorrono inserire gli spazi tra le variabili
		%DISCO_s%%PATH_s%%FILE_s% 	= OK
		%DISCO_s% %PATH_s% %FILE_s%	= NO NON FUNZIONA
	
	ATTENZIONE
		la chiusura del teminale solo alla fine es:
		START "ATTIVITA" ....
		START "II ATTIVITA"...
		START "APRI CARTELLA	" %DISCO_s%%PATH_s% &^ exit

@:note




:------------------------------DOS apri file con DISCO + PATH + FILE - imposto le variabili iniziali
@echo off

:------------------------------- IMPOSTO le variabili DISCO, PATH E FILE attenzione senza spazi dopo l'uguale
SET DISCO_s=c:
SET PATH_s=\CASA\PRES3000_07\WALTER_ATTI\
SET FILE_s=WALTER_TIM_SCHEDA_PENNETTA_3662631843_(WIFI_ALCATEL).msg



:------------------------------- CONTROLLO VARIABILI SET + APERTURA 
echo.
echo CONTROLLO VARIABILI IMPOSTATE  
ECHO. 
echo "IL DISCO 	: ----> " %DISCO_s%
echo "LA PATH 	: ----> " %PATH_s%
echo "IL FILE   : ----> " %FILE_s%
echo.

START "APRI FILE	" %DISCO_s%%PATH_s%%FILE_s%
START "APRI CARTELLA	" %DISCO_s%%PATH_s% &^ exit

