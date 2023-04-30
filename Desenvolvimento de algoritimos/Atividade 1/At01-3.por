programa {
  funcao inicio() {
    inteiro alfa, maxalfa, beta, convidados, cadeiras_a_mais
    maxalfa = 220
    alfa = 150
    beta = 350
    escreva("Digite o numero de convidados: ")
    leia(convidados)
    se(convidados < 0 ou convidados > beta){
      escreva("numero de convidados invalido")
    }
    senao se(convidados > alfa e convidados <=maxalfa){
      cadeiras_a_mais = convidados - alfa
      escreva("Use o auditório Alfa e inclua mais ", cadeiras_a_mais)
    }
    senao se(convidados < alfa){
      escreva("Use o auditório Alfa")
    }
    senao se(convidados > maxalfa e convidados < beta){
      escreva("Use o auditório Beta")
    }
  }
}
