algoritmo "semnome"
// Fun��o : Fibonacci
// Autor : Hugo Sousa
// Data : 25/11/2015
// Se��o de Declara��es
var
termos,a:inteiro
procedimento Fibonacci(t:inteiro)
inicio
a<-1
se a<=t entao
   escreva(" 1 , ")
   enquanto a<t faca
      escreva(a+a-1, " , ")
      a<-a+1
   fimenquanto
fimse
fimprocedimento
inicio
// Se��o de Comandos
leia(termos)
Fibonacci(termos)
fimalgoritmo
