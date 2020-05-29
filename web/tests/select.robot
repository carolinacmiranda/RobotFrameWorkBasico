*** Settings ***
Resource            base.robot

Test Setup          Abrir Página
Test Teardown       Fechar Página


*** Test Cases ***
Select By Text And Validate By Value
    Go To                           ${url}/dropdown
    Select From List By Label       class:avenger-list          Scott Lang
    ${selected}=                    Get Selected List Value     class:avenger-list  
    Should Be Equal                 ${selected}                 7  

Select By Value And Validate By Text
    Go To                           ${url}/dropdown
    Select From List By Value       id:dropdown                 4
    ${selected}=                    Get Selected List Label     id:dropdown  
    Should Be Equal                 ${selected}                 Natasha Romanoff   