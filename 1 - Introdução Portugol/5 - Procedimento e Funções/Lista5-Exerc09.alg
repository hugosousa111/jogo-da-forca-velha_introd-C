algoritmo "semnome"
// Fun��o : Teste de Triangulos
// Autor :  Hugo Sousa
// Data : 25/11/2015
// Se��o de Declara��es
var
cat1,cat2,cat3:real
procedimento testetriangulo (x,y,z:real)
inicio
se x<y+z entao       //teste pra saber se � um triangulo
   se y<x+z entao    //teste pra saber se � um triangulo
      se z<x+y entao //teste pra saber se � um triangulo
         se x=y entao
            se x=z entao
               escreval("Tri�ngulo Equil�tero")
            senao
               escreval("Tri�ngulo Is�sceles")
            fimse
         senao
            se x=z entao
               escreval("Tri�ngulo Is�sceles")
            senao
               se y=z entao
                  escreval("Tri�ngulo Is�sceles")
               senao
                  escreval("Tri�ngulo Escaleno")
               fimse
            fimse
         fimse
      senao
      escreval("nao valido")
      fimse
   senao
   escreval("nao valido")
   fimse
senao
escreval("nao valido")
fimse
fimprocedimento
inicio
// Se��o de Comandos
leia(cat1,cat2,cat3)
testetriangulo(cat1,cat2,cat3)
fimalgoritmo
