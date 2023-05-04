programa
{
	inteiro totalCadastros = 0
	const inteiro maxCadastros = 10
	const inteiro valorDiaria = 100
	cadeia hospedes[10]
	inteiro hospedesDados[10][3]
	inteiro quartos[10]
	
	funcao vazio menu() {
		inteiro input
		escreva("Menu\n")
		escreva("1) Cadastro\n")
		escreva("2) Exibir hospedes\n")
		escreva("3) Exibir Quartos\n")
		escreva("4) Atribuir Quarto\n")
		escreva("5) Reservar area de lazer\n")
		escreva("0) Sair \n")
		leia(input)
		se(input == 1){
			cadastro()
		}
		senao se(input == 2){
		 exibirHospedes()
		}
		senao se(input == 3){
		 exibirQuartos()
		}senao se(input == 4){
			atribuirHospede()
		}
		senao se(input == 0){
			retorne
		}
	}
	funcao vazio atribuirHospede(){
	  inteiro hospede
	  inteiro quarto	
	  escreva("Indice do hospede")
	  leia(hospede)
	  escreva("Indice do quarto")
	  leia(quarto)
	  se(hospede > totalCadastros){
	  	escreva("Hospede não cadastrado")
	  }
	  senao se(quartos[quarto] > 0){
	  	escreva("Quaro Ocupado")
	  }
	  senao{
	  	quartos[quarto] = hospede
	  	escreva("Quarto ", quarto, " atribuido para ", hospedes[hospede], " (Indice: ", hospede, ")")
	  }
	  menu()	
	}
	funcao vazio exibirHospedes() {
		para(inteiro i = 0; i < totalCadastros; i++){
			escreva("Hospede ", i , "\n")
			escreva("Indice: ", i, "\n")
			escreva("Nome: ", hospedes[i], "\n")
			escreva("CPF: ", hospedesDados[i][0], "\n")
			escreva("Diarias: ", hospedesDados[i][1], "\n")
			escreva("=============================== \n")
		}	
			menu()
	}
	funcao vazio exibirHospedePorIndice(inteiro indice){
			escreva("Hospede ", indice , "\n")
			escreva("Indice: ", indice, "\n")
			escreva("Nome: ", hospedes[indice], "\n")
			escreva("CPF: ", hospedesDados[indice][0], "\n")
			escreva("Diarias: ", hospedesDados[indice][1], "\n")
			escreva("=============================== \n")
	}
	
	funcao vazio exibirQuartos(){
		para(inteiro i = 0; i < maxCadastros; i++){
			se(quartos[i] >= 0){
			escreva("=============================== \n")
			escreva("QUARTO ",i+1, " OCUPADO\n")
			exibirHospedePorIndice(quartos[i])
			}
			senao{
				escreva("QUARTO ", i+1, " Livre \n")
			}
		}
		menu()
	}
	funcao vazio cadastro(){
		se(totalCadastros < maxCadastros){
			cadeia novoHospede
			inteiro novoCpf
			inteiro novaDiaria
			inteiro novoValor = 0
			escreva("Nome: ")
			leia(novoHospede)
			escreva("CPF: ")
			leia(novoCpf)
			escreva("Diarias: ")
			leia(novaDiaria)
			hospedes[totalCadastros] = novoHospede
			hospedesDados[totalCadastros][0] = novoCpf
			hospedesDados[totalCadastros][1] = novaDiaria
			hospedesDados[totalCadastros][2] = novoValor
			escreva("Hospede ", novoHospede, " cadastrado com indice ", totalCadastros, "\n")
			totalCadastros++
			menu()
		}
		senao{
			escreva("Máximo de hospedes atingido \n")
			menu()
		} 
	}
	funcao inicio()
	{
		para(inteiro i = 0; i<maxCadastros; i++){
			quartos[i]= -1
		}
		menu()
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1794; 
 * @DOBRAMENTO-CODIGO = [34, 54, 53, 86, 111];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */