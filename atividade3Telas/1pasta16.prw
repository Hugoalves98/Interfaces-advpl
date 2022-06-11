#INCLUDE 'TOTVS.CH'



User Function pastacad
Local oDialog, oButton 
Local oFolder1, oSay, oFont 

Local cTitulo := PADC("Tela Customizada",100)


DEFINE MsDialog oDialog TITLE cTitulo FROM 0,0 TO 270,410 PIXEL 
oFont := TFont():New('Courier new',,18,.T.)

@ 15, 030 FOLDER oFolder1 SIZE 150, 90 OF oDialog COLORS 0, 16000000 PIXEL
@ 60,90 SAY oSay PROMPT 'Cadastro' SIZE 200,20 COLORS CLR_BLUE,CLR_WHITE FONT oFont OF oDialog PIXEL


//@ 115, 210 BUTTON oButton PROMPT "Botão para sair" SIZE 052, 017 OF oDialog PIXEL

oButton:= TButton():New(10,150,"Sair",oDialog,{||,oDialog:End()},30,15,,,,.t.)

oDialog:Activate()

RETURN
