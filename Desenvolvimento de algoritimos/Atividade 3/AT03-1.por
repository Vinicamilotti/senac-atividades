programa
{
	
	funcao inicio()
	{
		real mesas[4]
		para(inteiro n = 0; n < 4;  n++){
			escreva("Valor da mesa ", n+1, ": ")
			leia(mesas[n])
		}
		para(inteiro x = 0; x < 4; x++){
			se(mesas[x] <= 30.99){
			   escreva("Mesa ", x+1, ": nada a pagar\n")	
			}
			senao{
			    real aPagar = mesas[x] - 30.99
		    escreva("Mesa ", x+1, " precisa pagar: R$", aPagar, "\n")	
			}	
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 389; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */