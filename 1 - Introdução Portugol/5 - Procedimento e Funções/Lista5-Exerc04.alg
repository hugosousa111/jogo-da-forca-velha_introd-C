algoritmo "semnome"
// Fun��o : testar se o numero � positivo ou negativo
// Autor : Hugo Sousa
// Data : 24/11/2015
// Se��o de Declara��es
var
a:inteiro
sinal:logico
funcao testesinal(x:inteiro):logico
inicio
se x>0 entao
   retorne verdadeiro
senao
   retorne falso
fimse
fimfuncao
inicio
// Se��o de Comandos
leia(a)
se a<>0 entao
se testesinal(a) entao
escreval("o numero � positivo")
senao
escreval("o numero � negativo")
fimse
senao
escreval("0 � nulo")
fimse
fimalgoritmo
