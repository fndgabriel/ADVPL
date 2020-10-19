#INCLUDE 'PROTHEUS.CH'
#INCLUDE 'TOTVS.CH'
/*
#DEFINE ENTER CHR(13)+CHR(10)


User Function variaveis()

Local nPrimeiro := 10
Local nSegundo := 2 
Local nResult := 0
Local cNome := "Fernando"

nResult := nPrimeiro * nSegundo


Alert(cNome + " O Resultado é: " + CValtochar(nResult))
    
Return 

*/
/*
USER Function soma()

Local i
Local j 

//para i de 1 até 9 faça
For i := 2 to 9

    MsgAlert("Tabuada do Numero " + AllTrim(Str(i)))

    For j := 1 to 9

        MsgAlert(AllTrim(Str(i)) + " X " + AllTrim(Str(j)) + " = " + AllTrim(Str(i*j)))
    next    

next
*/

/*
User Function ParDois()

Local i
Local nIni, nFim

nIni := 100
nFim := 120

For i := nIni To nFim Step 2

    If i == 110 
        Exit 
    Endif
    Msginfo(i)
Next 
*/
/*
User Function RptWhile()

Local nNumero := nAux := 350
Local nSoma := 15 
Local nRgs := 0

nAux := Int(nAux / 2)

while nAux < 350
    
    nAux += nSoma 
    nRgs ++

Enddo

Alert("O Laço Foi executado " + cValtochar(nRgs) + " Vezes! ")
*/
/*
User Function ObjArray()

#DEFINE ENTER CHR(13)+CHR(10)

Local aDados := {{"Fernando", 34, .T.},;
                 {"Luiza",     1, .T.},;
                 {"Ana Paula", 27, .F.}}
Local := 1                  

MsgInfo("Linha 1: " + aDados[1,1] + " " + Alltrim(Str(aDados[1,2])) + Iif(aDados[1,3] ==.T.," Vedadeiro "," Falso") + ENTER + ;
        "Linha 2: " + aDados[2,1] + " " + Alltrim(Str(aDados[2,2])) + Iif(aDados[2,3] ==.T.," Vedadeiro "," Falso") + ENTER + ;
        "Linha 3: " + aDados[3,1] + " " + Alltrim(Str(aDados[3,2])) + Iif(aDados[3,3] ==.T.," Vedadeiro "," Falso"))
     
*/
/*
USER FUNCTION OPRUM()

Local nSalario := 1500, nDesconto := 0.10
Local nAumento, nSalliq

nAumento := nSalario * 1.20
nSalliq := nAumento * (1-nDesconto)

Msginfo("Salario Liquido: " + Alltrim(Str(nSalliq)))
*/
/*
USER FUNCTION OPRDOIS()

Local nAutura := 1.80, nPeso := 82, nImc := 0
Local nTexto := ""


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
*/

User Function OPRTRES()

Local nSalario := 1750
Local nVA := 450 
Local nVR := 23
Local nDias := 21 
Local nTotal := 0

nTotal := nSalario + nVA + (nVR * nDias)

Msginfo("Total Recebido é R$: " + Alltrim(STR(nTotal)))


Return



