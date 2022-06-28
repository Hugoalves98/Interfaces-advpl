#Include "TOTVS.CH"



user function tegrade()
 
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
    // oBrowse := TSBrowse():new( 0, 0, 260, 170,,,, oDlg,,,,,,,,,,,, .F., "", .T.,, .F.,,, )
    oBrowse := TSBrowse():New(01,01,200,100,oDlg,,16,,1)
 
    // Define vetor para a browse
    oBrowse:setArray( aDados )
 
    // Cria colunas do browse
    oBrowse:addColumn( TCColumn():new( "Código", { || aDados[oBrowse:nAt, 1] },,,, "LEFT",, .F., .F.,,,, .F. ) )
    oBrowse:addColumn( TCColumn():new( "Fantasia", { || aDados[oBrowse:nAt, 2] },,,, "LEFT",, .F., .F.,,,, .F. ) )
    oBrowse:addColumn( TCColumn():new( "Razão Social", { || aDados[oBrowse:nAt, 3] },,,, "LEFT",, .F., .F.,,,, .F. ) )
    oBrowse:Refresh()
 
    // Cria Botões com métodos básicos 
    oButton:= TButton():New(60,130,"Botão para sair",oDlg,{||,oDlg:End()},40,15,,,,.t.)

 
  ACTIVATE DIALOG oDlg CENTERED
 
return


/*
    TButton():new( 172, 002, "goUp()", oDlg, { || oBrowse:goUp(), oBrowse:setFocus() }, 40, 010,,, .F., .T., .F.,, .F.,,, .F. )
    TButton():new( 172, 052, "goDown()", oDlg, { || oBrowse:goDown(), oBrowse:setFocus() }, 40, 010,,, .F., .T., .F.,, .F.,,, .F. )
    TButton():new( 172, 102, "goTop()", oDlg, { || oBrowse:goTop(), oBrowse:setFocus() }, 40, 010,,, .F., .T., .F.,, .F.,,, .F. )
    TButton():new( 172, 152, "goBottom()", oDlg, { || oBrowse:goBottom(), oBrowse:setFocus() }, 40, 010,,, .F., .T., .F.,, .F.,,, .F. )
 */
