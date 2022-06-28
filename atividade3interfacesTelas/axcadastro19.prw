#INCLUDE 'TOTVS.CH'


user function axtelac()
 
  local aDados := {}
  local oBrowse := nil
  local oButton
  Local cTitulo := PADC("Tela Customizada",100)
  
 
  DEFINE DIALOG oDlg TITLE cTitulo FROM 0, 0 TO 270, 470 PIXEL           
 

    aAdd( aDados, { "000001", "CLIENTE ", "RAZÃO SOCIAL" } )
    aAdd( aDados, { "000002", "CLIENTE ", "RAZÃO SOCIAL" } )
    aAdd( aDados, { "000003", "CLIENTE ", "RAZÃO SOCIAL" } )
    aAdd( aDados, { "000004", "CLIENTE ", "RAZÃO SOCIAL" } )
    

    oBrowse := TSBrowse():New(50,10,220,80,oDlg,,16,,1)  
   
    oBrowse:setArray( aDados )
 
    oBrowse:addColumn( TCColumn():new( "Código", { || aDados[oBrowse:nAt, 1] },,,, "CENTER",, .F., .F.,,,, .F. ) )
    oBrowse:addColumn( TCColumn():new( "Fantasia", { || aDados[oBrowse:nAt, 2] },,,, "CENTER",, .F., .F.,,,, .F. ) )
    oBrowse:addColumn( TCColumn():new( "Razão Social", { || aDados[oBrowse:nAt, 3] },,,, "CENTER",, .F., .F.,,,, .F. ) )
    // oBrowse:Refresh()
 
    oButton:= TButton():New(10,10,"Incluir",oDlg,{||},40,15,,,,.t.)
    oButton:= TButton():New(10,55,"Alterar",oDlg,{||},40,15,,,,.t.)
    oButton:= TButton():New(10,100,"Visualizar",oDlg,{||},40,15,,,,.t.)
    oButton:= TButton():New(10,145,"Outras ações",oDlg,{||},40,15,,,,.t.)
    oButton:= TButton():New(10,190,"Sair",oDlg,{||,oDlg:End()},40,15,,,,.t.)

 
  ACTIVATE DIALOG oDlg CENTERED
 
return



