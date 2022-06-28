#Include "TOTVS.CH"


User Function TBrowL()

Local oOK := LoadBitmap(GetResources(),'br_verde')
Local oNO := LoadBitmap(GetResources(),'br_vermelho')  
Local cTitulo := PADC("Tela Customizada",70)
Local oButton

DEFINE DIALOG oDlg TITLE cTitulo FROM 180,180 TO 350,550 PIXEL	    

oBrowse := TWBrowse():New( 01 , 01, 260,184,,{'Ok','Codigo','Fantasia','Razão Social'},{20,35,35,35},oDlg,,,,,{||},,,,,,,.F.,,.T.,,.F.,,, )    
aBrowse := {{.T.,'000001','CLIENTE 1','NOME 1'},{.F.,'000002','CLIENTE 2','NOME 2'},;                    
{.T.,'000003','CLIENTE 3','NOME 3'},{.T.,'000004','CLIENTE 4','NOME 4'} }    

oBrowse:SetArray(aBrowse)    
oBrowse:bLine := {||{If(aBrowse[oBrowse:nAt,01],oOK,oNO),aBrowse[oBrowse:nAt,02],aBrowse[oBrowse:nAt,03],aBrowse[oBrowse:nAt,04] } }  

oButton:= TButton():New(60,130,"Botão para sair",oDlg,{||,oDlg:End()},50,20,,,,.t.)
oBrowse:bLDblClick := {|| aBrowse[oBrowse:nAt][1] := !aBrowse[oBrowse:nAt][1],;                               
oBrowse:DrawSelect()}  

ACTIVATE DIALOG oDlg CENTERED 
Return
