*** Settings ***
Library     app.py

*** Test Cases ***
Deve retornar mensagem de boas vindas
    ${result}=          Welcome     Carolina
    Should Be Equal     ${result}   Olá Carolina, bem-vindo(a) ao curso básico de Robot Framework!
