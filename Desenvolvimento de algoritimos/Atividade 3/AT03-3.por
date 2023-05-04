programa
{
	
	funcao inicio()
	{
	   inteiro input = 0
	   inteiro totalCadastros = 0
	   cadeia hospedes[7]
	   enquanto(input != 3){
		   escreva("========\n")
		   escreva("| MENU |\n")
		   escreva("========\n")
		   escreva("1) Cadastrar\n")
		   escreva("2) Pesquisar\n")
		   escreva("3) sair\n")   
		   leia(input)
		   se(input == 1){
		   	cadeia novoHospede
		   	se(totalCadastros < 7){
			   	escreva("============\n")
			   	escreva("| CADASTRO |\n")
			   	escreva("============\n")
			   	escreva("Digite o nome do hospede: ")
			   	leia(novoHospede)
				hospedes[totalCadastros] = novoHospede
				totalCadastros = totalCadastros + 1   	
		   	}
		   	senao{
		   	 escreva("maximo de hospedes atingido\n")	
		   	}   
		   }
		   se(input == 2){
		   	cadeia nomeHospede
		   	escreva("============\n")
			escreva("| PESQUISA |\n")
			escreva("============\n")
			escreva("Digite o nome do hospede: ")
			leia(nomeHospede)
			logico encontrado = falso
			inteiro indice = 0
			para(inteiro i = 0; i < totalCadastros; i++){
				se(hospedes[i] == nomeHospede){
					encontrado = verdadeiro
					indice = i
				}
				senao{
					encontrado = falso
				}
			}
			se(encontrado){
				escreva("hospede encontrado no indice ", indice, "\n")
			}
			senao{
				escreva("hospede não encontrado\n")
			}  	   	
	   	   }
	   }	  
	     
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1179; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */