algoritmo "semnome"
// Fun��o : Massa Ideal
// Autor : Hugo Sousa
// Data : 24/11/2015
// Se��o de Declara��es
var
altura,massa:real
sexo:caractere
funcao calcmassa(a:real;s:caractere):real
inicio
se s="m" entao
   retorne (72.7 *a)-58
senao
   retorne (62.1 * a)-44.7
fimse
fimfuncao
inicio
// Se��o de Comandos
escreval("escreva altura")
leia(altura)
escreval("escreva sexo")
leia(sexo)
se sexo="m" entao
   escreval(calcmassa(altura,sexo),"  � a massa ideal")
senao
   se sexo="f"entao
      escreval(calcmassa(altura,sexo),"  � a massa ideal")
   senao
   escreval("sexo invalido")
   fimse
fimse
fimalgoritmo
