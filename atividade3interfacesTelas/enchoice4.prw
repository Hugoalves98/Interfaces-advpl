#Include "TOTVS.CH"

User Function tchoic()

Local oGet, cPassW := space(20)
Local oDialog, oSay, oFont, oButton
Local cTitulo := PADC("Tela Customizada",130) 

DEFINE MSDIALOG oDialog TITLE cTitulo FROM 0,0 TO 270,610 COLOR CLR_BLUE,CLR_WHITE PIXEL

@ 15,20 SAY oSay PROMPT 'SAY' SIZE 15,00 COLORS CLR_BLACK FONT oFont OF oDialog CENTERED PIXEL

@ 10,40 GET oGet VAR cPassW SIZE 200,20 OF oDialog PIXEL 

oButton:= TButton():New(110,250,"Botão para sair",oDialog,{||,oDialog:End()},50,20,,,,.t.)

oDialog:Activate()


RETURN








/*
#INCLUDE 'TOTVS.CH'
User Function choiceen
Local oDlg, oButton 
Local cTitulo := PADC("Tela Customizada",150)


DEFINE MsDialog oDlg TITLE cTitulo FROM 0,0 TO 270,610 PIXEL 
@ 010,050 MSGET cCNPJ SIZE 55,11 OF oDlg PIXEL 

oButton:= TButton():New(110,250,"Botão para sair",oDlg,{||,oDlg:End()},50,20,,,,.t.)
 

oDlg:Activate()


RETURN

*/
