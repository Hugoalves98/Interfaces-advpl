#Include "TOTVS.CH"

User Function telacpdr

Local oDialog, oSay, oFont, oButton
Local cTitulo := PADC("Tela Customizada",130) 
Local lHasButton := .T.
Local cGet1 := "Texto"

DEFINE MSDIALOG oDialog TITLE cTitulo FROM 0,0 TO 270,610 COLOR CLR_BLUE,CLR_WHITE PIXEL

@ 15,20 SAY oSay PROMPT 'SAY' SIZE 15,00 COLORS CLR_BLACK FONT oFont OF oDialog CENTERED PIXEL

oGet1 := TGet():New( 10, 50, { | u | If( PCount() == 0, cGet1, cGet1 := u ) },oDialog,060, 010, "!@",, 0, 16777215,,.F.,,.T.,,.F.,,.F.,.F.,,.F.,.F. ,,"cGet1",,,,lHasButton )
oGet1:cF3:="SA1"

oButton:= TButton():New(110,250,"Botão para sair",oDialog,{||,oDialog:End()},50,20,,,,.t.)

oDialog:Activate()


RETURN
