algoritmo "semnome"
// Fun��o : leitura de n numeros
// Autor : Hugo Sousa
// Data : 01/12/2015
// Se��o de Declara��es
var
n,cont:inteiro
a, somaa,menornum, maiornum:real
inicio
// Se��o de Comandos
leia(n)
se n>0 entao
   para cont de 1 ate n faca
      leia(a)
      somaa<-somaa+a
      se cont=1 entao
         menornum<-a
         maiornum<-a
      senao
         se a<menornum entao
            menornum<-a
         fimse
      fimse
      se a>maiornum entao
         maiornum<-a
      fimse
   fimpara
   escreval("media �   ",somaa/n)
   escreval("maior �   ",maiornum)
   escreval("menor �   ",menornum)
senao
   escreval("entrada invalida, apenas numeros positivos")
fimse
fimalgoritmo
