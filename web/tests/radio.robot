*** Settings ***
Resource            base.robot

Test Setup          Abrir Página
Test Teardown       Fechar Página


*** Test Cases ***
Select By ID
    Go To                               ${url}/radios
    Select Radio Button                 movies      cap
    Radio Button Should Be Set To       movies      cap

Select By Value
    Go To                               ${url}/radios
    Select Radio Button                 movies      guardians
    Radio Button Should Be Set To       movies      guardians