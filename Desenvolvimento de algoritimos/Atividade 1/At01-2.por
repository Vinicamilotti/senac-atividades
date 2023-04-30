programa {
  funcao inicio() {
    real qnt, cafep, aguap, salgadop, cafe, agua, salgado, min, max
    cafep = 0.2
    aguap = 0.5
    salgadop = 7
    min = 30
    max = 350
    escreva("Digite a quantidade de convidades (mínimo 30, máximo 40): ")
    leia(qnt)
    se (qnt >= min e qnt <= max){
      cafe = cafep*qnt
      agua = aguap*qnt
      salgado = salgadop*qnt
      escreva(cafe, " Litros de café, ", agua, " Litros de água, ", salgado, " salgadinhos")
    }
    senao se(qnt < min){
      escreva("Quantidade de convidados inferior ao minimo \n")
      inicio()
    }
    senao se(qnt > max){
      escreva("Quantidade de convidados superior a capacidade máxima \n")
      inicio()
    }
}
