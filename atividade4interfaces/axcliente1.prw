#INCLUDE 'TOTVS.CH'


user function cadcli()

  Local cTitulo := "Cadastro de Clientes"
  Local cAlias := "SA1"
  Local cFunExc := "U_exclcli()"
  Local cFunAlt := "U_exsimOrn"

  AxCadastro(cAlias, cTitulo, cFunExc, cFunAlt)
 
return

static function exclcli()
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


