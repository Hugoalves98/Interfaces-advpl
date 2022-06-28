#Include "TOTVS.CH"


User Function chkbx

Local oDialog, oButton
Local cTitulo := PADC("Tela Customizada",130) 
Local oCheckBo1
Local lCheckBo1 := .F.

define MSDIALOG oDialog TITLE cTitulo from 0,0 to 230,480 COLOR CLR_BLUE,CLR_WHITE pixel

@ 010, 030 CHECKBOX oCheckBo1 var lCheckBo1 PROMPT "Checkbox1" SIZE 078, 057 of oDialog COLORS 0, 16777215 pixel
@ 020, 030 CHECKBOX oCheckBo1 var lCheckBo1 PROMPT "Checkbox2" SIZE 078, 057 of oDialog COLORS 0, 16777215 pixel
@ 030, 030 CHECKBOX oCheckBo1 var lCheckBo1 PROMPT "Checkbox3" SIZE 078, 057 of oDialog COLORS 0, 16777215 pixel

oButton:= TButton():New(90,180,"Botão para sair",oDialog,{||,oDialog:End()},50,20,,,,.t.)

activate MSDIALOG oDialog centered 

return
