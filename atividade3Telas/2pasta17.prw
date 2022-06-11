#INCLUDE 'TOTVS.CH'



User Function pastamod2()

local oButton
Local cTitulo := PADC("Tela Customizada",100)
 
DEFINE DIALOG oDlg TITLE cTitulo FROM 0,0 TO 270,450 PIXEL

// Cria os painéis que conterão os containers

oPanel1:= TPanel():New(10,011," Cabeçalho... ",oDlg,,,,,CLR_YELLOW,50,60)
oPanel2:= TPanel():New(20,021," Detalhe... ",oDlg,,,,,CLR_HRED,50,60)
oPanel3:= TPanel():New(30,031," Rodapé... ",oDlg,,,,,CLR_GREEN,50,60)

 
// Cria a Toolbox e adiciona os painéis
oTb := TToolBox():New(15,35,oDlg,150,114)
//oTb:bChangeGrp := {|x| Alert(Str(x))}
oTb:AddGroup( oPanel1, 'Cabeçalho' )
oTb:AddGroup( oPanel2, 'Detalhe' )
oTb:AddGroup( oPanel3, 'Rodapé' )

oButton:= TButton():New(15,195,"Sair",oDlg,{||,oDlg:End()},30,15,,,,.t.)

 
ACTIVATE DIALOG oDlg CENTERED
Return


/*
Local oDialog, oButton 
Local oFolder1, oSay, oFont 

Local cTitulo := PADC("Tela Customizada",100)


DEFINE MsDialog oDialog TITLE cTitulo FROM 0,0 TO 270,410 PIXEL 
oFont := TFont():New('Courier new',,18,.T.)

@ 15, 030 FOLDER oFolder1 SIZE 150, 90 OF oDialog COLORS 0, 16000000 PIXEL
@ 60,90 SAY oSay PROMPT 'Cabeçalho' SIZE 80,20 COLORS CLR_BLUE,CLR_WHITE FONT oFont OF oDialog PIXEL
@ 35, 030 FOLDER oFolder1 SIZE 150, 90 OF oDialog COLORS 0, 16000000 PIXEL
@ 80,90 SAY oSay PROMPT 'Detalhe' SIZE 80,20 COLORS CLR_BLUE,CLR_WHITE FONT oFont OF oDialog PIXEL
@ 55, 030 FOLDER oFolder1 SIZE 150, 90 OF oDialog COLORS 0, 16000000 PIXEL
@ 100,90 SAY oSay PROMPT 'Rodapé' SIZE 80,20 COLORS CLR_BLUE,CLR_WHITE FONT oFont OF oDialog PIXEL

//@ 115, 210 BUTTON oButton PROMPT "Botão para sair" SIZE 052, 017 OF oDialog PIXEL

oButton:= TButton():New(10,150,"Sair",oDialog,{||,oDialog:End()},30,15,,,,.t.)

oDialog:Activate()

RETURN
*/
