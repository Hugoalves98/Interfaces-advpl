#INCLUDE 'TOTVS.CH'


user function cadpro()

  Local cTitulo := "Cadastro de produtos"
  Local cAlias := "SB1"
  Local cFunExc := "U_exclprod()"
  Local cFunAlt := "U_exsimOrn"

  AxCadastro(cAlias, cTitulo, cFunExc, cFunAlt)
 
return

static function exclprod()
Local lRet := MsgBox("Tem certeza que deseja excluir o registro selecionado?", "Confirma��o","YESNO")

return lRet

static function exsimOrn()
Local lRet := .F.
Local cMsg := ""
If INCLUI 
  cMsg := "Confirmar a inclus�o do registro?"
else
  cMsg := "Confirmar a altera��o do registro?"
endif

lRet := MsgBox(cMsg := "Confirma��o", "YESNO")

return lRet


