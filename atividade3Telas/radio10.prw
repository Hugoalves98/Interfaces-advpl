#Include "TOTVS.CH"


User Function rdo

Local oDialog, oButton, oRadio
Local cTitulo := PADC("Tela Customizada",130) 
Local nRadio := 1

define MSDIALOG oDialog TITLE cTitulo from 0,0 to 230,480 COLOR CLR_BLUE,CLR_WHITE pixel
    
@ 08,10 RADIO oRadio VAR nRadio ITEMS 'Item 1', 'Item 2','Item 3' OF oDialog SIZE 110,10 PIXEL

oButton:= TButton():New(90,180,"Botão para sair",oDialog,{||,oDialog:End()},50,20,,,,.t.)

activate MSDIALOG oDialog centered 

return 
