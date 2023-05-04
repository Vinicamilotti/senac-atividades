programa
{
	funcao inicio()
	{
		inteiro valorDiaria
		escreva("Digite o valor de uma diária ")
		leia(valorDiaria)
		cadeia input = "S"
		inteiro totalInteiro = 0 
		inteiro totalGratuidades = 0
		inteiro totalMeias = 0
		enquanto(input != "N"){
			cadeia hospede
			inteiro idade
			escreva("Digiteo nome do hospede ")
			leia(hospede)
			escreva("Digite a idade do hospede ")
			leia(idade)
			se(idade <= 4){
				totalGratuidades = totalGratuidades + 1	
				escreva(hospede, " possui gratuidade \n")
			}
			senao se(idade >= 80){
				totalMeias = totalMeias + 1
				escreva(hospede ," paga meia \n")	
			}
			senao{
				totalInteiro = totalInteiro + 1	
			}
			escreva("Deseja continuar a informar dados?")
			leia(input)	
		}
		inteiro totalValor = totalInteiro*valorDiaria + totalMeias*(valorDiaria/2)
		escreva("Valor total: R$ ", totalValor, "; ", totalGratuidades, " gratuidade(s); ", totalMeias, " meia(s)")
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