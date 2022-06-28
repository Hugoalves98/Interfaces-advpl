#INCLUDE 'TOTVS.CH'
#include "TOPCONN.CH"

user function tlecomrc()

local aDados := {}
local cTitulo := PADC("Cadastro de clientes e-commerce",90)
local oDlg

DbSelectArea("ZZ1")
DbSetOrder(1)
DBGOTOP()

while ZZ1->(!EOF())    
   aAdd(aDados,{ZZ1->ZZ1_CDGO,ZZ1->ZZ1_RAZ,ZZ1->ZZ1_CLI}) 
    ZZ1->(DbSkip())   
  
ENDDO 

DEFINE DIALOG oDlg TITLE cTitulo FROM 0, 0 TO 270, 470 PIXEL           
 
    oBrowse := TSBrowse():New(30,10,220,100,oDlg,,16,,1)    
    oBrowse:setArray( aDados )
    oMenu := TMenu():New(0,0,0,0,.T.)
    oTMenuIte1 := TMenuItem():New(oDlg,">> Próximo registro*",,,,{|| oBrowse:GoDown(), oBrowse:setFocus() },,,,,,,,,.T.)
    oTMenuIte2 := TMenuItem():New(oDlg,">> Registro Anterior*",,,,{|| oBrowse:GoUp(), oBrowse:setFocus() } ,,,,,,,,,.T.)
    oTMenuIte3 := TMenuItem():New(oDlg,"Num Registro Atual",,,,{||Alert(oBrowse:nAt)} ,,,,,,,,,.T.)
    oTMenuIte4 := TMenuItem():New(oDlg,"Total de Registro",,,,{||Alert(oBrowse:nLen)} ,,,,,,,,,.T.)
    oTMenuIte5 := TMenuItem():New(oDlg,"Muda a ordem de pesquisa",,,,{||Alert("TMenuItem 05")} ,,,,,,,,,.T.)
    oMenu:Add(oTMenuIte1)
    oMenu:Add(oTMenuIte2)
    oMenu:Add(oTMenuIte3)
    oMenu:Add(oTMenuIte4)
    oMenu:Add(oTMenuIte5)
 
    oBrowse:addColumn( TCColumn():new( "Código", { || aDados[oBrowse:nAt, 1] },,,, "CENTER",, .F., .F.,,,, .F. ) )
    oBrowse:addColumn( TCColumn():new( "Fantasia", { || aDados[oBrowse:nAt, 2] },,,, "CENTER",, .F., .F.,,,, .F. ) )
    oBrowse:addColumn( TCColumn():new( "Razão Social", { || aDados[oBrowse:nAt, 3] },,,, "CENTER",, .F., .F.,,,, .F. ) )
    // oBrowse:Refresh()
 
    oButton:= TButton():New(10,10,"Exportar",oDlg,{|| oBrowse:GoTop(),oBrowse:setFocus()},40,15,,,,.t.)
    oButton:= TButton():New(10,55,"Importar",oDlg,{|u| fImpCsv(),u_tlecomrc()},40,15,,,,.t.)
    oButton:= TButton():New(10,100,"Visualizar",oDlg,{||},40,15,,,,.t.)
    oTButton1:= TButton():New(10,145,"Outras ações",oDlg,{||},40,15,,,,.t.)
    oButton:= TButton():New(10,190,"Sair",oDlg,{||,oDlg:End()},40,15,,,,.t.)
    
    oTButton1:SetPopupMenu(oMenu)
 
oDlg:Activate()

return

static Function fImpCsv() 

Local cDiret
Local cLinha  := ""
Local lPrimlin   := .T.
Local aCampos := {}
Local aDados  := {}
Local i
Local j 
Private aErro := {}
 
cDiret :=  cGetFile( 'Arquito CSV|*.csv| Arquivo TXT|*.txt| Arquivo XML|*.xml',; //[ cMascara], 
                         'Selecao de Arquivos',;                  //[ cTitulo], 
                         0,;                                      //[ nMascpadrao], 
                         'C:\',;                            //[ cDirinicial], 
                         .F.,;                                    //[ lSalvar], 
                         GETF_LOCALHARD  + GETF_NETWORKDRIVE,;    //[ nOpcoes], 
                         .T.)         

FT_FUSE(cDiret)
ProcRegua(FT_FLASTREC())
FT_FGOTOP()
While !FT_FEOF()
 
	IncProc("Lendo arquivo texto...")
 
	cLinha := FT_FREADLN()
 
	If lPrimlin
		aCampos := Separa(cLinha,";",.T.)
		lPrimlin := .F.
	Else
		AADD(aDados,Separa(cLinha,";",.T.))
	EndIf
 
	FT_FSKIP()
EndDo
 
Begin Transaction
	ProcRegua(Len(aDados))
	For i:=1 to Len(aDados)
 
		IncProc("Importando Registros...")
 
		dbSelectArea("ZZ1")
		dbSetOrder(1)
		dbGoTop()
		If !dbSeek(xFilial("ZZ1")+aDados[i,1]+aDados[i,2])
			Reclock("ZZ1",.T.)
			ZZ1->ZZ1_FILIAL := xFilial("ZZ1")
			For j:=1 to Len(aCampos)
				cCampo  := "ZZ1->" + aCampos[j] //ZZ1->ZZ1_COD
				&cCampo := aDados[i,j] //ZZ1->ZZ1_COD := 000008   ZZ1->ZZ1_LOJA := 01 ZZ1->ZZ1_NOME := JOSE
			Next j
			ZZ1->(MsUnlock())
		EndIf
	Next i
End Transaction
  
ApMsgInfo("Importação concluída com sucesso!","Sucesso!")
 
Return
