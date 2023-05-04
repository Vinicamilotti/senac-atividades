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
		escreva("================\n")
		escreva("      Menu       \n")
		escreva("================\n")
		escreva("1) Cadastro\n")
		escreva("2) Exibir hospedes\n")
		escreva("3) Exibir Quartos\n")
		escreva("4) Atribuir Quarto\n")
		escreva("5) Reservar area de lazer\n")
		escreva("6) Check out \n")
		escreva("0) Sair \n")
		leia(input)
		se(input == 1){
			escreva("============\n")
			escreva("  Cadastro   \n")
			escreva("============\n")
			cadastro()
			menu()
		}
		senao se(input == 2){
		 escreva("    HOSPEDES\n")
		 escreva("==================\n")
		 exibirHospedes()
		 menu()
		}
		senao se(input == 3){
		 escreva("            QUARTOS\n")
		 escreva("=============================== \n")
		 exibirQuartos()
		 menu()
		}senao se(input == 4){
			atribuirHospede()
			menu()
		}
		senao se(input == 5){
			escreva("  AREA DE LAZER\n")
			escreva("==================\n")
			reservarLazer()
			menu()
		}
		senao se(input == 6){
			inteiro indice
			escreva("=============================== \n")
			escreva("          CHECKOUT\n")
			escreva("=============================== \n")
			escreva("Digite o indice do usuário: ")
			leia(indice)
			se(indice <= totalCadastros){
			inteiro valor = checkout(indice)
			liberarQuarto(indice)
			escreva("Obrigado, ", hospedes[indice], ", por se hospedar conosco. Sua conta foi de R$ ", valor , "\n")
			}
			senao{
			 escreva("Hospede não encontrado")
			}
			menu()
		}
		senao se(input == 0){
			retorne
		}
	}

	funcao inteiro checkout(inteiro i){
		inteiro calcularDiaria = hospedesDados[i][1]*valorDiaria
		inteiro total = calcularDiaria + hospedesDados[i][2]
		retorne total
	}
	funcao vazio liberarQuarto(inteiro indice){
		para(inteiro i = 0; i<maxCadastros; i++){
			se(quartos[i] == indice){
				quartos[i] = -1
				escreva("Quarto ", i+1, " liberado. O Hospede ", hospedes[i], " saiu\n" )
			}
		}
	}
	funcao vazio reservarLazer(){
		const inteiro valorAcad = 20
		const inteiro valorFesta = 50
		const inteiro valorRestaurante = 35
		inteiro hospede
		caracter servico
		escreva("Indice do hospede: ")
		leia(hospede)
		escreva("Serviço (A/F/R)")
		leia(servico)
		escolha(servico){
			caso 'A':
				hospedesDados[hospede][2] += valorAcad
				escreva("Obrigado ", hospedes[hospede], ", a academia está reservada e o valor foi adicoinado a sua conta\n")			 
			pare
			caso 'F':
				hospedesDados[hospede][2] += valorFesta
				escreva("Obrigado ", hospedes[hospede], ", o salão de festas está reservado e o valor foi adicoinado a sua conta\n")
			pare
			caso 'R':
				hospedesDados[hospede][2] += valorRestaurante
				escreva("Obrigado ", hospedes[hospede], ", o restaurante está reservado e o valor foi adicoinado a sua conta\n")
			pare
		}
		
	}
	funcao vazio atribuirHospede(){
	  inteiro hospede
	  inteiro quarto
	  exibirHospedes()	
	  escreva("Indice do hospede: ")
	  leia(hospede)
	  escreva("Indice do quarto: ")
	  leia(quarto)
	  se(hospede > totalCadastros){
	  	escreva("Hospede não cadastrado")
	  }
	  senao se(quartos[quarto] > 0){
	  	escreva("Quaro Ocupado")
	  }
	  senao{
	  	quartos[quarto] = hospede
	  	escreva("Quarto ", quarto, " atribuido para ", hospedes[hospede], " (Indice: ", hospede, ")\n")
	  }
	  exibirQuartos()
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
			escreva("QUARTO ",i+1, " OCUPADO\n")
			exibirHospedePorIndice(quartos[i])
			}
			senao{
				escreva("QUARTO ", i+1, " Livre \n")
				escreva("=============================== \n")
			}
		}
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
 * @POSICAO-CURSOR = 1344; 
 * @DOBRAMENTO-CODIGO = [187];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */