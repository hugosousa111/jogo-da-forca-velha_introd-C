algoritmo "semnome"
// Fun��o :  Troca de valores sem variavel auxiliar
// Autor : Hugo Sousa
// Data : 01/12/2015
// Se��o de Declara��es
var
x,y,temp:inteiro
inicio
// Se��o de Comandos
escreval("insira x")
leia(x)
escreval("insira y")
leia(y)
escreval("usando 3 variaveis")
//usando 3 variaveis
temp<-x
x<-y
y<-temp
escreval(" X AGR �  ",x, "  E Y AGR �  ",y )
escreval("usando 2 variaveis")
//usando 2 variaveis
escreval("insira x")
leia(x)
escreval("insira y")
leia(y)
x<-x+y
y<-x-y
x<-x-y
escreval(" X AGR �  ",x, "  E Y AGR �  ",y )
fimalgoritmo
