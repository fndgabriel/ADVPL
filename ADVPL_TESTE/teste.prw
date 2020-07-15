#INCLUDE "PROTHEUS.CH"

USER FUNCTION TESTE()
    LOCAL cAlias := "SF2"
    LOCAL cFil := cFilant 

    recriar(cAlias)

RETURN

 Static Function dropar(cAlias,cFil)
    LOCAL cDrive := "MSSQL"
    LOCAL cServer := "localhost"
    LOCAL nPort := 7899
    LOCAL lCon := .F.
    LOCAL cQuery := ""
    LOCAL cEstrut := cAlias+cFil+"0" 


    lCon := TClink(cDrive,cServer,nPort)

    IF lCon
        cQuery:= 'DROP TABLE '+ cEstrut
        TCSqlExec(cQuery)

        Alert("Tabela dropada!")
    Else 
        Alert("Falha Conexao! ")

    Endif

    TCunlink()
Return

Static Function recriar(cAlias)

    DBSelectArea(cAlias)
    Alert("Tabala Criada!")
Return 
