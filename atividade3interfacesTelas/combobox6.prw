#Include "TOTVS.CH"


User Function telacbox()

Local oDialog, oSay, oFont, oButton
Local cTitulo := PADC("Tela Customizada",130) 
Local aItemsList := {"ComboBox1", "ComboBox2", "ComboBox3"}
Local nCombo01, oCBox1

DEFINE MSDIALOG oDialog TITLE cTitulo FROM 0,0 TO 230,480 COLOR CLR_BLUE,CLR_WHITE PIXEL

@ 10,20 SAY oSay PROMPT 'Choose an option:' SIZE 40,0 COLORS CLR_BLACK FONT oFont OF oDialog CENTERED PIXEL

oButton:= TButton():New(90,180,"Botão para sair",oDialog,{||,oDialog:End()},50,20,,,,.t.)

oCBox1 := TComboBox():New(10,70,{|u| If(PCount()>0,nCombo01:=u,nCombo01)},aItemsList,072,012,oDialog,,,,CLR_BLACK,CLR_WHITE,.T.,oFont,"",,,,,,,nCombo01)

oDialog:Activate()

RETURN












/*
USER FUNCTION cboxes()
Local aItems:= {'ITEM1','ITEM2','ITEM3'}
     DEFINE MsDialog oDlg TITLE "Tela costumizada" FROM 180,180 TO 550,700 PIXEL

      oFont:= TFont():New('Courier new',,-18,.T.)
      oSay1:= TSay():New(10,01,{||'Opções:'},oDlg,,oFont,,,,.T.,CLR_RED,CLR_WHITE,200,20)

      cCombo1:= aItems[1]

      oCombo1 := TComboBox():New(10,50,{|u|if(PCount()>0,cCombo1:=u,cCombo1)},;
      aItems,100,20,oDlg,,{||};
        ,,,,.T.,,,,,,,,,'cCombo1')
        
      @ 160, 200 BUTTON Confirmar PROMPT "Botão para sair" SIZE 037, 012 OF oDlg ACTION { oDlg:end() } PIXEL



    ACTIVATE MsDialog oDlg CENTERED

RETURN
*/
