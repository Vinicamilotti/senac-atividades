programa {
  funcao inicio() {
    inteiro nhospedes 
    leia(nhospedes)
    inteiro menorValor, quartoMenorValor, maiorValor, quartoMaiorValor, total = 0
    
    para(inteiro n = 0; n < nhospedes; n++){
      inteiro quarto, valor
      escreva("Digite o numero do quarto: ")
      leia(quarto)
      escreva("Digite o valor do quarto: ")
      leia(valor)
      escreva("Quarto ", quarto, " R$ ", valor, "\n")
      se (n == 0 ){
        menorValor = valor
        quartoMenorValor = quarto
        maiorValor = valor
        quartoMaiorValor = quarto
      }
      senao se(valor < menorValor){
        menorValor = valor
        quartoMenorValor = quarto
      }
      senao se (valor > maiorValor){
        maiorValor = valor
        quartoMaiorValor = quarto
      }
      total = total + valor
    }
  escreva("Valor total: R$ ", total, "\n")
  escreva("Menor valor: \n", "Quarto: ", quartoMenorValor, " R$ ", menorValor, "\n")
  escreva("Maior valor: \n", "Quarto: ", quartoMaiorValor, " R$ ", maiorValor)
  }
}
