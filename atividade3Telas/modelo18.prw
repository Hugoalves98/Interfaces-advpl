#INCLUDE 'TOTVS.CH'


user function temod()
 
  local aDados := {}
  local oBrowse := nil
  local oButton, oPanel, oSay
  Local cTitulo := PADC("Tela Customizada",90)
  Local lHasButton := .T.
  Local cGet1 := ""
  Local cGet2 := "999.999,00"
 
  DEFINE DIALOG oDlg TITLE cTitulo FROM 0, 0 TO 270, 470 PIXEL           
 

    oTFont := TFont():New('Courier new',,16,.T.)

    // Cria array com dados
    aAdd( aDados, { "01", "colch�o", "MINE", "1", "10" } )
    aAdd( aDados, { "02", "cama", "MINE", "1", "10" } )
    aAdd( aDados, { "03", "travesseiro", "MINE", "1", "10" } )
    aAdd( aDados, { "04", "len�ol", "MINE", "1", "10" } )

    
    oPanel:= tPanel():Create(oDlg,30,10," C�digo do Cliente:  ",oTFont,.F.,,CLR_BLACK,CLR_GRAY,220,90)   

    oBrowse := TSBrowse():New(20,0,220,50,oPanel,,16,,1)

    oGet1 := TGet():New( 0, 65, { | u | If( PCount() == 0, cGet1, cGet1 := u ) },oPanel,060, 010, "!@",, 0, 16777215,,.F.,,.T.,,.F.,,.F.,.F.,,.F.,.F. ,,"cGet1",,,,lHasButton )
    oGet1:cF3:="SA1"
    @ 75,124 SAY oSay PROMPT 'Valor Total:' SIZE 50,20 COLORS CLR_BLACK FONT oTFont OF oPanel PIXEL
    @ 73,167 GET oGet1 VAR cGet2 SIZE 050,10 OF oPanel PIXEL
 
   
    oBrowse:setArray( aDados )
 
    oBrowse:addColumn( TCColumn():new( "C�digo", { || aDados[oBrowse:nAt, 1] },,,, "LEFT",, .F., .F.,,,, .F. ) )
    oBrowse:addColumn( TCColumn():new( "Produto", { || aDados[oBrowse:nAt, 2] },,,, "LEFT",, .F., .F.,,,, .F. ) )
    oBrowse:addColumn( TCColumn():new( "Descri��o", { || aDados[oBrowse:nAt, 3] },,,, "LEFT",, .F., .F.,,,, .F. ) )
    oBrowse:addColumn( TCColumn():new( "Qtde", { || aDados[oBrowse:nAt, 4] },,,, "LEFT",, .F., .F.,,,, .F. ) )
    oBrowse:addColumn( TCColumn():new( "Vl.Unit�rio", { || aDados[oBrowse:nAt, 5] },,,, "LEFT",, .F., .F.,,,, .F. ) )
    oBrowse:Refresh()
 
    // Cria Bot�es com m�todos b�sicos 
    oButton:= TButton():New(10,200,"Sair",oDlg,{||,oDlg:End()},30,15,,,,.t.)

 
  ACTIVATE DIALOG oDlg CENTERED
 
return



