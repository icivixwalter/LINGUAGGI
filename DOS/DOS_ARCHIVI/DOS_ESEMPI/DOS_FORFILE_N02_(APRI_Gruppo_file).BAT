
@REM //NOTE DI FUNZIONAMENTO
@REM //============================================================================//
@REM APRE TUTTI I FILE 





echo off
@REM  ************************************************************************************************************************
@REM					PARAMETRI ED OPZIONI DI GESTIONE
@REM  ************************************************************************************************************************

@REM 	01 PARAMETRO
@REM	Parametro unico per il cambio di tutte le impostazioni
@REM							:LaQuercia	


@REM
@REM    Tipo file batch per il salvataggio dei dati.    				
@REM    directory corrente 				:c:\Casa\CDM\LaQuercia\
@REM    file WinRAR completo				:LaQuercia_N01_2014_2015_Salvataggi.bat
@REM    file di salvataggio rinominato + file di lista
@REM							:LaQuercia_N01_2014_2015_CRIP.GE614
@REM							:-n@LaQuercia_N02_2014_2015_Lista.lst
@REM
@REM    directory di provenienza dei dati con parametro da sostituire LaQuercia
@REM							:c:\Casa\CDM\LaQuercia\2014_2015\*LaQuercia*



@REM				LE OPZIONI

@REM  Opzione -x Estrae file e cartelle con il percorso originale. 
@REM  Opzione -r considera le sottocartelle
@REM  Opzione -u Estrai solo i nuovi


@REM  ************************************************************************************************************************
@REM					PARAMETRI ED OPZIONI DI GESTIONE *** FINE ***
@REM  ************************************************************************************************************************






@REM //----------------------------------------------------------------------------------------------------------------
@REM  A.02)				SALVATAGGIO 
@REM //----------------------------------------------------------------------------------------------------------------
rem	La sintassi del comando è questa:
rem	FORFILES [/p <Path>] [/m <SearchMask>] [/s] [/c “<Command>“] [/d [{+|-}][{<Date>|<Days>}]]
rem 	p = path
rem	m = file con criteri specificati (esempio.: *.img); di default assume *.*
rem		dopo /m puoi applicare s = cerca anche nelle subdirectory del path principale	
rem	c = esegue il comando racchiuso tra apici doppi
rem	d = ultima modifica più vecchia di (giorni/data)
	
	  @REM FOR per tutti i file (DI AGOSTO) antecedenti o uguali alla 01/09/2016
	  @REM 	forfiles /s /m *.* /d -31 /c "cmd /c echo @file is outdated." 
	   
:--------------------------------- imposto le variabili del FILE e della PATH, attenzione
@REM  per far funzionare la path + file occorre applicare un'altro comando SET per unire le due variabili
@REM  in una terza variabile chiamata (Unisci_s) che permetterà di creare il file LOG.txt


@REM File_s= Questo è il file o il gruppo di file da aprire. Attenzione a come  viene rappresentato, può essere
@REM identificato con gli *. Esempio per estrarre il gruppo del banco posta può essere rappresentato in questo
@REM modo -> *87**BANCO_POSTA_ESTRATTO_CONTO*. Oppure per le pulizie *N16**PULIZIE**FATTURA*; mentre per il
@REM singolfo file può essere LaQuercia_2019_2020_N87_01_BANCO_POSTA_ESTRATTO_CONTO_(2020)_(02)_R011.zip

SET File_s=*N16**PULIZIE**FATTURA*

@REM per la path ATTENZIONE agli spazzi nascosti, in questo caso per avere una migliore visibilita
@REM della path è meglio racchiuderla tra virgolette come in questo caso.
SET Path_s=c:\Casa\CDM\LaQuercia\2019_2020\DOC\


@REM unisco PATH + FILE Attenzione agli spazzi
SET Unisci_s=%Unisci_s%%Path_s%%File_s%


	@REM creo ed apro il file log	
	ECHO ELENCO FILE INTERESSATI 		> LOG.TXT
	echo.					>>log.txt 
	echo %Unisci_s%				>>log.txt 
	echo.					>>log.txt 
	rem 
	DIR %Unisci_s% >> LOG.TXT
	
	
	@REM II  controllo dei file aperti con un secondo file .txt
	FORFILES /P  %Path_s% /M %File_s% >> CONTROLLO_FILE_APERTI.txt
	
	
	@REM parametri: /M = file con questi criteri MA DEVONO ESSERE PRECISI
	@REM Parametri: /P = la directory della variabile; SENZA /S = per evitare le sottodirectory 2018 e 2019
	@REM		/m = maschera comando, visualizza solo il mome del file e puoi utilizzare anche /s = sottodirectory
	@REM                 ma in questo caso l'opzione /S = sub è stata sospesa perchè prende anche gli anni del 2017 e del 2018
	@REM		/C = esegue il comando all'interno delle "" ed utilizzare una delle seguenti opzioni:
	@REM				·	@FILE  = NOME FILE
	FORFILES /P %Path_s% /M %File_s% /C "cmd /c START call @file"&^exit
	
	
	
	
	
@REM //----------------------------------------------------------------------------------------------------------------
@REM  A.02)				SALVATAGGIO *** FINE ***
@REM //----------------------------------------------------------------------------------------------------------------


@REM -> pause


