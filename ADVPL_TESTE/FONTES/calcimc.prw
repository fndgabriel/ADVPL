#INCLUDE 'PROTHEUS.CH'
#INCLUDE 'TOTVS.CH'
#INCLUDE 'RWMAKE.CH'

User Function CalcImc() 

Local nAutura := SPACE(3), nPeso := SPACE(6)

@200,001 TO 410,480 DIALOG oDlg TITLE OemToAnsi( "CALCULO IMC" )
@02,10   TO 095,230
@10,018 SAY " Este Programa irá Calcular o IMC - Indíce de Massa corporal "
@30,018 SAY "Digite Sua Altura"
@30,098 SAY "Digite Seu Peso" 
@45,018 MSGET nAutura SIZE 55,11 OF oDlg PIXE PICTURE "@!"
@45,098 MSGET nPeso SIZE 55,11 OF oDlg PIXE PICTURE "@!"
@70,158 BMPBUTTON TYPE 02 ACTION CLOSE(oDlg)
@70,188 BMPBUTTON TYPE 01 ACTION geracalc(nAutura,nPeso)

Activate DIALOG oDlg Centered

Return

Static Function geracalc(nAltura,nPeso)

Local nTexto := ""
Local nImc

If validpeso(nPeso)

    nAutura := VAL(nAltura) / 100
    nPeso := VAL(STRTRAN(nPeso,",","."))

    nImc := nPeso / (nAutura ^ 2)

    Do Case
        Case nImc <= 18.5
        cTexto := "MAGREZA"
        Case nImc >= 18.6 .and. nImc <= 24.9
        cTexto := "NORMAL"
        Case nImc >= 25 .and. nImc <= 29.9
        cTexto := "SOBREPESO"
        Case nImc >= 30 .and. nImc <= 39.9
        cTexto := "OBESIDADE"
        Otherwise
        cTexto := "OBESIDADE GRAVE" 
    EndCase

    Msginfo(" Seu IMC é: " + Alltrim(STR(nImc,5,2)) + " " + cTexto)

Else
    Alert("Separe o Peso com . ou ,")

Endif

Return

Static Function validpeso(nPeso)

Local lRet := .F.
Local cStrA := ","
Local cStrB := "."

If cStrA $ nPeso .or. cStrB $ nPeso
    lRet := .T.
else
    lRet := .F.
Endif

Return lRet

