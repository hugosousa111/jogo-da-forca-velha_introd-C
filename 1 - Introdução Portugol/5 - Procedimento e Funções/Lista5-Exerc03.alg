algoritmo "semnome"
// Fun��o : Diferen�a de dias duas datas
// Autor : Hugo Sousa
// Data : 24/11/2015
// Se��o de Declara��es 
var
ano1, mes1, dia1, ano2, mes2, dia2,diasdaprimeiradata,diasdasegundadata:inteiro
funcao numerodedias(d1,m1,a1,d2,m2,a2:inteiro):inteiro
inicio
diasdaprimeiradata <-(a1*365)+(m1*30)+d1
diasdasegundadata  <-(a2*365)+(m2*30)+d2
retorne diasdasegundadata-diasdaprimeiradata
fimfuncao
inicio
// Se��o de Comandos 
escreval("primeira data")
escreval("dia:")
leia(dia1)
escreval("m�s:")
leia(mes1)
escreval("ano:")
leia(ano1)
escreval("segunda data")
escreval("dia:")
leia(dia2)
escreval("m�s:")
leia(mes2)
escreval("ano:")
leia(ano2)
escreval("a diferen�a de dias �  ",numerodedias(dia1,mes1,ano1,dia2,mes2,ano2))
fimalgoritmo
