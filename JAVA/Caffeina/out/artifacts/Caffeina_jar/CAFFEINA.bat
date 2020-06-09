REM  ***************************************************************

rem     file batch : Salva-C rar
REM     directory = c:\casa\LTT ; \DOC  e \STAMPE
rem     file WinRAR

REM  ***************************************************************



@REM 					LE SOSTITUZIONI GENERALI
@REM @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

@REM  		Disco e codice Disco
@REM .......................................................
@REM -----> 	C:
@REM -----> 	_C
@REM .......................................................


@REM		directory y dove archiviare i dati
@REM .......................................................
@REM ----->	C:\CASA\CDM\ViaDeiMille50\
@REM .......................................................


@REM 		Il nome di tutti i file di archivio dei dati
@REM .......................................................
@REM ----->	LaQuercia_


@REM 		Il file di archivio dei dati
@REM .......................................................
@REM ----->	LaQuercia_N05_ARCHIVI_BAT.GE614


@REM 					LE SOSTITUZIONI GENERALI *** FINE ***
@REM @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@




ECHO OFF
CLS


@REM 			SALVATAGGIO DATI
REM *************************************************************************************************************************

@REM			MESSAGGIO OPERAZIONE
@REM -----------------------------------------------------------------------------------------
echo  "============================================================="
echo.
echo.	MSG - SALVATAGGIO DATI - LaQuercia_N05_ARCHIVI_BAT.GE614
echo.  
echo.
echo  "============================================================="

@REM			MESSAGGIO OPERAZIONE *** FINE ***
@REM -----------------------------------------------------------------------------------------


@REM			OPERAZIONE DI SALVATAGGIO
@REM -----------------------------------------------------------------------------------------

	@REM//DECODIFICA I FILE G614 IN RAR
	echo.	
	echo. "MSG --->call CAFFEINA APRI JAR"
	
	echo.
	echo. "MSG ---> ATTENZIONE PER BLOCCARE CHIUDERE IL CMD"
	echo. "MSG ---> ci sono 2 possibilita:"
	echo. "MSG ---> ctr+c oppure chiudere CMD"
	
	
	
	
	@REM//ATTIVO
	echo.	
	echo. "MSG ---> ATTIVO CAFFEINA CON IL JAVA -JAR CON IL FILE ORIGINALE"
	rem 	
	java -jar c:\CASA\PROGRAMMI\GITHUB\LINGUAGGI\JAVA\Caffeina\out\artifacts\Caffeina_jar\caffeina.jar
	START "Apro la cartella del jar" /b "c:\CASA\PROGRAMMI\GITHUB\LINGUAGGI\JAVA\Caffeina\out\artifacts\Caffeina_jar\"

pause
	
	@rem FUNZIONA MA E IL FILE.JAR COPIA ---> 	
	rem java -jar c:\Users\giaco\Desktop\caffeina.jar
	


















	
	
	

@REM			OPERAZIONE DI SALVATAGGIO *** FINE ***
@REM -----------------------------------------------------------------------------------------


@REM			SOSPENSIONE
@REM -----------------------------------------------------------------------------------------

	@REM 01)
	@REM sospensione per 1 secondo con crononometro 
	@REM timeout /t 2 /nobreak > NUL
	@REM ---->	TIMEOUT /T 2 /NOBREAK


@REM			SOSPENSIONE *** FINE ***
@REM -----------------------------------------------------------------------------------------


@REM 			SALVATAGGIO DATI *** FINE ***
@REM *************************************************************************************************************************








