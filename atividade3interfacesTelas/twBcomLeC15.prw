#Include "TOTVS.CH"


User Function checkleg()

Local cTitulo := PADC("Tela Customizada",70)
Local oButton
Local oOK := LoadBitmap(GetResources(),'LBOK')
Local oNO := LoadBitmap(GetResources(),'LBNO')
Local oOKl := LoadBitmap(GetResources(),'br_verde')
Local oNOl := LoadBitmap(GetResources(),'br_vermelho')  

DEFINE DIALOG oDlg TITLE cTitulo FROM 180,180 TO 350,550 PIXEL	    

oBrowse := TWBrowse():New( 01 , 01, 260,184,,{'Ok','Leg','Codigo','Fantasia','Razão Social'},{20,35,35,35},oDlg,,,,,{||},,,,,,,.F.,,.T.,,.F.,,, )    
aBrowse := {{.T.,.T.,'000001','CLIENTE 1','NOME 1'},{.T.,.T.,'000002','CLIENTE 2','NOME 2'},;                    
{.T.,.T.,'000003','CLIENTE 3','NOME 3'},{.T.,.T.,'000004','CLIENTE 4','NOME 4'} }    


oBrowse:SetArray(aBrowse)    
oBrowse:bLine := {||{If(aBrowse[oBrowse:nAt,01],oOK,oNO),If(aBrowse[oBrowse:nAt,02],oOKl,oNOl),aBrowse[oBrowse:nAt,03],aBrowse[oBrowse:nAt,04],aBrowse[oBrowse:nAt,05] } }  

oButton:= TButton():New(60,130,"Botão para sair",oDlg,{||,oDlg:End()},50,20,,,,.t.)
// Troca a imagem no duplo click do mouse    
oBrowse:bLDblClick := {|| aBrowse[oBrowse:nAt][1] := !aBrowse[oBrowse:nAt][1],aBrowse[oBrowse:nAt][2] := !aBrowse[oBrowse:nAt][2],;                               
oBrowse:DrawSelect()}

ACTIVATE DIALOG oDlg CENTERED 
Return
