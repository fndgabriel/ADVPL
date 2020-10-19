#INCLUDE 'PROTHEUS.CH'
#INCLUDE 'TOTVS.CH'

#DEFINE ENTER CHR(13)+CHR(10)

User function criadir()

Local lRet := .T.
Local cDir := "C:\AULA\"
Local cArq := "arquivo_teste.txt"
Local nx

    If lDir := !Existdir(cDir,,.F.)
        nHld := Makedir(cDir,,.F.)
        If nHld <> 0
            Msgalert("Não foi possivle criar o diretorio!","ERRO!")
            Return .F.
        Endif    
    Endif

    aDir := Directory(cDir+cArq,,,.T.)
    if !Empty(aDir)
        If Msgyesno("O arquivo já existe. Deseja substitui-lo?", "Confirma!")
            Fclose(cDir+cArq)
            If FErase(cDir+Alltrim(cArq)) <> 0
                Msgalert("Prolemas na deleção!", "Erro!" + Alltrim(cArq) + "ERRO")
                lRet := .F.
            Endif
        else
            Return .F.
        Endif

    Endif
If lRet
    nHld := Fcreate(cDir+cArq,,,.F.)
    If nHld < 0
        Msgalert("O arquino não foi criado!", "ERRO!")
        Return .F.
    Else
        For nx := 1 to 100
            cTexto := "Linha " + Alltrim(str(nx)) + ENTER
            Fwrite(nHld,cTexto)
        Next
    Endif
    Msginfo("Arquivo criado!","Sucesso!")
    Fclose(nHld)  
Endif    

Return
