algoritmo "semnome"
// Fun��o : Vida expressa em dias
// Autor : Hugo Sousa
// Data : 24/11/2015
// Se��o de Declara��es
var
anos, meses, dias:inteiro
funcao numerodedias(a,m,d:inteiro):inteiro
inicio
retorne (a*365)+(m*30)+d
fimfuncao
inicio
// Se��o de Comandos
escreval("anos")
leia(anos)
escreval("meses")
leia(meses)
escreval("dias")
leia(dias)
escreval(numerodedias(anos,meses,dias),"   dias de vida")
fimalgoritmo
