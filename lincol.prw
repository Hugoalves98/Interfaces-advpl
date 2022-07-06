#Include "Protheus.ch"

//
User Function asortes()
    Local aArea   := GetArea()
    Local cMsg    := ""
    local aData   := {}
    local nPos := 0
     
    aAdd(aData,  {"01"  , "02" , "06" , "10" , "11"})  //MÊS
    aAdd(aData,  {"2022","2021","2019","2018","2020"}) //ANO
    
    aSort(aData, , , {|x, y| x > y})
     
    For nPos := 1 To Len(aData)
        cMsg +=  aData[nPos][1]+"."+CRLF
        cMsg +=  aData[nPos][2]+"."+CRLF
        cMsg +=  aData[nPos][3]+"."+CRLF
        cMsg +=  aData[nPos][4]+"."+CRLF
        cMsg +=  aData[nPos][5]+"."+CRLF    
    Next
    MsgInfo("Ordenação Crescente: "+aData[1][1]+aData[2][1], "Atenção")
    

    RestArea(aArea)

Return



