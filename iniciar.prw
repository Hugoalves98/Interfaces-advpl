#INCLUDE 'TOTVS.CH'


User Function APROVADOS()
Local aNomes := {}
Local aNotas := {}
Local nSoma :=0
Local nDividir :=0 
Local nRepetir :=0 
Local nMedia :=0


aADD(aNomes, {"Eduarda"})
aADD(aNomes, {"Mandeta"})
aADD(aNomes, {"Luís"})
aADD(aNomes, {"Alex"})
aADD(aNomes, {"Ana"})

aADD(aNotas, {82, 67, 75, 69})
aADD(aNotas, {65, 96, 81, 93})
aADD(aNotas, {48, 50, 23, 16})
aADD(aNotas, {33, 35, 21, 23})
aADD(aNotas, {43, 61, 83, 59})


For nRepetir = 1 To Len(aNotas)

		nSoma  := aNotas[nRepetir,1] +  aNotas[nRepetir,2] + aNotas[nRepetir,3] + aNotas[nRepetir,4]
		nDividir := nSoma / 4
		nMedia := nDividir

	if nMedia < 50

		MsgInfo("Nome: " + aNomes[nRepetir,1] + CRLF +;
			    "Media: " + CVALTOCHAR(nMedia) + CRLF +;
				("Reprovado") )

	elseif nMedia >= 50  .and. nMedia < 60
		MsgInfo("Nome: " + aNomes[nRepetir,1] + CRLF +;
			    "Media: " + CVALTOCHAR(nMedia) + CRLF +;
				("Aprovado") )

    elseif nMedia >= 60 .and. nMedia < 80
		MsgInfo("Nome: " + aNomes[nRepetir,1] + CRLF +;
			    "Media: " + CVALTOCHAR(nMedia) + CRLF +;
				("Aprovado com mérito") )

    elseif nMedia >= 80
		MsgInfo("Nome: " + aNomes[nRepetir,1] + CRLF +;
			    "Media: " + CVALTOCHAR(nMedia) + CRLF +;
				("Aprovado com mérito e louvor!!") )	
	endif


	next
return


/*
if nMedia < 50

		MsgInfo("Nome: " + aNomes[nRepetir,1] + CRLF +;
			    "Media: " + CVALTOCHAR(nMedia) + CRLF +;
				PADC("Reprovado",19,"-") )

	elseif nMedia >= 50  && nMedia < 60
		MsgInfo("Nome: " + aNomes[nRepetir,1] + CRLF +;
			    "Media: " + CVALTOCHAR(nMedia) + CRLF +;
				PADC("Aprovado",19,"-") )

    elseif nMedia >= 60 && nMedia < 80
		MsgInfo("Nome: " + aNomes[nRepetir,1] + CRLF +;
			    "Media: " + CVALTOCHAR(nMedia) + CRLF +;
				PADC("Aprovado com mérito",19,"-") )

    elseif nMedia >= 80
		MsgInfo("Nome: " + aNomes[nRepetir,1] + CRLF +;
			    "Media: " + CVALTOCHAR(nMedia) + CRLF +;
				PADC("Aprovado com mérito e louvor!!",19,"-") )

	
	endif
*/
