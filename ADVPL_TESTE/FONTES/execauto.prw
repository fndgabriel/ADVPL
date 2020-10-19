#INCLUDE 'PROTHEUS.CH'
#INCLUDE 'TOTVS.CH'

User Function execauto() //U_execauto()

Local aDados := {}
Local lMSErroAuto

AADD(aDados,{"A1_COD","222222",NIL})
AADD(aDados,{"A1_LOJA","01",NIL})
AADD(aDados,{"A1_NOME","FERNANDO TESTE",NIL})
AADD(aDados,{"A1_PESSOA","F",NIL})
AADD(aDados,{"A1_NREDUZ","FND",NIL})
AADD(aDados,{"A1_END","RUA TESTE",NIL})
AADD(aDados,{"A1_TIPO","F",NIL})
AADD(aDados,{"A1_EST","SP",NIL})
//AADD(aDados,{"A1_COD_MUN","50308",NIL})

lMSErroAuto := .F.

MSExecAuto({|v,x,y,z| MATA030(v,x,y,z)},aDados,3)

If lMSErroAuto
    MostraErro("\SYSTEM\LOG\",FUNNAME() + ".LOG")
    MSGINFO("Não foi possivel realizar a gravação!", "Atenção")
    DisarmTransAction()
Endif    

Return
