programa {
  funcao inicio() {
      caracter modo
      escreva("Escolha o sistema /n")
      escreva("(P)iscina, (L)avanderia")
      leia(modo)
      escolha (modo)
      {
        caso "L":
          real qnt, valor
          escreva("Digite a quantidade de roupas ")
          leia(qnt)
          escolha (qnt) {
            caso > 10:
              valor = 15
              escreva("Valor da lavanderia: ", valor*qnt)
            pare
            caso <= 10:
              valor = 20
              escreva("Valor da lavanderia: ", valor*qnt)
            pare
          }
        pare
        caso "P":
          inteiro idade
          cadeia acompanhado
          escreva("Digite sua idade ")
          leia(idade)
          escreva("Está acompanhado? ")
          leia(acompanhado)
          logico entrada = idade >= 18 ou acompanhado == "SIM"
          escolha (entrada){
            caso verdadeiro:
              cadeia exame
              escreva("O exame médio está em dia? ")
              leia(exame)
              escolha (exame){
                caso "SIM":
                  escreva("Piscina liberada")
                pare
                caso "NAO":
                  escreva("Faça seu exame")
                pare 
              }
              pare
            caso falso:
              escreva("Providencie um acompanhante maior de idade")
            pare  
          }

          }
      } 
  }
}
