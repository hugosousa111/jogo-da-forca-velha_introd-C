algoritmo "JogoDaForca"
arquivo "forcaHugoSousa.txt"
// Fun��o : Implementar o jogo da forca em Portugol
// Autor : Fernando Rodrigues, Hugo Sousa
// Data : 26/12/2015
// Se��o de Declara��es
var
vetorpalavras: vetor[1..20] de caracter //palavras digitadas pelo usu�rio
posi,let: inteiro//contador
continuar: caracter
palavra : caracter // palavra a ser adivinhada
i,cont,tent : inteiro // contadores auxiliares
quantTentativas : inteiro // salva a quantidade de tentativas de acerto a serem feitas
quantLetras : inteiro // armazena o tamanho (quantidade de caracteres) da palavra passada
letras : vetor[1..10] de caracter // armazena cada caracter da palavra passada (com at� um m�ximo de 10 letras)
letrasEncontradas : vetor[1..20] de caracter // armazena cada caracter j� encontrado na palavra
quantLetrasEncontradas : inteiro // salva a quantidade de caracteres j� encontrados da palavra
letrasProcuradas : vetor[1..20] de caracter // armazena cada caracter j� buscado
quantLetrasProcuradas : inteiro  // salva a quantidade de caracteres j� procurados

funcao temLetraNaPalavra(letra : caracter): logico
// verifica se a letra passada como parametro est� presente na palavra digitada
var encontrada : logico
inicio
encontrada <- falso
para cont de 1 ate quantLetras faca
   se letras[cont] = letra entao
      encontrada <- verdadeiro
   fimse
fimpara
retorne (encontrada)
fimfuncao

procedimento pegaLetras(pal: caracter)
// l� cada caracter da palavra passada "pal"(com at� um m�ximo de 10 caracteres) para o vetor "letras"
inicio
//pausa
quantLetras <- compr(palavra)
se quantLetras > 10 entao
   escreval("A palavra tem mais de 10 caracteres!")
senao
   para cont de 1 ate quantLetras faca
      letras[cont] <- copia(palavra,cont,1)
   fimpara
fimse
fimprocedimento

procedimento lervetorpalavra()
var palavraDigitada : caracter
inicio
para posi de 1 ate 20 faca
   repita
      escreva("Digite uma palavra com at� 10 letras: ")
      leia(vetorpalavras[posi])
      quantLetras <- compr(vetorpalavras[posi])
   ate quantLetras <= 10
fimpara
fimprocedimento

funcao escolhePalavra() : caracter
// Faz a leitura da palavra digitada, garantindo um m�ximo de 10 caracteres
var palavraDigitada : caracter
inicio
posi<-randI(19)
quantLetras<-compr (vetorpalavras[posi+1])
retorne vetorpalavras[posi+1]
fimfuncao

procedimento imprimeEspacos()
// Imprime tantos "espa�os em branco" (sublinhados) quanto for o n�mero de letras da palavra digitada
inicio
para cont de 1 ate quantLetras faca
   escreva("_ ")
fimpara
escreval()
fimprocedimento

procedimento buscaLetras()
// l� cada caracter da palavra passada "pal"(com at� um m�ximo de 10 caracteres) para o vetor letras
var novaLetra: caracter
jaUsada, letraEncontrada: logico
inicio
      let<-0
repita
   escreva("Digite uma letra a ser procurada: ")
   leia(novaLetra)
   //pausa
   jaUsada <- falso
   para cont de 1 ate quantLetrasProcuradas faca // verifica se a letra "novaLetra" j� foi procurada, ou seja, se j� est� no vetor "letrasProcuradas"
      se letrasProcuradas[cont] = novaLetra entao
         jaUsada <- verdadeiro
         escreval("Letra j� procurada!")
      fimse
   fimpara
ate nao(jaUsada)

se nao(jaUsada) entao
   quantLetrasProcuradas <- quantLetrasProcuradas + 1
   letrasProcuradas[quantLetrasProcuradas] <- novaLetra
   se temLetraNaPalavra(novaLetra) entao
      quantLetrasEncontradas <- quantLetrasEncontradas + 1
      letrasEncontradas[quantLetrasEncontradas] <- novaLetra
      quantTentativas <- quantTentativas + 1

   fimse

   para cont de 1 ate quantLetras faca
      letraEncontrada <- falso

      para i de 1 ate quantLetrasEncontradas faca
         se letras[cont] = letrasEncontradas[i] entao
            escreva(letras[cont]," ")
            letraEncontrada <- verdadeiro
               let<-let+1
         fimse
      fimpara
      se nao(letraEncontrada) entao
         escreva("_ ")
      fimse
   fimpara
   escreval()
fimse
fimprocedimento


inicio
escreval(" * * * JOGO DA FORCA * * * ")
escreval("")
lervetorpalavra()
continuar<-"s"
repita
palavra <- escolhePalavra() // L� a palavra a ser adivinhada
pegaLetras(palavra) // Divide as letras da palavra digitada no vetor "letras"
limpatela
escreval(" * * * JOGO DA FORCA * * * ")
escreval("")
escreva("Tente acertar a palavra: ")
imprimeEspacos()
escreval()
escreva("Informe a quantidade de tentativas de acerto a serem feitas: ")
leia(quantTentativas)
quantLetrasEncontradas <- 0
quantLetrasProcuradas <- 0
enquanto quantTentativas > 0 faca
   buscaLetras()
   quantTentativas <- quantTentativas-1
   escreval("Voc� ainda tem ",quantTentativas," tentativas para acertar a palavra!")
   quantLetras <- compr(palavra)
   se let = quantLetras entao
   escreval()
   escreval("Voc� acertou, PARABENS")
   quantTentativas<-0
   fimse
fimenquanto
escreval()
escreval("Voc� deseja continuar?(s/n)")
leia(continuar)
ate continuar = "n"
fimalgoritmo
