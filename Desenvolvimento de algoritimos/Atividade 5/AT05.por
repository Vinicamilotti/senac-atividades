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
		escreva("0) Sair \n")
		leia(input)
		se(input == 1){
			cadastro()
		}
		senao se(input == 2){
		 exibirHospedes()
		}
		senao se(input == 0){
			retorne
		}
	}
	funcao vazio exibirHospedes() {
		para(inteiro i = 0; i < totalCadastros; i++){
			escreva("Hospede ", i , "\n")
			escreva("Indice: ", i, "\n")
			escreva("Nome: ", hospedes[i], "\n")
			escreva("CPF: ", hospedesDados[i][1], "\n")
			escreva("Diarias: ", hospedesDados[i][2], "\n")
			escreva("=============================== \n")
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
 * @POSICAO-CURSOR = 602; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */