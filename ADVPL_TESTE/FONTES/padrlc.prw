#INCLUDE 'PROTHEUS.CH'
#INCLUDE 'TOTVS.CH'

User Function padrlc()

Local Txtum := "Texto alinhado a esquerda"
Local Txtdois := "Texto alinhado a direita"
Local Txttres := "Texto centralizado"

Txtum := PADR(Txtum,50) // texto alinha a esquerda 
Txtdois := PADL(Txtdois, 100) // texto alinha a direita
Txttres := PADC(Txttres, 200) // texto no centro 


Return
