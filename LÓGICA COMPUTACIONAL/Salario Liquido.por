programa {
  funcao inicio() {
    real mult, div, sub, ht, vh, sb, sl, td

    escreva("Quantas foram as horas trabalhadas: ")
    leia(ht)
    escreva("Quanto é o valor hora trbalhada: ")
    leia(vh)

    sb=ht*vh
    se (sb<1518){
      td=sb*7.5/100
      escreva("Esse é o total de desconto: ",td,"\n")
      sl=sb-td
      escreva("Este é o salario liquido: ",sl)
    }
    se (1518<=sb e sb<2783.88){
      td=sb*9/100
      escreva("Esse é o total de desconto: ",td,"\n")
      sl=sb-td
      escreva("Este é o salario liquido: ",sl)
    }
    se (2783.88<=sb e sb<4190.84){
      td=sb*12/100
      escreva("Esse é o total de desconto: ",td,"\n")
      sl=sb-td
      escreva("Este é o salario liquido: ",sl)
    }
      se (sb>=4190.84){
      td=sb*14/100
      escreva("Esse é o total de desconto: ",td,"\n")
      sl=sb-td
      escreva("Este é o salario liquido: ",sl)
    }
  }
}
