programa {
  funcao inicio() {
    inteiro r1 = 0, r2 = 0, r3 = 0, r4 = 0, opcao, votos = 0

    enquanto (votos < 5) {
      escreva ("Digite um número (1-4 para votar, 5 para sair): ")
      leia (opcao)

      escolha (opcao) {
        caso 1:
          r1 = r1 + 1
          escreva ("Voto computado com sucesso!\n")
          pare
        caso 2:
          r2 = r2 + 1
          escreva ("Voto computado com sucesso!\n")
          pare
        caso 3:
          r3 = r3 + 1
          escreva ("Voto computado com sucesso!\n")
          pare
        caso 4:
          r4 = r4 + 1
          escreva ("Voto computado com sucesso!\n")
          pare
        caso 5:
          escreva ("Encerrando a votação...\n")
          pare
        caso contrario:
          escreva ("Opção inválida! Tente novamente.\n")
      }
      votos = votos + 1
    }

    escreva("\nResultados da votação:\n")
    escreva("Opção 1: ", r1, " votos\n")
    escreva("Opção 2: ", r2, " votos\n")
    escreva("Opção 3: ", r3, " votos\n")
    escreva("Opção 4: ", r4, " votos\n")
    escreva("Total de votos: ", votos - 1, "\n") // -1 pois a última entrada foi 5 (para sair)
  }
}