#INCLUDE 'TOTVS.CH'


User Function Painel()
Local oDialog, oSay, oFont, oPanelNav 
Local cTitulo := PADC("Tela Customizada",150)

DEFINE MsDialog oDialog TITLE cTitulo FROM 0,0 TO 270,510 PIXEL 

oFont := TFont():New('Courier new',,18,.T.)

@ 15,10 MSPANEL oPanelNav OF oDialog SIZE 119,80 COLOR CLR_BLUE,CLR_GRAY

@ 35,40 SAY oSay PROMPT 'Painel 1' SIZE 200,20 COLORS CLR_BLACK,CLR_WHITE FONT oFont OF oPanelNav PIXEL

@ 15,130 MSPANEL oPanelNav OF oDialog SIZE 119,80 COLOR CLR_BLUE,CLR_GRAY

@ 35,40 SAY oSay PROMPT 'Painel 2' SIZE 200,20 COLORS CLR_BLACK,CLR_WHITE FONT oFont OF oPanelNav PIXEL


oDialog:Activate()


RETURN
