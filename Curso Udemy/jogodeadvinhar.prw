#INCLUDE 'TOTVS.CH'

user function guess 

//Local nNum := 50
local nNum := Randomize(1, 100) 
Local nRisk := 0
local nTent := 0


while nRisk != nNum
nRisk := Val(FWInputBox("Choose a number [1 - 100]",""))
  if nRisk == nNum
   MsgInfo("Congratulations, you have successfully - <b>" + CValToChar(nRisk) + "</b><br>ERROS: " + CValToChar(nTent), "Fim de Jogo")
      elseif nRisk > nNum
        MsgAlert("Valor Alto","Tente novamente")
        nTent += 1
         else 
          MsgAlert("Valor Baixo", "Tente novamente")
          nTent += 1
        endif
end

return
