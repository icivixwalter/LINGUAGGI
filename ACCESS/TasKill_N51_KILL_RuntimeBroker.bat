    @rem  /IM nomeimmagine	
    TASKKILL /IM RuntimeBroker.exe /F
    
    TASKKILL /IM UserOOBEBroker.exe /F
    
    TASKKILL /IM RtkBtManServ.exe /F
    
    @REM FIRE FOX
    TASKKILL /IM firefox.exe /F
    
    TASKKILL /IM ModuleCoreService.exe /F
    
    @REM SKYPE
    TASKKILL /IM SkypeApp.exe /f
    
    PAUSE
    