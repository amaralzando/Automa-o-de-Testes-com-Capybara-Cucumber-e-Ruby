#language: pt

Funcionalidade: Trabalhar com contexto

Contexto:
Dado que eu tenho 10 laranjas na bolsa.

Cenario: Colocar uma quantidade de laranja.
Quando eu coloco 2 laranjas na bolsa
Então eu verifico se eu o total de laranjas na bolsa é 12

Cenario: Retirar uma quantidade de laranja.
Quando eu tiro 2 laranjas da bolsa
Então eu verifico com quantas laranjas eu fiquei na bolsa.