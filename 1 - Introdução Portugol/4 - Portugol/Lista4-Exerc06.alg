algoritmo "semnome"
// Fun��o : Calculadora
// Autor : Hugo Sousa
// Data : 24/11/2015
// Se��o de Declara��es 
var
a,b,res:real
opera:caractere
inicio
// Se��o de Comandos 
leia(a,b)
escreval("digite opera��o (+)(-)(*)(/)")
leia(opera)
escolha opera
caso "+"
res<-a+b
caso "-"
res<-a-b
caso "*"
res<-a*b
caso "/"
res<-a/b
outrocaso
escreval("Sinal invalido")
fimescolha
escreval(a,opera,b," = ", res)
fimalgoritmo
