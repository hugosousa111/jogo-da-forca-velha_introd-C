algoritmo "semnome"
// Fun��o : testar se o numero � par ou impar
// Autor : Hugo Sousa
// Data : 24/11/2015
// Se��o de Declara��es
var
a:inteiro
sinal:logico
funcao testarparimpar(x:inteiro):logico
inicio
se x mod 2=0 entao
   retorne verdadeiro
senao
   retorne falso
fimse
fimfuncao
inicio
// Se��o de Comandos
leia(a)
se a<>0 entao
se testarparimpar(a) entao
escreval("o numero � par")
senao
escreval("o numero � �mpar")
fimse
senao
escreval("0 � nulo")
fimse
fimalgoritmo
