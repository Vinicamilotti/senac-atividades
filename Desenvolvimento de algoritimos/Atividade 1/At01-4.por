programa {
  funcao inicio() {
      caracter modo
      escreva("Escolha o sistema \n")
      escreva("(P)iscina, (L)avanderia")
      leia(modo)
      escolha (modo)
      {
        caso 'L':
          inteiro qnt, valor
          escreva("Digite a quantidade de roupas ")
          leia(qnt)
          logico maior = qnt > 10
          se (maior) {
              valor = 15
              escreva("Valor da lavanderia: ", valor*qnt)
          }
            senao {
              valor = 20
              escreva("Valor da lavanderia: ", valor*qnt)
          }
        pare
        caso 'P':
          inteiro idade
          cadeia acompanhado
          escreva("Digite sua idade ")
          leia(idade)
          escreva("Está acompanhado? ")
          leia(acompanhado)
          logico entrada = idade >= 18 ou acompanhado == "SIM"
           se(entrada){
              caracter exame
              escreva("O exame médio está em dia? ")
              leia(exame)
              escolha (exame) { 
                caso 'S':
                  escreva("Piscina liberada")
                pare
                caso 'N':
                  escreva("Faça seu exame")
                pare 
              }
              }
              senao{
              escreva("Providencie um acompanhante maior de idade")
              }
            pare  
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
 * @POSICAO-CURSOR = 859; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */