#INCLUDE 'TOTVS.CH'



User Function Folder
Local oDialog, oButton 
Local oFolder1 
Local oFolder2
Local oFolder3
Local oFolder4
Local oFolder5
Local cTitulo := PADC("Tela Customizada",150)


DEFINE MsDialog oDialog TITLE cTitulo FROM 0,0 TO 270,610 PIXEL 

@ 05, 030 FOLDER oFolder1 SIZE 60, 100 OF oDialog ITEMS "Pasta 1" COLORS 0, 16000000 PIXEL
@ 05, 070 FOLDER oFolder2 SIZE 60, 100 OF oDialog ITEMS "Pasta 2" COLORS 0, 16777215 PIXEL
@ 05, 110 FOLDER oFolder3 SIZE 60, 100 OF oDialog ITEMS "Pasta 3" COLORS 0, 16777215 PIXEL
@ 05, 150 FOLDER oFolder4 SIZE 60, 100 OF oDialog ITEMS "Pasta 4" COLORS 0, 16777215 PIXEL
@ 05, 190 FOLDER oFolder5 SIZE 60, 100 OF oDialog ITEMS "Pasta 5" COLORS 0, 16777215 PIXEL


//@ 115, 210 BUTTON oButton PROMPT "Botão para sair" SIZE 052, 017 OF oDialog PIXEL

oButton:= TButton():New(110,250,"Botão para sair",oDialog,{||,oDialog:End()},50,20,,,,.t.)

oDialog:Activate()

RETURN
