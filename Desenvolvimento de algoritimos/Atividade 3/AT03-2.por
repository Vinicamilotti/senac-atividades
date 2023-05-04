programa
{
	
	funcao inicio()
	{
		cadeia ocupacao[10] = {"L", "L", "L", "L", "L", "L", "L", "L", "L" , "L"}
		cadeia input = "S" 
		enquanto(input != "N"){
			inteiro quarto
			escreva("Digite o numero do quarto ")
			leia(quarto)
			inteiro posicao = quarto - 1
			cadeia quartoHandler
			escreva("O quarto está (L)ivre ou (O)cupado? ")
			leia(quartoHandler)
			se(quartoHandler == "L" e ocupacao[posicao] == "L"){
				escreva("Quarto já está livre \n")
			}
			senao se(quartoHandler == "O" e ocupacao[posicao] == "L"){
				ocupacao[posicao] = "O"
				escreva("O quarto ", quarto, " foi ocupado \n")	
			}senao se(quartoHandler == "L" e ocupacao[posicao] == "O"){
				ocupacao[posicao] = "L"
				escreva("O quarto ", quarto, " foi desocupado \n")	
			}senao se(quartoHandler == "O" e ocupacao[posicao] == "O"){
				escreva("Quarto ja está ocupado")	
			}
			escreva("Deseja continuar (S/N)? ")
			leia(input)
		}
		para(inteiro q = 0; q < 10; q++){
			escreva(q+1, " - ", ocupacao[q], " ")
		}
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1002; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */