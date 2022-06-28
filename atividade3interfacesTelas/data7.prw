#Include "TOTVS.CH"


User Function teladata()

Local oDialog, oSay, oFont, oButton
Local cTitulo := PADC("Tela Customizada",130) 
Local dData := DATE()

DEFINE MSDIALOG oDialog TITLE cTitulo FROM 0,0 TO 230,480 COLOR CLR_BLUE,CLR_WHITE PIXEL

@ 10,20 SAY oSay PROMPT 'Choose a date:' SIZE 60,0 COLORS CLR_BLACK FONT oFont OF oDialog CENTERED PIXEL

@ 10,70 MsGet dData Size 50,10 Of oDialog Pixel

oButton:= TButton():New(90,180,"Botão para sair",oDialog,{||,oDialog:End()},50,20,,,,.t.)

oDialog:Activate()

RETURN
