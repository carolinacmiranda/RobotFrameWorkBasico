*** Settings ***
Resource            base.robot

Test Setup          Abrir Página
Test Teardown       Fechar Página


*** Test Cases ***
Test Page Title
    Title Should Be     Training Wheels Protocol
    