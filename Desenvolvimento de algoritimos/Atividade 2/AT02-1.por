programa {
  funcao inicio() {
    real vdiaria, dias
    faca{
      escreva("Digite o valor da diaria: ")
      leia(vdiaria)
      escreva("Digite o numero de dias: ")
      leia(dias)
      se(dias >30 ou vdiaria < 0){
        escreva("ValorInvalido \n")
      }
    }enquanto(vdiaria < 0 ou dias > 30)
    escreva("Fim do programa")
  }
}
