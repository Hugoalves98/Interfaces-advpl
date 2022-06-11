#INCLUDE 'TOTVS.CH'


User Function Telabtn

Local oDialog, oButton 
//Local oBtn1
Local cTitulo := PADC("Tela Customizada",100)

DEFINE MsDialog oDialog TITLE cTitulo FROM 0,0 TO 220,410 PIXEL 

//@ 50,05 BUTTON oBtn1 PROMPT 'Sair' ACTION ( oDialog:End() ) SIZE 40, 013 OF oDialog PIXEL
oButton:= TButton():New(85,160,"Botão para sair",oDialog,{||,oDialog:End()},40,20,,,,.t.)

oDialog:Activate()

RETURN

