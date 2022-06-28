#Include "TOTVS.CH"


User Function mulget

Local oDialog, oSay, oFont, oButton, oGet
Local cTitulo := PADC("Tela Customizada",130) 
Local cText := "Linha 1" + CRLF + "Linha 2" + CRLF + "Linha 3" + CRLF + "Linha 4"+ CRLF + "Linha 5"

DEFINE MSDIALOG oDialog TITLE cTitulo FROM 0,0 TO 230,480 COLOR CLR_BLUE,CLR_WHITE PIXEL

@ 10,20 SAY oSay PROMPT 'Say' SIZE 60,0 COLORS CLR_BLACK FONT oFont OF oDialog CENTERED PIXEL

@ 10,60 GET oGet VAR cText SIZE 60,60 MULTILINE OF oDialog PIXEL 

oButton:= TButton():New(90,180,"Botão para sair",oDialog,{||,oDialog:End()},50,20,,,,.t.)

oDialog:Activate()

RETURN
