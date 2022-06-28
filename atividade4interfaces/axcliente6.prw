#INCLUDE 'TOTVS.CH'

user function tlclt()

local aDados := {}
local cTitulo := PADC("Cadastro de Cliente",90)
local oDlg
Private nLinha := 0 
Private indice


DbSelectArea("SA1")
DbSetOrder(1)
DBGOTOP()

while SA1->(!EOF())    
   aAdd(aDados,{SA1->A1_COD,SA1->A1_NREDUZ,SA1->A1_NOME}) 
    SA1->(DbSkip())   
  
ENDDO 

DEFINE DIALOG oDlg TITLE cTitulo FROM 0, 0 TO 270, 470 PIXEL           
 
    oBrowse := TSBrowse():New(30,10,220,100,oDlg,,16,,1)    
    oBrowse:setArray( aDados )
    oMenu := TMenu():New(0,0,0,0,.T.)
    oTMenuIte1 := TMenuItem():New(oDlg,">> Próximo registro*",,,,{|| oBrowse:GoDown(), oBrowse:setFocus() },,,,,,,,,.T.)
    oTMenuIte2 := TMenuItem():New(oDlg,">> Registro Anterior*",,,,{|| oBrowse:GoUp(), oBrowse:setFocus() } ,,,,,,,,,.T.)
    oTMenuIte3 := TMenuItem():New(oDlg,"Num Registro Atual",,,,{||Alert(oBrowse:nAt)} ,,,,,,,,,.T.)
    oTMenuIte4 := TMenuItem():New(oDlg,"Total de Registro",,,,{||Alert(oBrowse:nLen)} ,,,,,,,,,.T.)
    oTMenuIte5 := TMenuItem():New(oDlg,"Muda a ordem de pesquisa",,,,{|| oBrowse:DbSetOrder(2)} ,,,,,,,,,.T.)
    oMenu:Add(oTMenuIte1)
    oMenu:Add(oTMenuIte2)
    oMenu:Add(oTMenuIte3)
    oMenu:Add(oTMenuIte4)
    oMenu:Add(oTMenuIte5)
 
    oBrowse:addColumn( TCColumn():new( "Código", { || aDados[oBrowse:nAt, 1] },,,, "CENTER",, .F., .F.,,,, .F. ) )
    oBrowse:addColumn( TCColumn():new( "Fantasia", { || aDados[oBrowse:nAt, 2] },,,, "CENTER",, .F., .F.,,,, .F. ) )
    oBrowse:addColumn( TCColumn():new( "Razão Social", { || aDados[oBrowse:nAt, 3] },,,, "CENTER",, .F., .F.,,,, .F. ) )
    oBrowse:Refresh()
 
    oButton:= TButton():New(10,10,"Inicio",oDlg,{|| oBrowse:GoTop(),oBrowse:setFocus()},40,15,,,,.t.)
    oButton:= TButton():New(10,55,"Fim",oDlg,{|| oBrowse:GoBottom(), oBrowse:setFocus()},40,15,,,,.t.)
    oButton:= TButton():New(10,100,"Ir para",oDlg,{|| irp(oBrowse:nAt),oBrowse:GoPosition(nLinha),oBrowse:setFocus()},40,15,,,,.t.)
    oTButton1:= TButton():New(10,145,"Outras ações",oDlg,{||},40,15,,,,.t.)
    oButton:= TButton():New(10,190,"Sair",oDlg,{||,oDlg:End()},40,15,,,,.t.)
    
    oTButton1:SetPopupMenu(oMenu)
 
oDlg:Activate()
return

// dialog pra escolher com linha especifica vc deseja ir
Static Function irp(linha)
Local lHasButton:= .T.

DEFINE MsDialog oIrp TITLE 'Ir Para' FROM 180,180 TO 300,400 PIXEL

    oFont := TFont():New('Arial',,-10,.T.)
    oSay1:= TSay():New(010,01,{||'Qual linha você deseja: '},oIrp,,oFont,,,,.T.,CLR_BLACK,CLR_WHITE,200,20)
    oGet1 := TGet():New( 020, 020, { | u | If( PCount() == 0, linha, linha:= u ) },oIrp, ;
    060, 010, "@E 999999",, 0, 16777215,,.F.,,.T.,,.F.,,.F.,.F.,,.F.,.F. ,,"linha",,,,lHasButton  )

    @ 40, 10 BUTTON Avançar PROMPT "avançar" SIZE 50, 012 OF oIrp ACTION {oIrp:end(),nLinha := linha} PIXEL

ACTIVATE MsDialog oIrp CENTERED
Return linha



// Estaria criando a função de mudar a ordem no menu 
static function ord()

Local lHasButton:= .T.

DEFINE MsDialog oIrp TITLE 'Ir Para' FROM 180,180 TO 300,400 PIXEL

    oFont := TFont():New('Arial',,-10,.T.)
    oSay1:= TSay():New(010,01,{||'Qual linha você deseja: '},oIrp,,oFont,,,,.T.,CLR_BLACK,CLR_WHITE,200,20)
    oGet1 := TGet():New( 020, 020, { | u | If( PCount() == 0, linha, linha:= u ) },oIrp, ;
    060, 010, "@E 999999",, 0, 16777215,,.F.,,.T.,,.F.,,.F.,.F.,,.F.,.F. ,,"linha",,,,lHasButton  )

    @ 40, 10 BUTTON Avançar PROMPT "avançar" SIZE 50, 012 OF oIrp ACTION {oIrp:end(),nLinha := linha} PIXEL

ACTIVATE MsDialog oIrp CENTERED

return






/*
static function irp()

local lHasButton := .T.

oDlg1 := MSDialog():New( 094,225,500,800,"Linha",,,.F.,,,,,,.T.,,,.T. )

TSay():New( 040,016,{||"Qual linha você deseja ir: "},oDlg1,,,.F.,.F.,.F.,.T.,CLR_BLACK,CLR_WHITE,040,008)
TGet():New( 052,016,{|u| },oDlg1,30,010,'',,CLR_BLACK,CLR_WHITE,,,,.T.,"",,,.F.,.F.,,.F.,.F.,"","cGCod",,)

oBtShow := TButton():New( 10,178,"Ir para",oDlg1,{|u| oBrowse:GoPosition(2),setFocus(),u_tlclt(), oDlg1:end()},048,012,,,,.T.,,"",,,,.F. )

return
*/
