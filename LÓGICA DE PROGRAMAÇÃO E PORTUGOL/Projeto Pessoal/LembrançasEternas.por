programa
{
	inclua biblioteca Sons --> s
	inclua biblioteca Graficos --> g
	inclua biblioteca Util --> u
	inclua biblioteca Calendario --> c
	inclua biblioteca Arquivos --> a
inclua biblioteca Tipos --> t
funcao inicio(){
	inteiro somID = s.carregar_som("som.wav")
	definir_volume(100)
	inteiro pop_up
	cadeia data
	cadeia lembrete
	cadeia dia
	inteiro rep = 1
	inteiro caminho
	enquanto (rep>0){
		escreva("1 para inserir data, 2 para ler as datas, 3 para rodar ou outro numero para sair: ")
		leia(caminho)
	se(caminho==1){
			escreva("Qual a data ? ")
			leia(data)
			escreva("Qual o lembrete?")
			leia(lembrete)
			inteiro endereco_data = a.abrir_arquivo("data.txt", a.MODO_ACRESCENTAR)
			a.escrever_linha(data, endereco_data)
			a.fechar_arquivo(endereco_data)
			inteiro endereco_lembrete= a.abrir_arquivo("lembrete.txt", a.MODO_ACRESCENTAR)
			a.escrever_linha(lembrete, endereco_lembrete)
			a.fechar_arquivo(endereco_lembrete)}
	se(caminho==2){
			cadeia listagem[3650]
			cadeia caminho_do_arquivo_data = "data.txt"
			cadeia caminho_do_arquivo_lembrete = "lembrete.txt"
			inteiro arquivo_placar_data = a.abrir_arquivo(caminho_do_arquivo_data, a.MODO_LEITURA)
			inteiro arquivo_placar_lembrete = a.abrir_arquivo(caminho_do_arquivo_lembrete, a.MODO_LEITURA)
			cadeia linha = ""
			inteiro numero_da_linha_data = 0
			inteiro numero_da_linha_lembrete = 0
			logico encontrou = falso
		enquanto (nao a.fim_arquivo(arquivo_placar_lembrete)){
				linha = a.ler_linha(arquivo_placar_lembrete)
				listagem[numero_da_linha_lembrete]=linha
				numero_da_linha_lembrete = numero_da_linha_lembrete+1
				escreva("Lembrete ", numero_da_linha_lembrete, ": ", linha, "\n")}
				a.fechar_arquivo(arquivo_placar_lembrete)
		enquanto (nao a.fim_arquivo(arquivo_placar_data)){
				linha = a.ler_linha(arquivo_placar_data)
				listagem[numero_da_linha_data]=linha
				numero_da_linha_data = numero_da_linha_data + 1
				escreva("Data ", numero_da_linha_data, ": ", linha, "\n")}
				a.fechar_arquivo(arquivo_placar_data)}
	se (caminho == 3) {
		enquanto (rep>0){
				cadeia caminho_do_arquivo_data = "data.txt"
				cadeia caminho_do_arquivo_lembrete = "lembrete.txt"
				inteiro arquivo_lembretes_data = a.abrir_arquivo(caminho_do_arquivo_data, a.MODO_LEITURA)
				inteiro arquivo_lembretes_lembrete = a.abrir_arquivo(caminho_do_arquivo_lembrete, a.MODO_LEITURA)
				cadeia linha_data = ""
				cadeia linha_lembrete = ""
				cadeia data_atual_dia_mes = c.dia_mes_atual() + "/" + c.mes_atual()
				cadeia data_atual_dia = t.inteiro_para_cadeia(c.dia_mes_atual(), 10)
				logico encontrou = falso
				escreva("Hoje é: ", data_atual_dia_mes, "\n")
				escreva("Verificando lembretes...\n")
				enquanto (nao a.fim_arquivo(arquivo_lembretes_data)){
					enquanto (nao a.fim_arquivo(arquivo_lembretes_lembrete)){
						linha_data = a.ler_linha(arquivo_lembretes_data)
						linha_lembrete = a.ler_linha(arquivo_lembretes_lembrete)
		 				se (linha_data == data_atual_dia){
               				escreva("ALERTA: Hoje é ",linha_data," dia do ", linha_lembrete,"\n")
               				encontrou = verdadeiro
               				reproduzir_som(somID, verdadeiro)
               				janela()}     
						se (linha_data == data_atual_dia_mes){
                        			escreva("ALERTA: Hoje é ",linha_data," dia do ", linha_lembrete,"\n")
                        			encontrou = verdadeiro
                        			reproduzir_som(somID, verdadeiro)
                        			janela()}}}
                			a.fechar_arquivo(arquivo_lembretes_data)
                			a.fechar_arquivo(arquivo_lembretes_lembrete)}}
						se(1 > caminho ou caminho > 3){pare}
}
}
funcao vazio fechar_janela(){}
funcao janela(){
	inteiro pop_up
	g.iniciar_modo_grafico(verdadeiro)
	g.definir_dimensoes_janela(930, 230)
	pop_up = g.carregar_imagem("imagem.png")
	se(verdadeiro){
		g.desenhar_imagem(0, 0, pop_up)
		g.renderizar()
		u.aguarde(7000)
		fechar_janela()}}
funcao inteiro carregar_som(cadeia arquivo){
	retorne s.carregar_som(arquivo)}
funcao vazio definir_volume(inteiro nivel){
	s.definir_volume(nivel)}
funcao inteiro reproduzir_som(inteiro somID, logico loop){
	retorne s.reproduzir_som(somID, loop)}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3323; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */