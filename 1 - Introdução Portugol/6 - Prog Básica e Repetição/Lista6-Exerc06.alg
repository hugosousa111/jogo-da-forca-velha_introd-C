algoritmo "semnome"
// Fun��o : decimal para binario
// Autor : Hugo Sousa
// Data : 01/12/2015
// Se��o de Declara��es
var
decimal:inteiro
binario,x:caractere
inicio
// Se��o de Comandos
leia(decimal)
se decimal=0 entao
binario<-"0"
senao
enquanto decimal>0 faca
   se decimal mod 2 = 0 entao
      x<-"0"
      binario<-x+binario
   senao
      x<-"1"
      binario<-x+binario
   fimse
   decimal<-decimal div 2
fimenquanto
fimse
escreval(binario)
fimalgoritmo
