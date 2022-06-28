#INCLUDE 'TOTVS.CH'


/*

// COPIEI NO YTB MAS N RODOU

Local oDlgMain := NIL
Local oMSNewGet := NIL
Local aHeader := {}
Local aCols := {}
Local aCmpAlt := {}

// Define aHeader
AADD(aHeader, {"Field 1" , "FIELD1", "@!"        , 30, 00, ".T.", "", "C"})
AADD(aHeader, {"Field 2" , "FIELD2", "@E 999.999", 30, 00, ".T.", "", "N"})
AADD(aHeader, {"Field 3" , "FIELD3", ""          , 30, 00, ".T.", "", "D"})

// Define aCols
AADD(aCols, {"XYZ", 123.456, Date(), .F.})

//Dialog
oDlgMain := MsDialog():New( 000, 000, 720, 1280, "Exemplo1", Nil, Nil, Nil, Nil, Nil, Nil, Nil, Nil, .T., Nil, Nil, Nil, .F.)

// Grid MSNewGetDados
oMSNewGet := MsNewGetDados():New( 030, 000, 350, 630, GD_UPDATE, "AllwaysTrue", "AllwaysTrue", "", aCmpAlt, , 999, "AllwaysTrue", "", "AllwaysTrue", oDlgMain, @aHeader, @aCols)

// Define buttons for enchoice
bOK := {|| oDlgMain:End()}
bCANCEL := {|| oDlgMain:End()}
aBotoes := {}

// Show Dialog
oDlgMain:bInit  := {|| EnchoiceBar(oDlgMain, bOK, bCANCEL, , aBotoes)}
oDlgMain:lCentered := .T.
oDlgMain:Activate()

return
*/

/*

USER FUNCTION grade

local aDados := {}
local oBrowse := nil

DEFINE MsDialog oDlg TITLE 'tela customizada' FROM 0,0 TO 500,700 PIXEL

    // Cria array com dados
    aAdd( aDados, { "000001", "CLIENTE 1", "NOME 1"} )
    aAdd( aDados, { "000002", "CLEINTE 2", "NOME 2"} )
    aAdd( aDados, { "000003", "CLIENTE 3", "NOME 3"} )

    // Cria browse
    oBrowse := MsBrGetDBase():new( 0, 0, 260, 100,,,, oDlg,,,,,,,,,,,, .F., "", .T.,, .F.,,, )


    // Define vetor para a browse
    oBrowse:setArray( aDados )

    // Cria colunas do browse
    oBrowse:addColumn( TCColumn():new( "Código", { ||  aDados[oBrowse:nAt, 1] },,,, "LEFT",, .F., .F.,,,, .F. ) )
    oBrowse:addColumn( TCColumn():new( "Fantasia", { ||  aDados[oBrowse:nAt, 2] },,,, "LEFT",, .F., .F.,,,, .F. ) )
    oBrowse:addColumn( TCColumn():new( "Razão Social", { || aDados[oBrowse:nAt, 3] },,,, "LEFT",, .F., .F.,,,, .F. ) )

    // Botão de sair
    @ 145, 200 BUTTON Confirmar PROMPT "Botão para sair" SIZE 037, 012 OF oDlg ACTION { oDlg:end() } PIXEL
    //oButton:= TButton():New(90,180,"Botão para sair",oDlg,{||,oDlg:End()},50,20,,,,.t.)


ACTIVATE MsDialog oDlg CENTERED


*/


user function grade
 
  local aDados := {}
  local oBrowse := nil
  local oButton
  Local cTitulo := PADC("Tela Customizada",90)
 
  DEFINE DIALOG oDlg TITLE cTitulo FROM 180, 180 TO 350, 550 PIXEL           
 
    // Cria array com dados
    aAdd( aDados, { "000001", "CLIENTE 1", "NOME 1" } )
    aAdd( aDados, { "000002", "CLIENTE 2", "NOME 2" } )
    aAdd( aDados, { "000003", "CLIENTE 3", "NOME 3" } )
    aAdd( aDados, { "000004", "CLIENTE 4", "NOME 4" } )

    // Cria browse
    oBrowse := MsBrGetDBase():new( 0, 0, 260, 170,,,, oDlg,,,,,,,,,,,, .F., "", .T.,, .F.,,, )
 
    // Define vetor para a browse
    oBrowse:setArray( aDados )
 
    // Cria colunas do browse
    oBrowse:addColumn( TCColumn():new( "Código", { || aDados[oBrowse:nAt, 1] },,,, "LEFT",, .F., .F.,,,, .F. ) )
    oBrowse:addColumn( TCColumn():new( "Fantasia", { || aDados[oBrowse:nAt, 2] },,,, "LEFT",, .F., .F.,,,, .F. ) )
    oBrowse:addColumn( TCColumn():new( "Razão Social", { || aDados[oBrowse:nAt, 3] },,,, "LEFT",, .F., .F.,,,, .F. ) )
    oBrowse:Refresh()
 
    // Cria Botões com métodos básicos 
    oButton:= TButton():New(60,130,"Botão para sair",oDlg,{||,oDlg:End()},50,20,,,,.t.)

 /*
    TButton():new( 172, 002, "goUp()", oDlg, { || oBrowse:goUp(), oBrowse:setFocus() }, 40, 010,,, .F., .T., .F.,, .F.,,, .F. )
    TButton():new( 172, 052, "goDown()", oDlg, { || oBrowse:goDown(), oBrowse:setFocus() }, 40, 010,,, .F., .T., .F.,, .F.,,, .F. )
    TButton():new( 172, 102, "goTop()", oDlg, { || oBrowse:goTop(), oBrowse:setFocus() }, 40, 010,,, .F., .T., .F.,, .F.,,, .F. )
    TButton():new( 172, 152, "goBottom()", oDlg, { || oBrowse:goBottom(), oBrowse:setFocus() }, 40, 010,,, .F., .T., .F.,, .F.,,, .F. )
 */
  ACTIVATE DIALOG oDlg CENTERED
 
return
