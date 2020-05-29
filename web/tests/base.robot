*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${url}                  https://training-wheels-protocol.herokuapp.com


*** Keywords ***
Abrir Página
    Open Browser                        ${url}                  chrome

Fechar Página
    Capture Page Screenshot
    Close Browser