#INCLUDE 'PROTHEUS.CH'
#INCLUDE 'TOTVS.CH'

User function copy()

Local lRet 
                // arq origem              2arq dest  3ind se deve ser compactado 4caixa alta
lRet := cpys2t("\DATA\arquivo_teste.txt","C:\DATA\",.T., .T.)

    If lRet
        MsgAlert("Arquivo copiado", "Aviso!")
    Else
        MsgAlert("Erro ao copiar", "Atenção!")
    Endif

Return
