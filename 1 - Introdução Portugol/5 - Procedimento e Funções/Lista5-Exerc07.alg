algoritmo "semnome"
// Fun��o :  Calcular o numero fatorial
// Autor :  Hugo Sousa
// Data : 25/11/2015
// Se��o de Declara��es
var
num,a,resposta:inteiro
funcao calcfatorial(x:inteiro):inteiro
inicio
a<-x
enquanto a>1 faca
a<-a-1
x<-x*a
fimenquanto
retorne x
fimfuncao
inicio
// Se��o de Comandos
leia(num)
se num =0 entao
   escreval("fatorial de 0 � 1")
senao
   se num>0 entao
      escreval("fatorial de ",num," � ",calcfatorial(num))
   senao
      escreval("S� existe fatorial de numeros positivos")
   fimse
fimse
fimalgoritmo
