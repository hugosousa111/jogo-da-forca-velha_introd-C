algoritmo "semnome"
// Fun��o : Maior e menor n�mero
// Autor : Hugo Sousa
// Data : 24/11/2015
// Se��o de Declara��es
var
a,b,c:inteiro
inicio
// Se��o de Comandos
leia(a,b,c)
escreva("o maior n�mero � ")
se a>b entao
   se a>c entao
      escreval(a)
   senao
      escreval(c)
   fimse
senao
   se b>c entao
      escreval(b)
   senao
      escreval(c)
   fimse
fimse
escreva("o menor n�mero � ")
se a<b entao
   se a<c entao
      escreval(a)
   senao
      escreval(c)
   fimse
senao
   se b<c entao
      escreval(b)
   senao
      escreval(c)
   fimse
fimse
escreva("a media �  ",(a+b+c)/2)
fimalgoritmo
