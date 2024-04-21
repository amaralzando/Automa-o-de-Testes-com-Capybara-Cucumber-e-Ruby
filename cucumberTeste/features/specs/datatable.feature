#language: pt

Funcionalidade: Trabalhar com dataTable

Cenario: Cortar laranjas
Dado que eu tenho umas laranjas
| laranja | 10 |
Quando eu corto 2 laranjas
Então eu verifico quantas laranjas sobraram inteiras.

Cenario: Chupar laranjas
Dado que tenho umas laranjas
| laranja |
| 10      |
Quando eu chupo 2 laranjas
Então eu verifico quantas laranjas sobraram.

